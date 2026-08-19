-- ====================================================
-- KaniGani — Seed Data Level 54 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ KANJI IDs (Level 54) ============
  k_2225_paus UUID; k_2226_vila UUID; k_2227_penanaman UUID; k_2228_menculik UUID; k_2229_mahkota UUID; k_2230_kemampuan UUID; k_2231_membayar_kembali UUID; k_2232_lambang_keluarga UUID; k_2233_grosir UUID; k_2234_kolom UUID; k_2235_menyimpang UUID; k_2236_lebih_lebih_lagi UUID; k_2237_muncul UUID; k_2238_serius UUID; k_2239_konyol UUID; k_2240_umum UUID; k_2241_praktik UUID; k_2242_hadiah UUID; k_2243_menelantarkan UUID; k_2244_dengan_cepat UUID; k_2245_noh_nyanyian UUID; k_2246_sabit UUID; k_2247_kejam UUID; k_2248_menggambarkan UUID; k_2249_juga UUID; k_2250_bodoh UUID; k_2251_terkejut UUID; k_2252_menyusu UUID; k_2253_bangga UUID; k_2254_tangkai UUID; k_2255_memuji UUID; k_2256_santai UUID; k_2257_aprikot UUID; k_2258_mawar_lebih_gila UUID; k_2259_penanda_buku UUID;
  -- ============ VOCABULARY IDs (Level 54) ============
  v_5040_surga UUID; v_8062_kamar_mandi UUID; v_8063_pemandian_umum UUID; v_8064_etika UUID; v_8065_etis UUID; v_8066_bias UUID; v_8067_mahkota UUID; v_8068_mahkota UUID; v_8069_perbuatan_berjasa UUID; v_8070_penganugerahan_dekorasi UUID; v_8071_dekorasi UUID; v_8072_grosir UUID; v_8073_untuk_menjual_grosir UUID; v_8074_harga_grosir UUID; v_8075_grosir UUID; v_8076_puisi_epik UUID; v_8077_memberikan_akun UUID; v_8078_lirik UUID; v_8079_autobiografi UUID; v_8080_bodoh UUID; v_8081_untuk_tumbuh_pikun UUID; v_8082_paparan UUID; v_8083_presentasi UUID; v_8084_presentasi UUID; v_8085_perawatan UUID; v_8086_meledak UUID; v_8087_panti_asuhan UUID; v_8088_lebih_lebih_lagi UUID; v_8089_imam_besar_buddha UUID; v_8090_tinggi UUID; v_8091_prematur UUID; v_8092_misa UUID; v_8093_urusan_umum UUID; v_8094_untuk_mengendur UUID; v_8095_diam UUID; v_8096_keabadian UUID; v_8097_dengan_santai UUID; v_8098_konyol UUID; v_8099_keluhan_menganggur UUID; v_8100_arogan UUID; v_8101_penculikan UUID; v_8102_aprikot UUID; v_8103_ginkgo UUID; v_8104_penanda_buku UUID; v_8105_penanaman UUID; v_8106_bonsai UUID; v_8107_kolom UUID; v_8108_ruang_kosong UUID; v_8109_pagar_pembatas UUID; v_8110_batas UUID; v_8111_khususnya UUID; v_8112_korban UUID; v_8113_botol_bayi UUID; v_8114_depopulasi UUID; v_8115_sia_sia UUID; v_8116_pengasingan UUID; v_8117_pengungsian UUID; v_8118_pengasingan UUID; v_8119_saling_memahami UUID; v_8120_jarang UUID; v_8121_penyakit UUID; v_8122_lari_cepat UUID; v_8123_badai UUID; v_8124_penyakit UUID; v_8125_ketulian_nada UUID; v_8126_demensia UUID; v_8127_penggerek UUID; v_8128_kekacauan UUID; v_8129_kontrol_diri UUID; v_8130_gaya_berat UUID; v_8131_diam UUID; v_8132_ketentuan_angkatan_darat UUID; v_8133_lambang_keluarga UUID; v_8134_sidik_jari UUID; v_8135_riak UUID; v_8136_puncak UUID; v_8137_untuk_memperluas UUID; v_8138_tangkai UUID; v_8139_prefektur_ibaraki UUID; v_8140_retret_gunung UUID; v_8142_rumah_liburan UUID; v_8143_lagu UUID; v_8144_sajak_anak_anak UUID; v_8145_lagu_rakyat UUID; v_8146_untuk_menempel UUID; v_8147_reparasi UUID; v_8148_praktik UUID; v_8149_anekdot UUID; v_8150_permata UUID; v_8151_deviasi UUID; v_8152_keunggulan UUID; v_8153_untuk_berpaling UUID; v_8154_perlakuan_paling_menguntungkan UUID; v_8155_menukarkan UUID; v_8156_hadiah UUID; v_8157_kasar UUID; v_8158_kerasnya UUID; v_8159_eksploitasi UUID; v_8160_kemiripan UUID; v_8161_kejam UUID; v_8162_panas_yang_intens UUID; v_8163_kekejaman UUID; v_8164_kejam UUID; v_8165_kritik_parah UUID; v_8166_sabit UUID; v_8167_metabolisme UUID; v_8168_ruang_pamer UUID; v_8169_kondisi_penting UUID; v_8170_penemuan UUID; v_8171_sebenarnya UUID; v_8172_luar_biasa UUID; v_8173_menghormati UUID; v_8174_paus UUID; v_8175_penangkapan_ikan_paus UUID; v_8176_daging_paus UUID; v_9106_merah_gila UUID; v_9170_pasar_nishiki UUID; v_9444_untuk_dibangkitkan UUID;

BEGIN

  DELETE FROM items WHERE level = 54;

  -- 1. RADICALS

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鯨', 'paus', 54, 1, 'Jika Anda bepergian ke <radical>ikan</radikal> <radikal>ibu kota</radikal>, Anda akan menemukan pemimpin dari semua ikan, <kanji>paus</kanji> yang perkasa! Oke, jadi paus secara teknis bukanlah ikan, tapi itulah mengapa ia bisa menjadi pemimpin yang baik. Biasanya Anda hanya dapat menemukan paus berkeliaran di dekat ibu kota karena mereka sangat senang menguasai semua ikan lainnya. Bagaimanapun, mereka adalah yang terbesar.', '<kanji>paus</kanji> yang tinggal di ibu kota kebetulan adalah <reading>gay</reading> (げい). Anda hanya mengetahui hal ini karena suaminya juga seorang manusia paus. Sebenarnya, kalau dipikir-pikir, semua paus yang pernah Anda temui adalah gay.')
    RETURNING id INTO k_2225_paus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '荘', 'vila', 54, 2, 'Membersihkan <radical>bunga</radikal> dari <radikal>es</radikal>, <radikal>samurai</radikal> pulang ke <kanji>villa</kanji> miliknya.', 'Begitu samurai memasuki <kanji>villa</kanji>, dia melepaskan <reading>jiwa</reading> (そう) miliknya pergi. Dia sudah berjuang cukup lama dan vila ini selalu menjadi tempat yang dia inginkan.')
    RETURNING id INTO k_2226_vila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '栽', 'penanaman', 54, 3, 'Seorang <radikal>pemabuk</radikal> mengambil <radikal>membajak</radikal> dan langsung mulai <kanji>menanam</kanji>. Ternyata orang mabuk sangat pandai menanam, terutama jika mereka mempunyai mesin untuk membantu mereka menanam.', 'Dia terus <kanji>menanam</kanji> dan menanam... sedikit terlalu banyak. Anda berjalan mendekat dan menyadari bahwa pemabuk ini bukan sembarang pria... dia adalah <read>CY</reading>BORG (さい) ANDA!')
    RETURNING id INTO k_2227_penanaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拐', 'menculik', 54, 4, '<radikal>Mulut</radikal> dengan <radikal>pedang</radikal> mengancam akan memotong <radikal>jari</radikal> Anda karena mereka telah <kanji>menculik</kanji>Anda! Anda tidak dapat melihat apa pun tentangnya, karena semuanya ditutup-tutupi. Yang Anda lihat hanyalah mulut mereka yang marah dan pedang yang mereka letakkan di dekat jari Anda.', 'Anda telah <kanji>diculik</kanji>dan penculik Anda meminta satu hal sebagai imbalan agar Anda kembali dengan selamat: <reading>kay</reading>ak (かい). Kayak itu mahal. Dan jauh lebih mudah bagi pria ini untuk menculik Anda dan meminta keluarga Anda membelikannya dan memberikannya kepada mereka daripada membiarkan mereka bekerja untuk itu.')
    RETURNING id INTO k_2228_menculik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '冠', 'mahkota', 54, 5, '<radical>dahi</radical> Anda adalah <radical>asal</radical> untuk <radical>pengukuran</radical> untuk <kanji>mahkota</kanji> Anda! Jika Anda mengukur di tempat lain di kepala Anda untuk mendapatkan mahkota, itu tidak akan muat.', 'Anda ingin <kanji>mahkota</kanji> Anda sama seperti milik Jenghis <reading>Khan</reading> (かん), yang lebih mirip topi. Namun dia adalah pahlawan Anda, karena dia menguasai sebagian besar orang, jadi Anda ingin pahlawan Anda sesuai dengan ukuran tubuhnya.')
    RETURNING id INTO k_2229_mahkota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '勲', 'kemampuan', 54, 6, 'Anda merasa <radikal>berat</radikal> karena <radikal>kekuatan</radikal> <radikal>mendidih</radikal> di dalam diri Anda. Ini adalah tanda <kanji>kelebihan</kanji> Anda. Individu dengan kebajikan besar cenderung melihat kekuasaan bukan sebagai sebuah berkah, namun sebagai beban berat.', '<kanji>pahala</kanji> Anda berasal dari penguasaan <reading>kun</reading>g fu (くん). Anda hanya menggunakan keterampilan kung fu Anda untuk melakukan tindakan yang bernilai, seperti membela yang lemah dan rentan.')
    RETURNING id INTO k_2230_kemampuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酬', 'membayar-kembali', 54, 7, 'Anda mengambil <radical>alkohol</radical> seseorang dan <radical>menjatuhkan</radical> <radical>menjatuhkan</radical> <radical>menjatuhkan</radical> dan melemparkan semuanya ke dalam <radical>sungai</radical>. Sekarang Anda harus <kanji>membayar</kanji> mereka. Alkohol menghabiskan banyak uang, lho.', 'Untuk <kanji>membalas</kanji> alkohol yang telah Anda buang, Anda menawarkan untuk memberi mereka <reading>sepatu</reading> (しゅう) Anda. Namun mereka tidak menginginkan sepatu Anda, jadi Anda harus membawanya ke toko dan melihat mereka mencoba beberapa sepatu berbeda sehingga Anda dapat membayarnya kembali dengan cara itu.')
    RETURNING id INTO k_2231_membayar_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紋', 'lambang-keluarga', 54, 8, 'Anda menggunakan <radical>benang</radikal> dan <radikal>tulisan</radikal> untuk menjahit <kanji>lambang keluarga</kanji> kami. Anda telah menjahit lambang keluarga Anda sejak Anda masih kecil, Anda bisa melakukannya hari ini dengan mata tertutup.', '<kanji>lambang keluarga</kanji>mu adalah seorang <reading>mon</reading>ster! (もん) Dan tulisannya berbunyi "Monster Keluarga Kami".')
    RETURNING id INTO k_2232_lambang_keluarga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '卸', 'grosir', 54, 9, 'Pada <radical>siang</radikal> Anda <radical>berhenti</radikal> untuk membeli <radikal>prangko</radikal> karena pada saat itulah perangko tersebut hanya dijual dengan harga <kanji>grosir</kanji>. Semua orang begitu sibuk makan, bekerja, dan berada di sekolah, sehingga mereka melewatkan tawaran luar biasa ini, tapi Anda tidak. Setiap hari pada siang hari Anda membeli prangko grosir. Apakah Anda mengirim banyak surat? Tidak, Anda mungkin hanya mengumpulkannya. Tapi harganya murah, jadi siapa peduli!', 'Oh, satu hal lagi. Pergi pada siang hari saja tidak cukup, Anda harus menyebutkan kata sandi untuk mendapatkannya dengan harga <kanji>grosir</kanji> juga. Kata sandinya adalah "<reading>Oh Roshi</reading>" (おろし). Oke, jadi mungkin itu hanya nama orang di sana, tapi itu selalu berhasil ketika saya ingin mendapatkan prangko grosir jadi sebaiknya Anda melakukannya juga!')
    RETURNING id INTO k_2233_grosir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '欄', 'kolom', 54, 10, 'Anda melihat sekelompok <radical>pohon</radical> berjejer di luar <radical>gerbang</radical> di <radical>timur</radical> dan menyadari bahwa mereka tampak seperti <kanji>kolom</kanji> yang sempurna. Sepertinya sebuah bangunan atau kastil seharusnya terletak di atasnya.', 'Dari balik pohon, ledakan <kanji>kolom</kanji> pegulat profesional <reading>Ran</reading>dy (らん) Savage! "Oooh aku sedang membicarakan kolom yang aku suka mmmm oh ya. Pria Macho menyukai kolom MMm OOHH YEAAH~!"')
    RETURNING id INTO k_2234_kolom;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '逸', 'menyimpang', 54, 11, 'Naiklah <radical>skuter</radical> untuk <radical>maaf</radical> karena tidak menjawab pertanyaan dan Anda telah berhasil <kanji>menyimpang</kanji> dari rencana orang usil itu! Anda juga mampu <kanji>menghindari</kanji> mereka dengan cukup baik.', 'Anda <kanji>menyimpang</kanji> sedikit terlalu baik dari rencana, dan saat Anda berlari cepat, apa yang telah Anda lakukan <reading>memakan</reading> (いつ) jauh dari Anda. Anda merasa bersalah karena menghindari mereka...')
    RETURNING id INTO k_2235_menyimpang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尚', 'lebih-lebih-lagi', 54, 12, '<radical>triceratops</radical> dengan <radical>kumis</radical> akan terus berbicara selamanya. Setiap kali Anda mengira dia sudah selesai, dia berkata, "<kanji>Selanjutnya</kanji>..." dan melanjutkan. Sesuatu tentang kumis pada dinosaurus membuatnya agak brengsek, tapi dia sangat <kanji>dihormati</kanji> sehingga tidak ada yang pernah mengganggunya.', 'Kenapa kamu tidak memotong kumis triceratops ini sementara dia berkata <kanji>selanjutnya</kanji>? Karena dia adalah hewan peliharaan <read>Shou</reading>gun (しょう). Jika Anda menyela dia, Anda mungkin akan dihukum mati atau semacamnya. Biarkan saja dia terus berjalan dan berharap dia kehabisan bahan pembicaraan lebih lanjut.')
    RETURNING id INTO k_2236_lebih_lebih_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '顕', 'muncul', 54, 13, 'Saat <radical>matahari</radikal> muncul, <radikal>paku</radikal> <radikal>geoduck</radikal> <kanji>muncul</kanji>.', 'Anda melihat paku-paku ini <kanji>muncul</kanji> dan tiba-tiba <reading>Ken</reading> (けん)samurai itu juga muncul di sebelah Anda. "AKU MELAKUKANNYA!" dia berteriak, "Saya telah belajar bagaimana muncul begitu saja!"')
    RETURNING id INTO k_2237_muncul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '粛', 'serius', 54, 14, '<radical>Wolverine</radical> menaruh <radical>tongkat</radical> di antara <radical>kaki</radical> dan langsung ke <radical>nasi</radical>, sambil memasang ekspresi <kanji>khusyuk</kanji> di wajahnya. Dia mungkin teringat ayahnya yang meninggal karena kakinya tersangkut nasi. Biarkan saja makhluk malang yang khusyuk itu.', 'Saat pertama kali kamu melihat betapa <kanji>khusyuk</kanji> Wolverine setelah ayahnya meninggal, itu benar-benar <reading>mengguncang</reading> (しゅく) kamu. Sekarang Anda terbiasa melihatnya dingin dan jauh secara emosional. Mungkin ini saatnya menghilangkan kesungguhan itu dari dirinya.')
    RETURNING id INTO k_2238_serius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '愚', 'konyol', 54, 15, 'Jika kamu memberikan <radical>Splinter</radical> <radical>hati</radical> kamu, kamu akan merasa <kanji>bodoh</kanji> setelahnya. Hatinya milik seni ninjutsu!', 'Splinter memberitahukan secara langsung betapa <kanji>bodoh</kanji> Anda dan Anda merasakan hati Anda berubah menjadi <read>goo</reading> (ぐ). Sekarang Anda bahkan tidak bisa memberikannya kepada orang lain. Tidak ada yang mau goo.')
    RETURNING id INTO k_2239_konyol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '庶', 'umum', 54, 16, 'Siapa yang masuk ke <radical>yurt</radical> mereka untuk <radical>merebus</radical> sesuatu? Orang-orang <kanji>umum</kanji>! <kanji>Berbagai macam</kanji> orang melakukannya, itu sangat umum. Anda tidak merebus sesuatu di luar, bukan?', 'Di sini, <kanji>umum</kanji> semua orang melakukan hal ini, jadi biarkan saya <reading>menunjukkan</reading> (しょ) caranya. Pertama kamu masuk ke yurtmu, dan… Hei, perhatikan dan lihat apa yang aku tunjukkan padamu!')
    RETURNING id INTO k_2240_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '践', 'praktik', 54, 17, 'Setiap kali Anda menginjakkan <radical>kaki</radikal> di <radikal>bar</radikal>, selalu ada sesuatu yang baru untuk <kanji>dipraktikkan</kanji>. Jika Anda biasanya minum banyak, Anda mungkin ingin berlatih secukupnya misalnya. Atau mungkin Anda hanya ingin memoles keterampilan sosial Anda. Apapun itu, banyak kesempatan untuk berlatih.', 'Jenis <kanji>latihan</kanji> ini sangat sulit bagi Anda karena Anda adalah seorang <reading>cen</reading>taur (せん). Anda hanya memiliki kuku untuk kaki, dan keseimbangan di atas palang akan menjadi rintangan besar. Tapi gurumu berjanji jika kamu cukup berlatih, kamu bisa berhasil, dan inilah kamu! Dengan kaki berkuku Anda di atas mistar!')
    RETURNING id INTO k_2241_praktik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '呈', 'hadiah', 54, 18, '<radical>Mulut</radikal> <radikal>Raja</radikal>, yang hanya bermulut besar, memiliki satu keahlian, yaitu <kanji>menyajikan</kanji>. Mulut besar itu selalu menyuguhkan sesuatu.', '"Saya akan <kanji>mempersembahkan</kanji> kepada Anda presentasi tentang mulut, tetapi saya membutuhkan energi. Tolong isi tubuh mulut raksasa saya dengan tots <read>ta</reading>ter (てい) yang lezat.')
    RETURNING id INTO k_2242_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '疎', 'menelantarkan', 54, 19, 'Sebuah <radical>rak mantel</radical> akan berubah menjadi <radical>bundel</radical> tongkat jika Anda <kanji>mengabaikan</kanji> itu. Jika Anda mengabaikan rak mantel, beban dari mantel akan menarik seluruh lengannya, menjadikannya sebagai tongkat <kanji>jarang</kanji>.', 'Anda pergi ke rak mantel yang <kanji>terabaikan</kanji> dan mencoba memperbaikinya dengan membersihkannya menggunakan <read>so</reading>ap (そ). Tapi seberapa banyak pun kamu menggosoknya, tidak akan bersih, lengan tidak akan kembali lagi.')
    RETURNING id INTO k_2243_menelantarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '疾', 'dengan-cepat', 54, 20, '<radikal>penyakit</radikal>yang menyerang Anda seperti <radikal>panah</radikal> akan melakukan pekerjaan kotornya <kanji>dengan cepat</kanji>. Itu bukan hal yang baik, kamu akan cepat sakit.', 'Penyakit yang <kanji>cepat</kanji> ini membuat kepala Anda berdebar-debar seperti ada <reading>shih tzu</reading> (しつ) yang menyalak dan menggonggong tanpa henti. Dan itu membuatmu tidak melakukan banyak hal.')
    RETURNING id INTO k_2244_dengan_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '謡', 'noh-nyanyian', 54, 21, 'Apa pun yang Anda <radikal>ucapkan</radikal> melalui <radikal>satelit</radikal> berubah menjadi <kanji>nyanyian Noh</kanji>. Semuanya ditarik keluar dan terdistorsi saat melewati satelit, yang setidaknya membuatnya terdengar seperti nyanyian Noh.', 'Saat Anda sedang mengucapkan <kanji>Noh</kanji> palsu, Anda harus berhenti sejenak setiap beberapa menit untuk menggigit <read>yo</reading>gurt (よう). Yogurt baik untuk tenggorokan! Setidaknya menurut Anda memang demikian. Ini tidak seperti Anda benar-benar bernyanyi, satelitlah yang melakukan semua pekerjaan sebenarnya.')
    RETURNING id INTO k_2245_noh_nyanyian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鎌', 'sabit', 54, 22, 'Anda menutupi <radical>Mona Lisa</radical> dengan <radical>emas</radical> dan menempelkannya pada tongkat untuk mengubahnya menjadi <kanji>sabit</kanji>! Ini sangat besar dan besar, tetapi ketika Anda mengayunkannya dengan cukup cepat, sabit baru Anda akan memotong banyak gandum! Hanya saja, jangan beri tahu siapa pun apa yang Anda lakukan dengan lukisan Mona Lisa yang terkenal dan Anda pasti bisa lolos begitu saja!', 'Sekarang setelah Anda mengubah Mona Lisa menjadi <kanji>sabit</kanji>, Anda harus mengubah sedikit deskripsi di bawah namanya di Louvre. Anda menggambar <reading>koma</reading> (かま) raksasa di sebelah "Mona Lisa" dan menulis "THE SICKLE." Kemudian Anda mendorongnya kembali ke dinding sebaik mungkin.')
    RETURNING id INTO k_2246_sabit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酷', 'kejam', 54, 23, 'Jika Anda <radical>mengumumkan</radical> bahwa <radical>alkohol</radical> adalah ilegal, Anda hanya bersikap <kanji>kejam</kanji>. Jujur saja, mengatakan tidak seorang pun boleh minum minuman beralkohol sama sekali adalah <kanji>tidak adil</kanji>. Mereka mencobanya pada tahun 1920-an dan tidak berhasil juga, jadi hentikan! Biarkan orang minum apa yang ingin mereka minum!', 'Setelah pengumuman <kanji>kejam</kanji> ini dibuat, semua orang akan beralih ke hal terbaik berikutnya setelah alkohol. <read>Coke</reading> (こく)! Ini bukan pengganti, tetapi jika undang-undang yang tidak adil ini tidak berubah, maka penjualan minuman bersoda akan meroket.')
    RETURNING id INTO k_2247_kejam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '叙', 'menggambarkan', 54, 24, '<radical>kelebihan</radikal> <radikal>tinja</radikal>, silakan <kanji>jelaskan</kanji>.', 'Anda <kanji>menjelaskan</kanji> fitur bangku kepada <reading>Jo</reading>-Anne (じょ).')
    RETURNING id INTO k_2248_menggambarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '且', 'juga', 54, 25, 'Jika Anda ingin mengenakan <radical>topi</radical> Anda <kanji>juga</kanji> harus mengenakan setelan jas. Anda tidak bisa hanya memakai topi, itu tidak terlihat bagus. Saat Anda memikirkan topi top, pikirkan apa yang juga Anda perlukan dengannya.', 'Anda mempunyai topi dan semua pakaian yang menyertainya tetapi Anda <kanji>juga</kanji> memerlukan <read>ca</reading>r (か) yang bagus juga! Anda tidak bisa begitu saja berdandan dan kemudian tidak punya cara untuk pergi ke mana pun untuk memamerkannya.')
    RETURNING id INTO k_2249_juga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '痴', 'bodoh', 54, 26, 'Anda <radical>sakit</radical> karena Anda memasukkan <radical>panah</radical> ke dalam <radical>mulut</radical> Anda dan mencoba memakannya. Sejujurnya, itu sungguh <kanji>bodoh</kanji>. Anda harus bodoh untuk mencoba memakan anak panah. Anda layak sakit.', 'Satu-satunya cara untuk menyembuhkan kasus <kanji>bodoh</kanji> yang serius ini adalah dengan membuatmu makan <reading>chee</reading>se (ち). Hal ini tidak hanya akan menyembuhkan sakit perut Anda dengan meredam semua anak panah yang Anda masukkan ke dalam mulut bodoh Anda, tetapi juga akan mengirimkan gelombang keju yang cerdas ke otak Anda dan menyembuhkan Anda dari hal bodoh itu secara keseluruhan.')
    RETURNING id INTO k_2250_bodoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '呆', 'terkejut', 54, 27, 'Anda melihat <radical>mulut</radical> keluar dari atas <radical>pohon</radical> sehingga Anda mengalami <kanji>shock</kanji>. Otak Anda tidak dapat memahami apa yang ada di depan Anda.', '<kanji>kejutan</kanji> yang Anda derita mengakibatkan Anda harus tetap <reading>ho</reading>saya (ほう) mulai sekarang. Anda tidak bisa bepergian, menjelajah, atau bahkan membeli bahan makanan. Mulai sekarang kau harus pulang ke rumah, kawan.')
    RETURNING id INTO k_2251_terkejut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '哺', 'menyusu', 54, 28, 'Setelah <radical>pernikahan</radical> Anda, Anda mempunyai seorang bayi dan ia menggunakan <radical>mulutnya</radical> untuk <kanji>menyusui</kanji> dari payudara pasca-pernikahan Anda. Ya, bayi <kanji>menyusui</kanji> dari payudara. Lupakan saja, anak-anak.', 'Bayi ingin <kanji>menyusui</kanji> sepanjang hari dan satu-satunya hal yang dapat Anda lakukan pada saat yang sama adalah <reading>mencangkul</reading> (ほ) kebun Anda. Anda menggendong bayi di payudara Anda dengan satu tangan dan mencangkul barisan kecil dengan tangan lainnya. Ini sebenarnya adalah latihan yang bagus dan cara yang menyenangkan untuk menghabiskan waktu!')
    RETURNING id INTO k_2252_menyusu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '傲', 'bangga', 54, 29, '<radical>Pemimpin</radical> Anda berhasil menemukan <radical>arah</radical> rumah yang tepat menggunakan tanda di <radical>tanah</radical> di tengah <radical>musim dingin</radical>. Ini membuatmu sangat <kanji>bangga</kanji>! Anda bangga karena pemimpin yang banyak akal ini adalah pemimpin ANDA yang banyak akal.', 'Pemimpin yang sangat <kanji>banggakan</kanji> ini tidak lain adalah Kakek <reading>ごう</reading>いち. Dia menjadi agak lambat selama bertahun-tahun, dan Anda benar-benar tidak mengira dia akan berhasil kembali. Tapi, demi permen karet, dia berhasil.')
    RETURNING id INTO k_2253_bangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '茎', 'tangkai', 54, 30, 'Saat kamu meninggalkan <radical>bunga</radical> di <radical>batu nisan</radical> mereka akan terlihat bagus pada awalnya, tapi setelah beberapa hari atau cuaca buruk, tidak ada yang tersisa kecuali <kanji>batang</kanji>. Itu sebabnya bunga di batu nisan harus selalu diganti. Jika tidak, Anda akan terlihat hanya menyisakan batangnya saja, dan itu sangat tidak sopan.', 'Anda punya ide yang bisa membuat batu nisan ini terlihat lebih baik daripada hanya menyisakan <kanji>batang</kanji> di atasnya. Anda membawa <reading>kue</reading> (くき)! Kue tidak hancur tertiup angin, dan semua orang menyukai kue, hidup atau mati. Anda mengganti batangnya dengan kue dan semuanya terlihat jauh lebih bagus.')
    RETURNING id INTO k_2254_tangkai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '阿', 'memuji', 54, 31, 'Anda melihat <radical>bangunan</radical> dengan <radical>cincin bibir</radical> dan itu sangat lucu sehingga Anda harus <kanji>menyanjung</kanji> itu. "Cincin bibir itu terlihat bagus untukmu, Buildingさん," katamu.', 'Bangunannya <kanji>lebih datar</kanji> dan Anda mendengarnya berteriak, "<reading>Ah</reading> (あ)!" dan memerah. Seluruh bangunan berubah menjadi merah.')
    RETURNING id INTO k_2255_memuji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '悠', 'santai', 54, 32, '<radical>pemimpin</radikal> yang biasanya memukul Anda dengan <radikal>tongkat</radikal> di <radikal>musim dingin</radikal> menganggapnya dalam <radikal>hatinya</radikal> untuk memberi Anda waktu <kanji>waktu luang</kanji>.', 'Anda baru saja akan memulai waktu <kanji>waktu senggang</kanji> Anda ketika sekelompok <membaca>Anda</reading>(ゆう) muncul dengan tongkat mereka sendiri. Anda melihat ke belakang untuk mencari pemimpinnya, dan dia mengenakan jubah mandi, kacamata hitam, dan sedang minum coklat panas. Tunggu... ini waktu senggang untuk... DIA?! OH TIDAK!')
    RETURNING id INTO k_2256_santai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '杏', 'aprikot', 54, 33, 'Apa yang membuat <radical>pohon</radical> yang ingin Anda masukkan ke dalam <radical>mulut</radical> Anda? Sebuah <kanji>aprikot</kanji>! Aprikot juga seukuran mulut terbuka, sehingga terlihat seperti mulut yang menggantung di bawah pohon. Anda bisa menggigitnya langsung dari pohonnya dengan mulut Anda sendiri!', 'Setelah Anda memasukkan <kanji>aprikot</kanji> ke dalam mulut Anda, Anda menyadari bahwa rasanya sangat familier, tetapi tidak enak. Rasanya seperti <reading>an</reading>chovies (あん) dari bau <reading>zoo</reading> (ず). Bagaimana hal itu bisa terjadi? Anda tidak menyukai aprikot lagi.')
    RETURNING id INTO k_2257_aprikot;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '茜', 'mawar-lebih-gila', 54, 34, 'Jenis <radical>bunga</radical> apa yang tumbuh di <radical>barat</radical>? <kanji>Bunga mawar yang lebih gila</kanji>, tentu saja. Tidak tahu apa itu? Tidak apa-apa. Ketahuilah bahwa akarnya digunakan untuk membuat pewarna <kanji>merah tua</kanji>. Merah seperti mawar dalam namanya, tapi lebih gila, lebih liar, lebih dalam… Dan mereka tumbuh di barat sehingga mereka bisa menikmati warna merah tua matahari terbenam.', 'Saat Anda menghancurkan akar <kanji>mawar yang lebih gila</kanji> dan menodai jari Anda dengan <kanji>merah tua</kanji>, seorang gadis kecil mendatangi Anda dan menunjuk. Dia berkata, "<reading>赤ね</reading> (あかね)?" (Itu merah, kan?) Kamu melihat ke bawah ke arah akar mawar yang lebih gila dan jari-jarimu, lalu mengangguk. Dia benar, warnanya merah. Merah tua.')
    RETURNING id INTO k_2258_mawar_lebih_gila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '栞', 'penanda-buku', 54, 35, '<radical>Keringkan</radical> <radical>kering</radical> <radical>pohon</radical> untuk membuat <kanji>bookmark</kanji>. Semakin sering Anda mengeringkan pohon, semakin rata pohon tersebut, menjadikannya cara sempurna untuk menandai tempat Anda di buku tanpa perlu melipat halaman atau menulis di atasnya.', 'Lagi pula, apa yang Anda tandai? Lihat ke bawah dan lihat diri Anda meletakkan salah satu <kanji>bookmark</kanji> pohon di halaman buku catatan Anda yang bertuliskan "<reading>Dia berutang</reading>pada saya <reading>ree</reading>ds (しおり)." Oh ya, Anda harus membuat penanda buku ini sejak awal karena teman Anda mengambil penanda buluh Anda dan tidak mengembalikannya.')
    RETURNING id INTO k_2259_penanda_buku;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2225_paus, 'Paus', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2225_paus, 'げい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2225_paus, 'くじら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2226_vila, 'Vila', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2226_vila, 'そう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2226_vila, 'しょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2226_vila, 'ちゃん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2226_vila, 'あごそ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2226_vila, 'ほうき', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2227_penanaman, 'Penanaman', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2227_penanaman, 'さい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2228_menculik, 'Menculik', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2228_menculik, 'かい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2229_mahkota, 'Mahkota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2229_mahkota, 'Topi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2229_mahkota, 'かん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2229_mahkota, 'かんむり', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2230_kemampuan, 'Kemampuan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2230_kemampuan, 'くん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2230_kemampuan, 'いさお', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2231_membayar_kembali, 'Membayar kembali', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2231_membayar_kembali, 'しゅう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2231_membayar_kembali, 'しゅ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2231_membayar_kembali, 'とう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2231_membayar_kembali, 'むく', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2232_lambang_keluarga, 'Lambang Keluarga', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2232_lambang_keluarga, 'もん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2233_grosir, 'Grosir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2233_grosir, 'おろし', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2233_grosir, 'おろ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2233_grosir, 'しゃ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2234_kolom, 'Kolom', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2234_kolom, 'Ruang angkasa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2234_kolom, 'らん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2234_kolom, 'てすり', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2235_menyimpang, 'Menyimpang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2235_menyimpang, 'Menghindari', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2235_menyimpang, 'いつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2235_menyimpang, 'そ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2235_menyimpang, 'はぐ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2236_lebih_lebih_lagi, 'Lebih-lebih lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2236_lebih_lebih_lagi, 'Menghargai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2236_lebih_lebih_lagi, 'しょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2236_lebih_lebih_lagi, 'なお', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2237_muncul, 'Muncul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2237_muncul, 'Ada', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2237_muncul, 'けん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2237_muncul, 'あきらか', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2237_muncul, 'あらわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2238_serius, 'Serius', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2238_serius, 'しゅく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2238_serius, 'すく', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2238_serius, 'つつし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2239_konyol, 'Konyol', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2239_konyol, 'ぐ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2239_konyol, 'おろ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2240_umum, 'Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2240_umum, 'Segala Macam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2240_umum, 'しょ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2241_praktik, 'Praktik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2241_praktik, 'menginjak-injak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2241_praktik, 'せん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2241_praktik, 'ふ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2242_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2242_hadiah, 'Menampilkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2242_hadiah, 'てい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2243_menelantarkan, 'Menelantarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2243_menelantarkan, 'Jarang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2243_menelantarkan, 'そ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2243_menelantarkan, 'しょ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2243_menelantarkan, 'うと', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2243_menelantarkan, 'まば', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2244_dengan_cepat, 'Dengan cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2244_dengan_cepat, 'Cepat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2244_dengan_cepat, 'しつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2244_dengan_cepat, 'はや', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2245_noh_nyanyian, 'Noh Nyanyian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2245_noh_nyanyian, 'Nyanyian Noh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2245_noh_nyanyian, 'よう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2245_noh_nyanyian, 'うた', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2246_sabit, 'Sabit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2246_sabit, 'Sabit besar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2246_sabit, 'かま', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2246_sabit, 'けん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2246_sabit, 'れん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2247_kejam, 'Kejam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2247_kejam, 'Tidak adil', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2247_kejam, 'こく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2247_kejam, 'ひど', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2247_kejam, 'むご', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2248_menggambarkan, 'Menggambarkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2248_menggambarkan, 'じょ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2248_menggambarkan, 'つい', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2248_menggambarkan, 'ついで', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2249_juga, 'Juga', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2249_juga, 'か', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2249_juga, 'しょ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2249_juga, 'しょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2249_juga, 'そ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2250_bodoh, 'Bodoh', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2250_bodoh, 'ち', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2250_bodoh, 'おろか', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2250_bodoh, 'し', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2251_terkejut, 'Terkejut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2251_terkejut, 'ほう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2251_terkejut, 'あき', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2251_terkejut, 'おろか', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2251_terkejut, 'ほけ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2251_terkejut, 'ぼ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2252_menyusu, 'Menyusu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2252_menyusu, 'Perawat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2252_menyusu, 'ほ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2252_menyusu, 'ほぐく', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2252_menyusu, 'ふく', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2253_bangga, 'Bangga', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2253_bangga, 'ごう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2253_bangga, 'あなど', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2253_bangga, 'おご', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2254_tangkai, 'Tangkai', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2254_tangkai, 'くき', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2254_tangkai, 'きょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2254_tangkai, 'けい', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2255_memuji, 'Memuji', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2255_memuji, 'あ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2255_memuji, 'お', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2255_memuji, 'おもね', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2255_memuji, 'くま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2256_santai, 'Santai', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2256_santai, 'ゆう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2257_aprikot, 'Aprikot', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2257_aprikot, 'あんず', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2257_aprikot, 'あん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2257_aprikot, 'きょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2257_aprikot, 'こう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2258_mawar_lebih_gila, 'Mawar Lebih Gila', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2258_mawar_lebih_gila, 'Merah Tua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2258_mawar_lebih_gila, 'あかね', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2258_mawar_lebih_gila, 'せん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2259_penanda_buku, 'Penanda buku', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2259_penanda_buku, 'しおり', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2259_penanda_buku, 'かん', false, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '極楽', 'surga', 54, 36, 'Tempat ini memiliki <kanji>ekstrim</kanji> <kanji>kenyamanan</kanji>. Ini adalah <vocabulary>surga</vocabulary>.

極楽 adalah kependekan dari 極楽浄土 (Tanah Suci dalam Buddhisme Mahayana). Meskipun mungkin terdengar agak kuno, Anda masih dapat menggunakannya untuk menggambarkan sesuatu yang surgawi. Misalnya, jika Anda berendam di pemandian air panas yang nyaman dan menenangkan, Anda bisa berkata, "Ahhh…極楽!"', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. 極 memiliki dua bacaan on''yomi. Jadi, inilah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Di <vocabulary>surga</vocabulary>, Anda bertemu <reading>Goku</reading> (ごく) dari Dragon Ball Z. Dia menyeringai dan memberi tahu Anda bahwa dia sedang beristirahat dari pertempuran ekstrem dan menikmati kenyamanan ekstrem surga surgawi ini.')
    RETURNING id INTO v_5040_surga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '風呂場', 'kamar-mandi', 54, 37, 'Ingat bagaimana Anda mengetahui bahwa 風呂 berarti "mandi?" <kanji>tempat</kanji> dimana anda mandi adalah <vocabulary>kamar mandi</vocabulary>!

Perhatikan bahwa kata ini berarti "kamar mandi" dalam arti harfiah — ini bukan kata untuk "toilet".', 'Kata ini terdiri dari kata jukugo 風呂 dan bacaan kun''yomi untuk 場. Anda tidak mempelajari pembacaan kun''yomi untuk 場 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Anda masuk ke <vocabulary>kamar mandi</vocabulary> dan mendengar paduan suara <reading>baa</reading> (ば) yang penuh kemarahan. Anda malu saat mengetahui bahwa Anda secara tidak sengaja memasuki sisi pemandian umum yang khusus diperuntukkan bagi domba. Anda bergegas keluar, membungkuk dan meminta maaf.')
    RETURNING id INTO v_8062_kamar_mandi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '風呂屋', 'pemandian-umum', 54, 38, 'Ingat bagaimana Anda mengetahui bahwa 風呂 berarti "mandi?" <kanji>toko</kanji> yang Anda bayar untuk mandi adalah <vocabulary>pemandian umum</vocabulary>!', 'Kata ini terdiri dari kata jukugo 風呂 dan bacaan kun''yomi untuk 屋. Anda telah mempelajari semua bacaan ini, jadi Anda seharusnya sudah bisa membaca ini juga!')
    RETURNING id INTO v_8063_pemandian_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '倫理学', 'etika', 54, 39, 'Anda sudah mengetahui bahwa 倫理 berarti "etika" jadi ketika Anda menambahkan <kanji>belajar</kanji> itu berarti <vocabulary>etika</vocabulary> yang Anda pelajari di sekolah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8064_etika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '倫理的', 'etis', 54, 40, 'Hal-hal yang <kanji>etika</kanji> <kanji>al</kanji> adalah <vocabulary>etika</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8065_etis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偏り', 'bias', 54, 41, 'Ingat kata kerja 偏る, yang artinya "bias"? Ini adalah versi kata bendanya, jadi artinya <vocabulary>bias</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Kamu sudah mempelajari bacaan ini ketika kamu mempelajari 偏る, jadi kamu harus bisa membaca yang ini juga!')
    RETURNING id INTO v_8066_bias;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '冠', 'mahkota', 54, 42, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka harus menggunakan bacaan kun''yomi, dan itu adalah bacaan yang paling umum. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda:

Dalam benak Anda, satu-satunya orang yang bisa memakai <vocabulary>mahkota</vocabulary> adalah Bill Murray. Dia bertanya padamu, "Bolehkah aku memakai mahkota itu?" dan Anda menjawab "Ya, Anda <reading>bisa, Murray</reading> (かんむり)". Murray maju ke depan dan memakai mahkota. Dia adalah bangsawan film.')
    RETURNING id INTO v_8067_mahkota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '王冠', 'mahkota', 54, 43, '<kanji>topi</kanji> seorang <kanji>raja</kanji> adalah <vocabulary>mahkota</vocabulary> miliknya. Hanya dia yang bisa memakai topi itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8068_mahkota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '殊勲', 'perbuatan-berjasa', 54, 44, 'Anda melakukan hal-hal <kanji>khususnya</kanji> yang pantas mendapatkan <kanji>pahala</kanji> dan itu disebut <vocabulary>perbuatan baik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8069_perbuatan_berjasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '叙勲', 'penganugerahan-dekorasi', 54, 45, '<kanji>Jelaskan</kanji> <kanji>kelebihan</kanji> seseorang pada upacara <vocabulary>penganugerahan dekorasi</vocabulary>. Saat itulah medali diberikan kepada orang-orang yang pantas mendapatkannya. Biasanya di militer atau semacamnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8070_penganugerahan_dekorasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '勲章', 'dekorasi', 54, 46, 'Untuk menunjukkan bahwa kamu memiliki <kanji>pahala</kanji> untuk <kanji>bab</kanji> dalam hidupmu, kamu akan diberikan <vocabulary>dekorasi</vocabulary> atau <vocabulary>medali</vocabulary>. Apalagi jika Anda seorang tentara atau atlet.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8071_dekorasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '卸', 'grosir', 54, 47, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8072_grosir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '卸す', 'untuk-menjual-grosir', 54, 48, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>grosir</kanji>, jadi versi kata kerjanya adalah <vocabulary>menjual grosir</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!')
    RETURNING id INTO v_8073_untuk_menjual_grosir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '卸値', 'harga-grosir', 54, 49, 'Saat Anda menjual sesuatu dengan <kanji>grosir</kanji> <kanji>nilai</kanji>, itu dijual dengan <vocabulary>harga grosir</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8074_harga_grosir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '卸売', 'grosir', 54, 50, '<kanji>Jual</kanji> sesuatu dengan harga <kanji>grosir</kanji> dan itu... ya, itu <vocabulary>grosir</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri. Terkadang dieja 卸売り juga.')
    RETURNING id INTO v_8075_grosir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '叙事詩', 'puisi-epik', 54, 51, 'Jika Anda <kanji>mendeskripsikan</kanji> sekumpulan <kanji>kejadian</kanji> dalam sebuah <kanji>puisi</kanji>, kemungkinan besar itu adalah <vocabulary>puisi epik</vocabulary>. Ini untuk puisi-puisi yang sangat panjang dan sangat deskriptif yang mungkin terpaksa Anda baca di sekolah, seperti Epik Gilgamesh (ギルガメシュ叙事詩).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8076_puisi_epik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '叙述', 'memberikan-akun', 54, 52, 'Saat Anda <kanji>mendeskripsikan</kanji> suatu peristiwa dengan <kanji>menyebutkan</kanji> segala sesuatu yang terjadi, Anda harus <vocabulary>memberikan penjelasan</vocabulary> tentang peristiwa tersebut.

叙述 mengacu pada <vocabulary>menceritakan</vocabulary> atau <vocabulary>menggambarkan</vocabulary> peristiwa dalam urutan yang teratur. Biasanya menyarankan teknik penulisan khusus yang terkait dengan penceritaan dan narasi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8077_memberikan_akun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '叙情', 'lirik', 54, 53, 'Cara terbaik untuk <kanji>menggambarkan</kanji> <kanji>perasaan</kanji> Anda adalah dengan <vocabulary>lirik</vocabulary>. Membuat <vocabulary>deskripsi perasaan</vocabulary> yang jelas memang sulit, namun hal ini akan membuat Anda merasa lebih baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8078_lirik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '自叙伝', 'autobiografi', 54, 54, '<kanji>Beri tahu</kanji> kepada semua orang bagaimana Anda <kanji>mendeskripsikan</kanji><kanji>diri</kanji> Anda dalam <vocabulary>otobiografi</vocabulary> Anda. Itulah satu-satunya cara mereka dapat memahami diri Anda yang sebenarnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8079_autobiografi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '阿呆', 'bodoh', 54, 55, '<kanji>Kejutkan</kanji> seseorang dengan <kanji>menyanjung</kanji>mereka dan mereka akan terlihat seperti <vocabulary>bodoh</vocabulary>. Menerima pujian selalu membuat orang menjadi <vocabulary>idiot</vocabulary> yang konyol. Tidak apa-apa, mereka hanya malu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membacanya sendiri, namun perlu diingat bahwa bacaan ini sering kali dipersingkat menjadi あほ akhir-akhir ini.')
    RETURNING id INTO v_8080_bodoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '呆ける', 'untuk-tumbuh-pikun', 54, 56, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kejutan</kanji>. Apa yang terjadi jika Anda terlalu tua hingga otak Anda mengalami syok? Anda mulai <vocabulary>menjadi pikun</vocabulary>. Ini menyedihkan, tapi banyak orang tidak tahan menjadi tua dan mereka menjadi seperti ini.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Saat Anda mulai <vocabulary>menjadi pikun</vocabulary> Anda akan mendapat teman baru. Itu <reading>Bo</reading>bo (ぼ) si badut! Tidak ada orang lain yang bisa melihatnya, tapi tidak apa-apa! Dia akan menjadi sahabatmu. Dan dia tidak akan pergi sampai Anda akhirnya menyerah.')
    RETURNING id INTO v_8081_untuk_tumbuh_pikun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '露呈', 'paparan', 54, 57, '<kanji>Menampilkan</kanji> dan <kanji>mengekspos</kanji> kesalahan untuk mendapatkan <vocabulary>expocabulary> yang tepat. Dunia membutuhkan <vocabulary>disclosure</vocabulary> dan Anda juga!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8082_paparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '進呈', 'presentasi', 54, 58, '<kanji>Presentasikan</kanji> temuan Anda <kanji>sebelumnya</kanji> selama <vocabulary>presentasi</vocabulary> awal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8083_presentasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '贈呈', 'presentasi', 54, 59, '<kanji>Persembahkan</kanji> <kanji>hadiah</kanji> Anda di <vocabulary>presentasi</vocabulary>. Hadiah untuk semua orang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8084_presentasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '哺育', 'perawatan', 54, 60, '<kanji>Rawat</kanji> dan <kanji>besarkan</kanji> bayi Anda dengan <vocabulary>menyusui</vocabulary>. Susu membantu bayi tumbuh besar dan kuat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8085_perawatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '噴き出す', 'meledak', 54, 61, '噴 berarti <kanji>letusan</kanji>, dan 出す bisa berarti "melepaskan", bukan? Jika Anda mengeluarkan letusan, kemungkinan besar akan menyebabkan sesuatu <vocabulary>meledak</vocabulary>. Anda tahu, seperti lahar yang keluar dari gunung berapi. Atau mungkin <vocabulary>menyemburkan</vocabulary>, seperti geyser yang keluar dari dalam bumi. 

Ini mungkin mengingatkan Anda pada kata lain yang telah Anda pelajari: 吹き出す. Mereka sangat mirip dan sering kali dapat dipertukarkan, namun secara umum 噴き出す digunakan untuk hal-hal yang menyemburkan kekuatan dan intensitas yang lebih besar. Sejalan dengan itu, kata ini juga dapat digunakan secara kiasan, seperti ketika emosi terpendam meledak secara tiba-tiba.', 'Ingat bagaimana Anda mempelajari kata 吹き出す? Ya, ini dibaca dengan cara yang persis sama dan artinya hampir sama persis. Jika Anda mengetahui satu bacaan, Anda mengetahui keduanya!')
    RETURNING id INTO v_8086_meledak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '孤児院', 'panti-asuhan', 54, 62, 'Anda sudah mengetahui bahwa kata 孤児 berarti "yatim piatu", jadi ketika Anda memasukkan sekelompok anak yatim piatu ke dalam <kanji>institusi</kanji> maka itu disebut <vocabulary>panti asuhan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8087_panti_asuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尚', 'lebih-lebih-lagi', 54, 63, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Kapan waktu terbaik untuk menggunakan kata <vocabulary>selanjutnya</vocabulary>? Benar <reading>sekarang</reading> (なお)! Itu karena Anda baru saja selesai mengatakan apa yang awalnya ingin Anda katakan, dan sekarang, Anda menyadari masih ada lagi yang ingin Anda katakan.')
    RETURNING id INTO v_8088_lebih_lebih_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '和尚', 'imam-besar-buddha', 54, 64, 'Siapa yang bekerja untuk <kanji>perdamaian</kanji> dan sangat dihormati <kanji></kanji>? <vocabulary>Pendeta besar Buddha</vocabulary>. Mereka bekerja lebih keras dari siapa pun untuk mencapai perdamaian dunia sehingga mereka sangat dihormati.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 和, jadi inilah mnemonik untuk membantu Anda:

Satu-satunya hal yang pernah Anda dengar dari <vocabulary>Imam Besar Buddha</vocabulary> adalah "<reading>O</reading>ooooo" (お). Itu pasti semacam senandung atau nyanyian Budha. Setiap kali Anda memikirkannya, Anda mendengar suara itu di kepala Anda.')
    RETURNING id INTO v_8089_imam_besar_buddha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '高尚', 'tinggi', 54, 65, 'Anda hanya menjunjung <kanji>tinggi</kanji> <kanji>harga</kanji> jika mereka benar-benar <vocabulary>tinggi</vocabulary>, <vocabulary>mulia</vocabulary> orang. Kata-kata tersebut harus <vocabulary>refined</vocabulary> agar dapat dijunjung tinggi oleh Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8090_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '時期尚早', 'prematur', 54, 66, 'Kamu sudah mengetahui bahwa kata 時期 berarti "periode waktu", jadi ketika kamu menambahkan <kanji>selanjutnya</kanji> dan <kanji>awal</kanji> ke dalamnya, itu berarti sesuatu telah terjadi sebelumnya. Artinya <vocabulary>prematur</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8091_prematur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '庶民', 'misa', 54, 67, '<kanji>Umat</kanji> <kanji>Masyarakat</kanji> membentuk <vocabulary>massa</vocabulary>. Mereka adalah <vocabulary>rakyat biasa</vocabulary> dan tidak ada masyarakat yang lengkap tanpa mereka.

Tergantung pada konteksnya, 庶民 dapat memiliki konotasi yang sedikit negatif, terutama jika 庶民 yang dimaksud dikontraskan dengan kelompok yang lebih elit atau canggih.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8092_misa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '庶務', 'urusan-umum', 54, 68, '<kanji>Umum</kanji> <kanji>tugas</kanji> adalah bagian dari <vocabulary>urusan umum</vocabulary> masyarakat. Itu sebabnya hal-hal tersebut bersifat umum, dan semua orang terlibat di dalamnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8093_urusan_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '怠ける', 'untuk-mengendur', 54, 69, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>malas</kanji> atau <kanji>mengabaikan</kanji>, dan kata kerja ini pada dasarnya memiliki arti yang sama — <vocabulary>mengendur</vocabulary>, <vocabulary>menjadi malas</vocabulary>, atau <vocabulary>mengabaikan</vocabulary>.

怠ける adalah kata yang digunakan untuk mendeskripsikan seseorang yang membolos waktu belajar, menghindari tugas rumah, atau tidak berusaha terlalu keras dalam melakukan sesuatu — padahal seharusnya begitu. Ini mungkin terdengar kritis, tetapi tidak seberat kata-kata seperti 怠慢 atau 怠惰, dan kadang-kadang bahkan bisa digunakan dengan cara yang ringan atau bercanda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda adalah tipe orang yang <reading>nama</reading>ste" (なま) malas mengerjakan semua tugas Anda, lalu bermain-main dengan mengatakan "<reading>nama</reading>ste" (なま) dan bertindak seolah-olah Anda adalah seorang guru bijaksana yang terlalu tercerahkan untuk melakukan tugas-tugas duniawi seperti pekerjaan rumah. Kenyataannya, Anda bahkan tidak tahu apa arti "namaste" — Anda hanya menggunakannya sebagai alasan <vocabulary>untuk bermalas-malasan</vocabulary>.')
    RETURNING id INTO v_8094_untuk_mengendur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悠々', 'diam', 54, 70, '<kanji>Kenyamanan</kanji> dengan lebih banyak <kanji>kenyamanan</kanji> yang ditambahkan? Itu adalah kehidupan yang benar-benar <vocabulary>tenang</vocabulary> dan <vocabulary>santai</vocabulary> yang Anda jalani!

Perhatikan bahwa Anda perlu menambahkan と di akhir kata ini untuk menjadikannya kata keterangan, dan たる untuk menjadikannya kata sifat!', 'Pembacaannya hanyalah pembacaan on''yomi (yang dipelajari dengan kanji) dua kali berturut-turut.')
    RETURNING id INTO v_8095_diam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悠久', 'keabadian', 54, 71, '<kanji>Kenyamanan</kanji> yang berlangsung <kanji>lama</kanji> akan berlangsung <vocabulary>selamanya</vocabulary>. Itu tidak pernah berakhir, dan mengapa harus demikian? Kamu sangat santai, kamu tidak mungkin bisa berhenti.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8096_keabadian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悠長', 'dengan-santai', 54, 72, '<kanji>Panjang</kanji> <kanji>waktu luang</kanji> membuat semua yang Anda lakukan menjadi <vocabulary>santai</vocabulary> dan <vocabulary>lambat</vocabulary>. Anda dapat melakukan tugas dengan kecepatan <vocabulary>disengaja</vocabulary> karena tidak ada yang membuat Anda terburu-buru. Dan Anda sudah seperti ini begitu lama, mengapa harus mencoba?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8097_dengan_santai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '愚', 'konyol', 54, 73, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Karena kata ini merupakan kata benda dan kata sifat-na, kata ini juga bisa berarti <vocabulary>kebodohan</vocabulary> dan <vocabulary>kebodohan</vocabulary>.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8098_konyol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '愚痴', 'keluhan-menganggur', 54, 74, 'Orang yang <kanji>bodoh</kanji> dan <kanji>bodoh</kanji> akan melontarkan banyak <vocabulary>keluhan yang tidak berguna</vocabulary>. Anda benar-benar tidak suka berada di dekat mereka karena mereka <vocabulary>menggerutu</vocabulary> tentang betapa tidak ada yang cukup baik sepanjang waktu. Tapi mereka benar-benar tidak mengerti.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8099_keluhan_menganggur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '傲慢', 'arogan', 54, 75, 'Anda <kanji>bangga</kanji> dan penuh dengan <kanji>terlalu percaya diri</kanji>, jadi sudah sewajarnya Anda akan menjadi orang yang <vocabulary>sombong</vocabulary> dan <vocabulary>angkuh</vocabulary>. <vocabulary>Kebanggaan</vocabulary> selalu datang sebelum kejatuhan, jadi… jagalah dirimu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8100_arogan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '誘拐', 'penculikan', 54, 76, '<kanji>Undang</kanji> seseorang untuk <kanji>menculik</kanji> Anda dan <vocabulary>penculikan</vocabulary> akan terjadi di tangan Anda. Itu tidak terlalu cerdas. Anda harus berusaha lebih berhati-hati.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8101_penculikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '杏', 'aprikot', 54, 77, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda mempelajari bacaan ini dengan kanji! Hore!')
    RETURNING id INTO v_8102_aprikot;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '銀杏', 'ginkgo', 54, 78, 'Jika bentuknya seperti <kanji>perak</kanji> <kanji>aprikot</kanji>, mungkin itu adalah <vocabulary>ginkgo</vocabulary>. Pernah melihat <vocabulary>kacang ginkgo</vocabulary> dari <vocabulary>pohon ginkgo</vocabulary>? Mereka benar-benar terlihat seperti aprikot perak kecil. (Silakan cari di Google jika Anda tidak percaya.)', 'Kata ini merupakan pengecualian. Anda mungkin mengira bahasa Jepangnya sama dengan bahasa Inggrisnya, tapi ternyata tidak. Dan itu mempunyai dua bacaan dan makna yang berbeda. Astaga, maaf. Berikut ini mnemonik untuk membantu Anda:

Sebelum Anda membaca ini TOLONG INGAT ini BUKAN kata jukugo. Ini aneh. Anda ingin mengetik ぎんこう tapi itu salah. Hentikan itu sekarang.

Saat kamu memikirkan arti <vocabulary>pohon ginkgo</vocabulary>, pikirkan tentang ini: Ginkgo adalah tempat bersarang favorit bagi <reading>ea</reading>gles (い), tapi Nyonya <reading>Chou</reading> (ちょう) yang jahat suka memakan elang DAN pohon ginkgo utuh. Dia lebih suka makan elang SAAT MEREKA DI POHON GINKGO DAN MASIH HIDUP. Jadi いちょう. Elang dan Nyonya Chou. Dan pohon ginkgo. Sungguh mengerikan untuk dipikirkan. Sama seperti bacaan ini tidak menjadi jukugo.

Bacaan lainnya adalah untuk arti <vocabulary>kacang ginkgo</vocabulary>. Kacangnya rasanya seperti <reading>銀</reading> (ぎん) <reading>naan</reading> (なん). Mmm, lembut dan metalik — tapi tetap bukan kata jukugo. Betapa menyedihkan bagi Anda dan semua pelajar bahasa Jepang di mana pun.')
    RETURNING id INTO v_8103_ginkgo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '栞', 'penanda-buku', 54, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8104_penanda_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '栽培', 'penanaman', 54, 80, '<kanji>Menanam</kanji> benih di lahan untuk <kanji>mengolah</kanji> tanaman disebut <vocabulary>budidaya</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8105_penanaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '盆栽', 'bonsai', 54, 81, '<kanji>Baki</kanji> <kanji>menanam</kanji> adalah <vocabulary>bonsai</vocabulary>. Masuk akal karena itulah yang Anda lakukan: menanam pohon di nampan!

盆栽 mengacu pada seni membudidayakan pohon mini ini dalam nampan (atau pot) kecil, serta pohon bonsai itu sendiri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8106_bonsai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '欄', 'kolom', 54, 82, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8107_kolom;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '空欄', 'ruang-kosong', 54, 83, '<kanji>ruang</kanji> yang kosong seperti <kanji>langit</kanji> adalah <vocabulary>ruang kosong</vocabulary>. Anda mungkin harus mengisinya dengan sesuatu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8108_ruang_kosong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '欄干', 'pagar-pembatas', 54, 84, '<kanji>kolom</kanji> yang terbuat dari kayu <kanji>kering</kanji> diubah menjadi <vocabulary>pagar pembatas</vocabulary> untuk membantu orang naik dan turun tangga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8109_pagar_pembatas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '欄外', 'batas', 54, 85, 'Jika Anda menulis <kanji>di luar</kanji> <kanji>kolom</kanji> di kertas buku catatan Anda, Anda sebenarnya menulis di <vocabulary>margin</vocabulary>. Ini tempat yang bagus untuk menaruh coretan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8110_batas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '殊に', 'khususnya', 54, 86, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Ini adalah kanji yang diikuti oleh partikel に, sehingga menggunakan pembacaan kun''yomi seperti yang dilakukan kanji jika hanya menggunakan kanji saja. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Apa yang Anda kenakan saat cuaca <vocabulary>terutama</vocabulary> dingin? <reading>mantel</reading> favoritmu (こと). Anda hanya memakainya saat cuaca <vocabulary>luar biasa</vocabulary> dingin, tidak pernah di waktu lain.')
    RETURNING id INTO v_8111_khususnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '犠牲者', 'korban', 54, 87, 'Anda telah mengetahui bahwa 犠牲 berarti "korban", jadi ketika Anda menambahkan <kanji>seseorang</kanji> ke dalamnya, itu tetap berarti <vocabulary>korban</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8112_korban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '哺乳瓶', 'botol-bayi', 54, 88, '<kanji>susu</kanji> <kanji>botol</kanji> yang digunakan bayi untuk <kanji>menyusui</kanji> disebut <vocabulary>botol bayi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8113_botol_bayi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '過疎', 'depopulasi', 54, 89, 'Jika <kanji>pengabaian</kanji> suatu area <kanji>melampaui</kanji>yang diharapkan, maka akibatnya adalah <vocabulary>depopulasi</vocabulary>. Tidak seorang pun ingin tinggal di kota yang terbengkalai, apalagi kota yang kondisinya lebih buruk dari apa yang diberitahukan kepada mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8114_depopulasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '空疎', 'sia-sia', 54, 90, '<kanji>Langit</kanji> memiliki kesan <kanji>pengabaian</kanji> dan membuatnya tampak seolah-olah semua yang Anda lakukan <vocabulary>sia-sia</vocabulary>. Kenapa repot-repot? Langit bahkan tidak percaya padamu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8115_sia_sia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疎遠', 'pengasingan', 54, 91, 'Jika <kanji>pengabaian</kanji> Anda terhadap anggota keluarga terlalu <kanji>jauh</kanji>, Anda akan berakhir dengan <vocabulary>keterasingan</vocabulary> dalam hubungan Anda dengan mereka. Dan mereka mungkin akan <vocabulary>mengabaikan</vocabulary> Anda sama seperti Anda mengabaikan mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8116_pengasingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疎開', 'pengungsian', 54, 92, 'Anda sedang mencari tempat <kanji>terlantar</kanji> yang dapat Anda <kanji>buka</kanji> dan gunakan untuk <vocabulary>evakuasi</vocabulary>.

Meskipun 避難 adalah istilah yang lebih umum untuk mengungsi atau mencari perlindungan selama keadaan darurat, 疎開 menjelaskan evakuasi secara khusus dari kota atau daerah ramai ke tempat yang lebih aman saat terjadi bencana seperti gempa bumi, tsunami, dll.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8117_pengungsian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疎外', 'pengasingan', 54, 93, '<kanji>Mengabaikan</kanji> seseorang sedemikian rupa sehingga Anda mengeluarkan diri Anda dari lingkaran dalamnya dan hidup <kanji>di luar</kanji> kehidupannya dan ini disebut <vocabulary>keterasingan</vocabulary>. Anda mungkin tidak akan pernah melihatnya lagi. Tapi tidak apa-apa bagimu, hubunganmu terlalu aneh untuk diperbaiki sekarang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8118_pengasingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疎通', 'saling-memahami', 54, 94, 'Jika Anda tidak pernah <kanji>lalai</kanji> untuk <kanji>menyampaikan</kanji> pikiran Anda kepada orang lain, Anda berdua akan dapat memiliki <vocabulary>saling pengertian</vocabulary> yang istimewa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8119_saling_memahami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疎ら', 'jarang', 54, 95, 'Kanji dan kata-katanya hampir persis sama. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Ketika keadaan <vocabulary>jarang</vocabulary>, Anda tidak akan memiliki makanan, mainan, atau internet. Sulit untuk semua orang. Jadi <reading>ma</reading>ma ​​Anda akan <reading>baa</reading> (まば) untuk menghibur Anda dan membuat Anda berhenti memikirkan betapa kurusnya Anda dan dia. Mama baaing membuatmu tenang dan bahagia. Terima kasih mama.')
    RETURNING id INTO v_8120_jarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疾患', 'penyakit', 54, 96, 'Sesuatu yang <kanji>diderita</kanji> dengan <kanji>cepat</kanji>adalah <vocabulary>penyakit</vocabulary>. Anda harus segera pergi ke dokter untuk mengobati penyakit yang terjadi dengan cepat ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8121_penyakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疾走', 'lari-cepat', 54, 97, '<kanji>cepat</kanji> <kanji>lari</kanji> disebut <vocabulary>sprint</vocabulary> atau <vocabulary>dash</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8122_lari_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疾風', 'badai', 54, 98, '<kanji>cepat</kanji> <kanji>angin</kanji> adalah <vocabulary>angin kencang</vocabulary> atau <vocabulary>angin kencang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8123_badai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疾病', 'penyakit', 54, 99, '<kanji>cepat</kanji> <kanji>sakit</kanji> adalah <vocabulary>penyakit</vocabulary> atau <vocabulary>penyakit</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan bacaan on''yomi, tetapi Anda belum melihat bacaan へい untuk 病. Faktanya, ini adalah satu-satunya kata yang muncul di dalamnya, dan yang lebih penting lagi, ada rendaku. Jadi, inilah mnemonik untuk membantu Anda:

Jika Anda tidak segera mengobati <vocabulary>penyakit</vocabulary>, Anda mungkin <reading>membayar</reading> (ぺい) dengan nyawa Anda. Dan jika Anda tidak meninggal, Anda masih harus membayar banyak biaya dokter dan rumah sakit. sial.')
    RETURNING id INTO v_8124_penyakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '音痴', 'ketulian-nada', 54, 100, 'Jika Anda <kanji>bodoh</kanji> dalam hal <kanji>suara</kanji>, maka Anda <vocabulary>tuli nada</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8125_ketulian_nada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '痴呆', 'demensia', 54, 101, 'Jika Anda terlihat <kanji>bodoh</kanji> dan <kanji>terkejut</kanji> sepanjang waktu, Anda mungkin menderita <vocabulary>demensia</vocabulary>. Hal ini membuat segalanya terasa asing dan membingungkan, sehingga Anda pasti akan terlihat konyol dan bingung sepanjang waktu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8126_demensia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '痴漢', 'penggerek', 54, 102, '<kanji>bodoh</kanji> <kanji>pria</kanji> adalah <vocabulary>groper</vocabulary>. Maksudku, tidak selalu. Namun mungkin wajar jika menyebut seorang penggerutu atau <vocabulary>penganiaya</vocabulary> sebagai orang yang bodoh.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8127_penggerek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '無秩序', 'kekacauan', 54, 103, 'Ingat bagaimana Anda mengetahui bahwa 秩序 berarti "keteraturan?" Nah, jika Anda tidak memiliki <kanji>tidak ada</kanji> yang seperti itu, maka itu akan terjerumus ke dalam <vocabulary>kekacauan</vocabulary> dan <vocabulary>chaos</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8128_kekacauan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '自粛', 'kontrol-diri', 54, 104, 'Jika Anda <kanji>khusyuk</kanji> oleh<kanji>diri</kanji> Anda, Anda memiliki banyak <vocabulary>pengendalian diri</vocabulary>. Anda tidak memerlukan orang lain untuk menyuruh Anda menjadi seperti itu, Anda memiliki <vocabulary>disiplin diri</vocabulary> Anda sendiri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8129_kontrol_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '厳粛', 'gaya-berat', 54, 105, 'Jika semua orang bertindak <kanji>khusyuk</kanji> dan <kanji>ketat</kanji> maka Anda mungkin harus memberikan perhatian khusus pada <vocabulary>gravity</vocabulary> situasi yang Anda hadapi. Jangan mulai bermain terompet ketika Anda seharusnya menundukkan kepala!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8130_gaya_berat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '静粛', 'diam', 54, 106, 'Orang yang <kanji>khusyuk</kanji> <kanji>tenang</kanji> akan selalu <vocabulary>diam</vocabulary>. Mereka tidak pernah berbicara.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8131_diam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '兵糧', 'ketentuan-angkatan-darat', 54, 107, '<kanji>Perbekalan</kanji> yang hanya diperuntukkan bagi <kanji>prajurit</kanji> adalah <vocabulary>perbekalan tentara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajari cara membaca kanji kedua, namun belum mempelajari kanji pertama. Berikut ini mnemonik untuk membantu Anda:

Tentara mengatakan mereka akan memberimu beberapa <kosakata>perbekalan tentara</vocabulary>. Itu bagus! Anda pergi ke situs drop di mana ketentuannya berada, dan Anda melihat ketentuannya. "<reading>Hei!</reading> Ini <reading>roe</reading>!" (ひょうろう) kamu mengucapkannya dengan lantang. Anda cukup senang karena perbekalan Anda terdiri dari berton-ton telur!')
    RETURNING id INTO v_8132_ketentuan_angkatan_darat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紋', 'lambang-keluarga', 54, 108, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8133_lambang_keluarga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '指紋', 'sidik-jari', 54, 109, '<kanji>lambang keluarga</kanji> di <kanji>jari</kanji> Anda? Itu hanya <vocabulary>sidik jari</vocabulary> Anda. Ini dapat digunakan untuk mengidentifikasi Anda, jadi hampir sama dengan lambang keluarga pribadi Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8134_sidik_jari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '波紋', 'riak', 54, 110, 'Lemparkan <kanji>lambang keluarga</kanji> Anda ke dalam <kanji>gelombang</kanji> dan Anda akan menghasilkan banyak <vocabulary>riak</vocabulary>. Mungkin juga akan ada <vocabulary>dampak</vocabulary> pada keluarga Anda karena hal-hal itu penting dan Anda tidak boleh membuangnya ke laut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8135_riak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紋章', 'puncak', 54, 111, 'Lihatlah <kanji>bab</kanji> tentang <kanji>lambang keluarga</kanji> di buku itu dan Anda akan melihat setiap <vocabulary>lambang</vocabulary> di daerah Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8136_puncak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '膨らむ', 'untuk-memperluas', 54, 112, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membengkak</kanji>, jadi versi kata kerjanya adalah <vocabulary>to swell</vocabulary> atau <vocabulary>to expand</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika seseorang mendatangi Anda dan berkata, "Hei, sepertinya Anda sudah benar-benar mulai berkembang di tengah-tengah." Silakan ucapkan kalimat lama, "<reading>F@#$</reading> (ふく) kamu!" Jika seseorang bersikap kasar kepada Anda, segera ungkapkan kembali. F@#$ orang itu!')
    RETURNING id INTO v_8137_untuk_memperluas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '茎', 'tangkai', 54, 113, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8138_tangkai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '茨城県', 'prefektur-ibaraki', 54, 114, '<kanji>Prefektur</kanji> yang terkenal dengan <kanji>duri</kanji> <kanji>kastil</kanji> kunonya adalah <vocabulary>Prefektur Ibaraki</vocabulary>. Saya mungkin mengada-ada atau tidak. Jangan cek faktanya, lihat saja kastil berduri keren di Ibaraki yang saya pikirkan. Ooooh, betapa kerennya!', 'Kata ini terdiri dari bacaan kun''yomi untuk 茨, pengecualian untuk 城, dan on''yomi untuk 県. Fiuh! Anda belum mempelajari bacaan aneh ini untuk 城, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Prefektur Ibaraki</vocabulary> terkenal dengan pembuatan <reading>kunci</reading> (き)! Ini adalah ekspor terbesar mereka. Kunci untuk mengetahui bacaan ini ada pada kunci yang mereka buat! Atau, sekadar mengetahui bahwa bahasa Inggris dan Jepang sama saja.')
    RETURNING id INTO v_8139_prefektur_ibaraki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '山荘', 'retret-gunung', 54, 115, '<kanji>gunung</kanji> <kanji>villa</kanji> adalah <vocabulary>retret gunung</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8140_retret_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '別荘', 'rumah-liburan', 54, 116, 'Sebuah <kanji>villa</kanji> <kanji>terpisah</kanji> dari rumah normal Anda adalah <vocabulary>rumah liburan</vocabulary>. Anda pergi ke sana ketika Anda muak dengan rumah normal Anda untuk bersantai.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8142_rumah_liburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '歌謡', 'lagu', 54, 117, '<kanji>Noh melantunkan</kanji> sebuah <kanji>lagu</kanji> menjadikannya <vocabulary>lagu</vocabulary> yang lebih panjang dan membingungkan. Tapi tetap saja itu sebuah lagu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8143_lagu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '童謡', 'sajak-anak-anak', 54, 118, '<kanji>Nyanyian Noh</kanji> untuk <kanji>remaja</kanji> adalah <vocabulary>pantun anak-anak</vocabulary>. Anak-anak tidak akan memahami hal-hal yang berat, jadi Anda harus membodohi mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8144_sajak_anak_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '民謡', 'lagu-rakyat', 54, 119, '<kanji>masyarakat</kanji> <kanji>Nyanyian Noh</kanji> adalah <vocabulary>lagu daerah</vocabulary>. Itu adalah lagu untuk masyarakat umum.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8145_lagu_rakyat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貫き通す', 'untuk-menempel', 54, 120, 'Ini adalah gabungan kata 貫く (melewati) dan 通す (membiarkan lewat). Secara harfiah, ini dapat menggambarkan penindikan sepenuhnya pada suatu objek. Namun, 貫き通す biasanya digunakan secara kiasan yang berarti <vocabulary>menempel pada</vocabulary> sesuatu sampai akhir. Sama seperti menusuk suatu benda dari satu sisi ke sisi lain, 貫き通す menyiratkan bahwa Anda terus maju apa pun yang terjadi, tetap berpegang pada keyakinan atau tekad Anda sepenuhnya.', 'Ini adalah kombinasi dari dua kata yang sudah kamu ketahui, jadi kamu juga harusnya sudah mengetahuinya!')
    RETURNING id INTO v_8146_untuk_menempel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '賠償金', 'reparasi', 54, 121, '<kanji>Emas</kanji> yang Anda dapatkan sebagai <kanji>kompensasi</kanji> untuk <kanji>reparasi</kanji> disebut <vocabulary>reparasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8147_reparasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '実践', 'praktik', 54, 122, 'Sejujurnya <kanji>kebenaran</kanji>, <kanji>latihan</kanji> adalah <vocabulary>latihan</vocabulary>. Anda tidak bisa hanya menggantinya dengan sesuatu yang lain. Anda hanya akan membuat kemajuan dengan latihan nyata! Kamu bisa!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8148_praktik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '逸話', 'anekdot', 54, 123, 'Bagaimana cara <kanji>menyimpang</kanji> dari <kanji>pembicaraan</kanji> normal? Dengan banyak <vocabulary>anekdot</vocabulary>. Jika Anda menambahkan cukup banyak kata-kata tersebut ke dalam percakapan Anda, tidak seorang pun akan dapat melacak apa yang Anda bicarakan sejak awal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8149_anekdot;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '逸品', 'permata', 54, 124, '<kanji>Menyimpang</kanji> dari <kanji>produk</kanji> normal sehari-hari dan membeli banyak <vocabulary>permata</vocabulary> dan <vocabulary>harta</vocabulary>! Apalagi jika Anda membeli oleh-oleh. Hal-hal normal tidak akan cukup.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8150_permata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '逸脱', 'deviasi', 54, 125, 'Jika kamu <kanji>menyimpang</kanji> dari rencana dan <kanji>melarikan diri</kanji> darinya, itu adalah <vocabulary>penyimpangan</vocabulary> yang serius dan dapat merusak segalanya! Tetap pada rencana! Berhenti menyimpang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8151_deviasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '秀逸', 'keunggulan', 54, 126, 'Apakah Anda <kanji>unggul</kanji> ketika Anda <kanji>menyimpang</kanji> dari norma? Nah, maka Anda diciptakan untuk <vocabulary>keunggulan</vocabulary>, teman!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8152_keunggulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '逸らす', 'untuk-berpaling', 54, 127, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyimpang</kanji>, jadi versi kata kerjanya adalah <vocabulary>to turn away</vocabulary> atau <vocabulary>to avert</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda ingin <vocabulary>berpaling</vocabulary> dari film ini karena tidak layak untuk ditonton. Maksudku, itu tidak buruk, tapi juga tidak baik. Hanya <membaca>begitu</reading>-begitu (そ). Tapi itu tidak cukup untuk mempertahankan minat Anda.')
    RETURNING id INTO v_8153_untuk_berpaling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '最優遇', 'perlakuan-paling-menguntungkan', 54, 128, '<kanji>paling</kanji> <kanji>unggul</kanji> <kanji>perlakuan</kanji> adalah cara lain untuk mengatakan bahwa ini adalah <vocabulary>perlakuan paling menguntungkan</vocabulary> yang pernah Anda terima. Saat itulah Anda mendapatkan <vocabulary>sambutan terhangat</vocabulary> dari semua orang di sekitar Anda. Sepertinya mereka mengira Anda presidennya atau semacamnya. Apa pun itu, ini cukup bagus!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8154_perlakuan_paling_menguntungkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '応酬', 'menukarkan', 54, 129, '<kanji>Bayar</kanji> apa yang dipinjamkan seseorang kepada Anda sebagai <kanji>balas</kanji> kepada mereka yang sudah meminjamkan uang kepada ANDA, dan Anda berdua akan <vocabulary>menukar</vocabulary>d uang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8155_menukarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '報酬', 'hadiah', 54, 130, '<kanji>Membalas</kanji> orang atas <kanji>berita</kanji> yang mereka sampaikan kepada Anda dengan <vocabulary>menghargai</vocabulary>mereka! Setiap orang berhak mendapatkan <vocabulary>kompensasi</vocabulary> atas waktu yang mereka habiskan untuk menyampaikan informasi kepada Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8156_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酷', 'kasar', 54, 131, 'Sesuatu yang <kanji>kejam</kanji> cenderung <vocabulary>kasar</vocabulary>, <vocabulary>parah</vocabulary>, dan <vocabulary>mengerikan</vocabulary>. Dan tentu saja, masih <vocabulary>kejam</vocabulary> untuk melakukan booting.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8157_kasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '過酷', 'kerasnya', 54, 132, 'Bos Anda <kanji>melampaui</kanji>kekejaman</kanji>normalnya dan menghujani <vocabulary>keparahan</vocabulary> di kepala Anda. Anda memiliki hal lain yang harus dilakukan akhir pekan ini dan sekarang Anda harus menyelesaikannya? <vocabulary>Kejam</vocabulary>...', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8158_kerasnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酷使', 'eksploitasi', 54, 133, 'Jika Anda <kanji>menggunakan</kanji> sesuatu dengan cara yang <kanji>kejam</kanji>, hal itu disebut <vocabulary>eksploitasi</vocabulary>. Anda mungkin akan <vocabulary>menggunakannya secara berlebihan</vocabulary>, jika terus begini. Hentikan itu, kawan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8159_eksploitasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酷似', 'kemiripan', 54, 134, 'Jika kamu <kanji>mirip</kanji> seseorang yang <kanji>kejam</kanji>, kamu <vocabulary>mirip</vocabulary> mereka. Mungkin kamu juga sangat jahat. Saya kira hanya Anda yang bisa mengetahuinya. Tapi kamu memang terlihat seperti pria lain itu...', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 似, jadi inilah mnemonik untuk membantu Anda:

Pria kejam manakah yang <vocabulary>mirip</vocabulary> Anda? <read>Je</reading>sus (じ), tentu saja. Maksudku, kamu mirip sekali dengannya. Lihatlah ke cermin jika kamu tidak percaya padaku. Lihat, itu dia. Tunggu, apa maksudmu dia bukan pria yang kejam? Menurutku, kamulah yang paling kejam saat itu. Menyebalkan menjadi dirimu.')
    RETURNING id INTO v_8160_kemiripan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酷い', 'kejam', 54, 135, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>kejam</kanji>? <vocabulary>Kejam</vocabulary> atau <vocabulary>mengerikan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Bayangkan seorang pria yang <vocabulary>kejam</vocabulary>. Tidak peduli siapa, tapi pilihlah salah satu yang Anda tahu itu sebenarnya kejam. Dia bisa menjadi orang sungguhan atau seseorang dalam film atau TV. Apa yang dilakukan pria ini? <read>Dia melakukan</reading> (ひど) hal-hal yang kejam.')
    RETURNING id INTO v_8161_kejam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酷暑', 'panas-yang-intens', 54, 136, '<kanji>Kejam</kanji> <kanji>cuaca panas</kanji> adalah cuaca yang terlalu sulit untuk ditangani oleh siapa pun. Ini adalah <kosakata>panas yang menyengat</vocabulary>. Terdampar di gurun pada musim panas, panas.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 暑, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Panas yang menyengat</vocabulary> akan <reading>terlihat</reading> (しょ) di wajah Anda. Wajahmu akan memerah dan berkeringat. Anda benar-benar tidak bisa menyembunyikannya.')
    RETURNING id INTO v_8162_panas_yang_intens;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '残酷', 'kekejaman', 54, 137, '<kanji>sisa</kanji> dari <kanji>kekejaman</kanji>adalah <vocabulary>kekejaman</vocabulary>. Tampaknya selalu ada banyak hal yang bisa dilakukan, dan itu agak menyebalkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8163_kekejaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '冷酷', 'kejam', 54, 138, 'Orang yang <kanji>kejam</kanji> <kanji>keren</kanji> lebih <vocabulary>kejam</vocabulary> dan <vocabulary>berhati dingin</vocabulary> daripada orang kejam pada umumnya. Mungkin karena mereka selalu kedinginan dan itu membuat mereka marah. Sebaiknya kamu menjauhi orang-orang seperti itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8164_kejam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酷評', 'kritik-parah', 54, 139, '<kanji>Evaluasi</kanji> dengan cara yang <kanji>kejam</kanji> sehingga Anda dapat memberikan <vocabulary>kritik keras</vocabulary> pada pesaing Anda! Ini bukan hal terbaik untuk dilakukan, dan tidak terlalu konstruktif bagi mereka, tapi itu akan membuat Anda terlihat lebih baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8165_kritik_parah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鎌', 'sabit', 54, 140, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8166_sabit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '新陳代謝', 'metabolisme', 54, 141, 'Tubuh Anda mengira Anda ingin <kanji>menggantikan</kanji> <kanji>yang baru</kanji> <kanji>menunjukkan</kanji> dalam diri Anda, namun ia <kanji>meminta maaf</kanji> dan menggantikannya lebih dari yang Anda inginkan. Apa yang sebenarnya dilakukannya adalah mengendalikan <vocabulary>metabolism</vocabulary> Anda. Bayangkan tubuh Anda menggunakan makanan yang Anda makan dengan menempatkannya di sebuah pameran di perut Anda. Namun ia bosan dan ingin menggantinya dengan yang lebih baru sehingga membuat Anda lapar lagi karena cepat mencerna makanannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mengetahui semua ini, tapi 代 menggunakan pembacaan たい yang kurang umum, jadi inilah mnemonik jika Anda memerlukan bantuan untuk mengingatnya:

Seperti yang diketahui semua orang, cara terbaik untuk meningkatkan <vocabulary>metabolism</vocabulary> Anda adalah dengan mengenakan <reading>dasi</reading> (たい). Mereka membuat tubuh Anda lebih efisien secara keseluruhan, termasuk metabolisme Anda, jadi pastikan Anda selalu mengenakan dasi untuk meningkatkan metabolisme!')
    RETURNING id INTO v_8167_metabolisme;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陳列室', 'ruang-pamer', 54, 142, '<kanji>Ruang</kanji> tempat Anda <kanji>memamerkan</kanji> sesuatu dalam <kanji>baris</kanji> adalah <vocabulary>ruang pamer</vocabulary>. Mungkin ada mobil yang berjejer, atau perahu, atau kucing porselen kecil! Bagaimanapun, mereka membutuhkan ruang pamer besar yang bagus untuk memamerkannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8168_ruang_pamer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '必須条件', 'kondisi-penting', 54, 143, 'Kamu sudah mengetahui bahwa 必須 bisa berarti "penting" dan 条件 berarti "kondisi", jadi gabungkan keduanya dan kamu akan mendapatkan <vocabulary>kondisi penting</vocabulary>! Artinya, ini adalah <vocabulary>harus</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8169_kondisi_penting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '露顕', 'penemuan', 54, 144, 'Anda <kanji>mengekspos</kanji> sesuatu yang baru dan itu <kanji>muncul</kanji> di hadapan seluruh dunia sebagai <vocabulary>penemuan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8170_penemuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '顕在', 'sebenarnya', 54, 145, 'Jika <kanji>tampaknya</kanji> <kanji>ada</kanji>, maka itu mungkin adalah hal yang <vocabulary>aktual</vocabulary>... Anda tahu, ada dan semacamnya. Itu seharusnya cukup <vocabulary>jelas</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8171_sebenarnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '顕著', 'luar-biasa', 54, 146, 'Ketika seorang <kanji>penulis</kanji> <kanji>muncul</kanji> di depan umum, hal itu selalu <vocabulary>luar biasa</vocabulary>. Orang-orang biasanya tidak ingat ada orang di balik halaman-halaman itu, jadi ketika penulis sebenarnya muncul secara langsung, hal itu cukup <vocabulary>mencengangkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8172_luar_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '顕彰', 'menghormati', 54, 147, 'Jika Anda ingin kehebatan seseorang <kanji>terlihat</kanji> <kanji>dengan jelas</kanji>kepada dunia, Anda bisa memulainya dengan <vocabulary>menghormati</vocabulary> mereka. <vocabulary>Memuji</vocabulary> seseorang di depan umum adalah cara jitu untuk membuat semua orang tahu betapa hebatnya mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8173_menghormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鯨', 'paus', 54, 148, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

<vocabulary>paus</vocabulary> sebenarnya adalah sepupu keren gojira (godzilla) <reading>kujira</reading> (くじら). Godzilla bermutasi dari ikan paus, jadi mereka masih berkerabat. Dari situlah dia mendapatkan namanya!')
    RETURNING id INTO v_8174_paus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '捕鯨', 'penangkapan-ikan-paus', 54, 149, 'Jika Anda <kanji>menangkap</kanji> <kanji>paus</kanji> Anda <vocabulary>menangkap ikan paus</vocabulary>, dan hal itu sekarang ilegal jadi sebaiknya Anda mengembalikan paus tersebut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8175_penangkapan_ikan_paus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鯨肉', 'daging-paus', 54, 150, '<kanji>Paus</kanji> <kanji>daging</kanji> adalah <vocabulary>daging paus</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8176_daging_paus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '茜色', 'merah-gila', 54, 151, '<kanji>Rose madder</kanji> <kanji>color</kanji> lebih sederhana disebut <vocabulary>madder red</vocabulary>, yang merupakan sejenis <vocabulary>merah tua</vocabulary> atau <vocabulary>crimson</vocabulary>. Kata ini paling sering digunakan untuk menggambarkan warna langit saat matahari terbenam dalam karya sastra.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_9106_merah_gila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '錦市場', 'pasar-nishiki', 54, 152, 'Anda mungkin sudah tahu 市場 berarti "pasar", seperti dalam 株式市場 (pasar saham). Jadi apakah ini pasar <kanji>brokat</kanji>? Sebenarnya, "brokat" mengacu pada nama jalan di sini, bukan kain brokat. Itu adalah nama tempat, jadi kita bisa menyebutnya <vocabulary>Pasar Nishiki</vocabulary>!

錦市場 adalah pasar makanan terkenal di jalan bernama 錦小路 (Nishiki Kōji) di Kyoto, dan penuh dengan makanan khas setempat yang lezat. Lakukan pencarian cepat jika Anda belum pernah mendengarnya! Mungkin tujuan wisata Anda selanjutnya?', 'Seperti yang mungkin bisa kamu tebak dari artinya, 錦 dibaca にしき di sini. 市場 biasanya dibaca dengan kun''yomi jika mengacu pada pasar jalanan fisik yang nyata. Anda belum mempelajari bacaan ini untuk 市場, jadi inilah mnemonik untuk membantu Anda:

Ada satu hal yang Anda cari saat mengunjungi <vocabulary>Pasar Nishiki</vocabulary>: <reading>baa yang gatal</reading> (いちば). Domba berkata "baa", dan yang Anda beli <em>pasti</em> sangat gatal. Baas yang gatal menghasilkan daging kambing dan wol terbaik, jadi pastikan Anda selalu memperhatikannya setiap kali Anda pergi ke Pasar Nishiki!')
    RETURNING id INTO v_9170_pasar_nishiki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蘇る', 'untuk-dibangkitkan', 54, 153, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>bangkit</kanji>, namun dalam hal ini Andalah yang dihidupkan kembali, jadi artinya <vocabulary>dibangkitkan</vocabulary>.

蘇る adalah kata yang terdengar dramatis untuk sesuatu yang hidup kembali. Ini bisa bersifat literal (ya, bahkan zombie), tetapi juga digunakan untuk kebangkitan kiasan, seperti mengingatkan dengan jelas akan kenangan lama.

Fakta menarik: kata ini aslinya berarti "kembali dari 黄泉(よみ)," negeri orang mati dalam mitologi Jepang. Itu sebabnya 蘇る terdengar sangat dramatis — membuatmu berpikir tentang seseorang yang kembali dari dunia bawah ke dunia fana!', 'Orang yang paling Anda ingin <vocabulary>dibangkitkan</vocabulary> adalah <reading>読み-guy</reading> (よみがえ) — pria yang mengajari Anda pembacaan kanji yang sulit. Dia meninggal karena terlalu banyak bekerja setelah Anda memintanya terlalu banyak membaca kanji, jadi Anda benar-benar ingin dia <vocabulary>hidup kembali</vocabulary> dan membantu Anda belajar lebih banyak lagi.

Atau, Anda dapat mengingatnya sebagai 黄泉(よみ) + 帰る: pulang dari dunia orang mati. Jangan lupa rendaku di 帰る!')
    RETURNING id INTO v_9444_untuk_dibangkitkan;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5040_surga, 'Surga', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_5040_surga, 'ごくらく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5040_surga, '温泉に入って極楽気分を味わいました。', 'Saya memasuki sumber air panas dan merasakan perasaan bahagia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5040_surga, '悪いことをしてたら、極楽に行けないよ。', 'Jika Anda melakukan hal-hal buruk, Anda tidak bisa masuk surga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5040_surga, '間違いで極楽に行った男についての小説が、映画化されました。', 'Novel tentang seorang pria yang masuk surga secara tidak sengaja diangkat menjadi film.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5040_surga, '「極楽とんぼ」とは、事の重大さに気づかず、のんきに構えている人のことをあざけて言う言葉です。でも、今では芸人さんのコンビ名としてしか知らない人がほとんどですね。', 'Gokuraku Tombo (capung di surga) adalah istilah yang digunakan untuk menggambarkan secara mengejek orang-orang yang tidak menyadari keseriusan suatu situasi dan menganggapnya enteng. Namun saat ini kebanyakan orang hanya mengenalnya sebagai nama duo komedian tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8062_kamar_mandi, 'Kamar mandi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8062_kamar_mandi, 'ふろば', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8062_kamar_mandi, '風呂場で滑ってお尻の骨を折りました。', 'Tulang pantatku patah karena terpeleset di kamar mandi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8063_pemandian_umum, 'Pemandian Umum', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8063_pemandian_umum, 'ふろや', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8063_pemandian_umum, '風呂屋に来るのは初めてです。', 'Ini pertama kalinya aku pergi ke pemandian umum.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8064_etika, 'Etika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8064_etika, 'Filsafat Moral', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8064_etika, 'りんりがく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8064_etika, '医学倫理学の講座を受けています。', 'Saya mengambil mata kuliah etika kedokteran.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8065_etis, 'Etis', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8065_etis, 'りんりてき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8065_etis, 'うちの会社は、世界で最も倫理的な企業の一つに選ばれました。', 'Perusahaan kami terpilih sebagai salah satu yang paling etis di dunia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8066_bias, 'Bias', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8066_bias, 'Deviasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8066_bias, 'Prasangka', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8066_bias, 'かたより', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8066_bias, 'あなたって、考え方にすごく偏りがあるよね。', 'Cara berpikirmu sangat bias ya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8067_mahkota, 'Mahkota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8067_mahkota, 'Mahkota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8067_mahkota, 'Mahkota kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8067_mahkota, 'Topi Tradisional', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8067_mahkota, 'かんむり', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8067_mahkota, 'かん', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8067_mahkota, 'この冠を被れるのは王だけです。', 'Hanya raja yang bisa memakai mahkota ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8068_mahkota, 'Mahkota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8068_mahkota, 'Mahkota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8068_mahkota, 'Tutup botol', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8068_mahkota, 'おうかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8068_mahkota, '彼は恋をして王冠を捨てたんだ。', 'Dia jatuh cinta dan meninggalkan mahkotanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8069_perbuatan_berjasa, 'Perbuatan Berjasa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8069_perbuatan_berjasa, 'しゅくん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8069_perbuatan_berjasa, '攻守ともに殊勲を立てました。', 'Baik menyerang maupun bertahan dimainkan dengan istimewa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8070_penganugerahan_dekorasi, 'Penganugerahan Dekorasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8070_penganugerahan_dekorasi, 'Menghias', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8070_penganugerahan_dekorasi, 'じょくん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8070_penganugerahan_dekorasi, '毎年、春と秋に春秋叙勲が実施されます。', 'Setiap tahun, pada musim semi dan musim gugur, penganugerahan dekorasi pada musim semi dan musim gugur dilakukan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8071_dekorasi, 'Dekorasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8071_dekorasi, 'Memesan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8071_dekorasi, 'Medali', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8071_dekorasi, 'くんしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8071_dekorasi, 'どうして勲章の受賞を辞退したんですか。', 'Mengapa Anda menolak medali pemenang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8072_grosir, 'Grosir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8072_grosir, 'おろし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8072_grosir, 'うちは雑貨の卸をしています。', 'Kami menjual barang grosir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8073_untuk_menjual_grosir, 'Untuk Menjual Grosir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8073_untuk_menjual_grosir, 'Untuk memarut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8073_untuk_menjual_grosir, 'おろす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8073_untuk_menjual_grosir, 'うちにもその商品を卸してもらえませんか。', 'Apakah Anda akan menjual barang-barang ini secara grosir?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8074_harga_grosir, 'Harga Grosir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8074_harga_grosir, 'おろしね', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8074_harga_grosir, 'それは卸値で購入することができたんです。', 'Saya bisa membelinya dengan harga grosir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8075_grosir, 'Grosir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8075_grosir, 'おろしうり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8075_grosir, '卸売市場の見学をしてきました。', 'Saya pergi mengamati pasar grosir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8076_puisi_epik, 'Puisi Epik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8076_puisi_epik, 'Puisi Deskriptif', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8076_puisi_epik, 'じょじし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8076_puisi_epik, '『ギルガメシュ叙事詩』は、古代メソポタミアの文学作品です。', '"The Epic of Gilgamesh" adalah sebuah karya sastra dari Mesopotamia kuno.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8077_memberikan_akun, 'Memberikan Akun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8077_memberikan_akun, 'Menceritakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8077_memberikan_akun, 'Menjelaskan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8077_memberikan_akun, 'じょじゅつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8077_memberikan_akun, 'この授業では、挿し絵や写真と叙述を結び付けることを学びます。', 'Dalam pelajaran ini kita akan belajar menghubungkan ilustrasi, foto, dan deskripsi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8078_lirik, 'Lirik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8078_lirik, 'Deskripsi Perasaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8078_lirik, 'Ekspresi Perasaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8078_lirik, 'じょじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8078_lirik, 'うまく叙情できるよう勉強しています。', 'Aku sedang belajar untuk bisa dengan cerdik menggambarkan perasaanku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8079_autobiografi, 'Autobiografi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8079_autobiografi, 'じじょでん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8079_autobiografi, '電子書籍で自叙伝を販売しようと思っています。', 'Saya sedang berpikir untuk menjual otobiografi saya sebagai e-book.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8080_bodoh, 'Bodoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8080_bodoh, 'Orang bodoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8080_bodoh, 'Bodoh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8080_bodoh, 'あほ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8080_bodoh, 'あほう', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8080_bodoh, '学生の頃は、いつも阿呆なことばかりしてたな。', 'Ketika saya masih mahasiswa, saya hanya melakukan hal-hal bodoh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8081_untuk_tumbuh_pikun, 'Untuk Tumbuh Pikun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8081_untuk_tumbuh_pikun, 'Menjadi Lambat Secara Mental', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8081_untuk_tumbuh_pikun, 'ぼける', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8081_untuk_tumbuh_pikun, 'ほうける', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8081_untuk_tumbuh_pikun, 'あの芸人は呆けるのが本当にうまい。', 'Aktor itu sangat pandai berakting pikun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8082_paparan, 'Paparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8082_paparan, 'Penyingkapan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8082_paparan, 'ろてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8082_paparan, 'あいつがしていたインチキが全部露呈したんだよ。', 'Kecurangan mereka terungkap sepenuhnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8083_presentasi, 'Presentasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8083_presentasi, 'しんてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8083_presentasi, '訪問者の多いブログには、Tポイントが進呈されます。', 'T-point disajikan kepada blog-blog yang pengunjungnya banyak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8084_presentasi, 'Presentasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8084_presentasi, 'ぞうてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8084_presentasi, '主役を演じた友人に花束を贈呈しました。', 'Saya memberikan bunga kepada seorang teman yang memainkan peran utama.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8085_perawatan, 'Perawatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8085_perawatan, 'Menyusui', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8085_perawatan, 'ほいく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8085_perawatan, '乳児哺育の方法は大きく変化しています。', 'Metode menyusui bayi mengalami banyak perubahan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8086_meledak, 'Meledak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8086_meledak, 'Untuk Menyemburkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8086_meledak, 'Untuk Menyemprotkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8086_meledak, 'ふきだす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8086_meledak, '今までためていた怒りが一気に噴き出した。', 'Kemarahan yang menumpuk meledak seketika.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8087_panti_asuhan, 'Panti asuhan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8087_panti_asuhan, 'こじいん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8087_panti_asuhan, '私は孤児院で幼少期を過ごしました。', 'Saya menghabiskan masa kecil saya di panti asuhan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8088_lebih_lebih_lagi, 'Lebih-lebih lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8088_lebih_lebih_lagi, 'Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8088_lebih_lebih_lagi, 'Lagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8088_lebih_lebih_lagi, 'Lebih besar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8088_lebih_lebih_lagi, 'なお', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8088_lebih_lebih_lagi, '温めて食べたら、尚、おいしくなりますよ。', 'Jika saya menghangatkannya dan memakannya, rasanya menjadi lebih nikmat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8089_imam_besar_buddha, 'Imam Besar Buddha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8089_imam_besar_buddha, 'Imam Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8089_imam_besar_buddha, 'Pendeta Buddha', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8089_imam_besar_buddha, 'おしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8089_imam_besar_buddha, '昔々あるところに、水飴が大好きな和尚がおりました。', 'Alkisah ada seorang pendeta tinggi yang menyukai sirup tepung kanji.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8090_tinggi, 'Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8090_tinggi, 'Bangsawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8090_tinggi, 'Halus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8090_tinggi, 'こうしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8090_tinggi, '高尚な趣味をお持ちなんですね。', 'Anda memiliki selera yang sangat bagus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8091_prematur, 'Prematur', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8091_prematur, 'じきしょうそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8091_prematur, 'その話を持ち出すのは時期尚早だろう。', 'Saya pikir terlalu dini untuk membicarakan topik itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8092_misa, 'Misa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8092_misa, 'Orang awam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8092_misa, 'しょみん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8092_misa, '私みたいな庶民には関係のない話です。', 'Ceritanya tidak ada hubungannya dengan orang biasa seperti saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8093_urusan_umum, 'Urusan Umum', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8093_urusan_umum, 'しょむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8093_urusan_umum, 'こんど、庶務課に配属されることになりました。', 'Kali ini akan ditugaskan ke departemen urusan umum.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8094_untuk_mengendur, 'Untuk Mengendur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8094_untuk_mengendur, 'Menjadi Malas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8094_untuk_mengendur, 'Mengabaikan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8094_untuk_mengendur, 'なまける', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8094_untuk_mengendur, '努力する人は希望を語るが、怠ける人は不満を語るのさ。', 'Orang yang bekerja keras berbicara tentang harapan, tetapi orang yang menganggur berbicara tentang ketidakpuasan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8095_diam, 'Diam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8095_diam, 'Tenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8095_diam, 'Dengan santai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8095_diam, 'Mudah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8095_diam, 'ゆうゆう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8095_diam, '退職後は田舎で悠々と暮らしたいな。', 'Setelah pensiun saya ingin menjalani kehidupan yang tenang di pedesaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8096_keabadian, 'Keabadian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8096_keabadian, 'Kelangsungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8096_keabadian, 'Keabadian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8096_keabadian, 'ゆうきゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8096_keabadian, '悠久な大自然で、人生について色々なことを考えてみました。', 'Saya memikirkan berbagai hal tentang kehidupan manusia dalam keabadian alam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8097_dengan_santai, 'Dengan santai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8097_dengan_santai, 'Lambat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8097_dengan_santai, 'Disengaja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8097_dengan_santai, 'Mudah bergaul', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8097_dengan_santai, 'ゆうちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8097_dengan_santai, 'そんな悠長なことを言ってる時間はないよ。', 'Ini bukan waktunya membicarakan hal-hal santai seperti itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8098_konyol, 'Konyol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8098_konyol, 'Konyol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8098_konyol, 'Kebodohan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8098_konyol, 'Kebodohan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8098_konyol, 'ぐ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8098_konyol, '先ほどは愚なことを申し上げてしまいまして、誠に申し訳ございませんでした。', 'Saya sangat menyesal atas hal-hal bodoh yang saya katakan kepada Anda sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8098_konyol, '親友と、愚にもつかない話をして夜を過ごした。', 'Saya menghabiskan malam itu dengan sahabat saya membicarakan hal-hal konyol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8098_konyol, 'まさに愚の骨頂だね。', 'Ini tentu saja merupakan puncak kebodohan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8099_keluhan_menganggur, 'Keluhan menganggur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8099_keluhan_menganggur, 'Ngomel', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8099_keluhan_menganggur, 'ぐち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8099_keluhan_menganggur, '愚痴ばかり言っても、何も変わらないよ。', 'Jika Anda hanya berbicara tentang keluhan yang tidak berguna, tidak ada yang akan berubah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8100_arogan, 'Arogan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8100_arogan, 'Angkuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8100_arogan, 'Kebanggaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8100_arogan, 'ごうまん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8100_arogan, 'あんな傲慢な男は初めてだよ。', 'Ini pertama kalinya aku bertemu pria sombong seperti itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8101_penculikan, 'Penculikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8101_penculikan, 'Penculikan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8101_penculikan, 'ゆうかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8101_penculikan, '社長の息子を誘拐するつもりだ。', 'Saya akan menculik putra manajer.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8102_aprikot, 'Aprikot', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8102_aprikot, 'あんず', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8102_aprikot, '干し杏のジャムを作りました。', 'Saya membuat selai aprikot kering.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8103_ginkgo, 'Ginkgo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8103_ginkgo, 'Kacang Ginkgo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8103_ginkgo, 'Pohon Ginkgo', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8103_ginkgo, 'いちょう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8103_ginkgo, 'ぎんなん', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8103_ginkgo, '銀杏を食べ過ぎると中毒症状が出ます。', 'Gejala keracunan muncul ketika saya makan terlalu banyak ginkgo.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8104_penanda_buku, 'Penanda buku', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8104_penanda_buku, 'しおり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8104_penanda_buku, '本を読む時に栞は使いますか。', 'Saat Anda membaca buku, apakah Anda menggunakan bookmark?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8105_penanaman, 'Penanaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8105_penanaman, 'Pertumbuhan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8105_penanaman, 'さいばい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8105_penanaman, '庭でトマトを栽培しているんです。', 'Saya menanam tomat di kebun saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8106_bonsai, 'Bonsai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8106_bonsai, 'Pohon Bonsai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8106_bonsai, 'ぼんさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8106_bonsai, 'アメリカでも盆栽が買えるんですか？', 'Bisakah Anda membeli bonsai di Amerika juga?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8107_kolom, 'Kolom', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8107_kolom, 'Kolom Teks', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8107_kolom, 'Bidang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8107_kolom, 'らん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8107_kolom, 'この欄は空けておいてください。', 'Silakan biarkan kolom ini kosong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8107_kolom, '履歴書の趣味欄には「人間観察」と書かれていた。面接の日、私はその応募者に見覚えがあることに気づいた。毎朝、駅で私を見ていた人だった。', 'Di bagian hobi di resume, tertulis "mengamati orang". Pada hari wawancara, saya menyadari bahwa saya mengenali pelamar tersebut: dia adalah orang yang mengawasi saya setiap pagi di stasiun kereta.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8108_ruang_kosong, 'Ruang Kosong', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8108_ruang_kosong, 'くうらん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8108_ruang_kosong, '空欄に答えを書き込んでください。', 'Silakan isi tanggapan Anda di ruang kosong.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8109_pagar_pembatas, 'Pagar pembatas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8109_pagar_pembatas, 'pegangan tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8109_pagar_pembatas, 'bannister', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8109_pagar_pembatas, 'らんかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8109_pagar_pembatas, 'その欄干は古いからもたれないほうがいい。', 'Pagar pembatas ini sudah tua jadi sebaiknya jangan bersandar padanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8110_batas, 'Batas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8110_batas, 'らんがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8110_batas, 'サインが欄外にはみ出てしまったんですが、大丈夫でしょうか。', 'Saya bertanya-tanya apakah tidak apa-apa jika tanda tangan saya keluar dari tepinya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8111_khususnya, 'Khususnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8111_khususnya, 'Khususnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8111_khususnya, 'Selain itu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8111_khususnya, 'Luar biasa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8111_khususnya, 'ことに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8111_khususnya, '殊に、来年はコウイチ様生誕100周年を記念するメモリアル・イヤーとなります。', 'Selain itu, tahun depan akan menjadi tahun peringatan peringatan seratus tahun kelahiran Koichi-sama.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8112_korban, 'Korban', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8112_korban, 'ぎせいしゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8112_korban, 'その飛行機事故では、事故で多くの犠牲者がでました。', 'Banyak korban bermunculan akibat kecelakaan pesawat tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8113_botol_bayi, 'Botol Bayi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8113_botol_bayi, 'ほにゅうびん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8113_botol_bayi, '哺乳瓶を熱湯消毒しています。', 'Anda mendisinfeksi botol bayi dalam air mendidih.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8114_depopulasi, 'Depopulasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8114_depopulasi, 'かそ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8114_depopulasi, '日本には、過疎に悩む地域がたくさんあります。', 'Ada banyak daerah yang bermasalah dengan depopulasi di Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8115_sia_sia, 'Sia-sia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8115_sia_sia, 'Tanpa dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8115_sia_sia, 'Sia-sia', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8115_sia_sia, 'くうそ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8115_sia_sia, 'こんな空疎な論争を続けるのは時間の無駄だ。', 'Melanjutkan perselisihan yang sia-sia hanya membuang-buang waktu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8116_pengasingan, 'Pengasingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8116_pengasingan, 'Menelantarkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8116_pengasingan, 'そえん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8116_pengasingan, 'それっきり、姉とは疎遠になっているんです。', 'Karena itu, aku menjadi terasing dari kakak perempuanku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8117_pengungsian, 'Pengungsian', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8117_pengungsian, 'そかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8117_pengungsian, '空襲を避けるために田舎へ疎開していました。', 'Mereka dievakuasi ke pedesaan untuk menghindari serangan udara.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8118_pengasingan, 'Pengasingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8118_pengasingan, 'Menelantarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8118_pengasingan, 'Pengasingan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8118_pengasingan, 'そがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8118_pengasingan, '学校ではずっと疎外感を感じていました。', 'Saya terus-menerus merasa terasing di sekolah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8119_saling_memahami, 'Saling Memahami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8119_saling_memahami, 'Penghapusan Penyumbatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8119_saling_memahami, 'Drainase', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8119_saling_memahami, 'そつう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8119_saling_memahami, '彼とは、意思疎通が全然できないんです。', 'Tidak mungkin aku bisa mencapai pemahaman bersama dengannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8120_jarang, 'Jarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8120_jarang, 'Tipis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8120_jarang, 'Berserakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8120_jarang, 'Terurai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8120_jarang, 'Sporadis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8120_jarang, 'まばら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8120_jarang, '昼間は賑やかですが、夜になると人通りも疎らになります。', 'Tempat ini ramai pada siang hari, namun pada malam hari lalu lintas pejalan kaki jarang terjadi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8121_penyakit, 'Penyakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8121_penyakit, 'Penyakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8121_penyakit, 'Kekacauan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8121_penyakit, 'しっかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8121_penyakit, '私の妹は、精神疾患を抱えています。', 'Adik perempuanku menderita gangguan jiwa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8122_lari_cepat, 'Lari cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8122_lari_cepat, 'lari', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8122_lari_cepat, 'しっそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8122_lari_cepat, '少年は、駅の構内を全力疾走していた。', 'Anak-anak itu berlari mengelilingi stasiun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8123_badai, 'Badai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8123_badai, 'Angin Kencang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8123_badai, 'Angin Segar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8123_badai, 'しっぷう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8123_badai, 'はやて', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8123_badai, '真っ黒な犬が、疾風のように河原を駆け抜けていった。', 'Anjing hitam itu berlari melewati dasar sungai seperti embusan angin.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8124_penyakit, 'Penyakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8124_penyakit, 'Penyakit', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8124_penyakit, 'しっぺい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8124_penyakit, 'がん、急性心筋梗塞、脳卒中のことを三大疾病といいます。', 'Tiga penyakit besar tersebut adalah kanker, serangan jantung, dan stroke.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8125_ketulian_nada, 'Ketulian Nada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8125_ketulian_nada, 'Tuli Nada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8125_ketulian_nada, 'Mati Kunci', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8125_ketulian_nada, 'おんち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8125_ketulian_nada, '音痴なので、カラオケは苦手です。', 'Aku tuli nada jadi aku buruk dalam karaoke.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8126_demensia, 'Demensia', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8126_demensia, 'ちほう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8126_demensia, '祖母の痴呆が始まったんです。', 'Nenek saya mulai menderita demensia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8127_penggerek, 'penggerek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8127_penggerek, 'Penganiaya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8127_penggerek, 'ちかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8127_penggerek, '今朝、痴漢を逮捕しました。', 'Penganiaya ditangkap pagi ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8128_kekacauan, 'Kekacauan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8128_kekacauan, 'Kekacauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8128_kekacauan, 'Kebingungan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8128_kekacauan, 'むちつじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8128_kekacauan, '戸棚の中には、何千本というマニキュアが無秩序に並べられていた。', 'Ribuan botol cat kuku berjejer tak beraturan di lemari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8129_kontrol_diri, 'Kontrol Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8129_kontrol_diri, 'Disiplin Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8129_kontrol_diri, 'Pengendalian Diri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8129_kontrol_diri, 'じしゅく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8129_kontrol_diri, '役員の不祥事発覚を受け、本日は全社員が営業活動を自粛致します。', 'Dengan terungkapnya skandal staf, seluruh karyawan harus menahan diri untuk tidak melakukan aktivitas bisnis saat ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8130_gaya_berat, 'Gaya berat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8130_gaya_berat, 'Kekhidmatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8130_gaya_berat, 'Kerasnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8130_gaya_berat, 'Keseriusan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8130_gaya_berat, 'げんしゅく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8130_gaya_berat, '結果を厳粛に受け止め、次回に臨みたい。', 'Saya ingin bereaksi dengan sungguh-sungguh terhadap hasilnya dan menghadapinya di lain waktu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8131_diam, 'Diam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8131_diam, 'せいしゅく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8131_diam, '静粛に願います。', 'Harap diam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8132_ketentuan_angkatan_darat, 'Ketentuan Angkatan Darat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8132_ketentuan_angkatan_darat, 'Ketentuan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8132_ketentuan_angkatan_darat, 'ひょうろう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8132_ketentuan_angkatan_darat, '兵糧攻めをするつもりなんだ。', 'Mereka berencana menggunakan taktik kelaparan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8133_lambang_keluarga, 'Lambang Keluarga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8133_lambang_keluarga, 'Puncak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8133_lambang_keluarga, 'Lambang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8133_lambang_keluarga, 'もん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8133_lambang_keluarga, '新郎が紋付袴を着ている写真はありますか。', 'Apakah ada gambar pengantin pria yang mengenakan hakama jambul?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8134_sidik_jari, 'Sidik jari', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8134_sidik_jari, 'しもん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8134_sidik_jari, 'ドアノブの指紋を綺麗に拭き取った。', 'Sidik jari di kenop pintu telah terhapus seluruhnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8135_riak, 'Riak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8135_riak, 'Akibat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8135_riak, 'はもん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8135_riak, '大臣の不用意な発言が波紋を呼んだ。', 'Pernyataan ceroboh menteri kabinet tersebut menimbulkan kehebohan besar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8136_puncak, 'Puncak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8136_puncak, 'Lambang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8136_puncak, 'もんしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8136_puncak, 'これは、王家の紋章です。', 'Ini adalah lambang keluarga kerajaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8137_untuk_memperluas, 'Untuk Memperluas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8137_untuk_memperluas, 'Membengkak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8137_untuk_memperluas, 'Untuk Menjadi Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8137_untuk_memperluas, 'Menjadi Meningkat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8137_untuk_memperluas, 'ふくらむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8137_untuk_memperluas, '希望は膨らむばかりだった。', 'Harapanku semakin besar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8138_tangkai, 'Tangkai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8138_tangkai, 'Tangkai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8138_tangkai, 'くき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8138_tangkai, '薔薇の茎を食べることはできますか？', 'Bisakah Anda makan batang mawar?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8139_prefektur_ibaraki, 'Prefektur Ibaraki', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8139_prefektur_ibaraki, 'いばらきけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8139_prefektur_ibaraki, '茨城県に実家があります。', 'Rumah orang tuaku berada di prefektur Ibaraki.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8140_retret_gunung, 'Retret Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8140_retret_gunung, 'Pondok Gunung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8140_retret_gunung, 'Vila Gunung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8140_retret_gunung, 'さんそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8140_retret_gunung, 'ある閉ざされた山荘で悲劇は起きた。', 'Sebuah tragedi terjadi di tempat peristirahatan pegunungan yang tertutup.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8142_rumah_liburan, 'Rumah Liburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8142_rumah_liburan, 'Vila', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8142_rumah_liburan, 'べっそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8142_rumah_liburan, 'この春に別荘を売ってしまうつもりです。', 'Saya berencana menjual vila di musim semi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8143_lagu, 'Lagu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8143_lagu, 'Kidung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8143_lagu, 'かよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8143_lagu, '今日のカラオケは、昭和歌謡縛りにしよう。', 'Mari kita akhiri karaoke hari ini dengan lagu Noh dari era Showa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8144_sajak_anak_anak, 'sajak anak-anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8144_sajak_anak_anak, 'Lagu Anak-anak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8144_sajak_anak_anak, 'どうよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8144_sajak_anak_anak, '幼稚園で新しい童謡を習ってきました。', 'Saya telah mempelajari lagu anak-anak baru di taman kanak-kanak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8145_lagu_rakyat, 'Lagu rakyat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8145_lagu_rakyat, 'Lagu Populer', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8145_lagu_rakyat, 'みんよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8145_lagu_rakyat, '最近は毎日ロシア民謡を聞いています。', 'Akhir-akhir ini, saya mendengarkan lagu-lagu daerah Rusia setiap hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8146_untuk_menempel, 'Untuk Menempel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8146_untuk_menempel, 'Untuk Melaksanakannya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8146_untuk_menempel, 'つらぬきとおす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8146_untuk_menempel, '彼は最後まで自分の信念を貫き通しました。', 'Dia berpegang pada keyakinannya sampai akhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8146_untuk_menempel, '自分のスタイルを貫き通すのは、思ってるほど簡単じゃないよ。', 'Berpegang pada gaya Anda sendiri tidak semudah yang Anda bayangkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8147_reparasi, 'Reparasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8147_reparasi, 'Kompensasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8147_reparasi, 'ばいしょうきん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8147_reparasi, '賠償金をお支払い頂く可能性があります。', 'Anda mungkin diminta untuk membayar ganti rugi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8148_praktik, 'Praktik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8148_praktik, 'Praktekkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8148_praktik, 'じっせん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8148_praktik, '理論は実践に移してこそ意味があるのです。', 'Teori hanya akan bermakna jika dipraktikkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8149_anekdot, 'Anekdot', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8149_anekdot, 'いつわ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8149_anekdot, 'この学校には面白い逸話があってね。', 'Sekolah ini punya anekdot yang menarik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8150_permata, 'Permata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8150_permata, 'Harta karun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8150_permata, 'Artikel Kecantikan Langka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8150_permata, 'Artikel Bagus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8150_permata, 'いっぴん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8150_permata, 'この黒毛和牛のステーキは、シェフのこだわりの逸品です。', 'Steak Hitam Jepang ini adalah permata yang terobsesi oleh para koki.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8151_deviasi, 'Deviasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8151_deviasi, 'Keberangkatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8151_deviasi, 'いつだつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8151_deviasi, '任務を逸脱する行為は慎み給え。', 'Mohon menahan diri dari tugas-tugas yang menyimpang dari misi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8152_keunggulan, 'Keunggulan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8152_keunggulan, 'しゅういつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8152_keunggulan, 'この広告は非常に秀逸だと評判です。', 'Rumornya, iklan ini sangat bagus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8153_untuk_berpaling, 'Untuk Berpaling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8153_untuk_berpaling, 'Untuk Menghindari', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8153_untuk_berpaling, 'そらす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8153_untuk_berpaling, '彼女は颯と目を逸らした。', 'Dia segera mengalihkan pandangannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8154_perlakuan_paling_menguntungkan, 'Perlakuan Paling Menguntungkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8154_perlakuan_paling_menguntungkan, 'Sambutan Terhangat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8154_perlakuan_paling_menguntungkan, 'さいゆうぐう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8154_perlakuan_paling_menguntungkan, 'この本屋はいつも私の好きな作家の本を最優遇して陳列してくれているんです。', 'Toko buku ini selalu menampilkan buku-buku karya penulis favorit saya dengan cara yang paling istimewa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8154_perlakuan_paling_menguntungkan, '政策的には、日本のどの政党も高齢者を最優遇していますよね。', 'Dari segi kebijakan, semua partai politik di Jepang memberikan prioritas tertinggi kepada lansia, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8154_perlakuan_paling_menguntungkan, 'このお店は現金払いの会員が最優遇されていて、カード払いの会員や非会員よりも先にレジに進むことができます。', 'Toko ini memprioritaskan anggota yang membayar tunai, memungkinkan mereka untuk melanjutkan ke kasir sebelum anggota atau non-anggota yang membayar kartu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8154_perlakuan_paling_menguntungkan, '最優遇貸出金利はいまどのぐらいですか。', 'Berapa SBDK saat ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8155_menukarkan, 'Menukarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8155_menukarkan, 'Pertukaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8155_menukarkan, 'おうしゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8155_menukarkan, '両チームのファンからやじの応酬が続いた。', 'Fans kedua tim terus saling mengejek.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8156_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8156_hadiah, 'Kompensasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8156_hadiah, 'ほうしゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8156_hadiah, 'このプロジェクトが成功すれば、報酬として、クリステンがほっぺにキスをしてくれます。', 'Jika proyek ini sukses, Kristen akan memberiku ciuman di pipi sebagai hadiahnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8157_kasar, 'Kasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8157_kasar, 'Berat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8157_kasar, 'Kejam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8157_kasar, 'Sangat buruk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8157_kasar, 'こく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8157_kasar, 'それをあいつに頼むのは、ちょっと酷すぎやしないか。', 'Meminta orang itu untuk itu agak terlalu kasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8157_kasar, 'あれは、みんな酷な実践方法だったと言っていた。', 'Semua orang mengatakan itu adalah cara berlatih yang parah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8158_kerasnya, 'Kerasnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8158_kerasnya, 'Kekakuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8158_kerasnya, 'Kekejaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8158_kerasnya, 'Kasar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8158_kerasnya, 'かこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8158_kerasnya, '彼らは、不当に過酷な労働を強いられています。', 'Mereka dipaksa melakukan pekerjaan kasar yang sangat berat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8159_eksploitasi, 'Eksploitasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8159_eksploitasi, 'Terlalu sering digunakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8159_eksploitasi, 'Melecehkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8159_eksploitasi, 'こくし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8159_eksploitasi, '労働者を酷使するブラック企業をこのまま野放しにしていてもいいんですか。', 'Menurut Anda, apakah boleh membiarkan perusahaan kulit hitam yang mengeksploitasi pekerjanya terus mengurus dirinya sendiri?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8160_kemiripan, 'Kemiripan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8160_kemiripan, 'Mirip', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8160_kemiripan, 'こくじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8160_kemiripan, '三冊の本は、どれも内容が酷似している。', 'Semua isi dalam ketiga jilid buku tersebut mirip satu sama lain.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8161_kejam, 'Kejam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8161_kejam, 'Buruk sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8161_kejam, 'Berat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8161_kejam, 'ひどい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8161_kejam, '彼女の作った料理は、どれも酷い味だった。', 'Semua makanan yang dia buat terasa tidak enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8161_kejam, '自分の彼女によくもそんな酷い事が言えるね。', 'Bagaimana kamu bisa mengatakan hal yang begitu kejam kepada pacarmu sendiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8161_kejam, 'こんなに暑さが酷くなるって分かっていたら、この国に引っ越していなかったよ。', 'Jika saya tahu panasnya akan separah ini, saya tidak akan pindah ke negara ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8162_panas_yang_intens, 'Panas yang Intens', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8162_panas_yang_intens, 'こくしょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8162_panas_yang_intens, '今年の夏は、酷暑が続きました。', 'Musim panas ini panas yang menyengat terus berlanjut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8163_kekejaman, 'Kekejaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8163_kekejaman, 'Kekerasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8163_kekejaman, 'ざんこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8163_kekejaman, '私は、ひどく残酷な決断を迫られました。', 'Saya didesak untuk mengambil keputusan yang sangat kejam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8164_kejam, 'Kejam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8164_kejam, 'berhati dingin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8164_kejam, 'Tanpa henti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8164_kejam, 'Kejam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8164_kejam, 'れいこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8164_kejam, 'あなたのこと、ずっと冷酷な人だと思っていました。', 'Saya selalu berpikir Anda adalah orang yang kejam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8165_kritik_parah, 'Kritik Parah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8165_kritik_parah, 'Kutukan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8165_kritik_parah, 'こくひょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8165_kritik_parah, 'いちいち酷評を気にしてたら、何も書けないよ。', 'Saya tidak dapat menulis apa pun jika saya terlalu memperhatikan setiap kritik pedas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8166_sabit, 'Sabit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8166_sabit, 'Sabit besar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8166_sabit, 'かま', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8166_sabit, '鎌をすっぽ抜けただけです。', 'Sabit itu terlepas dari tanganku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8167_metabolisme, 'Metabolisme', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8167_metabolisme, 'しんちんたいしゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8167_metabolisme, '新陳代謝がアップするエクササイズをご紹介します。', 'Saya akan memperkenalkan latihan yang meningkatkan metabolisme Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8168_ruang_pamer, 'Ruang pamer', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8168_ruang_pamer, 'ちんれつしつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8168_ruang_pamer, 'その陳列室には、いったい何が並べられているのですか。', 'Apa sih yang dipajang di showroom?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8169_kondisi_penting, 'Kondisi Penting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8169_kondisi_penting, 'Syarat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8169_kondisi_penting, 'Harus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8169_kondisi_penting, 'ひっすじょうけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8169_kondisi_penting, 'お肌の張りと艶は、モテる女の必須条件です。', 'Kulit berkilau dan kencang adalah suatu keharusan bagi wanita populer.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8170_penemuan, 'Penemuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8170_penemuan, 'Deteksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8170_penemuan, 'Paparan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8170_penemuan, 'ろけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8170_penemuan, 'どうして我々の陰謀が露顕したのだ。', 'Bagaimana Anda menemukan plot kami?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8171_sebenarnya, 'Sebenarnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8171_sebenarnya, 'Jelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8171_sebenarnya, 'Eksplisit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8171_sebenarnya, 'Terbuka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8171_sebenarnya, 'Tampak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8171_sebenarnya, 'Jelas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8171_sebenarnya, 'けんざい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8171_sebenarnya, 'この絵は、人間の顕在意識と潜在意識を象徴しています。', 'Gambaran ini melambangkan alam sadar dan alam bawah sadar manusia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8172_luar_biasa, 'Luar biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8172_luar_biasa, 'Menyolok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8172_luar_biasa, 'Jelas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8172_luar_biasa, 'けんちょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8172_luar_biasa, '我が社の業績は顕著に回復しています。', 'Hasil yang dicapai perusahaan kami mengalami pemulihan yang luar biasa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8173_menghormati, 'Menghormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8173_menghormati, 'Memuji', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8173_menghormati, 'けんしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8173_menghormati, '明日、市民会館で顕彰式が行われます。', 'Upacara penghargaan akan diadakan di pusat sipil besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8173_menghormati, '私は、地域ボランティア活動を顕彰する制度を作るべきだと思うんです。', 'Saya pikir kita harus menciptakan sistem untuk menghormati kegiatan sukarelawan komunitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8173_menghormati, '先日、献血50回をねぎらう顕彰をいただきました。 ', 'Suatu hari saya menerima pujian sebagai apresiasi atas 50 donor darah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8173_menghormati, '「内閣総理大臣顕彰」とは、日本の内閣総理大臣が、特に功績のあった個人・団体をたたえるために授与する顕彰のことです。', '"Pujian Perdana Menteri" mengacu pada suatu kehormatan yang diberikan oleh Perdana Menteri Jepang sebagai pengakuan terhadap individu atau organisasi yang telah mencapai prestasi luar biasa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8174_paus, 'Paus', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8174_paus, 'くじら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8174_paus, '鯨のベーコンを食べました。', 'Saya makan daging ikan paus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8175_penangkapan_ikan_paus, 'Penangkapan ikan paus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8175_penangkapan_ikan_paus, 'Penangkapan Ikan Paus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8175_penangkapan_ikan_paus, 'ほげい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8175_penangkapan_ikan_paus, '私は捕鯨には反対です。', 'Saya menentang perburuan paus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8176_daging_paus, 'Daging Paus', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8176_daging_paus, 'げいにく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8176_daging_paus, '美味しい鯨肉の店を知っているよ。', 'Saya tahu toko daging ikan paus yang enak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9106_merah_gila, 'Merah Gila', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9106_merah_gila, 'Merah Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9106_merah_gila, 'Merah tua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9106_merah_gila, 'あかねいろ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9106_merah_gila, '空が夕焼けで茜色に染まっていて、とても綺麗でした。', 'Langit berwarna merah tua saat matahari terbenam, dan sangat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9106_merah_gila, '茜色の空を見ながら、シャンパンを飲んだ。', 'Kami minum sampanye sambil memandangi langit merah yang semakin menggila.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9106_merah_gila, '見て、空が燃えるような茜色になってきてるよ。', 'Lihat, langit berubah warna menjadi merah tua menyala!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9170_pasar_nishiki, 'Pasar Nishiki', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9170_pasar_nishiki, 'にしきいちば', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9170_pasar_nishiki, '日曜日に京都の錦市場に行きました。', 'Saya pergi ke Pasar Nishiki di Kyoto pada hari Minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9170_pasar_nishiki, 'これは錦市場で買ったお箸です。', 'Ini sumpit yang saya beli di Pasar Nishiki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9170_pasar_nishiki, '錦市場で卵焼きを買って食べ歩きをしました。', 'Saya membeli tamago-yaki di Pasar Nishiki dan memakannya sambil berjalan-jalan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9444_untuk_dibangkitkan, 'Untuk Dibangkitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9444_untuk_dibangkitkan, 'Untuk Hidup Kembali', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9444_untuk_dibangkitkan, 'よみがえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9444_untuk_dibangkitkan, 'この音楽を聞くと、学生時代の記憶が蘇ります。', 'Saat aku mendengar musik ini, masa sekolahku teringat kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9444_untuk_dibangkitkan, 'あの作家は、死んだはずの人がゾンビとして蘇る話しか書けないんだよ。', 'Penulis itu tidak bisa menulis apa pun kecuali cerita tentang orang-orang yang seharusnya mati, kembali sebagai zombie.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9444_untuk_dibangkitkan, 'ゴミだった物が、リサイクルで新しい形になって蘇るのって、なんだか素敵じゃないですか。', 'Bukankah menakjubkan bagaimana benda-benda yang tadinya sampah bisa didaur ulang dan hidup kembali dalam bentuk yang baru?');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2225_paus, id FROM items WHERE character = '魚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2225_paus, id FROM items WHERE character = '京' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2226_vila, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2226_vila, id FROM items WHERE character = '丬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2226_vila, id FROM items WHERE character = '士' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2227_penanaman, id FROM items WHERE character = '耒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2227_penanaman, id FROM items WHERE character = '戈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2228_menculik, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2228_menculik, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2228_menculik, id FROM items WHERE character = '刀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2229_mahkota, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2229_mahkota, id FROM items WHERE character = '元' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2229_mahkota, id FROM items WHERE character = '寸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2230_kemampuan, id FROM items WHERE character = '重' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2230_kemampuan, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2230_kemampuan, id FROM items WHERE character = '灬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2231_membayar_kembali, id FROM items WHERE character = '酉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2231_membayar_kembali, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2231_membayar_kembali, id FROM items WHERE character = '川' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2232_lambang_keluarga, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2232_lambang_keluarga, id FROM items WHERE character = '文' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2233_grosir, id FROM items WHERE character = '午' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2233_grosir, id FROM items WHERE character = '止' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2233_grosir, id FROM items WHERE character = '卩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2234_kolom, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2234_kolom, id FROM items WHERE character = '門' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2234_kolom, id FROM items WHERE character = '東' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2235_menyimpang, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2235_menyimpang, id FROM items WHERE character = '免' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2236_lebih_lebih_lagi, id FROM items WHERE character = '⺌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2236_lebih_lebih_lagi, id FROM items WHERE character = '冋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2237_muncul, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2237_muncul, id FROM items WHERE character = '业' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2237_muncul, id FROM items WHERE character = '頁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2238_serius, id FROM items WHERE character = 'ヨ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2238_serius, id FROM items WHERE character = '丨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2238_serius, id FROM items WHERE character = '儿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2238_serius, id FROM items WHERE character = '米' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2239_konyol, id FROM items WHERE character = '禺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2239_konyol, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2240_umum, id FROM items WHERE character = '/radicals/yurt.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2240_umum, id FROM items WHERE character = '灬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2241_praktik, id FROM items WHERE character = '足' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2241_praktik, id FROM items WHERE character = '㦮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2242_hadiah, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2242_hadiah, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2243_menelantarkan, id FROM items WHERE character = '疋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2243_menelantarkan, id FROM items WHERE character = '束' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2244_dengan_cepat, id FROM items WHERE character = '疒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2244_dengan_cepat, id FROM items WHERE character = '矢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2245_noh_nyanyian, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2245_noh_nyanyian, id FROM items WHERE character = '/radicals/satellite.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2246_sabit, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2246_sabit, id FROM items WHERE character = '兼' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2247_kejam, id FROM items WHERE character = '酉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2247_kejam, id FROM items WHERE character = '告' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2248_menggambarkan, id FROM items WHERE character = '余' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2248_menggambarkan, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2249_juga, id FROM items WHERE character = '且' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2250_bodoh, id FROM items WHERE character = '疒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2250_bodoh, id FROM items WHERE character = '矢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2250_bodoh, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2251_terkejut, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2251_terkejut, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2252_menyusu, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2252_menyusu, id FROM items WHERE character = '甫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2253_bangga, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2253_bangga, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2253_bangga, id FROM items WHERE character = '方' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2253_bangga, id FROM items WHERE character = '夂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2254_tangkai, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2254_tangkai, id FROM items WHERE character = '圣' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2255_memuji, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2255_memuji, id FROM items WHERE character = '可' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2256_santai, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2256_santai, id FROM items WHERE character = '丨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2256_santai, id FROM items WHERE character = '夂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2256_santai, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2257_aprikot, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2257_aprikot, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2258_mawar_lebih_gila, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2258_mawar_lebih_gila, id FROM items WHERE character = '西' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2259_penanda_buku, id FROM items WHERE character = '干' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2259_penanda_buku, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_5040_surga, id FROM items WHERE character = '極' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_5040_surga, id FROM items WHERE character = '楽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8062_kamar_mandi, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8062_kamar_mandi, id FROM items WHERE character = '呂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8062_kamar_mandi, id FROM items WHERE character = '場' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8063_pemandian_umum, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8063_pemandian_umum, id FROM items WHERE character = '呂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8063_pemandian_umum, id FROM items WHERE character = '屋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8064_etika, id FROM items WHERE character = '倫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8064_etika, id FROM items WHERE character = '理' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8064_etika, id FROM items WHERE character = '学' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8065_etis, id FROM items WHERE character = '倫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8065_etis, id FROM items WHERE character = '理' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8065_etis, id FROM items WHERE character = '的' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8066_bias, id FROM items WHERE character = '偏' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8067_mahkota, k_2229_mahkota);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8068_mahkota, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8068_mahkota, k_2229_mahkota);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8069_perbuatan_berjasa, id FROM items WHERE character = '殊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8069_perbuatan_berjasa, k_2230_kemampuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8070_penganugerahan_dekorasi, k_2248_menggambarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8070_penganugerahan_dekorasi, k_2230_kemampuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8071_dekorasi, k_2230_kemampuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8071_dekorasi, id FROM items WHERE character = '章' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8072_grosir, k_2233_grosir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8073_untuk_menjual_grosir, k_2233_grosir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8074_harga_grosir, k_2233_grosir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8074_harga_grosir, id FROM items WHERE character = '値' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8075_grosir, k_2233_grosir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8075_grosir, id FROM items WHERE character = '売' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8076_puisi_epik, k_2248_menggambarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8076_puisi_epik, id FROM items WHERE character = '事' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8076_puisi_epik, id FROM items WHERE character = '詩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8077_memberikan_akun, k_2248_menggambarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8077_memberikan_akun, id FROM items WHERE character = '述' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8078_lirik, k_2248_menggambarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8078_lirik, id FROM items WHERE character = '情' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8079_autobiografi, id FROM items WHERE character = '自' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8079_autobiografi, k_2248_menggambarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8079_autobiografi, id FROM items WHERE character = '伝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8080_bodoh, k_2255_memuji);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8080_bodoh, k_2251_terkejut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8081_untuk_tumbuh_pikun, k_2251_terkejut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8082_paparan, id FROM items WHERE character = '露' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8082_paparan, k_2242_hadiah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8083_presentasi, id FROM items WHERE character = '進' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8083_presentasi, k_2242_hadiah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8084_presentasi, id FROM items WHERE character = '贈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8084_presentasi, k_2242_hadiah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8085_perawatan, k_2252_menyusu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8085_perawatan, id FROM items WHERE character = '育' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8086_meledak, id FROM items WHERE character = '噴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8086_meledak, id FROM items WHERE character = '出' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8087_panti_asuhan, id FROM items WHERE character = '孤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8087_panti_asuhan, id FROM items WHERE character = '児' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8087_panti_asuhan, id FROM items WHERE character = '院' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8088_lebih_lebih_lagi, k_2236_lebih_lebih_lagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8089_imam_besar_buddha, id FROM items WHERE character = '和' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8089_imam_besar_buddha, k_2236_lebih_lebih_lagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8090_tinggi, id FROM items WHERE character = '高' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8090_tinggi, k_2236_lebih_lebih_lagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8091_prematur, id FROM items WHERE character = '時' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8091_prematur, id FROM items WHERE character = '期' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8091_prematur, k_2236_lebih_lebih_lagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8091_prematur, id FROM items WHERE character = '早' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8092_misa, k_2240_umum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8092_misa, id FROM items WHERE character = '民' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8093_urusan_umum, k_2240_umum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8093_urusan_umum, id FROM items WHERE character = '務' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8094_untuk_mengendur, id FROM items WHERE character = '怠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8095_diam, k_2256_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8095_diam, id FROM items WHERE character = '々' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8096_keabadian, k_2256_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8096_keabadian, id FROM items WHERE character = '久' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8097_dengan_santai, k_2256_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8097_dengan_santai, id FROM items WHERE character = '長' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8098_konyol, k_2239_konyol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8099_keluhan_menganggur, k_2239_konyol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8099_keluhan_menganggur, k_2250_bodoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8100_arogan, k_2253_bangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8100_arogan, id FROM items WHERE character = '慢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8101_penculikan, id FROM items WHERE character = '誘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8101_penculikan, k_2228_menculik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8102_aprikot, k_2257_aprikot);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8103_ginkgo, id FROM items WHERE character = '銀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8103_ginkgo, k_2257_aprikot);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8104_penanda_buku, k_2259_penanda_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8105_penanaman, k_2227_penanaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8105_penanaman, id FROM items WHERE character = '培' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8106_bonsai, id FROM items WHERE character = '盆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8106_bonsai, k_2227_penanaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8107_kolom, k_2234_kolom);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8108_ruang_kosong, id FROM items WHERE character = '空' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8108_ruang_kosong, k_2234_kolom);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8109_pagar_pembatas, k_2234_kolom);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8109_pagar_pembatas, id FROM items WHERE character = '干' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8110_batas, k_2234_kolom);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8110_batas, id FROM items WHERE character = '外' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8111_khususnya, id FROM items WHERE character = '殊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8112_korban, id FROM items WHERE character = '犠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8112_korban, id FROM items WHERE character = '牲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8112_korban, id FROM items WHERE character = '者' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8113_botol_bayi, k_2252_menyusu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8113_botol_bayi, id FROM items WHERE character = '乳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8113_botol_bayi, id FROM items WHERE character = '瓶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8114_depopulasi, id FROM items WHERE character = '過' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8114_depopulasi, k_2243_menelantarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8115_sia_sia, id FROM items WHERE character = '空' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8115_sia_sia, k_2243_menelantarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8116_pengasingan, k_2243_menelantarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8116_pengasingan, id FROM items WHERE character = '遠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8117_pengungsian, k_2243_menelantarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8117_pengungsian, id FROM items WHERE character = '開' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8118_pengasingan, k_2243_menelantarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8118_pengasingan, id FROM items WHERE character = '外' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8119_saling_memahami, k_2243_menelantarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8119_saling_memahami, id FROM items WHERE character = '通' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8120_jarang, k_2243_menelantarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8121_penyakit, k_2244_dengan_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8121_penyakit, id FROM items WHERE character = '患' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8122_lari_cepat, k_2244_dengan_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8122_lari_cepat, id FROM items WHERE character = '走' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8123_badai, k_2244_dengan_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8123_badai, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8124_penyakit, k_2244_dengan_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8124_penyakit, id FROM items WHERE character = '病' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8125_ketulian_nada, id FROM items WHERE character = '音' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8125_ketulian_nada, k_2250_bodoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8126_demensia, k_2250_bodoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8126_demensia, k_2251_terkejut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8127_penggerek, k_2250_bodoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8127_penggerek, id FROM items WHERE character = '漢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8128_kekacauan, id FROM items WHERE character = '無' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8128_kekacauan, id FROM items WHERE character = '秩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8128_kekacauan, id FROM items WHERE character = '序' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8129_kontrol_diri, id FROM items WHERE character = '自' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8129_kontrol_diri, k_2238_serius);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8130_gaya_berat, id FROM items WHERE character = '厳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8130_gaya_berat, k_2238_serius);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8131_diam, id FROM items WHERE character = '静' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8131_diam, k_2238_serius);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8132_ketentuan_angkatan_darat, id FROM items WHERE character = '兵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8132_ketentuan_angkatan_darat, id FROM items WHERE character = '糧' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8133_lambang_keluarga, k_2232_lambang_keluarga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8134_sidik_jari, id FROM items WHERE character = '指' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8134_sidik_jari, k_2232_lambang_keluarga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8135_riak, id FROM items WHERE character = '波' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8135_riak, k_2232_lambang_keluarga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8136_puncak, k_2232_lambang_keluarga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8136_puncak, id FROM items WHERE character = '章' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8137_untuk_memperluas, id FROM items WHERE character = '膨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8138_tangkai, k_2254_tangkai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8139_prefektur_ibaraki, id FROM items WHERE character = '茨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8139_prefektur_ibaraki, id FROM items WHERE character = '城' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8139_prefektur_ibaraki, id FROM items WHERE character = '県' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8140_retret_gunung, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8140_retret_gunung, k_2226_vila);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8142_rumah_liburan, id FROM items WHERE character = '別' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8142_rumah_liburan, k_2226_vila);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8143_lagu, id FROM items WHERE character = '歌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8143_lagu, k_2245_noh_nyanyian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8144_sajak_anak_anak, id FROM items WHERE character = '童' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8144_sajak_anak_anak, k_2245_noh_nyanyian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8145_lagu_rakyat, id FROM items WHERE character = '民' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8145_lagu_rakyat, k_2245_noh_nyanyian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8146_untuk_menempel, id FROM items WHERE character = '貫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8146_untuk_menempel, id FROM items WHERE character = '通' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8147_reparasi, id FROM items WHERE character = '賠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8147_reparasi, id FROM items WHERE character = '償' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8147_reparasi, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8148_praktik, id FROM items WHERE character = '実' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8148_praktik, k_2241_praktik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8149_anekdot, k_2235_menyimpang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8149_anekdot, id FROM items WHERE character = '話' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8150_permata, k_2235_menyimpang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8150_permata, id FROM items WHERE character = '品' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8151_deviasi, k_2235_menyimpang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8151_deviasi, id FROM items WHERE character = '脱' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8152_keunggulan, id FROM items WHERE character = '秀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8152_keunggulan, k_2235_menyimpang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8153_untuk_berpaling, k_2235_menyimpang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8154_perlakuan_paling_menguntungkan, id FROM items WHERE character = '最' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8154_perlakuan_paling_menguntungkan, id FROM items WHERE character = '優' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8154_perlakuan_paling_menguntungkan, id FROM items WHERE character = '遇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8155_menukarkan, id FROM items WHERE character = '応' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8155_menukarkan, k_2231_membayar_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8156_hadiah, id FROM items WHERE character = '報' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8156_hadiah, k_2231_membayar_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8157_kasar, k_2247_kejam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8158_kerasnya, id FROM items WHERE character = '過' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8158_kerasnya, k_2247_kejam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8159_eksploitasi, k_2247_kejam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8159_eksploitasi, id FROM items WHERE character = '使' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8160_kemiripan, k_2247_kejam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8160_kemiripan, id FROM items WHERE character = '似' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8161_kejam, k_2247_kejam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8162_panas_yang_intens, k_2247_kejam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8162_panas_yang_intens, id FROM items WHERE character = '暑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8163_kekejaman, id FROM items WHERE character = '残' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8163_kekejaman, k_2247_kejam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8164_kejam, id FROM items WHERE character = '冷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8164_kejam, k_2247_kejam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8165_kritik_parah, k_2247_kejam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8165_kritik_parah, id FROM items WHERE character = '評' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8166_sabit, k_2246_sabit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8167_metabolisme, id FROM items WHERE character = '新' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8167_metabolisme, id FROM items WHERE character = '陳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8167_metabolisme, id FROM items WHERE character = '代' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8167_metabolisme, id FROM items WHERE character = '謝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8168_ruang_pamer, id FROM items WHERE character = '陳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8168_ruang_pamer, id FROM items WHERE character = '列' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8168_ruang_pamer, id FROM items WHERE character = '室' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8169_kondisi_penting, id FROM items WHERE character = '必' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8169_kondisi_penting, id FROM items WHERE character = '須' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8169_kondisi_penting, id FROM items WHERE character = '条' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8169_kondisi_penting, id FROM items WHERE character = '件' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8170_penemuan, id FROM items WHERE character = '露' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8170_penemuan, k_2237_muncul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8171_sebenarnya, k_2237_muncul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8171_sebenarnya, id FROM items WHERE character = '在' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8172_luar_biasa, k_2237_muncul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8172_luar_biasa, id FROM items WHERE character = '著' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8173_menghormati, k_2237_muncul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8173_menghormati, id FROM items WHERE character = '彰' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8174_paus, k_2225_paus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8175_penangkapan_ikan_paus, id FROM items WHERE character = '捕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8175_penangkapan_ikan_paus, k_2225_paus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8176_daging_paus, k_2225_paus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8176_daging_paus, id FROM items WHERE character = '肉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9106_merah_gila, k_2258_mawar_lebih_gila);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9106_merah_gila, id FROM items WHERE character = '色' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9170_pasar_nishiki, id FROM items WHERE character = '錦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9170_pasar_nishiki, id FROM items WHERE character = '市' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9170_pasar_nishiki, id FROM items WHERE character = '場' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9444_untuk_dibangkitkan, id FROM items WHERE character = '蘇' LIMIT 1;

END $$;