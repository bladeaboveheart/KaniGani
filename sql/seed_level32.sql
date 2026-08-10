-- ====================================================
-- KaniGani — Seed Data Level 32 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 32) ============
  r_340_bajak_laut_kucing UUID; r_341_sama UUID; r_343_yakin UUID; r_427_laba_laba UUID; r_433_pondok UUID; r_8799_peri UUID;

  -- ============ KANJI IDs (Level 32) ============
  k_496_lama_sekali UUID; k_1480_kata_pengantar UUID; k_1481_selamat_datang UUID; k_1482_maksud UUID; k_1483_kebaikan UUID; k_1484_mengumpulkan UUID; k_1485_sakura UUID; k_1486_keabadian UUID; k_1487_cairan UUID; k_1488_bola_mata UUID; k_1489_leluhur UUID; k_1490_pencapaian UUID; k_1491_minat UUID; k_1492_pertahanan UUID; k_1493_duplikat UUID; k_1494_acak UUID; k_1495_setuju UUID; k_1496_asam UUID; k_1497_koin UUID; k_1498_menjinakkan UUID; k_1499_luka UUID; k_1500_berpesta UUID; k_1501_telur UUID; k_1502_ketat UUID; k_1503_membuang UUID; k_1504_ke_dalam UUID; k_1505_kerahasiaan UUID; k_1506_kotor UUID; k_1507_ingin UUID; k_1508_hangat UUID; k_1509_meja UUID; k_1510_rahasia UUID; k_1511_terjemahan UUID; k_1512_pewarna UUID; k_9448_tipu_daya UUID;

  -- ============ VOCABULARY IDs (Level 32) ============
  v_2591_dahulu_kala UUID; v_3022_penyelidikan UUID; v_5322_bendera_putih UUID; v_5343_untuk_mencuri UUID; v_5474_koneksi_pribadi UUID; v_5505_upacara_pernikahan UUID; v_5506_tombol_tekan UUID; v_5507_lemari UUID; v_5508_untuk_menerbitkan UUID; v_5509_perusahaan_penerbitan UUID; v_5510_orang_miskin UUID; v_5511_menjadi_dingin UUID; v_5513_tidak_ada_foto UUID; v_5514_teriyaki UUID; v_5515_seseorang_kembali UUID; v_5516_untuk_berlangganan UUID; v_5517_untuk_menjemput_seseorang UUID; v_5518_keributan UUID; v_5519_kata_pengantar UUID; v_5520_urutan UUID; v_5521_ambisi UUID; v_5522_akan UUID; v_5523_menginginkan UUID; v_5524_dermawan UUID; v_5525_hadiah UUID; v_5526_untuk_berkumpul UUID; v_5527_menggunakan UUID; v_5528_pemungutan_suara UUID; v_5529_laba UUID; v_5530_sakura UUID; v_5531_ceri UUID; v_5532_daging_kuda UUID; v_5533_berwarna_merah_muda UUID; v_5534_selamanya UUID; v_5535_selamanya UUID; v_5536_cairan UUID; v_5537_darah UUID; v_5538_mata UUID; v_5539_bola_mata UUID; v_5540_rabun_jauh UUID; v_5541_leluhur UUID; v_5542_kakek UUID; v_5543_nenek UUID; v_5544_pencapaian UUID; v_5545_nilai UUID; v_5546_minat UUID; v_5547_pertahanan_diri UUID; v_5548_kebersihan UUID; v_5549_rumit UUID; v_5550_satelit UUID; v_5551_banyak UUID; v_5552_penyalinan UUID; v_5553_kebisingan UUID; v_5554_biaya_lain_lain UUID; v_5555_kecut UUID; v_5556_perjanjian UUID; v_5557_oksigen UUID; v_5558_koin UUID; v_5559_pemandian_umum UUID; v_5560_untuk_memelihara_hewan_peliharaan UUID; v_5561_luka UUID; v_5563_patah_hati UUID; v_5564_orang_yang_terluka UUID; v_5565_partai_demokrat_liberal UUID; v_5566_partai_komunis UUID; v_5567_partai_politik UUID; v_5568_anggota_partai UUID; v_5569_partai_sosialis UUID; v_5570_telur UUID; v_5571_telur_mentah UUID; v_5572_telur_rebus UUID; v_5573_ketat UUID; v_5574_sangat_dilarang UUID; v_5575_untuk_membuang UUID; v_5576_untuk_masuk UUID; v_5577_rahasia UUID; v_5578_pertemuan_rahasia UUID; v_5579_tip_off UUID; v_5580_rahasia UUID; v_5581_penyelundupan UUID; v_5582_untuk_pewarna UUID; v_5583_infeksi UUID; v_5584_penyakit_menular UUID; v_5585_menjadi_kotor UUID; v_5586_polusi UUID; v_5587_air_kotor UUID; v_5588_noda UUID; v_5589_diinginkan UUID; v_5590_ingin UUID; v_5591_keinginan_duniawi UUID; v_5592_nafsu_makan UUID; v_5593_hangat UUID; v_5594_hangat UUID; v_5595_meja UUID; v_5596_untuk_menyembunyikan UUID; v_5597_sembelit UUID; v_5599_alasan UUID; v_5600_untuk_menerjemahkan UUID; v_5601_penterjemah UUID; v_5602_istilah_yang_diterjemahkan UUID; v_5603_menafsirkan UUID; v_5604_terjemahan_bahasa_inggris UUID; v_5605_terjemahan_jepang UUID; v_5606_untuk_memperpanjang UUID; v_5608_membiarkan_sesuatu_bocor UUID; v_5609_untuk_melampauinya UUID; v_5610_menjadi_bahagia UUID; v_5708_sesuai UUID; v_7279_perawakan UUID; v_7484_membakar UUID; v_7488_akan UUID; v_7606_menakutkan UUID; v_7607_tinggi UUID; v_7661_dekorasi UUID; v_7721_pamer UUID; v_8721_bermain UUID; v_8723_merasa_panas UUID; v_8760_setelan_bisnis UUID; v_8841_bau UUID; v_8876_menjadi_basah UUID; v_8956_untuk_dijaga UUID; v_9458_untuk_menipu UUID; v_9474_saku_dada UUID;

BEGIN

  DELETE FROM items WHERE level = 32;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '卬', 'bajak-laut-kucing', 32, 1, 'Lihat CP di radikal ini? Itu singkatan dari <radical>Bajak Laut Kucing</radikal>. Meoaarrr.')
    RETURNING id INTO r_340_bajak_laut_kucing;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '同', 'sama', 32, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>sama</radikal>.')
    RETURNING id INTO r_341_sama;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '必', 'yakin', 32, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>pasti</radikal>.')
    RETURNING id INTO r_343_yakin;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '夋', 'laba-laba', 32, 4, 'Jika Anda perhatikan lebih dekat dan hati-hati, terkadang Anda dapat melihat beberapa kaki pribadi di musim dingin. Kaki siapa? Kaki <radikal>Laba-laba</radikal>! Cuacanya terlalu dingin bagi mereka di musim dingin, jadi mereka bersembunyi di celah-celah dan celah-celah, namun terkadang Anda masih bisa melihat kaki kecil mereka mencuat.')
    RETURNING id INTO r_427_laba_laba;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '舎', 'pondok', 32, 5, 'Jika Anda memakai topi dan ada kotoran di mulut, kemungkinan besar Anda tinggal di <radical>pondok</radical>. Itu karena cottage biasanya berada di pedesaan, yang berarti Anda mungkin menghabiskan waktu di taman, dengan topi dan kotoran di mulut Anda. Anda tahu, pengalaman pondok rata-rata Anda. Dan hei, bahkan radikal ini terlihat seperti sebuah pondok.')
    RETURNING id INTO r_433_pondok;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/elf.svg', 'peri', 32, 6, 'Anda melihat daun telinga, lebih dikenal sebagai <radical>elf</radical>! Elf hanyalah manusia yang mempunyai telinga yang lancip seperti daun.')
    RETURNING id INTO r_8799_peri;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_340_bajak_laut_kucing, 'Bajak Laut Kucing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_341_sama, 'Sama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_343_yakin, 'Yakin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_427_laba_laba, 'Laba-laba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_433_pondok, 'Pondok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8799_peri, 'Peri', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '久', 'lama-sekali', 32, 7, 'Jika Anda menggunakan <radical>slide</radical> untuk <radical>memasuki</radical> sebuah bangunan, Anda akan meluncur dalam waktu <kanji>lama</kanji>.', 'Anda meluncur <kanji>lama sekali</kanji> hingga Anda merasa lapar. Untungnya, sesekali ada <reading>cu</reading>cumber (きゅう) yang jatuh dari slide di sebelah Anda.')
    RETURNING id INTO k_496_lama_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '序', 'kata-pengantar', 32, 8, 'Jika <radical>kanopi</radikal> muncul <radikal>sebelum</radikal>, itu adalah <kanji>kata pengantar</kanji> untuk kanopi lainnya.', 'Anda membaca <kanji>kata pengantar</kanji>. Itu terus berlanjut tentang <reading>Jo</reading>-Anne (じょ), seorang wanita pendek yang sangat dicintai penulis.')
    RETURNING id INTO k_1480_kata_pengantar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '迎', 'selamat-datang', 32, 9, 'Dalam <radical>skuter</radikal>, <radical>bajak laut</radikal> berlari kencang untuk <kanji>menyambut</kanji> Anda!', 'Bajak laut kucing kemudian menyampaikan pidato tentang bagaimana mereka <kanji>menyambut</kanji> semua jenis orang. Terutama orang-orang <read>gay</reading> (げい). Dia memberikan penekanan tertentu pada gay, sehingga Anda berpikir bahwa bajak laut kucing itu mengira Anda gay atau menginginkan Anda menjadi gay.')
    RETURNING id INTO k_1481_selamat_datang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '志', 'maksud', 32, 10, 'Jika Anda melihat ke dalam <radical>samurai</radical>, Anda akan menemukan <kanji>niat</kanji> dan <kanji>ambisi</kanji> mereka yang sebenarnya.', 'Anda mencoba membaca <kanji>niat</kanji> samurai di depan Anda dan itu gelap, jahat, menakutkan. Oh tidak! Ini adalah niat dari samurai <read>shee</reading>p (し)!')
    RETURNING id INTO k_1482_maksud;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '恩', 'kebaikan', 32, 11, 'Jika <radical>mulut</radikal> Anda <radikal>besar</radikal> tetapi <radikal>hati</radikal> Anda berada di tempat yang tepat, orang akan mengenali <kanji>kebaikan</kanji> Anda. Bahkan jika kamu mengoceh dengan mulut besar, selama semua orang tahu bahwa hatimu dipenuhi dengan kebaikan, mereka akan mencintai dan menerimamu.', 'Untuk lebih menunjukkan <kanji>kebaikan</kanji> Anda, potonglah beberapa <baca>on</reading>ion (おん) untuk teman yang selalu menangis ketika mereka memotong bawang. Bawangnya juga membuatmu menangis, jadi merupakan kebaikan jika kamu berusaha keras demi temanmu.')
    RETURNING id INTO k_1483_kebaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '採', 'mengumpulkan', 32, 12, 'Gerakkan <radical>jari</radical> Anda ke <radical>cleat</radical> ini untuk menggali potongan <radical>pohon</radical> dan <kanji>mengumpulkannya</kanji>. Membawa jari Anda ke gerigi ini adalah satu-satunya cara untuk mengumpulkan potongan pohon yang tersangkut di dalamnya. Kumpulkan dalam tumpukan besar… sebagai bukti untuk diperiksa nanti.', 'Anda <kanji>mengumpulkan</kanji> semuanya dan menyadari ada bagian <reading>cy</reading>borg (さい) yang tercampur dengan potongan pohon. Uh oh, itu seperti yang kamu takutkan. Cyborg Anda pasti mendapat masalah di sekitar sini dan Anda melewatinya dengan cleat Anda.')
    RETURNING id INTO k_1484_mengumpulkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '桜', 'sakura', 32, 13, 'Di bawah <radical>pohon</radical> duduk di atas <radical>rumput</radical> adalah seorang <radical>wanita</radical> yang menyukai <kanji>sakura</kanji>, atau <kanji>cherry tree</kanji>, jika Anda seorang penutur bahasa Inggris. Wanita ini sangat suka sekedar bersantai di rerumputan di bawah pohon sakura tersebut dan menyaksikan mekarnya bunga sakura. Itu sangat cantik.', 'Bagaimana cara mengucapkan <kanji>pohon ceri</kanji> dalam bahasa Jepang? <membaca>Sakura</membaca> (さくら). <kanji>Sakura</kanji> adalah bahasa Jepang untuk pohon ceri. Saya yakin Anda mungkin pernah mendengar ini sebelumnya, jadi tidak terlalu sulit untuk mengingatnya.')
    RETURNING id INTO k_1485_sakura;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '永', 'keabadian', 32, 14, 'Kanji <radical>eternity</radical> dan <kanji>eternity</kanji> adalah sama!', 'Berapa lama sebuah <kanji>keabadian</kanji>? Lihat saja <read>a</reading>jagung (えい) kecil ini dan tanyakan. Biji ek tersebut awalnya kecil namun kemudian tumbuh menjadi pohon besar dan dapat hidup selamanya dengan menjatuhkan lebih banyak biji ek untuk menciptakan lebih banyak pohon. Garis biji pohon eknya akan hidup selamanya!')
    RETURNING id INTO k_1486_keabadian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '液', 'cairan', 32, 15, '<radikal>tsunami</radikal> yang terjadi pada <radikal>malam</radikal> meninggalkan lebih banyak <kanji>cairan</kanji> dari biasanya. Saat itu gelap di malam hari, sehingga matahari tidak ada untuk membantu menguapkan semua <kanji>cairan</kanji> tsunami tersebut.', '<kanji>cairan</kanji> ini bertahan di <reading>駅</reading> (えき) lebih lama dibandingkan di tempat lain. Semua cairan tsunami tersebut mengalir jauh ke dalam 駅 pada larut malam dan matahari masih belum dapat mencapainya untuk membantu menguapkannya pada siang hari. Ini benar-benar *malam* kuda betina.')
    RETURNING id INTO k_1487_cairan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '眼', 'bola-mata', 32, 16, '<radical>akar</radikal> dari <radical>mata</radikal> adalah <kanji>bola mata</kanji>.', 'Anda tahu siapa yang punya <kanji>bola mata</kanji> yang cukup bagus? <read>Gan</reading>dhi (がん). Gandhi menggunakan matanya untuk melihat penindasan di sekelilingnya dan memutuskan untuk melakukan sesuatu. Tapi itu semua berkat bola matanya.')
    RETURNING id INTO k_1488_bola_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '祖', 'leluhur', 32, 17, 'Anda menjumpai <radical>roh</radikal> yang mengenakan <radikal>topi</radikal> dan ia mengaku sebagai <kanji>leluhur</kanji> Anda. Tentu saja, jika Anda ingat dengan benar, semua nenek moyang Anda memakai topi ketika mereka masih hidup. Semangat ini pasti sudah lama hilang, hebat... uh... seseorang.', 'Anda menanyakan <kanji>leluhur</kanji> Anda apa yang diinginkannya dan dia menunjuk ke <reading>so</reading>ap (そ) di dekat wastafel. Sabun? Ia mengangguk padamu. Saya kira nenek moyang Anda ada di sini untuk melihat keajaiban sabun.')
    RETURNING id INTO k_1489_leluhur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '績', 'pencapaian', 32, 18, 'Ikat <radikal>utas</radikal> pada diri Anda sendiri setiap kali Anda mengambil <radikal>menyalahkan</radikal> pada seseorang. Ini menandai <kanji>pencapaian</kanji> Anda. Prestasimu dalam menyalahkan, kurasa. Bukankah merupakan pencapaian besar jika kita tanpa pamrih melindungi orang lain dari tuduhan? Tentu saja! Jadi benang-benang menyalahkan kecil ini adalah simbol pencapaian Anda.', 'Tapi <kanji>pencapaian</kanji> terbarumu menutupi dirimu di thread ini dan semua orang menganggapnya <reading>seksi</reading> (せき). Surat kabar dan majalah mode tidak pernah puas dengan gaya seksi Anda. Melihat? Jika Anda orang baik, orang akan menganggap pencapaian Anda seksi.')
    RETURNING id INTO k_1490_pencapaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '興', 'minat', 32, 19, 'Ada <radical>sisir</radikal> dan apa yang terlihat <radikal>sama</radikal> <radikal>sisir</radikal>, dan Anda menemukannya di <radikal>tanah</radikal> di samping beberapa <radikal>sirip</radikal> yang Anda <kanji>minat</kanji>. Pada awalnya, sirip mengkilap di tanah menarik minat Anda, tetapi begitu Anda mendekat ke sirip tersebut, Anda juga melihat sepasang sisir yang menarik juga.', 'Karena sisir <kanji>lebih menarik perhatian Anda</kanji> daripada siripnya, Anda memeriksa sisirnya lebih cermat. Karena tertarik dengan tempat pembuatannya, Anda mengetahui bahwa itu dibuat di <reading>きょう</reading>と. Sial, きょうと sungguh membuat sisir yang bagus.')
    RETURNING id INTO k_1491_minat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '衛', 'pertahanan', 32, 20, 'Jika Anda ingin <radical>pergi</radical> ke <radical>Korea</radical> Anda memerlukan <kanji>pertahanan</kanji> yang baik.', 'Kamu memerlukan <kanji>pertahanan</kanji> yang bagus untuk pergi ke Korea, jadi isi kantongmu dengan <reading>a</reading>jagung (えい). Ketika Anda sampai di Korea, Anda menanamnya di sekitar Anda. Dalam waktu singkat Anda akan memiliki pertahanan pohon yang kuat, menjaga Anda tetap aman.')
    RETURNING id INTO k_1492_pertahanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '複', 'duplikat', 32, 21, 'Jika <radical>pakaian</radical> Anda tersedot ke dalam <radical>lubang hitam</radical>, Anda harus mendapatkan versi <kanji>duplikat</kanji> dari pakaian yang sama, karena Anda tidak akan mendapatkan yang asli kembali. Semoga Anda memiliki <kanji>beberapa</kanji>…', 'Saat Anda sedang berbelanja pakaian <kanji>duplikat</kanji>, beberapa pria berlari dan mulai berteriak "<reading>f***</reading> (ふく) kamu!" pada kamu. "Persetan denganmu, kawan! Kamu di sini membeli <kanji>berbagai pakaian</kanji> sementara anak-anak di negara lain kelaparan!"')
    RETURNING id INTO k_1493_duplikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雑', 'acak', 32, 22, 'Anda menghitung <radical>sembilan</radical> di <radical>pohon</radical>, masing-masing <radical>kalkun</radical> memegang sesuatu <kanji>acak</kanji> atau <kanji>lain-lain</kanji>. Ada sembilan kalkun di pohon dan mereka semua memegang benda-benda lain secara acak. Aneh sekali.', 'Seolah segalanya tidak bisa <kanji>acak</kanji> lagi, <reading>Zazu</reading> (ざつ) dari Lion King terbang ke pohon dan mulai menanyakan hal-hal sepele <kanji>lain-lain</kanji> kepada sembilan kalkun. Zazu memang selalu haus akan pengetahuan, tapi ini agak aneh.')
    RETURNING id INTO k_1494_acak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賛', 'setuju', 32, 23, 'Seorang <radikal>suami</radikal> dan <radikal>suami</radikal> menemukan <radikal>kerang</radikal> dan <kanji>setuju</kanji> untuk membagikannya.', 'Karena para suami bisa <kanji>setuju</kanji>, <reading>San</reading>ta-san (さん) percaya bahwa mereka berdua adalah suami yang baik dan termasuk dalam daftar yang baik. Oleh karena itu, Santa-san memberi mereka banyak sekali kerang untuk Natal.')
    RETURNING id INTO k_1495_setuju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酸', 'asam', 32, 24, 'Ambil sedikit <radikal>alkohol</radikal> dan masukkan <radikal>laba-laba</radikal> ke dalamnya untuk membuat <kanji>asam</kanji>. Laba-laba sudah mengandung sedikit asam, tetapi jika Anda menginginkan sesuatu yang benar-benar manjur, masukkan satu ke dalam wiski untuk menghasilkan asam mematikan yang dapat merobek apa pun.', 'Anda sedang mencoba mencari wadah untuk <kanji>asam</kanji> ini ketika <reading>San</reading>ta-san (さん) menerobos dinding Anda. Dia mengerutkan kening padamu. Anda berada di daftar nakal sekarang. Anda membunuh laba-laba DAN membuat asam berbahaya? Ooooh kamu dalam masalah.')
    RETURNING id INTO k_1496_asam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '銭', 'koin', 32, 25, 'Untuk menggunakan <radical>emas</radical> Anda di <radical>bar</radical> Anda perlu mengubahnya menjadi <kanji>koin</kanji>. Mungkin lebih dari satu koin. Tapi Anda tahu pasti bahwa Anda bisa membuat setidaknya satu koin dari emas yang Anda miliki.', 'Anda menggunakan <kanji>koin</kanji> untuk membayar <reading>cen</reading>taur (せん) di bar. Centaur adalah bartender dan dia membuat minuman khusus untuk mereka yang membayar dengan koin emas. Bagus untukmu!')
    RETURNING id INTO k_1497_koin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '飼', 'menjinakkan', 32, 26, 'Anda <radical>memakan</radical> bagian dari <radical>direktur</radical> untuk <kanji>menjinakkan</kanji> dia. Sutradara ini sering menendang juru kamera dan meninju aktor dan itu benar-benar merusak reputasinya. Anda perlu menjinakkannya. Satu-satunya cara untuk melakukan ini adalah dengan mengejutkannya hingga menyerah. Egonya begitu besar dari dua film blockbuster sehingga Anda harus memakan sebagian dari dirinya untuk membuatnya tenang.', 'Meskipun Anda berhasil dalam upaya Anda untuk <kanji>menjinakkan</kanji> sutradara, dia sekarang mengeluarkan banyak darah dari luka gigitannya. Seluruh naskah! Anda harus mendapatkan <reading>ca</reading>r (か) Anda dan segera mengantarnya ke rumah sakit. Pergi ke mobil! Buru-buru!')
    RETURNING id INTO k_1498_menjinakkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '傷', 'luka', 32, 27, 'Jika seorang <radical>pemimpin</radikal> mempunyai <radikal>senjata</radikal> maka <radikal>mudah</radikal> akan <kanji>melukai</kanji> orang. Ketika Anda mempunyai senjata dan banyak tanggung jawab, Anda akan mudah terbawa suasana dan mengacau, melukai orang-orang yang seharusnya Anda lindungi. Anda bahkan bisa melukai diri sendiri.', 'Siapa pemimpin yang melukai rakyat Jepang? Pistol <read>Shou</reading> (しょう). Shougun adalah seorang pemimpin militer. Shougun bahkan memiliki senjata di namanya. Dan mereka melukai ratusan ribu samurai dan tentara.')
    RETURNING id INTO k_1499_luka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '党', 'berpesta', 32, 28, 'Seorang <radikal>Viking</radikal> dan <radikal>kakaknya</radikal> bergabung dalam <kanji>pesta</kanji>. Mereka bisa menyerang dan menjarah dengan lebih baik dalam <kanji>grup</kanji> seperti ini, jadi masuk akal jika Viking dan kakak laki-lakinya bergabung dalam grup dengan Viking lainnya.', 'Pesta <kanji></kanji> ini telah memutuskan untuk menyerang <reading>とう</reading>きょう. Ini adalah tugas yang besar, tetapi mereka mempunyai sekelompok besar orang Viking yang sedang bekerja. とうきょう tidak punya peluang.')
    RETURNING id INTO k_1500_berpesta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '卵', 'telur', 32, 29, 'Dua <radical>kolam</radikal>, keduanya telah diubah dan tidak seperti kolam yang pernah Anda lihat sebelumnya, disatukan dan dibalik – ini adalah <kanji>telur</kanji>. Satu kolam berisi putih telur, satu lagi berisi kuning telur. Mereka berbeda, tapi serupa.', 'Anda ingat <read>Tamago</reading>tchi (たまご), kan? Ya, Tamagotchi adalah <kanji>telur</kanji>, dan mainannya terlihat seperti telur, jadi cukup mudah untuk mengingat bahwa tamago berarti telur.')
    RETURNING id INTO k_1501_telur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '厳', 'ketat', 32, 30, 'Jika Anda melihat <radical>rumput</radical>y <radical>tebing</radical> dengan <radical>elf</radical> di bawahnya pada <radical>musim dingin</radical>, itu karena orang tuanya sangat <kanji>ketat</kanji>. Ketika anak-anak elf berperilaku buruk, mereka harus berdiri di bawah tebing berumput untuk memikirkan apa yang telah mereka lakukan.', 'Salah satu orang tua <kanji>ketat</kanji> dari anak elf ini adalah... <reading>Gen</reading>ji (げん)?! Sepertinya dia punya anak haram lagi... kali ini dengan peri.')
    RETURNING id INTO k_1502_ketat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '捨', 'membuang', 32, 31, '<radical>jari</radical> Anda tidak melakukan apa pun saat Anda berada di <radical>pondok</radical> kecuali <kanji>membuang</kanji> barang. Pondok Anda untuk liburan. Dan liburan berarti bermalas-malasan mungkin. Namun Anda tentu tidak ingin hidup di tempat yang kotor, jadi setidaknya Anda harus membuang sampah Anda.', 'Hal nomor satu yang Anda <kanji>buang</kanji> saat berada di pondok adalah <reading>su</reading>itu (す). Setelan jas tidak cocok dengan suasana pondok, kawan.')
    RETURNING id INTO k_1503_membuang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '込', 'ke-dalam', 32, 32, 'Jika Anda naik <radical>skuter</radical> dan <radical>masuk</radical> ke suatu tempat, Anda akan <kanji>ke</kanji> tempat itu.', 'Setelah Anda <kanji>ke</kanji> tempat ini, apa yang Anda lihat? <reading>子</reading> Anda (こ)!')
    RETURNING id INTO k_1504_ke_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '密', 'kerahasiaan', 32, 33, 'Berdiri di atas <radical>atap</radical> Anda, Anda <radical>yakin</radical> bahwa <radical>gunung</radical> di dekatnya diselimuti <kanji>kerahasiaan</kanji>. Tapi Anda tidak bisa berbuat banyak, terjebak di atap rumah Anda apa adanya. Begitu banyak kerahasiaan, tapi begitu jauh.', '<kanji>kerahasiaan</kanji> ini sangat rahasia sehingga orang yang mengetahuinya memakai <reading>sarung</reading> (みつ) sihir kerahasiaan yang membuat kita tidak bisa memberi tahu siapa pun, apa pun yang terjadi.')
    RETURNING id INTO k_1505_kerahasiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '汚', 'kotor', 32, 34, '<radikal>tsunami</radikal> tidak hanya melanda satu, tapi <radikal>DUA</radikal> <radikal>penjara</radikal>, menjadikannya sangat <kanji>kotor</kanji>.', 'Yang paling <kanji>kotor</kanji> adalah koleksi <reading>o</reading>bi (お) penjara. Anda dapat mendengar para tahanan menangis, "Oh, bukan obinya. Obi kami semuanya kotor, oh tidak!"')
    RETURNING id INTO k_1506_kotor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '欲', 'ingin', 32, 35, 'Di <radical>lembah</radical> Anda merasakan <radical>kurangnya</radikal> <kanji>keinginan</kanji>. Anda tidak menginginkan apa pun di lembah ini. Ini adalah lembah kelimpahan.', 'Begitu sampai di lembah, Anda <kanji>ingin</kanji> protein. <reading>kuning telur</reading> (よく) jatuh dari langit! Ini sebuah keajaiban! Anda menginginkan protein, dan kuning telur disajikan. Itu jatuh tepat ke mulut Anda yang terbuka.')
    RETURNING id INTO k_1507_ingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '暖', 'hangat', 32, 36, 'Anda sedang <radical>matahari</radikal> bermain <radikal>sepak bola</radikal> dan Anda menjadi sangat <kanji>hangat</kanji>.', '<kanji>hangat</kanji> seperti ini karena saat ini <reading>fajar</reading> (だん). Saat itulah matahari terbit.')
    RETURNING id INTO k_1508_hangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '机', 'meja', 32, 37, '<radical>pohon</radikal> digabungkan dengan <radical>tabel</radikal> untuk membuat <kanji>meja</kanji>. Jika dipikir-pikir, meja hanyalah sebuah meja dengan lebih banyak barang. Untuk membuat lebih banyak barang, seperti laci dan semacamnya, Anda membutuhkan lebih banyak kayu, dan kayunya berasal dari pohon. Tambahkan bahan dari pohon ke meja dan Anda memiliki meja.', 'Saat kamu menyelesaikan <kanji>meja</kanji> kamu menoleh ke temanmu dan berkata, “<reading>Keren sekali ya</reading> (つくえ)?” Teman Anda menatap Anda dan berkata, "S''coo'' eh? Apa?" "Meja ini keren. Keren ya?" "Ah, iya kawan. S''coo'' eh."

Cara lain untuk mengingat bacaan ini adalah dengan memikirkan di mana Anda menemukan banyak meja. Itu benar, di <membaca>sekolah</reading> (つくえ).')
    RETURNING id INTO k_1509_meja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '秘', 'rahasia', 32, 38, 'Sebuah <radical>butiran</radikal> <radikal>pasti</radikal> menyimpan <kanji>rahasia</kanji>.', 'Jika seseorang mengetahui <kanji>rahasia</kanji> Anda (bukan secara langsung, pasti akan menyimpannya) maka seluruh wajah Anda akan dipenuhi dengan <reading>hea</reading>t (ひ).')
    RETURNING id INTO k_1510_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '訳', 'terjemahan', 32, 39, 'Mereka <radikal>mengatakan</radikal> seekor <radikal>udang</radikal> yang buruk dalam <kanji>terjemahan</kanji> tidak mempunyai <kanji>alasan</kanji> untuk hidup. Kebanyakan udang mencari nafkah dengan keterampilan penerjemahan mereka. Mereka adalah penerjemah lautan. Jika mereka tidak tahu bagaimana mengatakan sesuatu dalam semua bahasa laut, mereka tidak punya alasan untuk hidup. Mereka mungkin sudah mati.', '<kanji>terjemahan</kanji> yang gagal dibuat oleh udang ini adalah untuk kata “<reading>yak</reading>” (やく). Udang tidak menemukan <kanji>alasan</kanji> untuk menerjemahkan yak karena tidak ada yak di laut dan kemudian udang mulai mempertanyakan segala hal dalam hidupnya dan hancur berantakan.')
    RETURNING id INTO k_1511_terjemahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '染', 'pewarna', 32, 40, '<radikal>tsunami</radikal> menabrak <radikal>sembilan</radikal> <radikal>pohon</radikal> dan menghasilkan <kanji>pewarna</kanji> warna hutan. Air tsunami bercampur dengan setiap pohon, sebenarnya ada sembilan pohon, dan cairan yang dihasilkan adalah pewarna hijau hutan.', '<kanji>pewarna</kanji> terus melewati hutan dan mengenai sekelompok <reading>cen</reading>taurs (せん). Sekarang setiap centaur diwarnai dengan pewarna hijau hutan. Mereka tidak terlihat bahagia.')
    RETURNING id INTO k_1512_pewarna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '騙', 'tipu-daya', 32, 41, 'Satu-satunya cara untuk memasukkan <radical>kuda</radical> ke dalam <radical>perpustakaan</radical> adalah melalui <kanji>tipu daya</kanji>. Kuda bukanlah pembaca yang hebat, jadi Anda harus mengelabui salah satunya jika ingin membawanya ke perpustakaan bersama Anda.', 'Alasan kamu menyukai <kanji>tipu daya</kanji> adalah karena hal itu membuatmu merasa seperti <reading>da ma</reading>n (だま) setiap kali kamu berhasil mengelabui seseorang (walaupun orang itu adalah seekor kuda).')
    RETURNING id INTO k_9448_tipu_daya;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_496_lama_sekali, 'Lama sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1480_kata_pengantar, 'Kata pengantar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1481_selamat_datang, 'Selamat datang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1482_maksud, 'Maksud', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1482_maksud, 'Ambisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1483_kebaikan, 'Kebaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1484_mengumpulkan, 'Mengumpulkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1485_sakura, 'Sakura', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1485_sakura, 'Pohon Ceri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1485_sakura, 'Bunga Sakura', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1486_keabadian, 'Keabadian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1487_cairan, 'Cairan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1487_cairan, 'Cairan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1488_bola_mata, 'Bola mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1489_leluhur, 'Leluhur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1490_pencapaian, 'Pencapaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1491_minat, 'Minat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1492_pertahanan, 'Pertahanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1493_duplikat, 'Duplikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1493_duplikat, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1494_acak, 'Acak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1494_acak, 'Aneka ragam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1495_setuju, 'Setuju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1496_asam, 'Asam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1497_koin, 'Koin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1498_menjinakkan, 'Menjinakkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1499_luka, 'Luka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1500_berpesta, 'Berpesta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1500_berpesta, 'Kelompok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1501_telur, 'Telur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1502_ketat, 'Ketat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1503_membuang, 'Membuang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1504_ke_dalam, 'Ke dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1504_ke_dalam, 'Termasuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1505_kerahasiaan, 'Kerahasiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1506_kotor, 'Kotor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1507_ingin, 'Ingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1508_hangat, 'Hangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1509_meja, 'Meja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1510_rahasia, 'Rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1511_terjemahan, 'Terjemahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1511_terjemahan, 'Alasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1512_pewarna, 'Pewarna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9448_tipu_daya, 'Tipu daya', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_496_lama_sekali, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_496_lama_sekali, 'く', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_496_lama_sekali, 'ひさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1480_kata_pengantar, 'じょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1480_kata_pengantar, 'つい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1480_kata_pengantar, 'ついで', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1481_selamat_datang, 'げい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1481_selamat_datang, 'むか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1482_maksud, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1482_maksud, 'こころざし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1483_kebaikan, 'おん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1484_mengumpulkan, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1484_mengumpulkan, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1485_sakura, 'さくら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1485_sakura, 'おう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1485_sakura, 'よう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1486_keabadian, 'えい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1487_cairan, 'えき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1488_bola_mata, 'がん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1488_bola_mata, 'め', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1489_leluhur, 'そ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1490_pencapaian, 'せき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1491_minat, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1491_minat, 'こう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1492_pertahanan, 'えい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1493_duplikat, 'ふく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1494_acak, 'ざつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1494_acak, 'ぞう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1495_setuju, 'さん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1496_asam, 'さん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1496_asam, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1497_koin, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1497_koin, 'ぜに', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1498_menjinakkan, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1498_menjinakkan, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1499_luka, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1499_luka, 'きず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1499_luka, 'いた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1500_berpesta, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1501_telur, 'たまご', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1501_telur, 'らん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1502_ketat, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1502_ketat, 'ごん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1502_ketat, 'きび', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1502_ketat, 'おごそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1503_membuang, 'す', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1503_membuang, 'しゃ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1504_ke_dalam, 'こ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1505_kerahasiaan, 'みつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1505_kerahasiaan, 'ひそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1506_kotor, 'お', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1506_kotor, 'よご', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1506_kotor, 'きたな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1506_kotor, 'けが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1507_ingin, 'よく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1507_ingin, 'ほ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1508_hangat, 'だん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1508_hangat, 'あたた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1509_meja, 'つくえ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1509_meja, 'き', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1510_rahasia, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1510_rahasia, 'ひ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1511_terjemahan, 'やく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1511_terjemahan, 'わけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1512_pewarna, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1512_pewarna, 'しみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1512_pewarna, 'そ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1512_pewarna, 'し', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9448_tipu_daya, 'だま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9448_tipu_daya, 'へん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9448_tipu_daya, 'かた', 'kunyomi', false, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '久しい', 'dahulu-kala', 32, 42, 'Ini adalah kanji tunggal dengan しい di akhir, artinya merupakan kata sifat. Apa bentuk kata sifat dari <kanji>lama</kanji>? Ya, itu <vocabulary>lama sekali</vocabulary>, atau bisa berarti <vocabulary>lama sekali</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

<vocabulary>Dahulu kala</vocabulary>, di galaksi yang jauh, banyak film prekuel dirusak oleh satu karakter. "<reading>Heesa</reading> (ひさ) karakter terbaik!" kamu dengar. Oh tidak. Heesa di sini. Keluar sebelum Jar Jar Binks menangkapmu! Simpan dia di masa lalu!', 'Dahulu kala, Untuk waktu yang lama')
    RETURNING id INTO v_2591_dahulu_kala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '究明', 'penyelidikan', 32, 43, 'Jika Anda melakukan <kanji>penelitian</kanji> untuk <kanji>mencerahkan</kanji> suatu bidang subjek, Anda mungkin melakukan semacam <vocabulary>investigasi</vocabulary> yang menerangi hal-hal yang tidak diketahui.

Kata ini biasanya ditemukan dalam konteks akademis dan ilmiah, dan menyarankan penyelidikan menyeluruh yang dimaksudkan untuk memastikan atau memperjelas sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda telah melihat pembacaan tersebut di senyawa lain, jadi semoga Anda mengetahui cara membaca yang ini.', 'Penyelidikan')
    RETURNING id INTO v_3022_penyelidikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '白旗', 'bendera-putih', 32, 44, '<kanji>putih</kanji> <kanji>bendera</kanji> adalah <vocabulary>bendera putih</vocabulary>. Itu satu untuk menyerah. Saya menyerah! Terlalu banyak kanji!', 'Anda harus berhati-hati dengan yang satu ini, karena ini sebenarnya menggunakan pembacaan kun''yomi untuk kedua kanji, menjadikannya しろはた.

しろはた adalah bacaan yang akan kita fokuskan, karena ini adalah bacaan modern yang paling umum. Namun ada beberapa kemungkinan pembacaan lainnya: しらはた yang terdengar lebih tradisional terkadang digunakan dalam nama atau konteks sejarah, dan pembacaan on''yomi はっき terkadang muncul dalam konteks teknis. Anda akan baik-baik saja selama Anda mengetahui bacaan しろはた, tapi jangan lambaikan 白旗 jika varian lain juga muncul!', 'Bendera Putih')
    RETURNING id INTO v_5322_bendera_putih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '盗む', 'untuk-mencuri', 32, 45, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencuri</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>mencuri</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Apa yang akan Anda <vocabulary>curi</vocabulary>? Bagaimana dengan <reading>jerat</reading> (ぬす)? Tunggu, kenapa kamu mencuri jerat? Kedengarannya seperti masalah bagi saya…', 'Untuk Mencuri')
    RETURNING id INTO v_5343_untuk_mencuri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人脈', 'koneksi-pribadi', 32, 46, '<kanji>orang</kanji> <kanji>pembuluh darah</kanji> Anda adalah semua pembuluh darah yang Anda pancarkan ke berbagai orang yang Anda kenal. Ini adalah <vocabulary>koneksi pribadi</vocabulary> Anda, <vocabulary>jaringan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Koneksi Pribadi, Jaringan')
    RETURNING id INTO v_5474_koneksi_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結婚式', 'upacara-pernikahan', 32, 47, 'Jika 結婚 adalah <kanji>perkawinan</kanji>, maka <kanji>upacara</kanji> pernikahan adalah <vocabulary>upacara pernikahan</vocabulary> atau <vocabulary>pernikahan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Upacara Pernikahan, Pernikahan')
    RETURNING id INTO v_5505_upacara_pernikahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '押しボタン', 'tombol-tekan', 32, 48, 'Jika 押し adalah <kanji>tekan</kanji>, dan ボタン adalah sebuah tombol, maka Anda memiliki <vocabulary>push button</vocabulary>.', 'Bacaannya sama dengan 押す.', 'Tombol Tekan')
    RETURNING id INTO v_5506_tombol_tekan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '押入れ', 'lemari', 32, 49, 'Anda <kanji>mendorong</kanji> sesuatu untuk membuatnya <kanji>memasuki</kanji> <vocabulary>lemari</vocabulary> atau <vocabulary>lemari</vocabulary>.', 'Pembacaannya adalah 押し (tekan し di dalam 押) ditambah bacaan 入れる.', 'Lemari, Lemari')
    RETURNING id INTO v_5507_lemari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出版する', 'untuk-menerbitkan', 32, 50, 'Jika 出版 adalah <kanji>menerbitkan</kanji>, maka versi kosakata kata kerjanya adalah <vocabulary>topublish</vocabulary>.', 'Bacaannya berasal dari 出版, jadi jika Anda mengetahuinya, Anda pasti tahu ini. Selain itu, itu hanya pembacaan kanji saja, jadi tidak masalah bagi orang sepertimu, aku yakin.', 'Untuk Menerbitkan')
    RETURNING id INTO v_5508_untuk_menerbitkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出版社', 'perusahaan-penerbitan', 32, 51, 'Jika 出版 berarti <kanji>penerbitan</kanji>, maka <kanji>perusahaan</kanji> yang melakukan penerbitan tersebut adalah <vocabulary>perusahaan penerbitan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Namun, akan membantu jika mengetahui kata 出版.', 'Perusahaan Penerbitan, Penerbit')
    RETURNING id INTO v_5509_perusahaan_penerbitan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貧乏人', 'orang-miskin', 32, 52, '貧乏 adalah <kanji>miskin</kanji>, jadi <kanji>orang</kanji> yang miskin adalah <vocabulary>orang miskin</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui 貧乏.', 'Orang Miskin')
    RETURNING id INTO v_5510_orang_miskin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冷える', 'menjadi-dingin', 32, 53, 'Jika 冷やす berarti "mendinginkan sesuatu", maka ini adalah versi di mana sesuatu didinginkan. Anda tidak melakukan tindakan mendinginkan apa pun, hanya saja begitu. Anda mengetahui hal ini karena jika Anda terlibat, selalu ada <reading>err</reading>atau (える) yang mengerikan. Jadi, mundurlah dan biarkan lemari es bekerja tanpa menimbulkan kekacauan.', 'Bacaannya berasal dari 冷やす. Ketahuilah itu dan Anda juga mengetahui hal ini.', 'Menjadi Dingin, Menjadi Dingin')
    RETURNING id INTO v_5511_menjadi_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '撮影禁止', 'tidak-ada-foto', 32, 54, '撮影 adalah <kanji>fotografi</kanji>. 禁止 adalah <kanji>larangan</kanji>. Jadi jika fotografi dilarang, maka kita dapat berasumsi bahwa ada aturan <vocabulary>tidak boleh mengambil foto</vocabulary> atau <vocabulary>tidak boleh mengambil foto</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui kata 撮影 dan 禁止.', 'Tidak Ada Foto, Tidak Ada Foto yang Diizinkan')
    RETURNING id INTO v_5513_tidak_ada_foto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '照り焼き', 'teriyaki', 32, 55, 'Anda <kanji>menerangi</kanji> suatu makanan, lalu <kanji>memanggang</kanji> makanan tersebut. Untuk meneranginya, Anda menaruh saus yang mengkilat. Terdengar familiar, dari segi jenis makanannya? Ini adalah <vocabulary>teriyaki</vocabulary>, meskipun saya harus memperingatkan Anda bahwa ini sangat berbeda dari teriyaki yang Anda dapatkan di barat.', 'Bacaannya berasal dari 照る dan 焼く. Gabungkan keduanya dan Anda akan mendapatkan sesuatu yang enak.', 'Teriyaki')
    RETURNING id INTO v_5514_teriyaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '背中', 'seseorang-kembali', 32, 56, '<kanji>tengah</kanji> dari <kanji>punggung</kanji> Anda adalah <vocabulary>punggung seseorang</vocabulary> (atau <vocabulary>punggung</vocabulary> Anda).', 'Bacaannya adalah bacaan kun''yomi yang disatukan sehingga menjadi gabungan kata 背 dan 中.', 'Seseorang Kembali, Kembali')
    RETURNING id INTO v_5515_seseorang_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '購読する', 'untuk-berlangganan', 32, 57, 'Jika 購読 adalah "langganan", maka versi kosakata kata kerjanya adalah <vocabulary>to subscribe</vocabulary>.

Pengingat: ini mengacu secara khusus pada pembayaran langganan bahan bacaan, seperti koran atau majalah, jadi hindari menggunakannya untuk langganan gratis atau aplikasi musik!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Berlangganan')
    RETURNING id INTO v_5516_untuk_berlangganan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迎える', 'untuk-menjemput-seseorang', 32, 58, 'Kanjinya berarti <kanji>selamat datang</kanji>, tetapi versi kata kerjanya adalah <vocabulary>to pick Someone up</vocabulary> atau <vocabulary>to meet Someone</vocabulary>. Itu aneh. Namun, pikirkan seperti ini: Saat Anda pergi untuk menyambut seseorang, Anda juga akan <vocabulary>bertemu seseorang</vocabulary>. Anda harus pergi ke suatu tempat untuk menunggu dan menyambut mereka, itulah sebabnya Anda akan menjemput seseorang atau menemui mereka. Sesuatu seperti itu.', '<vocabulary>Untuk menjemput seseorang</vocabulary> Anda akan mengarahkan <reading>moo ca</reading>r Anda. Ini adalah mobil yang dirancang agar terlihat seperti sapi, tetapi menurut Anda ini akan menjadi cara yang bagus untuk menyambut teman Anda.', 'Untuk Menjemput Seseorang, Untuk Bertemu Seseorang, Untuk Menyambut, Untuk Mengundang')
    RETURNING id INTO v_5517_untuk_menjemput_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大騒ぎ', 'keributan', 32, 59, 'Jika 騒ぐ berarti "membuat kebisingan", maka versi <kanji>besar</kanji> akan lebih keras lagi. Ini adalah <vocabulary>keributan</vocabulary> dan <vocabulary>keributan</vocabulary>.', 'Ini adalah kata yang menggunakan pembacaan kanji kun''yomi, yang harus Anda ketahui karena 大 sudah cukup familiar bagi Anda sekarang (saya harap) dan Anda juga baru mempelajari 騒ぐ! Gabungkan keduanya, dengan sedikit penyesuaian di bagian akhir, dan Anda akan mendapatkan bacaannya. Ta-da!', 'Keributan, Kegemparan, Kebisingan Besar')
    RETURNING id INTO v_5518_keributan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '序文', 'kata-pengantar', 32, 60, '<kanji>Kata Pengantar</kanji> <kanji>tulisan</kanji> adalah <vocabulary>kata pengantar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kata pengantar')
    RETURNING id INTO v_5519_kata_pengantar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '順序', 'urutan', 32, 61, '<kanji>urutan</kanji> sesuatu adalah <kanji>kata pengantar</kanji> untuk seluruh <vocabulary>urutan</vocabulary> dan <vocabulary>langkah</vocabulary> yang berencana kami ambil. Jadi, ingatlah saja. Urutannya hanyalah kata pengantar. Inilah yang memungkinkan kita menghasilkan urutan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Urutan, Memesan, Tangga')
    RETURNING id INTO v_5520_urutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '志', 'ambisi', 32, 62, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Saat Anda memiliki <vocabulary>ambisi</vocabulary> untuk melakukan sesuatu, rasanya seperti Anda menunjuknya dengan hati. Untuk mengucapkan "menunjuk hati" dalam bahasa Jepang, Anda bisa mengucapkan <reading>心ざし</reading> (こころざし), yang merupakan cara penulisan kata ini dalam bahasa Jepang klasik. Dalam bahasa Jepang modern selalu 志, tapi bacaannya sama persis. Sekarang keluarlah dan tunjukkan impian Anda!', 'Ambisi, Maksud')
    RETURNING id INTO v_5521_ambisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '意志', 'akan', 32, 63, 'Anda mempunyai <kanji>ide</kanji> dan Anda mempunyai <kanji>niat</kanji> untuk melaksanakannya. Ini adalah <vocabulary>kehendak</vocabulary> dan <vocabulary>kehendak</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Akan, Kemauan')
    RETURNING id INTO v_5522_akan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '志望', 'menginginkan', 32, 64, '<kanji>niat</kanji> Anda untuk <kanji>harapan</kanji> Anda adalah apa yang Anda inginkan. Ini bukan sekedar harapan. Anda memiliki niat di baliknya. Ini adalah <vocabulary>keinginan</vocabulary> Anda. Ini adalah <vocabulary>ambisi</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menginginkan, Ambisi, Melamar')
    RETURNING id INTO v_5523_menginginkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恩人', 'dermawan', 32, 65, '<kanji>kebaikan</kanji> <kanji>orang</kanji> adalah orang yang sangat baik. Orang ini adalah <vocabulary>dermawan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dermawan')
    RETURNING id INTO v_5524_dermawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恩賞', 'hadiah', 32, 66, '<kanji>kebaikan</kanji> <kanji>hadiah</kanji> adalah hadiah yang diberikan seseorang kepada Anda karena kebaikannya. Mungkin Anda telah melakukan sesuatu yang baik, itulah sebabnya mereka memberi Anda <vocabulary>reward</vocabulary>.

Catatan: ini adalah kata yang lebih tua, jadi Anda mungkin hanya akan melihatnya di buku sejarah, namun tetap penting untuk mengetahuinya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hadiah')
    RETURNING id INTO v_5525_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '採る', 'untuk-berkumpul', 32, 67, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengumpulkan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>mengumpulkan</vocabulary>.', 'Saat Anda mengumpulkan barang, Anda berkeliling dan mengambil barang dari lokasi aslinya untuk disatukan di tempat berkumpulnya Anda. Dalam bahasa Jepang, kalau kamu mengambil sesuatu, kamu bisa bilang 取る, kan? Kata ini mempunyai bacaan yang sama: <reading>とる</reading>.', 'Untuk Berkumpul, Untuk Mengambil, Untuk Memilih')
    RETURNING id INTO v_5526_untuk_berkumpul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '採用', 'menggunakan', 32, 68, 'Saya <kanji>mengumpulkan</kanji> sesuatu dan <kanji>menggunakannya</kanji>. Hal-hal yang saya kumpulkan, adalah hal-hal yang saya <vocabulary>gunakan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menggunakan, Adopsi, Penerimaan, Pekerjaan')
    RETURNING id INTO v_5527_menggunakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '採決', 'pemungutan-suara', 32, 69, 'Saat orang <kanji>berkumpul</kanji> dan <kanji>memutuskan</kanji> sesuatu, mereka memutuskan bersama, biasanya melalui <vocabulary>memilih</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemungutan suara')
    RETURNING id INTO v_5528_pemungutan_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '採算', 'laba', 32, 70, '<kanji>Kumpulkan</kanji> uangnya lalu <kanji>hitung</kanji> berapa banyak yang Anda miliki. Oh, bagus, sepertinya Anda mendapat <vocabulary>untung</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Laba')
    RETURNING id INTO v_5529_laba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '桜', 'sakura', 32, 71, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Sakura, Pohon Ceri, Bunga Sakura')
    RETURNING id INTO v_5530_sakura;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '桜んぼ', 'ceri', 32, 72, '<kanji>pohon ceri</kanji> dapat membuat <vocabulary>ceri</vocabulary>. Inilah arti dari kata ini.', 'Bacaannya berasal dari kanji.', 'Ceri')
    RETURNING id INTO v_5531_ceri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '桜肉', 'daging-kuda', 32, 73, 'Anehnya, <kanji>pohon ceri</kanji> <kanji>daging</kanji> bukan hanya sejenis steak ceri... melainkan <vocabulary>daging kuda</vocabulary>. Mudah-mudahan Anda baru mengingatnya karena keanehan kanji kata ini.', 'Bacaannya adalah kata 桜 dan 肉 yang dirangkai menjadi satu kesatuan kata.', 'Daging Kuda')
    RETURNING id INTO v_5532_daging_kuda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '桜色', 'berwarna-merah-muda', 32, 74, '<kanji>bunga sakura</kanji> <kanji>warna</kanji> warnanya apa? Semacam <vocabulary>merah jambu</vocabulary>, bukan begitu? Selain itu, warna merah jambu juga bisa menjadi ピンク, jika Anda menginginkannya.', 'Pembacaannya adalah gabungan bacaan 桜 dan 色.', 'Berwarna merah muda, Merah Muda Pucat')
    RETURNING id INTO v_5533_berwarna_merah_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '永遠', 'selamanya', 32, 75, 'Sebuah <kanji>keabadian</kanji> yang <kanji>jauh</kanji> sebenarnya bukanlah sebuah keabadian, ia hanya terasa seperti itu. Itu <vocabulary>selamanya</vocabulary>, tapi bukan selamanya yang sebenarnya, yaitu selamanya. Itu 永久, yang nyata selamanya, ini lebih seperti "wah, aku sudah lama tidak makan sushi" (sebenarnya, kamu pernah).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Selamanya, Keabadian, Keabadian')
    RETURNING id INTO v_5534_selamanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '永久', 'selamanya', 32, 76, '<kanji>Keabadian</kanji> adalah <kanji>waktu yang lama</kanji>... seperti dalam <vocabulary>selamanya</vocabulary>. Kata ini ada hubungannya dengan selamanya yang sebenarnya. Jadi, selamanya. Bukan seperti "ya ampun, aku sudah lama tidak melakukan itu," karena jika Anda pernah melakukan sesuatu sebelumnya, itu tidak selamanya. Ini selamanya untuk kenyataan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Selamanya, Keabadian')
    RETURNING id INTO v_5535_selamanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '液体', 'cairan', 32, 77, 'Benda yang memiliki <kanji>cairan</kanji> <kanji>tubuh</kanji> terbuat dari <vocabulary>cairan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Cairan')
    RETURNING id INTO v_5536_cairan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '血液', 'darah', 32, 78, '<kanji>darah</kanji> <kanji>cairan</kanji> Anda adalah <vocabulary>darah</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Darah')
    RETURNING id INTO v_5537_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眼', 'mata', 32, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ini hanya sedikit lebih teknis daripada 目.', 'Bacaannya sama dengan kata "mata" (目), jadi gunakanlah itu untuk mengingatnya!', 'Mata, Bola mata')
    RETURNING id INTO v_5538_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眼球', 'bola-mata', 32, 80, '<kanji>bola mata</kanji> <kanji>bola</kanji> adalah <vocabulary>bola mata</vocabulary>. eh.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bola mata')
    RETURNING id INTO v_5539_bola_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '老眼', 'rabun-jauh', 32, 81, '<kanji>lansia</kanji> <kanji>bola mata</kanji> adalah seseorang yang tidak dapat melihat sesuatu dari dekat. Itu sebabnya kata ini berarti <vocabulary>rabun jauh</vocabulary>. Namun rabun dekat ini hanya muncul seiring bertambahnya usia. Jadi, Anda harus menjadi orang tua untuk memiliki 老眼.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rabun jauh')
    RETURNING id INTO v_5540_rabun_jauh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先祖', 'leluhur', 32, 82, '<kanji>sebelumnya</kanji> <kanji>nenek moyang</kanji> Anda adalah <vocabulary>nenek moyang</vocabulary> Anda. Lagi pula, semua leluhur sudah ada sebelum Anda, kecuali Anda ingin berbicara tentang perjalanan waktu, siapa yang tahu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Ingat saja ada rendaku yang mengubah そ menjadi ぞ！', 'Leluhur, Leluhur Seseorang')
    RETURNING id INTO v_5541_leluhur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祖父', 'kakek', 32, 83, '<kanji>nenek moyang</kanji> <kanji>ayah</kanji> Anda bukanlah ayah Anda, melainkan ayah yang datang sebelum generasi ayah Anda, <vocabulary>kakek</vocabulary> Anda.', 'Semua bacaannya on''yomi, yang bagus untuk 祖 tetapi tidak terlalu bagus untuk 父. Untuk mengingat bahwa 父 ini adalah ふ, coba pikirkan seberapa besar <reading>foo</reading>l (ふ) kakekmu, meskipun sebenarnya bukan.', 'Kakek, Kakek')
    RETURNING id INTO v_5542_kakek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祖母', 'nenek', 32, 84, '<kanji>leluhur</kanji> <kanji>ibu</kanji>mu bukanlah ibumu, melainkan ibu sebelum ibumu, <vocabulary>nenek</vocabulary>mu.', 'Pembacaan 祖 Anda ketahui, tetapi bagian 母nya tidak. Untuk mengingat bacaan on''yomi untuk 母 di 祖母, pikirkan saja bagaimana <vocabulary>nenek</vocabulary> Anda memiliki <reading>bo</reading>at (ぼ), bahkan jika dia tidak... dan betapa menakjubkan perahu itu. Jika mau, Anda bisa membayangkan nenek Anda juga seorang perahu, tapi itu mungkin tidak terlalu bagus.', 'Nenek, Nenek')
    RETURNING id INTO v_5543_nenek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '功績', 'pencapaian', 32, 85, 'Satu <kanji>pencapaian</kanji> ditambah <kanji>pencapaian</kanji> lainnya adalah <vocabulary>pencapaian</vocabulary> yang lebih besar. Wow, <vocabulary>pencapaian</vocabulary> yang luar biasa!

功績 adalah kata formal yang mengacu pada kontribusi atau kesuksesan penting. Ini biasanya digunakan untuk memuji kerja keras atau hasil luar biasa seseorang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pencapaian, Prestasi')
    RETURNING id INTO v_5544_pencapaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '成績', 'nilai', 32, 86, 'Hal-hal apa yang <kanji>menjadi</kanji> <kanji>pencapaian</kanji> Anda? <vocabulary>nilai</vocabulary> Anda. Setidaknya saat Anda masih di sekolah. Nilaimu menjadi pencapaian utamamu, bukan? Jadi mari kita lihat nilai-nilai itu… Oof, beberapa dari "prestasi" itu tidak terlalu luar biasa. Jangan khawatir, nilai bukanlah segalanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nilai, Peringkat')
    RETURNING id INTO v_5545_nilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '興味', 'minat', 32, 87, 'Saya memiliki <kanji>ketertarikan</kanji> pada <kanji>rasa</kanji>... Anda tertarik? Ya, saya memiliki <vocabulary>ketertarikan</vocabulary> yang sangat mendalam terhadapnya.', 'Sebagai kanji jukugo, kalian bisa menebak bacaan tersebut adalah bacaan kanji on''yomi, jadi kalian harus bisa membacanya.', 'Minat')
    RETURNING id INTO v_5546_minat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自衛', 'pertahanan-diri', 32, 88, '<kanji>Diri</kanji> <kanji>pertahanan</kanji> adalah saat Anda melindungi diri sendiri. Itu adalah <vocabulary>pertahanan diri</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pertahanan Diri')
    RETURNING id INTO v_5547_pertahanan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '衛生', 'kebersihan', 32, 89, 'Dalam <kanji>pertahanan</kanji> dari <kanji>kehidupan</kanji>, Anda harus tetap bersih. Jika Anda kotor, Anda akan mati lebih awal (pikirkan: wabah penyakit). Jadi, untuk mempertahankan kehidupan tersebut, Anda harus memiliki <kosakata>kebersihan</vocabulary> yang baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kebersihan')
    RETURNING id INTO v_5548_kebersihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '複雑', 'rumit', 32, 90, 'Ada <kanji>duplikat</kanji> untuk semuanya, belum lagi duplikatnya <kanji>acak</kanji>. Tidak ada yang masuk akal, dan semuanya super <vocabulary>rumit</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rumit, Kompleks')
    RETURNING id INTO v_5549_rumit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '衛星', 'satelit', 32, 91, 'Bintang <kanji>pertahanan</kanji> <kanji></kanji> sebenarnya bukanlah sebuah bintang, namun ia adalah sesuatu yang berkilau di langit yang dapat terlihat seperti bintang jika cukup terang. Ini adalah <vocabulary>satelit</vocabulary>, dan meskipun tidak selalu bersifat defensif, satelit dapat memiliki sifat defensif. Pikirkan meriam ion dan pelindung deflektor dan hal-hal seperti itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mengenal keduanya, jadi Anda pasti bisa membaca kata ini!', 'Satelit')
    RETURNING id INTO v_5550_satelit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '複数', 'banyak', 32, 92, '<kanji>duplikat</kanji> <kanji>angka</kanji> adalah saat Anda menggandakan angka menjadi lebih banyak angka, mewakili <vocabulary>beberapa</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Banyak, Jamak')
    RETURNING id INTO v_5551_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '複写', 'penyalinan', 32, 93, 'Saat Anda membuat <kanji>duplikat</kanji> <kanji>salinan</kanji> Anda <vocabulary>menyalin</vocabulary> sesuatu. Terutama jika Anda membuat <vocabulary>fotokopi</vocabulary> atau <vocabulary>carbon copy</vocabulary>. Ini seperti salinan dari salinan! 

複写 adalah kata yang cukup formal untuk menyalin dokumen, teks, atau gambar. Ini masih sering digunakan untuk membicarakan tentang salinan karbon. Namun untuk fotokopi, kebanyakan orang hanya mengucapkan コピー(する) saat ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyalinan, Fotokopi, Salinan Karbon')
    RETURNING id INTO v_5552_penyalinan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雑音', 'kebisingan', 32, 94, '<kanji>Acak</kanji> <kanji>kebisingan</kanji> tetaplah <vocabulary>kebisingan</vocabulary>, meskipun lebih spesifiknya adalah kebisingan acak, seperti <vocabulary>statis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kebisingan, Statis')
    RETURNING id INTO v_5553_kebisingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雑費', 'biaya-lain-lain', 32, 95, '<kanji>Acak</kanji> <kanji>pengeluaran</kanji> adalah <vocabulary>pengeluaran lain-lain</vocabulary>. Sebenarnya tidak acak, tapi mereka merasa seperti itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.ざつ menjadi ざっ dan ひ menjadi ぴ, membuatnya menjadi kata yang terdengar bodoh, seperti "zappy" (ざっぴ), sehingga Anda dapat memikirkan berapa banyak pengeluaran lain-lain yang Anda keluarkan untuk barang-barang zappy.', 'Biaya Lain-Lain')
    RETURNING id INTO v_5554_biaya_lain_lain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '酸っぱい', 'kecut', 32, 96, 'Rasa sesuatu yang mengandung <kanji>asam</kanji> adalah... yah... Anda mungkin mengira itu asam, tapi sebenarnya rasanya <vocabulary>asam</vocabulary>. Namun, beberapa hal yang bersifat asam ternyata cukup asam. Lemon cukup asam, dan rasanya juga sangat asam, jadi pikirkanlah hal itu ketika Anda perlu mengingat kata ini.', 'Sesuatu yang sangat <vocabulary>asam</vocabulary> sampai membuat mulut Anda patah. Anda sangat kesal dengan hal ini, sehingga Anda memutuskan untuk <reading>menuntut</reading> (す) pembuat makanan asam yang menjijikkan ini.', 'Kecut')
    RETURNING id INTO v_5555_kecut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賛成', 'perjanjian', 32, 97, 'Telah <kanji>menjadi</kanji> yang kami <kanji>setuju</kanji>. Kita punya <vocabulary>kesepakatan</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perjanjian, Persetujuan, Mendukung')
    RETURNING id INTO v_5556_perjanjian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '酸素', 'oksigen', 32, 98, '<kanji>asam</kanji> <kanji>elemen</kanji> adalah <vocabulary>oksigen</vocabulary>. Dalam bahasa Jerman sama dengan dalam bahasa Jepang - disebut “Sauerstoff”, termasuk “sauer”, kata yang berarti “asam”. Versi kata bendanya adalah “Säure” yang berarti “asam” dan “asam” (yang juga sama dalam bahasa Jepang, kanji yang sama digunakan di kedua kata tersebut). Kata “oksigenium” dalam bahasa Yunani/Latin secara harafiah berarti “pembuat asam”. Dahulu ahli kimia mengira oksigen adalah ciri khas asam, kemudian mereka menemukan ada juga asam tanpa oksigen seperti asam klorida/muriatik/garam dan ciri penentu sebenarnya adalah hidrogen. Tapi nama itu melekat.

Atau Anda bisa membayangkan semua oksigen yang Anda hirup berubah menjadi asam (oh tidak!), dan sungguh menyebalkan untuk bernapas. Apa pun yang cocok untuk Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Oksigen')
    RETURNING id INTO v_5557_oksigen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銭', 'koin', 32, 99, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Kata ini juga bisa berarti <vocabulary>uang</vocabulary> secara lebih umum.', 'Bacaan kanjinya adalah せん, bacaan vocabnya adalah <reading>ぜに</reading>. Mereka sangat mirip, tapi hanya ぜに yang berima dengan "penny".', 'Koin, Uang, uang')
    RETURNING id INTO v_5558_koin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銭湯', 'pemandian-umum', 32, 100, 'Berikan <kanji>koin</kanji> dan dapatkan <kanji>air panas</kanji>. Jadi Anda menyerahkan koin lalu Anda mendapatkan air panas berupa bak mandi. Ini adalah pemandian bagi siapapun yang bersedia membayar, menjadikannya <vocabulary>pemandian umum</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Namun, Anda tidak tahu cara membaca on''yomi 湯, jadi coba pikirkan bagaimana ketika Anda masuk ke <kosakata>pemandian umum</vocabulary>, Anda berada di <reading>To</reading>kyo (とう), karena ada banyak pemandian umum di Jepang, dan Tokyo adalah kota paling terkenal di sana.', 'Pemandian Umum')
    RETURNING id INTO v_5559_pemandian_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飼う', 'untuk-memelihara-hewan-peliharaan', 32, 101, 'Kanjinya adalah <kanji>menjinakkan</kanji>. Saat Anda menjinakkan hewan, Anda mempunyai <vocabulary>untuk memelihara hewan peliharaan</vocabulary>. Anda akan menggunakan ini untuk menggambarkan saat Anda memelihara anjing atau kucing atau sesuatu.', 'Bacaannya adalah yang Anda pelajari dengan kanji.か dari <read>ca</reading>t!', 'Untuk Memelihara Hewan Peliharaan, Untuk Memelihara Hewan Peliharaan, Untuk Memiliki Hewan Peliharaan')
    RETURNING id INTO v_5560_untuk_memelihara_hewan_peliharaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傷', 'luka', 32, 102, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', '"Bagaimana kamu bisa berakhir dengan <vocabulary>luka itu?</vocabulary>" "Aku pergi ke <reading>kebun binatang kunci</reading> (きず) dan semua kunci telah lepas dari kandangnya dan menjadi liar. Mereka benar-benar dapat menimbulkan banyak <vocabulary>kerusakan</vocabulary> jika kamu tidak hati-hati".', 'Luka, Kerusakan, Kekurangan')
    RETURNING id INTO v_5561_luka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傷心', 'patah-hati', 32, 103, 'Sebuah <kanji>luka</kanji> di <kanji>hati</kanji> Anda. Bisa jadi ada banyak hal, tapi dalam kasus ini adalah <vocabulary>patah hati</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Patah hati')
    RETURNING id INTO v_5563_patah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傷者', 'orang-yang-terluka', 32, 104, '<kanji>Seseorang</kanji> yang memiliki <kanji>luka</kanji> adalah seseorang yang terluka. Mereka adalah <vocabulary>orang yang terluka</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Orang yang Terluka, Orang yang Terluka')
    RETURNING id INTO v_5564_orang_yang_terluka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自民党', 'partai-demokrat-liberal', 32, 105, '<kanji>individu</kanji> <kanji>rakyat</kanji> <kanji>partai</kanji> adalah kelompok politik yang mempercayai setiap individu dari suatu masyarakat (atau sesuatu?). Terjemahannya tidak terlalu mengisyaratkan arti tersebut, namun kelompok ini adalah <vocabulary>Liberal Democrat Party</vocabulary> alias <vocabulary>LDP</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Partai Demokrat Liberal, Partai Demokrat')
    RETURNING id INTO v_5565_partai_demokrat_liberal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '共産党', 'partai-komunis', 32, 106, 'Gagasan bahwa setiap orang <kanji>bersama</kanji> berbagi <kanji>properti</kanji> di antara mereka berasal dari <kanji>pihak</kanji> yang mana? Itulah <vocabulary>Partai Komunis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Partai Komunis')
    RETURNING id INTO v_5566_partai_komunis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '政党', 'partai-politik', 32, 107, '<kanji>politik</kanji> <kanji>partai</kanji> adalah <vocabulary>partai politik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Partai politik')
    RETURNING id INTO v_5567_partai_politik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '党員', 'anggota-partai', 32, 108, '<kanji>partai</kanji> <kanji>anggota</kanji> adalah <vocabulary>anggota partai</vocabulary> dari sebuah partai politik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Anggota Partai')
    RETURNING id INTO v_5568_anggota_partai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '社会党', 'partai-sosialis', 32, 109, '<kanji>masyarakat</kanji> (社会) <kanji>partai</kanji> adalah <vocabulary>partai sosialis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Partai Sosialis')
    RETURNING id INTO v_5569_partai_sosialis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '卵', 'telur', 32, 110, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Telur')
    RETURNING id INTO v_5570_telur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生卵', 'telur-mentah', 32, 111, 'Ingat bagaimana 生 bisa berarti <kanji>mentah</kanji>? Ya, sekarang memang demikian. Jadi, <kanji>mentah</kanji> <kanji>telur</kanji>? Pertama-tama, enak. Yang kedua, artinya <kosa kata>telur mentah</vocabulary>.', 'Bacaannya adalah kosakata 生 dan 卵 yang digabungkan menjadi satu <bacaan>なまたまご</reading>.', 'Telur Mentah')
    RETURNING id INTO v_5571_telur_mentah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ゆで卵', 'telur-rebus', 32, 112, 'ゆで berasal dari kata kerja ゆでる, yang berarti "mendidih". Jadi kata ini artinya <vocabulary>telur rebus</vocabulary>.', 'Bacaannya berasal dari kanji.', 'Telur Rebus')
    RETURNING id INTO v_5572_telur_rebus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '厳しい', 'ketat', 32, 113, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>ketat</kanji>? Bahasa ini juga <vocabulary>ketat</vocabulary>.', 'Makhluk yang paling <vocabulary>ketat</vocabulary> di Jepang adalah <reading>lebah kunci</reading> (きび). Lebah kunci kecil harus sangat ketat dalam mengunci pintu sarangnya. Jika mereka tidak cukup ketat, lebah Jepang yang menakutkan akan masuk dan membunuh mereka semua. Pernahkah Anda melihat hal-hal itu? Mereka menakutkan!', 'Ketat, Kasar, Berat')
    RETURNING id INTO v_5573_ketat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '厳禁', 'sangat-dilarang', 32, 114, 'Sesuatu dengan <kanji>ketat</kanji> <kanji>larangan</kanji> adalah <vocabulary>dilarang keras</vocabulary> / <vocabulary>dilarang keras</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sangat Dilarang, Dilarang Keras, Larangan Ketat, Melarang')
    RETURNING id INTO v_5574_sangat_dilarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捨てる', 'untuk-membuang', 32, 115, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membuang</kanji> jadi versi kata kerjanya adalah <vocabulary>to throw away</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji, jadi tidak perlu <vocabulary>membuang</vocabulary> sedikit pengetahuan itu dulu!', 'Untuk Membuang, Untuk Meninggalkan')
    RETURNING id INTO v_5575_untuk_membuang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '込む', 'untuk-masuk', 32, 116, 'Kata ini diakhiri dengan hiragana う, yang menandakan bahwa itu adalah kata kerja. Kanji 込 berarti <kanji>ke</kanji>, jadi versi kata kerjanya adalah <vocabulary>to masuk ke</vocabulary>.

Kata ini umumnya melekat pada kata kerja lain, dan menambahkan nuansa menggerakkan sesuatu menuju pusat sesuatu, atau masuk jauh ke dalam sesuatu. Anda akan melihat banyak contoh kata dengan 込む di akhir, jadi perlahan-lahan Anda akan merasakan nuansa yang ditambahkannya!', 'Beruntungnya Anda, bacaan yang Anda pelajari dengan kanji adalah yang Anda gunakan di sini.', 'Untuk Masuk, Untuk Mendalami')
    RETURNING id INTO v_5576_untuk_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '密か', 'rahasia', 32, 117, 'Sesuatu yang memiliki <kanji>kerahasiaan</kanji> adalah <vocabulary>rahasia</vocabulary> dan <vocabulary>pribadi</vocabulary>.', 'Pikirkan tentang pria yang benar-benar <vocabulary>rahasia</vocabulary> dan <vocabulary>pribadi</vocabulary> itu. <read>Dia sangat</reading> (ひそ) rahasia...', 'Rahasia, Pribadi')
    RETURNING id INTO v_5577_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '密会', 'pertemuan-rahasia', 32, 118, '<kanji>kerahasiaan</kanji> <kanji>pertemuan</kanji> adalah <vocabulary>pertemuan rahasia</vocabulary>. Anda tahu kata sandinya?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Perhatikan bahwa みつ berubah menjadi みっ.', 'Pertemuan Rahasia, Pertemuan Klandestin')
    RETURNING id INTO v_5578_pertemuan_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '密告', 'tip-off', 32, 119, 'Dalam <kanji>kerahasiaan</kanji>, Anda <kanji>mengumumkan</kanji> sesuatu kepada pihak berwenang. Mengapa? Karena Anda memberi mereka <vocabulary>tip-off</vocabulary>. Orang yang Anda <vocabulary>beri informasi</vocabulary> bahkan mungkin mengatakan Anda <vocabulary>mengadu</vocabulary>.

密告 berarti secara diam-diam memberi tahu seseorang — biasanya tentang kesalahan atau kejahatan — kepada pihak berwenang atau orang yang bertanggung jawab. Kata-kata tersebut mengandung nada negatif yang kuat, sering kali menyiratkan pengkhianatan atau perilaku licik, seperti melaporkan kepemilikan narkoba sesama anggota geng kepada polisi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.みつ menjadi みっ.', 'Tip-Off, Menginformasikan, Mengadu')
    RETURNING id INTO v_5579_tip_off;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '秘密', 'rahasia', 32, 120, '<kanji>Rahasia</kanji> dan <kanji>kerahasiaan</kanji>. Gabungkan keduanya dan Anda akan mendapatkan <vocabulary>rahasia</vocabulary> yang cukup banyak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rahasia, Sebuah Rahasia')
    RETURNING id INTO v_5580_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '密輸', 'penyelundupan', 32, 121, '<kanji>kerahasiaan</kanji> <kanji>transportasi</kanji> adalah saat Anda mengangkut sesuatu secara rahasia. Jika Anda tidak ingin orang lain mengetahui barang yang Anda bawa, Anda harus melakukan <vocabulary>penyelundupan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyelundupan')
    RETURNING id INTO v_5581_penyelundupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '染める', 'untuk-pewarna', 32, 122, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>pewarna</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to dye</vocabulary>.', 'Anda perlu <vocabulary>untuk mewarnai</vocabulary> sesuatu yang baru saja Anda <reading>jahit</reading>ed (そ) menjadi satu. Semuanya dijahit dan terlihat seperti kemeja, tapi tidak berwarna. Di situlah kematian terjadi.', 'Untuk Pewarna')
    RETURNING id INTO v_5582_untuk_pewarna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感染', 'infeksi', 32, 123, '<kanji>perasaan</kanji> dari <kanji>pewarna</kanji> yang menutupi tubuh Anda, adalah perasaan adanya kuman dan penyakit jahat yang menembus kulit Anda, masuk ke dalam diri Anda. Ini adalah <vocabulary>infeksi</vocabulary>, dan ini menjijikkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Infeksi, Penularan')
    RETURNING id INTO v_5583_infeksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伝染病', 'penyakit-menular', 32, 124, '<kanji>penyakit</kanji>yang dapat <kanji>menular</kanji> dan kemudian <kanji>mewarnai</kanji> ke dalam diri Anda (alias masuk ke dalam diri Anda dan menulari Anda, melalui transmisi) adalah <vocabulary>penyakit menular</vocabulary>. Semua orang menutup mulutnya saat batuk dan bersin, dan tolong cuci tangan ya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyakit Menular')
    RETURNING id INTO v_5584_penyakit_menular;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汚れる', 'menjadi-kotor', 32, 125, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kotor</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to get dirty</vocabulary>. Anda tahu bahwa Anda tidak melakukan hal yang kotor, karena <reading>jarang</reading> (れる) bagi Anda untuk mengotori sesuatu, meskipun segala sesuatunya akan menjadi kotor dengan sendirinya.', 'Segala sesuatunya tampak <vocabulary>menjadi kotor</vocabulary> dengan mudah di sini, itulah sebabnya <reading>Anda berusaha</reading> (よご) berusaha keras untuk menjaga semuanya tetap bersih.

Perhatikan bahwa pembacaan よごれる umumnya digunakan untuk menjadi kotor secara fisik, sedangkan けがれる lebih bersifat kiasan, jadi lebih seperti “dinajiskan”.', 'Menjadi Kotor, Menjadi Tercemar, Menjadi Kotor')
    RETURNING id INTO v_5585_menjadi_kotor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汚染', 'polusi', 32, 126, '<kanji>kotor</kanji> <kanji>pewarna</kanji> yang tersebar di seluruh langit dan membuat segala sesuatu menjadi kotor ketika menyentuhnya adalah <vocabulary>polusi</vocabulary>. Kalau jelek banget itu kayak pewarna juga, bikin baju putih kamu jadi coklat, ih.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Polusi')
    RETURNING id INTO v_5586_polusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汚水', 'air-kotor', 32, 127, '<kanji>Kotor</kanji> <kanji>air</kanji> adalah <vocabulary>air kotor</vocabulary>. Bruto. Bisa juga berupa <vocabulary>sewage</vocabulary>. Bahkan lebih kotor.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Air Kotor, Air Kotor, Kotoran')
    RETURNING id INTO v_5587_air_kotor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汚点', 'noda', 32, 128, '<kanji>kotor</kanji> <kanji>titik</kanji> adalah titik kecil kekotoran pada sesuatu. Ini adalah <vocabulary>noda</vocabulary> atau <vocabulary>noda</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Noda, Noda')
    RETURNING id INTO v_5588_noda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欲しい', 'diinginkan', 32, 129, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>ingin</kanji>? Itu juga <vocabulary>diinginkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Apa yang Anda inginkan? Sebuah <reading>cangkul</reading> (ほ), seperti cangkul kebun, kamu sakit.', 'Diinginkan, Diinginkan, Ingin')
    RETURNING id INTO v_5589_diinginkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欲求', 'ingin', 32, 130, 'Apa yang Anda <kanji>inginkan</kanji> dan <kanji>permintaan</kanji> adalah <vocabulary>keinginan</vocabulary> Anda, <vocabulary>keinginan</vocabulary> Anda, mungkin <vocabulary>keinginan</vocabulary> Anda. Anda menginginkan hal-hal ini sehingga Anda memintanya. Saya menginginkannya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. よく berlanjut ke よっ, jadi berhati-hatilah agar tidak salah membaca.', 'ingin, keinginan, Keinginan')
    RETURNING id INTO v_5590_ingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肉欲', 'keinginan-duniawi', 32, 131, '<kanji>daging</kanji> <kanji>keinginan</kanji> Anda adalah keinginan terdalam Anda, <vocabulary>keinginan duniawi</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Keinginan Duniawi')
    RETURNING id INTO v_5591_keinginan_duniawi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食欲', 'nafsu-makan', 32, 132, 'Saya mempunyai <kanji>makanan</kanji> <kanji>ingin</kanji>. Saat saya menginginkan makanan (atau saat saya tidak menginginkan makanan), itu ada hubungannya dengan <vocabulary>nafsu makan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nafsu makan')
    RETURNING id INTO v_5592_nafsu_makan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暖かい', 'hangat', 32, 133, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>hangat</kanji>? <vocabulary>hangat</vocabulary> juga! Meskipun ini untuk cuaca atau suhu <vocabulary>hangat</vocabulary>, bukan makanan hangat atau semacamnya, itu akan menjadi 温かい, あたたかい yang berbeda. Membingungkan, bukan?', 'Bacaannya sama dengan 温かい yang artinya juga <vocabulary>hangat</vocabulary>. Namun meskipun 温かい mengacu pada sesuatu yang hangat, 暖かい ini mengacu pada suhu atau tempat yang hangat.

Sama seperti 温かい, orang sering mengucapkannya sebagai あったかい dalam percakapan. Tapi kalau soal ujian kanji atau mengetik kanji, ingatlah untuk menggunakan あたたかい!', 'Hangat, Lembut')
    RETURNING id INTO v_5593_hangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '温暖', 'hangat', 32, 134, '<kanji>Hangat</kanji> <kanji>hangat</kanji> adalah <vocabulary>hangat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hangat, Lembut, Kehangatan')
    RETURNING id INTO v_5594_hangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '机', 'meja', 32, 135, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Meja')
    RETURNING id INTO v_5595_meja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '秘める', 'untuk-menyembunyikan', 32, 136, 'Jika Anda <kanji>merahasiakan</kanji> sesuatu, Anda mencoba <vocabulary>menjaga rahasia</vocabulary> sesuatu. Itu, atau Anda mencoba <vocabulary>menyembunyikan</vocabulary> itu.', 'Bacaannya sama dengan yang kamu pelajari dengan kanji, anehnya. Tidak ada <vocabulary>yang perlu disembunyikan</vocabulary> tentang bacaan ini, Anda mengerti.', 'Untuk Menyembunyikan, Untuk Menjaga Rahasia')
    RETURNING id INTO v_5596_untuk_menyembunyikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '便秘', 'sembelit', 32, 137, 'Untuk kata ini, 便 berasal dari 便所, yang Anda kenal sebagai "toilet". <kanji>toilet</kanji> <kanji>rahasia</kanji> adalah sesuatu yang Anda bawa ke kamar mandi, sesuatu yang Anda tidak ingin orang lain mengetahuinya. Ini adalah <vocabulary>sembelit</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.ひ berubah menjadi ぴ karena "P" berarti "Kotoran".', 'Sembelit')
    RETURNING id INTO v_5597_sembelit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訳', 'alasan', 32, 138, 'Kata ini mengambil arti <kanji>alasan</kanji> dari kanji, menjadikannya <vocabulary>alasan</vocabulary>. Apa alasannya memiliki dua arti? Saya tidak tahu, tapi pasti ada alasannya.

Meskipun 理由 adalah istilah umum untuk alasan, 訳 cenderung lebih fokus pada alasan atau penyebab yang mendasari sesuatu. Ini juga digunakan ketika menjelaskan suatu situasi atau ketika ada kebutuhan tersirat untuk membenarkan atau memperjelas sesuatu.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Apa <vocabulary>alasan</vocabulary> Anda untuk <reading>bangun</reading> (わけ) pagi ini? Pikirkan tentang hal ini. Sekarang pikirkan alasan Anda untuk bangun besok. Apa itu?', 'Alasan')
    RETURNING id INTO v_5599_alasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訳す', 'untuk-menerjemahkan', 32, 139, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menerjemahkan</kanji> sehingga versi kata kerjanya adalah <vocabulary>to Translate</vocabulary>.', 'Pembacaan bagian kanji secara mengejutkan adalah やく yang Anda pelajari dengannya, bahkan Anda tidak menduganya. Saya kira itulah hal yang harus Anda nantikan jika Anda ingin terjun ke dunia penerjemahan.', 'Untuk Menerjemahkan')
    RETURNING id INTO v_5600_untuk_menerjemahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訳者', 'penterjemah', 32, 140, '<kanji>Seseorang</kanji> yang <kanji>menerjemahkan</kanji> sesuatu adalah <vocabulary>penerjemah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penterjemah')
    RETURNING id INTO v_5601_penterjemah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訳語', 'istilah-yang-diterjemahkan', 32, 141, 'Sedikit <kanji>terjemahan</kanji>dari <kanji>bahasa</kanji> adalah <vocabulary>istilah yang diterjemahkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Istilah yang Diterjemahkan')
    RETURNING id INTO v_5602_istilah_yang_diterjemahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通訳', 'menafsirkan', 32, 142, 'Jika Anda membiarkan kata-kata <kanji>melewati</kanji> Anda, dan saat kata-kata itu Anda <kanji>menerjemahkan</kanji>, Anda sedang melakukan <vocabulary>interpreting</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menafsirkan, Interpretasi')
    RETURNING id INTO v_5603_menafsirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '英訳', 'terjemahan-bahasa-inggris', 32, 143, '<kanji>Bahasa Inggris</kanji> <kanji>translate</kanji> adalah <vocabulary>terjemahan bahasa Inggris</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terjemahan Bahasa Inggris')
    RETURNING id INTO v_5604_terjemahan_bahasa_inggris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '和訳', 'terjemahan-jepang', 32, 144, 'Ingat bagaimana 和 mewakili Jepang? Sekarang, ambil itu dan tambahkan <kanji>translate</kanji> ke dalamnya. Dengan itu, Anda memiliki <vocabulary>terjemahan bahasa Jepang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terjemahan Jepang')
    RETURNING id INTO v_5605_terjemahan_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '延長する', 'untuk-memperpanjang', 32, 145, 'Jika 延長 adalah <kanji>memperpanjang</kanji>, maka versi kata kerjanya adalah <vocabulary>to prolong</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Memperpanjang, Untuk Memperluas')
    RETURNING id INTO v_5606_untuk_memperpanjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漏らす', 'membiarkan-sesuatu-bocor', 32, 146, 'Anda telah mempelajari 漏れる yang artinya "bocor". 漏らす merupakan versi transitif yang artinya mengambil objek langsung. Jadi ini berarti <vocabulary>membiarkan sesuatu bocor</vocabulary> atau <vocabulary>membocorkan sesuatu</vocabulary>. Alasan Anda membiarkan sesuatu bocor adalah karena Anda <read>terburu-buru</reading> menyelesaikan (らす) pekerjaan tersebut (karena Anda melakukannya sendiri)!

Meskipun bersifat transitif, 漏らす sering kali menyiratkan kebocoran yang tidak disengaja, seperti dalam おしっこを漏らす (basah celana) atau 水を漏らすな (jangan sampai air tumpah). Kata ini juga digunakan secara kiasan, seperti 秘密を漏らす (membocorkan rahasia), 不満を漏らす (mengekspresikan ketidakpuasan), atau ためいきを漏らす (menghela nafas).', 'Bacaannya berasal dari 漏れる, jadi kalau kamu tahu itu, kamu pasti tahu ini! Jangan biarkan ingatan itu hilang dari kepala Anda.', 'Membiarkan Sesuatu Bocor, Membocorkan Sesuatu')
    RETURNING id INTO v_5608_membiarkan_sesuatu_bocor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '越す', 'untuk-melampauinya', 32, 147, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>melampaui</kanji> sehingga versi kosakata kata kerjanya juga <vocabulary>melampaui</vocabulary>.

Arti ini sangat mirip dengan 越える. Keduanya dapat merujuk pada mengatasi suatu objek fisik atau melewati jangka waktu tertentu. Namun, 越す cenderung terdengar kurang intens, sedangkan 越える benar-benar berfokus pada tantangan fisik atau emosional untuk mengatasi pencapaian tertentu. Contohnya, meskipun 山を越す merujuk pada melintasi gunung, 山を越える memberikan kesan bahwa melintasi gunung adalah kesulitan yang telah Anda atasi.', 'Bacaannya sama dengan 越える. Jadi, jika Anda mengetahuinya, Anda juga mengetahui hal ini! Jika Anda memerlukan pengingat, inilah mnemoniknya:

<vocabulary>Untuk melampaui</vocabulary> <reading>anak-anak</reading> (こ) tahun untuk menjadi dewasa, Anda harus berusia 18 tahun di AS, dan 20 tahun di Jepang.', 'Untuk Melampauinya')
    RETURNING id INTO v_5609_untuk_melampauinya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '浮かれる', 'menjadi-bahagia', 32, 148, '浮く berarti "mengambang", dan 浮かれる mengacu pada metafora "mengambang" yang berarti <vocabulary>berbahagia</vocabulary>, <vocabulary>bersemangat tinggi</vocabulary>, atau <vocabulary>bersemangat</vocabulary>. Kita mempunyai metafora yang sama dalam bahasa Inggris - bayangkan berada "di awan sembilan".', 'Bacaannya berasal dari 浮く, jadi jika Anda tahu bahwa Anda akan <vocabulary>berbahagia</vocabulary> dan Anda tidak akan memiliki <reading>care</reading> (かれる) di dunia!', 'Menjadi Bahagia, Agar Bersemangat Tinggi, Menjadi gembira')
    RETURNING id INTO v_5610_menjadi_bahagia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '似合う', 'sesuai', 32, 149, 'Itu <kanji>mirip</kanji> denganmu! Ini <kanji>cocok</kanji> untuk Anda! Wah, ketampananmu benar-benar membuat syal ini <vocabulary>cocok</vocabulary> denganmu lho?', 'Bacaannya dari 似る dan 合う, disatukan.', 'Sesuai, Untuk Mencocokkan')
    RETURNING id INTO v_5708_sesuai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '背丈', 'perawakan', 32, 150, '<kanji>punggung</kanji> <kanji>tinggi</kanji> seseorang adalah <vocabulary>tinggi</vocabulary> mereka. Ini juga mengacu pada <vocabulary>status</vocabulary> mereka.', 'Bacaannya berasal dari bacaan kosakata 背 dan 丈 yang digabungkan menjadi satu.', 'Perawakan, Tinggi')
    RETURNING id INTO v_7279_perawakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '火傷', 'membakar', 32, 151, '<kanji>api</kanji> <kanji>luka</kanji> adalah <vocabulary>luka bakar</vocabulary> atau <vocabulary>scald</vocabulary> yang Anda dapatkan dari api (atau benda panas lainnya). Aduh!', 'Pembacaannya tidak seperti apa pun yang pernah Anda lihat dengan kanji ini. Coba bayangkan <vocabulary>luka bakar</vocabulary> (di lengan Anda) yang disebabkan oleh burung <reading>yakky do</reading>do (やけど) (yang merupakan burung dodo yang mempunyai ciri-ciri mirip yak). Lihatlah betapa anehnya hal itu, dan heran mengapa hal itu membuat Anda terbakar. Rasakan sakitnya.', 'Membakar, Melepuh')
    RETURNING id INTO v_7484_membakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '意欲', 'akan', 32, 152, 'Jika Anda sudah memiliki <kanji>ide</kanji> tentang apa yang <kanji>inginkan</kanji>, maka itu bagus! Anda memiliki <vocabulary>kemauan</vocabulary>, <vocabulary>keinginan</vocabulary>, dan <vocabulary>ambisi</vocabulary>. Mereka yang tidak tahu apa yang mereka inginkan tidak dapat memperoleh semua ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Akan, Menginginkan, Ambisi')
    RETURNING id INTO v_7488_akan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恐い', 'menakutkan', 32, 153, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>ketakutan</kanji>? <vocabulary>Menakutkan</vocabulary> atau <vocabulary>menakutkan</vocabulary>. Bisa juga berarti <vocabulary>Saya takut</vocabulary> atau <vocabulary>Saya takut </vocabulary> juga.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda tahu apa yang sebenarnya menakutkan? <read>Koa</reading>las (こわ). Pernahkah Anda mendengar salah satunya? Mereka sangat menakutkan, jangan dekati mereka.', 'Menakutkan, Menakutkan, Ngeri, Mengerikan, saya takut, Saya Takut')
    RETURNING id INTO v_7606_menakutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '背が高い', 'tinggi', 32, 154, 'Ini adalah kata 背 dan 高い yang digabungkan menjadi satu kata sifat. Bila tinggi badan anda tinggi berarti anda adalah orang yang <vocabulary>tinggi</vocabulary>. Kata ini hanya digunakan untuk orang yang tinggi, tidak untuk hal lain yang tinggi seperti gedung atau pohon.', 'Kata ini sebenarnya adalah dua kata terpisah yang digabungkan dengan sebuah partikel. Jadi, karena Anda memperlakukannya seperti kata-kata yang terpisah, Anda membacanya masing-masing dengan pembacaan kun''yomi (keduanya merupakan kata-kata kanji tunggal). Anda telah mempelajari kedua bacaan ini sebelumnya, jadi Anda seharusnya sudah bisa membaca kata ini!', 'Tinggi')
    RETURNING id INTO v_7607_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飾り', 'dekorasi', 32, 155, 'Ini adalah versi kata benda dari kanji <kanji>menghias</kanji>, jadi artinya <vocabulary>dekorasi</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Dekorasi, Ornamen')
    RETURNING id INTO v_7661_dekorasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飾り気', 'pamer', 32, 156, 'Jika kamu <kanji>menghias</kanji> <kanji>semangat</kanji> kamu dengan berbagai benda cantik seperti pita dan balon, orang akan mengira kamu hanya <vocabulary>pamer</vocabulary>. Ya, Anda tahu semangat Anda luar biasa, tetapi semua orang tidak ingin hal itu terpampang di wajah mereka dengan dekorasi Anda yang berlebihan.', 'Karena bagian pertama kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda telah mempelajari cara membaca bagian かざ dengan kosakata 飾る.

Kanji kedua menggunakan bacaan on''yomi. Anda belum mempelajari bacaan ini untuk 気, jadi inilah mnemonik untuk membantu Anda:

Pada puncak <vocabulary>pamer</vocabulary>, Anda menekuk satu tangan ke pinggul dan tangan lainnya terangkat ke udara. Anda berpura-pura menjadi <reading>ke</reading>ttle (け). Kamu memamerkan semangatmu kepada semua temanmu sambil bernyanyi, "Aku kecil ketel, pendek dan kekar. Ini peganganku, ini ceratku. SEMUA ORANG LIHAT BAGAIMANA HEBAT AKU!" Tarian ketel Anda pasti akan membuat mereka terkesan.', 'Pamer, Sok aksi')
    RETURNING id INTO v_7721_pamer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遊び', 'bermain', 32, 157, 'Ini adalah versi kata benda dari kanji <kanji>bermain</kanji>, jadi artinya <vocabulary>play</vocabulary> atau <vocabulary>playing</vocabulary>!', 'Anda mempelajari bacaan ini ketika Anda mempelajari 遊ぶ. Itu sama!', 'Bermain, Bermain, Pertandingan')
    RETURNING id INTO v_8721_bermain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '火照る', 'merasa-panas', 32, 158, 'Jika <kanji>api</kanji> <kanji>menerangi</kanji> wajah Anda, Anda akan <vocabulary>merasa panas</vocabulary>. Kadang-kadang Anda mulai <vocabulary>memerah</vocabulary> ketika Anda merasa malu dan rasanya seperti ada api yang membuat wajah Anda bersinar.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda belum mempelajari bacaan ini untuk 火, tetapi akan lebih mudah untuk mengingatnya dengan mnemonik untuk keseluruhannya:

Kapan Anda akan <vocabulary>merasa kepanasan</vocabulary>? Kapan wajahmu akan <vocabulary>memerah</vocabulary>? Saat aku memintamu pergi ke <reading>hotel</reading> (ほてる) bersamaku!', 'Merasa Panas, Untuk menyiram, Untuk Membakar')
    RETURNING id INTO v_8723_merasa_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '背広', 'setelan-bisnis', 32, 159, 'Jika <kanji>punggung</kanji> Anda <kanji>lebar</kanji>, Anda memerlukan <vocabulary>setelan bisnis</vocabulary> yang bagus untuk menutupinya saat Anda pergi bekerja. Jika tidak, Anda akan terlihat tidak pantas duduk di depan meja seperti pegulat raksasa dengan punggung lebar. Apakah kamu ingin terlihat seperti itu? Tentu saja tidak! Anda harus keluar dan membeli setelan mewah untuk menutupi punggung lebar Anda sekarang!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda sudah mempelajari keduanya jadi Anda harus bisa membacanya juga! Hati-hati dengan rendaku yang aneh di sini sehingga び bukan ひ.', 'Setelan Bisnis')
    RETURNING id INTO v_8760_setelan_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '匂い', 'bau', 32, 160, 'Ini adalah versi kata benda dari kanji untuk <kanji>bau</kanji>. Itu juga berarti <vocabulary>bau</vocabulary>, atau <vocabulary>aroma</vocabulary>!

Meskipun 匂う sering kali menyiratkan sesuatu yang berbau tidak sedap, 匂い lebih netral dan bisa mengacu pada segala jenis bau.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya sudah bisa membacanya!', 'Bau, Aroma, Bau')
    RETURNING id INTO v_8841_bau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '濡れる', 'menjadi-basah', 32, 161, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>basah</kanji>, jadi versi kata kerjanya adalah <vocabulary>to get wet</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya sudah bisa membacanya!', 'Menjadi Basah, Menjadi Basah')
    RETURNING id INTO v_8876_menjadi_basah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '預かる', 'untuk-dijaga', 32, 162, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>deposit</kanji>, dan kata ini digunakan ketika seseorang menitipkan sesuatu (atau seseorang) kepada Anda, karena mereka ingin Anda <vocabulary>menjaga</vocabulary>, <vocabulary>menjaga</vocabulary>, atau <vocabulary>menyimpannya</vocabulary>.

Ingatlah bahwa 預ける digunakan ketika Anda meninggalkan sesuatu pada orang lain untuk diurus sementara. 預かる, di sisi lain, digunakan ketika Anda adalah orang yang menerima sesuatu untuk dijaga. Kamu dapat mengingat ini karena kamu hebat dalam mengurus kargo (かる). Anda selalu menjaga barang bawaan semua orang, tetapi Anda dengan senang hati menyimpannya untuk mereka.

Perhatikan juga bahwa meskipun 預かる diakhiri dengan かる dan terlihat intransitif, sebenarnya ini merupakan pengecualian! Itu akan selalu memiliki objek langsung untuk menentukan apa yang Anda cari.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda telah mempelajarinya sebelumnya dengan kata kerja berpasangan 預ける, namun berikut adalah mnemonik untuk mengingatkan Anda untuk berjaga-jaga:

Anda memerlukan seseorang <vocabulary>untuk menjaga</vocabulary> anak-anak Anda sepanjang hari. Hei, aku punya ide! Tinggalkan mereka bersama monyet di <reading>kebun binatang</reading> (あず)! Monyet menyukai anak-anak, dan anak-anak menyukai monyet. Sekarang Anda dapat memperbesar <reading>mobil</reading> (か) Anda untuk hari itu!', 'Untuk Dijaga, Untuk Merawat, Untuk Bertahan')
    RETURNING id INTO v_8956_untuk_dijaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '騙す', 'untuk-menipu', 32, 163, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>tipu daya</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to trick</vocabulary> atau <vocabulary>to menipu</vocabulary>.

騙す artinya menipu atau menipu seseorang dengan membuat mereka mempercayai sesuatu yang tidak benar. Hal ini jelas bernuansa negatif, karena selalu melibatkan ketidakjujuran yang disengaja. Perhatikan bahwa kata ini juga biasa ditulis dalam kana sebagai だます.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Serius, kami tidak menipu Anda — sama saja.', 'Untuk Menipu, Untuk Menipu')
    RETURNING id INTO v_9458_untuk_menipu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懐', 'saku-dada', 32, 164, 'Anda tahu bahwa 懐 berarti "nostalgia", tapi ingat bagaimana kata itu juga bisa berarti <kanji>kantong dada</kanji>? Nah, itu juga arti dari kosakatanya: <vocabulary>kantong dada</vocabulary>.

懐 awalnya mengacu pada ruang antara lapisan dalam dan luar kimono. Ketika pakaian gaya Barat menjadi standar, yang dimaksud dengan area saku bagian dalam di sekitar dada.

Karena orang sering kali menyimpan uang di 懐 mereka, ini secara kiasan merujuk pada kemampuan keuangan seseorang, seperti terlihat dalam ungkapan seperti 懐が寒い (kekurangan uang). Kata ini juga dapat menggambarkan kapasitas seseorang untuk menerima dan toleran, seperti dalam 懐が深い ​​(seseorang yang memiliki "kantung hati yang dalam", artinya mereka berpikiran luas dan berjiwa murah hati).', '<vocabulary>kantong dada</vocabulary> Anda adalah <reading>太 core</reading> (ふところ) dari identitas Anda. Anda menyimpan segala macam barang di sana - kartu identitas, polaroid, kenang-kenangan, segepok uang tunai - dan itulah mengapa saku dada Anda terlihat sangat penuh dan 太. Inti 太 Anda mendefinisikan Anda sebagai pribadi, dan Anda tidak akan menjadi diri Anda sendiri tanpanya!', 'Saku Dada, Dada, Saku Dalam')
    RETURNING id INTO v_9474_saku_dada;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2591_dahulu_kala, 'Dahulu kala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2591_dahulu_kala, 'Untuk waktu yang lama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3022_penyelidikan, 'Penyelidikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5322_bendera_putih, 'Bendera Putih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5343_untuk_mencuri, 'Untuk Mencuri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5474_koneksi_pribadi, 'Koneksi Pribadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5474_koneksi_pribadi, 'Jaringan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5505_upacara_pernikahan, 'Upacara Pernikahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5505_upacara_pernikahan, 'Pernikahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5506_tombol_tekan, 'Tombol Tekan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5507_lemari, 'Lemari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5507_lemari, 'Lemari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5508_untuk_menerbitkan, 'Untuk Menerbitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5509_perusahaan_penerbitan, 'Perusahaan Penerbitan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5509_perusahaan_penerbitan, 'Penerbit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5510_orang_miskin, 'Orang Miskin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5511_menjadi_dingin, 'Menjadi Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5511_menjadi_dingin, 'Menjadi Dingin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5513_tidak_ada_foto, 'Tidak Ada Foto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5513_tidak_ada_foto, 'Tidak Ada Foto yang Diizinkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5514_teriyaki, 'Teriyaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5515_seseorang_kembali, 'Seseorang Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5515_seseorang_kembali, 'Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5516_untuk_berlangganan, 'Untuk Berlangganan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5517_untuk_menjemput_seseorang, 'Untuk Menjemput Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5517_untuk_menjemput_seseorang, 'Untuk Bertemu Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5517_untuk_menjemput_seseorang, 'Untuk Menyambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5517_untuk_menjemput_seseorang, 'Untuk Mengundang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5518_keributan, 'Keributan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5518_keributan, 'Kegemparan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5518_keributan, 'Kebisingan Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5519_kata_pengantar, 'Kata pengantar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5520_urutan, 'Urutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5520_urutan, 'Memesan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5520_urutan, 'Tangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5521_ambisi, 'Ambisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5521_ambisi, 'Maksud', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5522_akan, 'Akan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5522_akan, 'Kemauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5523_menginginkan, 'Menginginkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5523_menginginkan, 'Ambisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5523_menginginkan, 'Melamar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5524_dermawan, 'Dermawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5525_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5526_untuk_berkumpul, 'Untuk Berkumpul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5526_untuk_berkumpul, 'Untuk Mengambil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5526_untuk_berkumpul, 'Untuk Memilih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5527_menggunakan, 'Menggunakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5527_menggunakan, 'Adopsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5527_menggunakan, 'Penerimaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5527_menggunakan, 'Pekerjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5528_pemungutan_suara, 'Pemungutan suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5529_laba, 'Laba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5530_sakura, 'Sakura', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5530_sakura, 'Pohon Ceri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5530_sakura, 'Bunga Sakura', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5531_ceri, 'Ceri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5532_daging_kuda, 'Daging Kuda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5533_berwarna_merah_muda, 'Berwarna merah muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5533_berwarna_merah_muda, 'Merah Muda Pucat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5534_selamanya, 'Selamanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5534_selamanya, 'Keabadian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5534_selamanya, 'Keabadian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5535_selamanya, 'Selamanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5535_selamanya, 'Keabadian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5536_cairan, 'Cairan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5537_darah, 'Darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5538_mata, 'Mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5538_mata, 'Bola mata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5539_bola_mata, 'Bola mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5540_rabun_jauh, 'Rabun jauh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5541_leluhur, 'Leluhur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5541_leluhur, 'Leluhur Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5542_kakek, 'Kakek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5542_kakek, 'Kakek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5543_nenek, 'Nenek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5543_nenek, 'Nenek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5544_pencapaian, 'Pencapaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5544_pencapaian, 'Prestasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5545_nilai, 'Nilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5545_nilai, 'Peringkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5546_minat, 'Minat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5547_pertahanan_diri, 'Pertahanan Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5548_kebersihan, 'Kebersihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5549_rumit, 'Rumit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5549_rumit, 'Kompleks', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5550_satelit, 'Satelit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5551_banyak, 'Banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5551_banyak, 'Jamak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5552_penyalinan, 'Penyalinan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5552_penyalinan, 'Fotokopi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5552_penyalinan, 'Salinan Karbon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5553_kebisingan, 'Kebisingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5553_kebisingan, 'Statis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5554_biaya_lain_lain, 'Biaya Lain-Lain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5555_kecut, 'Kecut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5556_perjanjian, 'Perjanjian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5556_perjanjian, 'Persetujuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5556_perjanjian, 'Mendukung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5557_oksigen, 'Oksigen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5558_koin, 'Koin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5558_koin, 'Uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5558_koin, 'uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5559_pemandian_umum, 'Pemandian Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5560_untuk_memelihara_hewan_peliharaan, 'Untuk Memelihara Hewan Peliharaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5560_untuk_memelihara_hewan_peliharaan, 'Untuk Memelihara Hewan Peliharaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5560_untuk_memelihara_hewan_peliharaan, 'Untuk Memiliki Hewan Peliharaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5561_luka, 'Luka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5561_luka, 'Kerusakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5561_luka, 'Kekurangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5563_patah_hati, 'Patah hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5564_orang_yang_terluka, 'Orang yang Terluka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5564_orang_yang_terluka, 'Orang yang Terluka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5565_partai_demokrat_liberal, 'Partai Demokrat Liberal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5565_partai_demokrat_liberal, 'Partai Demokrat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5566_partai_komunis, 'Partai Komunis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5567_partai_politik, 'Partai politik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5568_anggota_partai, 'Anggota Partai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5569_partai_sosialis, 'Partai Sosialis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5570_telur, 'Telur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5571_telur_mentah, 'Telur Mentah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5572_telur_rebus, 'Telur Rebus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5573_ketat, 'Ketat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5573_ketat, 'Kasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5573_ketat, 'Berat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5574_sangat_dilarang, 'Sangat Dilarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5574_sangat_dilarang, 'Dilarang Keras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5574_sangat_dilarang, 'Larangan Ketat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5574_sangat_dilarang, 'Melarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5575_untuk_membuang, 'Untuk Membuang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5575_untuk_membuang, 'Untuk Meninggalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5576_untuk_masuk, 'Untuk Masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5576_untuk_masuk, 'Untuk Mendalami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5577_rahasia, 'Rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5577_rahasia, 'Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5578_pertemuan_rahasia, 'Pertemuan Rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5578_pertemuan_rahasia, 'Pertemuan Klandestin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5579_tip_off, 'Tip-Off', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5579_tip_off, 'Menginformasikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5579_tip_off, 'Mengadu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5580_rahasia, 'Rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5580_rahasia, 'Sebuah Rahasia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5581_penyelundupan, 'Penyelundupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5582_untuk_pewarna, 'Untuk Pewarna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5583_infeksi, 'Infeksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5583_infeksi, 'Penularan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5584_penyakit_menular, 'Penyakit Menular', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5585_menjadi_kotor, 'Menjadi Kotor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5585_menjadi_kotor, 'Menjadi Tercemar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5585_menjadi_kotor, 'Menjadi Kotor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5586_polusi, 'Polusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5587_air_kotor, 'Air Kotor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5587_air_kotor, 'Air Kotor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5587_air_kotor, 'Kotoran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5588_noda, 'Noda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5588_noda, 'Noda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5589_diinginkan, 'Diinginkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5589_diinginkan, 'Diinginkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5589_diinginkan, 'Ingin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5590_ingin, 'ingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5590_ingin, 'keinginan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5590_ingin, 'Keinginan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5591_keinginan_duniawi, 'Keinginan Duniawi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5592_nafsu_makan, 'Nafsu makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5593_hangat, 'Hangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5593_hangat, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5594_hangat, 'Hangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5594_hangat, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5594_hangat, 'Kehangatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5595_meja, 'Meja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5596_untuk_menyembunyikan, 'Untuk Menyembunyikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5596_untuk_menyembunyikan, 'Untuk Menjaga Rahasia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5597_sembelit, 'Sembelit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5599_alasan, 'Alasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5600_untuk_menerjemahkan, 'Untuk Menerjemahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5601_penterjemah, 'Penterjemah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5602_istilah_yang_diterjemahkan, 'Istilah yang Diterjemahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5603_menafsirkan, 'Menafsirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5603_menafsirkan, 'Interpretasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5604_terjemahan_bahasa_inggris, 'Terjemahan Bahasa Inggris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5605_terjemahan_jepang, 'Terjemahan Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5606_untuk_memperpanjang, 'Untuk Memperpanjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5606_untuk_memperpanjang, 'Untuk Memperluas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5608_membiarkan_sesuatu_bocor, 'Membiarkan Sesuatu Bocor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5608_membiarkan_sesuatu_bocor, 'Membocorkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5609_untuk_melampauinya, 'Untuk Melampauinya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5610_menjadi_bahagia, 'Menjadi Bahagia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5610_menjadi_bahagia, 'Agar Bersemangat Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5610_menjadi_bahagia, 'Menjadi gembira', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5708_sesuai, 'Sesuai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5708_sesuai, 'Untuk Mencocokkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7279_perawakan, 'Perawakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7279_perawakan, 'Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7484_membakar, 'Membakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7484_membakar, 'Melepuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7488_akan, 'Akan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7488_akan, 'Menginginkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7488_akan, 'Ambisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7606_menakutkan, 'Menakutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7606_menakutkan, 'Menakutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7606_menakutkan, 'Ngeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7606_menakutkan, 'Mengerikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7606_menakutkan, 'saya takut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7606_menakutkan, 'Saya Takut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7607_tinggi, 'Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7661_dekorasi, 'Dekorasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7661_dekorasi, 'Ornamen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7721_pamer, 'Pamer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7721_pamer, 'Sok aksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8721_bermain, 'Bermain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8721_bermain, 'Bermain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8721_bermain, 'Pertandingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8723_merasa_panas, 'Merasa Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8723_merasa_panas, 'Untuk menyiram', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8723_merasa_panas, 'Untuk Membakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8760_setelan_bisnis, 'Setelan Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8841_bau, 'Bau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8841_bau, 'Aroma', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8841_bau, 'Bau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8876_menjadi_basah, 'Menjadi Basah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8876_menjadi_basah, 'Menjadi Basah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8956_untuk_dijaga, 'Untuk Dijaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8956_untuk_dijaga, 'Untuk Merawat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8956_untuk_dijaga, 'Untuk Bertahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9458_untuk_menipu, 'Untuk Menipu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9458_untuk_menipu, 'Untuk Menipu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9474_saku_dada, 'Saku Dada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9474_saku_dada, 'Dada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9474_saku_dada, 'Saku Dalam', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2591_dahulu_kala, 'ひさしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3022_penyelidikan, 'きゅうめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5322_bendera_putih, 'しろはた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5343_untuk_mencuri, 'ぬすむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5474_koneksi_pribadi, 'じんみゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5505_upacara_pernikahan, 'けっこんしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5506_tombol_tekan, 'おしぼたん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5506_tombol_tekan, 'おしボタン', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5507_lemari, 'おしいれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5508_untuk_menerbitkan, 'しゅっぱんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5509_perusahaan_penerbitan, 'しゅっぱんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5510_orang_miskin, 'びんぼうにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5511_menjadi_dingin, 'ひえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5513_tidak_ada_foto, 'さつえいきんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5514_teriyaki, 'てりやき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5515_seseorang_kembali, 'せなか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5516_untuk_berlangganan, 'こうどくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5517_untuk_menjemput_seseorang, 'むかえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5518_keributan, 'おおさわぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5519_kata_pengantar, 'じょぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5520_urutan, 'じゅんじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5521_ambisi, 'こころざし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5522_akan, 'いし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5523_menginginkan, 'しぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5524_dermawan, 'おんじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5525_hadiah, 'おんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5526_untuk_berkumpul, 'とる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5527_menggunakan, 'さいよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5528_pemungutan_suara, 'さいけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5529_laba, 'さいさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5530_sakura, 'さくら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5531_ceri, 'さくらんぼ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5532_daging_kuda, 'さくらにく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5533_berwarna_merah_muda, 'さくらいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5534_selamanya, 'えいえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5535_selamanya, 'えいきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5536_cairan, 'えきたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5537_darah, 'けつえき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5538_mata, 'め', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5538_mata, 'まなこ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5539_bola_mata, 'がんきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5540_rabun_jauh, 'ろうがん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5541_leluhur, 'せんぞ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5542_kakek, 'そふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5543_nenek, 'そぼ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5544_pencapaian, 'こうせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5545_nilai, 'せいせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5546_minat, 'きょうみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5547_pertahanan_diri, 'じえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5548_kebersihan, 'えいせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5549_rumit, 'ふくざつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5550_satelit, 'えいせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5551_banyak, 'ふくすう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5552_penyalinan, 'ふくしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5553_kebisingan, 'ざつおん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5554_biaya_lain_lain, 'ざっぴ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5555_kecut, 'すっぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5556_perjanjian, 'さんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5557_oksigen, 'さんそ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5558_koin, 'ぜに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5559_pemandian_umum, 'せんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5560_untuk_memelihara_hewan_peliharaan, 'かう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5561_luka, 'きず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5563_patah_hati, 'しょうしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5564_orang_yang_terluka, 'しょうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5565_partai_demokrat_liberal, 'じみんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5566_partai_komunis, 'きょうさんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5567_partai_politik, 'せいとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5568_anggota_partai, 'とういん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5569_partai_sosialis, 'しゃかいとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5570_telur, 'たまご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5571_telur_mentah, 'なまたまご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5572_telur_rebus, 'ゆでたまご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5573_ketat, 'きびしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5574_sangat_dilarang, 'げんきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5575_untuk_membuang, 'すてる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5576_untuk_masuk, 'こむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5577_rahasia, 'ひそか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5578_pertemuan_rahasia, 'みっかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5579_tip_off, 'みっこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5580_rahasia, 'ひみつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5581_penyelundupan, 'みつゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5582_untuk_pewarna, 'そめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5583_infeksi, 'かんせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5584_penyakit_menular, 'でんせんびょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5585_menjadi_kotor, 'よごれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5585_menjadi_kotor, 'けがれる', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5586_polusi, 'おせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5587_air_kotor, 'おすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5588_noda, 'おてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5589_diinginkan, 'ほしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5590_ingin, 'よっきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5591_keinginan_duniawi, 'にくよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5592_nafsu_makan, 'しょくよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5593_hangat, 'あたたかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5593_hangat, 'あったかい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5594_hangat, 'おんだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5595_meja, 'つくえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5596_untuk_menyembunyikan, 'ひめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5597_sembelit, 'べんぴ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5599_alasan, 'わけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5600_untuk_menerjemahkan, 'やくす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5601_penterjemah, 'やくしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5602_istilah_yang_diterjemahkan, 'やくご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5603_menafsirkan, 'つうやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5604_terjemahan_bahasa_inggris, 'えいやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5605_terjemahan_jepang, 'わやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5606_untuk_memperpanjang, 'えんちょうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5608_membiarkan_sesuatu_bocor, 'もらす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5609_untuk_melampauinya, 'こす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5610_menjadi_bahagia, 'うかれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5708_sesuai, 'にあう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7279_perawakan, 'せたけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7484_membakar, 'やけど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7488_akan, 'いよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7606_menakutkan, 'こわい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7607_tinggi, 'せがたかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7661_dekorasi, 'かざり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7721_pamer, 'かざりけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8721_bermain, 'あそび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8723_merasa_panas, 'ほてる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8760_setelan_bisnis, 'せびろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8841_bau, 'におい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8876_menjadi_basah, 'ぬれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8956_untuk_dijaga, 'あずかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9458_untuk_menipu, 'だます', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9474_saku_dada, 'ふところ', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2591_dahulu_kala, '私がベーコンを食べなくなって久しい。', 'Sudah lama sekali saya tidak berhenti makan bacon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2591_dahulu_kala, '平和ボケして久しい日本人には、おそらく理解できないだろう。', 'Masyarakat Jepang sudah begitu lama menganggap remeh perdamaian sehingga mereka mungkin tidak dapat memahaminya lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2591_dahulu_kala, '彼が生の金魚を食べて死んでから久しい。', 'Dia makan ikan mas mentah dan sudah lama mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3022_penyelidikan, '自分の欠点を究明しました。', 'Saya menyelidiki kekurangan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3022_penyelidikan, '事故の原因を究明したいんです。', 'Saya ingin mengetahui penyebab kecelakaan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3022_penyelidikan, 'アルミ電池の弱点を究明した。', 'Saya menyelidiki kelemahan baterai aluminium.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5322_bendera_putih, '試験勉強が難しすぎて、白旗を上げそうだよ。', 'Persiapan ujiannya sangat sulit, saya hampir menyerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5322_bendera_putih, '白旗をふったところで、アイツらは我々を皆殺しにするつもりですよ。', 'Meskipun kami mengibarkan bendera putih, mereka mungkin akan menghabisi kami semua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5322_bendera_putih, 'いくらダイエット中でも、あの美味しそうなケーキを見たら、心の中で白旗を上げちゃったよね。', 'Meski sedang diet, ketika melihat kue yang tampak lezat itu, membuat hati saya mengibarkan bendera putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5322_bendera_putih, '白旗を上げるということは、敵に降伏するということだ。', 'Mengibarkan bendera putih berarti menyerah kepada musuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5343_untuk_mencuri, '猫が魚を盗むところを見てしまった。', 'Saya melihat kucing mencuri ikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5343_untuk_mencuri, 'それって他人の時間を盗んでるってことなんだよ！', 'Itu berarti Anda mencuri waktu orang lain!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5343_untuk_mencuri, '誰かのアイデアを盗むことは、悪いことなんでしょうか？', 'Apakah salah mencuri ide orang lain?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5343_untuk_mencuri, 'どうせならダイアモンド１カラット盗めば良かったのに、半カラットだけ盗むなんて中途半端だよね。', 'Jika mereka ingin mencuri berlian, mereka seharusnya mencuri satu karat penuh — mencuri setengah karat saja adalah tindakan setengah-setengah, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5474_koneksi_pribadi, 'まずはローカルの人脈を広げるとこから始めるつもりです。', 'Pertama, saya berencana memulai dengan memperluas jaringan kontak lokal saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5474_koneksi_pribadi, 'それから、人脈を活かして、何かビジネスをスタートしようと思ってます。', 'Lalu, saya mempertimbangkan untuk memulai bisnis dengan memanfaatkan jaringan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5474_koneksi_pribadi, '人脈作りは、ビジネスに関わる殆ど全ての人にとってとても重要なスキルですが、事業家にとっては殊更です。', 'Berjejaring adalah keterampilan yang sangat penting bagi sebagian besar pebisnis, namun hal ini terutama berlaku bagi wirausahawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5505_upacara_pernikahan, '「もう明日だけど、でも、やっぱり、私たちの結婚式を中止するべきだと思うの。」「僕もそれを言おうと思っていたんだ。」', '"Itu besok, tapi menurutku kita tetap harus membatalkan pernikahan kita." "Kau mengeluarkan kata-kata itu langsung dari mulutku."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5506_tombol_tekan, '押しボタン式のドアでも、自動ドアって呼ぶのかな。', 'Jika Anda harus menekan tombol untuk membuka pintu, apakah Anda masih bisa menyebutnya pintu otomatis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5507_lemari, '押入れの布団、良ければ使って下さいね。', 'Silakan gunakan futon di lemari jika Anda mau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5508_untuk_menerbitkan, '彼は有名な小説家だが、時々自費出版することもあるんだよ。', 'Meskipun ia seorang penulis fiksi terkenal, ia terkadang menerbitkan sendiri bukunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5509_perusahaan_penerbitan, 'その出版社では、入館の際に身分証明書を提示しなければなりません。', 'Anda harus menunjukkan kartu identitas Anda untuk masuk ke perusahaan penerbitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5510_orang_miskin, 'もやしは貧乏人の味方です。', 'Tauge adalah sahabat orang miskin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5510_orang_miskin, '貧乏人だからってハーゲンダッツのアイス食べちゃいけないんですか？', 'Jadi saya tidak diperbolehkan makan Häagen-Dazs hanya karena saya miskin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5510_orang_miskin, 'あんたが金持ちだろうが貧乏人だろうが、関係ないんだよ！', 'Tidak masalah apakah Anda kaya atau miskin!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5511_menjadi_dingin, '私は冷え性で、特に足がいつも冷えています。', 'Aku sensitif banget sama hawa dingin, apalagi kakiku yang selalu dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5513_tidak_ada_foto, 'この幼稚園では、子どもたちの発表会は撮影禁止です。', 'Di taman kanak-kanak ini, fotografi dan pembuatan film dilarang selama resital siswa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5514_teriyaki, '「コウイチ、忘れ物は無い？」「無いよ。」「あ、ちょっと待って。あんたのお弁当に照り焼きサーモン入れるの忘れてたわ。」「ええっ！母さん、早くしてよ。」', '"Apakah kamu punya segalanya, Koichi?" "Ya, Bu." "Oh, tunggu. Aku lupa memasukkan salmon teriyaki ke dalam kotak bentomu." "Apa! Cepat, Bu!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5515_seseorang_kembali, '背中のニキビを無くす方法が知りたいよ。', 'Saya ingin tahu cara menghilangkan jerawat di punggung saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5516_untuk_berlangganan, 'その雑誌は購読する価値がありますよ。', 'Ada baiknya berlangganan majalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5517_untuk_menjemput_seseorang, 'あ、もうこんな時間。子供を迎えに行かなくちゃ。', 'Oh, ini sudah terlambat. Aku harus pergi menjemput anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5517_untuk_menjemput_seseorang, '今日の番組は、自民党三役を迎えてお送りいたします。', 'Kami akan menjalankan pertunjukan hari ini dengan tiga pejabat tinggi LDP.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5517_untuk_menjemput_seseorang, 'うちに仔犬を迎えたいなと思ってるんですが、無駄吠え防止の訓練をしやすいのは何犬でしょうか。', 'Kami sedang mempertimbangkan untuk menerima anak anjing di rumah kami, tetapi jenis anak anjing manakah yang dapat dengan mudah dilatih untuk tidak menggonggong jika tidak perlu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5517_untuk_menjemput_seseorang, 'こうして、僕たち二人にとっての初めてのお付き合いは、静かに終わりを迎えた。', 'Maka, hubungan kami — yang pertama bagi kami berdua — berakhir secara diam-diam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5518_keributan, 'どこかの国で、ゴリラが逃げ出して大騒ぎになっていたことがあったよね。', 'Gorila yang melarikan diri menyebabkan keributan besar di suatu negara, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5519_kata_pengantar, '私はいつも本の序文は飛ばします。', 'Saya biasanya melewatkan kata pengantar buku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5520_urutan, 'ヤフオクで入札した後の手続きの順序についてブログでまとめてみました。', 'Setelah saya berhasil menawar di lelang Yahoo, saya menulis tentang urutan tata cara di blog saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5521_ambisi, '志の大きい子に育ってくれよ。', 'Saya harap Anda akan tumbuh dengan ambisi besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5521_ambisi, '志豊かに生きていこうと決心しました。', 'Saya telah memutuskan untuk menjalani kehidupan dengan ambisi yang kaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5521_ambisi, 'ビエトは高い志を持っており、どんどん夢を実現していってる。', 'Viet memiliki cita-cita yang tinggi dan terus mewujudkan mimpinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5522_akan, '自分が意志の弱い人間だってことは自覚してますよ。', 'Saya sadar bahwa saya adalah orang yang berkemauan lemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5523_menginginkan, 'この仕事を志望する動機は何ですか？', 'Apa motivasi Anda melamar pekerjaan ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5524_dermawan, 'コウイチは私の恩人です。私がベーコンに溺れていた時、助けてくれたんです。', 'Koichi adalah dermawanku. Dia menyelamatkanku saat aku kecanduan bacon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5525_hadiah, 'あのベーコン泥棒を捕まえた者には恩賞を与えよう。', 'Saya akan memberikan hadiah kepada orang yang bisa menangkap pencuri bacon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5525_hadiah, '功労に準じて恩賞が付与されるということを覚えておいてくださいね。', 'Harap diingat bahwa imbalan akan diberikan secara proporsional dengan pekerjaan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5525_hadiah, '後醍醐天皇による建武の新政は、公家にはたくさん恩賞が出たのに武士には少なかったため、武士からの評判が悪かった。', 'Restorasi Kenmu yang dilakukan Kaisar Godaigo mendapat reputasi buruk di kalangan samurai karena bangsawan istana mendapat imbalan yang jauh lebih besar daripada yang didapat samurai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5526_untuk_berkumpul, '僕のお父さんはカブト虫を採る名人です。', 'Ayahku pandai menangkap kumbang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5527_menggunakan, '教師はどの教科書を採用するかを迷っていた。', 'Guru kesulitan menentukan buku teks mana yang akan digunakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5527_menggunakan, 'あのチョコレートメーカーが「ちょっと待てチョコラテ！」という新しいスローガンを採用したそうです。', 'Rupanya pembuat coklat itu mengadopsi "Tunggu saja, coklat!" sebagai slogan barunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5527_menggunakan, 'よくあるように、その会社は女性は顔で採用するそうですよ。', 'Seperti yang sering terjadi, mereka mengatakan bahwa perusahaan hanya mempekerjakan perempuan yang menarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5528_pemungutan_suara, 'じゃあ、多数決で採決しよう。夕食にてっちり（ふぐ鍋）が食べたい人は？', 'Oke, mari kita lakukan pemungutan suara. Siapa yang mau Fugu-nabe untuk makan malam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5529_laba, 'もし別の惑星で金を見つけることができて、それを地球に持ち帰って販売した場合、採算は取れるのでしょうか。', 'Jika kita menemukan emas di planet lain, membawanya kembali ke Bumi dan menjualnya, apakah kita akan mendapat untung?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5530_sakura, '相手の気を引いたりうまく釣ったりする人のことを英語ではデコイと言うが、日本語では桜、ネット用語では釣りと言う。', 'Orang yang membujuk atau memikat orang lain disebut decoy dalam bahasa Inggris, sakura dalam bahasa Jepang, dan troll di internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5531_ceri, 'この桜んぼ、やばいくらい美味しいんだけど。', 'Ceri ini luar biasa enaknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5532_daging_kuda, 'お前も一緒に桜肉パーティーに来いよ。イカしたパーティーになるぜ。', 'Kamu harus ikut denganku ke pesta daging kuda. Ini akan menjadi keren.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5533_berwarna_merah_muda, '自分が二歳か三歳の頃に、一丁前に桜色のタキシードを着てる写真を見ました。', 'Saya melihat foto saya dengan tuksedo merah jambu lengkap ketika saya berumur dua atau tiga tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5534_selamanya, 'キッチンタイマーが鳴るのを待つのって、かなり永遠な感じがするよね。', 'Menunggu pengatur waktu dapur berbunyi rasanya lama sekali, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5534_selamanya, 'もう永遠に日本には帰ってこないの？', 'Apakah kamu tidak akan kembali ke Jepang lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5534_selamanya, 'ある魔女の魔法で、この国には永遠の冬がもたらされたんだけど、魔女はその鍋に永遠に封印されていてね。魔女を解き放たない限りは、四季は取り戻せないんだ。', 'Sihir seorang penyihir telah membawa musim dingin abadi ke negara ini, tapi dia telah disegel secara permanen di dalam pot itu. Kecuali kita melepaskan penyihirnya, kita tidak bisa mengembalikan empat musim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5535_selamanya, '脇毛を永久脱毛したから、今脇はツルツルだよ。', 'Saya telah menghilangkan bulu ketiak saya secara permanen, jadi ketiak saya sangat halus sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5536_cairan, '機内に持ち込み可能な液体の量はどれぐらいですか。', 'Berapa banyak cairan yang bisa saya bawa ke dalam pesawat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5537_darah, 'どうして血液は赤いのですか。', 'Mengapa darah berwarna merah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5538_mata, 'コンピュータを使う仕事は眼を酷使しやすい。', 'Menggunakan komputer untuk bekerja dapat membuat mata Anda terlalu lelah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5539_bola_mata, '私は自分の左の眼球をあちこち捜したが、なかなか見つけられなかった。', 'Aku mencari bola mata kiriku ke mana-mana, tapi aku tidak bisa menemukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5540_rabun_jauh, '老眼は大体いつ頃から始まるんですか。', 'Kapan rabun jauh terkait usia biasanya dimulai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5541_leluhur, 'うちの家族には、六世代に渡って先祖代々受け継がれてきた特別なおむつがあります。', 'Keluarga kami memiliki popok khusus yang diturunkan dari ayah ke anak selama enam generasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5542_kakek, '祖父は自家製の果実酒を作っている。', 'Kakek saya membuat minuman keras buah buatan sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5542_kakek, 'う〜ん、何て言ったらいいのかな。僕の祖父は単なる気分屋なんだよね。機嫌がいい時もあれば、悪い時もあるっていうか。だから、あんまり気にしないで。', 'Hmm, bagaimana aku mengatakannya? Kakek saya hanyalah seorang pria pemurung. Terkadang dia dalam suasana hati yang baik, terkadang dia dalam suasana hati yang buruk. Jadi jangan terlalu mengkhawatirkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5543_nenek, '私の祖母はいつも指にド派手な指輪を嵌めています。', 'Nenek saya selalu memakai perhiasan mencolok di jarinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5544_pencapaian, '成功が誰の功績かを判断するのは難しい。', 'Sulit untuk memutuskan siapa yang pantas mendapat pujian atas kesuksesannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5545_nilai, '家庭教師の先生のお陰で、成績がグンと上がりました。', 'Nilai saya menjadi jauh lebih baik berkat tutor pribadi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5546_minat, '俺はエロゲに全く興味が無いふりをしている。', 'Aku berpura-pura tidak tertarik dengan game hentai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5547_pertahanan_diri, '自衛のための殺人は合法なのでしょうか。', 'Apakah sah membunuh seseorang untuk membela diri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5548_kebersihan, 'その歯科衛生士は、お口を開けてください、と私に言いながらにやりと笑い、日焼けした顔に白い歯をキラリと見せた。', 'Saat ahli kesehatan gigi menyuruhku membuka mulut, aku melihat kilatan gigi putih dari wajahnya yang kecokelatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5549_rumit, '当時、家庭環境が複雑だったので、高校には行っていません。', 'Saya tidak melanjutkan ke sekolah menengah karena kehidupan keluarga saya rumit pada saat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5550_satelit, '落下する衛星を避けることは、不可能ではありません。', 'Bukan tidak mungkin menghindari satelit yang jatuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5551_banyak, '私には複数のニックネームとアカウントがあります。', 'Saya memiliki banyak nama panggilan dan akun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5552_penyalinan, '一枚目はお手元にお持ちください。私達は複写の方を頂きますね。', 'Anda boleh menyimpan yang asli, tapi kami akan mengambil salinannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5553_kebisingan, 'この音声ファイルの雑音を消したいんです。', 'Saya ingin menghilangkan statis dalam file suara ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5554_biaya_lain_lain, '日本の大学生の食費と雑費の平均はいくらぐらいですか。', 'Berapa rata-rata biaya makan dan biaya lain-lain mahasiswa Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5555_kecut, '最初に食べた食べ物は腐りかけていて酸っぱかったです。', 'Makanan pertama yang saya makan busuk dan asam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5556_perjanjian, '日本が新たな移民を受け入れることには賛成ですか。', 'Apakah Anda mendukung Jepang menerima imigran baru?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5557_oksigen, '毎日午後に有酸素運動をしています。', 'Saya melakukan latihan aerobik setiap sore.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5558_koin, '桜田さんは中川さんからいつも銭ゲバって言われています。', 'Nona Sakurada selalu diberitahu bahwa dia serakah akan uang oleh Tuan Nakagawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5558_koin, 'ビエトのやつ、いつもいいシノギを見つけてくるよな。ちょっと銭のかせぎ方を教えてもらいたいよ。', 'Orang Vietnam itu selalu menemukan cara bagus untuk menghasilkan uang. Saya ingin belajar cara menghasilkan beberapa dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5558_koin, '私は妻のために死ぬまで働いて銭を稼ぐだけの奴隷ですよ。', 'Aku hanya seorang budak yang akan bekerja sampai mati demi mencari uang untuk istriku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5559_pemandian_umum, '祖父の一日は、銭湯から始まります。', 'Kakek saya memulai harinya dengan pergi ke pemandian umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5560_untuk_memelihara_hewan_peliharaan, '何か爬虫類をペットに飼いたいな。', 'Saya ingin memelihara beberapa reptil sebagai hewan peliharaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5560_untuk_memelihara_hewan_peliharaan, 'ペットを飼うなら、ちゃんと責任を持ちなさい。たとえそれが、金魚でもね。', 'Jika Anda memelihara hewan peliharaan, bertanggung jawablah terhadapnya — meskipun itu hanya ikan mas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5561_luka, 'ウクレレに傷がついちゃったんです。', 'Aku mendapat goresan di ukuleleku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5561_luka, 'オレの名前によくも傷をつけてくれたな？！絶対に許さねえぞ！', 'Beraninya kamu merusak reputasiku? Aku tidak akan pernah memaafkanmu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5561_luka, '京都駅の階段で転んでできた傷は十年経った今もまだ治っていません。', 'Bekas luka akibat terjatuh di tangga Stasiun Kyoto masih belum sembuh setelah sepuluh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5563_patah_hati, '彼に振られて傷心気味なので、パリに傷心旅行に行くんです。', 'Dia mencampakkanku dan aku sedikit patah hati, jadi aku akan melakukan perjalanan ke Paris untuk melupakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5564_orang_yang_terluka, 'その事故による死者は三名、傷者は二百人以上にのぼるという。', 'Dikatakan ada tiga orang tewas dan lebih dari 200 orang terluka dalam kecelakaan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5565_partai_demokrat_liberal, '我らが自民党が今年は熱いな。もう誰も我々のことを「愚民党」なんて呼ぶことはないだろう。', 'Partai Demokrat Liberal kita sedang menjadi topik hangat tahun ini. Tidak ada lagi yang akan menyebut kami Partai Demokrat Gila.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5566_partai_komunis, '最初に気づいたのは、彼が共産党員だということでした。', 'Hal pertama yang saya perhatikan adalah dia adalah anggota Partai Komunis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5567_partai_politik, '日本での政党の成立要件を教えてください。', 'Bisakah Anda memberi tahu saya apa saja persyaratan untuk mendirikan partai politik di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5568_anggota_partai, 'ある共和党の党員の演説にとても感動しました。', 'Saya sangat tersentuh oleh pidato yang disampaikan oleh seorang anggota Partai Republik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5569_partai_sosialis, '社会党の主張は現実的ではないような気がする。', 'Pernyataan Partai Sosialis sepertinya tidak realistis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5570_telur, '私は卵を毎朝食べています。', 'Saya makan telur setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5570_telur, '今日は卵をゆでてサラダに入れました。', 'Hari ini, saya merebus telur dan memasukkannya ke dalam salad.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5570_telur, 'でも、まだ卵を割るのが苦手です。', 'Tapi aku masih buruk dalam memecahkan telur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5570_telur, '「卵がかえる前にひなを数えるな」ということわざは、日本語では「とらぬタヌキの皮算用をするな」です。', 'Pepatah “Jangan hitung ayammu sebelum menetas” adalah “Jangan hitung kulitmu sebelum kamu menangkap tanuki” dalam bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5571_telur_mentah, '「生卵アレルギーはありますか？」「私の知る限りではありません。」', '“Apakah kamu alergi telur mentah?” "Aku tidak mengetahuinya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5572_telur_rebus, '僕が君のゆで卵を盗んだと思っているのなら、とんだお門違いだよ。', 'Jika Anda mengira saya mencuri telur rebus Anda, Anda salah menggonggong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5573_ketat, 'インターネットでは厳しいコメントを書く人が多い。', 'Banyak orang menulis komentar kasar di internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5574_sangat_dilarang, '従業員同士の私語は厳禁です。', 'Percakapan pribadi dengan rekan kerja dilarang keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5575_untuk_membuang, '私の主人は、たとえ一日でも賞味期限が過ぎていたら捨てるんですよ。', 'Suamiku membuang makanan yang sudah melewati tanggal kesegarannya, padahal hanya satu hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5576_untuk_masuk, 'ここではプールに飛び込むのは禁止です。', 'Melompat ke kolam dilarang di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5576_untuk_masuk, '男は強盗を両手で押さえ込みました。', 'Pria itu menahan perampok itu dengan kedua tangannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5576_untuk_masuk, 'サトミはしばらく考え込んでいました。', 'Satomi melamun untuk beberapa saat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5577_rahasia, '僕たちは、お互いの家族にも知らせず、密かに入籍をしたんだ。', 'Kami memasuki daftar keluarga secara rahasia, bahkan tanpa memberi tahu seluruh keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5578_pertemuan_rahasia, '私達は密会によくこの部屋を利用しています。', 'Kami sering memanfaatkan ruangan ini untuk pertemuan rahasia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5579_tip_off, 'いつの時代でも、密告をすることで上司に取り入って、出世をねらう人間がいます。', 'Di setiap era, ada orang yang berusaha menjilat atasannya dan maju dengan mengadu pada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5579_tip_off, '密告者の証言で、事件の全容が明らかになった。', 'Kesaksian informan mengungkapkan keseluruhan cakupan kasus ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5579_tip_off, '戦時中には、ご近所同士の密告制度がありました。', 'Selama perang, ada sistem bagi tetangga untuk saling memberi informasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5579_tip_off, 'とある会社の脱税について、税務署に密告したいと思ってるんです。', 'Saya ingin memberi tahu kantor pajak tentang penggelapan pajak perusahaan tertentu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5580_rahasia, '秘密は誰にも言わないよ。ちゃんと、口にチャックしておくよ。', 'Rahasiamu aman bersamaku. Bibirku tertutup rapat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5581_penyelundupan, '俺は一度麻薬の密輸をする話を持ちかけられたことがあるよ。もちろん断ったけどね。', 'Saya pernah diminta menyelundupkan narkotika.  Tentu saja saya menolak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5582_untuk_pewarna, '髪を何色に染めるか迷っています。', 'Saya bertanya-tanya warna apa untuk mewarnai rambut saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5583_infeksi, '歯周病は感染症の一種だとは知りませんでした。', 'Saya tidak tahu kalau periodontitis itu salah satu jenis penyakit menular.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5584_penyakit_menular, '世界で一番危険な伝染病は何ですか。', 'Apa penyakit menular paling berbahaya di dunia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5585_menjadi_kotor, '汚れやすいので白いコントローラーはお勧めしません。', 'Saya tidak merekomendasikan pengontrol berwarna putih karena mudah kotor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5585_menjadi_kotor, '血で汚れたシーツや服は、すぐにオキシドールで洗えば綺麗になるよ。', 'Anda dapat menghilangkan noda darah dari linen dan pakaian dengan segera mencucinya menggunakan hidrogen peroksida.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5585_menjadi_kotor, '知らないの？汚れた天使は、もう天界にはいられないんだよ。', 'Tahukah kamu? Malaikat najis tidak bisa tinggal di alam surga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5586_polusi, '自国のPM2.5汚染レベルはどうすれば分かるのでしょうか。', 'Bagaimana saya bisa mengetahui tingkat kontaminasi PM2.5 di komunitas saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5587_air_kotor, '雪の日に汚水の配管が詰まってしまいました。', 'Pipa limbah tersumbat pada hari bersalju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5588_noda, '人生の汚点は日本語では黒歴史とも呼ばれる。', 'Aib dalam hidup disebut juga sejarah kelam dalam bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5589_diinginkan, '「欲しいものを買っていいよ。金額の制限は無しだよ。」「まあ！熱でもあるの？ 何かあったの？」', '“Kamu bisa membeli apapun yang kamu mau. Uang tidak ada batasnya.” "Wow! Apakah kamu demam? Ada apa denganmu?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5590_ingin, 'カップラーメンでは、私のラーメン欲求をみたすことは出来ません。', 'Saya tidak bisa memuaskan hasrat ramen saya dengan mie cup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5590_ingin, '人間にはプライドがあり、自分の価値を認められたいという欲求がある。', 'Manusia mempunyai kebanggaan dan keinginan untuk diakui nilainya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5590_ingin, '私の妻は、頻繁に欲求不満になります。', 'Istri saya terus-menerus frustrasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5591_keinginan_duniawi, 'どうしてキリスト教徒と仏教徒の中には、肉欲を罪深いものだとして否定する人がいるのですか。', 'Mengapa sebagian umat Kristiani dan Budha menyangkal keinginan daging mereka seolah-olah itu adalah sesuatu yang berdosa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5592_nafsu_makan, 'ダイエットをしたいんですが、食欲があり過ぎるんですよね。', 'Saya ingin diet, tapi nafsu makan saya terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5593_hangat, '今日はポカポカと暖かい一日だった。', 'Hari ini adalah hari yang hangat dan menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5594_hangat, '今年の冬は例年よりも寒くて雪も凄く降ったけど、本当に地球は温暖化してるのかね。', 'Musim dingin ini luar biasa dinginnya dan kita mengalami banyak sekali salju, jadi apakah bumi benar-benar menjadi lebih hangat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5595_meja, '「君の机の上に、コウイチの写真を置いておいたよ。」「ありがとう。恩に着るよ。」', '"Aku menaruh foto Koichi di mejamu." "Terima kasih. Aku berhutang budi padamu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5596_untuk_menyembunyikan, '彼は内に秘めるタイプなので、心配しています。', 'Aku mengkhawatirkannya karena dia cenderung menyembunyikan perasaannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5597_sembelit, '便秘がひどくてさぁ。もう一週間以上ウンコしていないんだよ！', 'Saya mengalami sembelit. Saya belum buang air besar dalam seminggu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5599_alasan, 'どうして便器の上で逆立ちをしようとしたのか訳を聞かせてください。', 'Bisakah Anda memberi tahu saya alasan mengapa Anda mencoba melakukan handstand di atas toilet?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5600_untuk_menerjemahkan, 'この単語を訳すのは難しい。', 'Kata ini sulit diterjemahkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5601_penterjemah, 'この本の訳者の名前、何て読むか知ってる？', 'Tahukah Anda cara membaca nama penerjemah buku ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5602_istilah_yang_diterjemahkan, '日本語の中には、良い英語の訳語が無い時がある。', 'Untuk beberapa kata dalam bahasa Jepang, tidak ada padanan bahasa Inggris yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5603_menafsirkan, 'もし私が全能の神だったら、この会話を通訳してあげることができるけど、そうじゃないから無理だわ。ごめんよ。', 'Jika saya mahakuasa, saya akan dapat menafsirkan percakapan ini untuk Anda, tetapi saya tidak, jadi saya tidak bisa. Maaf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5604_terjemahan_bahasa_inggris, '日本語から英訳することしかできません。', 'Yang bisa saya lakukan hanyalah menerjemahkan dari bahasa Jepang ke bahasa Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5605_terjemahan_jepang, 'いくつか小さな間違いはあるものの、うまく和訳できていると思いますよ。', 'Terlepas dari beberapa kesalahan kecil, menurut saya terjemahan bahasa Jepang Anda cukup bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5606_untuk_memperpanjang, 'ビザを延長するにはどこに行ったらいいのか知ってる？', 'Tahukah Anda ke mana saya harus pergi untuk memperpanjang visa saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5608_membiarkan_sesuatu_bocor, '大人でも、おしっこを漏らすことはありますよ。', 'Bahkan orang dewasa pun bisa mengalami kecelakaan dan mengompol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5608_membiarkan_sesuatu_bocor, 'この秘密は、絶対に漏らさないでくださいね！', 'Tolong jangan biarkan rahasia ini bocor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5608_membiarkan_sesuatu_bocor, '母は、後ろを向いた後、静かにため息を漏らした。', 'Ibuku berbalik dan diam-diam menghela nafas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5608_membiarkan_sesuatu_bocor, '誰かが情報を漏らしたんじゃない？', 'Saya ingin tahu apakah ada yang membocorkan informasinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5609_untuk_melampauinya, 'どうすればNBA選手のように身長が6.5フィートを越すのでしょうか。今、6フィートなのですが、6.5を越したいのです。', 'Bagaimana saya bisa lebih tinggi dari 6,5 kaki seperti pemain NBA? Tinggi saya sekarang 6 kaki dan saya ingin melampaui 6,5 kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5610_menjadi_bahagia, 'たくさんの人がオリンピックに浮かれすぎている。', 'Banyak orang terlalu terbawa oleh olimpiade.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5708_sesuai, 'コウイチにはコンタクトよりもメガネが似合います。', 'Kacamata lebih cocok untuk Koichi daripada lensa kontak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5708_sesuai, 'そのワンピには絶対デニムのジャケットが似合うと思うよ。', 'Menurutku jaket denim cocok dipadukan dengan gaun itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5708_sesuai, '残念ながら、自分の好きな色が必ずしも自分に似合うとは限らないのよね。', 'Sayangnya, tidak selalu warna favorit seseorang cocok untuknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7279_perawakan, '背丈の低い男が千鳥足でバーから出てきて、私の目の前でゲロを吐いたんです。', 'Seorang pria pendek terhuyung keluar dari bar dan muntah di depan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7484_membakar, 'カレーを零して、手に火傷を負った。', 'Saya menumpahkan kari dan tangan saya terbakar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7488_akan, '金メダル獲得に意欲をみせた。', 'Saya menunjukkan keinginan untuk memenangkan medali emas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7606_menakutkan, '俺の母親は世界で一番恐い。', 'Ibuku adalah yang paling menakutkan di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7607_tinggi, 'こんなに背が高いホビットは見たことがないよ。', 'Aku belum pernah melihat hobbit setinggi ini sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7661_dekorasi, 'そろそろ正月飾りの準備をしておかなくちゃ。', 'Sudah saatnya kita memulai persiapan dekorasi Tahun Baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7721_pamer, 'あいつは本当に飾り気のない女だ。', 'Dia wanita yang sangat polos.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8721_bermain, '最近学校で流行っている遊びを教えて下さい。', 'Tolong beritahu saya tentang permainan populer di sekolah saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8721_bermain, 'ピアノは遊びで始めたんですが、気づいたらプロになってました。', 'Saya mulai bermain piano hanya untuk bersenang-senang, tetapi sebelum saya menyadarinya, saya telah menjadi seorang profesional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8721_bermain, '彼は遊びに関しては天才で、いつも面白いことを思いつきます。', 'Dia jenius dalam hal bermain dan selalu memikirkan hal-hal menyenangkan untuk dilakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8721_bermain, '彼女の遊び心あふれるデザインは、多くの人に愛されています。', 'Desainnya yang lucu disukai banyak orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8721_bermain, 'あの浮気は、本気じゃなくてただの遊びだったんだ。本当だよ、信じてくれよ！', 'Perselingkuhan itu tidak serius; Saya hanya bermain-main. Sungguh, percayalah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8721_bermain, '子供が遊びで頭突きをしてきた。', 'Anak itu dengan bercanda menyundulku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8723_merasa_panas, '高熱で体が火照っています。', 'Badanku terasa panas karena demam tinggi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8760_setelan_bisnis, '背広のボタンをなくした。', 'Aku kehilangan satu kancing dari jasku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8760_setelan_bisnis, '背広はいつもクリーニングに出します。', 'Saya selalu mengirimkan jas saya ke petugas kebersihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8760_setelan_bisnis, '今日は重要な会議があるので、新しい背広を着ていきます。', 'Saya mengenakan setelan bisnis baru saya hari ini karena saya ada pertemuan penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8760_setelan_bisnis, '今度のお見合いのために新しく背広を新調しました。', 'Saya memiliki setelan bisnis baru yang dirancang untuk wawancara pernikahan formal mendatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8841_bau, '先輩、革ジャンの匂いは好きですか？', 'Apakah kamu suka bau jaket kulit, senpai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8841_bau, 'その温泉は、バナナの匂いがする。', 'Pemandian air panas itu berbau seperti pisang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8841_bau, 'このトイレは匂いが強すぎて、鼻で息をしたくない。', 'Bau kamar mandi ini sangat menyengat sehingga aku tidak ingin bernapas melalui hidung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8876_menjadi_basah, 'やれやれ。雨で尻尾まで濡れちゃったよ。', 'Ya ampun. Bahkan ekorku basah karena hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8876_menjadi_basah, '私のiPhoneはウォータープルーフだから、一緒にお風呂に入っても濡れないの。', 'IPhone saya tahan air, jadi tidak basah meski saya mandi dengannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8876_menjadi_basah, 'あなた、髪がまだ濡れているわよ。乾かしてから、寝なさい。', 'Rambutmu masih basah. Anda harus mengeringkannya sebelum tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8956_untuk_dijaga, '日曜日に妹の子供を預かることになった。', 'Sudah diputuskan aku akan menjaga anak adikku pada hari Minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8956_untuk_dijaga, '銀行の仕事はお金を預かるだけではありません。', 'Tugas bank tidak hanya mengurus uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8956_untuk_dijaga, '必要になった時のために預かっておいてほしい。', 'Aku ingin kamu menyimpan ini untukku kalau-kalau aku membutuhkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9458_untuk_menipu, '人を騙すのはよくないよ。', 'Tidak baik menipu orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9458_untuk_menipu, 'アイツの言葉に騙されるな！', 'Jangan tertipu oleh kata-katanya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9458_untuk_menipu, '騙すつもりはなかったんだ。', 'Saya tidak bermaksud menipu Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9458_untuk_menipu, '見た目に騙された。', 'Saya tertipu oleh penampilan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9474_saku_dada, '彼女はそっと手紙を懐に入れた。', 'Dia diam-diam menyelipkan surat itu ke saku dadanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9474_saku_dada, 'おかしいな、懐にしまった財布がないぞ。', 'Tunggu, itu aneh… Aku memasukkan dompetku ke dalam saku dada bagian dalam, tapi hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9474_saku_dada, 'あの人、人の懐に入るのが上手いんだよね。', 'Orang itu pandai dekat dengan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9474_saku_dada, 'そうは言っても、今月は懐具合が厳しいんですよ。', 'Meski begitu, uang agak terbatas bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9474_saku_dada, 'そのお金も彼の懐から出たんだよ。本当に懐が深い人だよね。', 'Uangnya juga keluar dari kantongnya sendiri. Dia benar-benar orang yang sangat murah hati, bukan?');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_496_lama_sekali, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_496_lama_sekali, id FROM items WHERE type = 'radical' AND (slug = '12' OR id = '12') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1480_kata_pengantar, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1480_kata_pengantar, id FROM items WHERE type = 'radical' AND (slug = '339' OR id = '339') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1481_selamat_datang, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1481_selamat_datang, r_340_bajak_laut_kucing);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1482_maksud, id FROM items WHERE type = 'radical' AND (slug = '97' OR id = '97') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1482_maksud, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1483_kebaikan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1483_kebaikan, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1483_kebaikan, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1484_mengumpulkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1484_mengumpulkan, id FROM items WHERE type = 'radical' AND (slug = '8772' OR id = '8772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1484_mengumpulkan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1485_sakura, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1485_sakura, id FROM items WHERE type = 'radical' AND (slug = '8783' OR id = '8783') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1485_sakura, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1486_keabadian, id FROM items WHERE type = 'radical' AND (slug = '8820' OR id = '8820') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1487_cairan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1487_cairan, id FROM items WHERE type = 'radical' AND (slug = '342' OR id = '342') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1488_bola_mata, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1488_bola_mata, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1489_leluhur, id FROM items WHERE type = 'radical' AND (slug = '80' OR id = '80') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1489_leluhur, id FROM items WHERE type = 'radical' AND (slug = '419' OR id = '419') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1490_pencapaian, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1490_pencapaian, id FROM items WHERE type = 'radical' AND (slug = '321' OR id = '321') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1491_minat, id FROM items WHERE type = 'radical' AND (slug = '8792' OR id = '8792') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1491_minat, r_341_sama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1491_minat, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1491_minat, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1492_pertahanan, id FROM items WHERE type = 'radical' AND (slug = '111' OR id = '111') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1492_pertahanan, id FROM items WHERE type = 'radical' AND (slug = '294' OR id = '294') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1493_duplikat, id FROM items WHERE type = 'radical' AND (slug = '9392' OR id = '9392') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1493_duplikat, id FROM items WHERE type = 'radical' AND (slug = '265' OR id = '265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1494_acak, id FROM items WHERE type = 'radical' AND (slug = '11' OR id = '11') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1494_acak, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1494_acak, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1495_setuju, id FROM items WHERE type = 'radical' AND (slug = '146' OR id = '146') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1495_setuju, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1496_asam, id FROM items WHERE type = 'radical' AND (slug = '182' OR id = '182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1496_asam, r_427_laba_laba);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1497_koin, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1497_koin, id FROM items WHERE type = 'radical' AND (slug = '8782' OR id = '8782') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1498_menjinakkan, id FROM items WHERE type = 'radical' AND (slug = '139' OR id = '139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1498_menjinakkan, id FROM items WHERE type = 'radical' AND (slug = '266' OR id = '266') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1499_luka, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1499_luka, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1499_luka, id FROM items WHERE type = 'radical' AND (slug = '172' OR id = '172') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1500_berpesta, id FROM items WHERE type = 'radical' AND (slug = '8769' OR id = '8769') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1500_berpesta, id FROM items WHERE type = 'radical' AND (slug = '191' OR id = '191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1501_telur, id FROM items WHERE type = 'radical' AND (slug = '236' OR id = '236') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1502_ketat, id FROM items WHERE type = 'radical' AND (slug = '8783' OR id = '8783') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1502_ketat, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1502_ketat, r_8799_peri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1502_ketat, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1503_membuang, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1503_membuang, r_433_pondok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1504_ke_dalam, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1504_ke_dalam, id FROM items WHERE type = 'radical' AND (slug = '12' OR id = '12') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1505_kerahasiaan, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1505_kerahasiaan, r_343_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1505_kerahasiaan, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1506_kotor, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1506_kotor, id FROM items WHERE type = 'radical' AND (slug = '7' OR id = '7') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1506_kotor, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1507_ingin, id FROM items WHERE type = 'radical' AND (slug = '249' OR id = '249') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1507_ingin, id FROM items WHERE type = 'radical' AND (slug = '142' OR id = '142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1508_hangat, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1508_hangat, id FROM items WHERE type = 'radical' AND (slug = '286' OR id = '286') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1509_meja, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1509_meja, id FROM items WHERE type = 'radical' AND (slug = '177' OR id = '177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1510_rahasia, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1510_rahasia, r_343_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1511_terjemahan, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1511_terjemahan, id FROM items WHERE type = 'radical' AND (slug = '215' OR id = '215') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1512_pewarna, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1512_pewarna, id FROM items WHERE type = 'radical' AND (slug = '11' OR id = '11') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1512_pewarna, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9448_tipu_daya, id FROM items WHERE type = 'radical' AND (slug = '165' OR id = '165') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9448_tipu_daya, id FROM items WHERE type = 'radical' AND (slug = '338' OR id = '338') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2591_dahulu_kala, k_496_lama_sekali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3022_penyelidikan, id FROM items WHERE type = 'kanji' AND (slug = '688' OR id = '688') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3022_penyelidikan, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5322_bendera_putih, id FROM items WHERE type = 'kanji' AND (slug = '491' OR id = '491') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5322_bendera_putih, id FROM items WHERE type = 'kanji' AND (slug = '1418' OR id = '1418') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5343_untuk_mencuri, id FROM items WHERE type = 'kanji' AND (slug = '1442' OR id = '1442') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5474_koneksi_pribadi, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5474_koneksi_pribadi, id FROM items WHERE type = 'kanji' AND (slug = '1468' OR id = '1468') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5505_upacara_pernikahan, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5505_upacara_pernikahan, id FROM items WHERE type = 'kanji' AND (slug = '1416' OR id = '1416') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5505_upacara_pernikahan, id FROM items WHERE type = 'kanji' AND (slug = '939' OR id = '939') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5506_tombol_tekan, id FROM items WHERE type = 'kanji' AND (slug = '1430' OR id = '1430') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5507_lemari, id FROM items WHERE type = 'kanji' AND (slug = '1430' OR id = '1430') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5507_lemari, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5508_untuk_menerbitkan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5508_untuk_menerbitkan, id FROM items WHERE type = 'kanji' AND (slug = '1421' OR id = '1421') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5509_perusahaan_penerbitan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5509_perusahaan_penerbitan, id FROM items WHERE type = 'kanji' AND (slug = '1421' OR id = '1421') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5509_perusahaan_penerbitan, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5510_orang_miskin, id FROM items WHERE type = 'kanji' AND (slug = '1422' OR id = '1422') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5510_orang_miskin, id FROM items WHERE type = 'kanji' AND (slug = '1423' OR id = '1423') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5510_orang_miskin, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5511_menjadi_dingin, id FROM items WHERE type = 'kanji' AND (slug = '1350' OR id = '1350') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5513_tidak_ada_foto, id FROM items WHERE type = 'kanji' AND (slug = '1441' OR id = '1441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5513_tidak_ada_foto, id FROM items WHERE type = 'kanji' AND (slug = '1251' OR id = '1251') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5513_tidak_ada_foto, id FROM items WHERE type = 'kanji' AND (slug = '1054' OR id = '1054') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5513_tidak_ada_foto, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5514_teriyaki, id FROM items WHERE type = 'kanji' AND (slug = '1419' OR id = '1419') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5514_teriyaki, id FROM items WHERE type = 'kanji' AND (slug = '1040' OR id = '1040') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5515_seseorang_kembali, id FROM items WHERE type = 'kanji' AND (slug = '1440' OR id = '1440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5515_seseorang_kembali, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5516_untuk_berlangganan, id FROM items WHERE type = 'kanji' AND (slug = '1436' OR id = '1436') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5516_untuk_berlangganan, id FROM items WHERE type = 'kanji' AND (slug = '765' OR id = '765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5517_untuk_menjemput_seseorang, k_1481_selamat_datang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5518_keributan, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5518_keributan, id FROM items WHERE type = 'kanji' AND (slug = '1439' OR id = '1439') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5519_kata_pengantar, k_1480_kata_pengantar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5519_kata_pengantar, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5520_urutan, id FROM items WHERE type = 'kanji' AND (slug = '1060' OR id = '1060') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5520_urutan, k_1480_kata_pengantar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5521_ambisi, k_1482_maksud);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5522_akan, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5522_akan, k_1482_maksud);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5523_menginginkan, k_1482_maksud);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5523_menginginkan, id FROM items WHERE type = 'kanji' AND (slug = '908' OR id = '908') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5524_dermawan, k_1483_kebaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5524_dermawan, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5525_hadiah, k_1483_kebaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5525_hadiah, id FROM items WHERE type = 'kanji' AND (slug = '884' OR id = '884') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5526_untuk_berkumpul, k_1484_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5527_menggunakan, k_1484_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5527_menggunakan, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5528_pemungutan_suara, k_1484_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5528_pemungutan_suara, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5529_laba, k_1484_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5529_laba, id FROM items WHERE type = 'kanji' AND (slug = '762' OR id = '762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5530_sakura, k_1485_sakura);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5531_ceri, k_1485_sakura);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5532_daging_kuda, k_1485_sakura);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5532_daging_kuda, id FROM items WHERE type = 'kanji' AND (slug = '577' OR id = '577') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5533_berwarna_merah_muda, k_1485_sakura);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5533_berwarna_merah_muda, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5534_selamanya, k_1486_keabadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5534_selamanya, id FROM items WHERE type = 'kanji' AND (slug = '963' OR id = '963') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5535_selamanya, k_1486_keabadian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5535_selamanya, k_496_lama_sekali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5536_cairan, k_1487_cairan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5536_cairan, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5537_darah, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5537_darah, k_1487_cairan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5538_mata, k_1488_bola_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5539_bola_mata, k_1488_bola_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5539_bola_mata, id FROM items WHERE type = 'kanji' AND (slug = '832' OR id = '832') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5540_rabun_jauh, id FROM items WHERE type = 'kanji' AND (slug = '781' OR id = '781') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5540_rabun_jauh, k_1488_bola_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5541_leluhur, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5541_leluhur, k_1489_leluhur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5542_kakek, k_1489_leluhur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5542_kakek, id FROM items WHERE type = 'kanji' AND (slug = '512' OR id = '512') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5543_nenek, k_1489_leluhur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5543_nenek, id FROM items WHERE type = 'kanji' AND (slug = '524' OR id = '524') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5544_pencapaian, id FROM items WHERE type = 'kanji' AND (slug = '806' OR id = '806') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5544_pencapaian, k_1490_pencapaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5545_nilai, id FROM items WHERE type = 'kanji' AND (slug = '780' OR id = '780') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5545_nilai, k_1490_pencapaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5546_minat, k_1491_minat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5546_minat, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5547_pertahanan_diri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5547_pertahanan_diri, k_1492_pertahanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5548_kebersihan, k_1492_pertahanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5548_kebersihan, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5549_rumit, k_1493_duplikat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5549_rumit, k_1494_acak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5550_satelit, k_1492_pertahanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5550_satelit, id FROM items WHERE type = 'kanji' AND (slug = '638' OR id = '638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5551_banyak, k_1493_duplikat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5551_banyak, id FROM items WHERE type = 'kanji' AND (slug = '703' OR id = '703') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5552_penyalinan, k_1493_duplikat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5552_penyalinan, id FROM items WHERE type = 'kanji' AND (slug = '531' OR id = '531') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5553_kebisingan, k_1494_acak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5553_kebisingan, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5554_biaya_lain_lain, k_1494_acak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5554_biaya_lain_lain, id FROM items WHERE type = 'kanji' AND (slug = '1165' OR id = '1165') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5555_kecut, k_1496_asam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5556_perjanjian, k_1495_setuju);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5556_perjanjian, id FROM items WHERE type = 'kanji' AND (slug = '780' OR id = '780') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5557_oksigen, k_1496_asam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5557_oksigen, id FROM items WHERE type = 'kanji' AND (slug = '1138' OR id = '1138') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5558_koin, k_1497_koin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5559_pemandian_umum, k_1497_koin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5559_pemandian_umum, id FROM items WHERE type = 'kanji' AND (slug = '844' OR id = '844') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5560_untuk_memelihara_hewan_peliharaan, k_1498_menjinakkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5561_luka, k_1499_luka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5563_patah_hati, k_1499_luka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5563_patah_hati, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5564_orang_yang_terluka, k_1499_luka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5564_orang_yang_terluka, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5565_partai_demokrat_liberal, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5565_partai_demokrat_liberal, id FROM items WHERE type = 'kanji' AND (slug = '650' OR id = '650') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5565_partai_demokrat_liberal, k_1500_berpesta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5566_partai_komunis, id FROM items WHERE type = 'kanji' AND (slug = '778' OR id = '778') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5566_partai_komunis, id FROM items WHERE type = 'kanji' AND (slug = '1109' OR id = '1109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5566_partai_komunis, k_1500_berpesta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5567_partai_politik, id FROM items WHERE type = 'kanji' AND (slug = '985' OR id = '985') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5567_partai_politik, k_1500_berpesta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5568_anggota_partai, k_1500_berpesta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5568_anggota_partai, id FROM items WHERE type = 'kanji' AND (slug = '821' OR id = '821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5569_partai_sosialis, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5569_partai_sosialis, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5569_partai_sosialis, k_1500_berpesta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5570_telur, k_1501_telur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5571_telur_mentah, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5571_telur_mentah, k_1501_telur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5572_telur_rebus, k_1501_telur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5573_ketat, k_1502_ketat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5574_sangat_dilarang, k_1502_ketat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5574_sangat_dilarang, id FROM items WHERE type = 'kanji' AND (slug = '1054' OR id = '1054') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5575_untuk_membuang, k_1503_membuang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5576_untuk_masuk, k_1504_ke_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5577_rahasia, k_1505_kerahasiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5578_pertemuan_rahasia, k_1505_kerahasiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5578_pertemuan_rahasia, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5579_tip_off, k_1505_kerahasiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5579_tip_off, id FROM items WHERE type = 'kanji' AND (slug = '1031' OR id = '1031') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5580_rahasia, k_1510_rahasia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5580_rahasia, k_1505_kerahasiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5581_penyelundupan, k_1505_kerahasiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5581_penyelundupan, id FROM items WHERE type = 'kanji' AND (slug = '1221' OR id = '1221') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5582_untuk_pewarna, k_1512_pewarna);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5583_infeksi, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5583_infeksi, k_1512_pewarna);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5584_penyakit_menular, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5584_penyakit_menular, k_1512_pewarna);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5584_penyakit_menular, id FROM items WHERE type = 'kanji' AND (slug = '773' OR id = '773') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5585_menjadi_kotor, k_1506_kotor);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5586_polusi, k_1506_kotor);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5586_polusi, k_1512_pewarna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5587_air_kotor, k_1506_kotor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5587_air_kotor, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5588_noda, k_1506_kotor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5588_noda, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5589_diinginkan, k_1507_ingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5590_ingin, k_1507_ingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5590_ingin, id FROM items WHERE type = 'kanji' AND (slug = '913' OR id = '913') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5591_keinginan_duniawi, id FROM items WHERE type = 'kanji' AND (slug = '577' OR id = '577') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5591_keinginan_duniawi, k_1507_ingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5592_nafsu_makan, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5592_nafsu_makan, k_1507_ingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5593_hangat, k_1508_hangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5594_hangat, id FROM items WHERE type = 'kanji' AND (slug = '842' OR id = '842') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5594_hangat, k_1508_hangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5595_meja, k_1509_meja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5596_untuk_menyembunyikan, k_1510_rahasia);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5597_sembelit, id FROM items WHERE type = 'kanji' AND (slug = '808' OR id = '808') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5597_sembelit, k_1510_rahasia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5599_alasan, k_1511_terjemahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5600_untuk_menerjemahkan, k_1511_terjemahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5601_penterjemah, k_1511_terjemahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5601_penterjemah, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5602_istilah_yang_diterjemahkan, k_1511_terjemahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5602_istilah_yang_diterjemahkan, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5603_menafsirkan, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5603_menafsirkan, k_1511_terjemahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5604_terjemahan_bahasa_inggris, id FROM items WHERE type = 'kanji' AND (slug = '953' OR id = '953') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5604_terjemahan_bahasa_inggris, k_1511_terjemahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5605_terjemahan_jepang, id FROM items WHERE type = 'kanji' AND (slug = '712' OR id = '712') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5605_terjemahan_jepang, k_1511_terjemahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5606_untuk_memperpanjang, id FROM items WHERE type = 'kanji' AND (slug = '1426' OR id = '1426') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5606_untuk_memperpanjang, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5608_membiarkan_sesuatu_bocor, id FROM items WHERE type = 'kanji' AND (slug = '1434' OR id = '1434') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5609_untuk_melampauinya, id FROM items WHERE type = 'kanji' AND (slug = '1437' OR id = '1437') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5610_menjadi_bahagia, id FROM items WHERE type = 'kanji' AND (slug = '1433' OR id = '1433') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5708_sesuai, id FROM items WHERE type = 'kanji' AND (slug = '1472' OR id = '1472') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5708_sesuai, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7279_perawakan, id FROM items WHERE type = 'kanji' AND (slug = '1440' OR id = '1440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7279_perawakan, id FROM items WHERE type = 'kanji' AND (slug = '2083' OR id = '2083') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7484_membakar, id FROM items WHERE type = 'kanji' AND (slug = '480' OR id = '480') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7484_membakar, k_1499_luka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7488_akan, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7488_akan, k_1507_ingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7606_menakutkan, id FROM items WHERE type = 'kanji' AND (slug = '1406' OR id = '1406') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7607_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '1440' OR id = '1440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7607_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7661_dekorasi, id FROM items WHERE type = 'kanji' AND (slug = '1438' OR id = '1438') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7721_pamer, id FROM items WHERE type = 'kanji' AND (slug = '1438' OR id = '1438') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7721_pamer, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8721_bermain, id FROM items WHERE type = 'kanji' AND (slug = '1417' OR id = '1417') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8723_merasa_panas, id FROM items WHERE type = 'kanji' AND (slug = '480' OR id = '480') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8723_merasa_panas, id FROM items WHERE type = 'kanji' AND (slug = '1419' OR id = '1419') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8760_setelan_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '1440' OR id = '1440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8760_setelan_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '523' OR id = '523') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8841_bau, id FROM items WHERE type = 'kanji' AND (slug = '8834' OR id = '8834') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8876_menjadi_basah, id FROM items WHERE type = 'kanji' AND (slug = '8863' OR id = '8863') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8956_untuk_dijaga, id FROM items WHERE type = 'kanji' AND (slug = '1425' OR id = '1425') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9458_untuk_menipu, k_9448_tipu_daya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9474_saku_dada, id FROM items WHERE type = 'kanji' AND (slug = '1429' OR id = '1429') LIMIT 1;

END $$;
