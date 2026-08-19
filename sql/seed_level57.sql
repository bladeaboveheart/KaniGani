-- ====================================================
-- KaniGani — Seed Data Level 57 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 57) ============
  r_434_cembung UUID; r_435_cekung UUID;
  -- ============ KANJI IDs (Level 57) ============
  k_2284_perawakan UUID; k_2330_perampok UUID; k_2331_drum UUID; k_2332_rotasi UUID; k_2333_usus UUID; k_2334_tangki UUID; k_2335_menjatuhkan UUID; k_2337_33_meter_persegi UUID; k_2338_biru_laut UUID; k_2339_menyebar UUID; k_2340_jurang UUID; k_2341_gaji UUID; k_2342_buatan UUID; k_2343_belasungkawa UUID; k_2344_yang_terakhir UUID; k_2345_universal UUID; k_2346_keseimbangan UUID; k_2348_inspeksi UUID; k_2349_memarahi UUID; k_2350_berani UUID; k_2351_selaput UUID; k_2352_buta UUID; k_2353_rahim UUID; k_2354_fermentasi UUID; k_2355_degradasi UUID; k_2356_mencegat UUID; k_2357_burung_gagak UUID; k_2358_cembung UUID; k_2359_cekung UUID; k_2360_maple UUID; k_2361_tanda_tanya UUID; k_2362_pucat UUID; k_2364_tunas UUID; k_9397_ulat_sutera UUID;
  -- ============ VOCABULARY IDs (Level 57) ============
  v_4612_hukum_tidak_tertulis UUID; v_5476_garis_keturunan UUID; v_8252_sumsum_tulang_belakang UUID; v_8341_ikan_badut UUID; v_8342_kedua UUID; v_8343_a_dan_b UUID; v_8344_penipisan_pohon UUID; v_8345_lamban UUID; v_8346_pengurangan_gaji UUID; v_8347_gaji_tahunan UUID; v_8348_ketika UUID; v_8349_mesin_cetak UUID; v_8350_tidak_rata UUID; v_8351_pemerasan UUID; v_8352_33_meter_persegi UUID; v_8353_kebejatan UUID; v_8354_hakim UUID; v_8355_saluran UUID; v_8356_jurang UUID; v_8357_belasungkawa UUID; v_8358_alamat_peringatan UUID; v_8359_untuk_berduka UUID; v_8360_lingkaran_setan UUID; v_8361_organ_peredaran_darah UUID; v_8362_sangat_disesalkan UUID; v_8363_tidak_menyenangkan UUID; v_8364_duka UUID; v_8365_tegas UUID; v_8366_berani UUID; v_8367_tindakan_tegas UUID; v_8368_dengan_berani UUID; v_8369_berjuang_dengan_berani UUID; v_8370_berani UUID; v_8371_revolusi UUID; v_8372_angin_puyuh UUID; v_8373_melodi UUID; v_8374_maple UUID; v_8375_gula_maple UUID; v_8376_tangki_ikan UUID; v_8377_bak_mandi UUID; v_8380_meminjamkan UUID; v_8382_burung_gagak UUID; v_8383_teh_oolong UUID; v_8384_orang_buta UUID; v_8385_titik_buta UUID; v_8386_kebutaan UUID; v_8387_buta_warna UUID; v_8388_garam_laut UUID; v_8389_biru_laut UUID; v_8390_biru_laut_gelap UUID; v_8391_penutup UUID; v_8392_pencacahan UUID; v_8393_kompas UUID; v_8394_janin UUID; v_8395_abortus UUID; v_8396_pembuahan UUID; v_8397_plasenta UUID; v_8398_usus UUID; v_8399_perut UUID; v_8400_lampiran UUID; v_8401_usus_besar UUID; v_8402_selaput UUID; v_8403_kornea UUID; v_8404_retina UUID; v_8405_pengecambahan UUID; v_8406_keseimbangan UUID; v_8407_keseimbangan UUID; v_8408_cumi_cumi UUID; v_8409_bajak_laut UUID; v_8410_bandit UUID; v_8411_maling UUID; v_8412_aula_resepsi UUID; v_8413_universal UUID; v_8414_sekali UUID; v_8415_berapa_kali UUID; v_8416_pengalaman UUID; v_8417_untuk_mengganggu UUID; v_8418_isolasi UUID; v_8419_enzim UUID; v_8420_ragi UUID; v_8421_fermentasi UUID; v_8422_buatan UUID; v_8423_pembuatan_bir UUID; v_8424_untuk_menyeduh UUID; v_8425_untuk_tenang UUID; v_8426_menjelajah UUID; v_8427_sensor UUID; v_8428_revisi UUID; v_8429_inspirasi UUID; v_8430_drum_tangan UUID; v_8431_mengalahkan UUID; v_8432_gendang_pendengar UUID; v_8433_drum UUID; v_9053_untuk_menyembuhkan_sesuatu UUID; v_9110_kusam UUID; v_9112_takuya UUID; v_9439_ulat_sutera UUID;

BEGIN

  DELETE FROM items WHERE level = 57;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '凸', 'cembung', 57, 1, 'Ini tampak seperti sebuah kotak dengan sesuatu yang mencuat di dalamnya. Jika ada sesuatu yang menonjol dari sesuatu yang lain, maka itu adalah <radikal>cembung</radikal>.')
    RETURNING id INTO r_434_cembung;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '凹', 'cekung', 57, 2, 'Sepertinya ada penyok di kotak ini. Jika ada lubang atau penyok pada sesuatu disebut <radikal>cekung</radikal>.')
    RETURNING id INTO r_435_cekung;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_434_cembung, 'Cembung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_435_cekung, 'Cekung', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '脊', 'perawakan', 57, 3, 'Jika Anda meletakkan beban <radical>dua</radical> <radical>dua</radical> pon pada <radical>orang</radical> di <radical>bulan</radical> <radical>bulan</radical> mereka akan bertambah <kanji>tingginya</kanji> ketika mereka turun kembali. Segala sesuatu di bulan lebih ringan sehingga orang tersebut bahkan tidak akan merasakan bebannya. Kemudian saat mereka kembali ke bumi, tinggi <kanji>kanji> mereka akan bertambah dua inci!', 'Mendapatkan <kanji>perawakan</kanji> yang lebih tinggi juga akan membuat Anda tampak super <reading>seksi</reading> (せき), baik di bulan maupun di bumi. Jika Anda tinggal di bulan cukup lama, Anda akan menjadi orang tertinggi di galaksi — dan siapa yang tidak menganggapnya seksi?! Hah?')
    RETURNING id INTO k_2284_perawakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賊', 'perampok', 57, 4, 'Saat <radical>kerang</radikal> menjadi <radikal>pemabuk</radikal> dan melihat <radikal>salib</radikal>, mereka akan menjadi <kanji>perampok</kanji>. Karena mereka akan mencuri salib!', 'Saat kerang tersebut memiliki selera untuk menjadi <kanji>perampok</kanji>, dia akan bergabung dengan geng sepeda Boso<reading>zoku</reading> (ぞく) sehingga dia dapat terus mencuri salib lebih banyak lagi. Dia akan minum lebih banyak, mencuri lebih banyak, dan mengendarai sepeda motor keren.')
    RETURNING id INTO k_2330_perampok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鼓', 'drum', 57, 5, 'Anda mengambil <radical>drum</radical> dan <radical>branch</radical> dan... yah, apa lagi yang akan Anda lakukan? Anda akan <kanji>drum</kanji> atau <kanji>memukul</kanji> mereka bersama-sama.', 'Siapa yang suka <kanji>drum</kanji> bersama-sama dan membuat keributan besar? <reading>子</reading>s (こ), tentu saja.')
    RETURNING id INTO k_2331_drum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '旋', 'rotasi', 57, 6, 'Gerakkan <radical>rak mantel</radical> Anda ke satu <radical>arah</radical> dengan menembaknya menggunakan <radical>gun</radical>. Kemudian Anda dapat terus memotretnya untuk mendapatkan <kanji>rotasi</kanji> yang bagus. Jika Anda berpikir ada cara yang lebih baik untuk membuat rak mantel Anda mengalami <kanji>revolusi</kanji>, Anda mungkin salah.', 'Saat Anda melihat <kanji>rotasi</kanji> rak mantel Anda, seorang <reading>cen</reading>taur (せん) menerobos masuk dan mengambil pistol dari Anda, menghentikan rak mantel yang berputar dan pergi. Kasar sekali! Kurasa centaur tidak suka keadaan berputar.')
    RETURNING id INTO k_2332_rotasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '腸', 'usus', 57, 7, '<radikal>bulan</radikal> itu <radikal>mudah</radikal> malam ini, jadi Anda memutuskan untuk membukanya. Tapi, bulan bukanlah bulan, melainkan perutmu yang besar, pucat, dan bulat. Anda cukup membukanya, dan sekarang Anda dapat melihat <kanji>usus</kanji> Anda.', 'Di seluruh dunia, orang-orang memotong perutnya karena mereka berpikir ini adalah bulan yang mudah (dibandingkan dengan bulan normal, atau mungkin bulan yang sulit). Ini karena mereka telah menjadi korban mantra dari Ny. <reading>Chou</reading> (ちょう).')
    RETURNING id INTO k_2333_usus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '槽', 'tangki', 57, 8, 'Sebuah <radical>pohon</radical> melebur ke dalam <radical>tanah</radical> setelah mendengarkan <radical>musik</radical> keras di bawah <radical>matahari</radical> yang terik, jadi Anda harus mencari <kanji>tangki</kanji> besar yang bagus untuk menampung pohon yang meleleh. Musiknya membuat pohon itu bergetar dengan frekuensi yang tepat sehingga dipadukan dengan terik matahari, membuat pohon itu berubah menjadi genangan air. Anda tidak bisa membiarkannya begitu saja menjadi gumpalan di tanah, jadi carilah tangki untuk itu.', 'Anda sedang menatap <kanji>tangki</kanji> besar ketika terdengar suara menakutkan, "Oooh, saya adalah <reading>sou</reading>l (そう) pohon! Anda telah menjebak saya di dalam tangki ini dan sekarang saya akan menghantuinya!" Anda tentu tidak ingin dihantui oleh tank yang jiwanya terjebak di dalamnya.')
    RETURNING id INTO k_2334_tangki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '伐', 'menjatuhkan', 57, 9, 'Jika <radical>pemimpin</radikal> geng Anda adalah <radikal>pemabuk</radikal> dia akan mencoba membuat Anda <kanji>menebang</kanji> pohon karena mengira mereka adalah anggota geng saingan. Anda semua tahu bahwa mereka tidak bersalah, tetapi Anda tidak bisa berdebat dengan pemimpin Anda, terutama jika dia mabuk. Silakan <kanji>serang</kanji> pepohonan itu.', 'Kamu dan gengmu berangkat untuk <kanji>menebang</kanji> pohon, hanya untuk mengingat bahwa yang kamu punya hanyalah <reading>kelelawar</reading> (ばつ). Semoga berhasil menebang pohon hanya dengan bantuan kelelawar!')
    RETURNING id INTO k_2335_menjatuhkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '坪', '33-meter-persegi', 57, 10, 'Jumlah <radical>kotoran</radikal> yang Anda perlukan untuk mendapatkan <radikal>kedamaian</radikal> adalah <kanji>3,3 meter persegi</kanji>. Luasnya kira-kira sebesar dua tikar tatami, sehingga beberapa orang mungkin menyebutnya sebagai <kanji>area dua tikar</kanji>. Tidak hanya merupakan jumlah ruang yang sempurna untuk menemukan kedamaian, namun juga merupakan ukuran yang cukup umum di Jepang (disebut <kanji>tsubo</kanji>), jadi sangat bermanfaat untuk mengenalnya.', 'Luas <kanji>3,3 meter persegi</kanji> juga merupakan ukuran yang tepat untuk <reading>dua bo</reading>die (つぼ)! Bukan dengan cara yang menyeramkan, ingat — dua tubuh seperti Anda dan seorang teman meringkuk dan menemukan kedamaian di <kanji>area dua tikar</kanji> ini bersama-sama. 

Alternatifnya, Anda dapat mengingat kata ini dengan 壺, yang memiliki bacaan yang sama. Bayangkan saja menempatkan 壺 yang besar dan mewah di area seluas 3,3 meter persegi Anda. Ini adalah cara sempurna untuk memanfaatkan ruang.')
    RETURNING id INTO k_2337_33_meter_persegi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紺', 'biru-laut', 57, 11, 'Jika Anda ingin mengubah <radical>benang</radikal> menjadi warna <radikal>manis</radikal>, Anda HARUS menggunakan <kanji>biru tua</kanji> atau <kanji>biru tua</kanji>. Itu warna termanis yang pernah ada, semua orang tahu itu. Lagipula, rasa raspberry biru berwarna biru tua dan rasanya sangat manis.', 'Sekarang setelah thread Anda berwarna <kanji>navy</kanji> Anda harus berhati-hati agar <reading>con</reading>dors (こん) tidak mencoba mencurinya untuk sarang mereka. Condor menyukai benda-benda <kanji>biru tua</kanji> dan benangnya sangat cocok untuk sarang condor.')
    RETURNING id INTO k_2338_biru_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '羅', 'menyebar', 57, 12, 'Anda memiliki <radical>net</radical> dari <radical>thread</radical> untuk menangkap <radical>kalkun</radical>. Namun harus <kanji>disebarkan</kanji> dan harus <kanji>diatur</kanji> terlebih dahulu.', 'Anda <kanji>menyebarkan</kanji> jaring Anda dan <kanji>menyusunnya</kanji> sedemikian rupa. Anda mengharapkannya untuk menangkap seekor kalkun, namun Anda malah menangkap dewa Mesir kuno <reading>Ra</reading> (ら).')
    RETURNING id INTO k_2339_menyebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '峡', 'jurang', 57, 13, 'Ke <radical>pegunungan</radical> kamu membawa <radical>bertanduk</radical> <radical>suami</radical> kamu untuk dinikahi. (Masyarakat tidak akan menerima suami bertanduk!) Untuk lebih bersembunyi dari mata masyarakat, bawalah suamimu yang bertanduk ke <kanji>jurang</kanji>.', '<kanji>jurang</kanji> masih dalam <read>きょう</reading>と, karena jika kamu pergi ke luar kota, pernikahanmu tidak akan sah. Jadi, Anda menemukan jurang lokal yang terpencil.')
    RETURNING id INTO k_2340_jurang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '俸', 'gaji', 57, 14, '<radical>pemimpin</radikal> mengatakan <radikal>musim semi</radikal> terlihat <radikal>kering</radikal>, jadi Anda memerlukan <kanji>gaji</kanji> Anda terlebih dahulu.', '<kanji>gaji</kanji> Anda dikirim langsung ke <reading>ho</reading>saya (ほう) Anda, bukan ke bank. Oke, pasti ada sesuatu yang mencurigakan di sini.')
    RETURNING id INTO k_2341_gaji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '醸', 'buatan', 57, 15, '<radikal>alkohol</radikal> <radikal>perawat</radikal> adalah seseorang yang merawat alkohol. Dengan kata lain, mereka <kanji>menyeduh</kanji> itu.', '<kanji>seduhan</kanji> alkohol adalah hal yang paling disukai <reading>Joe</reading> (じょう) setelah seharian bekerja di ladang.')
    RETURNING id INTO k_2342_buatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弔', 'belasungkawa', 57, 16, 'Anda memberikan <radikal>busur</radikal> dan <radikal>tongkat</radikal> kepada keluarga teman Anda. Ini karena temanmu meninggal, dan dia menyukai busur dan tongkat. Anda memberikan ini kepada keluarganya, untuk menyampaikan <kanji>belasungkawa</kanji> kami.', 'Lebih dari sekadar <kanji>belasungkawa</kanji>, Anda ingin membalas kematian teman Anda. Dia dibunuh oleh Ny. <reading>Chou</reading> (ちょう), dan dia mematahkan tongkat dan busurnya, itulah sebabnya Anda memberi keluarga satu set baru.')
    RETURNING id INTO k_2343_belasungkawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '乙', 'yang-terakhir', 57, 17, '<radical>Hidung</radikal> Anda bukanlah hal pertama yang dilihat orang tentang wajah Anda, melainkan <kanji>yang terakhir</kanji>. Mereka melihat matamu, lalu hidungmu, lalu mulutmu, secara berurutan ke bawah. Cukup beri label A <kanji>B</kanji> dan C dan Anda tidak akan pernah lupa!', 'Jika Anda tidak memiliki sereal, Anda harus memakan pilihan sarapan <kanji>B</kanji> Anda. <read>Oat</reading> (おつ). Anda tidak membenci gandum, tapi itu jelas bukan pilihan pertama Anda.')
    RETURNING id INTO k_2344_yang_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遍', 'universal', 57, 18, 'Mengendarai <radical>skuter</radical> ke <radical>perpustakaan</radical> adalah pengalaman <kanji>universal</kanji>. Baik tua maupun muda, pada suatu saat, pernah naik skuter ke perpustakaan, mengambil buku, menggunakan internet, duduk di kursi yang nyaman, lalu pergi dengan skuter yang sama.', 'Mengendarai skuter ke perpustakaan sangatlah <kanji>universal</kanji>, bahkan <reading>hen</reading>s (へん) pun melakukannya.')
    RETURNING id INTO k_2345_universal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '衡', 'keseimbangan', 57, 19, 'Anda <radical>pergi</radical> ke <radical>besar</radical> <radical>sawah</radical> dan mendirikan <radical>penjara</radical> tepat di tengahnya untuk memulihkan <kanji>keseimbangan</kanji> area tersebut.', 'Untuk memulihkan <kanji>keseimbangan</kanji>, Anda membuang semua klon <reading>こう</reading>いち ke dalam penjara.')
    RETURNING id INTO k_2346_keseimbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '閲', 'inspeksi', 57, 20, 'Tempatkan <radical>penjaga</radikal> di <radical>gerbang</radikal> Anda untuk mendapatkan <kanji>inspeksi</kanji> yang baik terhadap lingkungan Anda. Penjaga akan berdiri di sana sepanjang hari memeriksa semuanya dan kemudian melaporkan semuanya kembali kepada Anda. Anda tidak perlu melakukan pemeriksaan apa pun sendiri!', '<kanji>Inspeksi</kanji> miliknya telah selesai, tapi sepertinya dia menggunakan sketsa <reading>etch</reading> (えつ) untuk mencatat semua hasilnya. Itu tidak terlalu membantu. Kalau dikocok semua hasil pemeriksaannya akan hilang!')
    RETURNING id INTO k_2348_inspeksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '喝', 'memarahi', 57, 21, 'Jika Anda meletakkan <radical>sendok</radical> Anda di bawah <radical>matahari</radical> saat Anda berada di <radical>penjara</radical>, <radical>mulut</radical> akan muncul untuk <kanji>memarahi</kanji> Anda. Anda tidak akan pernah bisa melihat siapa pemilik mulut itu, tetapi mengingat Anda berada di penjara, mungkin itu adalah penjaga. Apa pun yang terjadi, orang tersebut tidak menyukai apa yang Anda lakukan dan mereka terus memarahi Anda saat Anda menjemur sendok di bawah sinar matahari.', 'Suatu hari Anda akhirnya muak. Kamu perlu tahu siapa mulut orang yang <kanji>memarahi</kanji>mu itu. Anda menjulurkan sendok ke bawah sinar matahari dan mulutnya muncul, memarahi Anda tepat pada waktunya. Anda mengulurkan tangan dan mengambilnya. Tapi di tanganmu ada setumpuk <reading>kucing</reading> (かつ).')
    RETURNING id INTO k_2349_memarahi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '敢', 'berani', 57, 22, 'Seorang <radical>elf</radical> yang berkelana ke luar saat <radical>musim dingin</radical> memiliki banyak <kanji>keberanian</kanji>. Telinga elf sangat, sangat halus, dan dinginnya musim dingin dapat mengacaukannya. Jadi, jika Anda melihat peri berpetualang di musim dingin, ketahuilah bahwa peri tersebut adalah pria yang sangat berani.', 'Jumlah <kanji>keberanian</kanji> yang Anda perlukan kira-kira sama dengan jumlah <reading>Khan</reading> (かん) yang dimiliki Jenghis. Dan dia sangat berani!')
    RETURNING id INTO k_2350_berani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '膜', 'selaput', 57, 23, 'Jika Anda menjebak <radical>bulan</radical> di dalam <radical>rumah kaca</radical> ia akan menumbuhkan <kanji>selaput</kanji> yang menyeramkan di sekelilingnya. Bulan tidak terbiasa dengan panas yang akan terekspos di rumah kaca sehingga ada membran yang melindunginya. Tapi itu terlihat sangat menjijikkan.', 'Anda memutuskan untuk membuka rumah kaca untuk memeriksa <kanji>selaput</kanji> bulan ini, tetapi ketika Anda membuka pintu, bau <reading>mac</reading> (まく) yang besar langsung menerpa wajah Anda. eh. Mengapa membran ini berbau seperti big mac... atau apakah itu berarti big mac berbau seperti bulan yang membusuk?')
    RETURNING id INTO k_2351_selaput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '盲', 'buta', 57, 24, '<radikal>kematian</radikal> <radikal>mata</radikal> Anda berarti Anda telah <kanji>buta</kanji>.', 'Jika Anda <kanji>buta</kanji> Anda mungkin sebaiknya tidak mengemudi lagi karena jika Anda melakukannya, Anda akan <reading>memotong</reading> (もう) semua orang. Sebenarnya, jangan juga memotong rumput Anda. Orang buta mungkin tidak boleh mengemudikan apa pun.')
    RETURNING id INTO k_2352_buta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '胎', 'rahim', 57, 25, '<radikal>mesin</radikal> dalam tubuh Anda yang digerakkan oleh <radikal>bulan</radikal> adalah <kanji>rahim</kanji> Anda, disebut juga dengan <kanji>rahim</kanji> Anda! Pernahkah Anda bertanya-tanya mengapa periode terjadi bersamaan dengan revolusi bulan? Itu karena ia memberi kekuatan pada rahim Anda dan memberi tahu apa yang harus dilakukan!', 'Agak menyebalkan, tapi tidak ada cara untuk memutuskan <kanji>rahim</kanji> ini - <reading>dasi</reading> bulan (たい). Tetapi jika Anda menemukan cara tolong beri tahu saya, saya tidak tahan lagi.')
    RETURNING id INTO k_2353_rahim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酵', 'fermentasi', 57, 26, '<radical>Alkohol</radical> adalah <radical>guru</radical> yang baik dalam proses <kanji>fermentasi</kanji>.', 'Dengan menggunakan <kanji>fermentasi</kanji>, Anda memang menghasilkan alkohol. Itu akan diminum di pesta yang diadakan oleh Kaisar <reading>こう</reading>いち.')
    RETURNING id INTO k_2354_fermentasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '堕', 'degradasi', 57, 27, 'Ketika <radical>bangunan</radical> memiliki</radical> <radical>kotoran</radical> yang menumpuk di sekelilingnya, itu adalah tanda <kanji>degradasi</kanji>.', 'Dan siapa yang memimpin tuduhan ini menuju <kanji>degradasi</kanji>? Tentu saja, <reading>da</reading>d (だ) Anda.')
    RETURNING id INTO k_2355_degradasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遮', 'mencegat', 57, 28, 'Anda mengendarai <radical>skuter</radical> menuju <radical>yurt</radical> secepat mungkin karena seseorang mencoba masuk ke sana untuk <radical>merebus</radical> air dan Anda ingin <kanji>mencegat</kanji> mereka.', 'Anda berhasil <kanji>mencegat</kanji> pria <reading>sha</reading> (しゃ) yang baru saja hendak membuka pintu yurt Anda, dan malah Anda menabraknya.')
    RETURNING id INTO k_2356_mencegat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '烏', 'burung-gagak', 57, 29, '<radikal>burung</radikal> yang diubah adalah <kanji>gagak</kanji>! Mereka tampak seperti burung tetapi mereka lebih besar, lebih gelap, dan lebih pintar!', 'Jika kamu tidak dapat mengetahui hanya dengan melihatnya bahwa itu adalah <kanji>gagak</kanji> dan bukan burung, berjalanlah ke arahnya dan <reading>belai</reading> (からす) dengan tanganmu! Jika ia balas membelai Anda, itu adalah burung gagak! Jika ia ketakutan dan terbang menjauh atau mematuk wajah Anda, itu adalah burung biasa. Burung gagak sangat cerdas dan menyukai kasih sayang. Itulah yang membuat mereka sangat keren!')
    RETURNING id INTO k_2357_burung_gagak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '凸', 'cembung', 57, 30, 'Kanji <radikal>cembung</radikal> dan kanji <kanji>cembung</kanji> adalah sama, jadi mudah-mudahan Anda sekarang sudah mengetahui keduanya.', 'Apakah ini <kanji>cembung</kanji>? <reading>totes</reading> (とつ) cembung!')
    RETURNING id INTO k_2358_cembung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '凹', 'cekung', 57, 31, 'Kanji <radikal>cekung</radikal> dan kanji <kanji>cekung</kanji> adalah sama!', 'Jika kamu menyebut seseorang <kanji>cekung</kanji>, <reading>王</reading> (おう) akan mengetahuinya dan dia akan menyuruh pengawalnya mengubahmu menjadi cekung.')
    RETURNING id INTO k_2359_cekung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '楓', 'maple', 57, 32, '<radical>pohon</radikal> yang tumbuh dengan baik di bawah <radical>angin</radikal> adalah pohon <kanji>maple</kanji>. Pohon maple tidak berbuah sehingga angin tidak dapat menjatuhkan apa pun darinya. Itu sebabnya mereka tumbuh subur di tempat berangin!', 'Saat angin melewati pohon <kanji>maple</kanji> Anda tahu bahwa ini adalah <reading>hari layang-layang</reading> (かえで)!')
    RETURNING id INTO k_2360_maple;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '哉', 'tanda-tanya', 57, 33, 'Seorang <radical>pemabuk</radical> memiliki <radical>kotoran</radical> di <radical>mulutnya</radical> saat dia mencoba berbicara dengan Anda. Anda berjalan mendekat dan dia meludahkan <kanji>tanda tanya</kanji> ke tangan Anda. Itu tertutup tanah dan ludah. Um... apakah ini berarti dia bingung? Dia mungkin bahkan tidak tahu dimana dia berada. Tapi bagaimana dia membuat tanda tanya ini dan mengapa itu ada di mulutnya?', 'Pemabuk itu mengambil kembali <kanji>tanda tanya</kanji> dan menempelkannya ke kepalanya. Dia memakai topi <read>Ya</reading>nkee (や). Oh ayolah. “Apakah kamu hanya ingin mengetahui skor Yankee dalam game tersebut?” Pemabuk itu mengangguk.')
    RETURNING id INTO k_2361_tanda_tanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蒼', 'pucat', 57, 34, '<radical>Bunga</radical> yang ditanam di <radical>gudang</radical> akan sangat <kanji>pucat</kanji>. Mereka tidak pernah melihat matahari, sehingga warnanya tidak cerah.', 'Saat kamu menanam bunga <kanji>pucat</kanji> seperti ini, mereka tidak menumbuhkan <reading>jiwa</reading> (そう). Jiwa menambah warna pada tanaman dan bunga. Mungkin itulah sebabnya hantu dan mayat juga pucat.')
    RETURNING id INTO k_2362_pucat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '萌', 'tunas', 57, 35, 'Anda harus meletakkan <radical>bunga</radical> di tempat yang <radical>terang</radical> jika ingin <kanji>kuncup</kanji>. Jika dibiarkan di tempat teduh, mereka akan membusuk, Anda tahu?', 'Anda ingin memelihara <kanji>kuncup</kanji> ini di <reading>ho</reading>saya (ほう) Anda. Itu bukan tunas di luar ruangan, melainkan tunas di rumah. Jadi, Anda perlu mencari jendela di rumah Anda yang paling terang.')
    RETURNING id INTO k_2364_tunas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蚕', 'ulat-sutera', 57, 36, '<radical>Serangga</radical> favorit <radical>Surga adalah <kanji>ulat sutra</kanji>. Ulat sutera sangat berharga di surga karena mereka menghasilkan semua sutera yang digunakan untuk membuat jubah malaikat putih yang mengalir dan awan halus yang dilalui semua orang.', 'Akhir-akhir ini, <kanji>ulat sutera</kanji> telah membuat "kewajiban<membaca>買い mantel</reading>ts (かいこ)" yang membuat semua malaikat tergila-gila. Jubah malaikat biasa? Itu sangat bagus tahun lalu. Jika Anda tidak menyukai salah satu mantel yang wajib dibuat dari ulat sutera ini, maka Anda tidak bisa menjadi bagian dari kerumunan surga.')
    RETURNING id INTO k_9397_ulat_sutera;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2284_perawakan, 'Perawakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2284_perawakan, 'Tinggi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2284_perawakan, 'せき', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2330_perampok, 'Perampok', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2330_perampok, 'ぞく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2331_drum, 'Drum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2331_drum, 'Mengalahkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2331_drum, 'こ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2331_drum, 'つづみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2332_rotasi, 'Rotasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2332_rotasi, 'Revolusi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2332_rotasi, 'せん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2333_usus, 'Usus', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2333_usus, 'ちょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2333_usus, 'はらわた', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2333_usus, 'わた', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2334_tangki, 'Tangki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2334_tangki, 'Tong', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2334_tangki, 'そう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2334_tangki, 'ふね', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2335_menjatuhkan, 'Menjatuhkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2335_menjatuhkan, 'Menyerang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2335_menjatuhkan, 'ばつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2335_menjatuhkan, 'う', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2335_menjatuhkan, 'き', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2335_menjatuhkan, 'そむ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2337_33_meter_persegi, '3,3 Meter Persegi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2337_33_meter_persegi, 'Area Dua Tikar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2337_33_meter_persegi, 'Tsubo', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2337_33_meter_persegi, 'つぼ', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2338_biru_laut, 'Biru laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2338_biru_laut, 'Biru tua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2338_biru_laut, 'こん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2339_menyebar, 'Menyebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2339_menyebar, 'Mengatur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2339_menyebar, 'ら', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2339_menyebar, 'うすもの', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2340_jurang, 'Jurang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2340_jurang, 'きょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2340_jurang, 'こう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2340_jurang, 'はざま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2341_gaji, 'Gaji', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2341_gaji, 'ほう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2342_buatan, 'Buatan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2342_buatan, 'じょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2342_buatan, 'かも', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2343_belasungkawa, 'Belasungkawa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2343_belasungkawa, 'ちょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2343_belasungkawa, 'とぶら', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2343_belasungkawa, 'とむら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2344_yang_terakhir, 'Yang terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2344_yang_terakhir, 'B', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2344_yang_terakhir, 'おつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2344_yang_terakhir, 'いつ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2344_yang_terakhir, 'おと', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2344_yang_terakhir, 'きのと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2345_universal, 'Universal', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2345_universal, 'へん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2345_universal, 'あまね', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2346_keseimbangan, 'Keseimbangan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2346_keseimbangan, 'こう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2348_inspeksi, 'Inspeksi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2348_inspeksi, 'えつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2348_inspeksi, 'けみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2349_memarahi, 'Memarahi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2349_memarahi, 'かつ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2350_berani, 'Berani', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2350_berani, 'かん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2350_berani, 'あ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2351_selaput, 'Selaput', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2351_selaput, 'まく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2352_buta, 'Buta', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2352_buta, 'もう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2352_buta, 'めくら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2353_rahim, 'Rahim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2353_rahim, 'Rahim', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2353_rahim, 'たい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2354_fermentasi, 'Fermentasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2354_fermentasi, 'Bergejolak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2354_fermentasi, 'こう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2355_degradasi, 'Degradasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2355_degradasi, 'だ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2355_degradasi, 'お', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2355_degradasi, 'くず', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2356_mencegat, 'Mencegat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2356_mencegat, 'しゃ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2356_mencegat, 'さえぎ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2357_burung_gagak, 'Burung gagak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2357_burung_gagak, 'からす', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2357_burung_gagak, 'う', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2357_burung_gagak, 'お', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2358_cembung, 'Cembung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2358_cembung, 'Tidak rata', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2358_cembung, 'とつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2358_cembung, 'でこ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2359_cekung, 'Cekung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2359_cekung, 'Kosong', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2359_cekung, 'おう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2359_cekung, 'くぼ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2359_cekung, 'へこ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2359_cekung, 'ぼこ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2360_maple, 'Maple', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2360_maple, 'かえで', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2360_maple, 'ふう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2361_tanda_tanya, 'Tanda tanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2361_tanda_tanya, '?', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2361_tanda_tanya, 'や', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2361_tanda_tanya, 'さい', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2361_tanda_tanya, 'かな', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2362_pucat, 'Pucat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2362_pucat, 'Biru', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2362_pucat, 'そう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2362_pucat, 'あお', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2364_tunas, 'Tunas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2364_tunas, 'Tumbuh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2364_tunas, 'ほう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2364_tunas, 'も', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9397_ulat_sutera, 'Ulat sutera', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9397_ulat_sutera, 'かいこ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9397_ulat_sutera, 'さん', false, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不文律', 'hukum-tidak-tertulis', 57, 37, '<kanji>bukan</kanji> <kanji>tulisan</kanji> <kanji>hukum</kanji> ini adalah hukum yang belum tertulis. Itu adalah <vocabulary>hukum tidak tertulis</vocabulary>, seperti melepas sepatu dan mandi setiap hari.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_4612_hukum_tidak_tertulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '血脈', 'garis-keturunan', 57, 38, '<kanji>Darah</kanji> mengalir melalui <kanji>pembuluh darah</kanji> Anda, membawa kisah-kisah <vocabulary>silsilah</vocabulary> Anda, <vocabulary>garis keturunan</vocabulary> Anda.

Perhatikan bahwa kata ini cukup formal dan sastra.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_5476_garis_keturunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脊髄', 'sumsum-tulang-belakang', 57, 39, 'Seseorang dengan <kanji>perawakan</kanji> yang besar mungkin memiliki banyak <kanji>sumsum</kanji> di sekitar <vocabulary>sumsum tulang belakang</vocabulary> mereka. (Lagi pula, perawakan tinggi = sumsum tulang belakang lebih panjang.)

Hati-hati dengan yang satu ini — ini sebenarnya tidak ada hubungannya dengan sumsum tulang belakang Anda, dan semuanya ada hubungannya dengan sumsum tulang belakang Anda. Tahukah Anda, jalan raya saraf yang dilindungi oleh tulang belakang Anda? Hal itu. Dulu mereka menyebutnya sumsum karena itu adalah sesuatu yang lunak yang mereka temukan di dalam tulang belakang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8252_sumsum_tulang_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '熊之実', 'ikan-badut', 57, 40, 'Saya ingin Anda mencoba <kanji>menanggung</kanji> <kanji>ini</kanji> <kanji>kebenaran</kanji> dan itulah kanji yang membentuk kata <vocabulary>ikan badut</vocabulary>! Apakah menurut Anda ikan badut adalah beruang ini? Saya mengatakan yang sebenarnya! Mungkin.', 'Kata ini terdiri dari bacaan kun''yomi untuk semua kanji. Anda belum mempelajari bacaan ini untuk 之 atau 実, jadi inilah mnemonik untuk membantu Anda:

Jika kamu terlalu dekat dengan <kosakata>ikan badut</vocabulary>, ia akan bersembunyi di dalam anemon penyengatnya dan berteriak, "KAMU TIDAK <reading> MENGENAL AKU</reading> (のみ)! Memang benar, kamu tidak tahu ikan badut ini, tapi kamu ingin tahu. Tapi aku rasa mereka semua takut pada orang asing... bagaimana kamu bisa mengenalku jika kamu tidak memberiku kesempatan, ikan badut?!')
    RETURNING id INTO v_8341_ikan_badut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '乙', 'kedua', 57, 41, 'Jika ada sesuatu yang <kanji>terakhir</kanji>, ia tidak boleh menjadi yang pertama, setidaknya harus menjadi <vocabulary>kedua</vocabulary>. Ini juga berfungsi untuk daftar. Jadi jika Anda memiliki A sampai D, itu akan menjadi <vocabulary>B</vocabulary>.

Kata ini juga digunakan sebagai bahasa gaul untuk おつかれさま, yang merupakan asal kata <vocabulary>terima kasih</vocabulary>. Ini juga dapat digunakan sebagai kata sifat yang berarti <vocabulary>chic</vocabulary>.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8342_kedua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '甲乙', 'a-dan-b', 57, 42, '<kanji>A</kanji> dan <kanji>B</kanji> menjadi <vocabulary>A dan B</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8343_a_dan_b;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '間伐', 'penipisan-pohon', 57, 43, '<kanji>Menebang</kanji> pohon dalam <kanji>interval</kanji>, bukan semuanya sekaligus, dan ini disebut <vocabulary>penipisan pohon</vocabulary>. Dengan begitu masih ada hutan di sana, tapi kayunya bisa digunakan untuk hal lain juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8344_penipisan_pohon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '伐採', 'lamban', 57, 44, '<kanji>Tebang</kanji> pohon dan <kanji>kumpulkan</kanji>. Itu disebut <vocabulary>lamban</vocabulary>. Atau jika Anda menebang semuanya dan mengambil semuanya, itu adalah <vocabulary>deforestasi</vocabulary> dan Anda seharusnya malu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8345_lamban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '減俸', 'pengurangan-gaji', 57, 45, 'Bos Anda mengatakan dia akan <kanji>menurunkan</kanji> <kanji>gaji</kanji> Anda dengan <vocabulary>pengurangan gaji</vocabulary> di seluruh perusahaan. Anda mungkin harus mulai mencari pekerjaan baru yang tidak akan menghasilkan <vocabulary>pemotongan gaji</vocabulary> seperti ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati karena ほう menjadi ぽう di sini.')
    RETURNING id INTO v_8346_pengurangan_gaji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '年俸', 'gaji-tahunan', 57, 46, '<kanji>gaji</kanji> yang Anda dapatkan setiap <kanji>tahun</kanji> adalah <vocabulary>gaji tahunan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati karena ほう menjadi ぽう di sini.')
    RETURNING id INTO v_8347_gaji_tahunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '傍ら', 'ketika', 57, 47, 'Kanji 傍 secara harafiah berarti <kanji>dekat</kanji> atau <kanji>samping</kanji>, namun di sini, dalam 傍ら digunakan secara kiasan, itulah sebabnya kata ini berarti <vocabulary>sementara</vocabulary> atau <vocabulary>di samping</vocabulary>. 

傍ら bisa berarti <vocabulary>di samping</vocabulary> secara fisik, namun Anda akan lebih sering melihatnya dalam tulisan untuk menunjukkan seseorang melakukan dua hal sekaligus, seperti 仕事の傍ら勉強している (belajar sambil bekerja). Pada dasarnya, ini seperti Anda sedang melakukan tugas atau aktivitas lain <em>di samping</em> tugas utama Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda melakukan pekerjaan Anda <vocabulary>sambil</vocabulary> memikirkan tentang <reading>perang pemotong</reading> (かたわ) — perang tanpa akhir untuk memotong anggaran di tempat kerja. Bayangkan semua rekan kerja Anda telah hilang karena PHK akibat perang pemotong ini… Anda tidak akan pernah tahu apakah Anda selamat dari putaran PHK terakhir ini, jadi Anda harus bekerja sambil mengkhawatirkan pertumpahan darah di perusahaan-perusahaan ini. Ya!')
    RETURNING id INTO v_8348_ketika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凸版', 'mesin-cetak', 57, 48, 'Tekan ukiran <kanji>tidak rata</kanji> pada kertas untuk membuat <kanji>edisi</kanji> terbaru majalah Anda. Yang Anda gunakan adalah <vocabulary>letterpress</vocabulary>. Hal ini membuat pencetakan massal menjadi bagus dan murah di Jepang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati karena はん menjadi ぱん di sini.')
    RETURNING id INTO v_8349_mesin_cetak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凹凸', 'tidak-rata', 57, 49, 'Permukaan yang ditutupi bagian <kanji>cembung</kanji> dan <kanji>cekung</kanji> akan menjadi <vocabulary>tidak rata</vocabulary> dan <vocabulary>kasar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8350_tidak_rata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恐喝', 'pemerasan', 57, 50, 'Seorang pria berjaket kulit <kanji>memarahi</kanji> Anda dan menggunakan taktik <kanji>ketakutan</kanji> untuk mendapatkan bayaran. Dia <vocabulary>memeras</vocabulary> Anda! Itu ilegal. Kalau dipikir-pikir, dia mungkin anggota yakuza. Anda harus pindah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8351_pemerasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '坪', '33-meter-persegi', 57, 51, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8352_33_meter_persegi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '堕落', 'kebejatan', 57, 52, '<kanji>degradasi</kanji> <kanji>kejatuhan</kanji> adalah jatuhnya ke dalam <vocabulary>kebobrokan</vocabulary>. Artinya, Anda mungkin akan menjalani kehidupan <vocabulary>degradasi</vocabulary>. Mencuri, menusuk, mencuci uang, berbagai ekses… Kebejatan seperti itu.

堕落 mengacu pada keadaan terjerumus ke dalam kondisi yang buruk atau tidak bermoral, baik itu tentang karakter seseorang atau masyarakat dan nilai-nilainya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8353_kebejatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '奉行', 'hakim', 57, 53, 'Jika Anda bisa <kanji>mendedikasikan</kanji> diri Anda untuk <kanji>menghadiri</kanji>sekelompok pertemuan dan menangani masalah semua orang, Anda akan menjadi <vocabulary>hakim</vocabulary> yang baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari salah satu bacaan ini. Maaf! Berikut ini mnemonik untuk membantu Anda:

<vocabulary>Hakim</vocabulary> adalah satu-satunya orang yang diperbolehkan minum <reading>boo</reading>ze dan makan <reading>gyo</reading>za (ぶぎょう). Jika Anda melihat seseorang minum minuman keras dan makan pangsit secara bersamaan di Jepang, Anda akan tahu bahwa orang tersebut adalah hakim!')
    RETURNING id INTO v_8354_hakim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '海峡', 'saluran', 57, 54, '<kanji>jurang</kanji> di perairan yang menghubungkan dua <kanji>laut</kanji> adalah <vocabulary>saluran</vocabulary> atau <vocabulary>selat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8355_saluran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '峡谷', 'jurang', 57, 55, '<kanji>jurang</kanji> di <kanji>lembah</kanji> tetaplah <vocabulary>jurang</vocabulary>. Bisa juga berupa <vocabulary>gorge</vocabulary> atau <vocabulary>ngarai</vocabulary>. Biasanya ukurannya sangat besar. Seperti Grand Canyon!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 谷, jadi inilah mnemonik untuk membantu Anda:

Jika Anda akan melakukan perjalanan melalui <vocabulary>jurang</vocabulary> yang besar, Anda harus tetap terhidrasi. Yang terbaik untuk dibawa adalah <read>Coke</reading> (こく) yang enak dan dingin. Tidak ada yang bisa menghilangkan dahaga Anda dari berkeringat melalui jurang yang panjang dan kasar seperti Coke yang nikmat!')
    RETURNING id INTO v_8356_jurang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弔意', 'belasungkawa', 57, 56, 'Ekspresikan <kanji>ide</kanji> unik Anda tentang <kanji>belasungkawa</kanji> dengan menyampaikan <vocabulary>belasungkawa</vocabulary> dan <vocabulary>simpati</vocabulary> Anda kepada orang-orang yang sedang mengalami masa-masa sulit.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8357_belasungkawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弔辞', 'alamat-peringatan', 57, 57, 'Ketika seseorang <kanji>berhenti</kanji> dari kehidupannya, Anda perlu menyampaikan <kanji>belasungkawa</kanji> Anda selama <vocabulary>pidato peringatan</vocabulary> mereka. Keluarkan semuanya dan beri tahu semua orang apa pendapat Anda tentang orang mati itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8358_alamat_peringatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弔う', 'untuk-berduka', 57, 58, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>belasungkawa</kanji>, jadi versi kata kerjanya adalah <vocabulary>to berkabung untuk</vocabulary> atau <vocabulary>to condole</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda sepertinya <vocabulary>berduka atas</vocabulary> hal-hal yang benar-benar Anda pedulikan. Maka kamu akan berduka atas <read>toe mura</reading>l (とむら) milikmu. Anda membuat mural untuk jari kaki kesayangan Anda, jadi jika terjadi sesuatu padanya, Anda pasti ingin berduka karenanya.')
    RETURNING id INTO v_8359_untuk_berduka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悪循環', 'lingkaran-setan', 57, 59, 'Anda sudah mengetahui bahwa 循環 berarti "sirkulasi" atau "siklus", jadi menambahkan <kanji>buruk</kanji> ke dalamnya akan menjadikannya <vocabulary>lingkaran setan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8360_lingkaran_setan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '循環器', 'organ-peredaran-darah', 57, 60, 'Anda sudah mengetahui bahwa 循環 berarti "sirkulasi", jadi menambahkan <kanji>wadah</kanji> akan menjadikannya sebagai tempat menampung benda-benda yang bersirkulasi. Mereka adalah <vocabulary>organ peredaran darah</vocabulary> Anda. Mereka berisi semua darah yang bergerak ke seluruh tubuh Anda seperti sebuah wadah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8361_organ_peredaran_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '惜しい', 'sangat-disesalkan', 57, 61, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>hemat</kanji>? Itu <vocabulary>disesalkan</vocabulary> atau <vocabulary>berharga</vocabulary>. Jika Anda terlalu berhemat untuk membeli sesuatu, tindakan Anda akan disesalkan di kemudian hari ketika Anda menyadari bahwa Anda menginginkan barang itu. Jika Anda sangat berhemat dan hanya membeli satu barang saja, itu sangat berharga bagi Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda membuat keputusan yang <vocabulary>disesalkan</vocabulary>. Anda tidak membeli jam yang Anda inginkan dan sekarang sudah dihentikan. Penjualnya memberi tahu Anda hal ini dan yang bisa Anda katakan hanyalah, "<reading>Oh</reading>..." (お) dengan sangat pelan. <vocabulary>mengecewakan</vocabulary>.')
    RETURNING id INTO v_8362_sangat_disesalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不愉快', 'tidak-menyenangkan', 57, 62, 'Anda sudah mengetahui bahwa 愉快 berarti "menyenangkan" atau "bahagia", jadi tambahkan <kanji>bukan</kanji> padanya dan Anda akan menjadi <vocabulary>tidak menyenangkan</vocabulary> dan <vocabulary>tidak bahagia</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8363_tidak_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憂い', 'duka', 57, 63, 'Ini adalah kanji tunggal dengan い di akhir, tapi tunggu! Itu bukan kata sifat, itu hanya kata benda (rumit, rumit). Kanji berarti <kanji>kesedihan</kanji>, jadi kata ini berarti <vocabulary>kesedihan</vocabulary> atau <vocabulary>distress</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika Anda mempelajari 憂える. Ingatlah itu dan Anda akan mengingat ini!')
    RETURNING id INTO v_8364_duka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '果敢', 'tegas', 57, 64, '<kanji>berani</kanji> <kanji>buah</kanji> sangat <vocabulary>tegas</vocabulary> dan <vocabulary>berani</vocabulary>! Dia akan keluar dan menjadi superhero buah atau ilmuwan atau semacamnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8365_tegas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '敢えて', 'berani', 57, 65, 'Ini adalah versi kata keterangan dari kanji <kanji>daring</kanji>, jadi artinya <vocabulary>dare to</vocabulary> atau <vocabulary>daringly</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Kamu akan <vocabulary>dengan berani</vocabulary> melompat dari tebing dan berteriak, "<reading>AAAHHH</reading> (あ)!" untuk meningkatkan keberanianmu! Kamu harus selalu berteriak AAHH sebelum berani melakukan hal yang berani!')
    RETURNING id INTO v_8366_berani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '敢行', 'tindakan-tegas', 57, 66, 'Gunakan <kanji>keberanian</kanji> Anda dan <kanji>pergi</kanji>! Anda membuat <vocabulary>tindakan tegas</vocabulary> hanya dengan melakukan seperti itu! Itu pergi atau tidak pergi dan Anda memilih pergi!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8367_tindakan_tegas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '敢然', 'dengan-berani', 57, 67, 'Jika Anda memiliki <kanji>berani</kanji> <kanji>sifat</kanji> Anda akan <vocabulary>dengan berani</vocabulary> pergi ke tempat yang belum pernah dikunjungi orang lain sebelumnya!

Perhatikan bahwa Anda perlu menambahkan と di akhir kata ini untuk menjadikannya kata keterangan, dan たる untuk menjadikannya kata sifat!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8368_dengan_berani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '敢闘', 'berjuang-dengan-berani', 57, 68, 'Jika Anda terlibat dalam <kanji>berani</kanji> <kanji>pertarungan</kanji>, Anda mungkin <vocabulary>bertarung dengan berani</vocabulary>. Anda bisa terluka, atau lebih buruk lagi, tetapi Anda tidak peduli! Bicara tentang bertarung dengan gagah berani… Dan semoga berhasil.

敢闘 adalah kata yang sangat formal yang sering digunakan untuk memuji seseorang yang memberikan segalanya — terutama dalam kompetisi — meskipun mereka tidak menang. Anda mungkin melihatnya dalam frasa seperti 敢闘賞 (Penghargaan Semangat Berjuang) di festival olahraga sekolah dan turnamen sumo.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8369_berjuang_dengan_berani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '勇敢', 'berani', 57, 69, 'Anda memiliki <kanji>keberanian</kanji> dan <kanji>keberanian</kanji>! Anda adalah pahlawan <vocabulary>pemberani</vocabulary> dan <vocabulary>heroik</vocabulary> di masa lalu. Seorang samurai mungkin?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8370_berani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '旋回', 'revolusi', 57, 70, 'Tidak peduli berapa <kanji>kali</kanji> sebuah <kanji>rotasi</kanji> berputar, itu tetaplah <vocabulary>rotasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8371_revolusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '旋風', 'angin-puyuh', 57, 71, '<kanji>rotasi</kanji> dari <kanji>angin</kanji> membentuk <vocabulary>angin puyuh</vocabulary>, baik dalam arti fisik maupun kiasan. Secara kiasan, ini juga bisa berarti <vocabulary>keributan</vocabulary> dan <vocabulary>sensation</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati karena ふう menjadi ぷう di sini (hehe).')
    RETURNING id INTO v_8372_angin_puyuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '旋律', 'melodi', 57, 72, 'Jika Anda mengikuti <kanji>hukum</kanji> <kanji>rotasi</kanji> saat memutar musik, Anda akan mendapatkan <vocabulary>melodi</vocabulary> yang indah. Jika tidak, Anda akan kehilangan semua isyarat irama yang diberikan rotasi dan itu akan terdengar seperti omong kosong.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8373_melodi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '楓', 'maple', 57, 73, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8374_maple;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '楓糖', 'gula-maple', 57, 74, '<kanji>Maple</kanji> <kanji>gula</kanji> adalah <vocabulary>maple sugar</vocabulary>!

Meskipun terkadang Anda melihat 楓糖 pada kemasan gula maple atau produk yang dibuat dengan gula maple, dalam kehidupan sehari-hari lebih umum untuk hanya mengatakan メープルシュガー.', '楓 menggunakan kun''yomi dan 糖 menggunakan on''yomi. Anda sudah mempelajari kedua hal ini, jadi Anda seharusnya tidak mempunyai masalah dengan pembacaan kata ini: かえでとう. Anda mungkin melihat beberapa toko menggunakan ini sebagai pengganti メープルシュガー agar semuanya tetap singkat dan… manis seperti maple.

楓糖 juga bisa dibaca sebagai ふうとう, menggunakan on''yomi untuk kedua kanji. Karena 楓 berisi komponen 風, masuk akal jika on''yomi-nya adalah ふう, bukan? Ketahuilah bahwa ふうとう terdengar sedikit lebih teknis atau formal daripada sesuatu yang Anda taburkan di oatmeal pagi Anda.')
    RETURNING id INTO v_8375_gula_maple;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '水槽', 'tangki-ikan', 57, 75, '<kanji>tangki</kanji> berisi <kanji>air</kanji> dapat digunakan sebagai <vocabulary>tangki ikan</vocabulary> atau <vocabulary>tangki air</vocabulary> untuk minum. Itu tergantung pada Anda dan berapa banyak ikan yang Anda miliki.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8376_tangki_ikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浴槽', 'bak-mandi', 57, 76, '<kanji>tangki</kanji> tempat Anda <kanji>mandi</kanji> adalah <vocabulary>bathtub</vocabulary>. Kecuali jika Anda mandi di seperti... persediaan air kota. Jika iya, tolong hentikan. Aku tidak mau meminum air mandimu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8377_bak_mandi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '借款', 'meminjamkan', 57, 77, 'Sebuah <kanji>artikel</kanji> yang membuktikan bahwa Anda hanya <kanji>meminjam</kanji>uang atau boneka binatang disebut <vocabulary>pinjaman</vocabulary>. Anda harus membayar kembali orang itu untuk makhluk berbulu halus itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8380_meminjamkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '烏', 'burung-gagak', 57, 78, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8382_burung_gagak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '烏龍茶', 'teh-oolong', 57, 79, '<kanji>Imperial</kanji> <kanji>teh</kanji> warna bulu <kanji>gagak</kanji> hanyalah <vocabulary>Oolong tea</vocabulary> yang terkenal dan lezat. Itu datang dari rakyat kekaisaran Tiongkok ke Jepang (mungkin) dan ada banyak varian yang berbeda. Tapi daunnya semua berwarna bulu gagak kehitaman/abu-abu.', 'Kata ini mengambil bacaan on''yomi kecuali 龍 yang merupakan pengecualian (maaf). Anda juga belum mempelajari on''yomi untuk 烏, jadi inilah mnemonik untuk membantu Anda:

Siapa yang lebih menyukai <vocabulary>teh oolong</vocabulary> dibandingkan orang lain? <read>Oooo Ron</reading> (うーろん) Weasley dari Harry Potter. Dia orang Inggris, jadi tentu saja Anda mengira dia suka teh, tapi Oolong adalah selainya. Bayangkan saja dia dan pikirkan, oooooh itu Ron, saat kamu minum teh jenis ini.

Dan pastikan kamu mengingatnya, karena ini juga ditulis dengan katakana ketika kanji tidak digunakan, untuk mengetikkan tanda panjang ー saat kamu memasukkan jawabanmu.')
    RETURNING id INTO v_8383_teh_oolong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '盲人', 'orang-buta', 57, 80, '<kanji>buta</kanji> <kanji>orang</kanji> adalah <vocabulary>orang buta</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8384_orang_buta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '盲点', 'titik-buta', 57, 81, '<kanji>buta</kanji> <kanji>titik</kanji> Anda adalah <vocabulary>titik buta</vocabulary>. Berhati-hatilah untuk memperhatikan titik buta Anda saat mengemudi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8385_titik_buta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '盲目', 'kebutaan', 57, 82, '<kanji>Buta</kanji> <kanji>mata</kanji> berarti Anda menderita <vocabulary>buta</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8386_kebutaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '色盲', 'buta-warna', 57, 83, 'Jika Anda hanya <kanji>buta</kanji> terhadap <kanji>warna</kanji> maka Anda menderita <vocabulary>buta warna</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8387_buta_warna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粗塩', 'garam-laut', 57, 84, 'Jika kamu ingin mencari <kanji>kasar</kanji> <kanji>garam</kanji>, selami saja di laut dan kumpulkan <vocabulary>garam laut</vocabulary>! Potongannya bagus, besar, dan kental, sehingga Anda benar-benar merasakannya saat memasak.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8388_garam_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紺', 'biru-laut', 57, 85, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8389_biru_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '濃紺', 'biru-laut-gelap', 57, 86, 'Teteskan <kanji>tebal</kanji> cat <kanji>biru dongker</kanji> pada kanvas dan itu akan terlihat seperti <vocabulary>biru dongker</vocabulary> yang lebih berani.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8390_biru_laut_gelap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '網羅', 'penutup', 57, 87, 'Jika <kanji>net</kanji> Anda <kanji>tersebar</kanji> cukup luas, itu akan <vocabulary>mencakup</vocabulary> semuanya. Namun, Anda harus menyebarkannya secara luas.

網羅 adalah kata yang relatif formal yang berarti "menutupi" dalam arti metaforis, seperti daftar lengkap atau dokumen referensi <vocabulary>mencakup</vocabulary> semua informasi dalam bidang tertentu. Ini memberikan perasaan yang kuat "wow, mereka benar-benar mendapatkan semuanya!" atau bahkan semacam getaran bangga "ya, saya menutupi semuanya".', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8391_penutup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '羅列', 'pencacahan', 57, 88, '<kanji>Sebarkan</kanji> <kanji>baris</kanji> angka lengkap dalam urutan yang benar dan Anda akan mendapatkan <vocabulary>enumeration</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8392_pencacahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '羅針盤', 'kompas', 57, 89, '<kanji>Sebarkan</kanji> <kanji>jarum</kanji> ke dalam <kanji>nampan</kanji> setelah digosok dengan magnet dan Anda akan membuat <vocabulary>kompas</vocabulary>! Cobalah di rumah anak-anak! Ini benar-benar berhasil!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8393_kompas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胎児', 'janin', 57, 90, '<kanji>rahim</kanji> <kanji>anak</kanji> adalah anak yang masih dalam kandungan alias <vocabulary>janin</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8394_janin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '堕胎', 'abortus', 57, 91, 'Jika Anda membawa <kanji>degradasi</kanji> ke dalam <kanji>rahim</kanji>, dan terdapat janin di dalamnya, hal ini menyebabkan <vocabulary>aborsi</vocabulary>. Dalam beberapa kasus, Anda mungkin juga menyebutnya sebagai <vocabulary>feticide</vocabulary>.

Kata ini sangat formal dan sering digunakan dalam konteks hukum atau literatur.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8395_abortus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '受胎', 'pembuahan', 57, 92, '<kanji>Terima</kanji> seorang anak ke dalam <kanji>rahim</kanji> Anda dengan <vocabulary>konsepsi</vocabulary>. Sekarang ada bayi di sana!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8396_pembuahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胎盤', 'plasenta', 57, 93, 'Sesuatu keluar dari <kanji>rahim</kanji> lalu ditaruh di <kanji>nampan</kanji>. Itu adalah <vocabulary>afterbirth</vocabulary>. Ya, ya, baru saja. Tumbuhlah, itu kata yang harus kamu ketahui.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8397_plasenta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '腸', 'usus', 57, 94, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8398_usus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胃腸', 'perut', 57, 95, '<kanji>Usus</kanji> dan <kanji>perut</kanji> membentuk <vocabulary>perut</vocabulary> di tubuh Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8399_perut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '盲腸', 'lampiran', 57, 96, 'Manakah dari <kanji>nyali</kanji> Anda yang <kanji>buta</kanji>? <vocabulary>lampiran</vocabulary> Anda. Itu sebabnya banyak orang harus mengeluarkannya. Ia ada di sana dalam keadaan buta, terbentur-bentur, mengacaukan segalanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8400_lampiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '大腸', 'usus-besar', 57, 97, '<kanji>usus</kanji> besar</kanji> disebut <vocabulary>usus besar</vocabulary>, atau <vocabulary>kolon</vocabulary>. Dari sanalah kotoran Anda keluar dan keluar!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8401_usus_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '膜', 'selaput', 57, 98, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8402_selaput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '角膜', 'kornea', 57, 99, '<kanji>Membran</kanji> yang melingkari <kanji>sudut</kanji> ada di mata Anda. Matanya bulat dan selaputnya harus ditekuk di bagian depan secara miring. Ini disebut <vocabulary>kornea</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8403_kornea;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '網膜', 'retina', 57, 100, 'Di bagian belakang mata Anda terdapat <kanji>jaring</kanji>membran</kanji> yang disebut <vocabulary>retina</vocabulary>. Ini seperti jaring karena menangkap… ringan! Anda tahu, untuk membantu Anda melihat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8404_retina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '萌芽', 'pengecambahan', 57, 101, '<kanji>kecambah</kanji> yang <kanji>kecambah</kanji> dapat berkat <vocabulary>kecambah</vocabulary> karena mampu <vocabulary>bertunas</vocabulary> bagus, besar, dan kuat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 芽, jadi inilah mnemonik untuk membantu Anda:

Saat tanaman bertunas dari dalam tanah, ia masih bayi sehingga yang bisa dikatakan hanyalah goo goo <reading>ga</reading> ga (が).')
    RETURNING id INTO v_8405_pengecambahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '均衡', 'keseimbangan', 57, 102, '<kanji>Samakan</kanji> dengan <kanji>keseimbangan</kanji> Anda dan Anda akan memiliki <vocabulary>equilibrium</vocabulary> yang solid.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8406_keseimbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '平衡', 'keseimbangan', 57, 103, '<kanji>Tingkatkan</kanji>sepuluh dari <kanji>keseimbangan</kanji> Anda dan Anda akan memiliki <vocabulary>keseimbangan</vocabulary> yang sempurna.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8407_keseimbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '烏賊', 'cumi-cumi', 57, 104, 'Lihatlah ke laut dan Anda akan melihat apa yang tampak seperti <kanji>gagak</kanji> bergerak di bawah air dan itu adalah <kanji>pencuri</kanji>! Itu mencuri dari semua ikan. Saat mendekat, Anda melihat bahwa itu bukan burung gagak, melainkan <vocabulary>cumi-cumi</vocabulary>. Atau <vocabulary>cumi-cumi</vocabulary>? Satu atau yang lain.', 'Pembacaan kata ini benar-benar tidak teratur, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Anda memanggil polisi ikan untuk menangkap <vocabulary>cumi-cumi</vocabulary> pencuri itu, namun ia melompat ke <reading>ea</reading>gle <reading>ca</reading>r (いか) dan melarikan diri dengan cepat. Jika Anda belum mengetahuinya, mobil elang adalah elang yang bekerja sambilan sebagai mobil. Mobil elang itu meluncur ke angkasa, jadi polisi ikan tidak mungkin bisa menangkapnya sekarang.')
    RETURNING id INTO v_8408_cumi_cumi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '海賊', 'bajak-laut', 57, 105, '<kanji>Perampok</kanji> yang berlayar di <kanji>laut</kanji> tinggi adalah <vocabulary>bajak laut</vocabulary>! Arrr!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8409_bajak_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '山賊', 'bandit', 57, 106, '<kanji>Gunung</kanji> <kanji>perampok</kanji> dikenal sebagai <vocabulary>bandit</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8410_bandit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '盗賊', 'maling', 57, 107, '<kanji>perampok</kanji> yang <kanji>mencuri</kanji> adalah <vocabulary>pencuri</vocabulary>. Dan saya rasa masih menjadi <vocabulary>perampok</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8411_maling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '迎賓館', 'aula-resepsi', 57, 108, '<kanji>gedung publik</kanji> tempat Anda <kanji>menyambut</kanji> tamu <kanji>VIP</kanji> adalah <vocabulary>aula resepsi</vocabulary>. Atau <vocabulary>guest house</vocabulary> jika mereka bermalam.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8412_aula_resepsi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '普遍', 'universal', 57, 109, 'Sesuatu yang <kanji>normal</kanji> dan <kanji>universal</kanji> tetaplah <vocabulary>universal</vocabulary>. Biasanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8413_universal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '一遍', 'sekali', 57, 110, '<kanji>Satu</kanji> peristiwa <kanji>universal</kanji> hanya dapat terjadi <vocabulary>sekali</vocabulary>. Sangat jarang terjadi lebih dari itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati saja karena へん menjadi ぺん di sini.')
    RETURNING id INTO v_8414_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '何遍', 'berapa-kali', 57, 111, '<kanji>Apa</kanji> yang <kanji>universal</kanji>? <vocabulary>Berapa kali</vocabulary> menurut Anda pertanyaan tersebut telah ditanyakan sepanjang waktu? Mungkin sering kali.', 'Ini adalah kata jukugo dengan bacaan yang tidak biasa, dimana kanji pertama menggunakan kun''yomi dan kanji kedua menggunakan on''yomi. Anda pernah melihat bacaan ini sebelumnya, jadi Anda seharusnya bisa membaca ini. Hati-hati saja, karena へん menjadi べん di sini!')
    RETURNING id INTO v_8415_berapa_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遍歴', 'pengalaman', 57, 112, '<kanji>universal</kanji> <kanji>sejarah</kanji> Anda adalah keseluruhan sejarah Anda. Dengan kata lain, seluruh <vocabulary>pengalaman</vocabulary> Anda.

Kata ini awalnya untuk jenis <vocabulary>perjalanan</vocabulary> atau <vocabulary>perjalanan</vocabulary> yang dilakukan seseorang dalam hidup. Namun saat ini Anda akan menggunakannya secara lebih abstrak untuk membicarakan pengalaman masa lalu Anda, atau mungkin perjalanan spiritual Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8416_pengalaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遮る', 'untuk-mengganggu', 57, 113, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencegat</kanji>, jadi versi kata kerjanya adalah <vocabulary>to intercept</vocabulary> atau <vocabulary>to interup</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Hal yang ingin <vocabulary>diinterupsi</vocabulary> dan <vocabulary>dicegat</vocabulary> adalah <reading>sighing gui</reading>tar (さえぎ) teman sekamarmu. Dia terus memainkannya dan yang dilakukannya hanyalah mengeluarkan suara desahan yang panjang dan mengerikan. Anda ingin menghentikannya dengan cara apa pun.')
    RETURNING id INTO v_8417_untuk_mengganggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遮断', 'isolasi', 57, 114, 'Jika Anda <kanji>mencegat</kanji> perdagangan dan <kanji>memutus</kanji> suatu negara dari seluruh dunia, mereka akan terjebak dalam keadaan <vocabulary>isolasi</vocabulary> atau jika mereka mengidap penyakit seperti zombie-itus, itu adalah <vocabulary>karantina</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8418_isolasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酵素', 'enzim', 57, 115, 'Satu-satunya <kanji>elemen</kanji> yang Anda perlukan untuk <kanji>memfermentasi</kanji> sesuatu adalah <vocabulary>enzyme</vocabulary>. Itu menghancurkan apa pun yang Anda coba fermentasi dengan cara yang benar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8419_enzim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酵母', 'ragi', 57, 116, '<kanji>induk</kanji> dari <kanji>fermentasi</kanji>yang baik adalah <vocabulary>ragi</vocabulary>! Jika Anda ingin memanggang pai atau roti, Anda harus mendapatkan yang terbaik. Dan jika Anda tidak punya, mungkin tetangga Anda punya uang tambahan yang bisa Anda pinjam?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8420_ragi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '発酵', 'fermentasi', 57, 117, 'Saat Anda <kanji>memfermentasi</kanji> sesuatu, hal itu membuat <kanji>menyimpang</kanji> dari aslinya dan berubah selama <vocabulary>fermentasi</vocabulary> menjadi sesuatu yang baru.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8421_fermentasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '醸成', 'buatan', 57, 118, 'Bir hanya bisa <kanji>menjadi</kanji> <kanji>diseduh</kanji> jika Anda memutuskan untuk <vocabulary>menyeduh</vocabulary> itu. Bir tidak bisa dibuat sendiri, lho.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8422_buatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '醸造', 'pembuatan-bir', 57, 119, '<kanji>Buat</kanji> <kanji>seduhan</kanji> bir dengan <vocabulary>menyeduh</vocabulary> bir tersebut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8423_pembuatan_bir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '醸す', 'untuk-menyeduh', 57, 120, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>brew</kanji>, jadi versi kata kerjanya adalah <vocabulary>to brew</vocabulary>.

Saat ini 醸す sering digunakan secara kiasan, dalam hal ini artinya <vocabulary>menimbulkan</vocabulary>. Anda akan melihatnya dalam kaitannya dengan suatu peristiwa yang menimbulkan kontroversi atau perdebatan, misalnya, atau bahkan dalam frasa seperti ムードを醸す (untuk menimbulkan suasana hati tertentu).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Apa yang ingin Anda <vocabulary>buat</vocabulary>? Beberapa bir rasa <read>camo</reading>mile (<ja>かも</ja>). Siapa yang tidak suka brewski yang rasanya camomile? Anda pikir saya bercanda, tapi akhir-akhir ini semua jenis hipster di luar sana membuat bir camomile.')
    RETURNING id INTO v_8424_untuk_menyeduh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鎮まる', 'untuk-tenang', 57, 121, 'Anda sudah mengetahui bahwa 鎮める berarti "menenangkan", namun yang satu ini terjadi setelah mereka ditenangkan. Mereka mulai <vocabulary>menenangkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Saat Anda berada di perpustakaan, pustakawan selalu menyuruh Anda <vocabulary>untuk tenang</vocabulary>. <read>Dia</reading> (しず) sangat jahat! Dia tidak pernah mengizinkanmu berbicara di perpustakaan. Siapa yang jahat padamu? Dia jahat padamu!!')
    RETURNING id INTO v_8425_untuk_tenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '閲覧', 'menjelajah', 57, 122, 'Jika Anda ingin <kanji>melihat</kanji> dan melakukan <kanji>pemeriksaan</kanji> singkat terhadap beberapa hal, maka Anda tinggal <vocabulary>menjelajah</vocabulary>. Belum mau beli, tinggal lihat-lihat saja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8426_menjelajah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '検閲', 'sensor', 57, 123, 'Jika Anda <kanji>memeriksa</kanji> sesuatu terlalu dekat selama <kanji>pemeriksaan</kanji> Anda mungkin akan menemukan cacat dan ingin <vocabulary>menyensor</vocabulary> itu. Letakkan garis hitam kecil di atas semua kekurangan yang Anda temukan saat Anda menatap.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8427_sensor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '校閲', 'revisi', 57, 124, 'Sebuah <kanji>inspeksi</kanji> yang Anda lakukan terhadap pekerjaan rumah Anda sebelum <kanji>sekolah</kanji> adalah <vocabulary>revisi</vocabulary>. Terkadang <vocabulary>proofreading</vocabulary> akan membantu Anda menemukan kesalahan sebelum Anda menyerahkannya juga. Pastikan Anda memeriksa semuanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8428_revisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鼓舞', 'inspirasi', 57, 125, '<kanji>ketukan</kanji> membuat Anda ingin <kanji>menari</kanji>. Itulah <vocabulary>inspirasi</vocabulary> yang Anda perlukan untuk menari. Iramanya memberi Anda <vocabulary>dorongan</vocabulary> untuk menari sepanjang malam. Dan tanpa hentakan yang begitu hebat, gerakan tarian Anda akan timpang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8429_inspirasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鼓', 'drum-tangan', 57, 126, 'Pukulan apa yang membuat <kanji>ketukan</kanji> sakit? <kosakata>drum tangan</vocabulary> kecil yang keren.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Anda suka menggunakan <vocabulary>hand drum</vocabulary> ketika <reading>dua du</reading>des <reading>mee</reading>t (つづみ). Anda memukul dan mengetuknya saat mereka melakukan tos dan itu membuat mereka sangat tidak nyaman sehingga membuat Anda sangat bahagia. Itu sebabnya kamu sangat menyukai drum tanganmu.')
    RETURNING id INTO v_8430_drum_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鼓動', 'mengalahkan', 57, 127, '<kanji>detak</kanji> yang <kanji>gerakan</kanji> di dalam tubuh Anda adalah <vocabulary>detak</vocabulary>jantung Anda. Letakkan tangan Anda di leher dan Anda akan dapat merasakan <vocabulary>denyut</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8431_mengalahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鼓膜', 'gendang-pendengar', 57, 128, 'Anda dapat mendengar <kanji>ketukan</kanji> sesuatu karena adanya <kanji>selaput</kanji> di telinga Anda yang disebut <vocabulary>gendang telinga</vocabulary>. Pastikan Anda tidak memasukkan jari terlalu jauh ke dalam telinga karena dapat melukainya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8432_gendang_pendengar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '太鼓', 'drum', 57, 129, '<kanji>gemuk</kanji> <kanji>drum</kanji> tetaplah <vocabulary>drum</vocabulary>. Kata ini dapat digunakan untuk semua jenis drum, namun kata yang paling umum di Jepang adalah <vocabulary>taiko</vocabulary>. Ada banyak jenis taiko yang berbeda, dan sebagian besar berukuran besar dan gemuk, serta menghasilkan suara dalam yang indah. Mereka sangat keren untuk ditonton dan dimainkan!

Jika berbicara tentang drum taiko secara spesifik, Anda juga dapat mengucapkan 和太鼓 untuk memperjelas bahwa yang Anda maksud bukan drum lama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8433_drum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '癒す', 'untuk-menyembuhkan-sesuatu', 57, 130, 'Kanji berarti <kanji>menyembuhkan</kanji> dan versi kata kerjanya berarti <vocabulary>menyembuhkan sesuatu</vocabulary>, <vocabulary>menyembuhkan sesuatu</vocabulary>, dan bahkan <vocabulary>memuaskan dahaga</vocabulary>, baik secara harfiah maupun metaforis. Seperti yang mungkin bisa Anda tebak, penggunaan terakhir ini memiliki kesan puitis.

Seperti banyak kata kerja yang berakhiran す, kata kerja ini bersifat transitif, artinya sedang dilakukan terhadap sesuatu. Jadi kamu bisa menggunakannya saat menyembuhkan penyakit, menyembuhkan patah hati, atau melepas dahaga akan petualangan!', '<vocabulary>Untuk menyembuhkan sesuatu</vocabulary> terkadang perlu melakukan sesuatu <reading>いや</reading> (menjijikkan). Sekalipun Anda tidak menyukainya, meskipun menjijikkan, Anda tetap melakukannya, karena Anda ingin menyembuhkan apa pun itu.')
    RETURNING id INTO v_9053_untuk_menyembuhkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蒼白', 'kusam', 57, 131, 'Jika Anda <kanji>pucat</kanji> <kanji>putih</kanji>, Anda <vocabulary>pucat</vocabulary>, atau <vocabulary>pucat</vocabulary>. Kata ini biasanya digunakan untuk membicarakan <vocabulary>pucat</vocabulary> wajah seseorang.', 'Ini adalah kata jukugo dan menggunakan on''yomi untuk kedua kanjinya. Anda mempelajari bacaan itu dengan kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_9110_kusam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '拓哉', 'takuya', 57, 132, '<kanji>pengolahan</kanji> dari <kanji>tanda tanya</kanji> adalah sesuatu yang hanya dapat dilakukan oleh orang yang disebut <vocabulary>Takuya</vocabulary>. Bayangkan seorang Takuya yang terkenal, seperti aktor dan penyanyi Kimura Takuya (木村 拓哉 a.k.a. キムタク), atau seorang Takuya lho, yang mengembangkan bidang tanda tanya yang sangat luas. Baris demi baris tanda tanya. Aku ingin tahu apa yang akan dia lakukan dengan semua tanda tanya itu setelah mereka siap panen. Orang lain yang pasti memiliki banyak tanda tanya adalah pemain baseball profesional Kinoshita Takuya (木下 拓哉 alias キノタク) dan aktor, model, dan bintang K-Pop Terada Takuya (寺田 拓哉).', 'Anda mempelajari kedua bacaan ini dengan kanji, jadi Anda seharusnya bisa membaca nama ini sendiri.')
    RETURNING id INTO v_9112_takuya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蚕', 'ulat-sutera', 57, 133, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Anda sudah mempelajari cara membaca dengan kanji, jadi sebaiknya Anda pergi ke sini!')
    RETURNING id INTO v_9439_ulat_sutera;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4612_hukum_tidak_tertulis, 'Hukum Tidak Tertulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4612_hukum_tidak_tertulis, 'Aturan Tidak Tertulis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4612_hukum_tidak_tertulis, 'Hukum Umum', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4612_hukum_tidak_tertulis, 'ふぶんりつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4612_hukum_tidak_tertulis, '学校では日本語でしか話してはいけないという不文律のようなものがあります。', 'Ada semacam peraturan tidak tertulis yang mengatakan bahwa orang hanya diperbolehkan berbicara bahasa Jepang di sekolah ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5476_garis_keturunan, 'Garis keturunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5476_garis_keturunan, 'Garis keturunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5476_garis_keturunan, 'Hubungan Darah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_5476_garis_keturunan, 'けつみゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5476_garis_keturunan, '我々の血脈を絶やさせるべきではない。', 'Kita tidak boleh membiarkan garis keturunan kita punah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5476_garis_keturunan, 'これからも、一族の血脈をしっかり保っていかなければならない。', 'Kita harus terus menjaga garis keturunan keluarga kita di masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5476_garis_keturunan, 'この血脈を引く女性が東京のどこかにいるという情報が入った。', 'Kami mendapat informasi bahwa seorang wanita yang menyandang garis keturunan ini ada di suatu tempat di Tokyo.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8252_sumsum_tulang_belakang, 'Sumsum tulang belakang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8252_sumsum_tulang_belakang, 'せきずい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8252_sumsum_tulang_belakang, '事故で脊髄に傷がついてしまったのです。', 'Sumsum tulang belakang saya rusak akibat kecelakaan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8252_sumsum_tulang_belakang, '脊髄は脳と体をつなぐ重要な部分です。', 'Sumsum tulang belakang merupakan bagian penting yang menghubungkan otak dan tubuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8252_sumsum_tulang_belakang, '脊髄を損傷すると、体が動かなくなることがあります。', 'Jika sumsum tulang belakang rusak, tubuh mungkin tidak bisa bergerak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8252_sumsum_tulang_belakang, '脊髄反射とは、考える前に体が動く反応のことです。', 'Refleks tulang belakang adalah respons tubuh Anda bergerak sebelum Anda bisa berpikir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8341_ikan_badut, 'Ikan badut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8341_ikan_badut, 'Ikan Anemon', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8341_ikan_badut, 'くまのみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8341_ikan_badut, 'ニモやその家族は、隠熊之実という魚だよ。', 'Nemo dan keluarganya adalah ikan yang disebut ikan badut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8342_kedua, 'Kedua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8342_kedua, 'B', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8342_kedua, 'Terima kasih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8342_kedua, 'Cantik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8342_kedua, 'おつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8342_kedua, 'どーも、報告乙です。', 'Hei, terima kasih atas laporannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8342_kedua, '合同会社トーフグを甲とし、ワニカニを乙として、甲の業務の委託に関して、次の通り契約を締結する。', 'Tofugu LLC, sebagai Pihak A, dan WaniKani, sebagai Pihak B, dengan ini mengadakan kontrak berikut mengenai pengalihdayaan layanan Pihak A.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8342_kedua, 'こうして山頂から生まれ故郷を見渡すのも、また乙なものですねぇ。', 'Sangat indah melihat kampung halamanku dari puncak gunung.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8343_a_dan_b, 'A dan B', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8343_a_dan_b, 'Pertama Dan Kedua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8343_a_dan_b, 'こうおつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8343_a_dan_b, 'どちらも甲乙つけがたい出来栄えだ。', 'Sulit untuk mengatakan hasil mana yang lebih baik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8344_penipisan_pohon, 'Penipisan Pohon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8344_penipisan_pohon, 'Penjarangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8344_penipisan_pohon, 'Penipisan Berkala', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8344_penipisan_pohon, 'かんばつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8344_penipisan_pohon, '間伐を行うことで、残った木は幹が太く枝葉がしっかりとした健全な木に育ちます。', 'Penipisan hutan secara berkala membuat pohon-pohon lainnya menumbuhkan batang yang tebal serta cabang dan daun yang kuat dan sehat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8345_lamban, 'Lamban', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8345_lamban, 'Tebangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8345_lamban, 'Deforestasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8345_lamban, 'ばっさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8345_lamban, '森林を伐採する際は、事前に届け出が必要です。', 'Pemberitahuan diperlukan sebelum menebang hutan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8346_pengurangan_gaji, 'Pengurangan Gaji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8346_pengurangan_gaji, 'Pemotongan Gaji', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8346_pengurangan_gaji, 'げんぽう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8346_pengurangan_gaji, '会社から、三割の減俸を言い渡されました。', 'Pemotongan gaji tiga puluh persen diumumkan oleh perusahaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8347_gaji_tahunan, 'Gaji Tahunan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8347_gaji_tahunan, 'ねんぽう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8347_gaji_tahunan, 'この選手は、破格の年俸をオファーされましたが、それを蹴ってチームに留まりました。', 'Pemain ini ditawari gaji tahunan yang luar biasa, namun ia menolaknya dan tetap bersama timnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8348_ketika, 'Ketika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8348_ketika, 'Di samping', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8348_ketika, 'Di samping', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8348_ketika, 'かたわら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8348_ketika, '新聞局で働く傍ら、夜間学校に通っています。', 'Saat bekerja di kantor surat kabar, saya mengikuti kelas malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8348_ketika, '彼女は家事の傍ら、オンラインショップも運営している。', 'Selain melakukan pekerjaan rumah, ia juga menjalankan toko online.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8348_ketika, '子犬は、母犬のぬくもりを確かめるように、その傍らで小さく丸まり、静かに夢の世界へと落ちていった。', 'Anak anjing itu, seolah mencari kehangatan induknya, meringkuk di sampingnya dan diam-diam melayang ke dunia mimpi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8349_mesin_cetak, 'Mesin cetak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8349_mesin_cetak, 'Percetakan Bantuan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8349_mesin_cetak, 'とっぱん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8349_mesin_cetak, '我が社では、特殊な技術を用いて、樹脂凸版の直接製版を格安で行っています。', 'Di perusahaan kami, kami menggunakan teknik khusus untuk melakukan pencetakan relief resin dan pembuatan pelat langsung dengan harga murah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8350_tidak_rata, 'Tidak rata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8350_tidak_rata, 'Kasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8350_tidak_rata, 'Kasar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8350_tidak_rata, 'おうとつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8350_tidak_rata, '凹凸のはっきりした顔立ちですね。', 'Ciri-cirinya sangat tidak merata, bukan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8351_pemerasan, 'Pemerasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8351_pemerasan, 'Pemerasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8351_pemerasan, 'きょうかつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8351_pemerasan, '不倫をダシにヤクザに恐喝されています。', 'Yakuza menggunakan perzinahanku untuk memerasku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8352_33_meter_persegi, '3,3 Meter Persegi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8352_33_meter_persegi, 'Area Dua Tikar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8352_33_meter_persegi, 'Tsubo', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8352_33_meter_persegi, 'つぼ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8352_33_meter_persegi, 'この土地は何坪ぐらいですか？', 'Berapa banyak tsubo di negeri ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8352_33_meter_persegi, '30坪の土地を買いました。', 'Saya membeli sebidang tanah 30 tsubo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8352_33_meter_persegi, 'この辺りは坪単価が高いんですよ。', 'Harga tanah per tsubo di sekitar sini cukup tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8352_33_meter_persegi, 'この店はたった5坪と小さいけど、とても繁盛している人気店です。', 'Toko ini kecil, hanya sekitar lima tsubo, tapi sangat populer dan menjalankan bisnis dengan baik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8353_kebejatan, 'Kebejatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8353_kebejatan, 'Degradasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8353_kebejatan, 'Dekadensi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8353_kebejatan, 'だらく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8353_kebejatan, '彼は気づかぬうちに、ゆっくりと堕落していった。', 'Tanpa ia sadari, ia perlahan-lahan mengalami pembusukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8353_kebejatan, '堕落の先に待っていたのは、ただの空虚だった。', 'Apa yang menantinya setelah kemerosotannya hanyalah kehampaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8353_kebejatan, '人は簡単に堕落する。だが、元に戻るのは難しい。', 'Seseorang mudah terjerumus dalam korupsi, namun sulit untuk kembali normal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8353_kebejatan, '兄は酒と女におぼれ、完全に堕落した生活を送っています。', 'Adikku tenggelam dalam minuman keras dan wanita, menjalani kehidupan yang sangat korup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8353_kebejatan, '「またゲームしてるの？」「違う、これは…戦略的堕落だ！」「ただの現実逃避でしょ！」', '“Bermain video game lagi?” "Tidak, ini... dekadensi strategis!"
"Lebih seperti pelarian sederhana!"');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8354_hakim, 'Hakim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8354_hakim, 'Administrator Keshogunan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8354_hakim, 'ぶぎょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8354_hakim, '大岡忠相は、若くして江戸町奉行に昇進した。', 'Tadasuke Ooka dipromosikan menjadi hakim di usia muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8354_hakim, 'この羅針盤をあそこの奉行所に届けてくれないか？', 'Bisakah Anda membawa kompas ini ke kantor administrator shogun di sana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8354_hakim, '鍋の時はいつも彼氏が鍋奉行してくれるんで、楽なんですよ。', 'Kalau kita punya nabe, pacarku selalu yang mengurus nabe, jadi mudah buatku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8355_saluran, 'Saluran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8355_saluran, 'Selat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8355_saluran, 'かいきょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8355_saluran, 'このフェリーで海峡を渡ります。', 'Kami akan menyeberangi saluran dengan feri ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8356_jurang, 'Jurang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8356_jurang, 'Jurang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8356_jurang, 'Ngarai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8356_jurang, 'きょうこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8356_jurang, 'この峡谷に架かる吊橋を渡ったことはありますか？', 'Pernahkah Anda melintasi jembatan gantung yang membentang di jurang ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8357_belasungkawa, 'Belasungkawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8357_belasungkawa, 'Simpati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8357_belasungkawa, 'Duka', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8357_belasungkawa, 'ちょうい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8357_belasungkawa, '弔意を表して花を贈りました。', 'Saya mengirim bunga untuk menyampaikan belasungkawa saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8358_alamat_peringatan, 'Alamat Peringatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8358_alamat_peringatan, 'Alamat Pemakaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8358_alamat_peringatan, 'ちょうじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8358_alamat_peringatan, '誰が弔辞を読むのですか。', 'Siapa yang akan membaca alamat pemakaman?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8359_untuk_berduka, 'Untuk Berduka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8359_untuk_berduka, 'Untuk turut berduka cita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8359_untuk_berduka, 'Untuk Mengadakan Layanan Peringatan Untuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8359_untuk_berduka, 'とむらう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8359_untuk_berduka, 'ここには、殉職者の魂を弔う石碑が建てられています。', 'Sebuah monumen batu telah dibangun di sini untuk berduka atas jiwa mereka yang meninggal saat menjalankan tugas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8360_lingkaran_setan, 'Lingkaran setan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8360_lingkaran_setan, 'あくじゅんかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8360_lingkaran_setan, 'まずは、あなたの心の悪循環を断ち切ることが大切です。', 'Pertama-tama, penting untuk memutus lingkaran setan di hati Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8361_organ_peredaran_darah, 'Organ Peredaran Darah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8361_organ_peredaran_darah, 'じゅんかんき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8361_organ_peredaran_darah, '当院には、循環器専門医が五人います。', 'Terdapat lima dokter spesialis organ peredaran darah di rumah sakit ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8362_sangat_disesalkan, 'Sangat disesalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8362_sangat_disesalkan, 'Mengecewakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8362_sangat_disesalkan, 'Berharga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8362_sangat_disesalkan, 'Sayang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8362_sangat_disesalkan, 'おしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8362_sangat_disesalkan, '惜しい人を亡くしたものだ。', 'Saya kehilangan orang yang berharga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8363_tidak_menyenangkan, 'Tidak menyenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8363_tidak_menyenangkan, 'Tidak senang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8363_tidak_menyenangkan, 'Tidak nyaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8363_tidak_menyenangkan, 'Tidak menyenangkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8363_tidak_menyenangkan, 'ふゆかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8363_tidak_menyenangkan, 'このビデオは、見ていて不愉快です。', 'Saya menonton video itu dan itu tidak menyenangkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8364_duka, 'Duka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8364_duka, 'Kesulitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8364_duka, 'Duka', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8364_duka, 'うれい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8364_duka, '彼女は、憂いを帯びた顔でこちらを見ていた。', 'Dia melihat ke arah sini dengan ekspresi sedih di wajahnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8365_tegas, 'Tegas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8365_tegas, 'Bertekad', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8365_tegas, 'Berani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8365_tegas, 'Berani', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8365_tegas, 'かかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8365_tegas, '彼は、世界各地で果敢な取材をしていた。', 'Dia dengan berani mengumpulkan data dari seluruh dunia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8366_berani, 'Berani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8366_berani, 'Anggapan Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8366_berani, 'Dengan berani', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8366_berani, 'あえて', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8366_berani, 'あなただからこそ、敢えて厳しいことを言わせてもらったんだよ。', 'Aku hanya berani mengatakan sesuatu yang begitu intens karena itu ditujukan padamu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8367_tindakan_tegas, 'Tindakan Tegas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8367_tindakan_tegas, 'Melakukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8367_tindakan_tegas, 'Berani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8367_tindakan_tegas, 'Melaksanakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8367_tindakan_tegas, 'かんこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8367_tindakan_tegas, '本当にこの作戦を敢行するつもりですか。', 'Apakah Anda benar-benar berniat menjalankan strategi tersebut?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8368_dengan_berani, 'Dengan berani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8368_dengan_berani, 'Dengan berani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8368_dengan_berani, 'Tanpa rasa takut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8368_dengan_berani, 'かんぜん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8368_dengan_berani, 'あの男は、まるで自分の意志で敢然と難局に立ち向かっているつもりなのよ。', 'Pria itu berencana dengan berani menentang situasi sulit hanya dengan tekadnya sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8369_berjuang_dengan_berani, 'Berjuang dengan Berani', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8369_berjuang_dengan_berani, 'かんとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8369_berjuang_dengan_berani, '優勝候補を相手に、よく敢闘したと思います。', 'Saya pikir saya bertarung dengan cukup berani melawan favorit juara.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8370_berani, 'Berani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8370_berani, 'Heroik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8370_berani, 'Gagah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8370_berani, 'ゆうかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8370_berani, 'お前の父さんは、とても勇敢な戦士だったよ。', 'Ayahmu adalah seorang prajurit yang sangat pemberani.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8371_revolusi, 'Revolusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8371_revolusi, 'Rotasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8371_revolusi, 'Berbelok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8371_revolusi, 'Berputar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8371_revolusi, 'せんかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8371_revolusi, 'ガレージで八の字旋回の練習をしてみました。', 'Saya berlatih putaran angka delapan di garasi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8372_angin_puyuh, 'Angin puyuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8372_angin_puyuh, 'Keributan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8372_angin_puyuh, 'Sensasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8372_angin_puyuh, 'せんぷう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8372_angin_puyuh, '海賊達の目の前で、旋風は嵐へと変わっていった。', 'Angin puyuh berubah menjadi badai tepat di depan para bajak laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8372_angin_puyuh, 'この国では、『銀河旋風ブライガー』というアニメが若者達の間に大旋風を巻き起こしています。', 'Di negeri ini, anime berjudul "Galaxy Cyclone Braiger" telah menimbulkan sensasi besar di kalangan anak muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8372_angin_puyuh, 'トーフグは、日本語学習業界に旋風を巻き起こしています。', 'Tofugu menciptakan angin puyuh dalam industri pembelajaran Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8373_melodi, 'Melodi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8373_melodi, 'Lagu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8373_melodi, 'せんりつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8373_melodi, 'あの家からは、いつも美しいピアノの旋律が聞こえていました。', 'Saya selalu bisa mendengar melodi piano yang indah dari rumah itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8373_melodi, '荘厳な旋律がゆっくりと広がっていき、すべての動きが一瞬止まったかのように感じられた。', 'Melodi agung itu perlahan terbentang, dan untuk sesaat, segalanya tampak terhenti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8374_maple, 'Maple', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8374_maple, 'Pohon Maple', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8374_maple, 'かえで', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8374_maple, '楓の葉も色づいてきました。', 'Daun maple juga mulai berubah warna.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8375_gula_maple, 'Gula Maple', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8375_gula_maple, 'かえでとう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8375_gula_maple, 'ふうとう', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8375_gula_maple, '料理には砂糖の代わりに楓糖を使うことが多いです。', 'Saya sering menggunakan gula maple sebagai pengganti gula dalam masakan saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8376_tangki_ikan, 'Tangki Ikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8376_tangki_ikan, 'Tangki Air', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8376_tangki_ikan, 'すいそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8376_tangki_ikan, 'どのくらい頻繁に水槽の掃除をしますか。', 'Seberapa sering Anda membersihkan tangki ikan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8377_bak_mandi, 'Bak mandi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8377_bak_mandi, 'よくそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8377_bak_mandi, '毎日掃除をしないと、浴槽には垢がたまります。', 'Jika saya tidak membersihkannya setiap hari, kotoran di bak mandi akan menumpuk.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8380_meminjamkan, 'Meminjamkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8380_meminjamkan, 'Pinjaman Internasional', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8380_meminjamkan, 'しゃっかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8380_meminjamkan, '日本が多くの国に円借款を提供しているのはご存知ですか。', 'Tahukah Anda bahwa Jepang menawarkan pinjaman yen internasional ke banyak negara?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8382_burung_gagak, 'Burung gagak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8382_burung_gagak, 'Gagak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8382_burung_gagak, 'からす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8382_burung_gagak, '烏がゴミをあさるんですよ。', 'Gagak memilah-milah sampah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8383_teh_oolong, 'Teh Oolong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8383_teh_oolong, 'Oolong', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8383_teh_oolong, 'うーろんちゃ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8383_teh_oolong, 'ウーロンちゃ', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8383_teh_oolong, '烏龍茶を氷抜きでください。', 'Tolong, teh oolong tanpa es.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8384_orang_buta, 'Orang Buta', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8384_orang_buta, 'もうじん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8384_orang_buta, 'その家には、生まれつき盲人の男が住んでいます。', 'Seorang pria tinggal di rumah itu yang terlahir buta.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8385_titik_buta, 'Titik Buta', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8385_titik_buta, 'もうてん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8385_titik_buta, '犯人は捜査の盲点を突いてきた。', 'Penjahat mencapai titik buta dalam penyelidikan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8386_kebutaan, 'Kebutaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8386_kebutaan, 'Buta', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8386_kebutaan, 'もうもく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8386_kebutaan, '私達は、盲目の犬を飼っているんです。', 'Kami memiliki seekor anjing buta.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8387_buta_warna, 'Buta Warna', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8387_buta_warna, 'しきもう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8387_buta_warna, '色盲って治るんですか。', 'Apakah buta warna bisa disembuhkan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8388_garam_laut, 'Garam Laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8388_garam_laut, 'Garam Kasar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8388_garam_laut, 'あらじお', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8388_garam_laut, 'あらしお', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8388_garam_laut, 'お風呂に粗塩を入れると体にいいらしいですよ。', 'Memasukkan garam laut ke dalam bak mandi sepertinya baik untuk Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8389_biru_laut, 'Biru laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8389_biru_laut, 'Biru tua', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8389_biru_laut, 'こん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8389_biru_laut, '少女の白い肌に、紺のワンピースがよく似合っていた。', 'Gaun biru laut cocok dengan kulit putih wanita muda itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8390_biru_laut_gelap, 'Biru Laut Gelap', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8390_biru_laut_gelap, 'のうこん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8390_biru_laut_gelap, '黒と濃紺のスーツが一着ずつあると便利ですよ。', 'Memiliki satu setelan hitam dan satu setelan biru laut tua memang nyaman.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8391_penutup, 'Penutup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8391_penutup, 'Meliputi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8391_penutup, 'もうら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8391_penutup, 'あの男はたった一ヶ月で、ここでの業務を網羅した。', 'Orang itu menyelesaikan semua tugas di sini hanya dalam satu bulan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8392_pencacahan, 'Pencacahan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8392_pencacahan, 'られつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8392_pencacahan, '一見すると意味不明な文字の羅列のように見える。', 'Sekilas, ini hanya tampak seperti daftar kata acak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8393_kompas, 'Kompas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8393_kompas, 'らしんばん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8393_kompas, '彼は私にとって、人生の羅針盤だったのです。', 'Dia adalah kompas hidupku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8394_janin, 'Janin', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8394_janin, 'たいじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8394_janin, 'エコーで胎児が足を伸ばしたり曲げたりするところが見れました。', 'Saya bisa melihat janin meregang dan menekuk kakinya di USG.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8394_janin, '医師は両親に胎児の状態を詳しく説明した。', 'Dokter menjelaskan secara detail kondisi janin kepada orang tuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8394_janin, '胎児は順調に育っています。', 'Janin berkembang dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8394_janin, '胎児の心拍が確認された。', 'Detak jantung janin pun terdeteksi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8395_abortus, 'Abortus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8395_abortus, 'Fetisida', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8395_abortus, 'だたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8395_abortus, '彼女が堕胎を拒んでいるみたいよ。', 'Sepertinya dia menolak aborsi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8396_pembuahan, 'Pembuahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8396_pembuahan, 'Pemupukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8396_pembuahan, 'Pemupukan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8396_pembuahan, 'じゅたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8396_pembuahan, 'エレインという馬が、ステイゴールドの最後の子を受胎しました。', 'Seekor kuda bernama Elaine mengandung anak terakhir Stay Gold.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8397_plasenta, 'Plasenta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8397_plasenta, 'Tembuni', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8397_plasenta, 'たいばん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8397_plasenta, '出産後、妻の胎盤を食べてみました。', 'Saya memakan plasenta istri saya setelah dia melahirkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8398_usus, 'Usus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8398_usus, 'Usus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8398_usus, 'Nyali', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8398_usus, 'ちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8398_usus, '腸の働きをよくする運動をご紹介します。', 'Saya akan memperkenalkan latihan yang meningkatkan pergerakan usus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8399_perut, 'Perut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8399_perut, 'saluran cerna', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8399_perut, 'いちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8399_perut, '胃腸がそんなに丈夫な方ではありません。', 'Perutku tidak terlalu kuat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8400_lampiran, 'Lampiran', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8400_lampiran, 'もうちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8400_lampiran, '手術で盲腸を取ってしまいました。', 'Usus buntu saya harus diangkat melalui operasi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8401_usus_besar, 'Usus Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8401_usus_besar, 'Usus Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8401_usus_besar, 'Usus besar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8401_usus_besar, 'だいちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8401_usus_besar, '大腸がんが見つかりました。', 'Mereka menemukan kanker usus besar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8402_selaput, 'Selaput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8402_selaput, 'Film', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8402_selaput, 'まく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8402_selaput, '牛乳を温めると薄い膜が張ることがあります。', 'Lapisan tipis terbentuk saat saya menghangatkan susu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8403_kornea, 'Kornea', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8403_kornea, 'かくまく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8403_kornea, 'レーシック手術では、角膜をレーザーで削るんですよ。', 'Dalam operasi Lasik, kornea Anda dicukur dengan laser.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8404_retina, 'Retina', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8404_retina, 'もうまく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8404_retina, '網膜とは、カメラのフィルムに似た、眼の奥の膜のことです。', 'Retina adalah selaput di dalam mata Anda yang menyerupai film kamera.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8405_pengecambahan, 'Pengecambahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8405_pengecambahan, 'Tumbuh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8405_pengecambahan, 'ほうが', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8405_pengecambahan, 'あなたの役目は、二人の恋の萌芽を絶つことよ。', 'Tugas Anda adalah menekan tumbuhnya cinta antar manusia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8406_keseimbangan, 'Keseimbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8406_keseimbangan, 'Keseimbangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8406_keseimbangan, 'きんこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8406_keseimbangan, '不倫でバランスをとって、なんとか心の均衡を保っているんです。', 'Aku berselingkuh untuk menjaga keseimbangan dan ketenanganku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8407_keseimbangan, 'Keseimbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8407_keseimbangan, 'Keseimbangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8407_keseimbangan, 'へいこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8407_keseimbangan, '彼女は突然体の平衡を失い、ひっくり返った。', 'Dia tiba-tiba kehilangan keseimbangan dan terjatuh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8408_cumi_cumi, 'Cumi-cumi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8408_cumi_cumi, 'Sotong', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8408_cumi_cumi, 'いか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8408_cumi_cumi, '烏賊の刺し身が大好物です。', 'Sashimi cumi adalah makanan favoritku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8408_cumi_cumi, '今夜は烏賊の煮物を作ろうと思っています。', 'Saya sedang berpikir untuk membuat sotong rebus malam ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8409_bajak_laut, 'Bajak laut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8409_bajak_laut, 'かいぞく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8409_bajak_laut, '航海の途中で海賊に襲われました。', 'Selama perjalanan mereka diserang oleh bajak laut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8410_bandit, 'Bandit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8410_bandit, 'Perampok', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8410_bandit, 'さんぞく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8410_bandit, '山賊たちと友だちになりました。', 'Saya berteman dengan para bandit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8411_maling, 'Maling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8411_maling, 'Perampok', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8411_maling, 'とうぞく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8411_maling, '今度こそ盗賊の隠れ家を突き止めてやる。', 'Saya akan menemukan tempat persembunyian pencuri kali ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8412_aula_resepsi, 'Aula Resepsi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8412_aula_resepsi, 'Rumah Tamu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8412_aula_resepsi, 'げいひんかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8412_aula_resepsi, '私は、迎賓館に招待されました。', 'Saya diundang ke ruang resepsi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8413_universal, 'Universal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8413_universal, 'Ada dimana-mana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8413_universal, 'Ada di mana-mana', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8413_universal, 'ふへん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8413_universal, '普遍的なテーマは、多くの人に受け入れられやすい。', 'Tema universal mudah diterima oleh banyak orang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8414_sekali, 'Sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8414_sekali, 'Suatu Saat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8414_sekali, 'いっぺん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8414_sekali, '一遍だけでいいから、キャビアを食べてみたかったの。', 'Saya ingin mencoba kaviar, meski hanya sekali.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8415_berapa_kali, 'Berapa kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8415_berapa_kali, 'Seberapa sering', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8415_berapa_kali, 'なんべん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8415_berapa_kali, 'この映画は何遍みても泣けます。', 'Berapa kalipun aku menonton film ini, aku selalu menangis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8416_pengalaman, 'Pengalaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8416_pengalaman, 'Perjalanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8416_pengalaman, 'Bepergian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8416_pengalaman, 'Pengembaraan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8416_pengalaman, 'へんれき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8416_pengalaman, 'マイケルにはおもしろい恋愛遍歴がある。', 'Michael memiliki sejarah romantis yang unik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8416_pengalaman, '過去の男性遍歴を語ってくる女ってマジでうざいよな。', 'Tidakkah menurutmu wanita yang membicarakan sejarahnya dengan pria itu sangat menyebalkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8416_pengalaman, '私の友人の作家は、世界各国を遍歴し、その経験を一冊の本にしました。', 'Teman saya, seorang penulis, melakukan perjalanan ke berbagai negara di dunia dan mengubah pengalaman tersebut menjadi sebuah buku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8416_pengalaman, '彼の職業遍歴はとても興味深いんですよ。パン屋、探偵、バンドマンを経て、今はなぜか市役所で働いています。', 'Riwayat karirnya sangat menarik. Dia adalah seorang pembuat roti, seorang detektif, dan seorang musisi, dan sekarang, karena suatu alasan, dia bekerja di balai kota.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8417_untuk_mengganggu, 'Untuk Mengganggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8417_untuk_mengganggu, 'Untuk mencegat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8417_untuk_mengganggu, 'Untuk Menghalangi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8417_untuk_mengganggu, 'さえぎる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8417_untuk_mengganggu, '人の話を遮るのは失礼です。', 'Tidak sopan menyela seseorang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8418_isolasi, 'Isolasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8418_isolasi, 'Memotong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8418_isolasi, 'Blokade', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8418_isolasi, 'Karantina', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8418_isolasi, 'しゃだん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8418_isolasi, 'サイトへのアクセスが遮断されました。', 'Akses ke situs tersebut telah terputus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8419_enzim, 'Enzim', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8419_enzim, 'こうそ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8419_enzim, '今若い女の子の間では、酵素ダイエットが流行っています。', 'Diet enzim sedang populer di kalangan remaja putri saat ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8420_ragi, 'Ragi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8420_ragi, 'Ragi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8420_ragi, 'こうぼ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8420_ragi, '自作酵母を使ってパンを作っています。', 'Saya menggunakan ragi saya sendiri untuk membuat roti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8421_fermentasi, 'Fermentasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8421_fermentasi, 'はっこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8421_fermentasi, 'ワインの甘みを残して発酵を止める方法を教えてください。', 'Tolong ajari saya cara menjaga rasa manis dalam anggur dan menghentikan fermentasi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8422_buatan, 'Buatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8422_buatan, 'Bergejolak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8422_buatan, 'Keturunan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8422_buatan, 'じょうせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8422_buatan, 'ここで酒を醸成しているんですね。', 'Mereka membuat sake di sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8423_pembuatan_bir, 'Pembuatan bir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8423_pembuatan_bir, 'Distilasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8423_pembuatan_bir, 'じょうぞう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8423_pembuatan_bir, 'スコッチの醸造所を見学してきました。', 'Saya mengunjungi tempat penyulingan scotch.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8424_untuk_menyeduh, 'Untuk Menyeduh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8424_untuk_menyeduh, 'Untuk Membangkitkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8424_untuk_menyeduh, 'Untuk Menyebabkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8424_untuk_menyeduh, 'Untuk Menyaring', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8424_untuk_menyeduh, 'かもす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8424_untuk_menyeduh, 'アイドルの大胆な発言が物議を醸している。', 'Pernyataan berani sang idola menuai kritik publik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8425_untuk_tenang, 'Untuk Tenang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8425_untuk_tenang, 'Untuk Menenangkan Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8425_untuk_tenang, 'Untuk Mereda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8425_untuk_tenang, 'Untuk Mati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8425_untuk_tenang, 'しずまる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8425_untuk_tenang, 'とりあえず、今は父の怒りが鎮まるのを待ちましょう。', 'Untuk saat ini, kita tunggu sampai amarah ayah sudah reda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8426_menjelajah, 'Menjelajah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8426_menjelajah, 'Membaca dengan teliti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8426_menjelajah, 'Membaca', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8426_menjelajah, 'えつらん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8426_menjelajah, 'このウェブサイトには閲覧規制がかかっています。', 'Ada batasan penelusuran di situs web ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8427_sensor, 'Sensor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8427_sensor, 'Memeriksa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8427_sensor, 'けんえつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8427_sensor, 'この国ではネット検閲が行われています。', 'Sensor internet dipraktikkan di negara ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8428_revisi, 'Revisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8428_revisi, 'Mengoreksi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8428_revisi, 'こうえつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8428_revisi, '原稿を校閲してもらえませんか。', 'Bisakah Anda merevisi naskah saya untuk saya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8429_inspirasi, 'Inspirasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8429_inspirasi, 'Dorongan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8429_inspirasi, 'こぶ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8429_inspirasi, 'あの監督は、選手たちの士気を鼓舞するのがうまい。', 'Pelatih itu pandai mendorong semangat pemain.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8430_drum_tangan, 'Drum Tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8430_drum_tangan, 'Tsuzumi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8430_drum_tangan, 'つづみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8430_drum_tangan, 'あの女性の鼓の打ち方は絶品だ。', 'Cara wanita itu memukul genderang tangannya sungguh luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8430_drum_tangan, '彼女は、袋の中に鼓を大切そうにしまった。', 'Dia menyimpan drum tangan itu dengan hati-hati ke dalam tas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8430_drum_tangan, 'そんな可愛い鼓、見たことないよ。もしかして、手作り？', 'Aku belum pernah melihat tsuzumi semanis ini. Apakah Anda berhasil?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8431_mengalahkan, 'Mengalahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8431_mengalahkan, 'Berdebar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8431_mengalahkan, 'Detak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8431_mengalahkan, 'Berdenyut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8431_mengalahkan, 'こどう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8431_mengalahkan, '少女の顔が赤くなり、鼓動が高鳴りました。', 'Wajah gadis muda itu memerah dan jantungnya berdebar-debar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8432_gendang_pendengar, 'Gendang pendengar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8432_gendang_pendengar, 'こまく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8432_gendang_pendengar, 'そんなに大声を出されたら鼓膜が破れるよ。', 'Kamu akan memecahkan gendang telingaku sambil berteriak seperti itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8433_drum, 'Drum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8433_drum, 'Taiko', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8433_drum, 'たいこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8433_drum, 'うちの子供は太鼓で遊ぶのが好きです。', 'Anak-anak saya suka bermain drum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8433_drum, 'お腹がパンパンで太鼓みたいになっています。', 'Perutku penuh sekali hingga terlihat seperti drum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8433_drum, '「太鼓の達人」っていうゲームにハマってるんだ。', 'Saya sangat menyukai permainan yang disebut "Taiko Master."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9053_untuk_menyembuhkan_sesuatu, 'Untuk Menyembuhkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9053_untuk_menyembuhkan_sesuatu, 'Untuk Menyembuhkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9053_untuk_menyembuhkan_sesuatu, 'Untuk Memuaskan Haus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9053_untuk_menyembuhkan_sesuatu, 'いやす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9053_untuk_menyembuhkan_sesuatu, '疲れを癒して、早く回復するために、一週間緑茶を飲んだりお餅を食べたりしました。', 'Untuk menyembuhkan rasa lelah dan cepat pulih, saya minum teh hijau dan makan mochi selama seminggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9053_untuk_menyembuhkan_sesuatu, '莉子ちゃんの優しい笑顔に癒された。', 'Aku disembuhkan oleh senyuman ramah Riko-chan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9053_untuk_menyembuhkan_sesuatu, '諒一郎は読書によって知識への渇きを癒すことができた。', 'Ryoichiro memuaskan dahaganya akan ilmu pengetahuan melalui membaca.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9053_untuk_menyembuhkan_sesuatu, 'その癒し系の曲を聴いてると、眠くなってきたよ。', 'Mendengar lagu yang menenangkan itu, aku mulai mengantuk.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9110_kusam, 'Kusam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9110_kusam, 'Pucat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9110_kusam, 'Muka pucat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9110_kusam, 'そうはく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9110_kusam, '遼太は怒りで顔面蒼白になった。', 'Wajah Ryota menjadi pucat karena marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9110_kusam, '患者は蒼白な顔をしていて、非常に弱々しく見えました。', 'Wajah pasien pucat dan dia terlihat sangat lemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9110_kusam, '一晩中起きていた元帥は、まるで幽霊のように蒼白な顔をして朝食の席についた。', 'Sang Jenderal, yang terjaga sepanjang malam, duduk untuk sarapan, tampak pucat seperti hantu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9112_takuya, 'Takuya', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9112_takuya, 'たくや', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9112_takuya, '拓哉さんは殊勝な男性です。', 'Takuya-san adalah pria yang mengagumkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9112_takuya, '茜色の空の下で拓哉と瑛斗は抱擁を交わしました。', 'Takuya dan Eito berpelukan di bawah langit merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9112_takuya, 'タレントの木村拓哉は、日本ではとても有名で、キムタクという愛称で親しまれています。', 'Selebriti Kimura Takuya begitu terkenal di Jepang sehingga semua orang memanggilnya dengan nama panggilannya, Kimutaku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9439_ulat_sutera, 'Ulat sutera', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9439_ulat_sutera, 'かいこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9439_ulat_sutera, '蚕は白いまゆを作ります。', 'Ulat sutera menghasilkan kepompong berwarna putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9439_ulat_sutera, '蚕は桑の葉を食べて育つんです。', 'Ulat sutera tumbuh dengan memakan daun murbei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9439_ulat_sutera, '祖母の家では昔、蚕を飼っていました。', 'Dahulu kala, keluarga nenek saya beternak ulat sutera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9439_ulat_sutera, '蚕を育てるには、温度管理が大切です。', 'Pengendalian suhu penting untuk beternak ulat sutera.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2284_perawakan, id FROM items WHERE character = '二' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2284_perawakan, id FROM items WHERE character = '人' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2284_perawakan, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2330_perampok, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2330_perampok, id FROM items WHERE character = '戈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2330_perampok, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2331_drum, id FROM items WHERE character = '壴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2331_drum, id FROM items WHERE character = '支' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2332_rotasi, id FROM items WHERE character = '方' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2332_rotasi, id FROM items WHERE character = '𠂉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2332_rotasi, id FROM items WHERE character = '疋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2333_usus, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2333_usus, id FROM items WHERE character = '易' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2334_tangki, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2334_tangki, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2334_tangki, id FROM items WHERE character = '曲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2334_tangki, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2335_menjatuhkan, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2335_menjatuhkan, id FROM items WHERE character = '戈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2337_33_meter_persegi, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2337_33_meter_persegi, id FROM items WHERE character = '平' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2338_biru_laut, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2338_biru_laut, id FROM items WHERE character = '甘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2339_menyebar, id FROM items WHERE character = '罒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2339_menyebar, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2339_menyebar, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2340_jurang, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2340_jurang, id FROM items WHERE character = '丷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2340_jurang, id FROM items WHERE character = '夫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2341_gaji, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2341_gaji, id FROM items WHERE character = '𡗗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2341_gaji, id FROM items WHERE character = '干' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2342_buatan, id FROM items WHERE character = '酉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2342_buatan, id FROM items WHERE character = '㐮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2343_belasungkawa, id FROM items WHERE character = '弓' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2343_belasungkawa, id FROM items WHERE character = '丨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2344_yang_terakhir, id FROM items WHERE character = '乙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2345_universal, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2345_universal, id FROM items WHERE character = '扁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2346_keseimbangan, id FROM items WHERE character = '行' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2346_keseimbangan, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2346_keseimbangan, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2346_keseimbangan, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2348_inspeksi, id FROM items WHERE character = '門' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2348_inspeksi, id FROM items WHERE character = '兑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2349_memarahi, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2349_memarahi, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2349_memarahi, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2349_memarahi, id FROM items WHERE character = '匕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2350_berani, id FROM items WHERE character = '/radicals/elf.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2350_berani, id FROM items WHERE character = '夂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2351_selaput, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2351_selaput, id FROM items WHERE character = '莫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2352_buta, id FROM items WHERE character = '亡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2352_buta, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2353_rahim, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2353_rahim, id FROM items WHERE character = '台' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2354_fermentasi, id FROM items WHERE character = '酉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2354_fermentasi, id FROM items WHERE character = '孝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2355_degradasi, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2355_degradasi, id FROM items WHERE character = '有' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2355_degradasi, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2356_mencegat, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2356_mencegat, id FROM items WHERE character = '/radicals/yurt.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2356_mencegat, id FROM items WHERE character = '灬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2357_burung_gagak, id FROM items WHERE character = '鳥' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2358_cembung, r_434_cembung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2359_cekung, r_435_cekung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2360_maple, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2360_maple, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2361_tanda_tanya, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2361_tanda_tanya, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2361_tanda_tanya, id FROM items WHERE character = '戈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2362_pucat, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2362_pucat, id FROM items WHERE character = '倉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2364_tunas, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2364_tunas, id FROM items WHERE character = '明' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9397_ulat_sutera, id FROM items WHERE character = '天' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9397_ulat_sutera, id FROM items WHERE character = '虫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4612_hukum_tidak_tertulis, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4612_hukum_tidak_tertulis, id FROM items WHERE character = '文' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4612_hukum_tidak_tertulis, id FROM items WHERE character = '律' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_5476_garis_keturunan, id FROM items WHERE character = '血' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_5476_garis_keturunan, id FROM items WHERE character = '脈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8252_sumsum_tulang_belakang, k_2284_perawakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8252_sumsum_tulang_belakang, id FROM items WHERE character = '髄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8341_ikan_badut, id FROM items WHERE character = '熊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8341_ikan_badut, id FROM items WHERE character = '之' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8341_ikan_badut, id FROM items WHERE character = '実' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8342_kedua, k_2344_yang_terakhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8343_a_dan_b, id FROM items WHERE character = '甲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8343_a_dan_b, k_2344_yang_terakhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8344_penipisan_pohon, id FROM items WHERE character = '間' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8344_penipisan_pohon, k_2335_menjatuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8345_lamban, k_2335_menjatuhkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8345_lamban, id FROM items WHERE character = '採' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8346_pengurangan_gaji, id FROM items WHERE character = '減' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8346_pengurangan_gaji, k_2341_gaji);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8347_gaji_tahunan, id FROM items WHERE character = '年' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8347_gaji_tahunan, k_2341_gaji);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8348_ketika, id FROM items WHERE character = '傍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8349_mesin_cetak, k_2358_cembung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8349_mesin_cetak, id FROM items WHERE character = '版' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8350_tidak_rata, k_2359_cekung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8350_tidak_rata, k_2358_cembung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8351_pemerasan, id FROM items WHERE character = '恐' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8351_pemerasan, k_2349_memarahi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8352_33_meter_persegi, k_2337_33_meter_persegi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8353_kebejatan, k_2355_degradasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8353_kebejatan, id FROM items WHERE character = '落' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8354_hakim, id FROM items WHERE character = '奉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8354_hakim, id FROM items WHERE character = '行' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8355_saluran, id FROM items WHERE character = '海' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8355_saluran, k_2340_jurang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8356_jurang, k_2340_jurang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8356_jurang, id FROM items WHERE character = '谷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8357_belasungkawa, k_2343_belasungkawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8357_belasungkawa, id FROM items WHERE character = '意' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8358_alamat_peringatan, k_2343_belasungkawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8358_alamat_peringatan, id FROM items WHERE character = '辞' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8359_untuk_berduka, k_2343_belasungkawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8360_lingkaran_setan, id FROM items WHERE character = '悪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8360_lingkaran_setan, id FROM items WHERE character = '循' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8360_lingkaran_setan, id FROM items WHERE character = '環' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8361_organ_peredaran_darah, id FROM items WHERE character = '循' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8361_organ_peredaran_darah, id FROM items WHERE character = '環' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8361_organ_peredaran_darah, id FROM items WHERE character = '器' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8362_sangat_disesalkan, id FROM items WHERE character = '惜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8363_tidak_menyenangkan, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8363_tidak_menyenangkan, id FROM items WHERE character = '愉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8363_tidak_menyenangkan, id FROM items WHERE character = '快' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8364_duka, id FROM items WHERE character = '憂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8365_tegas, id FROM items WHERE character = '果' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8365_tegas, k_2350_berani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8366_berani, k_2350_berani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8367_tindakan_tegas, k_2350_berani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8367_tindakan_tegas, id FROM items WHERE character = '行' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8368_dengan_berani, k_2350_berani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8368_dengan_berani, id FROM items WHERE character = '然' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8369_berjuang_dengan_berani, k_2350_berani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8369_berjuang_dengan_berani, id FROM items WHERE character = '闘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8370_berani, id FROM items WHERE character = '勇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8370_berani, k_2350_berani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8371_revolusi, k_2332_rotasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8371_revolusi, id FROM items WHERE character = '回' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8372_angin_puyuh, k_2332_rotasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8372_angin_puyuh, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8373_melodi, k_2332_rotasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8373_melodi, id FROM items WHERE character = '律' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8374_maple, k_2360_maple);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8375_gula_maple, k_2360_maple);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8375_gula_maple, id FROM items WHERE character = '糖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8376_tangki_ikan, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8376_tangki_ikan, k_2334_tangki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8377_bak_mandi, id FROM items WHERE character = '浴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8377_bak_mandi, k_2334_tangki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8380_meminjamkan, id FROM items WHERE character = '借' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8380_meminjamkan, id FROM items WHERE character = '款' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8382_burung_gagak, k_2357_burung_gagak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8383_teh_oolong, k_2357_burung_gagak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8383_teh_oolong, id FROM items WHERE character = '龍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8383_teh_oolong, id FROM items WHERE character = '茶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8384_orang_buta, k_2352_buta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8384_orang_buta, id FROM items WHERE character = '人' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8385_titik_buta, k_2352_buta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8385_titik_buta, id FROM items WHERE character = '点' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8386_kebutaan, k_2352_buta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8386_kebutaan, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8387_buta_warna, id FROM items WHERE character = '色' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8387_buta_warna, k_2352_buta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8388_garam_laut, id FROM items WHERE character = '粗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8388_garam_laut, id FROM items WHERE character = '塩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8389_biru_laut, k_2338_biru_laut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8390_biru_laut_gelap, id FROM items WHERE character = '濃' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8390_biru_laut_gelap, k_2338_biru_laut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8391_penutup, id FROM items WHERE character = '網' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8391_penutup, k_2339_menyebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8392_pencacahan, k_2339_menyebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8392_pencacahan, id FROM items WHERE character = '列' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8393_kompas, k_2339_menyebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8393_kompas, id FROM items WHERE character = '針' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8393_kompas, id FROM items WHERE character = '盤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8394_janin, k_2353_rahim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8394_janin, id FROM items WHERE character = '児' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8395_abortus, k_2355_degradasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8395_abortus, k_2353_rahim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8396_pembuahan, id FROM items WHERE character = '受' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8396_pembuahan, k_2353_rahim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8397_plasenta, k_2353_rahim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8397_plasenta, id FROM items WHERE character = '盤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8398_usus, k_2333_usus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8399_perut, id FROM items WHERE character = '胃' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8399_perut, k_2333_usus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8400_lampiran, k_2352_buta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8400_lampiran, k_2333_usus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8401_usus_besar, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8401_usus_besar, k_2333_usus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8402_selaput, k_2351_selaput);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8403_kornea, id FROM items WHERE character = '角' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8403_kornea, k_2351_selaput);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8404_retina, id FROM items WHERE character = '網' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8404_retina, k_2351_selaput);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8405_pengecambahan, k_2364_tunas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8405_pengecambahan, id FROM items WHERE character = '芽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8406_keseimbangan, id FROM items WHERE character = '均' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8406_keseimbangan, k_2346_keseimbangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8407_keseimbangan, id FROM items WHERE character = '平' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8407_keseimbangan, k_2346_keseimbangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8408_cumi_cumi, k_2357_burung_gagak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8408_cumi_cumi, k_2330_perampok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8409_bajak_laut, id FROM items WHERE character = '海' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8409_bajak_laut, k_2330_perampok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8410_bandit, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8410_bandit, k_2330_perampok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8411_maling, id FROM items WHERE character = '盗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8411_maling, k_2330_perampok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8412_aula_resepsi, id FROM items WHERE character = '迎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8412_aula_resepsi, id FROM items WHERE character = '賓' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8412_aula_resepsi, id FROM items WHERE character = '館' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8413_universal, id FROM items WHERE character = '普' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8413_universal, k_2345_universal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8414_sekali, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8414_sekali, k_2345_universal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8415_berapa_kali, id FROM items WHERE character = '何' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8415_berapa_kali, k_2345_universal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8416_pengalaman, k_2345_universal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8416_pengalaman, id FROM items WHERE character = '歴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8417_untuk_mengganggu, k_2356_mencegat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8418_isolasi, k_2356_mencegat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8418_isolasi, id FROM items WHERE character = '断' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8419_enzim, k_2354_fermentasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8419_enzim, id FROM items WHERE character = '素' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8420_ragi, k_2354_fermentasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8420_ragi, id FROM items WHERE character = '母' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8421_fermentasi, id FROM items WHERE character = '発' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8421_fermentasi, k_2354_fermentasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8422_buatan, k_2342_buatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8422_buatan, id FROM items WHERE character = '成' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8423_pembuatan_bir, k_2342_buatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8423_pembuatan_bir, id FROM items WHERE character = '造' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8424_untuk_menyeduh, k_2342_buatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8425_untuk_tenang, id FROM items WHERE character = '鎮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8426_menjelajah, k_2348_inspeksi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8426_menjelajah, id FROM items WHERE character = '覧' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8427_sensor, id FROM items WHERE character = '検' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8427_sensor, k_2348_inspeksi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8428_revisi, id FROM items WHERE character = '校' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8428_revisi, k_2348_inspeksi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8429_inspirasi, k_2331_drum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8429_inspirasi, id FROM items WHERE character = '舞' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8430_drum_tangan, k_2331_drum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8431_mengalahkan, k_2331_drum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8431_mengalahkan, id FROM items WHERE character = '動' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8432_gendang_pendengar, k_2331_drum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8432_gendang_pendengar, k_2351_selaput);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8433_drum, id FROM items WHERE character = '太' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8433_drum, k_2331_drum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9053_untuk_menyembuhkan_sesuatu, id FROM items WHERE character = '癒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9110_kusam, k_2362_pucat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9110_kusam, id FROM items WHERE character = '白' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9112_takuya, id FROM items WHERE character = '拓' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9112_takuya, k_2361_tanda_tanya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9439_ulat_sutera, k_9397_ulat_sutera);

END $$;