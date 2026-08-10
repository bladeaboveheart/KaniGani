-- ====================================================
-- KaniGani — Seed Data Level 44 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 44) ============
  r_394_naga UUID; r_416_angin UUID;

  -- ============ KANJI IDs (Level 44) ============
  k_1832_bersih UUID; k_1872_pengukuran UUID; k_1873_naga UUID; k_1874_tepian UUID; k_1875_sayap UUID; k_1876_semoga_beruntung UUID; k_1877_bilah UUID; k_1878_menderita UUID; k_1879_persik UUID; k_1881_misteri UUID; k_1882_samurai UUID; k_1884_memarahi UUID; k_1885_rekreasi UUID; k_1886_sendok UUID; k_1887_merah_terang UUID; k_1888_bukit UUID; k_1889_pir UUID; k_1892_berteriak UUID; k_1893_penangkapan_ikan UUID; k_1894_rambut UUID; k_1895_badai UUID; k_1896_topi_kerucut UUID; k_1899_putri UUID; k_1901_biji_bijian UUID; k_1902_meriam UUID; k_1903_guruh UUID; k_1904_tumbuh UUID; k_1905_menara UUID; k_2466_rubah UUID; k_8882_dorong_buka UUID; k_8883_mendekat UUID; k_9312_dahan UUID; k_9449_pergi_ke_hulu UUID;

  -- ============ VOCABULARY IDs (Level 44) ============
  v_2998_bantuan UUID; v_4898_penciptaan_asli UUID; v_5279_jalan_raya UUID; v_6634_jaringan_lalu_lintas UUID; v_6635_jaringan_komunikasi UUID; v_6731_untuk_menenggelamkan_sesuatu UUID; v_6752_tali_ponsel UUID; v_6753_untuk_menaklukkan UUID; v_6754_filsuf UUID; v_6755_gaun_berkabung UUID; v_6756_seorang_penantang UUID; v_6757_goreng UUID; v_6758_genggaman_seseorang UUID; v_6759_untuk_mengguncang UUID; v_6760_untuk_mengguncang UUID; v_6761_terguncang UUID; v_6762_menginap_semalam UUID; v_6764_perosotan_taman_bermain UUID; v_6766_untuk_membakar UUID; v_6767_untuk_dialihkan UUID; v_6768_membingungkan UUID; v_6770_lautan_badai UUID; v_6771_sarung_tangan UUID; v_6772_naga UUID; v_6773_angin_topan UUID; v_6774_dinosaurus UUID; v_6775_pertanda UUID; v_6776_tidak_berhubungan UUID; v_6777_lamaran_pernikahan UUID; v_6778_sayap_kiri UUID; v_6779_sayap_kanan UUID; v_6780_sayap UUID; v_6781_pertanda_baik UUID; v_6782_tidak_menyenangkan UUID; v_6783_untuk_bertahan UUID; v_6784_ninja UUID; v_6785_bilah UUID; v_6786_alat_bermata UUID; v_6787_tepi_pisau UUID; v_6788_persik UUID; v_6789_warna_persik UUID; v_6795_misteri UUID; v_6796_teka_teki UUID; v_6797_samurai UUID; v_6801_untuk_memarahi UUID; v_6802_kesenangan UUID; v_6803_sendok UUID; v_6804_merah_terang UUID; v_6805_segel_merah UUID; v_6806_bukit UUID; v_6807_bukit_pasir UUID; v_6808_pir UUID; v_6812_berteriak UUID; v_6813_seruan UUID; v_6814_penangkapan_ikan UUID; v_6815_untuk_memancing UUID; v_6816_rambut UUID; v_6817_rambut_pirang UUID; v_6818_rambut_kepala UUID; v_6819_gaya_rambut UUID; v_6820_badai UUID; v_6821_topi_kerucut UUID; v_6822_meriam UUID; v_6824_air_mata_emosi UUID; v_6826_kaleng_timah UUID; v_6828_kopi_kalengan UUID; v_6829_putri UUID; v_6830_putri UUID; v_6834_bulir UUID; v_6835_partikel UUID; v_6836_hujan_badai UUID; v_6837_guruh UUID; v_6838_torpedo UUID; v_6839_tumbuh UUID; v_6840_menara UUID; v_6841_menara_pengawas UUID; v_6842_menara_babel UUID; v_6843_menara_eiffel UUID; v_6935_untuk_mengabaikan UUID; v_6941_gagal_menangkap UUID; v_6947_tempat_tidur UUID; v_6948_padat UUID; v_6949_untuk_membuang_sampah UUID; v_6950_liar UUID; v_7512_matahari UUID; v_7556_pengukuran UUID; v_7557_di_tepi_tepi UUID; v_7612_tepian UUID; v_7666_petir UUID; v_7780_terpisah UUID; v_7781_kedua_sayap UUID; v_8046_di_seluruh_papan UUID; v_8658_rubah UUID; v_8894_salam UUID; v_8926_menjadi_terpisah UUID; v_9055_biduk UUID; v_9056_wadah_delapan_belas_liter UUID; v_9127_endapan UUID; v_9298_penukaran_mata_uang UUID; v_9314_pilihan UUID; v_9460_menjadi_retroaktif UUID;

BEGIN

  DELETE FROM items WHERE level = 44;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '竜', 'naga', 44, 1, 'Kura-kura yang berdiri bukan lagi kura-kura. Itu berevolusi menjadi monster. Monster macam apa? Seekor <radikal>naga</radikal>! mentah.')
    RETURNING id INTO r_394_naga;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '風', 'angin', 44, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>angin</radikal>.')
    RETURNING id INTO r_416_angin;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_394_naga, 'Naga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_416_angin, 'Angin', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '網', 'bersih', 44, 3, 'Anda melihat <radical>utas</radikal>yang tertutup <radikal>bukit</radikal>, namun semuanya menggumpal dan aneh. Anda mendekatinya untuk melihat lebih dekat, dan Anda melihat bahwa itu sebenarnya adalah <kanji>jaring</kanji> besar dengan banyak benda yang ditangkap di dalamnya: ikan, kucing, dahan pohon. Semua hal acak inilah yang membuat jaring terlihat menggumpal!', '<kanji>jaring</kanji> ini menciptakan hambatan serius bagi Anda untuk <reading>memotong</reading>ing (もう) rumput, yang merupakan tujuan awal Anda datang ke sini. Untuk saat ini, Anda hanya perlu memotong-motong jaring, karena ada terlalu banyak barang di dalamnya sehingga Anda tidak dapat menariknya.')
    RETURNING id INTO k_1832_bersih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寸', 'pengukuran', 44, 4, 'Radikal <radikal>pengukuran</radikal> dan kanji <kanji>pengukuran</kanji> sama persis.', '"Hitung posisi musuhmu dengan <kanji>pengukuran</kanji> yang akurat," kurang lebih itulah yang <reading>Sun</reading> (すん) Tzu katakan, menurutku. Orang yang menulis The Art of War, lho. Ketika Sun mengatakan pengukuran itu penting, Anda tidak perlu mempertanyakannya.')
    RETURNING id INTO k_1872_pengukuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '竜', 'naga', 44, 5, 'Radikal <radical>naga</radikal> sama dengan kanji ini, yaitu <kanji>naga</kanji>.', 'Bayangkan sebuah <kanji>naga</kanji>. Anda berbicara dengannya, dan ini sudah cukup aneh, tetapi saat Anda berbicara, dia berubah menjadi karakter Street Fighter <reading>Ryu</reading> (りゅう).')
    RETURNING id INTO k_1873_naga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '縁', 'tepian', 44, 6, 'Hanya <radical>benang</radikal> yang menjaga <radikal>Wolverine</radikal> dan <radikal>babi</radikal> agar tidak terjatuh dari <kanji>tepi</kanji> tebing. Wolverine dan babi ini tidak memiliki <kanji>hubungan</kanji> sebelumnya, tapi setelah pengalaman mengerikan tersebut mereka pasti akan membentuk ikatan yang mendalam.', 'Saat sepertinya mereka akan bisa kembali dari <kanji>tepi</kanji>, benangnya putus, dan Wolverine serta teman babi barunya terjun ke <reading>en</reading>d (えん) yang tragis. Sayang sekali — mereka juga baru saja mulai membentuk <kanji>hubungan</kanji> yang bersahabat…')
    RETURNING id INTO k_1874_tepian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '翼', 'sayap', 44, 7, 'Sebuah <radical>bulu</radical> ada di <radical>sawah</radical>, dan mereka diikatkan <radical>bersama</radical>. Anda menaruh bulu di sawah untuk membuat pesawat raksasa. Cacat, tentu saja. Namun, padi + bulu ini akan menjadi salah satu <kanji>sayap</kanji> dari pesawat menakjubkan Anda.', 'Untuk membuat bulu dan padi saling menempel diperlukan semacam bahan perekat. Kali ini kita temukan burung asli asal bulunya dan ambil telurnya. Kami memecahkan telurnya dan menggunakan <reading>kuningnya</reading> (よく). Ini cukup lengket, tapi mungkin masih belum aman untuk pesawat.')
    RETURNING id INTO k_1875_sayap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '吉', 'semoga-beruntung', 44, 8, 'Radikal <radikal>semoga sukses</radikal> dan kanji <kanji>semoga sukses</kanji> adalah sama!', 'Untuk <kanji>semoga sukses</kanji>, simpanlah <reading>kit</reading> (きつ) khusus di <reading>kitch</reading>en (きち) Anda. Peralatan dapur ini berisi jimat keberuntungan.')
    RETURNING id INTO k_1876_semoga_beruntung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '刃', 'bilah', 44, 9, '<radikal>bilah</radikal> radikal dan <kanji>bilah</kanji> kanji sama persis.', 'Saat kamu menusuk <kanji>bilah</kanji>mu ke musuh, kamu berteriak "<reading>Hah</reading> (は)!" Bagaimanapun, Anda harus mendapatkan semangat di balik dorongan itu.')
    RETURNING id INTO k_1877_bilah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '忍', 'menderita', 44, 10, 'Jika seseorang menusukkan <radikal>pisau</radikal> ke <radikal>hati</radikal> Anda, Anda akan mengalami kesulitan. Mereka meninggalkannya di sana untuk waktu yang lama. Mereka tidak akan memotongmu, tapi kamu tidak bisa bergerak. Anda harus <kanji>menahan</kanji> rasa sakit dan <kanji>menyembunyikan</kanji> ketidaknyamanan Anda dengan situasi tersebut.', 'Belajar <kanji>bertahan</kanji> dan <kanji>menyembunyikan</kanji> adalah bagian dari pelatihan <reading>nin</reading>ja (にん) Anda. Anda harus belajar untuk tetap diam, tanpa bernapas - Anda harus mampu menahannya jika ingin menyembunyikan diri.')
    RETURNING id INTO k_1878_menderita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '桃', 'persik', 44, 11, '<radikal>pohon</radikal> memiliki <radikal>pertanda</radikal> yang tumbuh darinya, satu <kanji>persik</kanji> yang seukuran rumah. Di dalamnya ada seorang anak yang akan menyelamatkan desa dari setan.', 'Jika <reading>momo</reading>taro (もも) tidak cukup, pikirkan tentang <kanji>persik</kanji> yang tumbuh semakin besar. Anda ingin ia tumbuh lebih besar, jadi Anda berteriak padanya: "<reading>MO</reading>RE! <reading>MO</reading>RE!" (もも).')
    RETURNING id INTO k_1879_persik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '謎', 'misteri', 44, 12, 'Tidak ada seorang pun yang <radikal>mengatakan</radikal> berapa berat <radikal>skuter</radikal> dalam butiran <radikal>beras</radikal> — ini adalah sebuah <kanji>misteri</kanji>!', 'Untuk mengungkap <kanji>misteri</kanji> ini, Anda menggunakan <reading>nozzle</reading> (なぞ). Anda memasukkan beras melalui nosel satu butir pada satu waktu, sehingga Anda dapat mengetahui <em>tepat</em> berapa butir beras yang setara dengan berat skuter.')
    RETURNING id INTO k_1881_misteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '侍', 'samurai', 44, 13, '<radical>pemimpin</radikal> <radical>kuil</radikal> bukanlah seorang biksu seperti yang Anda harapkan. Itu adalah <kanji>samurai</kanji>, yang melindungi para biksu sebagai imbalan atas doa yang menjaganya tetap aman.', 'Bacaannya adalah <reading>samurai</reading>, yang seharusnya cukup mudah untuk diingat.')
    RETURNING id INTO k_1882_samurai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '叱', 'memarahi', 44, 14, 'Dari <radikal>mulut</radikal> saya sudah mengatakan kepada Anda <radikal>tujuh</radikal> kali untuk tidak melakukan hal itu. Sekarang aku harus <kanji>memarahi</kanji> kamu.', 'Kesalahan apa yang kamu lakukan hingga membuatku <kanji>memarahi</kanji> kamu? Anda memberi makan <read>鹿</reading> (しか). Jika Anda memberi mereka makan, mereka tidak akan pernah bisa memberi makan dirinya sendiri!')
    RETURNING id INTO k_1884_memarahi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '娯', 'rekreasi', 44, 15, 'Seorang <radikal>wanita</radikal> menyukai <radikal>ketapel</radikal> miliknya untuk <kanji>rekreasi</kanji> yang bagus.', 'Hal favoritnya untuk ditembak dengan ketapelnya untuk <kanji>rekreasi</kanji> adalah <reading>Go</reading>dzilla (ご).')
    RETURNING id INTO k_1885_rekreasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '斗', 'sendok', 44, 16, 'Radikal <radikal>sendok</radikal> dan kanji <kanji>sendok</kanji> adalah sama!', 'Anda menggunakan <kanji>sendok</kanji> untuk membagikan sup. Namun saat Anda menyendok, Anda menemukan sesuatu yang aneh mengambang di dalam sup. Itu... <reading>jari kaki</reading> (と)! Anda berteriak, menjatuhkan sendok dan jari kaki ke tanah.')
    RETURNING id INTO k_1886_sendok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '朱', 'merah-terang', 44, 17, '<radical>Perosotan</radikal> untuk turun dari <radical>jet</radical> ini memiliki warna <kanji>vermilion</kanji> yang indah dan cemerlang.', 'Anda melompat ke slide <kanji>vermilion</kanji>. Ini sebenarnya lebih merupakan <read>chu</reading>te (しゅ) yang curam. Dan... oh... urp... itu membuatmu mual.')
    RETURNING id INTO k_1887_merah_terang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '丘', 'bukit', 44, 18, 'Sebuah <radical>kapak</radikal> ditancapkan ke <radikal>tanah</radikal> di <kanji>bukit</kanji>.', 'Anda mencapai puncak <kanji>bukit</kanji> dan menyadari seluruh bukit ditutupi <read>cu</reading>batu (きゅう). Kapak itu memiliki catatan kecil yang bertuliskan "Kapak Bukit Mentimun - Silakan Gunakan."')
    RETURNING id INTO k_1888_bukit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '梨', 'pir', 44, 19, '<radical>biji-bijian</radikal> yang Anda potong <radikal>pohon</radikal> dengan <radikal>pisau</radikal> adalah <kanji>pir</kanji>. Anda telah menemukan beberapa yang sangat besar dan kokoh, itulah sebabnya Anda memerlukan bantuan pisau. Pir ini pastinya sangat berair dan lezat, tetapi Anda memerlukan beberapa alat tambahan untuk mengeluarkannya dari pohonnya.', 'Saat Anda memotong <kanji>pir</kanji>, mau tak mau Anda <reading>menggertakkan</reading> (なし) gigi Anda. Anda ingin makan pir ini sekarang. Anda menggerogoti, menggiling, dan menunggu, karena Anda ingin menghabiskan semuanya sebelum memulai pesta.')
    RETURNING id INTO k_1889_pir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '叫', 'berteriak', 44, 20, 'Kamu punya <radical>mulut</radical> <radical>tanaman merambat</radical>, jadi kamu <kanji>berteriak</kanji>! Sulit bagi Anda untuk berbicara secara normal, dan bahkan lebih sulit lagi bagi orang lain untuk memahami Anda kecuali Anda berteriak.', 'Anda perlu <kanji>berteriak</kanji> agar orang lain dapat memahami Anda dari mulut ke mulut. Anda berteriak, "<reading>きょう</reading>と!" karena kamu dengar di sana ada kuil untuk orang-orang dengan kondisi sepertimu.')
    RETURNING id INTO k_1892_berteriak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '釣', 'penangkapan-ikan', 44, 21, '<radical>emas</radical> <radical>kolam</radical> adalah tempat Anda akan <kanji>memancing</kanji>. Sebab, kalau kolamnya emas, semoga ikannya juga.', 'Anda menangkap beberapa ikan emas. <read>Sebenarnya ada dua</reading> (つ) ikan emas!')
    RETURNING id INTO k_1893_penangkapan_ikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '髪', 'rambut', 44, 22, '<radical>panjang</radikal> <radikal>rambut</radikal> Anda adalah <radikal>teman</radikal> Anda. Itu adalah <kanji>rambut</kanji> Anda dan Anda sangat bangga karenanya.', 'Siapa yang memberimu rambut ini? Mungkin rambut <reading>神</reading> (かみ) yang bagus. Anda pantas mendapatkan rambut bagus ini.')
    RETURNING id INTO k_1894_rambut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嵐', 'badai', 44, 23, '<radikal>angin</radikal> <radikal>angin</radikal> yang turun dari pegunungan sangat kencang. Sangat dahsyat hingga mirip <kanji>badai</kanji>. Sebenarnya ini badai.', '<kanji>badai</kanji> bukanlah hal yang patut dicemooh. Jika kamu terkena badai dan menjadi basah kuyup, kotor, dan tersengat listrik, kamu pasti akan mengalami <read>ruam</reading> (あらし).')
    RETURNING id INTO k_1895_badai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '笠', 'topi-kerucut', 44, 24, 'Benda <radikal>bambu</radikal> yang Anda kenakan di kepala agar <radikal>berdiri</radikal> lebih tinggi mungkin adalah topi. Topi bambu mungkin adalah salah satu topi yang Anda pikirkan ketika memikirkan petani padi, sebuah <kanji>topi berbentuk kerucut</kanji>.', '<kanji>topi berbentuk kerucut</kanji> seperti payung di kepala Anda. Apa arti kata "payung" dalam bahasa Jepang? Wah, itu <reading>kasa</reading> (かさ)!')
    RETURNING id INTO k_1896_topi_kerucut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '姫', 'putri', 44, 25, '<radikal>wanita</radikal> <radikal>pelayan</radikal> adalah <kanji>putri</kanji> dengan peringkat lebih rendah. Ratu bukanlah pelayan. Tidak. Hanya sang putri, karena dia adalah pelayan atas perintah orang tuanya.', '<kanji>putri</kanji> terus melakukan apapun yang dia inginkan. Dia memberitahu pelayan sebenarnya, "Jangan bilang pada ayahku, Raja, aku yang melakukan ini. <reading>Dia mungkin</reading> (ひめ) tidak menyukainya."')
    RETURNING id INTO k_1899_putri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '粒', 'biji-bijian', 44, 26, 'Bagian <radical>beras</radikal> yang <radikal>berdiri</radikal> tinggi di udara (di ujung batang) adalah <kanji>biji-bijian</kanji>.', 'Anda memiliki sekotak <kanji>biji-bijian</kanji>. <reading>Ryuu</reading> (りゅう) dari Street Fighter sedang melakukan latihan dengan meninju butiran untuk memperkuat jari-jarinya.')
    RETURNING id INTO k_1901_biji_bijian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '砲', 'meriam', 44, 27, 'Anda memasukkan <radical>batu</radikal> ke dalam semacam <radikal>bungkus</radikal>. Pembungkus ini kebetulan adalah sebuah <kanji>meriam</kanji>, dan Anda menembak dari batu, seperti yang biasa saya lakukan pada perahu dengan meriam yang kami tumbuhkan karena alasan tertentu.', 'Kamu mengarahkan <kanji>meriam</kanji> ke <reading>ho</reading>aku (ほう) milikmu sendiri. Anda tidak ingin punya rumah lagi, Anda ingin menjadi bajak laut, tinggal di perahu, dan (tentu saja) menembakkan meriam sepanjang hari.')
    RETURNING id INTO k_1902_meriam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雷', 'guruh', 44, 28, '<radical>Hujan</radical> di <radical>sawah</radical> hanya berarti satu hal... <kanji>guntur</kanji>! Turun dari sawah! Tidak ada yang lain selain Anda yang menarik guntur!', 'Kamu tidak bisa berlari cukup cepat untuk menghindari <kanji>guntur</kanji>, jadi kamu memutuskan untuk bersembunyi di bawah tumpukan… <reading>rye</reading> (らい)?!')
    RETURNING id INTO k_1903_guruh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '芽', 'tumbuh', 44, 29, '<radikal>bunga</radikal> <radikal>taring</radikal> adalah kuncup yang muncul dari dalam tanah. Itu seperti taring kecil, keluar dari tanah, dan suatu saat akan menjadi bunga. Ini adalah <kanji>tumbuh</kanji> kecil.', 'Ketika <kanji>tunas</kanji> keluar dari tanah dan terbuka, alih-alih sekuntum bunga, yang ada adalah <read>目</reading> (め) yang tampak seperti manusia, menatap tepat ke arah Anda.')
    RETURNING id INTO k_1904_tumbuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '塔', 'menara', 44, 30, 'Ketika <radical>tanah</radikal> dan <radikal>bunga</radikal> <radikal>cocok</radikal> satu sama lain, bunganya akan tumbuh begitu tinggi sehingga membentuk <kanji>menara</kanji>! Menara bunga yang terbuat dari kekuatan bunga!', 'Satu-satunya tempat bunga tumbuh menjadi <kanji>menara</kanji> seperti ini adalah di <reading>とう</reading>きょう. とうきょう kotoran adalah yang terbaik. とうきょう bunga adalah yang terbaik. Jadi, Anda akan mendapatkan banyak menara とうきょう.')
    RETURNING id INTO k_1905_menara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '狐', 'rubah', 44, 31, '<radical>hewan</radikal> yang berkeliaran di petak <radikal>melon</radikal> adalah <kanji>rubah</kanji> yang sulit ditangkap! Mereka suka mencuri melon lalu kembali ke kota dengan menyamar sebagai manusia penjual melon. Rubah memang licik seperti itu.', 'Jika Anda ingin menghentikan <kanji>rubah</kanji> mencuri melon Anda, Anda bisa mendapatkan salah satu <reading>perlengkapan</reading> yang <reading>meringkik</reading> (きつね) saat ada di sekitar. Anak-anak kucing itu meringkik ketika mereka merasakan adanya rubah, tetapi karena suaranya seperti kuda, rubah tidak mau lari. Tapi Anda bisa keluar sana dan mengambil melon Anda kembali!')
    RETURNING id INTO k_2466_rubah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '挨', 'dorong-buka', 44, 32, 'Anda menggunakan <radical>jari</radical> saat berada dalam <radical>pribadi</radical> untuk menggunakan <radical>panah</radical> untuk <kanji>mendorong membuka</kanji> sesuatu.', 'Hal favorit Anda untuk <kanji>dibuka</kanji> adalah <membaca>mata</reading> Anda sendiri (あい). Anda mengambil panah ke jari Anda dan dengan lembut mendorong setiap tutupnya hingga terbuka sampai Anda dapat melihatnya.')
    RETURNING id INTO k_8882_dorong_buka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拶', 'mendekat', 44, 33, '<radical>jari</radical> Anda memberi tahu Anda bahwa <radical>banjir</radical> <radical>malam</radical> kemarin akan <kanji>mendekati</kanji>. Tidak ada yang dapat Anda lakukan untuk menghentikannya, sepertinya <kanji>akan segera terjadi</kanji>, terjadi di kegelapan malam.', 'Untungnya setiap kali Anda merasakan banjir mulai <kanji>mendekat</kanji>, <reading>Satsu</reading>ki (さつ) menyiapkan rakit. Ingat Satsuki? Gadis kecil yang berbakat. Saya kira banjir cukup sering terjadi sehingga dia belajar membuat rakit?')
    RETURNING id INTO k_8883_mendekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肢', 'dahan', 44, 34, 'Melihat <radical>bulan</radical>, Anda melihat ia menumbuhkan banyak <radical>cabang</radical>. Tunggu, apakah itu semua… <kanji>anggota tubuh</kanji>?!', 'Setelah beberapa pertimbangan, Anda tahu siapa yang meletakkan semua <vocabulary>anggota badan</vocabulary> itu di bulan. Itu pasti tak lain adalah bulan <reading>shee</reading>p (し)!')
    RETURNING id INTO k_9312_dahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遡', 'pergi-ke-hulu', 44, 35, 'Anda menaiki <radical>skuter</radical> sambil mengenakan <radical>klakson</radical> dan meluncur menuju <radical>barak</radical> di <radical>bulan</radical> — sebuah perjalanan yang mengharuskan Anda <kanji>pergi ke hulu</kanji> di sungai bulan yang mengamuk. Apakah Anda siap menghadapi tantangan ini?', 'Saat Anda <kanji>berjalan ke hulu</kanji> dengan skuter, Anda melihat bahwa sungai bulan ini penuh dengan <read>so</reading>ap (そ)! Anda pada dasarnya mengendarai skuter Anda ke hulu dalam bak mandi busa sabun raksasa yang berbusa. Apakah semua sungai di bulan seperti ini?')
    RETURNING id INTO k_9449_pergi_ke_hulu;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1832_bersih, 'Bersih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1872_pengukuran, 'Pengukuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1873_naga, 'Naga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1874_tepian, 'Tepian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1874_tepian, 'Hubungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1875_sayap, 'Sayap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1876_semoga_beruntung, 'Semoga beruntung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1877_bilah, 'Bilah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1878_menderita, 'Menderita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1878_menderita, 'Menutupi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1879_persik, 'Persik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1881_misteri, 'Misteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1881_misteri, 'Teka-teki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1882_samurai, 'Samurai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1884_memarahi, 'Memarahi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1885_rekreasi, 'Rekreasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1886_sendok, 'Sendok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1886_sendok, 'Timba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1886_sendok, 'Volume', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1887_merah_terang, 'Merah terang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1888_bukit, 'Bukit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1889_pir, 'Pir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1892_berteriak, 'Berteriak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1893_penangkapan_ikan, 'Penangkapan ikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1894_rambut, 'Rambut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1895_badai, 'Badai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1896_topi_kerucut, 'Topi Kerucut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1899_putri, 'Putri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1901_biji_bijian, 'Biji-bijian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1902_meriam, 'Meriam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1903_guruh, 'Guruh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1904_tumbuh, 'Tumbuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1905_menara, 'Menara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2466_rubah, 'Rubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8882_dorong_buka, 'Dorong Buka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8883_mendekat, 'Mendekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8883_mendekat, 'Segera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9312_dahan, 'Dahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9449_pergi_ke_hulu, 'Pergi ke Hulu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9449_pergi_ke_hulu, 'Lacak Kembali', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1832_bersih, 'もう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1832_bersih, 'あみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1872_pengukuran, 'すん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1873_naga, 'りゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1873_naga, 'たつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1874_tepian, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1874_tepian, 'ねん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1874_tepian, 'ふち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1875_sayap, 'よく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1875_sayap, 'つばさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1876_semoga_beruntung, 'きつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1876_semoga_beruntung, 'きち', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1876_semoga_beruntung, 'よし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1877_bilah, 'は', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1877_bilah, 'やいば', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1877_bilah, 'じん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1877_bilah, 'にん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1878_menderita, 'にん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1878_menderita, 'しの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1879_persik, 'もも', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1879_persik, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1881_misteri, 'なぞ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1881_misteri, 'めい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1882_samurai, 'さむらい', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1882_samurai, 'じ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1882_samurai, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1884_memarahi, 'しか', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1884_memarahi, 'しつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1885_rekreasi, 'ご', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1886_sendok, 'と', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1887_merah_terang, 'しゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1887_merah_terang, 'あけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1888_bukit, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1888_bukit, 'おか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1889_pir, 'なし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1889_pir, 'り', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1892_berteriak, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1892_berteriak, 'さけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1893_penangkapan_ikan, 'つ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1893_penangkapan_ikan, 'ちょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1894_rambut, 'かみ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1894_rambut, 'はつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1895_badai, 'あらし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1895_badai, 'らん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1896_topi_kerucut, 'かさ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1896_topi_kerucut, 'りゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1899_putri, 'ひめ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1901_biji_bijian, 'りゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1901_biji_bijian, 'つぶ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1902_meriam, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1903_guruh, 'らい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1903_guruh, 'かみなり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1904_tumbuh, 'め', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1904_tumbuh, 'が', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1905_menara, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2466_rubah, 'きつね', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2466_rubah, 'こ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8882_dorong_buka, 'あい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8883_mendekat, 'さつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9312_dahan, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9449_pergi_ke_hulu, 'そ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9449_pergi_ke_hulu, 'さかのぼ', 'kunyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '助力', 'bantuan', 44, 36, 'Saat Anda <kanji>membantu</kanji> dengan <kanji>kekuatan</kanji> Anda, Anda memberikan <vocabulary>bantuan</vocabulary> dan <vocabulary>dukungan</vocabulary>.

Perhatikan bahwa ini adalah kata formal yang banyak digunakan dalam situasi profesional. Ini menyiratkan bahwa seseorang telah melakukan sesuatu yang penting untuk Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 力 memiliki dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Anda benar-benar memerlukan <vocabulary>bantuan</vocabulary> dengan <reading>lock</reading> ini (りょく). Anda yakin bahwa kedamaian dunia dan kebahagiaan abadi ada di balik gembok yang satu ini. Namun tidak ada yang mau <vocabulary>mendukung</vocabulary> Anda dalam membukanya. Dunia yang kejam.', 'Bantuan, Mendukung')
    RETURNING id INTO v_2998_bantuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独創', 'penciptaan-asli', 44, 37, 'Anda <kanji>sendirian</kanji> dalam apa yang dapat Anda <kanji>buat</kanji>. Tidak ada orang lain yang bisa berkreasi seperti Anda. Jadi apa yang Anda buat adalah <vocabulary>kreasi asli</vocabulary> Anda sendiri.

独創 merujuk pada tindakan <vocabulary>menciptakan sesuatu yang orisinal</vocabulary>, atau hasil kreasi itu sendiri. Kata ini cukup formal, dan umumnya digunakan sebagai 独創的 (asli) atau 独創性 (orisinalitas).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penciptaan Asli, Menciptakan Sesuatu yang Asli')
    RETURNING id INTO v_4898_penciptaan_asli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '街道', 'jalan-raya', 44, 38, 'Saat <kanji>jalan</kanji> dan <kanji>jalan raya</kanji> digabungkan, Anda mendapatkan sesuatu yang cukup lebar untuk dijadikan <vocabulary>jalan raya</vocabulary>!

Namun 街道 tidak berarti jalan raya modern yang Anda lalui. Ini mengacu pada <kosakata>jalan raya</vocabulary> besar di masa lalu yang menghubungkan kota-kota besar dan wilayah-wilayah. Di Jepang, ini biasanya merupakan rute zaman Edo seperti 日光街道 (Nikkō Kaidō) dan 中山道 (Nakasendō). Jalur ini juga berfungsi untuk rute bersejarah penting lainnya, seperti アッピア街道 (Jalan Appian) di Roma kuno.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun satu hal yang perlu diperhatikan:

Kata ini menggunakan bacaan かい untuk 街 (bukan がい). Dan meskipun 街道 adalah sufiks, ia tidak pernah diberi rendaku! Ingatlah hal ini dengan membayangkan <vocabulary>jalan raya</vocabulary> zaman dahulu yang penuh dengan orang-orang di <reading>kay</reading>aks (かい). Anda tahu, orang-orang menggunakan kayak yang ditarik kuda untuk melakukan perjalanan jauh sebelum ditemukannya mobil. Anda pernah mendengarnya, bukan?', 'Jalan raya, Jalan Tinggi')
    RETURNING id INTO v_5279_jalan_raya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交通網', 'jaringan-lalu-lintas', 44, 39, 'Anda mengetahui beberapa waktu lalu bahwa 交通 berarti "lalu lintas". Jadi apa yang dimaksud dengan <kanji>net</kanji> lalu lintas? Sebuah <vocabulary>jaringan lalu lintas</vocabulary>, atau bahkan <vocabulary>jaringan transportasi</vocabulary>! 

交通網 mengacu pada jaringan jalan raya, kereta api, bus, dan metode transportasi lainnya yang menghubungkan tempat-tempat di suatu area dan memungkinkan orang dan barang untuk bepergian.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jaringan Lalu Lintas, Jaringan Transportasi')
    RETURNING id INTO v_6634_jaringan_lalu_lintas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通信網', 'jaringan-komunikasi', 44, 40, 'Saat Anda <kanji>melewati</kanji>, Anda mengetahui apa yang <kanji>diyakini</kanji> melalui <kanji>jaringan</kanji> hebat yang menghubungkan semua orang. Jaring apa ini? Ini adalah <vocabulary>jaringan komunikasi</vocabulary>! Jika dipikir-pikir, hal-hal seperti jaringan telepon atau internet sebenarnya hanyalah jaring besar tak kasat mata yang memungkinkan kepercayaan dan informasi berpindah dari satu orang ke orang lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jaringan Komunikasi')
    RETURNING id INTO v_6635_jaringan_komunikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沈める', 'untuk-menenggelamkan-sesuatu', 44, 41, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menenggelamkan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>menenggelamkan sesuatu</vocabulary> atau <vocabulary>menenggelamkan sesuatu</vocabulary>.

Ini merupakan kata kerja transitif, artinya mengambil objek langsung. Jadi, alih-alih mendeskripsikan sesuatu yang tenggelam dengan sendirinya, Anda menggunakan 沈める ketika Anda menenggelamkan kapal musuh atau membenamkan diri di bak mandi. 

Anda mengetahui hal ini karena Anda tidak dapat menenggelamkan apa pun sampai Anda mendapatkan <reading>mail</reading> (める) yang mengatakan, "Ya, lanjutkan dengan tenggelam!" Anda harus memiliki surat itu jika Anda ingin menenggelamkan sesuatu, atau semua orang akan menyalahkan Anda atas hilangnya kapal — atau karena Anda menghilang di bawah air.', 'Saat Anda menenggelamkan sesuatu, seperti kapal perang, Anda melanjutkan dan berkata: "<reading>dia</reading> (しず) tenggelam, saya menenggelamkannya." Itu seperti tagline Anda, atau semacamnya. Anda mengatakannya karena suatu alasan karena menurut Anda itu keren.', 'Untuk Menenggelamkan Sesuatu, Untuk Menenggelamkan Sesuatu')
    RETURNING id INTO v_6731_untuk_menenggelamkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '携帯ストラップ', 'tali-ponsel', 44, 42, 'Anda tahu bagaimana 携帯 mengacu pada ponsel? Ini adalah <kanji>tali</kanji> (ストラップ) untuk ponsel, menjadikannya <vocabulary>tali ponsel</vocabulary> atau <vocabulary>tali ponsel</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui bacaan 携帯.', 'Tali Ponsel, Tali Ponsel')
    RETURNING id INTO v_6752_tali_ponsel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '克服する', 'untuk-menaklukkan', 44, 43, '克服 adalah "penaklukan" jadi versi kata kerjanya adalah <vocabulary>menaklukkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Menaklukkan')
    RETURNING id INTO v_6753_untuk_menaklukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '哲学者', 'filsuf', 44, 44, '<kanji>filsafat</kanji> <kanji>sarjana</kanji> (学者) adalah seseorang yang mempelajari filsafat. Mereka dikenal sebagai <vocabulary>filsuf</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Filsuf')
    RETURNING id INTO v_6754_filsuf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喪服', 'gaun-berkabung', 44, 45, '<kanji>pakaian</kanji> <kanji>pakaian</kanji> Anda adalah <vocabulary>gaun berkabung</vocabulary> atau <vocabulary>pakaian berkabung</vocabulary> Anda.', 'Pembacaannya berasal dari on''yomi untuk 服 dan kun''yomi untuk 喪, yang Anda pelajari dengan kata 喪. Anda harus tahu cara membaca kata ini!', 'Gaun Berkabung, Pakaian Berkabung')
    RETURNING id INTO v_6755_gaun_berkabung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '挑戦者', 'seorang-penantang', 44, 46, '<kanji>tantangan</kanji> (挑戦) <kanji>seseorang</kanji> adalah seseorang yang akan menantang Anda. Mereka adalah <vocabulary>seorang penantang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Seorang Penantang, Penantang')
    RETURNING id INTO v_6756_seorang_penantang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '揚げ', 'goreng', 44, 47, 'Ingat bagaimana 揚げる berarti "menggoreng"? Ini adalah versi awalan atau akhiran dari kata tersebut, menjadikannya <vocabulary>digoreng</vocabulary>...

Perhatikan bahwa 揚げ terkadang dapat digunakan sebagai kata yang berdiri sendiri, dalam hal ini biasanya mengacu pada tahu goreng.', 'Bacaannya juga berasal dari 揚げる.', 'Goreng')
    RETURNING id INTO v_6757_goreng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '握り', 'genggaman-seseorang', 44, 48, 'Ingat bagaimana 握る adalah "memahami"? Ini adalah versi kata benda dan artinya <kosakata>pegangan seseorang</vocabulary>. Kata ini sering digunakan untuk membicarakan seberapa kuat atau longgar cengkeraman seseorang, misalnya pada alat, bola bisbol, atau bahkan kalung lawan dalam judo.

Jika kamu menambahkan angka ke 握り, seperti 一握り, itu bisa berarti <vocabulary>sedikit</vocabulary>. Bisa juga mengacu pada <vocabulary>nigiri sushi</vocabulary>, karena untuk membuat sushi jenis tersebut Anda perlu mengambil segenggam nasi dan memegangnya hingga membentuknya.

Kadang-kadang ini juga merujuk pada sesuatu yang ingin Anda pegang, seperti pegangan pancing atau mesin pachinko, tetapi penggunaan ini kurang umum. Wah, ada banyak hal yang perlu diketahui tentang kata ini — tapi semoga Anda sudah menguasai 握り sekarang.', 'Bacaannya berasal dari 握る, jadi pahamilah!', 'Genggaman Seseorang, Segenggam, Nigiri Sushi')
    RETURNING id INTO v_6758_genggaman_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '揺さぶる', 'untuk-mengguncang', 44, 49, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menggoyang</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>goyang</vocabulary>.', 'Bacaannya berasal dari 揺る.', 'Untuk Mengguncang, Tersentak')
    RETURNING id INTO v_6759_untuk_mengguncang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '揺する', 'untuk-mengguncang', 44, 50, '<kanji>Goyang</kanji> ditambah "melakukan" adalah versi kata kerja dari goyang. Yaitu <vocabulary>mengguncang</vocabulary> atau <vocabulary>mengguncang</vocabulary> secara perlahan.', 'Bacaannya berasal dari 揺る.', 'Untuk Mengguncang, Ke Rock, Bergoyang, Tersentak')
    RETURNING id INTO v_6760_untuk_mengguncang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '揺れる', 'terguncang', 44, 51, 'Ingat 揺る yang artinya "mengguncang" atau "tersentak"? Memang seperti itu, tapi sekarang kamu tidak melakukan goyangan dan sentakan, sehingga <vocabulary>terguncang</vocabulary> atau <vocabulary>tersentak</vocabulary>. Kamu mengetahui hal ini karena sangat <read>jarang</reading> (れる) kamu terguncang seperti ini.', 'Bacaannya berasal dari 揺る.', 'Terguncang, Menjadi Tersentak')
    RETURNING id INTO v_6761_terguncang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泊まり', 'menginap-semalam', 44, 52, 'Anda tahu bahwa 泊まる berarti "menginap." Versi kata bendanya adalah <vocabulary>menginap semalam</vocabulary> atau <vocabulary>menginap</vocabulary>.', 'Bacaannya berasal dari 泊まる, jadi tariklah dari sana dan Anda akan mengetahui ini.', 'Menginap Semalam, Menginap')
    RETURNING id INTO v_6762_menginap_semalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '滑り台', 'perosotan-taman-bermain', 44, 53, 'Ingat bagaimana 滑る berarti "meluncur", dan 台 adalah penghitung mesin? Dalam hal ini, "mesin" yang Anda geser ke bawah adalah <vocabulary>slide taman bermain</vocabulary>, atau disingkat <vocabulary>slide</vocabulary>.', 'Bacaannya berasal dari 滑る dan 台.', 'Perosotan Taman Bermain, Menggeser')
    RETURNING id INTO v_6764_perosotan_taman_bermain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焦がす', 'untuk-membakar', 44, 54, 'Ingat bagaimana 焦げる berarti "terbakar"? 焦がす adalah versi transitif, jadi kali ini ada yang aktif melakukan pembakaran, menjadikannya <vocabulary>membakar</vocabulary>, <vocabulary>hangus</vocabulary>, atau <vocabulary>menjadi char</vocabulary>.

焦がす artinya membakar permukaan sesuatu, biasanya menghitamkannya sampai taraf tertentu. Tidak seperti 焦げる, ini bisa terjadi karena pembakaran yang disengaja (creme brûlée yang enak) dan pembakaran yang tidak disengaja (meninggalkan roti di dalam pemanggang roti terlalu lama, membuat lengan baju Anda hangus di atas kompor).', 'Bacaannya berasal dari 焦げる, jadi jika Anda mengetahuinya Anda pasti tahu kata ini juga.', 'Untuk Membakar, Untuk hangus, Kepada Char')
    RETURNING id INTO v_6766_untuk_membakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紛れる', 'untuk-dialihkan', 44, 55, 'Anda tahu bahwa 紛らす berarti "mengalihkan" atau "mengalihkan perhatian". Ini adalah saat Anda tidak melakukan tindakan, sekarang, membuat kata <vocabulary>teralihkan</vocabulary> atau <vocabulary>teralihkan</vocabulary>.', 'Bacaannya berasal dari 紛らす.', 'Untuk Dialihkan, Menjadi Terganggu')
    RETURNING id INTO v_6767_untuk_dialihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紛らわしい', 'membingungkan', 44, 56, 'Jika Anda ingin <kanji>mengalihkan perhatian</kanji> seseorang, coba ucapkan sesuatu yang <vocabulary>membingungkan</vocabulary> atau <vocabulary>menyesatkan</vocabulary> kepadanya. Mereka akan sangat sibuk mencoba menafsirkan komentar Anda dengan bingung sehingga mereka tidak dapat fokus sama sekali pada apa pun yang awalnya mereka lakukan.

紛らわしい adalah kata sifat untuk hal-hal yang membingungkan karena <vocabulary>mudah tertukar</vocabulary> atau mudah disesatkan. Pikirkan kanji yang mirip (末 dan 未, siapa?), tempat dengan nama yang sama (London, seperti di Inggris atau Kanada?), dan selebritas yang sulit Anda bedakan. Terkadang, kata ini juga bisa merujuk pada hal-hal yang sengaja menipu, seperti tombol di situs web yang menipu Anda agar mendaftar untuk sesuatu. Apa pun itu, jika mudah tertukar dengan hal lain, Anda mungkin bisa mengatakannya 紛らわしい.', 'Anda sudah mempelajari 紛らす, dan ini menggunakan bacaan yang sama, namun berikut adalah mnemonik jika Anda memerlukan pengingat:

Anda tahu siapa yang paling <vocabulary>membingungkan</vocabulary>? Gadis <read>Maggie</reading> (まぎ) itu. Dia bingung karena namanya terus berpindah antara Margaret dan Maggie di tengah percakapan. Anda mengira dia lebih menyukai Maggie, tetapi saat ini, sejujurnya Anda bahkan tidak yakin lagi.', 'Membingungkan, Menyesatkan, Mudah Dicampur')
    RETURNING id INTO v_6768_membingungkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '荒波', 'lautan-badai', 44, 57, '<kanji>gelombang</kanji> yang liar</kanji> akan menghasilkan <vocabulary>lautan badai</vocabulary> atau <vocabulary>ombak yang mengamuk</vocabulary>. Jangan keluar dalam gelombang seperti ini.', 'Bacaannya berasal dari bacaan kun''yomi pada kanji, 荒 (bacaan sekunder yang Anda pelajari dengan kanji ini) dan 波 (hanya versi vocab).', 'Lautan Badai, Gelombang Mengamuk')
    RETURNING id INTO v_6770_lautan_badai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手袋', 'sarung-tangan', 44, 58, '<kanji>tangan</kanji> <kanji>karung</kanji> adalah karung untuk tanganmu... lebih tepatnya, ini adalah <vocabulary>sarung tangan</vocabulary>.', 'Bacaannya sama-sama merupakan bacaan kosakata kun''yomi, jadi anggaplah 手 dan 袋 sebagai kata tersendiri, yang disatukan menjadi karung tangan. Hati-hati dengan rendaku.', 'Sarung tangan')
    RETURNING id INTO v_6771_sarung_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '竜', 'naga', 44, 59, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Naga')
    RETURNING id INTO v_6772_naga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '竜巻', 'angin-topan', 44, 60, '<kanji>naga</kanji> <kanji>gulungan</kanji> adalah naga yang berbentuk seperti gulungan, berputar-putar. Ini adalah <vocabulary>tornado</vocabulary>.', 'Pembacaannya adalah pembacaan kun''yomi pada kanji. Untuk 竜 pikirkan saja bagaimana itu adalah naga yang <membaca>berdiri</reading>ing (立つ), karena itu pasti terjadi jika itu adalah <vocabulary>tornado</vocabulary>. Pembacaan まき Anda berasal dari 巻く, tetapi kananya dimasukkan ke dalam kanji.', 'Angin topan')
    RETURNING id INTO v_6773_angin_topan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恐竜', 'dinosaurus', 44, 61, '<kanji>ketakutan</kanji> <kanji>naga</kanji> adalah <vocabulary>dinosaurus</vocabulary>. Dinosaurus jauh lebih menakutkan daripada naga, dan itulah mengapa dinosaurus disebut naga ketakutan dalam bahasa Jepang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dinosaurus')
    RETURNING id INTO v_6774_dinosaurus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縁起', 'pertanda', 44, 62, 'Ingat bagaimana 縁 berarti "tepi", tetapi bisa juga berarti "hubungan"? Nah, <kanji>relasi</kanji> yang bisa <kanji>membangkitkan</kanji> perasaan baru dalam diri Anda adalah <vocabulary>omen</vocabulary>. Coba pikirkan - melihat suatu pertanda sebenarnya berarti Anda cukup sensitif untuk memperhatikan semua hubungan yang terjadi di dunia.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Ingatlah bahwa 起 adalah rendaku dan menjadi ぎ di sini.', 'Pertanda, Keberuntungan')
    RETURNING id INTO v_6775_pertanda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無縁', 'tidak-berhubungan', 44, 63, 'Anda telah mempelajari 縁 yang berarti "tepi", tetapi ingat pula arti "hubungan"? Nah, jika sesuatu <kanji>tidak ada</kanji> <kanji>hubungan</kanji>, kemungkinan <vocabulary>tidak berhubungan</vocabulary>.

無縁 mendeskripsikan <vocabulary>tidak memiliki ikatan</vocabulary> dengan sesuatu yang lain — Anda benar-benar terpisah dari atau <vocabulary>tidak terlibat</vocabulary> dengan hal tersebut. Misalnya, mungkin Anda dibesarkan di 宗教とは無縁な家庭 (rumah tangga yang sama sekali tidak beragama), atau mungkin Anda hidup お酒とは無縁な生活 (kehidupan bebas alkohol). Apa pun masalahnya, benda ini benar-benar asing bagi Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tidak berhubungan, Tidak Memiliki Ikatan, Tidak terlibat')
    RETURNING id INTO v_6776_tidak_berhubungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縁談', 'lamaran-pernikahan', 44, 64, 'Anda telah mempelajari 縁 yang berarti "tepi", tapi ingat bagaimana kata itu juga bisa berarti "hubungan"? Nah, bila Anda memiliki <kanji>hubungan</kanji> untuk <kanji>diskusi</kanji>, itu hanya berarti satu hal: inilah waktunya <vocabulary>lamaran pernikahan</vocabulary>! Eh, itu arah yang kamu harapkan untuk mengambil hubungan ini, bukan? Semoga begitu…

縁談 adalah kata yang relatif formal untuk diskusi, saran, pengaturan, atau lamaran pernikahan, sering kali dalam konteks perjodohan atau perjodohan. Ini bukan untuk melamar — untuk itu Anda cukup menggunakan プロポーズ.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lamaran Pernikahan, Pengaturan Pernikahan, Diskusi Pernikahan')
    RETURNING id INTO v_6777_lamaran_pernikahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '左翼', 'sayap-kiri', 44, 65, '<kanji>sayap</kanji> kiri</kanji> adalah <vocabulary>sayap kiri</vocabulary>, seperti dalam "partai sayap kiri" atau "politik sayap kiri" atau semacamnya.', 'Bacaan 左 adalah bacaan on''yomi, さ. Anda dapat mengingat hal ini karena <vocabulary>sayap kiri</vocabulary> menggunakan <reading>gergaji</reading> (さ) untuk menebas musuh sayap kanannya. Bayangkan kaum hippie sayap kiri menggergaji kaum konservatif sayap kanan lama. BBrrrrbbbbbbzzzzzz!', 'Sayap kiri')
    RETURNING id INTO v_6778_sayap_kiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '右翼', 'sayap-kanan', 44, 66, '<kanji>kanji> <kanji>Sayap</kanji> adalah <vocabulary>sayap kanan</vocabulary>. Seperti dalam, “politik sayap kanan” atau “keyakinan sayap kanan.”', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 右, jadi inilah mnemonik untuk membantu Anda:

Mereka yang berada di <vocabulary>sayap kanan</vocabulary> suka makan <reading>u</reading>ni (う), bukan karena mereka suka rasanya, tapi karena uni itu mahal. Bayangkan beberapa orang sayap kanan di benak Anda saat ini dan perhatikan saat mereka berusaha keras untuk berpura-pura suka makan uni sambil menyendokkan banyak makanan ke tenggorokan mereka.', 'Sayap kanan')
    RETURNING id INTO v_6779_sayap_kanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '翼', 'sayap', 44, 67, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Di setiap sayap <vocabulary></vocabulary> politik ada <reading>dua bos</reading>es (つばさ). Ini sistem yang aneh, tapi itulah yang mereka lakukan saat ini. Bayangkan sayap politik favorit atau paling tidak Anda sukai, semuanya dengan dua bos, berdebat satu sama lain.', 'Sayap')
    RETURNING id INTO v_6780_sayap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吉', 'pertanda-baik', 44, 68, 'Memiliki <kanji>keberuntungan</kanji> adalah <vocabulary>pertanda baik</vocabulary> yang harus dimiliki. Keberuntungan berarti lebih banyak keberuntungan, bukan?', 'Kata ini menggunakan bacaan きち yang Anda pelajari dengan kanji.', 'Pertanda Baik')
    RETURNING id INTO v_6781_pertanda_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不吉', 'tidak-menyenangkan', 44, 69, 'Sesuatu yang <kanji>tidak</kanji> <kanji>menyeramkan</kanji> adalah <vocabulary>menyeramkan</vocabulary> dan <vocabulary>menyeramkan</vocabulary>. Ini juga merupakan <vocabulary>nasib buruk</vocabulary> dan <vocabulary>pertanda buruk</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tidak menyenangkan, Jahat, Sial, Pertanda buruk')
    RETURNING id INTO v_6782_tidak_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '忍ぶ', 'untuk-bertahan', 44, 70, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bertahan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>bertahan</vocabulary>.', 'Mereka yang mampu <vocabulary>bertahan</vocabulary> adalah mereka yang telah banyak menjalani latihan. Siapa yang paling banyak mendapat pelatihan? Ninja. Mereka termasuk dalam kelompok apa? <membaca>shino</reading>bi (しの).', 'Untuk Bertahan, Untuk Menyembunyikan, Untuk Menyembunyikan')
    RETURNING id INTO v_6783_untuk_bertahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '忍者', 'ninja', 44, 71, '<kanji>menyembunyikan <kanji>seseorang</kanji> adalah seseorang yang dapat menyembunyikan dirinya sendiri. Siapa yang lebih baik dalam hal itu daripada siapa pun? Seorang <kosa kata>ninja</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.', 'Ninja')
    RETURNING id INTO v_6784_ninja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刃', 'bilah', 44, 72, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Namun ia juga memiliki bacaan sekunder yang belum Anda pelajari, jadi inilah mnemoniknya:

<vocabulary>Pisau</vocabulary> di tangan, kamu menyerang musuh sambil berteriak "<reading>Yah</reading>! <reading>Eee</reading>! <reading>Baa</reading>!" (やいば). Saat pedang itu menembusnya, kamu berseru, "Yah! Eee! Baa!" bahkan lebih keras. Seruan perang ini selalu memicu kemarahan Anda dan menggandakan kekuatan pedang ayun Anda. "Yah! Eee! Baa!"

Meskipun kedua pembacaan tersebut berkaitan dengan bilah, kegunaannya sedikit berbeda. は digunakan untuk bilah atau tepi alat pemotong apa pun, sedangkan やいば agak kuno dan secara khusus mengacu pada bilah pedang atau pisau, sering kali dalam konteks sastra.', 'Bilah, Tepian')
    RETURNING id INTO v_6785_bilah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刃物', 'alat-bermata', 44, 73, '<kanji>pisau</kanji> <kanji>benda</kanji> adalah <vocabulary>alat bermata</vocabulary> atau <vocabulary>peralatan makan</vocabulary>.', 'Pembacaannya adalah pembacaan kun''yomi pada kanji. Anda belajar membaca 刃 dengan kanji, dan Anda mungkin ingat 物 dari banyak kata lainnya.', 'Alat Bermata, Alat makan, Pisau')
    RETURNING id INTO v_6786_alat_bermata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刃先', 'tepi-pisau', 44, 74, '<kanji>bilah</kanji> yang berada <kanji>di depan</kanji> adalah bagian bilah yang paling jauh dari Anda (karena berada di depan Anda). Ini adalah <vocabulary>tepi pisau</vocabulary> atau <vocabulary>tepi pisau</vocabulary>.', 'Pembacaannya adalah pembacaan kun''yomi pada kanji. Untuk 刃 kamu mempelajarinya dengan kanji. Untuk 先 itulah versi kosakata kanjinya.', 'Tepi Pisau, Tepi Pisau')
    RETURNING id INTO v_6787_tepi_pisau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '桃', 'persik', 44, 75, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Persik')
    RETURNING id INTO v_6788_persik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '桃色', 'warna-persik', 44, 76, '<kanji>warna peach</kanji> <kanji>warna</kanji> adalah <vocabulary>warna peach</vocabulary>, atau <vocabulary>merah jambu</vocabulary>.', 'Bacaannya berasal dari bacaan vocab (dan bacaan kanji sebenarnya) dari kedua kanji tersebut.', 'Warna Persik, Berwarna merah muda')
    RETURNING id INTO v_6789_warna_persik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '謎', 'misteri', 44, 77, 'Kanji dan kata tersebut memiliki arti yang persis sama. Hal ini menjadikan hal ini sebagai <vocabulary>misteri</vocabulary> atau <vocabulary>teka-teki</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji. Saya rasa, tidak ada <vocabulary>misteri</vocabulary> di sana.', 'Misteri, Teka-teki')
    RETURNING id INTO v_6795_misteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '謎々', 'teka-teki', 44, 78, 'Sebuah <kanji>misteri</kanji>, berlipat ganda? Hm, ini benar-benar <vocabulary>teka-teki</vocabulary>. Anda bahkan bisa menyebutnya <vocabulary>puzzle</vocabulary> atau <vocabulary>enigma</vocabulary>.', 'Kata ini menggunakan pembacaan kun''yomi dari kanji yang Anda pelajari sebanyak dua kali. Anda seharusnya bisa membaca ini sendiri.', 'Teka-teki, Membingungkan, teka-teki')
    RETURNING id INTO v_6796_teka_teki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '侍', 'samurai', 44, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan arti dan bacaan kanji: <reading>さむらい</reading>.', 'Samurai')
    RETURNING id INTO v_6797_samurai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '叱る', 'untuk-memarahi', 44, 80, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memarahi</kanji> dan versi vocab verbanya juga berarti <vocabulary>memarahi</vocabulary>.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan kanji.', 'Untuk Memarahi, Untuk menegur, Untuk menegur')
    RETURNING id INTO v_6801_untuk_memarahi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '娯楽', 'kesenangan', 44, 81, '<kanji>Rekreasi</kanji> dan <kanji>kenyamanan</kanji> adalah hal-hal yang Anda lakukan untuk <vocabulary>kesenangan</vocabulary> dan <vocabulary>hiburan</vocabulary>. Sangat bagus!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesenangan, Hiburan')
    RETURNING id INTO v_6802_kesenangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '斗', 'sendok', 44, 82, 'Berapa banyak yang bisa kamu tampung di <kanji>sendok</kanji> ini? Wah, tepatnya <vocabulary>delapan belas liter</vocabulary> tentu saja! Delapan belas adalah nomor favorit Anda, betapa nyamannya.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Sendok, Biduk, Ukuran Volume, Delapan Belas Liter')
    RETURNING id INTO v_6803_sendok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朱', 'merah-terang', 44, 83, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

朱 mengacu pada <vocabulary>vermilion</vocabulary>, warna merah cerah dengan sedikit warna oranye, dan juga dapat diterjemahkan sebagai <vocabulary>merah merah</vocabulary>. Hal ini umum terjadi dalam budaya Jepang — Anda akan sering melihatnya di gerbang kuil dan barang-barang pernis, misalnya.', 'Bacaannya bisa berupa bacaan on''yomi atau kun''yomi, jadi Anda punya pilihan disana. Karena kamu sudah mempelajari on''yomi しゅ dengan kanji, mari belajar membaca あけ sekarang.

あけ terdengar seperti awal dari 開ける (membuka). Jadi bayangkan Anda <membaca>開け</reading>る (あけ) seseorang, untuk melihat warna apa yang ada di dalamnya. Ternyata itu <vocabulary>vermilion</vocabulary>! Uh… kamu tidak seharusnya membuka diri pada orang seperti itu.

朱 sebagian besar dibaca しゅ, tetapi bisa juga dibaca あけ dalam frasa tertentu, seperti 朱に染まる, yang berarti "berlumuran darah" (secara harafiah, "dicelup dengan warna merah terang").', 'Merah terang, Merah Merah')
    RETURNING id INTO v_6804_merah_terang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朱印', 'segel-merah', 44, 84, '<kanji>segel</kanji> berwarna <kanji>vermilion</kanji> adalah <vocabulary>segel merah</vocabulary>. Cari saja kata (bahasa Jepang) di pencarian Gambar Google dan Anda akan melihat apa ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Segel Merah')
    RETURNING id INTO v_6805_segel_merah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '丘', 'bukit', 44, 85, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaan versi kosakata kata ini sama dengan 岡 yang mempunyai arti dan bacaan yang sama. Beruntung!', 'Bukit, Bukit kecil')
    RETURNING id INTO v_6806_bukit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '砂丘', 'bukit-pasir', 44, 86, '<kanji>pasir</kanji> <kanji>bukit</kanji> adalah <vocabulary>gundukan pasir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bukit pasir')
    RETURNING id INTO v_6807_bukit_pasir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '梨', 'pir', 44, 87, 'Kanji dan kata-katanya sama persis, jadi artinya <vocabulary>pir</vocabulary> juga.

Perhatikan bahwa 梨 biasanya mengacu secara spesifik pada <kosakata>pir Asia</vocabulary> yang berbentuk bola. Jika Anda ingin mengacu pada varietas pir Eropa yang berbentuk tetesan air mata, gunakan kata 洋梨 (ようなし).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Pir, Pir Asia')
    RETURNING id INTO v_6808_pir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '叫ぶ', 'berteriak', 44, 88, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berteriak</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to shout</vocabulary>. Bisa juga <vocabulary>berteriak</vocabulary>.', 'Untuk mengingat bacaan ini, coba pikirkan bagaimana Anda mulai <vocabulary>berteriak</vocabulary> dan <vocabulary>menjerit</vocabulary> ketika Anda minum terlalu banyak <reading>sake</reading> (さけ).', 'Berteriak, Berteriak')
    RETURNING id INTO v_6812_berteriak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絶叫', 'seruan', 44, 89, '<kanji>Kepunahan</kanji> yang disebabkan oleh <kanji>teriakan</kanji>. Anda membuat suara orang lain punah, dan Anda <vocabulary>berteriak</vocabulary> dan <vocabulary>berteriak</vocabulary> atas mereka. Anda membuat <vocabulary>seruan</vocabulary>, sial.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan pemendekannya.', 'Seruan, Berteriak, Berteriak')
    RETURNING id INTO v_6813_seruan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '釣り', 'penangkapan-ikan', 44, 90, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji!', 'Penangkapan ikan')
    RETURNING id INTO v_6814_penangkapan_ikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '釣る', 'untuk-memancing', 44, 91, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memancing</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to fishing</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Memancing')
    RETURNING id INTO v_6815_untuk_memancing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '髪', 'rambut', 44, 92, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Pastikan untuk mengetahui bahwa ini adalah rambut di kepala Anda.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Rambut, Rambut Kepala, Rambut di Kepala Anda')
    RETURNING id INTO v_6816_rambut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金髪', 'rambut-pirang', 44, 93, '<kanji>Emas</kanji> <kanji>rambut</kanji> adalah <vocabulary>rambut pirang</vocabulary>. Masuk akal!', 'Kata ini menggunakan bacaan on''yomi 髪 はつ, namun berubah menjadi ぱつ karena bunyi ん sebelumnya. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Mengagumi <vocabulary>rambut pirang</vocabulary> indah Anda, seseorang datang dan <read>menepuk</reading> (ぱつ) itu. Sebenarnya, ini cukup normal bagi Anda - ada orang asing yang menepuk-nepuk rambut Anda hampir setiap hari. Itu hanya harga yang Anda bayar untuk kunci emas cantik itu.', 'Rambut pirang, Berambut pirang, Pirang')
    RETURNING id INTO v_6817_rambut_pirang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '髪の毛', 'rambut-kepala', 44, 94, '<kanji>rambut</kanji> <kanji>bulu</kanji> Anda adalah bulu rambut yang khusus ada di kepala Anda. Itu adalah <vocabulary>rambut kepala</vocabulary> Anda.', 'Bacaannya adalah bacaan vocab kun''yomi 髪 dan 毛 yang disatukan.', 'Rambut Kepala')
    RETURNING id INTO v_6818_rambut_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '髪型', 'gaya-rambut', 44, 95, '<kanji>rambut</kanji> <kanji>model</kanji> Anda adalah cara Anda memodelkan rambut Anda. Itu adalah <vocabulary>hairstyle</vocabulary> atau <vocabulary>hairdo</vocabulary> Anda.', 'Bacaannya adalah bacaan kosakata kanji individu. Untuk 髪 itu tidak masalah. Untuk 型 ingatlah bahwa ini adalah pembacaan kosakata individu. Hati-hati dengan rendaku.', 'Gaya rambut, Gaya Rambut, Tata rambut')
    RETURNING id INTO v_6819_gaya_rambut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嵐', 'badai', 44, 96, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji.', 'Badai, Badai')
    RETURNING id INTO v_6820_badai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '笠', 'topi-kerucut', 44, 97, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Topi Kerucut, Topi Bambu')
    RETURNING id INTO v_6821_topi_kerucut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大砲', 'meriam', 44, 98, '<kanji>besar</kanji> <kanji>meriam</kanji> adalah... tunggu saja... hanya <vocabulary>meriam</vocabulary>. Saya kira semua meriam itu besar, bukan? Setidaknya jika Anda membandingkannya dengan senjata.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Meriam')
    RETURNING id INTO v_6822_meriam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感涙', 'air-mata-emosi', 44, 99, '<kanji>perasaan</kanji> yang berlebihan menghasilkan <kanji>tetesan air mata</kanji>. Ini adalah <vocabulary>air mata emosi</vocabulary>, tapi bukan jenis yang buruk. Anda hanya <vocabulary>terharu sampai menangis</vocabulary>.

感涙 adalah kata tingkat lanjut yang terutama digunakan dalam tulisan. Ini mengacu pada jenis air mata yang mungkin Anda keluarkan ketika Anda sangat tersentuh oleh emosi positif, seperti ketika Anda benar-benar bersyukur atas sesuatu atau tergerak oleh pidato yang kuat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 涙, jadi inilah mnemonik untuk membantu Anda:

<kosakata>air mata emosi</vocabulary>mu yang berlebihan telah <reading>merusak</reading>menghancurkan (るい) hidupmu. Teman-teman Anda tidak suka dimarahi karena pujian atau bantuan sekecil apa pun, jadi sekarang mereka bahkan tidak membalas telepon Anda. Tidak ada orang lain yang Anda kenal yang <vocabulary>meneteskan air mata</vocabulary> setiap hari seperti ini. Itu menghancurkan hidupmu!', 'Air Mata Emosi, Menjadi Terharu Sampai Menangis')
    RETURNING id INTO v_6824_air_mata_emosi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '缶', 'kaleng-timah', 44, 100, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Kedengarannya juga seperti <reading>can</reading>.', 'kaleng timah, Bisa, Timah')
    RETURNING id INTO v_6826_kaleng_timah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '缶コーヒー', 'kopi-kalengan', 44, 101, '<kanji>kaleng</kanji> <kanji>kopi</kanji> (コーヒー) adalah kopi yang dikemas dalam kaleng. Itu <vocabulary>kopi kaleng</vocabulary> atau <vocabulary>kopi kaleng</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kopi Kalengan, Bisakah Kopi')
    RETURNING id INTO v_6828_kopi_kalengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '姫', 'putri', 44, 102, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Bisa juga digunakan untuk merujuk pada <vocabulary>gadis bangsawan</vocabulary> juga, seperti pada gadis dari keluarga bangsawan.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Putri, Gadis Mulia')
    RETURNING id INTO v_6829_putri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '姫様', 'putri', 44, 103, '<kanji>putri</kanji> (<kanji>nama resmi ender</kanji>) adalah sang putri, dan Anda berbicara dengannya dengan sopan. Dia adalah <vocabulary>putri</vocabulary>.', 'Bacaannya adalah bacaan 姫 dan 様 digabungkan menjadi satu.', 'Putri')
    RETURNING id INTO v_6830_putri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '粒', 'bulir', 44, 104, '<kanji>Biji-bijian</kanji> terbuat dari <vocabulary>grain</vocabulary> tunggal. Anda juga dapat menggunakan ini untuk merujuk ke <vocabulary>bead</vocabulary> atau menggunakannya sebagai <vocabulary>penghitung grain</vocabulary>.', 'Anda mengambil semua <vocabulary>grain</vocabulary> dan memasukkannya ke dalam <reading>tabung</reading> (つぶ). Bayangkan saja melakukan hal ini, butir demi butir.', 'Bulir, Titisan, Penghitung Untuk Biji-bijian')
    RETURNING id INTO v_6834_bulir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '粒子', 'partikel', 44, 105, '<kanji>anak</kanji> <kanji>butir</kanji> bahkan lebih kecil dari sebutir butir. Itu adalah <vocabulary>partikel</vocabulary>, terkadang bahkan merupakan <vocabulary>partikel atom</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Partikel, Bulir, Partikel Atom')
    RETURNING id INTO v_6835_partikel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雷雨', 'hujan-badai', 44, 106, '<kanji>guntur</kanji> <kanji>hujan</kanji> adalah hujan yang disertai guntur. Untuk semua maksud dan tujuan, jika Anda melihat ini, Anda akan berpikir <vocabulary>badai</vocabulary>.', 'Bacaannya adalah bacaan on''yomi. Untuk 雨, Anda mempelajarinya dengan 雨天. Jadi, Anda harus bisa menyatukannya!', 'Hujan badai')
    RETURNING id INTO v_6836_hujan_badai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雷', 'guruh', 44, 107, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Untuk mengingat bacaan, pikirkan tentang <vocabulary>guntur</vocabulary>. Di masa lalu, suaranya mungkin sangat keras. Seperti seruan para dewa! Tunggu sebentar, "tangisan para dewa" adalah <reading>神鳴り</reading> (かみなり).', 'Guruh, Petir, Petir')
    RETURNING id INTO v_6837_guruh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '魚雷', 'torpedo', 44, 108, '<kanji>Ikan</kanji> <kanji>guntur</kanji> adalah guntur bawah air yang menembaki benda-benda dan berbentuk seperti ikan. Itu adalah <vocabulary>torpedo</vocabulary>. Muat guntur ikan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Torpedo')
    RETURNING id INTO v_6838_torpedo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芽', 'tumbuh', 44, 109, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Tumbuh, Tunas')
    RETURNING id INTO v_6839_tumbuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塔', 'menara', 44, 110, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Bisa juga menjadi <vocabulary>pagoda</vocabulary>. Jika dipikir-pikir, pagoda adalah menara di masa lalu.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Anda seharusnya bisa membaca ini sendiri.', 'Menara, Klenteng')
    RETURNING id INTO v_6840_menara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '管制塔', 'menara-pengawas', 44, 111, '<kanji>pipa</kanji> <kanji>kendali</kanji> <kanji>menara</kanji> adalah menara yang mengontrol semua pipa... bayangkan pipa bukan sebagai pipa, namun sebagai arah pergerakan benda. Anda mengendalikan semua itu pada peta, dan pipa menunjukkan ke mana segala sesuatu bergerak dan Anda mengubahnya ke tempat yang seharusnya dituju. Anda berada di <vocabulary>menara kendali</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menara pengawas')
    RETURNING id INTO v_6841_menara_pengawas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'バベルの塔', 'menara-babel', 44, 112, '塔 milik バベル adalah menara Babel. Itulah <vocabulary>Menara Babel</vocabulary>.', 'Pembacaannya berasal dari pembacaan kanji.', 'Menara Babel')
    RETURNING id INTO v_6842_menara_babel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'エッフェル塔', 'menara-eiffel', 44, 113, '<kanji>Eiffel</kanji> (エッフェル) <kanji>Menara</kanji> adalah <vocabulary>Menara Eiffel</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menara Eiffel')
    RETURNING id INTO v_6843_menara_eiffel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見逃す', 'untuk-mengabaikan', 44, 114, '逃す adalah "melepaskan" atau "melepaskan". Jika ada sesuatu yang luput dari <kanji>yang Anda lihat</kanji>, maka Anda akan <vocabulary>mengabaikan</vocabulary> itu.', 'Bacaannya berasal dari 見 dan 逃す.', 'Untuk Mengabaikan')
    RETURNING id INTO v_6935_untuk_mengabaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '取り逃がす', 'gagal-menangkap', 44, 115, 'Hal yang ingin Anda <kanji>ambil</kanji> telah <kanji>melarikan diri</kanji>d. Artinya Anda gagal menangkap benda ini. Kata ini <vocabulary>gagal ditangkap</vocabulary>.', 'Bacaannya berasal dari 取る dan 逃がす.', 'Gagal Menangkap')
    RETURNING id INTO v_6941_gagal_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寝床', 'tempat-tidur', 44, 116, '<kanji>tidur</kanji> <kanji>tempat tidur</kanji> adalah tempat Anda tidur. Dimana kamu tidur? Di <vocabulary>ranjang</vocabulary>, mungkin.

Kata ini bisa merujuk pada <vocabulary>tempat tidur</vocabulary> apa pun, termasuk tempat tidur, futon, atau bahkan sarang atau sarang binatang. Anda akan sering melihatnya dalam literatur, dalam frasa seperti 寝床に入る (naik ke tempat tidur). Saat Anda membicarakan tempat tidur Anda dalam percakapan santai, Anda mungkin hanya akan mengatakan ベッド.', 'Kata ini menggunakan pembacaan kanji kun''yomi. Anda tidak mempelajari bacaan kun''yomi kedua untuk 床. Ambil とこ dan masukkan ke dalam どこ. Bagaimana Anda mengingatnya? Pikirkan saja tentang tempat tidurmu. Lalu bertanya-tanya, "<reading>dimana</reading> (どこ) itu?"', 'Tempat tidur, Tempat Tidur')
    RETURNING id INTO v_6947_tempat_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手堅い', 'padat', 44, 117, 'Anda tahu bahwa 堅い itu "padat" atau "tangguh". Jika <kanji>tangan</kanji> Anda <kanji>kokoh</kanji> dan kuat, maka <vocabulary>kokoh</vocabulary> dan <vocabulary>stabil</vocabulary>. Jika tangan Anda gemetar, justru sebaliknya, atau apalah.', 'Bacaannya adalah gabungan dua kata 手 dan 堅い. Hati-hati dengan rendaku.', 'Padat, Stabil, Tegas')
    RETURNING id INTO v_6948_padat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '荒らす', 'untuk-membuang-sampah', 44, 118, '荒れる berarti "menjadi badai" atau "menjadi kasar." 荒らす adalah saat Anda melakukan hal-hal kasar yang penuh badai. Anda menjadi liar pada semua orang, mencoba <vocabulary>membuang</vocabulary> dan <vocabulary>mengacaukan</vocabulary> segala sesuatu di sekitar Anda.

荒らす adalah tentang menciptakan kekacauan. Hal ini dapat berupa kehancuran fisik, seperti babi hutan yang merusak taman atau perampok yang menggeledah dan mengacak-acak rumah. Atau bisa juga berarti mengganggu situasi damai, seperti mengganggu forum atau chat online.', 'Bacaannya berasal dari 荒れる.', 'Untuk Membuang Sampah, Untuk Mengacaukan')
    RETURNING id INTO v_6949_untuk_membuang_sampah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '荒々しい', 'liar', 44, 119, '荒い adalah <kanji>kasar</kanji>. Gandakan menjadi 荒々しい dan Anda akan mendapatkan hasil yang sama: <vocabulary>liar</vocabulary> atau <vocabulary>rough</vocabulary>.', 'Bacaannya berasal dari 荒い. Karena kalian sudah tahu kalau 々 itu artinya berulang, kalian pasti sudah tahu bacaan ini!', 'Liar, Kasar')
    RETURNING id INTO v_6950_liar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寸', 'matahari', 44, 120, '<kanji>pengukuran</kanji> ini juga mengacu pada pengukuran tertentu, "<vocabulary>matahari</vocabulary>", yaitu sekitar <vocabulary>3,03 sentimeter</vocabulary>. Anda akan mendengarnya muncul dari waktu ke waktu untuk mengukur sesuatu, meskipun biasanya dengan barang yang lebih tradisional Jepang.', 'Bacaannya sama dengan kanji! Selamat! Sekarang yang perlu diingat adalah tiga koma nol tiga sentimeter.', 'Matahari, Tiga Titik Nol Tiga Sentimeter')
    RETURNING id INTO v_7512_matahari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寸法', 'pengukuran', 44, 121, 'Salah satu <kanji>metode</kanji> yang paling mudah dalam <kanji>pengukuran</kanji> adalah dengan memeriksa <vocabulary>ukuran</vocabulary> dan <vocabulary>dimension</vocabulary>, dan begitulah, Anda sudah mendapatkan <vocabulary>pengukuran</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ingatlah bahwa ほう berubah menjadi ぽう.', 'Pengukuran, Ukuran, Dimensi')
    RETURNING id INTO v_7556_pengukuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寸前', 'di-tepi-tepi', 44, 122, '<kanji>Sebelum</kanji> melakukan <kanji>pengukuran</kanji> terakhir, Anda tahu bahwa Anda <vocabulary>di ambang</vocabulary> sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Selama Anda mengetahui bacaan kanji ini, Anda seharusnya bisa membaca kata ini dengan baik.', 'Di Tepi Tepi, Di Ambang, Tepat di Depan, Tepat Sebelumnya')
    RETURNING id INTO v_7557_di_tepi_tepi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縁', 'tepian', 44, 123, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

縁 sering menggambarkan bentuk fisik sesuatu, seperti メガネの縁 (bingkai kacamata) atau 池の縁 (<vocabulary>tepi</vocabulary> kolam).', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

<vocabulary>tepi</vocabulary> keju inilah yang kita sebut <reading>foo</reading>l (ふ) <reading>chee</reading>se (ち) karena tidak ada yang menginginkan bagian itu.', 'Tepian, Pelek, Meluap')
    RETURNING id INTO v_7612_tepian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '落雷', 'petir', 44, 124, '<kanji>Guntur</kanji> yang <kanji>jatuh</kanji> dari langit adalah <vocabulary>petir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Petir, Petir, Sambaran Petir, Sambaran Petir')
    RETURNING id INTO v_7666_petir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一翼', 'terpisah', 44, 125, '<kanji>Satu</kanji> <kanji>sayap</kanji> hanyalah <vocabulary>bagian </vocabulary>dari burung atau pesawat yang ditempelkannya. Namun sayap yang satu itu memainkan <vocabulary>peran</vocabulary> yang sangat penting!

Kata ini biasanya muncul dalam frasa 〜の一翼を担う (berperan dalam…).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terpisah, Sebuah Peran')
    RETURNING id INTO v_7780_terpisah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '両翼', 'kedua-sayap', 44, 126, '<kanji>Keduanya</kanji> <kanji>sayap</kanji> adalah <vocabulary>keduanya sayap</vocabulary>! Ada dua dan Anda memiliki semuanya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kedua Sayap, Kedua Sisi')
    RETURNING id INTO v_7781_kedua_sayap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '軒並み', 'di-seluruh-papan', 44, 127, '<kanji>Berbaris</kanji> <kanji>penghitung rumah</kanji> dan Anda akan melihat bahwa semua rumah yang Anda hitung memiliki <kosakata>yang sama di seluruh papan</vocabulary>. Itu juga mengubahnya menjadi <vocabulary>deret rumah</vocabulary>.', 'Ini adalah kombinasi kata 軒 dan 並 yang sudah kamu pelajari, jadi kamu harus bisa membaca kata ini juga. Perhatikan saja bahwa untuk 並, み di なみ menonjol! Meskipun terkadang Anda mungkin melihat 軒並 tertulis ini, 軒並み jauh lebih umum.', 'Di Seluruh Papan, Deretan Rumah, Sama sekali')
    RETURNING id INTO v_8046_di_seluruh_papan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狐', 'rubah', 44, 128, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Rubah')
    RETURNING id INTO v_8658_rubah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '挨拶', 'salam', 44, 129, '<kanji>Dorong terbuka</kanji> pintu ke percakapan yang <kanji>segera</kanji> dengan mengucapkan <vocabulary>salam</vocabulary> atau <vocabulary>salam</vocabulary> yang tepat. Kata ini mungkin juga mengacu pada <vocabulary>pidato</vocabulary> singkat yang Anda sampaikan di sebuah acara atau upacara.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!', 'Salam, Sapaan, Pidato')
    RETURNING id INTO v_8894_salam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裂ける', 'menjadi-terpisah', 44, 130, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>membelah</kanji>, jadi kata kerja ini ada hubungannya dengan sesuatu yang membelah. 

Ini adalah kata kerja intransitif, jadi kata kerja ini berarti <vocabulary>dibelah</vocabulary>, <vocabulary>dirobek</vocabulary>, atau <vocabulary>dipecah</vocabulary>.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 裂く.', 'Menjadi Terpisah, Menjadi Robek, Untuk Meledak')
    RETURNING id INTO v_8926_menjadi_terpisah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '北斗七星', 'biduk', 44, 131, 'Apa yang dapat Anda lihat di <kanji>utara</kanji> yang terlihat seperti <kanji>sendok</kanji> dan terdiri dari <kanji>tujuh</kanji> <kanji>bintang</kanji>? Itulah kelompok bintang yang kami sebut <vocabulary>Biduk</vocabulary> atau, tergantung di mana Anda berada, mungkin <vocabulary>the Plough</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi.', 'Biduk, Bajak')
    RETURNING id INTO v_9055_biduk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一斗缶', 'wadah-delapan-belas-liter', 44, 132, '<kanji>satu</kanji> <kanji>sendok</kanji> <kanji>kaleng</kanji> adalah <vocabulary>wadah delapan belas liter</vocabulary>, yang juga merupakan <vocabulary>wadah lima galon</vocabulary>. Itu pasti satu sendok besar!

Jika Anda tinggal di Jepang, Anda mungkin pernah melihatnya. Wadah berbentuk persegi panjang yang terbuat dari logam yang sebagian besar digunakan untuk keperluan industri, untuk menyimpan cairan seperti cat, bahan bakar, dan bahan kimia.斗 sebenarnya mengacu pada pengukuran Jepang kuno, yang kira-kira setara dengan delapan belas liter.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Hati-hati dengan 一, yang disingkat menjadi いっ.', 'Wadah Delapan Belas Liter, Kontainer Lima Galon')
    RETURNING id INTO v_9056_wadah_delapan_belas_liter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '土砂', 'endapan', 44, 133, '<kanji>Bumi</kanji> dan <kanji>pasir</kanji> adalah <vocabulary>tanah dan pasir</vocabulary>, atau <vocabulary>sedimen</vocabulary>.', 'Ini adalah kata jukugo dan menggunakan on''yomi untuk kedua kanjinya. On''yomi untuk 砂 ini kurang umum, dan Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda:

Jika <vocabulary>sedimen</vocabulary> terlalu banyak, Anda perlu membicarakannya dengan <reading>sha</reading>man (しゃ). Hanya seorang dukun yang mempunyai kekuatan untuk membuang semua <vocabulary>tanah dan pasir</vocabulary> itu dan membuat sungai mengalir kembali.', 'Endapan, Bumi dan Pasir')
    RETURNING id INTO v_9127_endapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '為替', 'penukaran-mata-uang', 44, 134, 'Demi <kanji>demi</kanji> <kanji>pertukaran</kanji>! Apa yang terdengar begitu hebat sebenarnya hanyalah <vocabulary>pertukaran mata uang</vocabulary>.', 'Anda perlu melakukan banyak <vocabulary>penukaran mata uang</vocabulary> untuk investasi terbaru Anda: <reading>ca</reading>r <reading>wa</reading>sh <reading>ce</reading>lery (かわせ)! Tentu saja, seledrilah yang disimpan, dibersihkan, dan… diasapi di tempat cuci mobil. Jadi, ambil semua mata uang yang Anda miliki, ada beberapa pertukaran yang harus kami lakukan.', 'Penukaran mata uang')
    RETURNING id INTO v_9298_penukaran_mata_uang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '選択肢', 'pilihan', 44, 135, 'Anda bebas <kanji>memilih</kanji> dan <kanji>memilih</kanji> salah satu dari <kanji>anggota badan</kanji> ini, sehingga memberi Anda banyak <vocabulary>pilihan</vocabulary>. Dengan semua <vocabulary>pilihan</vocabulary> dan <vocabulary>alternatif</vocabulary> ini, manakah yang akan Anda pilih?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pilihan, Pilihan, Alternatif')
    RETURNING id INTO v_9314_pilihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遡及', 'menjadi-retroaktif', 44, 136, '<kanji>Naik ke hulu</kanji> melalui arus waktu untuk <kanji>mencapai</kanji> sesuatu di masa lalu — ini disebut <vocabulary>berlaku surut</vocabulary>. 

遡及 adalah kata formal dan teknis yang digunakan ketika sesuatu diterapkan secara surut. Anda sebagian besar akan melihatnya dalam konteks hukum atau administratif ketika membahas aturan atau dampak yang diterapkan pada tindakan atau situasi di masa lalu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tahu bacaan ini — tidak perlu mempelajari bacaan baru untuk kanji lama secara surut di sini.', 'Menjadi Retroaktif, Retroaktif')
    RETURNING id INTO v_9460_menjadi_retroaktif;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2998_bantuan, 'Bantuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2998_bantuan, 'Mendukung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4898_penciptaan_asli, 'Penciptaan Asli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4898_penciptaan_asli, 'Menciptakan Sesuatu yang Asli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5279_jalan_raya, 'Jalan raya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5279_jalan_raya, 'Jalan Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6634_jaringan_lalu_lintas, 'Jaringan Lalu Lintas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6634_jaringan_lalu_lintas, 'Jaringan Transportasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6635_jaringan_komunikasi, 'Jaringan Komunikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6731_untuk_menenggelamkan_sesuatu, 'Untuk Menenggelamkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6731_untuk_menenggelamkan_sesuatu, 'Untuk Menenggelamkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6752_tali_ponsel, 'Tali Ponsel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6752_tali_ponsel, 'Tali Ponsel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6753_untuk_menaklukkan, 'Untuk Menaklukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6754_filsuf, 'Filsuf', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6755_gaun_berkabung, 'Gaun Berkabung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6755_gaun_berkabung, 'Pakaian Berkabung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6756_seorang_penantang, 'Seorang Penantang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6756_seorang_penantang, 'Penantang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6757_goreng, 'Goreng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6758_genggaman_seseorang, 'Genggaman Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6758_genggaman_seseorang, 'Segenggam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6758_genggaman_seseorang, 'Nigiri Sushi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6759_untuk_mengguncang, 'Untuk Mengguncang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6759_untuk_mengguncang, 'Tersentak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6760_untuk_mengguncang, 'Untuk Mengguncang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6760_untuk_mengguncang, 'Ke Rock', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6760_untuk_mengguncang, 'Bergoyang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6760_untuk_mengguncang, 'Tersentak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6761_terguncang, 'Terguncang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6761_terguncang, 'Menjadi Tersentak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6762_menginap_semalam, 'Menginap Semalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6762_menginap_semalam, 'Menginap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6764_perosotan_taman_bermain, 'Perosotan Taman Bermain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6764_perosotan_taman_bermain, 'Menggeser', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6766_untuk_membakar, 'Untuk Membakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6766_untuk_membakar, 'Untuk hangus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6766_untuk_membakar, 'Kepada Char', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6767_untuk_dialihkan, 'Untuk Dialihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6767_untuk_dialihkan, 'Menjadi Terganggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6768_membingungkan, 'Membingungkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6768_membingungkan, 'Menyesatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6768_membingungkan, 'Mudah Dicampur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6770_lautan_badai, 'Lautan Badai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6770_lautan_badai, 'Gelombang Mengamuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6771_sarung_tangan, 'Sarung tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6772_naga, 'Naga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6773_angin_topan, 'Angin topan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6774_dinosaurus, 'Dinosaurus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6775_pertanda, 'Pertanda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6775_pertanda, 'Keberuntungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6776_tidak_berhubungan, 'Tidak berhubungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6776_tidak_berhubungan, 'Tidak Memiliki Ikatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6776_tidak_berhubungan, 'Tidak terlibat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6777_lamaran_pernikahan, 'Lamaran Pernikahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6777_lamaran_pernikahan, 'Pengaturan Pernikahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6777_lamaran_pernikahan, 'Diskusi Pernikahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6778_sayap_kiri, 'Sayap kiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6779_sayap_kanan, 'Sayap kanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6780_sayap, 'Sayap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6781_pertanda_baik, 'Pertanda Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6782_tidak_menyenangkan, 'Tidak menyenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6782_tidak_menyenangkan, 'Jahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6782_tidak_menyenangkan, 'Sial', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6782_tidak_menyenangkan, 'Pertanda buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6783_untuk_bertahan, 'Untuk Bertahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6783_untuk_bertahan, 'Untuk Menyembunyikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6783_untuk_bertahan, 'Untuk Menyembunyikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6784_ninja, 'Ninja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6785_bilah, 'Bilah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6785_bilah, 'Tepian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6786_alat_bermata, 'Alat Bermata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6786_alat_bermata, 'Alat makan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6786_alat_bermata, 'Pisau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6787_tepi_pisau, 'Tepi Pisau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6787_tepi_pisau, 'Tepi Pisau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6788_persik, 'Persik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6789_warna_persik, 'Warna Persik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6789_warna_persik, 'Berwarna merah muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6795_misteri, 'Misteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6795_misteri, 'Teka-teki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6796_teka_teki, 'Teka-teki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6796_teka_teki, 'Membingungkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6796_teka_teki, 'teka-teki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6797_samurai, 'Samurai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6801_untuk_memarahi, 'Untuk Memarahi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6801_untuk_memarahi, 'Untuk menegur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6801_untuk_memarahi, 'Untuk menegur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6802_kesenangan, 'Kesenangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6802_kesenangan, 'Hiburan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6803_sendok, 'Sendok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6803_sendok, 'Biduk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6803_sendok, 'Ukuran Volume', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6803_sendok, 'Delapan Belas Liter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6804_merah_terang, 'Merah terang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6804_merah_terang, 'Merah Merah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6805_segel_merah, 'Segel Merah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6806_bukit, 'Bukit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6806_bukit, 'Bukit kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6807_bukit_pasir, 'Bukit pasir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6808_pir, 'Pir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6808_pir, 'Pir Asia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6812_berteriak, 'Berteriak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6812_berteriak, 'Berteriak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6813_seruan, 'Seruan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6813_seruan, 'Berteriak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6813_seruan, 'Berteriak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6814_penangkapan_ikan, 'Penangkapan ikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6815_untuk_memancing, 'Untuk Memancing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6816_rambut, 'Rambut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6816_rambut, 'Rambut Kepala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6816_rambut, 'Rambut di Kepala Anda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6817_rambut_pirang, 'Rambut pirang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6817_rambut_pirang, 'Berambut pirang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6817_rambut_pirang, 'Pirang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6818_rambut_kepala, 'Rambut Kepala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6819_gaya_rambut, 'Gaya rambut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6819_gaya_rambut, 'Gaya Rambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6819_gaya_rambut, 'Tata rambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6820_badai, 'Badai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6820_badai, 'Badai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6821_topi_kerucut, 'Topi Kerucut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6821_topi_kerucut, 'Topi Bambu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6822_meriam, 'Meriam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6824_air_mata_emosi, 'Air Mata Emosi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6824_air_mata_emosi, 'Menjadi Terharu Sampai Menangis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6826_kaleng_timah, 'kaleng timah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6826_kaleng_timah, 'Bisa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6826_kaleng_timah, 'Timah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6828_kopi_kalengan, 'Kopi Kalengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6828_kopi_kalengan, 'Bisakah Kopi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6829_putri, 'Putri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6829_putri, 'Gadis Mulia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6830_putri, 'Putri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6834_bulir, 'Bulir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6834_bulir, 'Titisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6834_bulir, 'Penghitung Untuk Biji-bijian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6835_partikel, 'Partikel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6835_partikel, 'Bulir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6835_partikel, 'Partikel Atom', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6836_hujan_badai, 'Hujan badai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6837_guruh, 'Guruh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6837_guruh, 'Petir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6837_guruh, 'Petir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6838_torpedo, 'Torpedo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6839_tumbuh, 'Tumbuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6839_tumbuh, 'Tunas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6840_menara, 'Menara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6840_menara, 'Klenteng', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6841_menara_pengawas, 'Menara pengawas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6842_menara_babel, 'Menara Babel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6843_menara_eiffel, 'Menara Eiffel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6935_untuk_mengabaikan, 'Untuk Mengabaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6941_gagal_menangkap, 'Gagal Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6947_tempat_tidur, 'Tempat tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6947_tempat_tidur, 'Tempat Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6948_padat, 'Padat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6948_padat, 'Stabil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6948_padat, 'Tegas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6949_untuk_membuang_sampah, 'Untuk Membuang Sampah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6949_untuk_membuang_sampah, 'Untuk Mengacaukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6950_liar, 'Liar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6950_liar, 'Kasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7512_matahari, 'Matahari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7512_matahari, 'Tiga Titik Nol Tiga Sentimeter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7556_pengukuran, 'Pengukuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7556_pengukuran, 'Ukuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7556_pengukuran, 'Dimensi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7557_di_tepi_tepi, 'Di Tepi Tepi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7557_di_tepi_tepi, 'Di Ambang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7557_di_tepi_tepi, 'Tepat di Depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7557_di_tepi_tepi, 'Tepat Sebelumnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7612_tepian, 'Tepian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7612_tepian, 'Pelek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7612_tepian, 'Meluap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7666_petir, 'Petir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7666_petir, 'Petir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7666_petir, 'Sambaran Petir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7666_petir, 'Sambaran Petir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7780_terpisah, 'Terpisah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7780_terpisah, 'Sebuah Peran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7781_kedua_sayap, 'Kedua Sayap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7781_kedua_sayap, 'Kedua Sisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8046_di_seluruh_papan, 'Di Seluruh Papan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8046_di_seluruh_papan, 'Deretan Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8046_di_seluruh_papan, 'Sama sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8658_rubah, 'Rubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8894_salam, 'Salam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8894_salam, 'Sapaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8894_salam, 'Pidato', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8926_menjadi_terpisah, 'Menjadi Terpisah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8926_menjadi_terpisah, 'Menjadi Robek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8926_menjadi_terpisah, 'Untuk Meledak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9055_biduk, 'Biduk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9055_biduk, 'Bajak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9056_wadah_delapan_belas_liter, 'Wadah Delapan Belas Liter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9056_wadah_delapan_belas_liter, 'Kontainer Lima Galon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9127_endapan, 'Endapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9127_endapan, 'Bumi dan Pasir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9298_penukaran_mata_uang, 'Penukaran mata uang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9314_pilihan, 'Pilihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9314_pilihan, 'Pilihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9314_pilihan, 'Alternatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9460_menjadi_retroaktif, 'Menjadi Retroaktif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9460_menjadi_retroaktif, 'Retroaktif', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2998_bantuan, 'じょりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4898_penciptaan_asli, 'どくそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5279_jalan_raya, 'かいどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6634_jaringan_lalu_lintas, 'こうつうもう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6635_jaringan_komunikasi, 'つうしんもう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6731_untuk_menenggelamkan_sesuatu, 'しずめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6752_tali_ponsel, 'けいたいすとらっぷ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6752_tali_ponsel, 'けいたいストラップ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6753_untuk_menaklukkan, 'こくふくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6754_filsuf, 'てつがくしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6755_gaun_berkabung, 'もふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6756_seorang_penantang, 'ちょうせんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6757_goreng, 'あげ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6758_genggaman_seseorang, 'にぎり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6759_untuk_mengguncang, 'ゆさぶる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6760_untuk_mengguncang, 'ゆする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6761_terguncang, 'ゆれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6762_menginap_semalam, 'とまり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6764_perosotan_taman_bermain, 'すべりだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6766_untuk_membakar, 'こがす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6767_untuk_dialihkan, 'まぎれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6768_membingungkan, 'まぎらわしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6770_lautan_badai, 'あらなみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6771_sarung_tangan, 'てぶくろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6772_naga, 'りゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6773_angin_topan, 'たつまき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6774_dinosaurus, 'きょうりゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6775_pertanda, 'えんぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6776_tidak_berhubungan, 'むえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6777_lamaran_pernikahan, 'えんだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6778_sayap_kiri, 'さよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6779_sayap_kanan, 'うよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6780_sayap, 'つばさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6781_pertanda_baik, 'きち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6782_tidak_menyenangkan, 'ふきつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6783_untuk_bertahan, 'しのぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6784_ninja, 'にんじゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6785_bilah, 'は', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6785_bilah, 'やいば', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6786_alat_bermata, 'はもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6787_tepi_pisau, 'はさき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6788_persik, 'もも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6789_warna_persik, 'ももいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6795_misteri, 'なぞ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6796_teka_teki, 'なぞなぞ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6797_samurai, 'さむらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6801_untuk_memarahi, 'しかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6802_kesenangan, 'ごらく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6803_sendok, 'と', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6804_merah_terang, 'しゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6804_merah_terang, 'あけ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6805_segel_merah, 'しゅいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6806_bukit, 'おか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6807_bukit_pasir, 'さきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6808_pir, 'なし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6812_berteriak, 'さけぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6813_seruan, 'ぜっきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6814_penangkapan_ikan, 'つり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6815_untuk_memancing, 'つる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6816_rambut, 'かみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6817_rambut_pirang, 'きんぱつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6818_rambut_kepala, 'かみのけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6819_gaya_rambut, 'かみがた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6820_badai, 'あらし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6821_topi_kerucut, 'かさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6822_meriam, 'たいほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6824_air_mata_emosi, 'かんるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6826_kaleng_timah, 'かん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6828_kopi_kalengan, 'かんこーひー', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6828_kopi_kalengan, 'かんコーヒー', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6829_putri, 'ひめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6830_putri, 'ひめさま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6834_bulir, 'つぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6835_partikel, 'りゅうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6836_hujan_badai, 'らいう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6837_guruh, 'かみなり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6838_torpedo, 'ぎょらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6839_tumbuh, 'め', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6840_menara, 'とう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6841_menara_pengawas, 'かんせいとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6842_menara_babel, 'ばべるのとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6842_menara_babel, 'バベルのとう', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6843_menara_eiffel, 'えっふぇるとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6843_menara_eiffel, 'エッフェルとう', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6935_untuk_mengabaikan, 'みのがす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6941_gagal_menangkap, 'とりにがす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6947_tempat_tidur, 'ねどこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6948_padat, 'てがたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6949_untuk_membuang_sampah, 'あらす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6950_liar, 'あらあらしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7512_matahari, 'すん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7556_pengukuran, 'すんぽう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7557_di_tepi_tepi, 'すんぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7612_tepian, 'ふち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7666_petir, 'らくらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7780_terpisah, 'いちよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7781_kedua_sayap, 'りょうよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8046_di_seluruh_papan, 'のきなみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8658_rubah, 'きつね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8894_salam, 'あいさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8926_menjadi_terpisah, 'さける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9055_biduk, 'ほくとしちせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9056_wadah_delapan_belas_liter, 'いっとかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9127_endapan, 'どしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9298_penukaran_mata_uang, 'かわせ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9314_pilihan, 'せんたくし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9460_menjadi_retroaktif, 'そきゅう', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2998_bantuan, '父の助力のおかげです。', 'Itu berkat bantuan ayahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2998_bantuan, '他人の助力が有ったから出来たことです。', 'Hal ini hanya mungkin terjadi dengan bantuan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2998_bantuan, '友人の助力で、四年間で大学を出ることが出来そうです。', 'Dengan bantuan seorang teman, sepertinya saya bisa keluar dari perguruan tinggi setelah empat tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4898_penciptaan_asli, '彼が独創性に欠けていることは非常に残念です。', 'Sangat mengecewakan karena dia kurang orisinalitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4898_penciptaan_asli, 'アイディアが独創的であれば独創的であるほど、反対する人も多いよね。', 'Semakin kreatif ide Anda, semakin banyak orang yang menentangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4898_penciptaan_asli, 'ワニカニはコウイチ社長の独創です。', 'WaniKani adalah ciptaan asli Presiden Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5279_jalan_raya, 'この街道をずっとまっすぐ行くと、そのうち京都に着きますよ。', 'Jika Anda terus mengikuti jalan raya ini dengan lurus, Anda akhirnya akan mencapai Kyoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5279_jalan_raya, '僕は街道を自転車で旅して、日本各地を回っています。', 'Saya bepergian dengan sepeda di sepanjang jalan raya lama, mengunjungi berbagai tempat di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5279_jalan_raya, '東海道、中山道、日光街道、甲州街道、奥州街道は、五街道と呼ばれ、江戸時代の五大陸上交通路であった。', 'Tōkaidō, Nakasendō, Nikkō Kaidō, Kōshū Kaidō, dan Ōshū Kaidō disebut Gokaidō — lima jalan raya — dan merupakan lima rute utama yang digunakan pada zaman Edo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6634_jaringan_lalu_lintas, '大地震が首都圏の交通網に大きな影響を与えました。', 'Gempa dahsyat tersebut berdampak besar terhadap jaringan transportasi wilayah ibu kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6634_jaringan_lalu_lintas, '日本の都市部は交通網が発達しているので、車がなくても生活できます。', 'Daerah perkotaan di Jepang memiliki jaringan transportasi yang berkembang dengan baik, sehingga Anda bisa hidup tanpa mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6634_jaringan_lalu_lintas, '交通網が弱い地域は、災害時や緊急時に取り残されがちだ。', 'Daerah dengan jaringan transportasi yang buruk cenderung tertinggal saat terjadi bencana atau keadaan darurat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6635_jaringan_komunikasi, '通信網は世界中に広がっています。', 'Jaringan komunikasi tersebar di seluruh dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6635_jaringan_komunikasi, '早急にこの地域の通信網を整備する必要があります。', 'Pembangunan jaringan komunikasi di kawasan ini perlu segera dilakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6635_jaringan_komunikasi, '災害で通信網が止まったため、通信網に依存しているサービスは全て使えなくなった。', 'Jaringan komunikasi terputus akibat bencana tersebut, sehingga semua layanan yang bergantung padanya menjadi tidak tersedia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6731_untuk_menenggelamkan_sesuatu, '彼はソファに身を沈めながら、アカデミー賞の授賞式の生中継を観ています。', 'Dia sedang menonton siaran upacara Academy Awards dan duduk di sofa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6752_tali_ponsel, 'あの携帯ストラップが気色悪すぎて、考えるだけでも吐きそうだわ。', 'Tali ponselnya sangat kotor, hanya memikirkannya saja sudah membuatku muntah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6753_untuk_menaklukkan, '三歳の頃犬に噛まれてから、ずっと犬に恐怖心を抱いていたんですが、この小さな仔犬に出会って犬嫌いを克服しました。', 'Aku takut pada anjing sejak aku digigit anjing ketika aku berumur tiga tahun, tapi kebencianku terhadap mereka sudah bisa diatasi sejak bertemu dengan anak anjing kecil ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6754_filsuf, 'その哲学者は強風を通って歩いたので、自分のベレー帽をしっかりと掴まなくてはならなかった。', 'Sang filsuf harus berpegangan pada baretnya saat dia berjalan melewati angin kencang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6755_gaun_berkabung, '私の妹は拒食症なのですが、喪服を着ているとより一層痩せ細ってみえました。', 'Adikku menderita anoreksia dan saat mengenakan gaun berkabung, dia terlihat semakin kurus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6756_seorang_penantang, '腕相撲の挑戦者は、握力を見せつけるために、右手で林檎を潰してみせました。', 'Penantang panco meremukkan sebuah apel di tangan kanannya, memamerkan kekuatan tangan kanannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6757_goreng, '揚げドーナツ、揚げバナナ、揚げギョーザ…。とにかく揚げ物が大好きなんです。', 'Donat goreng, pisang goreng, pangsit goreng… Saya suka makanan yang digoreng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6757_goreng, '本日のおまかせコースのメイン料理は「揚げ魚の甘酢あんかけ」です。 ', 'Hidangan utama hidangan omakase hari ini adalah "ikan goreng dengan saus ankake cuka manis".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6757_goreng, 'どんな食べ物でも、彼女の手にかかれば、美しく美味しい金色の揚げ物になりますよ。', 'Saat dia memasak, makanan apa pun berubah menjadi makanan gorengan emas yang indah, lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6758_genggaman_seseorang, '今日はサーモンの握りが特においしいですよ。', 'Salmon nigiri sangat enak hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6758_genggaman_seseorang, '一握りの人しか知らない秘密らしい。', 'Rupanya itu rahasia yang hanya diketahui segelintir orang saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6758_genggaman_seseorang, 'このハンマーは握りが太くて持ちやすい。
', 'Palu ini memiliki pegangan yang tebal dan mudah dipegang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6758_genggaman_seseorang, '怒ったコウイチは、握り拳で机をバンバン叩いた。', 'Marah, Koichi menggebrak meja dengan tangannya yang terkepal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6759_untuk_mengguncang, 'コウイチが木を揺さぶったので、ビエットは枝に掴まった。', 'Viet berpegangan pada dahan itu karena Koichi mengguncang pohon itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6760_untuk_mengguncang, '僕の伯父さんは、今まで蜂に刺されたことがなくて、どんなものか試してみたかったから、蜂の巣がある木を揺すったんだそうです。', 'Tampaknya paman saya mengguncang pohon yang ada sarang lebahnya karena dia belum pernah disengat lebah dan ingin mencobanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6761_terguncang, '公園のブランコが風で揺れた。', 'Ayunan di taman bergoyang tertiup angin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6761_terguncang, '風に揺れる果樹の枝が、まるで誰かを呼んでいるように見えた。', 'Bergoyang tertiup angin, dahan-dahan pohon buah-buahan itu hampir tampak seperti sedang memberi isyarat kepada seseorang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6762_menginap_semalam, 'うちの子、幼稚園のお泊まり会をすごく楽しみにしてたんだけど、風邪を引いちゃって、今抗生物質を飲ませたところなんです。だから、残念ながら今夜は欠席させて頂きます。', 'Anak saya sangat menantikan acara menginap di taman kanak-kanak, tapi dia masuk angin dan saya menyuruhnya minum antibiotik. Jadi, sayangnya, dia akan absen malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6764_perosotan_taman_bermain, '甥っ子の誕生日祝いに滑り台を作ってるんですが、少々予定が遅れ気味なんですよね。', 'Saya sedang membuat slide untuk ulang tahun keponakan saya, tapi saya sedikit terlambat dari jadwal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6766_untuk_membakar, 'いつもトーストを真っ黒に焦がしてしまう。', 'Saya selalu membakar roti panggang saya hingga benar-benar hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6767_untuk_dialihkan, '解熱剤が他の薬に紛れちゃってて、どれがどれだか分かりません。', 'Obat demamnya dimasukkan bersama pil lain dan saya tidak yakin yang mana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6768_membingungkan, '紛らわしい表現を使わないでください。', 'Tolong jangan gunakan ekspresi yang menyesatkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6768_membingungkan, '似たような商品が多くて紛らわしいよね。', 'Banyak sekali produk serupa sehingga membingungkan bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6768_membingungkan, '結局それはバスケットボールだったんですが、とても紛らわしかったです。私は完全に妊婦さんの大きなお腹だと思っていました。', 'Pada akhirnya ternyata itu bola basket, tapi itu benar-benar menyesatkan. Saya yakin itu adalah perut buncit seorang wanita hamil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6770_lautan_badai, 'アイツはまだ社会の荒波に揉まれた事のないただの若造だよ。', 'Dia hanyalah seorang anak muda yang belum terombang-ambing dalam badai lautan kehidupan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6771_sarung_tangan, 'どうして裸んぼで手袋だけはめて走り回ってるの？あんたは本当に馬鹿ね。', 'Mengapa kamu berlarian telanjang hanya dengan mengenakan sarung tangan? Kamu bodoh sekali!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6772_naga, 'その小説家は、55冊目の竜を題材にした小説でようやく大儲けすることができた。', 'Novelis itu akhirnya mendapat bayaran dengan novelnya yang kelima puluh lima tentang naga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6773_angin_topan, '昨夜、竜巻警報が出て、停電にもなりました。', 'Ada peringatan angin puting beliung dan pemadaman listrik tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6774_dinosaurus, '恐竜の化石を見つけるのに一番いい方法はなんでしょうか。', 'Apa cara terbaik untuk menemukan fosil dinosaurus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6774_dinosaurus, '「今日はハロウィンなので、恐竜のコスプレをした忍者の仮装をしています。」「何だそれ、紛らわしいな。」', '“Hari ini Halloween, jadi aku berdandan seperti ninja dengan cosplay dinosaurus.” "Apa-apaan ini. Itu membingungkan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6774_dinosaurus, 'あの哲学者は、ペットに恐竜を四匹飼っています。', 'Filsuf itu memiliki empat dinosaurus sebagai hewan peliharaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6775_pertanda, 'カラスは、日本だけでなくヨーロッパでも、縁起の悪い鳥とみなされます。', 'Burung gagak dipandang sebagai burung yang tidak menyenangkan tidak hanya di Jepang tetapi juga di Eropa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6776_tidak_berhubungan, 'この田舎道は、渋滞とは無縁です。', 'Jalan pedesaan ini tidak pernah mengalami kemacetan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6777_lamaran_pernikahan, '高卒以下の学歴の男との縁談を私に持って寄越すなんて、一体どういう神経してる訳？', 'Beraninya kau membawakanku lamaran pernikahan dari pria yang berpendidikan kurang dari SMA?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6778_sayap_kiri, '取材であの左翼支持者の方とお会いできるのがとても楽しみです。', 'Saya sangat gembira bisa bertemu dengan pendukung gerakan sayap kiri untuk wawancara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6779_sayap_kanan, '自分は、極端な右翼思想を持って生まれたように感じます。', 'Saya merasa dilahirkan dengan ide-ide ekstrim sayap kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6780_sayap, 'その鳥は、大きな翼を広げて空へ飛び立ちました。', 'Burung itu melebarkan sayapnya yang besar dan terbang ke angkasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6780_sayap, 'つけたい翼を選んで下さいね。', 'Silakan pilih sayap yang ingin Anda pakai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6780_sayap, '彼女の背中に黒い翼が見えた気がした。', 'Saya pikir saya melihat sayap hitam di punggungnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6780_sayap, 'カモメの翼が波の上をかすめていった。', 'Sayap burung camar menyapu permukaan ombak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6781_pertanda_baik, 'みんな、結婚式の日に吉日を選びたいのよ。', 'Semua orang ingin memilih hari keberuntungan untuk pernikahan mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6782_tidak_menyenangkan, 'すごく不吉な夢を見たもんで、あんたのことが心配になってこうして電話をした訳さ。', 'Aku mendapat mimpi buruk yang membuatku sangat mengkhawatirkanmu, dan itulah sebabnya aku menelepon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6783_untuk_bertahan, '父さん、どうして僕たちはアイツらの侮辱を忍ばなきゃならないの？', 'Mengapa kita harus menanggung hinaan mereka, Ayah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6784_ninja, 'コウイチは忍者に、正々堂々と勝負で勝った。', 'Koichi mengalahkan ninja dengan adil dan jujur!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6785_bilah, '心配は要りませんよ、患者さん。私のこの手術用メスの鋭い刃で、すぐに盲腸を取ってあげますからね。', 'Jangan khawatir, pasienku. Saya dapat segera mengangkat usus buntu Anda dengan pisau tajam pisau bedah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6786_alat_bermata, '刃物をちらつかせながら、男は低い声で私に「こっちへ来い」と言いました。', 'Sambil mengacungkan pisaunya, dia berkata kepadaku dengan suara rendah, “Kemarilah.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6787_tepi_pisau, '刃先を俺の首に当てながら、奴は、皆にいつもご機嫌をとられてるってのはどんな気分なのかと聞いてきたんだ。', 'Sambil menaruh ujung pisau di leherku, orang-orang itu bertanya padaku bagaimana rasanya jika ada orang yang selalu menjilatku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6788_persik, '大リーグの試合で、ピッチャーがボールの代わりに桃を投げました。', 'Pelempar melempar buah persik, bukannya bola, dalam permainan MLB.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6789_warna_persik, '桃色のバンで母親が迎えにきた時は、恥ずかしかったですね。', 'Aku malu saat ibuku datang menjemputku dengan mobil van berwarna peach.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6795_misteri, 'あの映画のその場面がいつも謎なんだよね。', 'Bagian film itu selalu menjadi misteri bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6796_teka_teki, '子どもはみんな謎々遊びをするのが好きだろう。', 'Hampir semua anak suka memecahkan teka-teki, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6796_teka_teki, '広告に釣られて謎々の本を買ってしまった。', 'Iklan itu menggoda saya untuk membeli buku teka-teki itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6796_teka_teki, 'この謎々が、分かる人〜？', 'Adakah yang mengerti teka-teki ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6797_samurai, '「今の侍としての仕事が気に入らないのなら、他の仕事を探したら？」 「口で言うほど簡単じゃないよ。」', '"Jika kamu tidak menyukai pekerjaanmu sebagai samurai, mengapa kamu tidak mencari pekerjaan lain?" "Lebih mudah diucapkan daripada dilakukan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6801_untuk_memarahi, '二重瞼の整形手術をした時、親から貰った顔に傷をつけたと両親からこっぴどく叱られました。', 'Ketika saya menjalani operasi kelopak mata ganda, saya dimarahi dengan kasar oleh orang tua saya karena saya melukai wajah yang saya warisi dari mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6802_kesenangan, '娯楽小説を読むことの何が悪いって言うんですか？', 'Apa salahnya membaca novel ringan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6803_sendok, '一斗のお米が入った袋は置いてますか？', 'Apakah Anda memiliki sekantong beras 18 liter?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6804_merah_terang, 'この布を朱に染めたいんです。', 'Saya ingin mewarnai kain ini dengan warna merah terang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6805_segel_merah, 'この紙に御朱印を押してもらえますか？', 'Bisakah saya mendapatkan stempel merah shogun di kertas ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6806_bukit, '初めてマニュアルで運転した時、丘のてっぺんでエンストしてしまいました。', 'Pada hari pertama saya mengendarai tongkat, mobil saya terhenti di puncak bukit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6807_bukit_pasir, 'その砂丘には駱駝もいるんですよ。', 'Ada beberapa unta di gundukan pasir itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6808_pir, 'じゃあ、ミカさんは梨をむいてください。', 'Baiklah, Mika-san, silakan kupas buah pirnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6808_pir, '初めて梨ジュースを飲んだけど、意外とおいしかった！', 'Saya mencoba jus pir untuk pertama kalinya, dan ternyata rasanya enak!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6808_pir, '私は梨が大好きです。でも梨は傷みやすいので、お弁当には入れないようにしています。', 'Saya suka pir, tapi karena mudah busuk, saya pastikan untuk tidak memasukkannya ke dalam bento saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6808_pir, 'この梨のマカロンは、お好みで冷やしても美味しく御賞味頂けます。', 'Macaron pir ini juga bisa dinikmati dingin, jika sesuai dengan keinginan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6812_berteriak, '「感情を吐き出すために叫ぶのが終わったら、ちゃんと電気を消してね。」「了解。」', '"Matikan lampunya setelah kamu selesai berteriak tentang emosimu." "Roger."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6813_seruan, '誰かがジェットコースターの上で、「覚悟しろ！」と絶叫した。', 'Seseorang berteriak, "bersiaplah!" di roller coaster.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6814_penangkapan_ikan, '父親同様、魚釣りは彼のお気に入りの気晴らしだ。蛙の子は蛙ってことだね。', 'Memancing adalah hobi favoritnya, sama seperti ayahnya. Mereka bilang seperti ayah, seperti anak laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6815_untuk_memancing, '後で何匹釣れたかお知らせしますね。', 'Saya akan memberi tahu Anda berapa banyak ikan yang kami tangkap nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6816_rambut, '生まれたての赤ちゃんは、毎日お風呂に入れてあげて髪を洗ってあげた方がいいのかな。', 'Saya bertanya-tanya apakah saya harus memandikan bayi saya yang baru lahir dan mencuci rambutnya setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6817_rambut_pirang, '金髪になりたかったので、コカコーラで髪を脱色しました。', 'Saya ingin menjadi pirang jadi saya memutihkan rambut saya dengan Coca-Cola.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6818_rambut_kepala, '「ねえ、サーモン。今何してんの？」「髪の毛セットしてるとこ。」「終わったら、ちょっと時間ある？」「無理〜。これが終わったらネイルもしなきゃなの。」', '“Salmon, apa yang kamu lakukan sekarang?” "Aku sedang menata rambutku." “Setelah itu, apakah kamu punya waktu?” "Tidak. Aku harus merapikan kukuku selanjutnya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6819_gaya_rambut, 'ビートルズみたいな髪型だね。', 'Gaya rambutmu terlihat seperti gaya The Beatles.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6820_badai, '「彼女、もしかして本当は全然怒ってないんじゃない？」「ただの嵐の前の静けさだよ。」', '"Mungkinkah dia tidak begitu kesal?" “Ini hanyalah ketenangan sebelum badai.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6821_topi_kerucut, '私は彼女の笠にこっそりエーデルワイスの花を飾りました。', 'Diam-diam aku menaruh bunga edelweis di topi kerucut pacarku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6822_meriam, '大砲がズドーンと鳴り響き、男は三人の子どもたちを残したまま逝ってしまいました。', 'Meriam meledak dengan keras dan pria itu meninggal dunia meninggalkan tiga orang anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6824_air_mata_emosi, 'どんな時に人は感涙にむせび泣くと思いますか。', 'Menurut Anda kapan orang akan menangis karena bersyukur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6826_kaleng_timah, '私のお父さんは桃の缶詰工場で働いています。', 'Ayah saya bekerja di pabrik pengalengan buah persik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6828_kopi_kalengan, '彼らは、とても美味い缶コーヒーを販売して、大儲けしている。', 'Mereka menghasilkan banyak uang dengan menjual kopi kaleng yang nikmat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6829_putri, 'わかったわ。じゃあ、これからはアヤのこと、アヤ姫って呼ばないといけないの？', 'Oke, jadi mulai sekarang kita harus memanggilnya Putri Aya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6830_putri, 'お迎えにあがりましたよ、僕の小さなお姫様。', 'Aku di sini untuk menjemputmu, putri kecilku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6834_bulir, '私は一粒の岩塩をオブラートで包みました。', 'Saya membungkus sebutir garam batu ke dalam wafer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6835_partikel, '光が粒子なのか波なのかを考えていて、昨日は眠れませんでした。', 'Saya sedang memikirkan apakah cahaya itu partikel atau gelombang dan saya tidak bisa tidur tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6836_hujan_badai, '今朝の強烈な雷雨で停電になったので、今はインターネットが使えません。', 'Badai petir hebat pagi ini menyebabkan pemadaman listrik, jadi saya tidak bisa menggunakan internet saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6837_guruh, '雷の音で、洗濯物を取り入れなくちゃいけないことを思い出しました。', 'Guntur mengingatkan kami bahwa kami harus membawa cucian ke dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6838_torpedo, '小包を開けると、中には自動追尾魚雷が入っていた。', 'Ketika saya membuka paket itu ada torpedo pelacak di dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6839_tumbuh, 'ニンニクの芽はいつもどうやって料理に使いますか？', 'Bagaimana biasanya Anda memasak rebung bawang putih?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6840_menara, '五重の塔の売買契約の手付金を支払いました。', 'Saya membayar deposit untuk kontrak pagoda lima lantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6841_menara_pengawas, 'もし巨大な竜巻がこの地域を襲ったら、管制塔はどうなるんでしょうか。', 'Jika tornado besar melanda daerah ini, menurut Anda bagaimana kinerja menara pengawas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6842_menara_babel, 'バベルの塔に辿り着く一番速い方法はなんですか？', 'Apa cara tercepat untuk mencapai Menara Babel?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6843_menara_eiffel, 'エッフェル塔のどんなところが好きでしたか？', 'Apa yang Anda sukai dari Menara Eiffel?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6935_untuk_mengabaikan, 'その法律に抜け穴があることを今の今まで見逃していました。', 'Saya tidak menyadari bahwa ada celah dalam hukum sampai sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6941_gagal_menangkap, '犯罪者を取り逃がすふりをするのは、ちょっとやり過ぎじゃない？', 'Tidakkah menurut Anda berpura-pura gagal menangkap penjahat itu berlebihan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6947_tempat_tidur, '寝床に入ったとたん、宿題があることを思い出した。', 'Saat aku naik ke tempat tidur, aku ingat aku punya pekerjaan rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6947_tempat_tidur, '寝床の中で大人しくしているほど、僕は聞き分けのいい子ではなかった。', 'Saya bukan tipe anak penurut yang diam saja di tempat tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6947_tempat_tidur, '猫は寝床の上で小さく身を丸め、静かな寝息を立てていた。', 'Kucing itu berbaring meringkuk di tempat tidurnya, bernapas pelan dalam tidurnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6947_tempat_tidur, '夜更けの雨はやむ気配もなく、私は寝床の中でその単調な響きに耳を傾けていた。', 'Hujan larut malam tidak menunjukkan tanda-tanda akan berhenti, dan saya berbaring di tempat tidur mendengarkan suaranya yang monoton.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6948_padat, '中々手堅い仕事みたいだから、葬儀屋になるための勉強をしようかなって思ってるんだよね。', 'Saya berpikir untuk belajar bagaimana menjadi pengurus jenazah karena sepertinya pekerjaan ini cukup aman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6949_untuk_membuang_sampah, '昨夜車上荒らしにあって、マックを盗まれました。', 'Mobil saya dibobol tadi malam dan Mac saya dicuri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6950_liar, '彼は荒々しい声で、寝ている時に奥さんが毎晩顔に小便を掛けてくることに怒り心頭していることを公言しました。', 'Dengan suara liar dia menyatakan bahwa dia benar-benar “kesal” pada istrinya karena “kencing” di wajahnya setiap malam saat dia sedang tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7512_matahari, '1寸は1尺の10分の1で、約3.03センチです。', '1 matahari sama dengan 1/10 dari 1 shaku, yaitu kira-kira 3,03 sentimeter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7556_pengukuran, 'この寸法は正しいですか？', 'Apakah pengukuran ini benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7557_di_tepi_tepi, '私の会社は破産寸前である。', 'Perusahaan saya berada di ambang kebangkrutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7612_tepian, '縁が無い眼鏡はありますか？', 'Apakah Anda punya kacamata tanpa bingkai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7666_petir, '落雷が直撃したのに、奇跡的に無傷だった。', 'Meskipun sambaran petir itu merupakan serangan langsung, secara ajaib saya tidak terluka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7780_terpisah, '大きなプロジェクトの一翼を担えることになりました。', 'Saya telah dipercaya untuk mengambil bagian dari proyek besar itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7781_kedua_sayap, '二遊間、外野の両翼のポジションはまだ空いています。', 'Sebuah bola dipukul antara baseman kedua dan shortstop, dan kedua posisi outfield masih kosong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8046_di_seluruh_papan, 'IT関連の株価が軒並み下落しました。', 'Harga saham yang berhubungan dengan TI turun secara keseluruhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8658_rubah, 'かわいい狐が茂みからひょこっと顔を出した。', 'Seekor rubah lucu tiba-tiba menjulurkan kepalanya keluar dari semak-semak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8894_salam, 'まだ小さいのに挨拶ができて良い子だね。', 'Kamu adalah anak yang baik dalam menyapa orang dengan baik meskipun kamu masih sangat kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8894_salam, '挨拶はコミュニケーションに欠かせない要素です。', 'Salam adalah bagian penting dari komunikasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8894_salam, '近くにいたので、挨拶しに来ました。', 'Saya berada di area tersebut, jadi saya datang untuk menyapa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8926_menjadi_terpisah, '最近は毎朝、裂けるチーズを食べています。', 'Akhir-akhir ini saya makan keju yang bisa dibelah (keju tali AKA) setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8926_menjadi_terpisah, 'ねえ、ケンイチ君。ジーンズの股が裂けてるよ。', 'Hei, Kenichi. Celana jinsmu robek di bagian selangkangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8926_menjadi_terpisah, '悲しすぎて、心が裂けちゃいそうだよ。', 'Aku sangat sedih hingga hatiku terasa seperti akan meledak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9055_biduk, '北斗七星は七つの星で構成されています。', 'Biduk terdiri dari tujuh bintang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9055_biduk, '晴れた日には、窓から北斗七星が見えるよ。', 'Pada malam yang cerah, kita dapat melihat Biduk dari jendela kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9055_biduk, 'この写真は、１１月３日未明の北斗七星です。', 'Foto ini adalah Biduk sebelum fajar pada tanggal 3 November.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9056_wadah_delapan_belas_liter, '一斗缶は洗剤や石油などを保管するためのものです。', 'Wadah delapan belas liter digunakan untuk menyimpan barang-barang seperti deterjen dan minyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9056_wadah_delapan_belas_liter, 'その店では、一斗缶のキャンペーンを行っています。', 'Toko itu sedang mengadakan promosi untuk wadah lima galon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9056_wadah_delapan_belas_liter, 'この一斗缶をあそこのコーナーに積んでください。', 'Tolong susun wadah delapan belas liter ini di pojok sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9127_endapan, '川底にはたくさんの土砂がたまっている。', 'Ada banyak sedimen di dasar sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9127_endapan, '津波で大量の土砂が二階の教室に流れ込んだ。', 'Akibat tsunami, sejumlah besar tanah dan pasir mengalir ke ruang kelas di lantai dua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9127_endapan, '地震の後には土砂災害の危険があります。', 'Pasca gempa ada bahaya tanah longsor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9298_penukaran_mata_uang, 'ドル円の現在の為替レートは、1ドル=146円25銭です。', 'Nilai tukar USD/JPY saat ini adalah 1 dolar = 146,25 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9298_penukaran_mata_uang, '為替相場は日々変動する生き物です。', 'Pasar valuta asing adalah makhluk hidup yang berfluktuasi setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9298_penukaran_mata_uang, 'グローバル雇用における為替リスクは、モラル的には会社が従業員よりも多めに負担すべきだと思うんです。', 'Saya percaya bahwa dalam konteks ketenagakerjaan global, risiko nilai tukar secara moral seharusnya lebih ditanggung oleh perusahaan dibandingkan oleh karyawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9314_pilihan, '将来の選択肢は多い方がいい。', 'Semakin banyak pilihan yang dimiliki seseorang di masa depan, semakin baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9314_pilihan, '結局、どの選択肢を選んでも結果は同じだったんだ。', 'Pada akhirnya, pilihan mana pun yang kita pilih, hasilnya tetap sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9314_pilihan, 'こんなに治療の選択肢があるとは、思ってもみませんでした。', 'Saya tidak pernah mengira akan ada begitu banyak pilihan pengobatan yang tersedia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9460_menjadi_retroaktif, '年金の遡及請求について説明を受けました。', 'Saya menerima penjelasan mengenai klaim pensiun yang berlaku surut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9460_menjadi_retroaktif, 'この法律は過年度へ遡及適用されることはありません。', 'Undang-undang ini tidak akan berlaku surut pada tahun fiskal yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9460_menjadi_retroaktif, '給与規定の改定は、非遡及的なものになる予定です。', 'Revisi aturan penggajian diharapkan tidak berlaku surut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9460_menjadi_retroaktif, '当時は気づかなかった小さな言葉や視線が、今になって意味を持ち、静かだった彼の心を遡及的な怒りが焼きつくしていった。', 'Kata-kata kecil dan pandangan sekilas yang tidak dia sadari saat itu kini menjadi bermakna, dan kemarahan yang surut membakar hatinya yang tadinya tenang.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1832_bersih, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1832_bersih, id FROM items WHERE type = 'radical' AND (slug = '376' OR id = '376') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1872_pengukuran, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1873_naga, r_394_naga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1874_tepian, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1874_tepian, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1874_tepian, id FROM items WHERE type = 'radical' AND (slug = '233' OR id = '233') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1875_sayap, id FROM items WHERE type = 'radical' AND (slug = '213' OR id = '213') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1875_sayap, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1875_sayap, id FROM items WHERE type = 'radical' AND (slug = '269' OR id = '269') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1876_semoga_beruntung, id FROM items WHERE type = 'radical' AND (slug = '253' OR id = '253') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1877_bilah, id FROM items WHERE type = 'radical' AND (slug = '393' OR id = '393') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1878_menderita, id FROM items WHERE type = 'radical' AND (slug = '393' OR id = '393') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1878_menderita, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1879_persik, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1879_persik, id FROM items WHERE type = 'radical' AND (slug = '363' OR id = '363') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1881_misteri, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1881_misteri, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1881_misteri, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1882_samurai, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1882_samurai, id FROM items WHERE type = 'radical' AND (slug = '192' OR id = '192') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1884_memarahi, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1884_memarahi, id FROM items WHERE type = 'radical' AND (slug = '4' OR id = '4') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1885_rekreasi, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1885_rekreasi, id FROM items WHERE type = 'radical' AND (slug = '348' OR id = '348') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1886_sendok, id FROM items WHERE type = 'radical' AND (slug = '129' OR id = '129') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1887_merah_terang, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1887_merah_terang, id FROM items WHERE type = 'radical' AND (slug = '134' OR id = '134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1888_bukit, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1888_bukit, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1889_pir, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1889_pir, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1889_pir, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1892_berteriak, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1892_berteriak, id FROM items WHERE type = 'radical' AND (slug = '289' OR id = '289') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1893_penangkapan_ikan, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1893_penangkapan_ikan, id FROM items WHERE type = 'radical' AND (slug = '236' OR id = '236') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1894_rambut, id FROM items WHERE type = 'radical' AND (slug = '138' OR id = '138') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1894_rambut, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1894_rambut, id FROM items WHERE type = 'radical' AND (slug = '301' OR id = '301') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1895_badai, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1895_badai, r_416_angin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1896_topi_kerucut, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1896_topi_kerucut, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1899_putri, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1899_putri, id FROM items WHERE type = 'radical' AND (slug = '323' OR id = '323') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1901_biji_bijian, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1901_biji_bijian, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1902_meriam, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1902_meriam, id FROM items WHERE type = 'radical' AND (slug = '395' OR id = '395') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1903_guruh, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1903_guruh, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1904_tumbuh, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1904_tumbuh, id FROM items WHERE type = 'radical' AND (slug = '333' OR id = '333') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1905_menara, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1905_menara, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1905_menara, id FROM items WHERE type = 'radical' AND (slug = '216' OR id = '216') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2466_rubah, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2466_rubah, id FROM items WHERE type = 'radical' AND (slug = '384' OR id = '384') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8882_dorong_buka, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8882_dorong_buka, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8882_dorong_buka, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8883_mendekat, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8883_mendekat, id FROM items WHERE type = 'radical' AND (slug = '273' OR id = '273') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8883_mendekat, id FROM items WHERE type = 'radical' AND (slug = '33' OR id = '33') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9312_dahan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9312_dahan, id FROM items WHERE type = 'radical' AND (slug = '81' OR id = '81') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9449_pergi_ke_hulu, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9449_pergi_ke_hulu, id FROM items WHERE type = 'radical' AND (slug = '315' OR id = '315') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9449_pergi_ke_hulu, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2998_bantuan, id FROM items WHERE type = 'kanji' AND (slug = '680' OR id = '680') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2998_bantuan, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4898_penciptaan_asli, id FROM items WHERE type = 'kanji' AND (slug = '1312' OR id = '1312') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4898_penciptaan_asli, id FROM items WHERE type = 'kanji' AND (slug = '1284' OR id = '1284') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5279_jalan_raya, id FROM items WHERE type = 'kanji' AND (slug = '1400' OR id = '1400') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5279_jalan_raya, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6634_jaringan_lalu_lintas, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6634_jaringan_lalu_lintas, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6634_jaringan_lalu_lintas, k_1832_bersih);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6635_jaringan_komunikasi, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6635_jaringan_komunikasi, id FROM items WHERE type = 'kanji' AND (slug = '940' OR id = '940') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6635_jaringan_komunikasi, k_1832_bersih);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6731_untuk_menenggelamkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1865' OR id = '1865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6752_tali_ponsel, id FROM items WHERE type = 'kanji' AND (slug = '1756' OR id = '1756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6752_tali_ponsel, id FROM items WHERE type = 'kanji' AND (slug = '1463' OR id = '1463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6753_untuk_menaklukkan, id FROM items WHERE type = 'kanji' AND (slug = '1804' OR id = '1804') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6753_untuk_menaklukkan, id FROM items WHERE type = 'kanji' AND (slug = '716' OR id = '716') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6754_filsuf, id FROM items WHERE type = 'kanji' AND (slug = '1807' OR id = '1807') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6754_filsuf, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6754_filsuf, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6755_gaun_berkabung, id FROM items WHERE type = 'kanji' AND (slug = '1808' OR id = '1808') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6755_gaun_berkabung, id FROM items WHERE type = 'kanji' AND (slug = '716' OR id = '716') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6756_seorang_penantang, id FROM items WHERE type = 'kanji' AND (slug = '1813' OR id = '1813') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6756_seorang_penantang, id FROM items WHERE type = 'kanji' AND (slug = '803' OR id = '803') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6756_seorang_penantang, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6757_goreng, id FROM items WHERE type = 'kanji' AND (slug = '1815' OR id = '1815') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6758_genggaman_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '1816' OR id = '1816') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6759_untuk_mengguncang, id FROM items WHERE type = 'kanji' AND (slug = '1817' OR id = '1817') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6760_untuk_mengguncang, id FROM items WHERE type = 'kanji' AND (slug = '1817' OR id = '1817') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6761_terguncang, id FROM items WHERE type = 'kanji' AND (slug = '1817' OR id = '1817') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6762_menginap_semalam, id FROM items WHERE type = 'kanji' AND (slug = '1824' OR id = '1824') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6764_perosotan_taman_bermain, id FROM items WHERE type = 'kanji' AND (slug = '1825' OR id = '1825') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6764_perosotan_taman_bermain, id FROM items WHERE type = 'kanji' AND (slug = '520' OR id = '520') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6766_untuk_membakar, id FROM items WHERE type = 'kanji' AND (slug = '1827' OR id = '1827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6767_untuk_dialihkan, id FROM items WHERE type = 'kanji' AND (slug = '1829' OR id = '1829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6768_membingungkan, id FROM items WHERE type = 'kanji' AND (slug = '1829' OR id = '1829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6770_lautan_badai, id FROM items WHERE type = 'kanji' AND (slug = '1835' OR id = '1835') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6770_lautan_badai, id FROM items WHERE type = 'kanji' AND (slug = '793' OR id = '793') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6771_sarung_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6771_sarung_tangan, id FROM items WHERE type = 'kanji' AND (slug = '1836' OR id = '1836') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6772_naga, k_1873_naga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6773_angin_topan, k_1873_naga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6773_angin_topan, id FROM items WHERE type = 'kanji' AND (slug = '1273' OR id = '1273') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6774_dinosaurus, id FROM items WHERE type = 'kanji' AND (slug = '1406' OR id = '1406') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6774_dinosaurus, k_1873_naga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6775_pertanda, k_1874_tepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6775_pertanda, id FROM items WHERE type = 'kanji' AND (slug = '740' OR id = '740') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6776_tidak_berhubungan, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6776_tidak_berhubungan, k_1874_tepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6777_lamaran_pernikahan, k_1874_tepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6777_lamaran_pernikahan, id FROM items WHERE type = 'kanji' AND (slug = '736' OR id = '736') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6778_sayap_kiri, id FROM items WHERE type = 'kanji' AND (slug = '486' OR id = '486') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6778_sayap_kiri, k_1875_sayap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6779_sayap_kanan, id FROM items WHERE type = 'kanji' AND (slug = '484' OR id = '484') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6779_sayap_kanan, k_1875_sayap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6780_sayap, k_1875_sayap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6781_pertanda_baik, k_1876_semoga_beruntung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6782_tidak_menyenangkan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6782_tidak_menyenangkan, k_1876_semoga_beruntung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6783_untuk_bertahan, k_1878_menderita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6784_ninja, k_1878_menderita);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6784_ninja, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6785_bilah, k_1877_bilah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6786_alat_bermata, k_1877_bilah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6786_alat_bermata, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6787_tepi_pisau, k_1877_bilah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6787_tepi_pisau, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6788_persik, k_1879_persik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6789_warna_persik, k_1879_persik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6789_warna_persik, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6795_misteri, k_1881_misteri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6796_teka_teki, k_1881_misteri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6796_teka_teki, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6797_samurai, k_1882_samurai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6801_untuk_memarahi, k_1884_memarahi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6802_kesenangan, k_1885_rekreasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6802_kesenangan, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6803_sendok, k_1886_sendok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6804_merah_terang, k_1887_merah_terang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6805_segel_merah, k_1887_merah_terang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6805_segel_merah, id FROM items WHERE type = 'kanji' AND (slug = '1283' OR id = '1283') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6806_bukit, k_1888_bukit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6807_bukit_pasir, id FROM items WHERE type = 'kanji' AND (slug = '1533' OR id = '1533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6807_bukit_pasir, k_1888_bukit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6808_pir, k_1889_pir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6812_berteriak, k_1892_berteriak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6813_seruan, id FROM items WHERE type = 'kanji' AND (slug = '1371' OR id = '1371') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6813_seruan, k_1892_berteriak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6814_penangkapan_ikan, k_1893_penangkapan_ikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6815_untuk_memancing, k_1893_penangkapan_ikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6816_rambut, k_1894_rambut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6817_rambut_pirang, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6817_rambut_pirang, k_1894_rambut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6818_rambut_kepala, k_1894_rambut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6818_rambut_kepala, id FROM items WHERE type = 'kanji' AND (slug = '513' OR id = '513') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6819_gaya_rambut, k_1894_rambut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6819_gaya_rambut, id FROM items WHERE type = 'kanji' AND (slug = '1232' OR id = '1232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6820_badai, k_1895_badai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6821_topi_kerucut, k_1896_topi_kerucut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6822_meriam, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6822_meriam, k_1902_meriam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6824_air_mata_emosi, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6824_air_mata_emosi, id FROM items WHERE type = 'kanji' AND (slug = '1897' OR id = '1897') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6826_kaleng_timah, id FROM items WHERE type = 'kanji' AND (slug = '1898' OR id = '1898') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6828_kopi_kalengan, id FROM items WHERE type = 'kanji' AND (slug = '1898' OR id = '1898') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6829_putri, k_1899_putri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6830_putri, k_1899_putri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6830_putri, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6834_bulir, k_1901_biji_bijian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6835_partikel, k_1901_biji_bijian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6835_partikel, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6836_hujan_badai, k_1903_guruh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6836_hujan_badai, id FROM items WHERE type = 'kanji' AND (slug = '603' OR id = '603') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6837_guruh, k_1903_guruh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6838_torpedo, id FROM items WHERE type = 'kanji' AND (slug = '674' OR id = '674') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6838_torpedo, k_1903_guruh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6839_tumbuh, k_1904_tumbuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6840_menara, k_1905_menara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6841_menara_pengawas, id FROM items WHERE type = 'kanji' AND (slug = '1236' OR id = '1236') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6841_menara_pengawas, id FROM items WHERE type = 'kanji' AND (slug = '1128' OR id = '1128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6841_menara_pengawas, k_1905_menara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6842_menara_babel, k_1905_menara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6843_menara_eiffel, k_1905_menara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6935_untuk_mengabaikan, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6935_untuk_mengabaikan, id FROM items WHERE type = 'kanji' AND (slug = '1705' OR id = '1705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6941_gagal_menangkap, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6941_gagal_menangkap, id FROM items WHERE type = 'kanji' AND (slug = '1705' OR id = '1705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6947_tempat_tidur, id FROM items WHERE type = 'kanji' AND (slug = '1160' OR id = '1160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6947_tempat_tidur, id FROM items WHERE type = 'kanji' AND (slug = '1810' OR id = '1810') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6948_padat, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6948_padat, id FROM items WHERE type = 'kanji' AND (slug = '1809' OR id = '1809') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6949_untuk_membuang_sampah, id FROM items WHERE type = 'kanji' AND (slug = '1835' OR id = '1835') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6950_liar, id FROM items WHERE type = 'kanji' AND (slug = '1835' OR id = '1835') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6950_liar, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7512_matahari, k_1872_pengukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7556_pengukuran, k_1872_pengukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7556_pengukuran, id FROM items WHERE type = 'kanji' AND (slug = '949' OR id = '949') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7557_di_tepi_tepi, k_1872_pengukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7557_di_tepi_tepi, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7612_tepian, k_1874_tepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7666_petir, id FROM items WHERE type = 'kanji' AND (slug = '749' OR id = '749') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7666_petir, k_1903_guruh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7780_terpisah, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7780_terpisah, k_1875_sayap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7781_kedua_sayap, id FROM items WHERE type = 'kanji' AND (slug = '609' OR id = '609') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7781_kedua_sayap, k_1875_sayap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8046_di_seluruh_papan, id FROM items WHERE type = 'kanji' AND (slug = '2133' OR id = '2133') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8046_di_seluruh_papan, id FROM items WHERE type = 'kanji' AND (slug = '1372' OR id = '1372') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8658_rubah, k_2466_rubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8894_salam, k_8882_dorong_buka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8894_salam, k_8883_mendekat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8926_menjadi_terpisah, id FROM items WHERE type = 'kanji' AND (slug = '1839' OR id = '1839') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9055_biduk, id FROM items WHERE type = 'kanji' AND (slug = '517' OR id = '517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9055_biduk, k_1886_sendok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9055_biduk, id FROM items WHERE type = 'kanji' AND (slug = '443' OR id = '443') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9055_biduk, id FROM items WHERE type = 'kanji' AND (slug = '638' OR id = '638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9056_wadah_delapan_belas_liter, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9056_wadah_delapan_belas_liter, k_1886_sendok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9056_wadah_delapan_belas_liter, id FROM items WHERE type = 'kanji' AND (slug = '1898' OR id = '1898') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9127_endapan, id FROM items WHERE type = 'kanji' AND (slug = '459' OR id = '459') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9127_endapan, id FROM items WHERE type = 'kanji' AND (slug = '1533' OR id = '1533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9298_penukaran_mata_uang, id FROM items WHERE type = 'kanji' AND (slug = '1600' OR id = '1600') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9298_penukaran_mata_uang, id FROM items WHERE type = 'kanji' AND (slug = '1279' OR id = '1279') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9314_pilihan, id FROM items WHERE type = 'kanji' AND (slug = '886' OR id = '886') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9314_pilihan, id FROM items WHERE type = 'kanji' AND (slug = '1695' OR id = '1695') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9314_pilihan, k_9312_dahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9460_menjadi_retroaktif, k_9449_pergi_ke_hulu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9460_menjadi_retroaktif, id FROM items WHERE type = 'kanji' AND (slug = '1619' OR id = '1619') LIMIT 1;

END $$;
