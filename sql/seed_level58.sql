-- ====================================================
-- KaniGani — Seed Data Level 58 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ KANJI IDs (Level 58) ============
  k_2363_lapis_lazuli UUID; k_2365_sulfur UUID; k_2366_maaf UUID; k_2367_mencuri UUID; k_2368_mendesah UUID; k_2369_bantuan UUID; k_2370_bermain UUID; k_2372_berlumpur UUID; k_2373_berlari UUID; k_2374_kemiripan UUID; k_2375_membusuk UUID; k_2376_sekam UUID; k_2377_menerima UUID; k_2378_wilayah_kekuasaan UUID; k_2379_penengah UUID; k_2380_ayam UUID; k_2381_meminta UUID; k_2382_bergantian UUID; k_2383_tulang_belakang UUID; k_2385_menemani UUID; k_2386_membagi UUID; k_2387_silsilah UUID; k_2388_anggun UUID; k_2389_berlayar UUID; k_2390_membenci UUID; k_2391_melayani UUID; k_2392_fajar UUID; k_2393_kebesaran UUID; k_2394_kunci UUID; k_2395_menderita UUID; k_2396_selamat UUID; k_2397_sedimen UUID; k_2399_seperti_kaca UUID;
  -- ============ VOCABULARY IDs (Level 58) ============
  v_2897_ke_arah_timur UUID; v_6794_kemenangan_sempit UUID; v_8434_kenikmatan UUID; v_8435_mahakarya UUID; v_8436_pahlawan UUID; v_8437_untuk_bertahan UUID; v_8438_autopsi UUID; v_8439_bodoh UUID; v_8440_tercengang UUID; v_8441_benar_benar_terkagum_kagum UUID; v_8442_karyawan_paruh_waktu UUID; v_8443_berlari_tentang UUID; v_8444_liar UUID; v_8445_perantara UUID; v_8446_media UUID; v_8447_katalisator UUID; v_8448_penjaruman UUID; v_8449_berlayar UUID; v_8450_pelayaran UUID; v_8451_alat_musik_gesek UUID; v_8452_musik_orkestra UUID; v_8458_perasaan_kuat UUID; v_8459_amarah UUID; v_8460_kebencian UUID; v_8461_bermain UUID; v_8462_drama UUID; v_8463_untuk_bermain_main UUID; v_8464_bantuan UUID; v_8465_mendukung UUID; v_8466_mengalahkan UUID; v_8467_fajar UUID; v_8468_kekal UUID; v_8469_jompo UUID; v_8470_membusuk UUID; v_8471_tulang_belakang UUID; v_8472_kerang UUID; v_8473_kerak_bumi UUID; v_8474_anggun UUID; v_8475_wanita UUID; v_8476_polusi UUID; v_8477_membuat_berlumpur UUID; v_8478_arus_berlumpur UUID; v_8479_penangguhan_dakwaan UUID; v_8480_kalimat_yang_ditangguhkan UUID; v_8481_segar UUID; v_8482_asam_sulfat UUID; v_8483_pencurian UUID; v_8484_perjanjian_tuan_tuan UUID; v_8486_benang_sutra UUID; v_8487_kelumpuhan_tidur UUID; v_8488_gantung UUID; v_8489_lapisan UUID; v_8490_potret UUID; v_8491_wilayah_kekuasaan UUID; v_8492_tuan_feodal UUID; v_8494_catatan_permainan_shogi UUID; v_8495_skor_musik UUID; v_8496_garis_keturunan UUID; v_8497_catatan_kronologis UUID; v_8498_lembaran_musik UUID; v_8499_amnesti UUID; v_8500_maaf UUID; v_8501_maaf UUID; v_8502_perombakan UUID; v_8503_minuman_malam UUID; v_8504_untuk_melayani UUID; v_8505_kunci UUID; v_8506_borgol UUID; v_8507_pil UUID; v_8508_juri UUID; v_8509_kelelahan UUID; v_8510_sampai_yang_terakhir UUID; v_8511_ayam UUID; v_8512_daging_ayam UUID; v_8513_telur_ayam UUID; v_8514_peternakan_ayam UUID; v_8866_pengunduran_diri UUID; v_9097_buang_buang UUID; v_9108_joruri UUID; v_9109_biru_cerah UUID; v_9113_sugahara UUID; v_9114_menuangkan_alkohol UUID; v_9115_membuat_tunjangan UUID;

BEGIN

  DELETE FROM items WHERE level = 58;

  -- 1. RADICALS

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '瑠', 'lapis-lazuli', 58, 1, '<radical>raja</radical> akan mengirim anak buahnya dengan <radical>pedang</radical> ke <radical>pribadi</radical> <radical>sawah</radical> Anda jika Anda menemukan <kanji>lapis lazuli</kanji>. Meskipun ini adalah tanah pribadimu, dia ingin lapis lazuli itu membuatkan mahkota dan takhta baru untuk dirinya sendiri. Ditambah lagi dia adalah raja, jadi dia bisa melakukan apapun yang dia mau.

Jika Anda belum pernah mengikuti kelas sejarah seni (atau bermain Minecraft), Anda mungkin belum pernah menemukan lapis lazuli, tetapi anggap saja itu sebagai batu berharga berwarna biru cantik yang sangat disukai orang-orang di masa lalu.', 'Anda berlari dan bertanya bagaimana pencurian <kanji>lapis lazuli</kanji> ini tidak ilegal dan salah satu pendekar pedang hanya berteriak, "<reading>Loo</reading>phole (る)!" Apa? Celah apa? Hukum apa yang mengatakan bahwa raja boleh mencuri barang-barang Anda?')
    RETURNING id INTO k_2363_lapis_lazuli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '硫', 'sulfur', 58, 2, 'Ada <radical>batu</radical> yang berbau seperti <radical>sampah</radical> di <radical>sungai</radical>. Anda membukanya dan menyadari bahwa bebatuan ini terbuat dari <kanji>belerang</kanji>. Aliran airnya pun tidak mampu menyembunyikan bau busuk bebatuan belerang tersebut.', 'Anda melempar batu <kanji>belerang</kanji> sekuat tenaga, namun batu tersebut mengenai bagian belakang kepala seseorang. Oh tidak, itu <reading>Ryu</reading> (りゅう) dari Street Fighter. Anda mencoba meminta maaf dan menjelaskan bahwa Anda tidak ingin batu sampah yang bau ini, maksud saya, batu belerang berada di dekat Anda. Anda tidak tahu dia ada di sana.')
    RETURNING id INTO k_2365_sulfur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '赦', 'maaf', 58, 3, 'Jika Anda menumpahkan sesuatu <radical>merah</radical> pada diri Anda di <radical>musim dingin</radical> Anda harus <kanji>maaf</kanji> segera dan mencoba mencari pakaian lain untuk dikenakan. Sangat berbahaya mengenakan pakaian berwarna merah di musim dingin, dan meskipun terkesan tidak sopan, pastikan Anda segera memaafkan diri sendiri dan mengurusnya!', 'Jika kamu tidak <kanji>memaafkan</kanji> dengan cukup cepat, pria <reading>sha</reading> musim dingin (しゃ) akan menyerbu masuk dan membacakan mantra padamu, mengambil semua pakaian yang ada warna merahnya! Sekarang Anda harus memaafkan diri sendiri karena telanjang!')
    RETURNING id INTO k_2366_maaf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '窃', 'mencuri', 58, 4, 'Anda melihat <radical>tujuh</radical> <radical>pedang</radical> berada di dalam <radical>lubang</radical> sehingga Anda memutuskan untuk <kanji>mencuri</kanji> mereka. Bagaimanapun, mereka hanya tertinggal di dalam lubang itu, sepertinya tidak ada orang yang menggunakannya. Dan meskipun demikian, mereka tidak akan pernah tahu bahwa Andalah yang mencurinya, bukan?', 'Anda <kanji>mencuri</kanji> pedang tersebut dan menyadari bahwa pedang tersebut bukan hanya tujuh pedang acak, pedang tersebut berasal dari <reading>set</reading> (せつ) pedang terkenal yang mereka jual secara online. Set khusus ini berasal dari film Seven Samurai. Ya! Pencurian yang luar biasa!')
    RETURNING id INTO k_2367_mencuri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慨', 'mendesah', 58, 5, 'Jauh di lubuk hati <radical>jiwa</radikal> Anda, Anda merasa ingin mencabut <radikal>taring</radikal> Anda hingga ke <radikal>akar</radikal>, namun Anda malah mengeluarkan <kanji>desah</kanji> yang keras. Anda adalah satu-satunya orang yang Anda kenal yang memiliki taring, dan itu sangat membebani jiwa Anda.', 'Anda <kanji>menghela nafas</kanji> lagi dan berkata, "Saya harap saya hanyalah seorang <reading>pria</reading> (がい) yang normal." Aku bersumpah, seluruh diriku adalah pria seperti kalian semua. *mendesah*')
    RETURNING id INTO k_2368_mendesah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '扶', 'bantuan', 58, 6, 'Letakkan <radical>jari</radical> Anda pada <radical>suami</radical> Anda untuk <kanji>membantu</kanji> dia. Ada sesuatu tentang sentuhan pasangan yang membuat Anda merasa lebih baik. Pernahkah Anda melihat seseorang menggosok punggung Anda saat Anda terluka, sakit, atau sedih? Itu bagus, bukan?', 'Sayangnya, suami Anda tidak akan membutuhkan <kanji>bantuan</kanji> Anda jika dia bukan <reading>foo</reading>l (ふ). Dia masuk ke pintu, dia terjatuh dari tangga, dia menyentuh piring saat pelayan bilang itu panas. Dan setiap kali suami bodohmu melukai dirinya sendiri, kamu membantunya.')
    RETURNING id INTO k_2369_bantuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '戯', 'bermain', 58, 7, 'Lemparkan <radical>pemabuk</radical> ke dalam sangkar bersama <radical>harimau</radical> dan beberapa <radical>paku</radikal> dan harimau tersebut akan memiliki waktu <kanji>bermain</kanji>bersama mereka! Pikirkan semua kemungkinan waktu bermain harimau!', 'Jika Anda bukan si macan, menontonnya <kanji>bermain</kanji> seperti melihat kepala seseorang dipenggal dengan <reading>gui</reading>llotine (ぎ). Faktanya, Anda tidak ingin menontonnya diputar lagi.')
    RETURNING id INTO k_2370_bermain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '濁', 'berlumpur', 58, 8, 'Jika <radical>tsunami</radical> masuk ke dalam <radical>net</radical> yang me<radical>menjara</radical> sekelompok <radical>serangga</radical>, serangga tersebut akan menjadi <kanji>berlumpur</kanji>. Jaring terseret bersama air tsunami dan serangga tidak dapat melarikan diri, sehingga mereka hanya terbungkus dalam benda-benda menjijikkan tersebut.', 'Sayangnya bagi serangga, kondisi <kanji>berlumpur</kanji> ini telah menciptakan habitat sempurna bagi <reading>bebek</reading> (だく). Dan serangga berlumpur yang sudah terkurung dalam jaring berlumpur adalah makanan favorit bebek!')
    RETURNING id INTO k_2372_berlumpur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奔', 'berlari', 58, 9, 'Anda sedang berjalan di jalan dan melihat <radical>dua puluh</radical> <radical>besar</radical> <radical>cross</radical>berjajar di depan Anda. Salib membuat Anda takut dan ini terlalu banyak bagi Anda untuk terus berjalan sehingga Anda memutuskan untuk <kanji>berlari</kanji> secepat mungkin untuk melewatinya.', 'Anda berpikir karena Anda sudah berada dalam <kanji>berlari</kanji> maka Anda mungkin juga <reading>mengasah</reading> (ほん) keterampilan berlari Anda sambil berjalan menyusuri jalan berlintasan yang menakutkan ini.')
    RETURNING id INTO k_2373_berlari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肖', 'kemiripan', 58, 10, 'Anda melihat <radical>triceratops</radical> berdiri di depan <radical>bulan</radical> purnama dan Anda pasti melihat <kanji>kemiripan</kanji> yang sangat kuat. Triceratops memiliki embel-embel bulat di belakang tanduknya dan terlihat seperti bulan purnama yang bulat. Siapa sangka triceratops akan menyerupai bulan!', 'Orang pertama yang melihat <kanji>kemiripan</kanji> ini adalah <reading>Shou</reading>gun (しょう). Itu sebabnya dia memutuskan untuk memasang kepala triceratops dengan bulan di belakangnya di mon (lambang keluarga). Sekarang dia dikenal sebagai shogun dinosaurus bulan purnama, dan dia sangat terkenal.')
    RETURNING id INTO k_2374_kemiripan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '朽', 'membusuk', 58, 11, 'Sebuah <radical>pohon</radical> terjebak di dalam <radical>penjara</radical> di bawah <radical>tanah</radical> dan mulai <kanji>membusuk</kanji> dan <kanji>membusuk</kanji>.', 'Anda mendekati pohon <kanji>busuk</kanji>ting dan melihat beberapa batang <reading>cu</reading>busuk (きゅう) tergantung di dahan-dahannya. TIDAK!')
    RETURNING id INTO k_2375_membusuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '殻', 'sekam', 58, 12, 'Seorang <radical>samurai</radical> meletakkan <radical>dahi</radical> di <radical>meja</radical> di sebelah <radical>senjata</radical> miliknya. Dia hanyalah <kanji>sekam</kanji> dari dirinya yang dulu. <kanji>cangkang</kanji> seorang samurai tidak ada lagi yang tersisa.', 'Satu-satunya cara untuk menghidupkan kembali <kanji>sekam</kanji> seorang samurai adalah dengan membuat <reading>ayam</reading> (かく) berkokok tepat di telinganya.')
    RETURNING id INTO k_2376_sekam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '享', 'menerima', 58, 13, 'Kanji <radikal>terima</radikal> radikal dan <kanji>menerima</kanji> sama persis.', 'Tempat terbaik untuk <kanji>menerima</kanji> apa pun ada di <reading>きょう</reading>と. Kota ini terkenal dengan kualitas segala sesuatu yang mereka buat, jadi jika Anda berada di きょうと, harap berharap bahwa Anda akan menerima sesuatu.')
    RETURNING id INTO k_2377_menerima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '藩', 'wilayah-kekuasaan', 58, 14, 'Anda harus mencapai <radikal>jumlah</radikal> serangan <radikal>bunga</radikal> dan <radikal>tsunami</radikal> tertentu untuk menjadi <kanji>wilayah kekuasaan</kanji> yang sah. Setidaknya di masa lalu. Jika Anda tidak memenuhi salah satu syarat ini, seperti jika Anda selalu dilanda tsunami tetapi Anda hanya memiliki dua atau tiga bunga yang akan tumbuh, Anda tidak bisa menjadi wilayah kekuasaan Anda sendiri.', 'Pemeriksa <kanji>wilayah kekuasaan</kanji> yang paling terkenal adalah <reading>Han</reading> (はん) Solo. Dia mengambil Millennium Falcon-nya dan berkeliling memeriksa bunga-bunga dan tanda-tanda tsunami di masa lalu dan kemudian dia akan mengatakan Anda bisa atau tidak bisa menjadi wilayah kekuasaan Anda sendiri. Terima kasih Han Solo!')
    RETURNING id INTO k_2378_wilayah_kekuasaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '媒', 'penengah', 58, 15, 'Seorang <radikal>manis</radikal> <radikal>wanita</radikal> duduk di bawah <radikal>pohon</radikal> dan bekerja sebagai <kanji>mediator</kanji>. Jika Anda bertengkar dengan seseorang, bawalah dia ke wanita manis di bawah pohon dan dia akan menjadi penengah bagi Anda berdua. Masalah terpecahkan! Terima kasih nona manis!', 'Kamu akan membayar wanita tersebut karena telah menjadi <kanji>mediator</kanji> untuk kalian berdua, tetapi dia hanya berkata, "<reading>Sampai jumpa</reading> ばい)." Anda mencoba memberinya sejumlah uang dan dia menatap mata Anda. "Selamat tinggal." Oh... baiklah, sampai jumpa.')
    RETURNING id INTO k_2379_penengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鶏', 'ayam', 58, 16, '<radical>Suami</radical> Anda sedang mengenakan <radical>cleat</radical> ketika dia secara tidak sengaja menginjak <radical>burung</radical>. Untungnya burung ini adalah <kanji>ayam</kanji>, dan ayam sangat tahan lama!', 'Satu-satunya cara untuk menghentikan <kanji>ayam</kanji> agar tidak menginjak kaki suami Anda dan menginjaknya sampai mati sebagai balas dendam adalah dengan memberinya <reading>ca</reading>ke (けい) yang Anda buat.')
    RETURNING id INTO k_2380_ayam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嘱', 'meminta', 58, 17, 'Jika Anda ingin mengeluarkan <radical>bendera</radikal> dari <radikal>mulut</radikal> <radikal>belalang sembah</radikal> Anda harus membuat <kanji>permintaan</kanji> formal terlebih dahulu. Belalang sembah tidak suka memberikan sesuatu begitu saja, dan mereka cukup jahat sehingga jika Anda mencoba mencuri benderanya, ia mungkin akan menggigit Anda. Jadi buatlah permintaan yang formal dan sopan jika Anda menginginkannya.', 'Setelah Anda <kanji>meminta</kanji>, belalang sembah memberikan benderanya kepada Anda, ia <reading>mengejutkan</reading> (しょく) Anda dengan meludahkannya dari mulutnya ke kaki Anda. Anda tidak mengira permintaan Anda akan berhasil, atau bahkan jika belalang sembah memahami ucapan manusia, namun ia mengejutkan Anda karena melakukan persis seperti yang Anda minta!')
    RETURNING id INTO k_2381_meminta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '迭', 'bergantian', 58, 18, 'Jika <radical>skuter</radical> Anda mengalami <radical>kesalahan</radical>, Anda perlu mencari <kanji>pengganti</kanji>. Semoga asuransi Anda juga akan menanggungnya.', 'Skuter <kanji>alternatif</kanji> seluruhnya terbuat dari <reading>鉄</reading> (てつ). Keras dan dingin serta tidak nyaman saat Anda duduk di atasnya. Itu sebabnya Anda memilih untuk menjadikannya sebagai alternatif dan bukan sebagai skuter sehari-hari.')
    RETURNING id INTO k_2382_bergantian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '椎', 'tulang-belakang', 58, 19, '<radical>pohon</radikal> <radikal>kalkun</radikal> ini telah menempel tepat di <kanji>tulang belakang</kanji> Anda selama berminggu-minggu berturut-turut. Rasa sakitnya mulai tak tertahankan, dan sepertinya tidak ada yang mau membantu Anda.', 'Saat <kanji>tulang belakang</kanji> Anda sepertinya mulai terbiasa dengan tekanan, kalkun pohon mengeluarkan teriakan: "<reading>TWEE</reading>T (つい)!" Yang membuat Anda ngeri, sekawanan kalkun pohon muncul dari pepohonan.')
    RETURNING id INTO k_2383_tulang_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陪', 'menemani', 58, 20, '<radical>gedung</radical> <radical>badut</radical> adalah satu-satunya badut yang diperbolehkan <kanji>menemani</kanji> Anda. Anda membenci semua badut, begitu pula seluruh kota Anda. Tapi badut ini sangat pandai membangun bangunan, dan dia diizinkan meninggalkan bagian kotanya dan menemani Anda saat Anda memperbaiki bangunan bersama.', 'Dia hanya bisa <kanji>menemani</kanji> Anda untuk waktu yang lama dan tak lama lagi tiba waktunya untuk mengucapkan <read>bye</reading> (ばい) lagi.')
    RETURNING id INTO k_2385_menemani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '剖', 'membagi', 58, 21, 'Seorang <radical>badut</radikal> mengambil <radikal>pisau</radikal> dan <kanji>membagi</kanji> dirinya sendiri. Pertama dia membagi dirinya menjadi dua bagian, lalu dia menjadi empat bagian, lalu... oh kenapa dia tidak berhenti?!', 'Badut itu akhirnya berhenti mencoba <kanji>membelah</kanji> dirinya sendiri, dan Anda tidak tahan melihatnya semua. Ambil bola <reading>busur</reading>ling (ぼう) dan lemparkan semua bagiannya yang sudah terbagi!')
    RETURNING id INTO k_2386_membagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '譜', 'silsilah', 58, 22, 'Jika Anda <radical>mengatakan</radical> <radical>barisan</radical> anggota keluarga Anda yang pernah hidup di bumi ini di bawah <radical>matahari</radical>, Anda sebenarnya sedang menjelaskan <kanji>silsilah</kanji> Anda.

Kanji ini juga memiliki arti kedua. Artinya skor, seperti dalam partitur musik atau lembaran musik. Jadi, jika lembaran musik Anda <radical>mengatakan</radical> adalah <radical>barisan</radikal> akord, khususnya nada <radical>sun</radical>nny, itulah <kanji>skor</kanji> sebuah lagu. Nada cerah itu disukai oleh nenek moyang Anda.', 'Jika kamu tidak bisa membedakan antara <kanji>silsilah</kanji> dan <kanji>skor</kanji> musik, kamu adalah <reading>foo</reading>l (ふ) dan saya tidak dapat membantumu. Anda tidak bodoh, bukan? Anda tahu perbedaannya.')
    RETURNING id INTO k_2387_silsilah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '淑', 'anggun', 58, 23, 'Anda hanya dapat menghindari <radical>tsunami</radical> dengan berdiri <radical>di atasnya</radical> di atas <radical>kecil</radical> <radical>bangku</radical> jika Anda sangat <kanji>anggun</kanji>. Jika Anda tidak cukup anggun, tsunami akan menjatuhkan Anda dan bangku Anda serta Anda akan hanyut seperti orang lain.', 'Tidak peduli seberapa <kanji>anggun</kanji> Anda, tsunami tetap <reading>mengguncang</reading> (しゅく) bangku kecil. Di situlah keanggunan Anda muncul. Bangkunya bergetar, tetapi Anda tidak melakukannya. Anda menyeimbangkan diri sendiri dan menolak untuk turun.')
    RETURNING id INTO k_2388_anggun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '帆', 'berlayar', 58, 24, 'Anda mengangkat <radical>handuk</radical> di atas <radical>meja</radical>, <radical>jatuhkan</radical> ke dalam air dan <kanji>berlayar</kanji> menjauh. Anda mengubah handuk menjadi layar sungguhan dan Anda menyeimbangkan diri di atas meja, yang sekarang menjadi perahu.', 'Saat Anda <kanji>berlayar</kanji> menuju lautan, Anda mendengar suara yang familiar berteriak, "Ahoy!" <read>Han</reading> (はん) Panggilan tunggal. Dia juga punya layar handuk, tapi itu ada di Millennium Falcon, yang setengah terendam air.')
    RETURNING id INTO k_2389_berlayar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '憤', 'membenci', 58, 25, 'Anda melihat <radical>jiwa</radikal> di atas <radikal>salib</radikal> yang ditutupi <radikal>bunga</radikal> dengan <radikal>kerang</radikal> di kakinya dan Anda tiba-tiba <kanji>membenci</kanji> mereka. Bukannya Anda ingin menjadi orang yang disalib, tapi begitu banyak orang yang meninggalkan bunga dan kerang untuk mereka. Seharusnya itu kamu...', 'Anda menyadari bahwa Anda <kanji>membenci</kanji> mereka karena sepertinya mereka sedang <membaca>bersenang-senang</reading> (ふん). Anda tidak bersenang-senang, dan Anda ingin bersenang-senang! Beraninya mereka bersenang-senang padahal Anda tidak!')
    RETURNING id INTO k_2390_membenci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酌', 'melayani', 58, 26, 'Tuangkan seluruh <radical>alkohol</radical> Anda ke dalam <radical>kolam</radical> untuk <kanji>melayani</kanji> semua tamu Anda sekaligus! Mereka semua dapat mengambil alkohol sebanyak atau sesedikit yang mereka inginkan! Ide yang bagus!', 'Saat Anda <kanji>melayani</kanji> tamu Anda (dan diri Anda sendiri), Anda melihat ke atas dan melihat <reading>Shaq</reading> (しゃく) juga mencoba melayani mereka. Dan yang saya maksud dengan servis adalah dilayani karena dia melemparkannya ke dalam kolam.')
    RETURNING id INTO k_2391_melayani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '暁', 'fajar', 58, 27, '<radical>Penjudi</radical> biasanya hanya melihat <radical>matahari</radical> saat <kanji>fajar</kanji>. They gamble all day and through the night, and if they leave it''s at the crack of dawn to get home, clean up, and then go back.', 'Jika Anda bangun saat <kanji>fajar</kanji> Anda juga akan melihat <reading>あか</reading>(merah) <reading>つき</reading>(bulan).あかつき hanya terjadi saat matahari terbit, jadi biasanya hanya penjudi yang melihatnya. Tapi jika Anda bangun pagi, Anda juga bisa melihatnya!')
    RETURNING id INTO k_2392_fajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '傑', 'kebesaran', 58, 28, '<radical>pemimpin</radikal> melakukan <radikal>tarian</radikal> di atas <radikal>pohon</radikal> untuk menunjukkan <kanji>kehebatannya</kanji> kepada semua orang di sekitarnya. Jika dia menari sepanjang jalan di atas pohon, maka tidak ada yang bisa menyangkal <kanji>keunggulan</kanji>-nya!', 'Jika Anda tidak mengenali <kanji>kehebatan</kanji> pemimpinnya, dia akan melemparkan <reading>ketsu</reading>p (けつ) ke seluruh tubuh Anda (ini adalah campuran spesial dari saus tomat dan saus tomat). Dan itu ketsup karena bentuknya seperti darah. Darah yang akan dia tumpahkan jika Anda tidak melihat ke atas dan bertepuk tangan saat melihat tariannya yang hebat.')
    RETURNING id INTO k_2393_kebesaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '錠', 'kunci', 58, 29, 'Tunggu, Anda punya <radical>emas</radical> <radical>atap</radical> di atas <radical>rak mantel</radical> Anda? Lebih baik pasang <kanji>kunci</kanji> di atasnya.', 'Orang terbaik yang harus dikunjungi untuk mendapatkan <kanji>kunci</kanji> yang bagus adalah <reading>Joe</reading> (じょう) si buruh tani. Joe tidak hanya pandai bertani — dia terampil dalam segala jenis pekerjaan praktis, termasuk tukang kunci.')
    RETURNING id INTO k_2394_kunci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '凌', 'menderita', 58, 30, 'Jika Anda menyentuh <radical>es</radical> terlalu lama, Anda akan terkena <radical>radang dingin</radikal> dan itu adalah hal yang sangat sulit untuk <kanji>ditanggung</kanji>. Banyak orang tidak bisa melakukannya dan mati. Dan lagi, Anda berhasil menahan sentuhan es cukup lama hingga terkena radang dingin, jadi mungkin ini perlengkapan bayi untuk Anda.', 'Orang terbaik di dunia yang mampu <kanji>menahan</kanji> rasa sakit adalah para ninja <reading>shino</reading>bi (しの)! Mereka berlatih dengan cara nongkrong di area beku sepanjang waktu dan tidak mengeluh sama sekali. Mungkin jika rasa sakitnya terlalu parah, Anda bisa meminta nasihat dari mereka.')
    RETURNING id INTO k_2395_menderita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '瑞', 'selamat', 58, 31, '<radical>raja</radical> <radical>menyapu</radical>semua <radical>gunung</radical> hingga menjadi tanah datar sehingga dia bisa melihat semua orang di kerajaan dari jendela kastilnya. Anda harus menyampaikan <kanji>selamat</kanji> Anda kepadanya. Sekarang, cepat katakan padanya ini ide yang bagus.', 'Saat Anda mengucapkan "<kanji>Selamat</kanji>!" kamu sudah mulai <read>rindu</reading> (みず) pegunungan yang indah itu. Tapi jangan biarkan kehilangan mereka merusak ucapan selamat Anda! Jangan biarkan raja tahu!')
    RETURNING id INTO k_2396_selamat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '菅', 'sedimen', 58, 32, '<radical>Bunga</radical> yang tumbuh di <radical>atap</radical> Anda yang terlihat seperti <radical>beruang</radical> yang sedang tidur adalah <kanji>sedge</kanji>. Sedge tumbuh di seluruh dunia!', 'Lain kali Anda melihat <kanji>sedge</kanji> menggigitnya. Rasanya seperti <reading>suga</reading>r (すが)! Luckily, it don''t taste like bear.')
    RETURNING id INTO k_2397_sedimen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '璃', 'seperti-kaca', 58, 33, '<radical>raja</radikal> ingin Anda membuat <radikal>roket</radikal> yang terlihat <kanji>seperti kaca</kanji>. Ini tidak akan terlalu stabil, dan mungkin tidak akan berhasil, tapi membuatnya berkilau dan cantik adalah satu-satunya cara untuk membuat raja menyetujuinya.', 'Anda mengambil roket <kanji>kaca</kanji> dan mencoba memasukkan beberapa <reading>buluh</reading> (り) tipis ke dalamnya untuk menopangnya. Namun karena bening dan berkaca-kaca maka raja melihatnya pada detik-detik terakhir.')
    RETURNING id INTO k_2399_seperti_kaca;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2363_lapis_lazuli, 'Lapis Lazuli', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2363_lapis_lazuli, 'る', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2363_lapis_lazuli, 'りゅう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2365_sulfur, 'Sulfur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2365_sulfur, 'Sulfur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2365_sulfur, 'りゅう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2366_maaf, 'Maaf', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2366_maaf, 'しゃ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2367_mencuri, 'Mencuri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2367_mencuri, 'せつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2367_mencuri, 'ぬす', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2367_mencuri, 'ひそ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2368_mendesah, 'Mendesah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2368_mendesah, 'がい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2369_bantuan, 'Bantuan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2369_bantuan, 'ふ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2369_bantuan, 'たす', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2370_bermain, 'Bermain', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2370_bermain, 'ぎ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2370_bermain, 'げ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2370_bermain, 'ざ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2370_bermain, 'じゃ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2370_bermain, 'たわむ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2372_berlumpur, 'Berlumpur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2372_berlumpur, 'Najis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2372_berlumpur, 'だく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2372_berlumpur, 'じょく', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2372_berlumpur, 'にご', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2373_berlari, 'Berlari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2373_berlari, 'Kesibukan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2373_berlari, 'ほん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2373_berlari, 'はし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2374_kemiripan, 'Kemiripan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2374_kemiripan, 'しょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2374_kemiripan, 'あやか', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2375_membusuk, 'Membusuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2375_membusuk, 'Membusuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2375_membusuk, 'きゅう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2375_membusuk, 'く', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2376_sekam, 'Sekam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2376_sekam, 'Kerang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2376_sekam, 'かく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2376_sekam, 'こく', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2376_sekam, 'ばい', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2376_sekam, 'から', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2376_sekam, 'がら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2377_menerima, 'Menerima', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2377_menerima, 'きょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2377_menerima, 'こう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2377_menerima, 'う', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2378_wilayah_kekuasaan, 'wilayah kekuasaan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2378_wilayah_kekuasaan, 'はん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2379_penengah, 'Penengah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2379_penengah, 'ばい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2379_penengah, 'なこうど', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2380_ayam, 'Ayam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2380_ayam, 'けい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2380_ayam, 'とり', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2380_ayam, 'にわとり', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2381_meminta, 'Meminta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2381_meminta, 'Mempercayakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2381_meminta, 'しょく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2381_meminta, 'たの', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2382_bergantian, 'Bergantian', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2382_bergantian, 'てつ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2383_tulang_belakang, 'Tulang belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2383_tulang_belakang, 'pohon beech hijau abadi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2383_tulang_belakang, 'つい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2383_tulang_belakang, 'しい', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2385_menemani, 'Menemani', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2385_menemani, 'ばい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2386_membagi, 'Membagi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2386_membagi, 'ぼう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2387_silsilah, 'Silsilah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2387_silsilah, 'Skor', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2387_silsilah, 'ふ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2388_anggun, 'Anggun', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2388_anggun, 'しゅく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2388_anggun, 'しと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2389_berlayar, 'Berlayar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2389_berlayar, 'はん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2389_berlayar, 'ほ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2390_membenci, 'Membenci', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2390_membenci, 'ふん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2390_membenci, 'いきどお', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2391_melayani, 'Melayani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2391_melayani, 'Sendok', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2391_melayani, 'しゃく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2391_melayani, 'く', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2392_fajar, 'Fajar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2392_fajar, 'あかつき', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2392_fajar, 'さと', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2392_fajar, 'きょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2392_fajar, 'ぎょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2393_kebesaran, 'Kebesaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2393_kebesaran, 'Keunggulan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2393_kebesaran, 'けつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2393_kebesaran, 'すぐ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2394_kunci, 'Kunci', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2394_kunci, 'じょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2395_menderita, 'Menderita', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2395_menderita, 'しの', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2395_menderita, 'りょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2396_selamat, 'Selamat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2396_selamat, 'みず', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2396_selamat, 'しるし', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2396_selamat, 'すい', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2396_selamat, 'ずい', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2397_sedimen, 'sedimen', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2397_sedimen, 'すが', true, 'nanori');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2397_sedimen, 'かん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2397_sedimen, 'けん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2397_sedimen, 'すげ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2399_seperti_kaca, 'Seperti kaca', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2399_seperti_kaca, 'り', true, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '東方', 'ke-arah-timur', 58, 34, '<kanji>timur</kanji> <kanji>Arah</kanji> adalah <vocabulary>ke arah timur</vocabulary> atau <vocabulary>Timur</vocabulary>.

Kata ini memiliki kesan kuno, jadi Anda mungkin hanya menemukannya dalam fiksi atau tulisan sejarah. Atau, jika Anda seorang gamer, seri game 東方 Project.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_2897_ke_arah_timur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '辛勝', 'kemenangan-sempit', 58, 35, '<kanji>pedas</kanji> <kanji>kemenangan</kanji> adalah <vocabulary>kemenangan tipis</vocabulary>. Agak masuk akal, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_6794_kemenangan_sempit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '享受', 'kenikmatan', 58, 36, 'Hal terbaik untuk <kanji>diterima</kanji> dan <kanji>diterima</kanji> ke dalam hidup Anda adalah <vocabulary>kenikmatan</vocabulary>! Jangan menghalanginya, biarkan masuk! Berbahagialah!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8434_kenikmatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '傑作', 'mahakarya', 58, 37, 'Sesuatu yang Anda <kanji>buat</kanji> yang memancarkan <kanji>keagungan</kanji> adalah <vocabulary>mahakarya</vocabulary> Anda. <vocabulary>karya terbaik</vocabulary> yang pernah Anda buat sepanjang hidup Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8435_mahakarya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '豪傑', 'pahlawan', 58, 38, 'Jika Anda melihat kembali sejarah dan melihat seseorang yang <kanji>luar biasa</kanji> <kanji>kehebatan</kanji>, mereka mungkin adalah <vocabulary>pahlawan</vocabulary>. Bukan sekedar orang biasa, tapi <vocabulary>orang luar biasa</vocabulary> seperti Hercules atau Mae Jemison.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8436_pahlawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凌ぐ', 'untuk-bertahan', 58, 39, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bertahan</kanji>, jadi versi kata kerjanya adalah <vocabulary>bertahan</vocabulary> atau <vocabulary>menjaga</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!')
    RETURNING id INTO v_8437_untuk_bertahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '解剖', 'autopsi', 58, 40, '<kanji>Membagi</kanji> sebuah tubuh dan <kanji>melepaskan</kanji> organ-organnya untuk melakukan <vocabulary>otopsi</vocabulary>. Anda harus memotong semuanya dan menguraikan bagian-bagiannya untuk mengetahui mengapa orang atau hewan tersebut mati.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8438_autopsi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '呆け', 'bodoh', 58, 41, 'Seseorang yang <kanji>terkejut</kanji>sepanjang waktu pada segala hal akan terlihat seperti <vocabulary>idiot</vocabulary>. Pada titik ini, memasukkan minuman Anda ke dalam gelas bukanlah hal yang mengejutkan. Maksudku, ayolah. Hanya <vocabulary>bodoh</vocabulary> yang membiarkan dirinya terkejut dengan semua yang dilihatnya.', 'Ingatkah saat kamu belajar 呆ける? Potong saja bagian る dari ujungnya dan hasilnya persis sama! Jika Anda dapat mengingatnya, Anda juga akan mengingat bacaan ini.')
    RETURNING id INTO v_8439_bodoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '呆気', 'tercengang', 58, 42, '<kanji>energi</kanji> dari <kanji>kejutan</kanji> memenuhi tubuh Anda dan membuat Anda <vocabulary>tercengang</vocabulary>. Anda sangat <vocabulary>terkejut</vocabulary> dengan gelombang keterkejutan ini sehingga yang dapat Anda lakukan hanyalah berdiam diri dan membiarkan energi mengalir melalui diri Anda.', 'Kata ini menggunakan bacaan kun''yomi untuk satu kanji dan bacaan on''yomi untuk kanji lainnya. Ingatlah bahwa itu adalah dua bacaan yang tidak Anda pelajari saat mempelajari kanji dan Anda seharusnya baik-baik saja.')
    RETURNING id INTO v_8440_tercengang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '呆れ返る', 'benar-benar-terkagum-kagum', 58, 43, 'Ini merupakan kombinasi dari kata 呆れる yang berarti "kagum" dan 返る yang berarti "dikembalikan". Anda begitu kagum pada sesuatu sehingga hal itu terus-menerus terlintas dalam pikiran Anda. Artinya <vocabulary>benar-benar takjub</vocabulary>!', 'Ini merupakan gabungan kata 呆れる dan 返る. 呆れる menjadi 呆れ dan Anda tinggal menambahkan 返る ke dalamnya. Jadi membaca ini seharusnya cukup sederhana.')
    RETURNING id INTO v_8441_benar_benar_terkagum_kagum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '嘱託', 'karyawan-paruh-waktu', 58, 44, 'Sebuah perusahaan <kanji>meminta</kanji>pekerjaan konsinyasi</kanji>dan Anda mengambilnya untuk menjadi <vocabulary>karyawan paruh waktu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8442_karyawan_paruh_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '奔走', 'berlari-tentang', 58, 45, 'Jika Anda <kanji>sibuk</kanji> dan <kanji>berlari</kanji> sepanjang hari karena sibuk, Anda akhirnya <vocabulary>berlari</vocabulary> untuk menyelesaikan semuanya. Anda akan <vocabulary>sibuk</vocabulary> menyelesaikan semuanya, namun <vocabulary>usaha</vocabulary> Anda tidak akan sia-sia!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8443_berlari_tentang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '奔放', 'liar', 58, 46, 'Suatu hari nanti Anda akan <kanji>berlari</kanji>, <kanji>melepaskan</kanji> dari dunia dan masalahnya dan pada akhirnya Anda akan menjadi <vocabulary>liar</vocabulary>. Semua tindakan Anda akan sepenuhnya <vocabulary>tanpa hambatan</vocabulary> saat Anda tidak terikat dengan sekolah atau pekerjaan Anda. Itu akan luar biasa!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati saja karena ほう menjadi ぽう di sini.')
    RETURNING id INTO v_8444_liar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '媒介', 'perantara', 58, 47, 'Seorang <kanji>mediator</kanji> <kanji>yang terjebak di</kanji> di tengah-tengah sekelompok orang yang sedang marah akhirnya menjadi <vocabulary>perantara</vocabulary> di antara mereka. Mediator tidak bisa mengabaikan apa yang terjadi di sekitar mereka, dan mereka memiliki alat untuk memperbaikinya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8445_perantara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '媒体', 'media', 58, 48, 'Seorang <kanji>mediator</kanji> yang bekerja dengan seseorang yang tidak memiliki <kanji>tubuh</kanji> harus menggunakan semacam <vocabulary>media</vocabulary> fana untuk mencatat apa yang mereka katakan. Media cetak? Tentu. media elektronik? Baiklah? Media hantu? TIDAK! Manusia tidak bisa membaca hal itu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8446_media;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '触媒', 'katalisator', 58, 49, 'Jika seorang <kanji>mediator</kanji> <kanji>menyentuh</kanji>orang dengan cara yang benar, mereka akan menjadi <vocabulary>katalis</vocabulary> perubahan. Ini bisa menjadi perubahan yang baik atau buruk tergantung pada apa yang mereka lakukan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8447_katalisator;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '媒酌', 'penjaruman', 58, 50, 'Seorang <kanji>mediator</kanji> <kanji>melayani</kanji> keluarga dan bahkan negara dengan <vocabulary>menjodohkan</vocabulary> untuk mereka. Mereka mengenal semua orang dan segalanya sehingga untuk menghentikan pertengkaran dan perang keluarga, mereka menyatukan dua orang dari masing-masing pihak untuk menikah dan itu memperbaiki segalanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8448_penjaruman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帆', 'berlayar', 58, 51, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Saat <vocabulary>berlayar</vocabulary> dengan kapal, jangan lupa membawa <reading>cangkul</reading> taman (ほ). Jika Anda kehilangan layar atau dayung, Anda selalu dapat menggunakan cangkul untuk mendayung kembali. Atau jika Anda mengalami kecelakaan di sebuah pulau, Anda dapat menggunakan cangkul untuk berkebun agar Anda tidak mati kelaparan! Cangkul sangat berguna!')
    RETURNING id INTO v_8449_berlayar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帆走', 'pelayaran', 58, 52, '<kanji>berlayar</kanji> <kanji>menjalankan</kanji> perahu di sepanjang laut dengan <vocabulary>berlayar</vocabulary>! Anda tidak dapat berlari di sepanjang air kecuali layarnya terbuka dan menangkap angin.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8450_pelayaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弦楽器', 'alat-musik-gesek', 58, 53, 'Anda sudah tahu bahwa 楽器 berarti "alat musik". Nah, yang ini punya <kanji>string</kanji>, menjadikannya <vocabulary>instrumen senar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Tentu, 楽 memiliki dua bacaan on''yomi, tapi ingat: jika ada dalam kata tentang 音楽 (musik), maka dibaca がく. Perlu diingat bahwa がく disingkat menjadi がっ di sini.')
    RETURNING id INTO v_8451_alat_musik_gesek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '管弦楽', 'musik-orkestra', 58, 54, 'Anda sudah mengetahui bahwa 弦楽 berarti "musik senar", jadi tambahkan beberapa <kanji>pipa</kanji> ke dalamnya, seperti terompet dan saksofon, dan Anda akan mendapatkan <vocabulary>musik orkestra</vocabulary>. Anda tidak dapat memiliki keseluruhan orkestra hanya dengan bagian string!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. 楽 memiliki dua bacaan on''yomi, tapi tahukah Anda ini がく di sini karena ini tentang 音楽 (musik)!')
    RETURNING id INTO v_8452_musik_orkestra;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '感慨', 'perasaan-kuat', 58, 55, '<kanji>Perasaan</kanji> yang membuat Anda <kanji>menghela nafas</kanji> dengan suara keras sebenarnya <vocabulary>perasaan yang kuat</vocabulary>. Anda tidak akan menghela nafas jika mereka tidak terlalu menggerakkan Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8458_perasaan_kuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憤慨', 'amarah', 58, 56, 'Kamu <kanji>sangat membenci</kanji> seseorang sehingga kamu <kanji>menghela nafas</kanji> dengan <vocabulary>marah</vocabulary> setiap kali orang itu berada di dekatmu. Semua yang mereka lakukan membuat Anda merasakan <vocabulary>kebencian</vocabulary> yang sangat kuat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8459_amarah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憤り', 'kebencian', 58, 57, 'Ini adalah versi kata benda dari kanji <kanji>resent</kanji>, jadi artinya <vocabulary>dendam</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Kamu merasakan <vocabulary>kebencian</vocabulary> yang cukup kuat terhadap teman sekamarmu karena kamu harus menyentuh <reading>icky doo</reading>r (いきどお) mereka hari ini dan itu ditutupi dengan apa yang kamu harap adalah lem. Atau pembekuan. UHG pintu yang menjijikkan. Ini adalah <vocabulary>kebiadaban</vocabulary>!!!')
    RETURNING id INTO v_8460_kebencian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遊戯', 'bermain', 58, 58, 'Sepanjang hari Anda <kanji>bermain</kanji> dan <kanji>bermain</kanji>, karena Anda menyukai <vocabulary>bermain</vocabulary>. Tidak ada yang lebih baik dari <vocabulary>sebuah permainan</vocabulary>!

遊戯 adalah istilah formal untuk bermain atau <vocabulary>bermain</vocabulary>. Ini sering digunakan untuk permainan terstruktur, terutama jenis yang diselenggarakan untuk anak kecil di taman kanak-kanak atau tempat penitipan anak, di mana permainan tersebut melibatkan musik, gerakan, dan rutinitas sederhana. Anda juga akan melihatnya dalam istilah seperti 遊戯施設 (fasilitas bermain).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8461_bermain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '戯曲', 'drama', 58, 59, '<kanji>permainan</kanji> yang menggunakan banyak <kanji>musik</kanji> yang intens dan emosional adalah <vocabulary>drama</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8462_drama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '戯れる', 'untuk-bermain-main', 58, 60, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bermain</kanji>, jadi versi kata kerjanya adalah <vocabulary>to play with</vocabulary> atau <vocabulary>to play with</vocabulary> seseorang.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Semua orang sepertinya selalu membentak Anda ketika Anda mulai <vocabulary>memmain-mainkan</vocabulary> handuk dan <reading>towe</reading>l <reading>mo</reading>ves (たわむ) Anda. Hanya karena Anda tidak memiliki apa pun di bawahnya bukan berarti Anda tidak bisa memainkannya! Benar?!')
    RETURNING id INTO v_8463_untuk_bermain_main;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '扶助', 'bantuan', 58, 61, '<kanji>Bantu</kanji> dan <kanji>bantu</kanji> seseorang dan Anda akan <vocabulary>membantu</vocabulary> dan <vocabulary>membantu</vocabulary> mereka! Kerja bagus, kamu orang baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8464_bantuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '扶養', 'mendukung', 58, 62, '<kanji>Bantu</kanji> dan <kanji>asuh</kanji> seseorang untuk menunjukkan <vocabulary>dukungan</vocabulary> Anda kepada mereka. 

扶養 mengacu pada dukungan hukum dan finansial terhadap seseorang, seperti anak, pasangan, atau anggota keluarga. Kata ini kebanyakan muncul di formulir pajak dengan istilah seperti 扶養家族 (tanggungan anggota keluarga) dan 扶養控除 (pengurangan pajak tanggungan), jadi dalam percakapan santai, 扶養 dengan sendirinya sering digunakan untuk merujuk pada salah satu dari hal-hal ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8465_mendukung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '拍子', 'mengalahkan', 58, 63, 'Bagilah sebuah <kanji>ketukan</kanji> menjadi semua <kanji>turunan</kanji>nya dan Anda akan mendapatkan lebih dari satu ketukan saja. Anda mempunyai beragam <vocabulary>beat</vocabulary>, membuat <vocabulary>ritme</vocabulary>, dan mengatur <vocabulary>tempo</vocabulary>.

Selain itu, ini juga bisa merujuk pada <vocabulary>saat</vocabulary> sesuatu terjadi. Anda biasanya akan menemukan ini dalam bentuk ~した拍子に. Lihatlah kalimat konteks kami untuk melihat penggunaan ini dalam tindakan!', 'Ini adalah kata jukugo yang menggunakan pembacaan on''yomi pada kanjinya. Namun, 拍 menggunakan bacaan sekundernya, yang belum Anda pelajari, jadi inilah mnemonik untuk membantu Anda:

Anda mendapatkan <vocabulary>ketukan</vocabulary> dan <vocabulary>ritme</vocabulary> dalam tubuh Anda. Mau tidak mau kamu akan bernyanyi dengan lantang, "<reading>Hei</reading> (ひょう), heyo!" Rasakan ritme itu dan bernyanyilah bersamaku! HEYO HEYO!')
    RETURNING id INTO v_8466_mengalahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '暁', 'fajar', 58, 64, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8467_fajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不朽', 'kekal', 58, 65, 'Jika <kanji>tidak</kanji> <kanji>membusuk</kanji> maka <vocabulary>abadi</vocabulary>. Itu akan hidup selamanya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8468_kekal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '老朽', 'jompo', 58, 66, '<kanji>Orang lanjut usia</kanji> mulai <kanji>membusuk</kanji> dan mereka menjadi <vocabulary>jompo</vocabulary> dan kotor. Seperti mayat. Bleh. Untung saja saya tidak akan pernah <vocabulary>terlalu tua</vocabulary>. Ho ho ho!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8469_jompo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '朽ちる', 'membusuk', 58, 67, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>peluruhan</kanji>, jadi versi kata kerjanya adalah <vocabulary>meluruh</vocabulary> atau <vocabulary>mati</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Seluruh dunia akan mulai <vocabulary>mati</vocabulary> jika tidak ada <reading>coo</reading>kies (く) yang tersisa! Dapatkah Anda membayangkan hidup Anda tanpa kue? Pepohonan dan hewan juga akan mati. Karena mereka menyukai kue. Bukan hanya kita manusia.')
    RETURNING id INTO v_8470_membusuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脊椎', 'tulang-belakang', 58, 68, '<kanji>tulang punggung</kanji> <kanji>perawakan</kanji> Anda sebenarnya hanyalah <vocabulary>tulang punggung</vocabulary> Anda, ketika Anda memikirkannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8471_tulang_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '殻', 'kerang', 58, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Kata ini tidak terbatas pada cangkang binatang saja! Ini juga menutupi cangkang biji, atau sekam.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Shell</vocabulary> adalah pertahanan yang baik terhadap <reading>から</reading>て daging. Kamu tidak akan terluka jika kamu mempunyai cangkang kuat yang bagus untuk melindungimu dari orang aneh yang memotong-motong itu yang muncul entah dari mana.')
    RETURNING id INTO v_8472_kerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '地殻', 'kerak-bumi', 58, 70, '<kanji>cangkang</kanji> bumi disebut <vocabulary>kerak bumi</vocabulary>. Anda seharusnya mempelajarinya dalam ilmu kebumian. Dan jika belum, setidaknya Anda tahu sekarang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8473_kerak_bumi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '淑やか', 'anggun', 58, 71, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika kamu ingin menjadi <vocabulary>anggun</vocabulary> dan <vocabulary>sopan</vocabulary> kamu harus merahasiakan <reading>shee</reading>p <reading>toe</reading> (しと) kamu. Anda menyukai jari kaki domba Anda (bagaimanapun juga ini unik) tetapi Anda berhati-hati menyembunyikannya ketika Anda ingin bersikap rendah hati dan lembut dan sebagainya.')
    RETURNING id INTO v_8474_anggun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '淑女', 'wanita', 58, 72, '<kanji>anggun</kanji> <kanji>wanita</kanji> adalah <vocabulary>wanita</vocabulary> yang pantas dan mewah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8475_wanita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '汚濁', 'polusi', 58, 73, 'Jika udaranya <kanji>berlumpur</kanji> dan <kanji>kotor</kanji> itu karena terlalu banyak <vocabulary>polusi</vocabulary> di area tersebut. Anda harus memakai masker dan berhati-hati terhadap <vocabulary>kontaminasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8476_polusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '濁す', 'membuat-berlumpur', 58, 74, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berlumpur</kanji>, jadi versi kata kerjanya adalah <vocabulary>membuat berlumpur</vocabulary> atau <vocabulary>membuat mendung</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika kamu ingin <vocabulary>to make muddy</vocabulary>, artinya membuat dirimu berlumpur, kamu harus <reading>lutut</reading> <reading>go</reading> (にご) terlebih dahulu. Ketika Anda berlutut terlebih dahulu, lumpur memercik ke seluruh tubuh Anda tetapi Anda tidak melukai tangan atau pantat Anda saat melakukannya.')
    RETURNING id INTO v_8477_membuat_berlumpur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '濁流', 'arus-berlumpur', 58, 75, 'Apa cara lain untuk mengatakan <kanji>berlumpur</kanji> <kanji>aliran</kanji>? Itu bisa berupa <vocabulary>arus berlumpur</vocabulary> atau <vocabulary>sungai berlumpur</vocabulary>. 

濁流 biasanya mengacu pada arus yang bergerak cepat yang disertai dengan kotoran dan serpihan. Anda akan sering melihatnya dalam konteks banjir atau hujan lebat, sehingga sungai yang keruh dapat dikaitkan dengan bahaya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8478_arus_berlumpur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '起訴猶予', 'penangguhan-dakwaan', 58, 76, 'Ingat bagaimana Anda mengetahui bahwa 猶予 berarti "perpanjangan?" Nah, Anda <kanji>bangun</kanji> dan siap untuk <kanji>menuntut</kanji> orang ketika Anda diberi tahu bahwa ada perpanjangan waktu, artinya ada <vocabulary>penangguhan dakwaan</vocabulary> pada kasus Anda. Apa-apaan ini, kamu sudah bangun dan siap untuk ini! Sekarang Anda harus menunggu untuk mencoba dan menuntut mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8479_penangguhan_dakwaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '執行猶予', 'kalimat-yang-ditangguhkan', 58, 77, 'Ingat bagaimana Anda mengetahui bahwa 猶予 berarti "perpanjangan?" Anda seharusnya <kanji>melaksanakan</kanji> hukuman Anda dan <kanji>masuk</kanji> ke penjara, namun hakim memberi Anda 猶予 (perpanjangan). Dengan kata lain, Anda menerima <vocabulary>kalimat yang ditangguhkan</vocabulary>.

執行猶予 berarti Anda bersalah, tetapi hakim menekan tombol jeda pada masa penjara Anda. Jika Anda menghindari masalah, hukuman penjara akan diberhentikan. Namun jika Anda melakukan kejahatan lain, Anda harus menjalani hukuman awal dan hukuman baru. Pada dasarnya, Anda lebih baik mengharapkan hukuman percobaan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8480_kalimat_yang_ditangguhkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瑞々しい', 'segar', 58, 78, 'Anda memberikan <kanji>selamat</kanji> kepada seseorang beberapa kali karena mereka terlihat <vocabulary>segar</vocabulary> dan <vocabulary>bersemangat</vocabulary>. Anda merasa harus melakukannya karena pasti menyenangkan tetap seperti itu. Suatu hari nanti hal itu akan hilang, jadi pastikan Anda segera mengucapkannya beberapa kali.', 'Pembacaannya hanyalah pembacaan kun''yomi (yang dipelajari dengan kanji) dua kali berturut-turut.')
    RETURNING id INTO v_8481_segar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '硫酸', 'asam-sulfat', 58, 79, 'Campurkan <kanji>belerang</kanji> dan <kanji>asam</kanji> dan Anda akan mendapatkan <vocabulary>asam sulfat</vocabulary>! Begitulah cara sains bekerja! Sederhana sekali!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8482_asam_sulfat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '窃盗', 'pencurian', 58, 80, 'Anda memutuskan untuk <kanji>mencuri</kanji>... dan kemudian Anda <kanji>mencuri</kanji> lagi beberapa menit kemudian! Sekarang Anda dicari karena <vocabulary>pencurian</vocabulary>. <vocabulary>Mencuri</vocabulary> itu salah, Anda seharusnya tahu lebih baik!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8483_pencurian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紳士協定', 'perjanjian-tuan-tuan', 58, 81, 'Ingat bagaimana Anda mengetahui bahwa 紳士 berarti "pria terhormat?" Nah, ketika dua pria <kanji>menentukan</kanji> bahwa hal terbaik untuk dilakukan adalah <kanji>bekerja sama</kanji>, mereka membentuk <vocabulary>kesepakatan yang terhormat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8484_perjanjian_tuan_tuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '絹糸', 'benang-sutra', 58, 82, '<kanji>sutra</kanji> <kanji>benang</kanji> adalah <vocabulary>benang sutra</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 絹 dan 糸, jadi inilah mnemonik untuk membantu Anda:

Siapa yang hanya menggunakan pakaian yang terbuat dari <vocabulary>benang sutra</vocabulary>? <reading>Ken</reading> (けん) <reading>shee</reading>p (し)! Domba Ken sangat khusus, dan hanya mengenakan pakaian yang terbuat dari benang sutra sambil menunggu bulunya tumbuh kembali.

Perhatikan bahwa kata ini juga bisa dibaca dengan kun''yomi sebagai きぬいと. Meskipun けんし cenderung terdengar lebih teknis atau formal, sering kali mengacu pada benang sutra sebagai bahan tekstil atau dalam konteks industri, きぬいと lebih natural dalam percakapan sehari-hari.')
    RETURNING id INTO v_8486_benang_sutra;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '金縛り', 'kelumpuhan-tidur', 58, 83, 'Ingat bagaimana Anda mengetahui bahwa 縛る berarti "mengikat?" Nah, dalam bahasa Jepang terikat dengan <kanji>emas</kanji> berarti Anda mengalami <vocabulary>sleep paralysis</vocabulary>, atau <vocabulary>kelumpuhan sementara</vocabulary>. Bayangkan saja Anda terbangun dari mimpi di mana Anda diikat dengan benang emas, dan mimpi itu menghentikan Anda untuk bergerak.', 'Ini merupakan gabungan kata 金 dan 縛る. Keduanya menggunakan pembacaan kun''yomi, tapi 金 menjadi かな bukannya かね. Jika Anda ingat pengecualian itu, ini seharusnya mudah!')
    RETURNING id INTO v_8487_kelumpuhan_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '縛り首', 'gantung', 58, 84, 'Ingat bagaimana 縛る berarti "mengikat?" Kalau kamu mengikatkan sesuatu pada <kanji>leher</kanji> seseorang maka itu disebut <vocabulary>menggantung</vocabulary>. Mereka mungkin akan mati karenanya juga, jadi bisa juga <vocabulary>kematian karena digantung</vocabulary>.', 'Ini merupakan gabungan kata 縛る dan 首. Keduanya menggunakan pembacaan kun''yomi, jadi ubah saja る menjadi り dan ini cukup sederhana!')
    RETURNING id INTO v_8488_gantung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '縫目', 'lapisan', 58, 85, 'Ingat bagaimana 縫う berarti "menjahit". Satu-satunya cara Anda dapat melihat apakah celana jeans telah dijahit dengan <kanji>mata</kanji> Anda adalah jika Anda melihat <vocabulary>jahitan</vocabulary>. Jika mata Anda tidak dapat melihat <vocabulary>stitch</vocabulary>es, kemungkinan jahitan tersebut tidak dijahit sama sekali. Mungkin itu direkatkan dengan super.', 'Ini adalah kombinasi kata 縫う dan 目. Keduanya menggunakan pembacaan kun''yomi jadi ubah saja う menjadi い dan itu mudah! Anda juga akan melihat kata ini dieja 縫い目 juga. Mereka persis sama!')
    RETURNING id INTO v_8489_lapisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '肖像', 'potret', 58, 86, 'Ketika seni <kanji>menyerupai</kanji>adalah <kanji>gambar</kanji> seseorang, itu adalah <vocabulary>potret</vocabulary>. Dan tidak hanya menyerupai mereka, tapi juga menangkap gambar mereka dengan sempurna. Nah, itulah yang saya sebut potret.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8490_potret;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '藩', 'wilayah-kekuasaan', 58, 87, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8491_wilayah_kekuasaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '藩主', 'tuan-feodal', 58, 88, '<kanji>penguasa</kanji> dari <kanji>wilayah kekuasaan</kanji> adalah <vocabulary>tuan tanah feodal</vocabulary>. Kami juga menyebutnya <vocabulary>Daimyo</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8492_tuan_feodal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '棋譜', 'catatan-permainan-shogi', 58, 89, 'Jika Anda menuliskan <kanji>catur Jepang</kanji> <kanji>skor</kanji>, maka Anda memiliki beberapa <vocabulary>rekor permainan shogi</vocabulary>. Atau <vocabulary>go game record</vocabulary>, bergantung pada game mana yang sedang Anda bicarakan — kata ini dapat digunakan untuk keduanya. Catatan 棋譜 mencakup skor, riwayat pergerakan, waktu pertandingan, dan sebagainya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8494_catatan_permainan_shogi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '楽譜', 'skor-musik', 58, 90, '<kanji>kenyamanan</kanji>ing <kanji>skor</kanji> adalah <vocabulary>skor musik</vocabulary>. Musik benar-benar menenangkan, begitu pula membaca <vocabulary>lembaran musik</vocabulary>. Anda harus mencobanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. 楽 mempunyai dua bacaan on''yomi, tapi tahukah kamu bahwa ini がく di sini karena kata ini tentang 音楽 (musik)!')
    RETURNING id INTO v_8495_skor_musik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '系譜', 'garis-keturunan', 58, 91, 'Ketika <kanji>silsilah</kanji> dan <kanji>silsilah</kanji> bersatu, mereka menghasilkan… <vocabulary>silsilah</vocabulary>. Dan <vocabulary>silsilah</vocabulary>. Menurutku, apel tidak jatuh jauh dari pohonnya.

系譜 adalah istilah formal yang mengacu pada garis keturunan atau perkembangan yang dapat dilacak dan sering dicatat, baik itu orang, budaya, gaya, atau ide. Misalnya, kata tersebut dapat menggambarkan garis keluarga seperti 王家の系譜 (garis keturunan kerajaan), namun juga evolusi dari hal-hal seperti 音楽の系譜 (silsilah suatu gaya musik).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8496_garis_keturunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '年譜', 'catatan-kronologis', 58, 92, 'Tuliskan <kanji>tahun</kanji> dari <kanji>silsilah</kanji> Anda secara berurutan dan itu akan membuat <vocabulary>catatan kronologis</vocabulary> hidup Anda. Lihatlah kembali ketika Anda sudah tua dan keluhkan masa lalu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8497_catatan_kronologis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '譜面', 'lembaran-musik', 58, 93, '<kanji>skor</kanji> di <kanji>permukaan</kanji> adalah <vocabulary>sheet musik</vocabulary> atau <vocabulary>skor musik</vocabulary> Anda. 

譜面 sering kali merujuk secara lebih spesifik pada halaman partitur musik. Untuk istilah yang lebih umum untuk partitur musik, gunakan 楽譜.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8498_lembaran_musik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恩赦', 'amnesti', 58, 94, '<kanji>Maafkan</kanji> seseorang karena <kanji>kebaikan</kanji> di hati Anda dan Anda akan memberi mereka <vocabulary>amnesti</vocabulary>. Anda baik sekali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8499_amnesti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '赦免', 'maaf', 58, 95, '<kanji>alasan</kanji> dan <kanji>pengampunan</kanji> adalah <vocabulary>pengampunan</vocabulary> atau <vocabulary>amnesti</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8500_maaf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '容赦', 'maaf', 58, 96, '<kanji>Bentuklah</kanji> sebuah <kanji>maaf</kanji> dengan mulut Anda dan sebenarnya <vocabulary>maaf</vocabulary> seseorang. Tunjukkan <vocabulary>pemaafan</vocabulary> Anda dengan kata-kata "Saya minta maaf."', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8501_maaf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '更迭', 'perombakan', 58, 97, 'Anda <kanji>memperbarui</kanji> dan <kanji>mengganti</kanji> posisi atau orang tertentu, menjadikannya <vocabulary>perombakan</vocabulary>, atau <vocabulary>pemecatan</vocabulary>.

更迭 umumnya menyoroti pemecatan seseorang dari suatu posisi untuk penggantinya. Anda akan sering melihat ini digunakan dalam konteks politik, seperti perombakan menteri tertentu atau jabatan lain dalam kabinet atau diet; atau secara umum untuk posisi penting di bidang lain juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8502_perombakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '晩酌', 'minuman-malam', 58, 98, 'Pada <kanji>malam</kanji> Anda <kanji>menyajikan</kanji>dan <vocabulary>minuman malam</vocabulary>. Tidak apa-apa untuk sesekali menikmati <vocabulary>minuman kental saat makan malam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8503_minuman_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酌む', 'untuk-melayani', 58, 99, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melayani</kanji>, dan versi kata kerjanya adalah <vocabulary>to scoop</vocabulary> atau <vocabulary>to serve</vocabulary>.

Ini juga bisa berarti <vocabulary>mempertimbangkan</vocabulary> perasaan atau pendapat orang lain. Sepertinya Anda mengetahui perasaan orang tersebut dan mempertimbangkannya!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Apa yang Anda putuskan <vocabulary>untuk diberikan</vocabulary> untuk tamu Anda? <read>Coo</reading>kies (く)! Tapi bukan sembarang kue. Smoothie kue! Mereka lezat dan Anda tidak akan menyajikan apa pun kepada orang lain. Mereka harus meminum minuman kue lezat Anda.')
    RETURNING id INTO v_8504_untuk_melayani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '錠', 'kunci', 58, 100, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8505_kunci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '手錠', 'borgol', 58, 101, 'Anda ingin <kanji>mengunci</kanji> <kanji>tangan</kanji> penjahat ini agar dia tidak memukul kakek lagi. Anda memerlukan <vocabulary>borgol</vocabulary> untuk memastikan dia tidak lagi menjadi penjahat. Lalu kamu bisa mengurungnya dengan baik.', 'Kata ini menggunakan bacaan kun''yomi untuk satu kanji dan bacaan on''yomi untuk kanji lainnya. Anda mengenal keduanya, jadi ini tidak terlalu sulit untuk diingat!')
    RETURNING id INTO v_8506_borgol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '錠剤', 'pil', 58, 102, 'Anda meminum <kanji>dosis</kanji> obat tetapi obat tersebut <kanji>terkunci</kanji> di tenggorokan Anda karena itu adalah jenis <vocabulary>pil</vocabulary> yang Anda kunyah, bukan telan! Anda perlu memperhatikan mana yang mana atau tidak akan membantu sama sekali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8507_pil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陪審', 'juri', 58, 103, 'Siapa yang akan <kanji>menemani</kanji> <kanji>hakim</kanji> dalam memutuskan hasil persidangan? <vocabulary>juri</vocabulary>! Merekalah satu-satunya orang selain hakim yang dapat menentukan nasib seseorang di pengadilan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8508_juri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '飽き', 'kelelahan', 58, 104, 'Jika Anda <kanji>bosan</kanji> terus-menerus, hal itu membuat Anda lelah dan <vocabulary>kelelahan</vocabulary> yang Anda rasakan akan terlihat di wajah Anda.', 'Ingat bagaimana Anda belajar 飽きる? Ambil saja る dan hasilnya sama saja. Jika Anda dapat mengingatnya, Anda akan mengetahui hal ini, tidak masalah!')
    RETURNING id INTO v_8509_kelelahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '飽くまでも', 'sampai-yang-terakhir', 58, 105, 'Aku sangat <kanji>bosan</kanji>. Yang paling membuatku bosan adalah くまでも. Jika Anda mengartikannya secara terpisah, artinya "bahkan seperti beruang". Jadi itu seperti maksudmu aku sangat <kanji>bosan</kanji>, meskipun aku seekor beruang. Jika Anda begitu bosan hingga Anda merasa bosan bahkan seperti seekor beruang, Anda akan bosan <vocabulary>sampai akhir</vocabulary> atau <vocabulary>sampai akhir</vocabulary>. Tidak ada yang bisa menyenangkanmu, dasar orang beruang yang bosan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 飽きる jadi Anda seharusnya bisa membaca yang ini juga!')
    RETURNING id INTO v_8510_sampai_yang_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鶏', 'ayam', 58, 106, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

<vocabulary>ayam</vocabulary> adalah <reading>庭</reading> (taman) <reading>鳥</reading> (burung) (にわとり). Lagipula itu adalah burung yang kamu pelihara di kebunmu!')
    RETURNING id INTO v_8511_ayam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鶏肉', 'daging-ayam', 58, 107, '<kanji>Ayam</kanji> <kanji>daging</kanji> adalah <vocabulary>daging ayam</vocabulary>!', 'Kata ini menggunakan bacaan kun''yomi untuk 鶏 yang belum kamu pelajari (とり), ditambah on''yomi biasa untuk 肉. Kedengarannya rumit, tapi ingat bagaimana 鳥 itu とり? Daging ayam pada dasarnya hanyalah daging burung, jadi anggap saja seperti itu ketika Anda mencoba mengingat bacaan ini!')
    RETURNING id INTO v_8512_daging_ayam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鶏卵', 'telur-ayam', 58, 108, '<kanji>ayam</kanji> <kanji>telur</kanji> adalah <vocabulary>telur ayam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 卵, jadi inilah mnemonik untuk membantu Anda:

Siapa yang suka <vocabulary>telur ayam</vocabulary>? <read>Berlari</reading>dy (らん) Buas! Apalagi saat dia memakannya dengan slim jim. Mmm telur dan slim jim. Anda harus mencobanya.')
    RETURNING id INTO v_8513_telur_ayam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '養鶏', 'peternakan-ayam', 58, 109, '<kanji>Pelihara</kanji> sekumpulan <kanji>ayam</kanji> dan mulailah <vocabulary>peternakan ayam</vocabulary>! Mereka akan menjadi teman terbaik Anda! Satu-satunya temanmu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8514_peternakan_ayam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '諦観', 'pengunduran-diri', 58, 110, 'Saat Anda <kanji>menyerah</kanji> dan hanya mencoba menikmati <kanji>pemandangan</kanji>, itulah <vocabulary>pengunduran diri</vocabulary>. Anda tahu segalanya tidak berjalan baik, dan Anda tahu Anda tidak bisa berbuat apa-apa saat ini, jadi Anda pasrah dengan apa yang akan terjadi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari bacaan ini untuk 諦, jadi inilah mnemonik untuk membantu Anda:

Dalam <vocabulary>pengunduran diri</vocabulary>, Anda membuang semua <reading>ta</reading>ter (てい) Anda ke tanah. Lihatlah tater tots di kaki Anda. Kini mereka tergeletak berserakan di sana, simbol perasaan pasrah Anda.')
    RETURNING id INTO v_8866_pengunduran_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '勿体ない', 'buang-buang', 58, 111, 'Anda <kanji>tidak boleh</kanji> menggunakan <kanji>tubuh</kanji> Anda untuk <vocabulary>pemborosan</vocabulary> apa pun, karena itu akan menjadi <vocabulary>pemborosan</vocabulary>. Anda <vocabulary>terlalu bagus</vocabulary> untuk itu!

Kata ini digunakan dalam berbagai situasi ketika ada perasaan bahwa ada sesuatu yang sia-sia, termasuk makanan, uang, waktu, bakat, dan peluang. Anda juga dapat menggunakannya untuk mengatakan bahwa seseorang terlalu baik untuk suatu pekerjaan, atau bahkan untuk orang lain. Meskipun biasanya ditulis dalam kana, Anda juga akan melihatnya dalam kanji.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji, hanya saja もち menjadi もっ.')
    RETURNING id INTO v_9097_buang_buang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浄瑠璃', 'joruri', 58, 112, 'Jika Anda <kanji>membersihkan</kanji> batu <kanji>lapis lazuli</kanji> hingga menjadi <kanji>seperti kaca</kanji>, Anda dapat menggunakannya dalam pertunjukan <vocabulary>joruri</vocabulary>. Jika Anda belum pernah mendengar tentang joruri, itu adalah nyanyian cerita tradisional Jepang, seperti <vocabulary>ballad</vocabulary>, yang diiringi dengan musik shamisen, dan seringkali juga boneka.', 'Anda mempelajari semua bacaan ini dengan kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_9108_joruri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瑠璃色', 'biru-cerah', 58, 113, 'Apa itu <kanji>lapis lazuli</kanji> <kanji>kaca</kanji> <kanji>warna</kanji>? Warnanya <vocabulary>biru cerah</vocabulary>. Jika Anda belum pernah melihat batu lapis lazuli, carilah dan Anda akan mengetahui mengapa artinya biru cerah!

Kata ini umumnya digunakan dalam sastra.', 'Anda mempelajari ketiga bacaan ini saat mempelajari kanji. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9109_biru_cerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '菅原', 'sugahara', 58, 114, '<kanji>Sedge</kanji> <kanji>field</kanji> adalah <vocabulary>Sugahara</vocabulary> dan <vocabulary>Sugawara</vocabulary>, nama keluarga Jepang. Sedgefield juga merupakan nama keluarga (dan nama tempat) dalam bahasa Inggris, jadi mungkin bisa membantu Anda dalam hal ini!

Ini adalah nama keluarga yang sangat tua, konon berasal dari sarjana zaman Nara Hanishi-no-sukune (土師宿禰) yang mengubah namanya menjadi Sugawara-no-furuhito (菅原古人). Secara historis, nama tersebut telah dikaitkan dengan para cendekiawan dan penulis, termasuk negarawan, cendekiawan, dan penyair terkemuka periode Heian, Sugawara-no-michizane (菅原道真) dan wanita bangsawan, penulis, dan penyair Sugawara-no-takasue-no-musume (菅原孝標女), juga dikenal lebih sederhana sebagai Lady Sarashina di dunia berbahasa Inggris.', 'Satu-satunya bacaan yang belum Anda pelajari untuk nama ini adalah bacaan わら yang tidak beraturan untuk 原, jadi inilah mnemonik yang dapat membantu Anda:

<vocabulary>Sugawara</vocabulary>-san pergi ke <reading>berperang</reading> (わら) sejak lama, tapi akhir-akhir ini dia menikmati kehidupan yang tenang merawat <kanji>sedge</kanji> <kanji>field</kanji> miliknya.')
    RETURNING id INTO v_9113_sugahara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酌', 'menuangkan-alkohol', 58, 115, 'Jika Anda <kanji>melayani</kanji> seseorang, Anda <vocabulary>menuangkan alkohol</vocabulary> atau <vocabulary>menuangkan sake</vocabulary> untuk mereka. Anda <vocabulary>mengisi gelas seseorang</vocabulary>.', 'Anda mempelajari bacaan ini dengan kanji. Bersulang!')
    RETURNING id INTO v_9114_menuangkan_alkohol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酌量', 'membuat-tunjangan', 58, 116, 'Jika Anda <kanji>melayani</kanji> seseorang dengan <kanji>kuantitas</kanji> tertentu, Anda <vocabulary>memberi kelonggaran</vocabulary>. Anda <vocabulary>mempertimbangkan</vocabulary> semua keadaan yang meringankan.', 'Ini adalah kata jukugo yang menggunakan on''yomi untuk kedua kanjinya. Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_9115_membuat_tunjangan;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2897_ke_arah_timur, 'Ke arah timur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2897_ke_arah_timur, 'Arah Timur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2897_ke_arah_timur, 'Timur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_2897_ke_arah_timur, 'とうほう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2897_ke_arah_timur, 'この男は、東方の国から来たらしい。', 'Rupanya pria ini berasal dari negara di Timur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2897_ke_arah_timur, 'その宝は、東方の地のどこかにあるそうだ。', 'Harta karun itu dikatakan berada di suatu tempat di wilayah timur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2897_ke_arah_timur, 'あの牛は、東方の地の生まれだそうです。', 'Saya mendengar bahwa sapi lahir di wilayah timur.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6794_kemenangan_sempit, 'Kemenangan Sempit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6794_kemenangan_sempit, 'しんしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6794_kemenangan_sempit, 'トーフグは著作権侵害の裁判で辛勝しました。', 'Tofugu meraih kemenangan tipis dalam gugatan pelanggaran hak cipta.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8434_kenikmatan, 'Kenikmatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8434_kenikmatan, 'Menikmati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8434_kenikmatan, 'きょうじゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8434_kenikmatan, '我が社は円安の恩恵をもろに享受しているんだ。', 'Perusahaan kami menikmati manfaat yen yang murah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8435_mahakarya, 'Mahakarya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8435_mahakarya, 'Karya Terbaik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8435_mahakarya, 'けっさく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8435_mahakarya, 'これはピカソの傑作だね。', 'Ini adalah mahakarya Picasso.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8436_pahlawan, 'Pahlawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8436_pahlawan, 'Orang yang Berani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8436_pahlawan, 'Orang yang Berani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8436_pahlawan, 'Orang Luar Biasa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8436_pahlawan, 'ごうけつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8436_pahlawan, '日本史上、 最強の豪傑は誰だと思いますか。', 'Menurut Anda siapa pahlawan terhebat dalam sejarah Jepang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8437_untuk_bertahan, 'Untuk Bertahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8437_untuk_bertahan, 'Untuk Menghindari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8437_untuk_bertahan, 'Untuk Mencegah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8437_untuk_bertahan, 'Untuk Melampaui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8437_untuk_bertahan, 'Untuk Mengungguli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8437_untuk_bertahan, 'Ke Gerhana', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8437_untuk_bertahan, 'しのぐ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8437_untuk_bertahan, '貧乏な時は、雑草を食べて飢えを凌いでいました。', 'Ketika saya miskin, saya makan rumput liar untuk mencegah kelaparan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8438_autopsi, 'Autopsi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8438_autopsi, 'Pembedahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8438_autopsi, 'かいぼう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8438_autopsi, '解剖をしてみないと何とも言えません。', 'Kami tidak bisa mengatakan apa pun sampai kami melakukan otopsi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8439_bodoh, 'Bodoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8439_bodoh, 'Bodoh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8439_bodoh, 'ぼけ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8439_bodoh, 'この呆け！ちゃんと前見て歩け。', 'Goblog sia! Lihatlah lurus ke depan dan berjalanlah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8439_bodoh, 'それは呆けの言うことだ。', 'Itu adalah apa yang orang bodoh katakan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8440_tercengang, 'Tercengang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8440_tercengang, 'Kaget', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8440_tercengang, 'Heran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8440_tercengang, 'あっけ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8440_tercengang, '彼女のおかしな言動に、みんな呆気に取られていました。', 'Semua orang terkejut dengan tingkah aneh wanita itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8441_benar_benar_terkagum_kagum, 'Benar-benar Terkagum-kagum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8441_benar_benar_terkagum_kagum, 'Menjadi Tertegun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8441_benar_benar_terkagum_kagum, 'Menjadi Takjub', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8441_benar_benar_terkagum_kagum, 'あきれかえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8441_benar_benar_terkagum_kagum, '部屋があまりに汚かったので、呆れ返ってしまいました。', 'Saya benar-benar kagum karena ruangan itu sangat kotor.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8442_karyawan_paruh_waktu, 'Karyawan Paruh Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8442_karyawan_paruh_waktu, 'Karyawan Sementara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8442_karyawan_paruh_waktu, 'しょくたく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8442_karyawan_paruh_waktu, 'あの人は、再雇用制度を利用した嘱託社員なんです。', 'Orang tersebut adalah pegawai paruh waktu yang menggunakan sistem penempatan kembali.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8443_berlari_tentang, 'Berlari Tentang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8443_berlari_tentang, 'Upaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8443_berlari_tentang, 'Sibuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8443_berlari_tentang, 'ほんそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8443_berlari_tentang, 'うちの社長は資金繰りに奔走しています。', 'Presiden perusahaan saya sibuk mengurusi pembiayaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8444_liar, 'Liar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8444_liar, 'Tanpa hambatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8444_liar, 'Boros', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8444_liar, 'Merajalela', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8444_liar, 'ほんぽう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8444_liar, 'あの自由奔放な性格に惹かれてしまったんだ。', 'Saya tertarik dengan kepribadiannya yang bebas dan tanpa hambatan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8445_perantara, 'Perantara', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8445_perantara, 'ばいかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8445_perantara, '鳥が伝染病の媒介となると仮定しよう。', 'Anggaplah burung telah menjadi perantara penyakit menular.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8446_media, 'Media', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8446_media, 'Sedang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8446_media, 'ばいたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8446_media, '紙媒体で仕入れた情報の方が何故か安心するんだよね。', 'Entah kenapa saya merasa lebih nyaman mendapatkan informasi dari media kertas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8447_katalisator, 'Katalisator', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8447_katalisator, 'しょくばい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8447_katalisator, 'つまり彼は二人にとって触媒のような役割を果たしたということだ。', 'Dengan kata lain, dia berhasil memainkan peran sebagai katalisator bagi kedua orang tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8448_penjaruman, 'Penjaruman', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8448_penjaruman, 'ばいしゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8448_penjaruman, '私どもの結婚式の媒酌の労をおとりいただき、本当にありがとうございました。 ', 'Terima kasih banyak atas semua kerja keras Anda dalam perjodohan upacara pernikahan kami.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8449_berlayar, 'Berlayar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8449_berlayar, 'ほ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8449_berlayar, 'そろそろ帆を替えなくちゃいかんなあ。', 'Sepertinya Anda harus segera mengganti layarnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8450_pelayaran, 'Pelayaran', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8450_pelayaran, 'はんそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8450_pelayaran, 'ほら、あそこにヨットが帆走しているよ。', 'Lihat, ada kapal pesiar yang berlayar di sana.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8451_alat_musik_gesek, 'Alat musik gesek', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8451_alat_musik_gesek, 'げんがっき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8451_alat_musik_gesek, '私の叔父は、弦楽器の修理をしています。', 'Paman saya memperbaiki alat musik petik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8452_musik_orkestra, 'Musik Orkestra', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8452_musik_orkestra, 'かんげんがく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8452_musik_orkestra, '子供に管弦楽を習わせたいと思っています。', 'Saya ingin membiarkan anak-anak belajar musik orkestra.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8458_perasaan_kuat, 'Perasaan Kuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8458_perasaan_kuat, 'Emosi yang Mendalam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8458_perasaan_kuat, 'かんがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8458_perasaan_kuat, '感慨がこめられた彼女の歌声に感動しました。', 'Saya sangat tersentuh oleh perasaan kuat dalam suaranya saat dia bernyanyi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8459_amarah, 'Amarah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8459_amarah, 'Kemarahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8459_amarah, 'Kebencian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8459_amarah, 'ふんがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8459_amarah, '君の身勝手な言動に憤慨しているんだよ。', 'Saya membenci tindakan egois Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8460_kebencian, 'Kebencian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8460_kebencian, 'Kebiadaban', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8460_kebencian, 'Amarah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8460_kebencian, 'いきどおり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8460_kebencian, '職場では理不尽なことが多くて憤りを感じています。', 'Ada banyak hal yang tidak masuk akal yang membuat Anda merasa kesal di tempat kerja.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8461_bermain, 'Bermain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8461_bermain, 'Sebuah Permainan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8461_bermain, 'Bermain', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8461_bermain, 'ゆうぎ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8461_bermain, '園児たちが音楽にあわせてお遊戯会の練習をしています。', 'Anak-anak TK sedang berlatih penampilan mereka, mengikuti irama musik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8461_bermain, 'このホテルは子供向けの遊戯施設が充実していて、子連れ家族に人気があります。', 'Hotel ini memiliki fasilitas bermain yang sangat baik untuk anak-anak dan populer di kalangan keluarga yang bepergian dengan anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8461_bermain, '人間同士の争いなど、結局は神の遊戯にすぎないのかもしれない。だが、もしこれが神の遊戯だとすれば、あまりにも残酷すぎはしないか。', 'Konflik antar manusia mungkin tak lebih dari permainan para dewa.
Namun, jika ini adalah permainan mereka, bukankah ini sangat kejam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8461_bermain, '『遊☆戯☆王』は、さまざまな「遊戯」を通じて勝負や心理戦が繰り広げられる物語で、特にカードゲームを中心に展開される作品です。', '"Yu-Gi-Oh!" adalah kisah di mana pertarungan sengit dan duel psikologis terjadi melalui berbagai permainan, dengan permainan kartu khususnya sebagai pusatnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8462_drama, 'Drama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8462_drama, 'Bermain', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8462_drama, 'ぎきょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8462_drama, 'これは、戯曲を原作としたミュージカルです。', 'Musikal ini awalnya didasarkan pada sebuah drama.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8463_untuk_bermain_main, 'Untuk Bermain-Main', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8463_untuk_bermain_main, 'Untuk Bermain Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8463_untuk_bermain_main, 'Untuk menggoda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8463_untuk_bermain_main, 'Untuk anak-anak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8463_untuk_bermain_main, 'たわむれる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8463_untuk_bermain_main, '子犬と戯れている少女の写真を撮りました。', 'Saya mengambil foto anak anjing dan gadis yang bermain dengannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8464_bantuan, 'Bantuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8464_bantuan, 'Membantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8464_bantuan, 'Mendukung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8464_bantuan, 'ふじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8464_bantuan, 'ほとんどの学生は、父母の扶助を受けて生活している。', 'Sebagian besar siswa menerima dukungan dari orang tua mereka untuk hidup.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8465_mendukung, 'Mendukung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8465_mendukung, 'Menyediakan Untuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8465_mendukung, 'ふよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8465_mendukung, '扶養の範囲内で働かせてください。', 'Tolong izinkan saya bekerja dalam batas pendapatan tanggungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8465_mendukung, '収入が増えて扶養から外れちゃったんです。', 'Penghasilan saya meningkat, sehingga saya kehilangan status tanggungan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8465_mendukung, 'え、まだ親の扶養に入ってるんですか？', 'Apa, kamu masih menjadi tanggungan orang tuamu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8465_mendukung, '扶養とは、生活費を負担して家族を支えることを指します。', 'Fuyō mengacu pada menanggung biaya hidup untuk menghidupi keluarga Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8466_mengalahkan, 'Mengalahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8466_mengalahkan, 'Irama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8466_mengalahkan, 'Tempo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8466_mengalahkan, 'Momen itu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8466_mengalahkan, 'ひょうし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8466_mengalahkan, 'この曲は、拍子を取るのが難しい。', 'Sulit untuk menyamai tempo lagu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8466_mengalahkan, '転んだ拍子に差し歯が抜けてしまい、恥ずかしい思いをした。', 'Saya malu karena saat saya terjatuh, gigi palsu saya copot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8466_mengalahkan, '拍子抜けしてしまったよ。', 'Ya, itu antiklimaks.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8467_fajar, 'Fajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8467_fajar, 'Fajar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8467_fajar, 'あかつき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8467_fajar, '暁の冷たい空気に、気持ちが張り詰めた。', 'Saya merasa membeku di udara dingin saat fajar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8468_kekal, 'Kekal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8468_kekal, 'Kekal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8468_kekal, 'Abadi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8468_kekal, 'ふきゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8468_kekal, 'これは不朽の名作です。', 'Ini adalah mahakarya abadi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8469_jompo, 'Jompo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8469_jompo, 'Lebihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8469_jompo, 'Usang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8469_jompo, 'Terlalu Tua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8469_jompo, 'ろうきゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8469_jompo, 'その建物はかなり老朽しているので、立ち入らない方がいい。', 'Bangunan itu cukup bobrok jadi Anda tidak boleh masuk ke dalamnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8470_membusuk, 'Membusuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8470_membusuk, 'Untuk Mati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8470_membusuk, 'くちる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8470_membusuk, '結局成功もせず、女もできずに朽ちていくはめになった。', 'Pada akhirnya, saya tidak berhasil, tidak pernah punya pacar, dan sekarang saya akan mati.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8471_tulang_belakang, 'Tulang belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8471_tulang_belakang, 'Kolom Tulang Belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8471_tulang_belakang, 'Tulang punggung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8471_tulang_belakang, 'せきつい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8471_tulang_belakang, '交通事故で脊椎を損傷し、下半身不随になったのです。', 'Tulang belakang saya rusak akibat kecelakaan lalu lintas dan bagian bawah tubuh saya menjadi lumpuh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8472_kerang, 'Kerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8472_kerang, 'Sekam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8472_kerang, 'から', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8472_kerang, '蟹の殻はこの皿に入れてください。', 'Tolong taruh cangkang kepiting di piring ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8472_kerang, '麦の殻を取ったら、その次はどうするの？', 'Apa yang kita lakukan setelah membuang sekam gandum?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8472_kerang, '種の殻を突き破って、芽が出てくる瞬間を捉えたビデオを見ました。', 'Saya menonton video yang mengabadikan momen ketika sebuah benih menembus cangkangnya dan bertunas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8473_kerak_bumi, 'Kerak Bumi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8473_kerak_bumi, 'ちかく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8473_kerak_bumi, '日本列島は、千年に一度の大地殻変動期に突入しています', 'Kepulauan Jepang sedang memasuki periode pergolakan tektonik yang signifikan yang terjadi sekali dalam satu milenium.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8474_anggun, 'Anggun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8474_anggun, 'Sederhana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8474_anggun, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8474_anggun, 'Sopan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8474_anggun, 'しとやか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8474_anggun, 'カナエはとってもお淑やかな性格をしている。', 'Kanae memiliki kepribadian yang sangat anggun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8474_anggun, '母には淑やかさというものが足りない。', 'Ibuku kurang memiliki kelembutan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8475_wanita, 'Wanita', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8475_wanita, 'しゅくじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8475_wanita, '紳士淑女のみなさん 、こんばんは。', 'Selamat malam hadirin sekalian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8476_polusi, 'Polusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8476_polusi, 'Kontaminasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8476_polusi, 'Korupsi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8476_polusi, 'おだく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8476_polusi, '湖の水質汚濁を防止するために規制が設けられた。', 'Sebuah peraturan dibuat untuk mencegah pencemaran danau.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8477_membuat_berlumpur, 'Membuat Berlumpur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8477_membuat_berlumpur, 'Membuat Berawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8477_membuat_berlumpur, 'Berbicara dengan Ambigu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8477_membuat_berlumpur, 'Berbicara Samar-samar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8477_membuat_berlumpur, 'にごす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8477_membuat_berlumpur, '核心をついた質問に、社長は言葉を濁した。', 'Inti masalahnya, presiden perusahaan itu tidak menjelaskan secara jelas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8478_arus_berlumpur, 'Arus Berlumpur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8478_arus_berlumpur, 'Sungai Berlumpur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8478_arus_berlumpur, 'Aliran Berlumpur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8478_arus_berlumpur, 'だくりゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8478_arus_berlumpur, '大雨で川は濁流と化した。', 'Hujan deras mengubah sungai menjadi arus berlumpur yang deras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8478_arus_berlumpur, '濁流に飲み込まれそうになったのを、彼が救ってくれたのです。', 'Aku hendak ditelan arus berlumpur, tapi dia menyelamatkanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8478_arus_berlumpur, '赤い車が一台、濁流に押し流されていくのが見えた。', 'Saya melihat sebuah mobil berwarna merah tersapu air berlumpur yang mengamuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8478_arus_berlumpur, '濁流が襲い来る中、彼はただ一人、迷いなくその荒れ狂ったように渦巻く水の中へ飛び込んだ。', 'Ketika arus deras berlumpur itu menerjang, dia sendiri, tanpa ragu-ragu, terjun ke dalam air yang berputar-putar dengan keras.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8479_penangguhan_dakwaan, 'Penangguhan Dakwaan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8479_penangguhan_dakwaan, 'きそゆうよ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8479_penangguhan_dakwaan, '起訴猶予処分がくだされました。', 'Disposisi telah dijatuhkan untuk menangguhkan dakwaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8480_kalimat_yang_ditangguhkan, 'Kalimat yang Ditangguhkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8480_kalimat_yang_ditangguhkan, 'しっこうゆうよ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8480_kalimat_yang_ditangguhkan, 'あいつは執行猶予期間中に他の刑事事件を起こしたんだよ。', 'Orang itu menyebabkan kasus pidana lain selama hukuman percobaannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8481_segar, 'Segar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8481_segar, 'Muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8481_segar, 'Berair', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8481_segar, 'Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8481_segar, 'Bersemangat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8481_segar, 'みずみずしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8481_segar, '彼女の瑞々しい歌声が人々を魅了した。', 'Semua orang terpesona oleh suaranya yang bersemangat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8482_asam_sulfat, 'Asam sulfat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8482_asam_sulfat, 'Asam Sulfat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8482_asam_sulfat, 'りゅうさん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8482_asam_sulfat, 'どこで硫酸を手に入れたんだ。', 'Dari mana Anda mendapatkan asam sulfat?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8483_pencurian, 'Pencurian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8483_pencurian, 'Pencurian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8483_pencurian, 'せっとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8483_pencurian, 'ストレス解消に窃盗を繰り返していたそうだ。', 'Tampaknya dia terus mencuri untuk mengurangi stres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8483_pencurian, '私はすごくニッチな分野の探偵で、美術館から窃盗された絵画を捜す仕事をしています。', 'Saya seorang detektif swasta di bidang yang sangat khusus, dan tugas saya adalah mencari lukisan yang telah dicuri dari museum seni.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8484_perjanjian_tuan_tuan, 'Perjanjian Tuan-tuan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8484_perjanjian_tuan_tuan, 'しんしきょうてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8484_perjanjian_tuan_tuan, 'あいつらとは紳士協定を結んでいるはずだ。', 'Mereka seharusnya terikat pada kesepakatan yang mulia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8486_benang_sutra, 'Benang Sutra', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8486_benang_sutra, 'けんし', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8486_benang_sutra, 'きぬいと', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8486_benang_sutra, '西陣の糸屋で絹糸を買ってきてちょうだい。', 'Silakan beli benang sutra di toko benang Nishijin.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8487_kelumpuhan_tidur, 'Kelumpuhan Tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8487_kelumpuhan_tidur, 'Kelumpuhan Sementara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8487_kelumpuhan_tidur, 'かなしばり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8487_kelumpuhan_tidur, '金縛りにあったことはありますか。', 'Pernahkah Anda mengalami kelumpuhan tidur sebelumnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8487_kelumpuhan_tidur, '昨日の夜、久しぶりに金縛りにあったんだよね。', 'Saya mengalami kelumpuhan tidur untuk pertama kalinya setelah sekian lama tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8487_kelumpuhan_tidur, '金縛りは疲れてるサインかもってどこかで読んだよ。', 'Saya pernah membaca bahwa kelumpuhan tidur mungkin merupakan tanda kelelahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8487_kelumpuhan_tidur, '金縛りにあってる時は、声も出せないし、動こうとしてもピクリともしないんだよ。', 'Saat Anda mengalami kelumpuhan tidur, Anda tidak dapat mengeluarkan suara, dan meskipun Anda mencoba bergerak, Anda tidak dapat bergerak sedikit pun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8488_gantung, 'Gantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8488_gantung, 'Kematian Karena Digantung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8488_gantung, 'しばりくび', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8488_gantung, '江戸時代には縛り首という刑罰があった。', 'Pada zaman Edo, ada hukuman yang disebut hukuman gantung.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8489_lapisan, 'Lapisan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8489_lapisan, 'Jahitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8489_lapisan, 'Jahitan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8489_lapisan, 'ぬいめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8489_lapisan, '自分で縫ったので縫い目がガタガタなんです。', 'Saya menjahitnya sendiri, jadi jahitannya bengkok.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8490_potret, 'Potret', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8490_potret, 'しょうぞう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8490_potret, 'あの画家に私の肖像を描かせてみよう。', 'Saya akan membiarkan seniman melukis potret saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8491_wilayah_kekuasaan, 'wilayah kekuasaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8491_wilayah_kekuasaan, 'Domain', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8491_wilayah_kekuasaan, 'はん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8491_wilayah_kekuasaan, '江戸時代中期には、どこの藩も財政が苦しくなりました。', 'Di pertengahan zaman Edo, wilayah kekuasaan juga mengalami kesulitan keuangan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8492_tuan_feodal, 'Tuan Feodal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8492_tuan_feodal, 'Daimyo', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8492_tuan_feodal, 'はんしゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8492_tuan_feodal, '藩主の墓に参ってきた。', 'Kami pergi mengunjungi makam daimyo.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8494_catatan_permainan_shogi, 'Catatan Permainan Shogi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8494_catatan_permainan_shogi, 'Buka Catatan Game', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8494_catatan_permainan_shogi, 'きふ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8494_catatan_permainan_shogi, '棋譜の付け方を教えてください。', 'Tolong ajari saya cara merekam permainan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8495_skor_musik, 'Skor Musik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8495_skor_musik, 'Lembaran Musik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8495_skor_musik, 'がくふ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8495_skor_musik, 'ピアノは弾けますが、楽譜は読めません。', 'Saya bisa bermain piano tetapi saya tidak bisa membaca lembaran musik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8496_garis_keturunan, 'Garis keturunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8496_garis_keturunan, 'Silsilah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8496_garis_keturunan, 'Sejarah Keluarga', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8496_garis_keturunan, 'けいふ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8496_garis_keturunan, 'この巻紙に一族の系譜が描かれています。', 'Silsilah klan digambarkan dalam gulungan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8496_garis_keturunan, '彼の考えは社会主義の系譜を引いています。', 'Pemikirannya berasal dari garis keturunan sosialis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8496_garis_keturunan, 'その芸術家は、有名な画家の系譜を受け継いでいます。', 'Seniman itu meneruskan garis keturunan seorang pelukis terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8496_garis_keturunan, 'この作品はロマン主義文学の系譜に位置づけられている。', 'Karya ini diposisikan dalam silsilah sastra Romantis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8496_garis_keturunan, '日本の天皇の系譜は世界でも最も古いとされているんですが、彼女はその天皇の系譜について研究しているんですよ。', 'Silsilah kekaisaran Jepang dianggap salah satu yang tertua di dunia, dan ia mempelajari silsilah kekaisaran tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8497_catatan_kronologis, 'Catatan Kronologis', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8497_catatan_kronologis, 'ねんぷ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8497_catatan_kronologis, 'この作家の年譜を作ってくれないか。', 'Maukah Anda membuat catatan kronologis untuk penulis ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8498_lembaran_musik, 'Lembaran Musik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8498_lembaran_musik, 'Skor Musik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8498_lembaran_musik, 'ふめん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8498_lembaran_musik, '譜面を無料でダウンロードできるサイトを探しています。', 'Saya mencari situs tempat saya dapat mengunduh musik secara gratis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8499_amnesti, 'Amnesti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8499_amnesti, 'Maaf', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8499_amnesti, 'おんしゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8499_amnesti, '大統領は、七面鳥に恩赦を与えた。', 'Presiden memberikan amnesti kepada Turki.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8500_maaf, 'Maaf', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8500_maaf, 'Amnesti', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8500_maaf, 'しゃめん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8500_maaf, '彼は特別に罪の赦免が認められた。', 'Dia diberikan pengampunan khusus atas kejahatannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8501_maaf, 'Maaf', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8501_maaf, 'Pengampunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8501_maaf, 'Belas kasihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8501_maaf, 'Kelonggaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8501_maaf, 'ようしゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8501_maaf, '罪人は容赦なく罰せられなくてはならない。', 'Penjahat harus dihukum tanpa ampun!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8502_perombakan, 'Perombakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8502_perombakan, 'Pemecatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8502_perombakan, 'こうてつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8502_perombakan, '監督の更迭が求められている。', 'Kami sedang mencari supervisor pengganti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8503_minuman_malam, 'Minuman Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8503_minuman_malam, 'Minum Dengan Makan Malam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8503_minuman_malam, 'ばんしゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8503_minuman_malam, 'ダイエットのために晩酌を控えています。', 'Saya menahan diri untuk tidak minum malam karena diet saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8504_untuk_melayani, 'Untuk Melayani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8504_untuk_melayani, 'Untuk Mengambil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8504_untuk_melayani, 'Untuk Dipertimbangkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8504_untuk_melayani, 'くむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8504_untuk_melayani, 'ヒシャクでタルからお酒を酌んだ。', 'Aku mengambil sake dari tong dengan sendok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8504_untuk_melayani, 'ちょっとはあいつの意見も酌んでやったらどう？', 'Mengapa Anda tidak mempertimbangkan pendapatnya sedikit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8504_untuk_melayani, '急いでこのおちょこにお酒を酌んできてください。', 'Tolong cepat ambil sake di cangkir ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8505_kunci, 'Kunci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8505_kunci, 'Gembok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8505_kunci, 'Tablet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8505_kunci, 'Pil', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8505_kunci, 'じょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8505_kunci, 'この薬を必ず一日一錠飲んで下さい。', 'Silakan minum satu tablet obat ini sekali setiap hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8506_borgol, 'Borgol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8506_borgol, 'belenggu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8506_borgol, 'てじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8506_borgol, '犯人と間違われて手錠を掛けられたんだ。', 'Saya disangka penjahat dan diborgol.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8507_pil, 'Pil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8507_pil, 'Permen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8507_pil, 'Tablet', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8507_pil, 'じょうざい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8507_pil, '錠剤を飲み込むことができないので、砕いて飲んでいます。', 'Saya tidak bisa menelan pil, jadi saya menghancurkannya dan meminumnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8508_juri, 'Juri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8508_juri, 'Anggota juri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8508_juri, 'ばいしん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8508_juri, '日本で陪審裁判が導入された経緯を教えてください。', 'Tolong ajari saya segalanya tentang pengenalan uji juri di Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8509_kelelahan, 'Kelelahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8509_kelelahan, 'melelahkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8509_kelelahan, 'あき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8509_kelelahan, '私って、飽きっぽいのよね。', 'Yah, aku plin-plan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8510_sampai_yang_terakhir, 'Sampai Yang Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8510_sampai_yang_terakhir, 'Sampai Akhir', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8510_sampai_yang_terakhir, 'あくまでも', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8510_sampai_yang_terakhir, '飽くまでも、これは個人的な見解です。', 'Ini adalah pendapat yang keras kepala dan egois.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8511_ayam, 'Ayam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8511_ayam, 'にわとり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8511_ayam, '育てたひよこが鶏になりました。', 'Anak ayam yang saya pelihara menjadi seekor ayam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8511_ayam, '隣の家で飼っている鶏が毎朝起こしてくれるんですよ。', 'Ayam tetangga saya membangunkan saya setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8511_ayam, 'この鶏は雄鶏で合ってる？', 'Apakah saya benar tentang ayam ini menjadi ayam jago?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8512_daging_ayam, 'Daging Ayam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8512_daging_ayam, 'とりにく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8512_daging_ayam, 'できるだけ鶏肉のささみを食べるようにしています。', 'Saya mencoba memastikan saya makan daging putih dari ayam sebanyak yang saya bisa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8513_telur_ayam, 'Telur Ayam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8513_telur_ayam, 'Telur Ayam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8513_telur_ayam, 'けいらん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8513_telur_ayam, '鶏卵は日本が自給自足できる唯一の蛋白源です。', 'Telur ayam merupakan satu-satunya sumber protein di Jepang yang dapat mencukupi kebutuhannya sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8514_peternakan_ayam, 'Peternakan Ayam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8514_peternakan_ayam, 'Peternakan Unggas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8514_peternakan_ayam, 'ようけい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8514_peternakan_ayam, '養鶏経営の難しさを痛感しました。', 'Saya menyadari betapa sulitnya mengelola peternakan unggas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8866_pengunduran_diri, 'Pengunduran diri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8866_pengunduran_diri, 'ていかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8866_pengunduran_diri, '父は、様々な経験の後に諦観に至った。', 'Berbagai pengalaman ayah saya menyebabkan dia mengundurkan diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8866_pengunduran_diri, 'やる気はやがて、諦観となった。', 'Motivasi menjadi pengunduran diri tak lama kemudian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8866_pengunduran_diri, '君は諦観するにはまだ若い。', 'Anda terlalu muda untuk mengundurkan diri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9097_buang_buang, 'Buang-buang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9097_buang_buang, 'Sebuah pemborosan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9097_buang_buang, 'Terlalu Bagus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9097_buang_buang, 'もったいない', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9097_buang_buang, '食べ物を捨てるのは勿体ない事ですよね。', 'Buang-buang makanan saja, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9097_buang_buang, '折角日本に行ったのに、太鼓の演奏を見ることができないなんて勿体ないですよね。', 'Sayang sekali Anda pergi ke Jepang tetapi tidak pernah melihat pertunjukan taiko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9097_buang_buang, '綾乃ちゃんは、亮平には勿体ないよ。', 'Ayano-chan, kamu terlalu baik untuk Ryohei!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9108_joruri, 'Joruri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9108_joruri, 'Kidung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9108_joruri, 'じょうるり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9108_joruri, '江戸時代の娯楽は、浄瑠璃や歌舞伎だった。', 'Hiburan pada zaman Edo adalah joruri dan kabuki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9108_joruri, '人形浄瑠璃のチケットをもらいました。', 'Saya mendapat tiket untuk pertunjukan ningyo joruri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9108_joruri, '今回は、浄瑠璃人形の作り手にインタビューをしました。', 'Kali ini kami mewawancarai seorang pencipta wayang joruri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9109_biru_cerah, 'Biru Cerah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9109_biru_cerah, 'るりいろ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9109_biru_cerah, '莉子は、瑠璃色のワンピースを着て諒一郎との待ち合わせ場所に現れた。', 'Riko muncul dengan mengenakan gaun biru cerah di tempat dia bertemu Ryoichiro.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9109_biru_cerah, 'ヒゴタイは、瑠璃色で丸い形をした、とても可愛い花です。', 'Berwarna biru cerah dan berbentuk bulat, higotai adalah bunga yang sangat cantik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9109_biru_cerah, 'ふと、瑠璃色の美しい宝石のような虫が目にとまった。', 'Tiba-tiba, seekor serangga cantik berwarna biru cerah yang tampak seperti permata menarik perhatian saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9113_sugahara, 'Sugahara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9113_sugahara, 'Sugawara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9113_sugahara, 'すがはら', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9113_sugahara, 'すがわら', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9113_sugahara, '菅原っていう苗字、なんかかっこよくね？', 'Nama keluarga Sugahara yang keren, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9113_sugahara, 'あれ、菅原さん、風邪ですか？', 'Oh, Sugawara-san, apakah kamu masuk angin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9113_sugahara, '菅原靴店で、オシャレな革靴を買った。', 'Di Toko Sepatu Sugawara, saya membeli sepasang sepatu kulit yang bergaya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9114_menuangkan_alkohol, 'Menuangkan Alkohol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9114_menuangkan_alkohol, 'Menuangkan Sake', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9114_menuangkan_alkohol, 'Mengisi Gelas Seseorang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9114_menuangkan_alkohol, 'しゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9114_menuangkan_alkohol, 'お酌をさせていただいてもよろしいですか。', 'Bolehkah aku menuangkan sake untukmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9114_menuangkan_alkohol, '部長、女性社員だからという理由で酌をさせるのは差別ですよ。', 'Manajer, diskriminatif jika pegawai perempuan mengisi gelas orang lain hanya karena mereka perempuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9114_menuangkan_alkohol, '何だ、お前、俺の酌を断るのか！？', 'Apa, kamu akan menolak aku menuangkanmu alkohol?!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9115_membuat_tunjangan, 'Membuat Tunjangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9115_membuat_tunjangan, 'Mempertimbangkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9115_membuat_tunjangan, 'しゃくりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9115_membuat_tunjangan, '日本の裁判には「情状酌量」とよばれるものがあります。', 'Dalam persidangan di Jepang ada yang disebut "memberikan kelonggaran untuk keadaan yang meringankan".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9115_membuat_tunjangan, '情状酌量の余地はないと思います。', 'Saya rasa tidak ada ruang untuk memberikan kelonggaran untuk keadaan yang meringankan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9115_membuat_tunjangan, '被告人には酌量すべき情状があると判断し、裁判官は刑を減軽した。', 'Menyimpulkan bahwa keadaan terdakwa harus dipertimbangkan, hakim meringankan hukuman tersebut.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2363_lapis_lazuli, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2363_lapis_lazuli, id FROM items WHERE character = 'ム' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2363_lapis_lazuli, id FROM items WHERE character = '刀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2363_lapis_lazuli, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2365_sulfur, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2365_sulfur, id FROM items WHERE character = '𠫓' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2365_sulfur, id FROM items WHERE character = '川' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2366_maaf, id FROM items WHERE character = '赤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2366_maaf, id FROM items WHERE character = '夂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2367_mencuri, id FROM items WHERE character = '穴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2367_mencuri, id FROM items WHERE character = '七' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2367_mencuri, id FROM items WHERE character = '刀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2368_mendesah, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2368_mendesah, id FROM items WHERE character = '艮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2368_mendesah, id FROM items WHERE character = '牙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2369_bantuan, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2369_bantuan, id FROM items WHERE character = '夫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2370_bermain, id FROM items WHERE character = '虍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2370_bermain, id FROM items WHERE character = '业' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2370_bermain, id FROM items WHERE character = '戈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2372_berlumpur, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2372_berlumpur, id FROM items WHERE character = '罒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2372_berlumpur, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2372_berlumpur, id FROM items WHERE character = '虫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2373_berlari, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2373_berlari, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2373_berlari, id FROM items WHERE character = '廾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2374_kemiripan, id FROM items WHERE character = '⺌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2374_kemiripan, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2375_membusuk, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2375_membusuk, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2375_membusuk, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2376_sekam, id FROM items WHERE character = '士' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2376_sekam, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2376_sekam, id FROM items WHERE character = '几' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2376_sekam, id FROM items WHERE character = '殳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2377_menerima, id FROM items WHERE character = '享' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2378_wilayah_kekuasaan, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2378_wilayah_kekuasaan, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2378_wilayah_kekuasaan, id FROM items WHERE character = '番' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2379_penengah, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2379_penengah, id FROM items WHERE character = '甘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2379_penengah, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2380_ayam, id FROM items WHERE character = '⺤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2380_ayam, id FROM items WHERE character = '夫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2380_ayam, id FROM items WHERE character = '鳥' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2381_meminta, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2381_meminta, id FROM items WHERE character = '尸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2381_meminta, id FROM items WHERE character = '禹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2382_bergantian, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2382_bergantian, id FROM items WHERE character = '失' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2383_tulang_belakang, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2383_tulang_belakang, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2385_menemani, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2385_menemani, id FROM items WHERE character = '咅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2386_membagi, id FROM items WHERE character = '咅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2386_membagi, id FROM items WHERE character = '刂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2387_silsilah, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2387_silsilah, id FROM items WHERE character = '並' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2387_silsilah, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2388_anggun, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2388_anggun, id FROM items WHERE character = '上' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2388_anggun, id FROM items WHERE character = '小' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2388_anggun, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2389_berlayar, id FROM items WHERE character = '巾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2389_berlayar, id FROM items WHERE character = '几' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2389_berlayar, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2390_membenci, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2390_membenci, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2390_membenci, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2390_membenci, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2391_melayani, id FROM items WHERE character = '酉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2391_melayani, id FROM items WHERE character = '勺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2392_fajar, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2392_fajar, id FROM items WHERE character = '尭' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2393_kebesaran, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2393_kebesaran, id FROM items WHERE character = '舛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2393_kebesaran, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2394_kunci, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2394_kunci, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2394_kunci, id FROM items WHERE character = '疋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2395_menderita, id FROM items WHERE character = '冫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2395_menderita, id FROM items WHERE character = '夌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2396_selamat, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2396_selamat, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2396_selamat, id FROM items WHERE character = '而' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2397_sedimen, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2397_sedimen, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2397_sedimen, id FROM items WHERE character = '㠯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2399_seperti_kaca, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2399_seperti_kaca, id FROM items WHERE character = '离' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_2897_ke_arah_timur, id FROM items WHERE character = '東' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_2897_ke_arah_timur, id FROM items WHERE character = '方' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6794_kemenangan_sempit, id FROM items WHERE character = '辛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6794_kemenangan_sempit, id FROM items WHERE character = '勝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8434_kenikmatan, k_2377_menerima);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8434_kenikmatan, id FROM items WHERE character = '受' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8435_mahakarya, k_2393_kebesaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8435_mahakarya, id FROM items WHERE character = '作' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8436_pahlawan, id FROM items WHERE character = '豪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8436_pahlawan, k_2393_kebesaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8437_untuk_bertahan, k_2395_menderita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8438_autopsi, id FROM items WHERE character = '解' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8438_autopsi, k_2386_membagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8439_bodoh, id FROM items WHERE character = '呆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8440_tercengang, id FROM items WHERE character = '呆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8440_tercengang, id FROM items WHERE character = '気' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8441_benar_benar_terkagum_kagum, id FROM items WHERE character = '呆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8441_benar_benar_terkagum_kagum, id FROM items WHERE character = '返' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8442_karyawan_paruh_waktu, k_2381_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8442_karyawan_paruh_waktu, id FROM items WHERE character = '託' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8443_berlari_tentang, k_2373_berlari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8443_berlari_tentang, id FROM items WHERE character = '走' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8444_liar, k_2373_berlari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8444_liar, id FROM items WHERE character = '放' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8445_perantara, k_2379_penengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8445_perantara, id FROM items WHERE character = '介' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8446_media, k_2379_penengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8446_media, id FROM items WHERE character = '体' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8447_katalisator, id FROM items WHERE character = '触' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8447_katalisator, k_2379_penengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8448_penjaruman, k_2379_penengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8448_penjaruman, k_2391_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8449_berlayar, k_2389_berlayar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8450_pelayaran, k_2389_berlayar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8450_pelayaran, id FROM items WHERE character = '走' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8451_alat_musik_gesek, id FROM items WHERE character = '弦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8451_alat_musik_gesek, id FROM items WHERE character = '楽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8451_alat_musik_gesek, id FROM items WHERE character = '器' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8452_musik_orkestra, id FROM items WHERE character = '管' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8452_musik_orkestra, id FROM items WHERE character = '弦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8452_musik_orkestra, id FROM items WHERE character = '楽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8458_perasaan_kuat, id FROM items WHERE character = '感' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8458_perasaan_kuat, k_2368_mendesah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8459_amarah, k_2390_membenci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8459_amarah, k_2368_mendesah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8460_kebencian, k_2390_membenci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8461_bermain, id FROM items WHERE character = '遊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8461_bermain, k_2370_bermain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8462_drama, k_2370_bermain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8462_drama, id FROM items WHERE character = '曲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8463_untuk_bermain_main, k_2370_bermain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8464_bantuan, k_2369_bantuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8464_bantuan, id FROM items WHERE character = '助' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8465_mendukung, k_2369_bantuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8465_mendukung, id FROM items WHERE character = '養' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8466_mengalahkan, id FROM items WHERE character = '拍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8466_mengalahkan, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8467_fajar, k_2392_fajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8468_kekal, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8468_kekal, k_2375_membusuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8469_jompo, id FROM items WHERE character = '老' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8469_jompo, k_2375_membusuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8470_membusuk, k_2375_membusuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8471_tulang_belakang, id FROM items WHERE character = '脊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8471_tulang_belakang, k_2383_tulang_belakang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8472_kerang, k_2376_sekam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8473_kerak_bumi, id FROM items WHERE character = '地' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8473_kerak_bumi, k_2376_sekam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8474_anggun, k_2388_anggun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8475_wanita, k_2388_anggun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8475_wanita, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8476_polusi, id FROM items WHERE character = '汚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8476_polusi, k_2372_berlumpur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8477_membuat_berlumpur, k_2372_berlumpur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8478_arus_berlumpur, k_2372_berlumpur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8478_arus_berlumpur, id FROM items WHERE character = '流' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8479_penangguhan_dakwaan, id FROM items WHERE character = '起' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8479_penangguhan_dakwaan, id FROM items WHERE character = '訴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8479_penangguhan_dakwaan, id FROM items WHERE character = '猶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8479_penangguhan_dakwaan, id FROM items WHERE character = '予' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8480_kalimat_yang_ditangguhkan, id FROM items WHERE character = '執' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8480_kalimat_yang_ditangguhkan, id FROM items WHERE character = '行' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8480_kalimat_yang_ditangguhkan, id FROM items WHERE character = '猶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8480_kalimat_yang_ditangguhkan, id FROM items WHERE character = '予' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8481_segar, k_2396_selamat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8481_segar, id FROM items WHERE character = '々' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8482_asam_sulfat, k_2365_sulfur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8482_asam_sulfat, id FROM items WHERE character = '酸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8483_pencurian, k_2367_mencuri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8483_pencurian, id FROM items WHERE character = '盗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8484_perjanjian_tuan_tuan, id FROM items WHERE character = '紳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8484_perjanjian_tuan_tuan, id FROM items WHERE character = '士' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8484_perjanjian_tuan_tuan, id FROM items WHERE character = '協' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8484_perjanjian_tuan_tuan, id FROM items WHERE character = '定' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8486_benang_sutra, id FROM items WHERE character = '絹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8486_benang_sutra, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8487_kelumpuhan_tidur, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8487_kelumpuhan_tidur, id FROM items WHERE character = '縛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8488_gantung, id FROM items WHERE character = '縛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8488_gantung, id FROM items WHERE character = '首' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8489_lapisan, id FROM items WHERE character = '縫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8489_lapisan, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8490_potret, k_2374_kemiripan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8490_potret, id FROM items WHERE character = '像' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8491_wilayah_kekuasaan, k_2378_wilayah_kekuasaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8492_tuan_feodal, k_2378_wilayah_kekuasaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8492_tuan_feodal, id FROM items WHERE character = '主' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8494_catatan_permainan_shogi, id FROM items WHERE character = '棋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8494_catatan_permainan_shogi, k_2387_silsilah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8495_skor_musik, id FROM items WHERE character = '楽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8495_skor_musik, k_2387_silsilah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8496_garis_keturunan, id FROM items WHERE character = '系' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8496_garis_keturunan, k_2387_silsilah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8497_catatan_kronologis, id FROM items WHERE character = '年' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8497_catatan_kronologis, k_2387_silsilah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8498_lembaran_musik, k_2387_silsilah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8498_lembaran_musik, id FROM items WHERE character = '面' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8499_amnesti, id FROM items WHERE character = '恩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8499_amnesti, k_2366_maaf);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8500_maaf, k_2366_maaf);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8500_maaf, id FROM items WHERE character = '免' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8501_maaf, id FROM items WHERE character = '容' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8501_maaf, k_2366_maaf);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8502_perombakan, id FROM items WHERE character = '更' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8502_perombakan, k_2382_bergantian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8503_minuman_malam, id FROM items WHERE character = '晩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8503_minuman_malam, k_2391_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8504_untuk_melayani, k_2391_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8505_kunci, k_2394_kunci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8506_borgol, id FROM items WHERE character = '手' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8506_borgol, k_2394_kunci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8507_pil, k_2394_kunci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8507_pil, id FROM items WHERE character = '剤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8508_juri, k_2385_menemani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8508_juri, id FROM items WHERE character = '審' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8509_kelelahan, id FROM items WHERE character = '飽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8510_sampai_yang_terakhir, id FROM items WHERE character = '飽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8511_ayam, k_2380_ayam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8512_daging_ayam, k_2380_ayam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8512_daging_ayam, id FROM items WHERE character = '肉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8513_telur_ayam, k_2380_ayam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8513_telur_ayam, id FROM items WHERE character = '卵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8514_peternakan_ayam, id FROM items WHERE character = '養' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8514_peternakan_ayam, k_2380_ayam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8866_pengunduran_diri, id FROM items WHERE character = '諦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8866_pengunduran_diri, id FROM items WHERE character = '観' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9097_buang_buang, id FROM items WHERE character = '勿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9097_buang_buang, id FROM items WHERE character = '体' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9108_joruri, id FROM items WHERE character = '浄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9108_joruri, k_2363_lapis_lazuli);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9108_joruri, k_2399_seperti_kaca);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9109_biru_cerah, k_2363_lapis_lazuli);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9109_biru_cerah, k_2399_seperti_kaca);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9109_biru_cerah, id FROM items WHERE character = '色' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9113_sugahara, k_2397_sedimen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9113_sugahara, id FROM items WHERE character = '原' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9114_menuangkan_alkohol, k_2391_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9115_membuat_tunjangan, k_2391_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9115_membuat_tunjangan, id FROM items WHERE character = '量' LIMIT 1;

END $$;