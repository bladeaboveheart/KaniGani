-- ====================================================
-- KaniGani — Seed Data Level 24 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 24) ============
  r_293_fajar UUID; r_294_korea UUID; r_295_tamu UUID; r_296_kontrol UUID; r_297_alam UUID; r_298_menerima UUID; r_329_garis_keturunan UUID; r_8790_bintang_kematian UUID;

  -- ============ KANJI IDs (Level 24) ============
  k_1144_hakim UUID; k_1191_standar UUID; k_1217_membawa UUID; k_1218_jumlah UUID; k_1219_pembuatan UUID; k_1220_berbeda UUID; k_1221_mengangkut UUID; k_1222_membakar UUID; k_1223_merayakan UUID; k_1224_mengantarkan UUID; k_1225_sempit UUID; k_1226_bahu UUID; k_1227_lengan UUID; k_1228_pinggang UUID; k_1229_menyentuh UUID; k_1230_tempatkan UUID; k_1231_lapisan UUID; k_1232_model UUID; k_1233_agen UUID; k_1234_lihat UUID; k_1235_perbedaan UUID; k_1236_pipa UUID; k_1238_kuantitas UUID; k_1239_batas UUID; k_1240_lingkaran UUID; k_1241_militer UUID; k_1242_kualitas UUID; k_1243_menyebutkan UUID; k_1244_menawarkan UUID; k_1245_memperluas UUID; k_1246_menjual UUID; k_1247_saham UUID; k_1317_perut UUID; k_1337_sepatu UUID; k_1415_garis_keturunan UUID;

  -- ============ VOCABULARY IDs (Level 24) ============
  v_3995_bangunan UUID; v_4346_benar_benar UUID; v_4421_penyelidikan UUID; v_4452_keputusan UUID; v_4499_untuk_menanggalkan_pakaian UUID; v_4549_harga_rendah UUID; v_4551_harga_tinggi UUID; v_4579_ekonomis UUID; v_4603_aturan UUID; v_4604_aturan UUID; v_4654_perbedaan UUID; v_4655_menjadi_berbeda UUID; v_4656_sampah_yang_dapat_dibakar UUID; v_4657_untuk_menjalankan_bisnis UUID; v_4658_tradisional UUID; v_4659_hari_ulang_tahun UUID; v_4660_untuk_tidur_berlebihan UUID; v_4661_waktu_lampau UUID; v_4662_terlalu_banyak UUID; v_4663_rencana_kontra UUID; v_4664_nilai_nilai UUID; v_4665_bagian_rooting UUID; v_4668_untuk_membawa UUID; v_4669_bertanggung_jawab UUID; v_4670_beban UUID; v_4671_setengah_harga UUID; v_4672_jumlah_besar UUID; v_4673_jumlah_tahunan UUID; v_4674_jumlah_bulanan UUID; v_4675_jumlah_tetap UUID; v_4676_jumlah_sisa UUID; v_4677_produk UUID; v_4678_manufaktur UUID; v_4679_kayu UUID; v_4680_buatan_jepang UUID; v_4681_dibuat_di_cina UUID; v_4682_buatan_as UUID; v_4683_buatan_sendiri UUID; v_4684_ekspor UUID; v_4685_transfusi_darah UUID; v_4686_sampah_yang_tidak_dapat_dibakar UUID; v_4687_untuk_merayakan UUID; v_4688_hari_libur_nasional UUID; v_4689_untuk_dikirim UUID; v_4690_sempit UUID; v_4691_bahu UUID; v_4692_lengan UUID; v_4693_jam_tangan UUID; v_4694_pinggang UUID; v_4695_untuk_menyentuh_sesuatu UUID; v_4696_antena UUID; v_4697_menyentuh UUID; v_4698_tercatat UUID; v_4699_catatan UUID; v_4700_untuk_ditempatkan UUID; v_4701_lebih_banyak_lagi UUID; v_4702_lapisan UUID; v_4703_model UUID; v_4704_khas UUID; v_4705_prototipe UUID; v_4706_gedung_pemerintahan_metropolitan UUID; v_4707_departemen_kepolisian_metropolitan UUID; v_4708_badan_kepolisian_nasional UUID; v_4709_kantor_pemerintah UUID; v_4710_untuk_mengabaikan UUID; v_4711_indra_penglihatan UUID; v_4712_rabun_jauh UUID; v_4713_rabun_jauh UUID; v_4714_untuk_bersinar UUID; v_4715_diskriminasi UUID; v_4716_persimpangan UUID; v_4717_perbedaan_waktu UUID; v_4718_pipa UUID; v_4719_pengelolaan UUID; v_4720_pembuluh_darah UUID; v_4722_target UUID; v_4723_gejala UUID; v_4724_cuaca UUID; v_4725_untuk_mengukur UUID; v_4726_kuantitas UUID; v_4727_jumlah_besar UUID; v_4728_kuantitas_tetap UUID; v_4729_batas UUID; v_4730_perbatasan_nasional UUID; v_4731_batas UUID; v_4732_lingkungan UUID; v_4733_senjata UUID; v_4734_seni_bela_diri UUID; v_4735_samurai UUID; v_4736_kualitas UUID; v_4737_pertanyaan UUID; v_4738_kualitas_bahan UUID; v_4739_kualitas_bagus UUID; v_4740_ciri UUID; v_4741_untuk_disebutkan UUID; v_4742_menulis UUID; v_4743_disebutkan_di_atas UUID; v_4751_menawarkan UUID; v_4752_untuk_membuat_persembahan UUID; v_4753_anak UUID; v_4754_pameran_dagang UUID; v_4755_untuk_berkembang UUID; v_4756_berlangsung UUID; v_4757_rahasia UUID; v_4758_penjualan UUID; v_4759_mesin_penjual_otomatis UUID; v_4760_pesanan_lewat_pos UUID; v_4761_saham UUID; v_4762_saham UUID; v_4861_bangun_terlambat UUID; v_4862_terbuka_untuk_bisnis UUID; v_4863_tempat_untuk_meletakkan_sesuatu UUID; v_4864_subyektif UUID; v_4865_untuk_membantu UUID; v_4866_untuk_melakukan_root_untuk UUID; v_4868_wakil_presiden UUID; v_4869_untuk_melamar UUID; v_4870_untuk_mendukung UUID; v_4871_turis UUID; v_4960_untuk_menusuk UUID; v_5008_efektif UUID; v_5098_sepatu UUID; v_5325_lebih_lebih_lagi UUID; v_5352_jenis UUID; v_5353_keturunan_jepang UUID; v_6235_untuk_membakar_sesuatu UUID; v_7599_total UUID; v_7652_lengan_kiri UUID; v_7653_bingkai_gambar UUID; v_7711_untuk_menunjuk UUID; v_7766_esensi UUID; v_8679_bahan_bakar UUID; v_8715_kedua_lengan UUID; v_8755_angkutan UUID; v_8808_label_harga UUID; v_8899_lengan_pendek UUID; v_8900_lengan_panjang UUID; v_9027_untuk_membangun_sesuatu UUID; v_9471_sakit_perut UUID; v_9472_perut_kosong UUID; v_9473_otak UUID;

BEGIN

  DELETE FROM items WHERE level = 24;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '旦', 'fajar', 24, 1, 'Matahari mulai terbit dari dalam tanah, menjadikan <radikal>fajar</radikal> yang radikal ini. Tentu saja, jangan bingung membedakannya dengan senja! Hal itu bisa dilakukan dengan berpikir bahwa matahari adalah sesuatu yang optimis dan cerah, sehingga cenderung terbit, bukan terbenam. (Juga, Jepang adalah Negeri Matahari Terbit. Maksudku, ayolah!)')
    RETURNING id INTO r_293_fajar;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '韋', 'korea', 24, 2, 'Ada lima mulut yang sedang memakan sapi di <radical>Korea</radical>n BBQ. Korea terkenal dengan BBQnya yang lezat, dan Anda membutuhkan banyak orang untuk memakan semua daging sapi tersebut. Setidaknya lima orang. (Paham? Lima orang!) Itu sebabnya yang radikal ini adalah Korea.')
    RETURNING id INTO r_294_korea;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '客', 'tamu', 24, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>tamu</radikal>.')
    RETURNING id INTO r_295_tamu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '制', 'kontrol', 24, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>kontrol</radikal>.')
    RETURNING id INTO r_296_kontrol;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '然', 'alam', 24, 5, 'Radikal ini sama dengan kanji. Artinya <radikal>alam</radikal>.')
    RETURNING id INTO r_297_alam;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '受', 'menerima', 24, 6, 'Radikal ini sama dengan kanji. Artinya <radikal>menerima</radikal>.')
    RETURNING id INTO r_298_menerima;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '系', 'garis-keturunan', 24, 7, 'Di bawah tanah ada benang. Ini menelusuri <radical>silsilah</radikal> Anda. Telusuri dari generasi ke generasi kerabat yang terkubur untuk mengetahui bahwa garis keturunan Anda mungkin melibatkan Jenghis Khan atau Charlemagne. Rasakan benang dan kotoran di tangan Anda saat Anda menelusuri garis keturunan Anda.')
    RETURNING id INTO r_329_garis_keturunan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/death-star.svg', 'bintang-kematian', 24, 8, 'Ada topi yang menutupi bulan dan memegang pisau. Tunggu, itu bukan bulan. Itu adalah stasiun luar angkasa! Itu adalah <radikal>Bintang Kematian</radikal>! Itu berpura-pura menjadi bulan di bawah topi itu. Dan itu bersenjata! Jangan biarkan Death Star menusuk planet Anda sampai mati.')
    RETURNING id INTO r_8790_bintang_kematian;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_293_fajar, 'Fajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_294_korea, 'Korea', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_295_tamu, 'Tamu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_296_kontrol, 'Kontrol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_297_alam, 'Alam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_298_menerima, 'Menerima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_329_garis_keturunan, 'Garis keturunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8790_bintang_kematian, 'Bintang Kematian', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '審', 'hakim', 24, 9, 'Anda akan memasuki <radical>atap</radikal> yang memiliki <radikal>nomor</radikal> Anda sehingga Anda dapat menghadapi <kanji>hakim</kanji>. Anda telah duduk di sini selama berjam-jam, menunggu nomor Anda muncul. Akhirnya waktunya telah tiba—hakim akan menemui Anda sekarang.', '<kanji>hakim</kanji> tidak senang dengan Anda. Dia menyuruhmu untuk mendekat dan ketika kamu melakukannya, dia mengambil palunya dan memukulmu di bagian <reading>tulang kering</reading> (しん). Aduh!')
    RETURNING id INTO k_1144_hakim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '規', 'standar', 24, 10, 'Setiap <radical>suami</radical> yang Anda <radical>lihat</radical> menetapkan <kanji>standar</kanji> baru. Tampaknya para suami menjadi semakin baik akhir-akhir ini, dan setiap kali Anda melihatnya, standarnya kembali meningkat.', 'Suami yang baik tahu bahwa <kanji>standar</kanji> yang tinggi adalah <membaca>kunci</reading> (き)… menuju hati kekasihnya dan pernikahan yang bahagia. Saat dia membiarkan standarnya merosot, dia tahu pernikahannya sedang dalam masalah. Mempertahankan standar yang tinggi jelas merupakan kuncinya.')
    RETURNING id INTO k_1191_standar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '担', 'membawa', 24, 11, 'Anda menggunakan <radical>jari</radical> Anda saat <radical>fajar</radical> untuk <kanji>membawa</kanji> banyak barang. Anda harus membawa diri Anda keluar dari tempat tidur. Anda harus membawa ransel atau tas atau tas laptop ke sekolah atau bekerja. Jari-jari Anda harus membawa banyak beban saat fajar.', 'Setelah kamu <kanji>membawa</kanji>semuanya, dan matahari fajar bersinar terang, kamu mulai <read>tan</reading> (たん). Terutama jari-jari yang Anda gunakan untuk membawa barang.')
    RETURNING id INTO k_1217_membawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '額', 'jumlah', 24, 12, 'Saat Anda kedatangan <radical>tamu</radical>, Anda memberi mereka <radical>geoduck</radical> karena nilainya <kanji>jumlah</kanji> yang sangat besar. Anda bukan siapa-siapa jika bukan tuan rumah yang ramah.

Anehnya, kanji ini juga bisa berarti <kanji>bingkai foto</kanji> atau <kanji>dahi</kanji>. Mengapa? Siapa tahu. Bayangkan saja pergi ke museum dan melihat geoduck dalam bingkai foto, dan menggaruk dahi karena bingung karena dianggap bernilai uang yang sangat besar. Seni modern, benarkah?', 'Geoduck yang Anda hadiahkan kepada tamu Anda bernilai <kanji>jumlah</kanji> yang sangat banyak hingga membuat mereka <reading>terkejut</reading> (がく). Semua orang ternganga saat melihat geoduck, sungguh — pertama melihat betapa anehnya tampilannya, dan kemudian melihat nilainya.')
    RETURNING id INTO k_1218_jumlah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '製', 'pembuatan', 24, 13, 'Dalam upaya untuk <radikal>mengendalikan</radikal> <radikal>pakaian</radikal> Anda, Anda <kanji>membuat</kanji> perangkat pengendali pikiran. Perangkat pengendali pikiran ini akan memungkinkan Anda mengendalikan pikiran tentang pakaian Anda dan semua yang mereka lakukan. Anda hanya perlu memproduksinya saja.', 'Anda <kanji>membuat</kanji> pakaian ini untuk mengontrol <reading>sa</reading>ber (せい) Anda. Sulit untuk memproduksinya, Anda harus melakukan banyak pekerjaan, tetapi Anda berhasil membuat pakaian Anda mengendalikan pedang Anda. Sekarang Anda tidak perlu bergantung pada tangan Anda!')
    RETURNING id INTO k_1219_pembuatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '違', 'berbeda', 24, 14, 'Anda membawa <radical>skuter</radical> Anda ke <radical>Korea</radical> dan semuanya <kanji>berbeda</kanji>!', 'Yang juga <kanji>berbeda</kanji> adalah ada seekor harimau aneh yang melompat-lompat di ekornya di samping Anda sambil berteriak bahwa namanya adalah <reading>Tigger</reading> (ちが). Anda tidak tahu Tigger tinggal di Korea akhir-akhir ini. Itu jelas berbeda.')
    RETURNING id INTO k_1220_berbeda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '輸', 'mengangkut', 24, 15, 'Apa persamaan <radical>mobil</radical> dan <radical>Death Star</radical>? Keduanya terbiasa <kanji>mengangkut</kanji> orang dan benda.', 'Saat ini kamu dan Death Star sedang <kanji>transportasi</kanji>sedang <reading>yu</reading>rts (ゆ). Mereka adalah rumah transportasi terbaik nomor 1 di alam semesta!')
    RETURNING id INTO k_1221_mengangkut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '燃', 'membakar', 24, 16, '<radical>Api</radical> di <radical>alam</radical> akan <kanji>membakar</kanji> semua yang dilewatinya. Di alam, tidak ada petugas pemadam kebakaran yang dapat memadamkan api, sehingga <kanji>kobaran api</kanji> akan menyala hingga tidak ada yang tersisa.', 'Hal terburuk apa yang bisa <kanji>terbakar</kanji> dalam api ini? Koleksi <reading>nen</reading>doroid (ねん) Anda. Anda telah menghabiskan banyak waktu dan uang untuk mengumpulkan semua nendoroid yang keren dan langka serta unik ini dan sekarang semuanya terbakar dalam api.')
    RETURNING id INTO k_1222_membakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '祝', 'merayakan', 24, 17, 'Jika <radical>spirit</radical> memberkati <radical>kakak</radical> Anda, inilah waktunya untuk <kanji>merayakan</kanji>! Ini bukanlah sesuatu yang terjadi setiap hari pada kakak laki-laki semua orang. Milik Anda sangat bagus dan sangat beruntung. Jadi rayakanlah bersamanya!', 'Sayangnya, kalian berdua <kanji>berpesta</kanji>terlalu banyak, dan kalian menjadi sedikit gila. Roh itu menangkap adikmu dan <read>mengguncang</reading> (しゅく) dia. Mengguncangnya begitu keras hingga kepalanya terlepas.')
    RETURNING id INTO k_1223_merayakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '届', 'mengantarkan', 24, 18, '<radical>bendera</radikal> Amerika adalah <radikal>alasan</radikal> Anda perlu <kanji>mengirimkan</kanji> paket ini. Benderanya ada di dalam paket, dan Anda harus mengirimkannya ke presiden. Dia kehilangan bendera lamanya, jadi sekarang terserah pada Anda untuk mengirimkan bendera baru ini kepadanya. Alasan apa lagi yang Anda perlukan?', 'Untuk <kanji>menyerahkan</kanji> bendera ini adalah sesuatu yang harus Anda <baca>lakukan</reading> (とど). Perlu dilakukan. Ingin melakukan. Tidak ada orang lain yang bisa melakukannya. Ini adalah sesuatu yang hanya Anda yang mampu melakukannya.')
    RETURNING id INTO k_1224_mengantarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '狭', 'sempit', 24, 19, 'Anda memiliki <radical>hewan</radikal> untuk <radikal>suami</radikal> dengan <radikal>tanduk</radikal> yang <kanji>sempit</kanji>. Suami binatangmu ini adalah seekor kambing. Seekor kambing dengan tanduk sempit. Mengapa hewan ini menjadi suamimu? Kamu aneh, itu sebabnya.', 'Aku bahkan tidak akan membahas <reading>sema</reading>ntics (せま) tentang cara kerja hubungan anehmu ini. Tidak, penjelasan bacaan ini lurus dan <kanji>sempit</kanji>. Perlu diketahui dasarnya. Rahasia. Semua sampah itu. Tidak akan ada diskusi semantik antara Anda dan pecinta kambing Anda.')
    RETURNING id INTO k_1225_sempit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肩', 'bahu', 24, 20, '<radikal>Pintu</radikal> menuju ke <radikal>bulan</radikal> dapat dirobohkan dengan <kanji>bahu</kanji> seseorang. Ini bukanlah pintu ke bulan yang sangat kokoh, jadi cukup mudah untuk menjatuhkan bahu Anda dan membukanya.', '"Wow, <kanji>bahu</kanji>mu seperti <reading>cata</reading>pult (かた) milikku!" kamu mendengar seseorang berteriak. Saat Anda berbelok, Anda tepat pada waktunya untuk melihat seorang pria terlempar melalui pintu bulannya sendiri!')
    RETURNING id INTO k_1226_bahu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '腕', 'lengan', 24, 21, '<radical>bulan</radical> bersinar di <radical>atap</radical> Anda di <radical>malam</radical> dan <radical>ular</radical> tiba-tiba muncul! Tunggu, itu bukan ular, itu <kanji>lengan</kanji>mu, yang mencuat dari bawah atap.', '<kanji>lengan</kanji> Anda terkena bulan dan bagian luar dan Anda merasa kedinginan. Dimana pakaianmu? Ah, kamu tidak<reading>ude, eh</reading> (うで)?! Menurutku, tidur telanjang adalah hal yang lumrah, ya?')
    RETURNING id INTO k_1227_lengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '腰', 'pinggang', 24, 22, 'Anda mendekati <radical>Bulan</radical> dengan <radical>helikopter</radical> dan melihat <radical>wanita</radical> di permukaan, menyentuh <kanji>pinggang</kanji>-nya. Dia berpose dengan satu tangan di pinggangnya, seolah dia adalah Sailor Moon atau semacamnya. Saya kira itu akan menjelaskan apa yang dia lakukan di Bulan!', 'Begitu kamu mendekat, kamu melihat <kanji>pinggangnya</kanji> terlihat aneh dan… bengkak? Anda menyadari dia memasukkan beberapa <read>子 shee</reading>p (こし) di bawah ikat pinggang roknya untuk melapisi pinggangnya dengan itu. Sepertinya di bulan ini dingin, jadi 子 domba menjaga pinggangnya tetap hangat. Dan mereka pastilah 子 domba, kalau tidak mereka tidak akan cukup kecil untuk dimasukkan ke dalam pakaiannya.')
    RETURNING id INTO k_1228_pinggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '触', 'menyentuh', 24, 23, 'Jika, pada <radical>sudut</radical> tertentu, Anda mendekati <radical>serangga</radical>, Anda akan dapat <kanji>menyentuh</kanji> tanpa disadarinya. Seringkali, serangga akan lari dari Anda saat Anda mencoba menyentuhnya, tetapi jika Anda melakukannya dari sudut yang tepat, serangga tersebut tidak akan mengetahuinya.', 'Uh oh, sepertinya serangga ini adalah serangga petir jadi ketika kamu <kanji>menyentuh</kanji> kamu akan mendapat <read>kejutan</reading> (しょく). Tahukah Anda bahwa serangga petir mengandung miliaran volt di dalamnya? Memang benar, dan jika Anda menyentuhnya, Anda akan terkejut. Sebuah kejutan yang sangat besar.')
    RETURNING id INTO k_1229_menyentuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '載', 'tempatkan', 24, 24, 'Anda memiliki <radical>silang</radikal> untuk <radikal>pemabuk</radikal> <radikal>mobil</radikal>, untuk <kanji>ditempatkan di</kanji> dasbornya. Pemabuk tidak boleh mengemudi, dan jika Anda <kanji>memakai</kanji> tanda silang, hal itu akan membuat mobil tidak dapat dihidupkan!', 'Anda memiliki banyak salib untuk <kanji>diletakkan di</kanji> mobil pemabuk, sehingga <reading>cy</reading>borg (さい) Anda melakukannya untuk Anda. Cyborg tidak membutuhkan tidur, sehingga dapat berpatroli di jalanan 24/7 demi keselamatan masyarakat. Benar-benar cyborg yang suci.')
    RETURNING id INTO k_1230_tempatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '層', 'lapisan', 24, 25, 'Di balik <radical>bendera</radikal> terdapat <radikal>topeng</radikal>—satu lagi <kanji>lapisan</kanji> kerahasiaan. Anda berdiri di depan orang banyak, memberikan pidato yang membangkitkan semangat. Menyembunyikan wajah Anda adalah bendera negara Anda, dan di balik bendera itu Anda juga memakai topeng, kalau-kalau benderanya jatuh. Lapisan kerahasiaan ekstra hanya untuk menjaga keamanan.', 'Seseorang melompat ke atas panggung dan mulai mengupas <kanji>lapisan</kanji> Anda! Anda berdiri di sana, mula-mula mengibarkan bendera, lalu topeng, lalu ... <reading>sou</reading>l (そう) Anda dibiarkan terbuka. Tidak, secara harfiah. Anda tidak memiliki tubuh, jiwa Anda berada di balik topeng itu. Dan sekarang ia mengambang di sana untuk dilihat semua orang.')
    RETURNING id INTO k_1231_lapisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '型', 'model', 24, 26, 'Ada <radical>lentera</radical> di atas <radical>pisau</radical> di <radical>tanah</radical>. Anda berjalan untuk mengambil pisau dan lentera ketika Anda menyadari itu hanyalah <kanji>model</kanji>. Semuanya tampak nyata dari jauh, tetapi sekarang setelah Anda melihatnya dari dekat, Anda tidak dapat melihat bahwa semua itu nyata.', 'Anda menyentuh <kanji>model</kanji> dan melihat bahwa itu terbuat dari <reading>ca</reading>ke (けい)! Seseorang yang sangat menyukai lentera dan pisau pasti diberi kue model ini sebagai hadiah ulang tahun! Meskipun mereka meninggalkannya di sini jadi mereka mungkin tidak menyukainya.')
    RETURNING id INTO k_1232_model;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '庁', 'agen', 24, 27, 'Ada orang-orang yang berada di bawah <radical>kanopi</radikal> di <radikal>jalan</radikal> yang membentuk <kanji>agensi</kanji> mereka sendiri. Mereka bersatu di sini, di jalan, membuat <kanji>kantor pemerintah</kanji> baru!', '<kanji>agensi</kanji> baru ini baru saja mulai membuat kemajuan ketika Anda mendengar suara gemuruh pelan... lalu pekikan.

"INI JALAN SAYA. TIDAK ADA AGEN BARU DI JALAN SAYA!" Nyonya <reading>Chou</reading> (ちょう) menangis sambil menyerang semua orang.')
    RETURNING id INTO k_1233_agen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '視', 'lihat', 24, 28, 'Jika Anda menggunakan <radikal>jiwa</radikal> Anda untuk <radikal>melihat</radikal> sesuatu, itu berarti Anda benar-benar <kanji>melihat</kanji> itu. Anda tidak hanya melihat sesuatu secara pasif dengan mata Anda, Anda sebenarnya melihatnya dengan segenap jiwa Anda.', 'Hal pertama yang ingin Anda <kanji>lihat</kanji> seperti ini adalah <reading>shee</reading>p (し). Anda telah melihat banyak domba, tetapi Anda belum pernah benar-benar melihatnya dari dekat, jadi gambaran Anda tentang mereka agak… berbulu.')
    RETURNING id INTO k_1234_lihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '差', 'perbedaan', 24, 29, 'Ketika <radical>domba</radical> mencoba kukunya pada <radical>konstruksi</radical>, ia memperoleh <kanji>kebedaan</kanji>. Itu adalah sesuatu yang benar-benar membedakan seekor domba! Lagi pula, pernahkah Anda melihat seekor domba bekerja di bidang konstruksi?', '<kanji>perbedaan</kanji> tambahan dari domba ini adalah ia sangat terampil menggunakan <membaca>gergaji</reading> (さ). Itu sebabnya ia sangat bagus dalam konstruksi.')
    RETURNING id INTO k_1235_perbedaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '管', 'pipa', 24, 30, 'Di <radical>bambu</radical> <radical>atap</radical> Anda ada <radical>beruang</radical>. Ia mencabut bambu tersebut karena ingin menggunakannya untuk membuat <kanji>pipa</kanji> yang panjang.', '<kanji>Pipa</kanji> akan diperuntukkan bagi Jenghis <reading>Khan</reading> (かん), yang menginginkan beberapa pipa untuk rumahnya.')
    RETURNING id INTO k_1236_pipa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '量', 'kuantitas', 24, 31, 'Saat <radical>fajar</radikal> mencapai <radical>desa</radikal> ini, <kanji>kuantitasnya</kanji> bertambah. Itu benar. Setiap pagi <kanji>jumlah</kanji> orang atau hewan yang hidup di sini bertambah setidaknya satu.', 'Fajar hari ini telah meningkatkan <kanji>kuantitas</kanji> perahu <reading>baris</reading>(りょう)! Aduh, bukankah mereka lucu? Lihatlah semua perahu dayung baru yang berbaris bersama. Mereka semua juga mempunyai dayung masing-masing.')
    RETURNING id INTO k_1238_kuantitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '境', 'batas', 24, 32, '<radical>kotoran</radikal> tempat Anda <radikal>berdiri</radikal> dan <radikal>melihat</radikal> adalah <kanji>batas</kanji>. Anda tidak ingin melewati batas, Anda hanya berdiri di sana dan melihatnya. Sebagai aturan umum, Anda dapat berdiri di tanah dan melihat melampaui batas, namun biasanya Anda tidak melewatinya.', '<kanji>Batas</kanji> yang Anda lihat sekarang adalah batas <reading>Kyo</reading>ke (きょう). Kyoto adalah salah satu tempat paling terkenal di Jepang, jadi bisa dibayangkan batasnya sangat jelas dan ditandai dengan berbagai macam tanda batas bertuliskan KYOTO.')
    RETURNING id INTO k_1239_batas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '環', 'lingkaran', 24, 33, '<radical>raja</radikal> menunjukkan kepada rakyatnya cara memasang <radikal>jaring</radikal> di sekitar <radikal>zombie</radikal> yang aneh dengan berjalan mengelilinginya dalam <kanji>lingkaran</kanji>. Ini adalah zombie yang aneh karena ia memiliki tanah di atas kepalanya, bukan tanah.', 'Raja juga menjelaskan bahwa teknik <kanji>lingkaran</kanji> ini digunakan oleh <reading>Khan</reading> (かん) Jenghis ketika dia menaklukkan kota. Dia akan mengelilingi seluruh tempat dengan jaring dan menjebak mereka.')
    RETURNING id INTO k_1240_lingkaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '武', 'militer', 24, 34, 'Di <radical>ground</radical> ada <radical>upacara</radical> di mana setiap orang terus <radical>berhenti</radical>ping. Upacara pemberhentian ini dilakukan oleh <kanji>militer</kanji>. Mereka akan berjalan ke satu arah, lalu berhenti dan berbalik, lalu berjalan ke arah lain, lalu berhenti lagi.', 'Anda melihat lebih dekat orang-orang di <kanji>militer</kanji> dan menyadari bahwa setiap kali mereka berhenti, mereka minum <reading>boo</reading>ze (ぶ)!')
    RETURNING id INTO k_1241_militer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '質', 'kualitas', 24, 35, 'Anda harus menggunakan dua <radical>kapak</radikal> untuk membuka <radikal>kerang</radikal> ini. Tampaknya ini berlebihan, tetapi ini perlu. Kerang khusus ini memiliki <kanji>kualitas</kanji> yang sangat tinggi sehingga tidak mudah dibuka.', 'Anda akhirnya membuka semua kerang dan mengagumi <kanji>kualitas</kanji> mereka, ketika <reading>shih tzu</reading> (しつ) Anda melompat ke atas meja dan melahapnya. TIDAK! Anda mencoba mengejar anjing kecil itu, tetapi sudah terlambat. Mereka sudah pergi.')
    RETURNING id INTO k_1242_kualitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '述', 'menyebutkan', 24, 36, 'Di <radical>skuter</radical> ini, ada <radical>malaikat</radical> dengan <radical>setetes</radical> keringat keluar, karena lupa <kanji>menyebutkan</kanji> sesuatu kepada Anda! Sepertinya itu sesuatu yang penting juga, karena mereka banyak berkeringat.', '"Aku lupa <kanji>menyebutkan</kanji>, kamu harus belajar nin<reading>jutsu</reading> (じゅつ)!" malaikat itu berteriak. Namun terlambat, ada ninja yang melompat keluar dari semak-semak di sekitarmu dan menyanderamu.')
    RETURNING id INTO k_1243_menyebutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '供', 'menawarkan', 24, 37, 'Ketika seorang <radical>pemimpin</radikal> ingin bekerja <radikal>bersama</radikal>, itu berarti mereka menginginkan apa yang Anda <kanji>tawarkan</kanji>. Selamat! Kini Anda dapat <kanji>menemani</kanji> mereka ke mana saja dan menawarkan mereka handuk panas dan air kemasan, atau apa pun yang Anda lakukan…', 'Setahun sekali, pemimpin akan <kanji>menawarkan</kanji> liburan di <reading>きょう</reading>と. Ini adalah perjalanan yang semua biayanya ditanggung! Syaratnya adalah Anda harus <kanji>menemani</kanji> pemimpin Anda ke きょうと…')
    RETURNING id INTO k_1244_menawarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '展', 'memperluas', 24, 38, 'Terdapat <radical>bendera</radikal> di bawah tabel <radikal>blackjack</radikal> yang dapat Anda <radikal>tendang</radikal> untuk <kanji>memperluas</kanji> tabelnya. Terkadang Anda hanya memiliki beberapa orang yang bermain blackjack sehingga Anda tidak perlu menendang bendera sama sekali, dan terkadang ada banyak orang yang bermain blackjack sehingga Anda perlu menendang bendera berkali-kali untuk memperbesarnya ke ukuran yang sesuai.', 'Meja blackjack memang memiliki batas berapa kali <kanji>berkembang</kanji>, dan batas itu adalah <reading>sepuluh</reading> (てん). Anda hanya dapat menendang bendera untuk membuat meja mengembang sepuluh kali lipat.')
    RETURNING id INTO k_1245_memperluas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '販', 'menjual', 24, 39, 'Keengganan yang tiba-tiba terhadap <radical>kerang</radikal> membuat Anda <radikal>anti</radikal>-kerang, jadi Anda <kanji>menjual</kanji> setiap kerang yang terlihat.', 'Anda akan <kanji>menjual</kanji> semua kerang kami ke <reading>Han</reading> (はん) Solo. Dia tidak anti kerang seperti Anda, dan dia juga tahu cara menghasilkan keuntungan!')
    RETURNING id INTO k_1246_menjual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '株', 'saham', 24, 40, 'Anda terjebak di <radical>pohon</radical> setelah menggunakan <radical>slide</radical> evakuasi untuk melompat keluar dari <radical>jet</radical> Anda — sebuah aksi yang Anda lakukan setelah mendengar <kanji>saham</kanji> dan <kanji>saham</kanji> Anda terjun di pasar.', '<kanji>saham</kanji> dan <kanji>saham</kanji> Anda anjlok hingga mungkin menjadi "<reading>KABOO</reading>M (かぶ)!" ketika mereka mencapai titik terendah.')
    RETURNING id INTO k_1247_saham;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '腹', 'perut', 24, 41, 'Di dalam <radical>bulan</radical> ini ada <radical>lubang hitam</radical>... haha ​​bercanda, itu <kanji>perut</kanji>mu! Itu indah dan bulat seperti bulan dan memakan semua yang Anda berikan seperti lubang hitam. <kanji>perut</kanji> yang bagus yang kamu punya!', 'Jika kamu tidak memperlakukan <kanji>perut</kanji>mu dengan hormat, ketika kamu melihatnya, dia akan berteriak, "<reading>F**k</reading> (ふく) you!" Wah, sepertinya ada yang <em>sakit</em> perutnya.')
    RETURNING id INTO k_1317_perut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '靴', 'sepatu', 24, 42, 'Ambil <radical>kulit</radical> Anda dan <radical>ganti</radical> menjadi sepasang <kanji>sepatu</kanji>. (Dulu, kebanyakan sepatu terbuat dari kulit.)', 'Kebanyakan <kanji>sepatu</kanji> sudah tidak terbuat dari kulit lagi, tapi tahukah Anda siapa yang masih memakai sepatu kulit? <reading>orang bodoh</reading> lama (くつ). Orang-orang bodoh itu sudah sangat tua sehingga semua sepatu yang mereka miliki saat tumbuh dewasa terbuat dari kulit, jadi mereka sekarang menolak untuk memakai apa pun. Orang tua yang gila.')
    RETURNING id INTO k_1337_sepatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '系', 'garis-keturunan', 24, 43, 'Radikal <radikal>silsilah</radikal> dan kanji <kanji>silsilah</kanji> adalah sama. Terkadang kanji ini juga bisa berarti <kanji>sistem</kanji>. Saya kira garis keturunan adalah sejenis sistem, jika Anda memikirkannya.', 'Anda menelusuri <kanji>silsilah</kanji> Anda kembali melalui seluruh <kanji>sistem</kanji> keluarga Anda dan menyadari bahwa setiap kerabat menyukai <reading>ca</reading>ke (けい). Kebanyakan dari mereka juga pembuat kue.')
    RETURNING id INTO k_1415_garis_keturunan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1144_hakim, 'Hakim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1191_standar, 'Standar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1217_membawa, 'Membawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1217_membawa, 'Beruang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1218_jumlah, 'Jumlah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1218_jumlah, 'Bingkai gambar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1218_jumlah, 'Dahi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1219_pembuatan, 'Pembuatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1220_berbeda, 'Berbeda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1221_mengangkut, 'Mengangkut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1222_membakar, 'Membakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1222_membakar, 'Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1223_merayakan, 'Merayakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1224_mengantarkan, 'Mengantarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1225_sempit, 'Sempit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1226_bahu, 'Bahu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1227_lengan, 'Lengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1228_pinggang, 'Pinggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1228_pinggang, 'Punggung Bawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1229_menyentuh, 'Menyentuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1230_tempatkan, 'Tempatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1230_tempatkan, 'Memakai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1231_lapisan, 'Lapisan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1232_model, 'Model', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1232_model, 'Jenis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1233_agen, 'Agen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1233_agen, 'Kantor Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1234_lihat, 'Lihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1235_perbedaan, 'Perbedaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1236_pipa, 'Pipa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1238_kuantitas, 'Kuantitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1238_kuantitas, 'Jumlah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1239_batas, 'Batas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1240_lingkaran, 'Lingkaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1241_militer, 'Militer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1242_kualitas, 'Kualitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1243_menyebutkan, 'Menyebutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1244_menawarkan, 'Menawarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1244_menawarkan, 'Menemani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1245_memperluas, 'Memperluas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1246_menjual, 'Menjual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1247_saham, 'Saham', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1247_saham, 'Membagikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1317_perut, 'Perut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1317_perut, 'Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1317_perut, 'Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1337_sepatu, 'Sepatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1415_garis_keturunan, 'Garis keturunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1415_garis_keturunan, 'Sistem', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1144_hakim, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1191_standar, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1217_membawa, 'たん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1217_membawa, 'にな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1217_membawa, 'かつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1218_jumlah, 'がく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1218_jumlah, 'ひたい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1219_pembuatan, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1220_berbeda, 'ちが', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1220_berbeda, 'い', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1221_mengangkut, 'ゆ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1222_membakar, 'ねん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1222_membakar, 'も', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1223_merayakan, 'しゅく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1223_merayakan, 'しゅう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1223_merayakan, 'いわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1224_mengantarkan, 'とど', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1225_sempit, 'せま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1225_sempit, 'せば', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1225_sempit, 'きょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1226_bahu, 'かた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1226_bahu, 'けん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1227_lengan, 'うで', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1227_lengan, 'わん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1228_pinggang, 'こし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1228_pinggang, 'よう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1229_menyentuh, 'しょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1229_menyentuh, 'さわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1229_menyentuh, 'ふ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1230_tempatkan, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1230_tempatkan, 'の', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1231_lapisan, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1232_model, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1232_model, 'かた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1233_agen, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1234_lihat, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1234_lihat, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1235_perbedaan, 'さ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1235_perbedaan, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1236_pipa, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1236_pipa, 'くだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1238_kuantitas, 'りょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1238_kuantitas, 'はか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1239_batas, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1239_batas, 'さかい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1240_lingkaran, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1241_militer, 'ぶ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1241_militer, 'む', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1241_militer, 'たけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1242_kualitas, 'しつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1242_kualitas, 'しち', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1243_menyebutkan, 'じゅつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1243_menyebutkan, 'の', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1244_menawarkan, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1244_menawarkan, 'とも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1244_menawarkan, 'そな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1245_memperluas, 'てん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1246_menjual, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1247_saham, 'かぶ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1247_saham, 'しゅ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1317_perut, 'ふく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1317_perut, 'はら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1337_sepatu, 'くつ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1415_garis_keturunan, 'けい', 'onyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '建物', 'bangunan', 24, 44, 'Ini adalah <kanji>membangun</kanji> <kanji>benda</kanji>, atau mungkin <kanji>membangun</kanji>ing <kanji>benda</kanji>. Dengan kata lain, sebuah <vocabulary>bangunan</vocabulary> atau <vocabulary>struktur</vocabulary>. 

建物 adalah kata yang sangat umum yang dapat merujuk pada segala jenis bangunan, termasuk bangunan tempat tinggal, bangunan komersial, atau fasilitas umum.', 'Pembacaannya mungkin terlihat sedikit aneh, tetapi masuk akal setelah Anda memahaminya. Anda sudah mengetahui bahwa kata kerja 建てる berarti "membangun", dan もの adalah "benda". Sekarang hilangkan saja bagian る dari kata kerja untuk menjadikannya kata benda, gabungkan dengan もの, dan kita mendapatkan <reading>たてもの</reading>! Ingatlah bahwa itu semua kun''yomi karena berasal dari kata kerja 建てる.', 'Bangunan, Struktur')
    RETURNING id INTO v_3995_bangunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '果たして', 'benar-benar', 24, 45, 'Anda berharap upaya Anda akan <kanji>membuahkan</kanji>, tapi… akankah <vocabulary>benar-benar</vocabulary>? Masih harus dilihat.

果たして adalah kata yang digunakan untuk mengungkapkan skeptisisme atau ketidakpastian tentang suatu hasil. Misalnya, Anda mungkin mendengar penyiar sepak bola berkata 果たしてゴールできるのか？(apakah mereka bisa mencetak gol?) saat seorang pemain berlari di lapangan, atau karakter anime berkata 果たしてそうなのかな？(Saya ingin tahu apakah itu benar-benar kasus?) ketika mereka meragukan sesuatu yang telah diberitahukan kepada mereka. Kedengarannya agak dramatis dan teatrikal, jadi Anda akan lebih sering melihatnya di media hiburan daripada percakapan biasa.

Dalam beberapa kasus, ini juga bisa berarti <kosa kata>seperti yang diharapkan</vocabulary>, seperti dalam 果たして失敗した (seperti yang diharapkan, mereka gagal), namun arti ini sebagian besar terbatas pada tulisan yang lebih tua atau cukup sastra.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Saat kamu tidak <vocabulary>benar-benar</vocabulary> memercayai seseorang, kamu berkata, "<reading>Hah</reading> (は)! Usaha yang bagus, tapi kamu tidak membodohi siapa pun." <vocabulary>Seperti yang diharapkan</vocabulary>, Anda mengetahui kebohongan mereka. Hah!', 'Benar-benar, Seperti yang Diharapkan, Seperti yang Saya Pikirkan')
    RETURNING id INTO v_4346_benar_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '審査', 'penyelidikan', 24, 46, 'Saya akan <kanji>menghakimi</kanji> dan <kanji>memeriksa</kanji> Anda. Ini adalah <vocabulary>ujian</vocabulary>, jadi kami akan melihat apakah Anda lulus.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penyelidikan, Inspeksi, Penyelidikan, Tinjauan')
    RETURNING id INTO v_4421_penyelidikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '審判', 'keputusan', 24, 47, 'Kata ini memiliki <kanji>judge</kanji> dan <kanji>judge</kanji> di dalamnya, jadi ada hubungannya dengan <vocabulary>judgment</vocabulary>. Biasanya digunakan dalam olahraga, jadi <vocabulary>wasit</vocabulary> atau <vocabulary>wasit</vocabulary>, bergantung pada olahraga pilihan Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah jika rendaku mengubah はん menjadi ぱん (seperti yang sering terjadi setelah ん).', 'Keputusan, Wasit, Wasit')
    RETURNING id INTO v_4452_keputusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脱ぐ', 'untuk-menanggalkan-pakaian', 24, 48, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menanggalkan pakaian</kanji> dan kata kerjanya adalah <vocabulary>to undress</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Saat Anda <vocabulary>menanggalkan pakaian</vocabulary>, tujuan Anda adalah menjadi <reading>nu</reading>de (ぬ).', 'Untuk menanggalkan pakaian, Untuk Melepas Pakaian')
    RETURNING id INTO v_4499_untuk_menanggalkan_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '安値', 'harga-rendah', 24, 49, 'Item <kanji>murah</kanji> <kanji>bernilai</kanji> hadir dengan <vocabulary>harga rendah</vocabulary>. Bagus sekali!', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya, tapi kamu sudah mengetahui keduanya sekarang, jadi kamu harus bisa membacanya juga!', 'Harga Rendah, Harga Murah')
    RETURNING id INTO v_4549_harga_rendah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高値', 'harga-tinggi', 24, 50, 'Nilai <kanji>tinggi</kanji> <kanji></kanji>. Jika Anda membayar untuk sesuatu yang bernilai tinggi, <vocabulary>harganya tinggi</vocabulary>.

Kata ini sering digunakan ketika sesuatu dijual dengan harga yang relatif tinggi. Seperti ketika suatu saham mencapai titik tertinggi, atau barang dijual dengan harga lebih tinggi dari harga rata-rata pasar, atau sesuatu bisa mendapatkan harga tinggi di lelang.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya, tapi kamu sudah mengetahui keduanya sekarang, jadi kamu harus bisa membacanya juga!', 'Harga Tinggi')
    RETURNING id INTO v_4551_harga_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '経済的', 'ekonomis', 24, 51, 'Anda tahu bahwa 経済 berarti "ekonomi", dan menambahkan 的 pada kata akan mengubahnya menjadi kata sifat. Apa versi kata sifat dari "ekonomi"? <vocabulary>Ekonomi</vocabulary> atau <vocabulary>financial</vocabulary>.

経済的 menggambarkan hal-hal yang berkaitan dengan uang dan ekonomi. Kata ini bisa mengacu pada perekonomian aktual, seperti 経済的問題 (masalah ekonomi), namun bisa juga digunakan pada tingkat pribadi, seperti 経済的に難しい (sulit secara finansial). Tergantung pada konteksnya, Anda juga akan melihatnya berarti "<vocabulary>ekonomis</vocabulary>" seperti hemat biaya, yang fokusnya adalah menghemat uang atau menggunakan sumber daya dengan bijak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 経済 juga akan membantu.', 'Ekonomis, Finansial, Ekonomis')
    RETURNING id INTO v_4579_ekonomis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '規則', 'aturan', 24, 52, '<kanji>standar</kanji> <kanji>aturan</kanji> hanyalah salah satu dari <vocabulary>aturan</vocabulary> atau <vocabulary>regulasi</vocabulary>. Tidak ada yang aneh dengan aturan ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Aturan, Peraturan')
    RETURNING id INTO v_4603_aturan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '規律', 'aturan', 24, 53, '<kanji>standar</kanji> <kanji>hukum</kanji> adalah <vocabulary>aturan</vocabulary> atau <vocabulary>hukum</vocabulary> yang harus Anda ikuti. Dengan hukum standar ini muncullah <vocabulary>disiplin</vocabulary>. Jika Anda tidak memilikinya maka akan terjadi kekacauan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Aturan, Hukum, Disiplin')
    RETURNING id INTO v_4604_aturan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '違い', 'perbedaan', 24, 54, 'Ini adalah kanji tunggal dengan い di akhir, yang berarti Anda mungkin mengira itu adalah kata sifat. Namun dalam kasus ini, itu adalah kata benda. Apa bentuk kata benda dari <kanji>berbeda</kanji>? Itulah <vocabulary>perbedaan</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Tidak berbeda sama sekali.', 'Perbedaan')
    RETURNING id INTO v_4654_perbedaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '違う', 'menjadi-berbeda', 24, 55, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>berbeda</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>menjadi berbeda</vocabulary>... dan tentu saja, menjadi berbeda juga <vocabulary>salah</vocabulary> di Jepang. Jangan berbeda!', 'Bacaannya sama dengan bacaan yang Anda pelajari dengan kanji. Itu tidak berbeda sama sekali.', 'Menjadi Berbeda, Menjadi Salah, Menjadi Salah, Untuk Bervariasi, Untuk Berbeda')
    RETURNING id INTO v_4655_menjadi_berbeda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '可燃ゴミ', 'sampah-yang-dapat-dibakar', 24, 56, '<kanji>Mungkin</kanji> untuk <kanji>membakar</kanji> ゴミ (sampah). Ini adalah <vocabulary>sampah yang dapat dibakar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sampah yang Dapat Dibakar, Sampah yang Dapat Dibakar, Sampah yang Dapat Dibakar')
    RETURNING id INTO v_4656_sampah_yang_dapat_dibakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '営業する', 'untuk-menjalankan-bisnis', 24, 57, 'Kata 営業 adalah <kanji>bisnis</kanji>. Versi kata kerja that (melakukan bisnis) menjadi <vocabulary>menjalankan bisnis</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Juga, ia berbagi bacaan dengan 営業.', 'Untuk Menjalankan Bisnis, Untuk Mengelola Bisnis')
    RETURNING id INTO v_4657_untuk_menjalankan_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伝統的', 'tradisional', 24, 58, 'Jika 伝統 adalah "tradisi", maka menambahkan 的 (<kanji>-al</kanji>) ke dalamnya akan menjadikannya <vocabulary>traditional</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tradisional')
    RETURNING id INTO v_4658_tradisional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誕生日', 'hari-ulang-tahun', 24, 59, 'Ingat bagaimana 誕生 adalah <kanji>kelahiran</kanji>? Jika Anda menambahkan <kanji>hari</kanji> di sana, Anda mempunyai <vocabulary>ulang tahun</vocabulary>. Selamat ulang tahun!', 'Ini adalah kata jukugo yang biasanya berarti pembacaan kanji on''yomi, namun dengan kata ini 日 menggunakan kun''yomi ひ yang diubah menjadi び karena rendaku.', 'Hari ulang tahun')
    RETURNING id INTO v_4659_hari_ulang_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寝坊する', 'untuk-tidur-berlebihan', 24, 60, '寝坊 adalah <kanji>tidur</kanji>. Jadikan itu menjadi kata kerja dan Anda harus <vocabulary>kesiangan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Itu juga hanya membutuhkan bacaan dari 寝坊.', 'Untuk tidur berlebihan')
    RETURNING id INTO v_4660_untuk_tidur_berlebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '過去形', 'waktu-lampau', 24, 61, '<kanji>masa lalu</kanji> <kanji>bentuk</kanji> adalah keadaan di masa lalu. Untuk mendeskripsikan hal-hal tersebut (seperti yang Anda lakukan dengan kata sifat, alias 形容詞), Anda akan menggunakan <vocabulary>past tense</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Waktu lampau')
    RETURNING id INTO v_4661_waktu_lampau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '過ぎ', 'terlalu-banyak', 24, 62, '過ぎる adalah <vocabulary>lulus</vocabulary>. Ketika Anda melewati apa yang dibutuhkan, apa yang tersisa? Hanya kata ini: <vocabulary>terlalu banyak</vocabulary>. Ini juga bisa berarti <vocabulary>after</vocabulary>, seperti dalam "after 5pm", dan <vocabulary>past</vocabulary>, seperti dalam " past six".', 'Bacaannya berasal dari 過ぎる. Ketahuilah hal itu dan Anda akan mengetahui <vocabulary>terlalu banyak</vocabulary>. Tekan ke bawah untuk mendapatkan 過ぎ.', 'Terlalu Banyak, Setelah, Masa lalu')
    RETURNING id INTO v_4662_terlalu_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対策', 'rencana-kontra', 24, 63, '<kanji>versus</kanji> <kanji>rencana</kanji> Anda adalah menyerang balik. Mereka sudah menyerang Anda sekali, jadi sekarang waktunya untuk <vocabulary>rencana balasan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rencana Kontra, Tindakan balasan')
    RETURNING id INTO v_4663_rencana_kontra;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '価値観', 'nilai-nilai', 24, 64, '<kanji>pandangan</kanji> yang memiliki <kanji>kelebihan</kanji> (価値) ini adalah <vocabulary>nilai</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nilai-nilai, Rasa Nilai, Nilai Moral')
    RETURNING id INTO v_4664_nilai_nilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '応援団', 'bagian-rooting', 24, 65, '<kanji>grup</kanji> yang <kanji>mendukung</kanji> Anda adalah <vocabulary>bagian rooting</vocabulary> atau <vocabulary> pasukan pendukung</vocabulary> Anda. Ayo ayo ayo kamu!

応援団 cenderung mengenakan seragam sekolah hitam dan mendukung tim mereka dengan nyanyian yang hidup dan penampilan yang energik. Mereka juga bisa memiliki pemandu sorak dengan pom-pom, tapi biasanya disebut saja チアリーダー.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. 応援 adalah kata yang pernah Anda lihat sebelumnya, jadi jika Anda mengetahuinya kata ini akan lebih mudah.', 'Bagian Rooting, Pasukan Penyemangat, Bagian Bersorak')
    RETURNING id INTO v_4665_bagian_rooting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '担ぐ', 'untuk-membawa', 24, 66, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membawa</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to carry</vocabulary>. Ini ada hubungannya dengan membawa sesuatu yang literal, tidak seperti 担う yang belum tentu literal (Anda akan mempelajarinya nanti). Dan dalam hal ini, Anda membawanya di bahu Anda. Anda dapat mengingat bahwa ini literal dari mnemonik pembacaan, yang mengharuskan Anda membawa kucing literal di bahu Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Kamu suka <vocabulary>membawa</vocabulary> barang, terutama <reading>kucing</reading> (かつ). Anda mengangkatnya ke bahu Anda dan membawanya keliling kota.', 'Untuk Membawa, Ke Bahu')
    RETURNING id INTO v_4668_untuk_membawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '担当', 'bertanggung-jawab', 24, 67, 'Anda <kanji>membawa</kanji> orang lain dan Anda selalu <kanji>benar</kanji>. Dengan sifat-sifat ini, Anda <vocabulary>bertanggung jawab</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bertanggung jawab')
    RETURNING id INTO v_4669_bertanggung_jawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '負担', 'beban', 24, 68, 'Anda <kanji>kalah</kanji>. Oleh karena itu, Anda harus <kanji>memikul</kanji> <vocabulary>beban</vocabulary> dan <vocabulary>tanggung jawab</vocabulary> ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Beban, Tanggung jawab')
    RETURNING id INTO v_4670_beban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '半額', 'setengah-harga', 24, 69, 'Penjualan <kanji>setengah</kanji> <kanji>jumlah</kanji> adalah saat barang <vocabulary>setengah harga</vocabulary>. Murah!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Setengah harga')
    RETURNING id INTO v_4671_setengah_harga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '多額', 'jumlah-besar', 24, 70, '<kanji>banyak</kanji> <kanji>jumlah</kanji> adalah <vocabulary>jumlah besar</vocabulary> atau <vocabulary>jumlah besar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jumlah Besar, Jumlah Besar')
    RETURNING id INTO v_4672_jumlah_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年額', 'jumlah-tahunan', 24, 71, '<kanji>tahun</kanji> <kanji>jumlah</kanji> adalah <vocabulary>jumlah tahunan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jumlah Tahunan, Jumlah Tahunan')
    RETURNING id INTO v_4673_jumlah_tahunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '月額', 'jumlah-bulanan', 24, 72, '<kanji>jumlah</kanji> <kanji>bulan</kanji> adalah <vocabulary>jumlah bulanan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jumlah Bulanan')
    RETURNING id INTO v_4674_jumlah_bulanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '定額', 'jumlah-tetap', 24, 73, '<kanji>menentukan</kanji>d <kanji>jumlah</kanji> adalah jumlah yang tetap, alias <vocabulary>jumlah tetap</vocabulary>, <vocabulary>jumlah tetap</vocabulary>, atau <vocabulary>tarif tetap</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jumlah Tetap, Jumlah Tetap, Tarif Tetap')
    RETURNING id INTO v_4675_jumlah_tetap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '残額', 'jumlah-sisa', 24, 74, '`<kanji>sisa</kanji> `<kanji>jumlah</kanji> adalah `<vocabulary>jumlah yang tersisa</vocabulary>, alias `<vocabulary>saldo</vocabulary>.

Misalnya, Anda akan melihat kata ini digunakan saat menampilkan saldo kartu prabayar atau uang elektronik, seperti kartu IC.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jumlah Sisa, Keseimbangan')
    RETURNING id INTO v_4676_jumlah_sisa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '製品', 'produk', 24, 75, '<kanji>Barang</kanji>manufaktur</kanji> adalah <vocabulary>barang manufaktur</vocabulary>. Apa yang akhirnya terjadi? Sebuah <vocabulary>produk</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Produk, Barang yang Diproduksi')
    RETURNING id INTO v_4677_produk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '製作', 'manufaktur', 24, 76, 'Tempat di mana Anda <kanji>memproduksi</kanji> dan <kanji>membuat</kanji> adalah tempat di mana <vocabulary>manufaktur</vocabulary> dan <vocabulary>produksi</vocabulary> dilakukan. Begitu banyak hal yang sedang dilakukan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Manufaktur, Produksi')
    RETURNING id INTO v_4678_manufaktur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '木製', 'kayu', 24, 77, '<kanji>Pohon</kanji> <kanji>barang produksi</kanji>adalah <vocabulary>kayu</vocabulary> / <vocabulary>terbuat dari kayu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kayu, Terbuat Dari Kayu, Terbuat Dari Kayu')
    RETURNING id INTO v_4679_kayu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日本製', 'buatan-jepang', 24, 78, 'Barang-barang yang <kanji>diproduksi</kanji>di <kanji>Jepang</kanji> (日本) adalah <kosakata>buatan Jepang</vocabulary>. Barang berkualitas bagus, itu saja.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika Anda sudah tahu cara membaca 日本.', 'Buatan Jepang')
    RETURNING id INTO v_4680_buatan_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中国製', 'dibuat-di-cina', 24, 79, 'Item <kanji>produksi</kanji> Tiongkok (中国) adalah <kosakata>buatan Tiongkok</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika Anda sudah mengetahui kata 中国.', 'Dibuat Di Cina')
    RETURNING id INTO v_4681_dibuat_di_cina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'アメリカ製', 'buatan-as', 24, 80, '<kanji>Amerika</kanji> <kanji>manufaktur</kanji>d adalah sesuatu yang <vocabulary>buatan AS</vocabulary> atau <vocabulary>buatan Amerika</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Buatan AS, Dibuat di Amerika')
    RETURNING id INTO v_4682_buatan_as;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自家製', 'buatan-sendiri', 24, 81, 'Oleh <kanji>sendiri</kanji> saya di <kanji>rumah</kanji> saya <kanji>membuat</kanji>membuat ini. Ini adalah <vocabulary>buatan sendiri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Buatan sendiri, Buatan Rumah, Dibuat Di Rumah')
    RETURNING id INTO v_4683_buatan_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '輸出', 'ekspor', 24, 82, 'Saat Anda <kanji>mengangkut</kanji> barang dan barang tersebut <kanji>keluar</kanji> dari negara Anda, Anda <vocabulary>mengekspor</vocabulary> barang tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ekspor')
    RETURNING id INTO v_4684_ekspor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '輸血', 'transfusi-darah', 24, 83, '<kanji>Transportasi</kanji> <kanji>darah</kanji>. Satu-satunya saat Anda melakukan ini adalah saat <vocabulary>transfusi darah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Transfusi Darah')
    RETURNING id INTO v_4685_transfusi_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不燃ゴミ', 'sampah-yang-tidak-dapat-dibakar', 24, 84, 'Ini adalah <kanji>tidak</kanji> <kanji>membakar</kanji>sampah yang bisa (ごみ). Perhatikan hal ini pada tanda-tanda saat Anda membuang barang. Anda ingin memasukkan hal-hal yang benar ke dalam <vocabulary>sampah yang tidak dapat terbakar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sampah yang Tidak Dapat Dibakar, Sampah yang Tidak Dapat Dibakar, Sampah yang Tidak Dapat Dibakar, Sampah yang Tidak Dapat Dibakar, Sampah yang Tidak Dapat Dibakar, Sampah yang Tidak Dapat Dibakar')
    RETURNING id INTO v_4686_sampah_yang_tidak_dapat_dibakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祝う', 'untuk-merayakan', 24, 85, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>merayakan</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to rayakan</vocabulary>. Saat Anda membakar kata ini, Anda harus 祝う!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Semua orang di sini <vocabulary>untuk merayakan</vocabulary>, dan yang bisa Anda katakan hanyalah "<reading>Eee, apa</reading>...!?" (いわ). Semua teman dan keluarga Anda datang untuk merayakan ulang tahun Anda, tetapi Anda tidak tahu. Masih bingung dan memproses keadaan, kamu terus berkata, "Eee...apa?" Kejutannya sukses total!', 'Untuk Merayakan')
    RETURNING id INTO v_4687_untuk_merayakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祝日', 'hari-libur-nasional', 24, 86, '<kanji>merayakan</kanji> <kanji>hari</kanji> adalah hari di mana Anda memulai untuk merayakan sesuatu yang luar biasa. Lebih khusus lagi, ini dikenal sebagai <vocabulary>hari libur nasional</vocabulary> atau <vocabulary>hari libur umum</vocabulary>.

祝日 mengacu pada hari libur yang diakui secara resmi ketika orang-orang berhenti sekolah atau (mudah-mudahan) bekerja. Di Jepang, hal-hal seperti Hari Tahun Baru, ulang tahun kaisar, dan liburan Golden Week, antara lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hari Libur Nasional, Hari Libur Nasional')
    RETURNING id INTO v_4688_hari_libur_nasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '届く', 'untuk-dikirim', 24, 87, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyampaikan</kanji> jadi versi vocab verbanya di sini adalah <vocabulary>to be delivery</vocabulary> atau <vocabulary>to tiba</vocabulary>. Kamu tahu yang ini "akan diantar" (alias baru saja diantar, kamu tidak melakukan pengantaran) karena saat barang ini sampai di rumahmu kamu bilang "<reading>coo''</reading>" (く), maka barangnya sudah sampai.', 'Bacaannya adalah yang Anda pelajari dengan kanji: とど!', 'Untuk Dikirim, Untuk Tiba, Untuk Mencapai')
    RETURNING id INTO v_4689_untuk_dikirim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狭い', 'sempit', 24, 88, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>sempit</kanji>? <vocabulary>sempit</vocabulary>.', 'Bacaannya sama dengan kanji, jadi silakan ke sini. Ini mungkin cara berpikir <vocabulary>sempit</vocabulary> tentang kanji ini, tapi ini akan sangat membantu Anda.', 'Sempit')
    RETURNING id INTO v_4690_sempit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肩', 'bahu', 24, 89, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Bahu')
    RETURNING id INTO v_4691_bahu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腕', 'lengan', 24, 90, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Lengan')
    RETURNING id INTO v_4692_lengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腕時計', 'jam-tangan', 24, 91, 'Ingat bagaimana 時計 adalah <kanji>jam tangan</kanji>? Sebuah <kanji>lengan</kanji> kini juga ada di sana, menjadikannya <vocabulary>jam tangan</vocabulary>.', 'Bacaannya adalah kata 腕 (bacaan yang sama seperti yang dipelajari dengan kanji) serta bacaan 時計. Jangan lupakan rendaku itu!', 'Jam tangan, Jam tangan')
    RETURNING id INTO v_4693_jam_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腰', 'pinggang', 24, 92, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

腰 mengacu pada area <vocabulary>pinggang</vocabulary> di sekitar bagian atas tulang pinggul — bagian yang menonjol saat Anda meletakkan tangan di pinggul. Ini juga mencakup bagian samping dan belakang, itulah sebabnya kata ini juga bisa berarti <vocabulary>punggung bawah</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Pinggang, Punggung Bawah')
    RETURNING id INTO v_4694_pinggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '触る', 'untuk-menyentuh-sesuatu', 24, 93, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyentuh</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>menyentuh sesuatu</vocabulary>.

触る digunakan ketika seseorang melakukan sentuhan. Ini tidak digunakan untuk menggambarkan objek yang saling bersentuhan.

Perhatikan bahwa 触る dapat digunakan dengan partikel に atau を, seperti 手に触る atau 手を触る (untuk menyentuh tangan). Menggunakan に hanya menandai lokasi yang Anda sentuh, sedangkan menggunakan を menyoroti tindakan Anda dalam menyentuh area atau objek tertentu. Jadi yang pertama bersifat intransitif dan yang terakhir bersifat transitif, meskipun ada beberapa perdebatan mengenai hal itu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Kamu hanya suka <vocabulary>menyentuh</vocabulary> hal-hal yang <reading>asam</reading> (さわ). Lemon, jeruk nipis, jeruk bali, apa saja. Ada sesuatu tentang hal-hal asam yang membuat Anda ingin menyentuhnya.', 'Untuk Menyentuh Sesuatu, Untuk Menyentuh')
    RETURNING id INTO v_4695_untuk_menyentuh_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '触角', 'antena', 24, 94, '<kanji>sudut</kanji> dari <kanji>sentuhan</kanji> penting dalam <vocabulary>antena</vocabulary>. Pikirkan tentang antena. Antena semut bergoyang dan bergerak ke berbagai sudut, menyentuh benda, untuk memahami dunia di sekitarnya. Bayangkan antena serangga kecil mereka menyentuh lengan Anda untuk mengetahui siapa Anda.

Perhatikan bahwa 触角 mengacu pada antena serangga, krustasea, dan artropoda tertentu lainnya, bukan antena TV atau radio.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. しょく menjadi しょっ.', 'Antena')
    RETURNING id INTO v_4696_antena;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感触', 'menyentuh', 24, 95, '<kanji>perasaan</kanji> Anda terhadap <kanji>sentuhan</kanji> adalah <vocabulary>indra sentuhan</vocabulary> Anda (atau sekadar <vocabulary>sentuhan</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menyentuh, Sentuhan Rasa, Merasa, Merasa')
    RETURNING id INTO v_4697_menyentuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '所載', 'tercatat', 24, 96, '<kanji>tempat</kanji> di mana informasi <kanji>dipakai</kanji> adalah tempat <vocabulary>direkam</vocabulary> atau <vocabulary>diterbitkan</vocabulary>.

所載 adalah istilah formal yang biasanya ditempatkan tepat setelah nama publikasi sebagai cara untuk mengutipnya, seperti ワニカニマガジン所載 (tercatat di Majalah WaniKani). Berhati-hatilah agar tidak bingung dengan kata-kata serupa — 所載 secara khusus memandu pembaca ke "lokasi" (所) yang tepat di mana konten direkam dalam teks.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tercatat, Diterbitkan')
    RETURNING id INTO v_4698_tercatat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '記載', 'catatan', 24, 97, 'Please <kanji>write down</kanji> and <kanji>put on</kanji> paper the facts, so we have a <vocabulary>record</vocabulary> of them.

記載 adalah kata yang relatif formal untuk tindakan mencatat, mendokumentasikan, atau mencatat informasi secara tertulis. Itu juga bisa merujuk pada informasi yang direkam itu sendiri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Catatan, Rekaman, Mendokumentasikan')
    RETURNING id INTO v_4699_catatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '載る', 'untuk-ditempatkan', 24, 98, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Ini juga merupakan kata kerja intransitif, artinya tindakan terjadi dengan sendirinya, Anda tidak melakukannya. Kanji itu sendiri berarti <kanji>diletakkan di</kanji>, dan ini berarti <vocabulary>diletakkan di</vocabulary>.

載る juga sering digunakan untuk merujuk pada sesuatu yang dimasukkan dalam dokumen tertulis atau publikasi dan juga bisa berarti <kosa kata>yang dicatat</vocabulary>, seperti dalam 新聞に載る (untuk dicatat di surat kabar) atau 教科書に載る (untuk dicatat dalam buku teks).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Seorang reporter meminta <vocabulary>percakapan Anda untuk dicatat</vocabulary>, dan Anda menjawab "<reading>TIDAK</reading> (の)!" Koichi tidak ingin semua orang tahu bahwa dia tidak menyadari ada kaktus yang diletakkan di kursinya sampai…', 'Untuk Ditempatkan, Untuk Direkam, Untuk Dimuat')
    RETURNING id INTO v_4700_untuk_ditempatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一層', 'lebih-banyak-lagi', 24, 99, '<kanji>Satu</kanji> <kanji>lapisan</kanji> lagi? Satu lapisan utuh? Ini pasti <vocabulary>jauh lebih</vocabulary> penting dari yang kita kira. Kalau begitu, mari kita berikan <vocabulary>lebih banyak</vocabulary> perhatian.

Kata ini sering kali ditulis dalam huruf kana, namun Anda juga akan melihatnya dalam huruf kanji.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. いち menjadi いっ.', 'Lebih Banyak Lagi, Semakin Banyak Lagi, Bahkan Lebih Banyak Lagi')
    RETURNING id INTO v_4701_lebih_banyak_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜層', 'lapisan', 24, 100, 'Ini adalah kata yang melekat pada hal lain yang menunjukkan <vocabulary>lapisan</vocabulary> sesuatu (atau hanya <vocabulary>layer</vocabulary>). Pada dasarnya memiliki arti yang sama dengan kanji asalnya, <kanji>lapisan</kanji>.', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji. Ini diperlakukan seperti bacaan jukugo karena biasanya melekat pada sesuatu.', 'Lapisan, Lapisan, Demografis')
    RETURNING id INTO v_4702_lapisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '型', 'model', 24, 101, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

<vocabulary>model</vocabulary> <reading>cata</reading>pult (かた) apa ini? Apakah itu tipe <vocabulary></vocabulary> trebuchet atau mangonel? Hanya satu model yang bisa membidik jendela mantan Anda dengan lintasan yang tepat. Model ketapel penting!', 'Model, Jenis, Cetakan, Pola')
    RETURNING id INTO v_4703_model;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '典型的', 'khas', 24, 102, 'Anda telah mengetahui bahwa 的 di akhir kata berarti “-al” atau “-like”. Jadi apa yang <kanji>aturan</kanji> <kanji>model</kanji> <kanji>-seperti</kanji>? Ini adalah model yang mengikuti semua aturan. Itu model yang normal. Itu <kosakata>khas</kosakata>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Khas, Stereotip, Prototipikal')
    RETURNING id INTO v_4704_khas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原型', 'prototipe', 24, 103, '<kanji>asli</kanji> <kanji>model</kanji> dari sesuatu biasanya tidak terlalu bagus. Itu kasar. Ini adalah <vocabulary>prototype</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Prototipe, Model')
    RETURNING id INTO v_4705_prototipe;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '都庁', 'gedung-pemerintahan-metropolitan', 24, 104, '<kanji>metropolis</kanji> <kanji>agensi</kanji> adalah pemerintah yang mengendalikan wilayah metropolitan. Kantor mereka berada di <vocabulary>gedung pemerintah metropolitan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gedung Pemerintahan Metropolitan, Kantor Pemerintah Metropolitan')
    RETURNING id INTO v_4706_gedung_pemerintahan_metropolitan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '警視庁', 'departemen-kepolisian-metropolitan', 24, 105, 'Mereka <kanji>memperingatkan</kanji> orang dan mereka <kanji>melihat</kanji> kejahatan, dan mereka bahkan memiliki <kanji>agensi</kanji>. Siapa itu? Itu <vocabulary>departemen kepolisian metropolitan</vocabulary> Tokyo. 

警 di sini sebenarnya adalah kependekan dari 警察 (polisi). Kata 警視 sendiri dulunya merujuk pada pejabat yang mengawasi operasi polisi, namun kini kata tersebut banyak digunakan dalam nama lembaga 警視庁. Pada dasarnya, ini adalah agensi besar yang mempekerjakan dan mengawasi seluruh kepolisian metropolitan Tokyo!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Departemen Kepolisian Metropolitan, Polda Metro')
    RETURNING id INTO v_4707_departemen_kepolisian_metropolitan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '警察庁', 'badan-kepolisian-nasional', 24, 106, 'Berbeda dengan 警視庁, yang melihat sesuatu, ini hanyalah <kanji>petugas polisi</kanji> (警察) <kanji>agensi</kanji>. Hanya badan kepolisian umum di seluruh negeri, menjadikan mereka bagian dari <vocabulary>Badan Kepolisian Nasional</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Badan Kepolisian Nasional')
    RETURNING id INTO v_4708_badan_kepolisian_nasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '官庁', 'kantor-pemerintah', 24, 107, '<kanji>pemerintah</kanji> <kanji>kantor pemerintah</kanji> adalah <vocabulary>kantor pemerintah</vocabulary>. Apakah saya menyebutkan pemerintah?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kantor Pemerintah, Otoritas Pemerintah, Instansi Pemerintah')
    RETURNING id INTO v_4709_kantor_pemerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無視する', 'untuk-mengabaikan', 24, 108, 'Saya akan <kanji>melihat</kanji> <kanji>tidak ada</kanji>. Saya akan <vocabulary>mengabaikan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Mengabaikan, Untuk Mengabaikan')
    RETURNING id INTO v_4710_untuk_mengabaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '視覚', 'indra-penglihatan', 24, 109, 'Anda <kanji>melihat</kanji> sesuatu dan <kanji>menghafal</kanji> melalui penglihatan Anda, menggunakan <vocabulary>indera penglihatan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Indra Penglihatan, Penglihatan')
    RETURNING id INTO v_4711_indra_penglihatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近視', 'rabun-jauh', 24, 110, 'Ketika Anda dapat <kanji>melihat</kanji> benda-benda yang <kanji>dekat</kanji> dengan jelas tetapi Anda tidak dapat melihat benda-benda jauh, Anda menderita <vocabulary>rabun jauh</vocabulary>, <vocabulary>rabun dekat</vocabulary>, atau <vocabulary>miopia</vocabulary>. Senang rasanya memeriksakan mata itu sesekali.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rabun jauh, Rabun jauh, Lamur')
    RETURNING id INTO v_4712_rabun_jauh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遠視', 'rabun-jauh', 24, 111, 'Ketika Anda dapat <kanji>melihat</kanji> <kanji>jauh</kanji>, namun tidak dapat melihat benda dekat, Anda menderita <vocabulary>rabun jauh</vocabulary>, <vocabulary>rabun jauh</vocabulary>, atau <vocabulary>hyperopia</vocabulary>.', 'Pembacaannya adalah pembacaan yang Anda pelajari dengan kanji, yang akan Anda ketahui jika bukan karena rabun jauh Anda (ambillah kacamata agar Anda dapat membaca pelajaran kami!).', 'Rabun jauh, Rabun jauh, Rabun dekat')
    RETURNING id INTO v_4713_rabun_jauh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '差す', 'untuk-bersinar', 24, 112, 'Kanjinya adalah <kanji>perbedaan</kanji>, dan versi kata kerjanya di sini berarti… sejuta hal. Mari kita fokus pada beberapa arti umum. Hal-hal yang memiliki perbedaan cenderung menonjol dari yang lain. Mereka cenderung <vocabulary>bersinar</vocabulary>, Anda tahu? Dan jika Anda membayangkan menyinari seberkas cahaya pada sesuatu, cahaya tersebut cenderung <vocabulary>memproyeksikan</vocabulary> atau <vocabulary>memanjang keluar</vocabulary>. Ia menonjol, menyinari sesuatu, lalu menjadikannya lebih jelas juga. 

Itu sebabnya kamu bisa mengucapkan 光が差す (cahaya bersinar), かげが差す (bayangan muncul), 指差す (menunjuk), atau bahkan カサを差す (membuka dan mengangkat payung). Pada dasarnya, 差す biasanya ada hubungannya dengan menyebabkan sesuatu <vocabulary>muncul</vocabulary>, baik dengan menyinari atau memproyeksikan ke luar.', 'Pembacaan kanji sebenarnya sama dengan pembacaan kata ini, sehingga memudahkan segalanya (on''yomi dan kun''yomi adalah さ).', 'Untuk Bersinar, Untuk Memproyeksikan, Untuk Memperluas Ke Luar, Untuk Muncul')
    RETURNING id INTO v_4714_untuk_bersinar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '差別', 'diskriminasi', 24, 113, 'Anda membuat <kanji>pembedaan</kanji> antara orang-orang dan berdasarkan itu Anda <kanji>memisahkan</kanji> orang-orang tersebut. Ini mengerikan! Mengapa begitu banyak <vocabulary>diskriminasi</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Diskriminasi')
    RETURNING id INTO v_4715_diskriminasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交差点', 'persimpangan', 24, 114, 'Anda <kanji>mencampur</kanji>, namun ada <kanji>perbedaan</kanji> mengenai tempat Anda mencampur pada <kanji>titik</kanji> ini. Dimana titik ini? Hal ini dapat ditemukan ketika dua jalan bersilangan, di sebuah <vocabulary>persimpangan</vocabulary>, yang juga dikenal sebagai <vocabulary>crossing</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Persimpangan')
    RETURNING id INTO v_4716_persimpangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時差', 'perbedaan-waktu', 24, 115, '<kanji>waktu</kanji> <kanji>perbedaan</kanji> adalah cara Anda membedakan zona waktu. Ini adalah <vocabulary>perbedaan waktu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perbedaan Waktu')
    RETURNING id INTO v_4717_perbedaan_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '管', 'pipa', 24, 116, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', '"Itu <reading>coo'' だ</reading>," Anda sering mengucapkannya saat menanggapi <vocabulary>pipe</vocabulary>. Anda belum pernah melihat pipa sebelumnya, sehingga sangat keren bagi Anda. Anda telah menggunakan kakus sepanjang hidup Anda, jadi pipanya cukup rapi.', 'Pipa, Tabung')
    RETURNING id INTO v_4718_pipa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '管理', 'pengelolaan', 24, 117, '<kanji>pipa</kanji> dari <kanji>alasan</kanji>. Bayangkan seseorang memegang pipa ini. Itu selalu mengarah pada keputusan yang benar karena itu adalah alasan. Mereka yang memiliki pipa ini, peringkatnya lebih tinggi dari Anda. Mereka adalah <vocabulary>manajemen</vocabulary>, dan dengan menggunakan alasan ini mereka dapat membuat keputusan manajemen yang baik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengelolaan, Administrasi')
    RETURNING id INTO v_4719_pengelolaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '血管', 'pembuluh-darah', 24, 118, '<kanji>pipa</kanji> yang menampung <kanji>darah</kanji> Anda adalah <vocabulary>pembuluh darah</vocabulary> Anda, atau <vocabulary>vena</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.けつ menjadi けっ.', 'Pembuluh darah, Pembuluh darah')
    RETURNING id INTO v_4720_pembuluh_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対象', 'target', 24, 119, '<kanji>versus</kanji> <kanji>fenomena</kanji> adalah apa yang akan Anda hadapi. Ini adalah <vocabulary>target</vocabulary> Anda karena Anda sedang menuju fenomena yang Anda lawan ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Target, Subjek')
    RETURNING id INTO v_4722_target;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '現象', 'gejala', 24, 120, '<kanji>saat ini</kanji> <kanji>fenomena</kanji> adalah <vocabulary>fenomena</vocabulary> baik itu di masa sekarang, di masa depan, atau di masa lalu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gejala')
    RETURNING id INTO v_4723_gejala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気象', 'cuaca', 24, 121, '<kanji>energi</kanji> <kanji>fenomena</kanji>. Saat itulah energi melakukan hal-hal di langit dan tidak ada yang memahaminya. Itulah <vocabulary>cuaca</vocabulary> untuk Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cuaca')
    RETURNING id INTO v_4724_cuaca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '量る', 'untuk-mengukur', 24, 122, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kuantitas</kanji>, tetapi Anda tidak berarti "kuantitas". Namun, untuk mengetahui kuantitasnya, Anda harus <vocabulary>mengukur</vocabulary> / <vocabulary>menimbang</vocabulary> berapa pun jumlah yang ingin Anda peroleh.', 'Anda perlu <vocabulary>untuk mengukur</vocabulary> kuantitas sesuatu, tetapi tidak memiliki skala atau apa pun. Untungnya, Anda adalah <read>hacker</reading> (はか) yang hebat dan dapat meretas timbangan hanya dengan menggunakan karet gelang dan kacang.', 'Untuk Mengukur, untuk menimbang')
    RETURNING id INTO v_4725_untuk_mengukur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '量', 'kuantitas', 24, 123, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Kuantitas, Jumlah')
    RETURNING id INTO v_4726_kuantitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大量', 'jumlah-besar', 24, 124, '<kanji>besar</kanji> <kanji>kuantitas</kanji> adalah <vocabulary>kuantitas besar</vocabulary>. Seperti <vocabulary>sejumlah besar</vocabulary> kata yang Anda pelajari di sini sekarang. <vocabulary>jumlah yang sangat besar</vocabulary>. Bagus sekali.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jumlah Besar, Jumlah besar, Jumlah Besar')
    RETURNING id INTO v_4727_jumlah_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '定量', 'kuantitas-tetap', 24, 125, '<kanji>menentukan</kanji>d <kanji>kuantitas</kanji> adalah <vocabulary>kuantitas tetap</vocabulary>.

定量 adalah kata formal yang biasa digunakan dalam konteks akademis, teknis, keuangan, dan bisnis untuk mendiskusikan penelitian, eksperimen, atau analisis data. Anda biasanya menemukannya sebagai 定量的 (kuantitatif) atau 定量化 (kuantifikasi).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kuantitas Tetap, Pengukuran, Jumlah Tetap, Tetapkan Kuantitas, Tetapkan Jumlah')
    RETURNING id INTO v_4728_kuantitas_tetap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '境', 'batas', 24, 126, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: Anda berjalan sampai ke batas. Anda berada di sana untuk mengambil sesuatu untuk disampaikan. Benda yang Anda selundupkan melintasi perbatasan adalah salmon <reading>sockeye</reading> (さかい). Anda membawanya melintasi batas dan menjualnya untuk mendapatkan keuntungan besar.', 'Batas')
    RETURNING id INTO v_4729_batas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国境', 'perbatasan-nasional', 24, 127, '<kanji>batas negara</kanji> <kanji>batas</kanji> adalah <vocabulary>perbatasan nasional</vocabulary> negara tersebut. Berhati-hatilah saat melintasinya jika Anda membawa pisang. Polisi perbatasan sepertinya benci jika Anda memberi tahu mereka bahwa Anda membawa pisang di celana, padahal mereka bertanya apakah Anda akan membawa buah-buahan kembali. Tidak tahu kenapa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.こく disingkat menjadi こっ kecil yang menyenangkan.', 'Perbatasan Nasional')
    RETURNING id INTO v_4730_perbatasan_nasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '境界', 'batas', 24, 128, '<kanji>Batas</kanji> memisahkan <kanji>dunia</kanji>. Ini adalah <vocabulary>batas</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Batas')
    RETURNING id INTO v_4731_batas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '環境', 'lingkungan', 24, 129, '<kanji>lingkaran</kanji> yang membentuk <kanji>batas</kanji> area ini berlaku di <vocabulary>lingkungan</vocabulary>, setidaknya yang satu ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lingkungan')
    RETURNING id INTO v_4732_lingkungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '武器', 'senjata', 24, 130, 'Sebuah <kanji>wadah</kanji> yang digunakan oleh <kanji>militer</kanji> mungkin akan digunakan sebagai <vocabulary>senjata</vocabulary>. Lagi pula, itulah yang dilakukan militer... senjata.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Senjata')
    RETURNING id INTO v_4733_senjata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '武道', 'seni-bela-diri', 24, 131, 'Jika Anda mengambil <kanji>jalan</kanji> <kanji>militer</kanji> Anda harus banyak berjuang. Dulu, hal ini melibatkan pembelajaran <vocabulary>seni bela diri</vocabulary> untuk bertarung. Ingat, waxing saja.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seni Bela Diri')
    RETURNING id INTO v_4734_seni_bela_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '武士', 'samurai', 24, 132, '<kanji>militer</kanji> <kanji>samurai</kanji> adalah <vocabulary>samurai</vocabulary>. Ini adalah bagaimana kebanyakan orang mengatakan "samurai" dalam bahasa Jepang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Samurai')
    RETURNING id INTO v_4735_samurai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '質', 'kualitas', 24, 133, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Membacanya sama dengan yang Anda pelajari dengan kanji.', 'Kualitas')
    RETURNING id INTO v_4736_kualitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '質問', 'pertanyaan', 24, 134, '<kanji>kualitas</kanji> <kanji>masalah</kanji> bernilai <vocabulary>pertanyaan</vocabulary>. Namun masalah kualitas rendah... jangan ajukan pertanyaan. Lagipula, ada pertanyaan-pertanyaan bodoh.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pertanyaan')
    RETURNING id INTO v_4737_pertanyaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '品質', 'kualitas-bahan', 24, 135, '<kanji>kualitas</kanji> suatu <kanji>produk</kanji> terletak pada <vocabulary>kualitas material</vocabulary>-nya. Jika bahannya tidak bagus maka produknya juga tidak bagus.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kualitas Bahan, Kualitas Barang, Kualitas Produk, Kualitas')
    RETURNING id INTO v_4738_kualitas_bahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '良質', 'kualitas-bagus', 24, 136, '<kanji>Bagus</kanji> <kanji>kualitas</kanji> selalu <vocabulary>kualitas baik</vocabulary>. Jangan berhemat!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kualitas Bagus, Kualitas Tinggi, Kualitas Unggul')
    RETURNING id INTO v_4739_kualitas_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '特質', 'ciri', 24, 137, '<kanji>khusus</kanji> <kanji>kualitas</kanji> Anda adalah <vocabulary>karakteristik</vocabulary> atau <vocabulary>sifat</vocabulary> Anda.

Ini adalah kata formal yang mengacu pada sifat khusus yang hanya dimiliki oleh benda tertentu, seperti sifat baja sebagai suatu material, atau sifat seseorang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ciri, Sifat')
    RETURNING id INTO v_4740_ciri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '述べる', 'untuk-disebutkan', 24, 138, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyebutkan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to mention</vocabulary>.

Ini adalah kata formal yang sering digunakan dalam tulisan.', 'Saya punya <vocabulary>untuk menyebutkan</vocabulary> hal ini... "<reading>TIDAK</reading>," (の) Anda dengan cepat merespons. Saya tidak ingin Anda menyebutkan hal itu di sini dan saat ini.', 'Untuk Disebutkan, Untuk menyatakan, Untuk Menjelaskan')
    RETURNING id INTO v_4741_untuk_disebutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '記述', 'menulis', 24, 139, 'Saat Anda <kanji>Menulis</kanji> dan <kanji>menyebutkan</kanji> apa yang terjadi, Anda <vocabulary>menulis</vocabulary> <vocabulary>deskripsi</vocabulary> dan <vocabulary>akun</vocabulary> tentang kejadian tersebut. 

記述 berarti menuliskan sesuatu (baik dengan tangan atau mengetik), biasanya untuk mendapatkan catatan tertulis yang obyektif tentang sesuatu. 記述 juga bisa merujuk pada teks yang telah ditulis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menulis, Keterangan, Akun')
    RETURNING id INTO v_4742_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上述', 'disebutkan-di-atas', 24, 140, '<kanji>Di atas</kanji> <kanji>disebutkan</kanji> adalah <vocabulary>disebutkan di atas</vocabulary>. Lihat di atas untuk melihat di mana saya menyebutkannya, oke?

Perhatikan bahwa 上述 adalah kata yang biasa digunakan dalam penulisan formal seperti laporan, makalah akademis, atau dokumen bisnis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Disebutkan Di Atas, Yang Disebutkan Di Atas')
    RETURNING id INTO v_4743_disebutkan_di_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '提供', 'menawarkan', 24, 141, 'Saat Anda <kanji>mempersembahkan</kanji> sesuatu dan <kanji>menawarkan</kanji> kepada seseorang, Anda dengan baik hati <vocabulary>menawarkan</vocabulary> dan <vocabulary>menyediakan</vocabulary> kepada mereka.

提供 adalah kata yang relatif formal yang mengacu pada menawarkan atau memberikan sesuatu yang Anda miliki untuk keuntungan orang lain — seperti memberikan sumber daya, layanan, dana, atau informasi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menawarkan, Menyediakan')
    RETURNING id INTO v_4751_menawarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '供える', 'untuk-membuat-persembahan', 24, 142, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menawarkan</kanji>, dan versi kata kerja ini berarti <vocabulary>to make an offer</vocabulary>.

供える berarti <kosakata>mempersembahkan</vocabulary> sesuatu, biasanya kepada dewa, Buddha, atau seseorang yang telah meninggal dunia. Misalnya, Anda mungkin 花を供える (mempersembahkan bunga) di kuburan atau altar.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Bacaannya sama dengan kata 備える, yang telah Anda pelajari beberapa tingkat yang lalu, namun jika Anda memerlukan pengingat, ini dia:

Apa cara terbaik bagi pelayanmu <vocabulary>untuk memberikan persembahan</vocabulary>? Saat mereka <vocabulary>menawarkan</vocabulary> sauna mereka (そな)! Anda sangat menghargai sesi sauna yang hangat dan menenangkan di penghujung hari.', 'Untuk Membuat Persembahan, Untuk Menawarkan')
    RETURNING id INTO v_4752_untuk_membuat_persembahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '子供', 'anak', 24, 143, 'Seorang <kanji>anak</kanji> sering kali harus <kanji>menemani</kanji> orang lain ketika mereka pergi ke suatu tempat, karena mereka… <vocabulary>anak</vocabulary>. Tidak bisakah anak-anak itu berlarian tanpa ditemani, bukan?', 'Bacaan yang satu ini merupakan bacaan kun''yomi dari masing-masing kanji. 子 adalah こ, seperti kosakata individual. Namun 供 adalah ども. Ingatlah hal ini dengan memikirkan betapa <vocabulary>anak-anak</vocabulary> sangat menyukai <reading>domo</reading>-kun (ども).

Selain itu, 子ども lebih "benar secara politis" dengan kana yang tergantung di sana. 子供 masih digunakan dalam banyak situasi, biasanya situasi yang kaku. Kanji kedua berarti pelayan, dan beberapa orang tidak menyukainya. Versi kedua muncul dalam jumlah yang lumayan, jadi ada baiknya Anda juga memahaminya.', 'Anak, Anak, Anak-anak, Anak-anak')
    RETURNING id INTO v_4753_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '展示会', 'pameran-dagang', 24, 144, 'Saya ingin <kanji>memperluas</kanji> bisnis saya. Saya ingin <kanji>menunjukkan</kanji> barang saya. Saya ingin melakukan ini di tempat di mana semua orang <kanji>bertemu</kanji> untuk melakukan hal-hal ini. Anda dapat melakukan ini di <vocabulary>pameran dagang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pameran Dagang, Pameran')
    RETURNING id INTO v_4754_pameran_dagang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '発展する', 'untuk-berkembang', 24, 145, 'Mari <kanji>berangkat</kanji> dari tempat ini dan <kanji>memperluas</kanji> ke luar. Untuk melakukan itu kita harus <vocabulary>mengembangkan</vocabulary> itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun はつ disingkat menjadi はっ.', 'Untuk Berkembang')
    RETURNING id INTO v_4755_untuk_berkembang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '展開', 'berlangsung', 24, 146, 'Untuk <kanji>memperluas</kanji> dan <kanji>membuka</kanji>. Bayangkan saja sesuatu terjadi seperti ini. Inilah saat sesuatu sedang <vocabulary>berkembang</vocabulary> atau dalam <vocabulary>development</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berlangsung, Perkembangan')
    RETURNING id INTO v_4756_berlangsung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親展', 'rahasia', 24, 147, 'Jika <kanji>keintiman</kanji> <kanji>meluas</kanji> ke sesuatu, maka hal itu adalah <vocabulary>rahasia</vocabulary>. Cobalah memvisualisasikan keintiman sebagai semacam cairan lengket, memperluas dan menutupi surat, dan menjadikan surat itu rahasia.

親展 umumnya ditulis di bagian depan amplop untuk menunjukkan bahwa hanya penerima yang dituju yang boleh membaca isinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rahasia')
    RETURNING id INTO v_4757_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '販売', 'penjualan', 24, 148, '<kanji>Jual</kanji>, <kanji>jual</kanji>, jual. Inilah sikap yang Anda butuhkan jika Anda ingin bekerja di bidang <vocabulary>sales</vocabulary> atau melakukan <vocabulary>sales</vocabulary>. Anda harus meningkatkan <vocabulary>penjualan</vocabulary> Anda.', 'Ini adalah kata jukugo yang artinya Anda perlu mengetahui pembacaan kanji on''yomi. Anda tahu mereka berdua, hore!', 'Penjualan, Penjualan, Pemasaran')
    RETURNING id INTO v_4758_penjualan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自動販売機', 'mesin-penjual-otomatis', 24, 149, '<kanji>Otomatis</kanji> (自動) <kanji>jual</kanji> <kanji>jual</kanji> <kanji>mesin</kanji>. Pada dasarnya, mesin itu menjual barang dengan sendirinya. Ini adalah <vocabulary>mesin penjual otomatis</vocabulary>. Ada versi yang lebih pendek, tapi ada baiknya mempelajari yang panjang dulu :)', 'Ini adalah kata jukugo yang artinya pembacaan on''yomi dari kanji. Ingat itu, dan Anda akan baik-baik saja di sini.', 'Mesin Penjual Otomatis')
    RETURNING id INTO v_4759_mesin_penjual_otomatis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通販', 'pesanan-lewat-pos', 24, 150, 'Barang-barang yang Anda <kanji>jual</kanji> yang <kanji>melewati</kanji> dunia untuk sampai kepada Anda mungkin adalah <vocabulary>pesanan lewat pos</vocabulary>. Anda memesannya dan mereka diperbesar ke arah Anda, melewati semua jenis ruang untuk sampai di depan pintu Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pesanan lewat pos')
    RETURNING id INTO v_4760_pesanan_lewat_pos;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '株', 'saham', 24, 151, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji.', 'Saham, Membagikan')
    RETURNING id INTO v_4761_saham;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '株式', 'saham', 24, 152, '<kanji>saham</kanji> <kanji>ritual</kanji> adalah tarian yang kita lakukan di dunia modern seputar <vocabulary>saham</vocabulary> dan <vocabulary>share</vocabulary> dari berbagai perusahaan. Membeli! Menjual! Membeli! Menjual!', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Saham, Membagikan')
    RETURNING id INTO v_4762_saham;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朝寝坊', 'bangun-terlambat', 24, 153, 'Ingat 寝坊 dan apa artinya <kanji>tidur</kanji>? Seseorang yang ketiduran di <kanji>pagi</kanji> adalah seseorang yang <vocabulary>bangun terlambat</vocabulary>.', 'Bacaannya adalah kosakata kata 朝 dan 寝坊 yang dirangkai menjadi satu. Selama Anda mengenalnya secara terpisah, Anda juga harus mengetahuinya bersama-sama!', 'Bangun Terlambat, Kesiangan')
    RETURNING id INTO v_4861_bangun_terlambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '営業中', 'terbuka-untuk-bisnis', 24, 154, 'Ingat bagaimana 営業 berarti "bisnis"? Nah, jika Anda berada di <kanji>tengah</kanji> dalam menjalankan bisnis, itu berarti Anda <vocabulary>terbuka untuk bisnis</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 営業 terlebih dahulu juga akan membantu.', 'Terbuka Untuk Bisnis')
    RETURNING id INTO v_4862_terbuka_untuk_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '置き場', 'tempat-untuk-meletakkan-sesuatu', 24, 155, '置く adalah <kanji>untuk meletakkan</kanji> sesuatu. Jadi <kanji>lokasi</kanji> di mana Anda meletakkan sesuatu adalah <vocabulary>tempat meletakkan sesuatu</vocabulary>.

置き場 sering kali mengikuti kata lain, yang menandakan bahwa itu adalah area yang ditentukan di mana barang tertentu harus disimpan atau diparkir. Misalnya, 自転車置き場.', 'Kata ini menggunakan bacaan kun''yomi. 置き berasal dari 置く, dan Anda mempelajari cara membaca 場 dengan 場所, namun berikut ini ada mnemonik yang dapat membantu Anda untuk berjaga-jaga:

Anda sedang mencari <vocabulary>tempat untuk meletakkan sesuatu</vocabulary> yang berbunyi "<reading>baa</reading>" (ば). Domba peliharaanmu tidak berhenti menggonggong dan semakin mengganggu, jadi kamu ingin menaruhnya di suatu tempat. "Baa, baa," ia mengembik dengan menjengkelkan saat Anda mencari tempat yang bagus untuk meletakkannya.', 'Tempat Untuk Meletakkan Sesuatu')
    RETURNING id INTO v_4863_tempat_untuk_meletakkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主観的', 'subyektif', 24, 156, '主観 adalah <kanji>subjektivitas</kanji>. Jadi ketika sesuatu bergerak ke arah subjektivitas, maka hal itu menjadi <vocabulary>subjektif</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika Anda mengetahui 主観.', 'Subyektif')
    RETURNING id INTO v_4864_subyektif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '援助する', 'untuk-membantu', 24, 157, 'Anda tahu bahwa 援助 adalah <kanji>bantuan</kanji> atau <kanji>bantuan</kanji>. Jadi versi kosakata kata kerjanya adalah <vocabulary>to assist</vocabulary> atau <vocabulary>to aid</vocabulary>.', 'Bacaannya sama dengan 援助. Itu juga hanya bacaan yang Anda pelajari dengan kanji.', 'Untuk Membantu, Untuk Membantu')
    RETURNING id INTO v_4865_untuk_membantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '応援する', 'untuk-melakukan-root-untuk', 24, 158, '応援 adalah <kanji>bantuan</kanji> dan <kanji>root for</kanji>, namun untuk kata kerja ini, "root for" yang dimaksud lebih pada uang. Anda dapat menyebutnya <vocabulary>untuk mendukung</vocabulary>, <vocabulary>untuk menyemangati</vocabulary>, atau <vocabulary>untuk menyemangati</vocabulary>.', 'Bacaannya berasal dari 応援. Itu juga hanya pembacaan on''yomi yang Anda pelajari.', 'Untuk Melakukan Root Untuk, Untuk Menghibur, Untuk Menghibur')
    RETURNING id INTO v_4866_untuk_melakukan_root_untuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '副大統領', 'wakil-presiden', 24, 159, 'Anda tahu tentang 大統領 (<kanji>presiden</kanji>), bukan? Nah, inilah presiden versi <kanji>wakil</kanji> alias <vocabulary>wakil presiden</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, akan membantu jika Anda mengetahui kata 大統領 terlebih dahulu.', 'Wakil Presiden')
    RETURNING id INTO v_4868_wakil_presiden;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '提案する', 'untuk-melamar', 24, 160, 'Anda ingat 提案, yang artinya <kanji>proposisi</kanji>? Jadikan itu menjadi kata kerja dan Anda memiliki <vocabulary>untuk mengusulkan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Melamar')
    RETURNING id INTO v_4869_untuk_melamar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '支援する', 'untuk-mendukung', 24, 161, '<kanji>mendukung</kanji> dan <kanji>membantu</kanji> adalah <vocabulary>mendukung</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Mendukung, Untuk Kembali, Untuk Membantu')
    RETURNING id INTO v_4870_untuk_mendukung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '観光客', 'turis', 24, 162, '<kanji>Wisata</kanji> (観光) <kanji>tamu</kanji> adalah <vocabulary>turis</vocabulary> dan <vocabulary>wisata</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu untuk mengetahui 観光 juga.', 'Turis, Pelancong')
    RETURNING id INTO v_4871_turis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '突く', 'untuk-menusuk', 24, 163, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>menusuk</kanji> jadi versi kosakata kata kerjanya juga harus <vocabulary>to menusuk</vocabulary>.

Ingin tahu apa bedanya dengan 刺す? 突く mengacu pada tindakan mendorong atau menekan sesuatu dengan ujung suatu benda, sering kali dilakukan dengan kuat dan cepat. Jadi ketika Anda menggunakan 突く seperti dalam "menusuk", fokus Anda adalah pada kekuatan tindakan tersebut. Di sisi lain, 刺す lebih berfokus pada tindakan menusuk sesuatu atau seseorang dengan benda tajam. 

Inilah sebabnya mengapa 突く dapat diterjemahkan dengan berbagai cara, seperti <vocabulary>to poke</vocabulary>, <vocabulary>to jab</vocabulary>, dan masih banyak lagi.', 'Kalau mau ditusuk, jangan ditusuk <reading>dua</reading> (つ) kali. Anda mungkin ingat bahwa ini adalah tusukan “dua kali tusukan” karena lubangnya besar. Lubangnya besar karena ditusuk dua kali.', 'Untuk Menusuk, Untuk menyodok, Ke Jab')
    RETURNING id INTO v_4960_untuk_menusuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '効果的', 'efektif', 24, 164, 'Anda tahu bahwa 効果 berarti "efek", dan 〜的 melekat pada kata lain sehingga memberi nuansa "<kanji>~al</kanji>" atau "~seperti". Apa yang dimaksud dengan "seperti efek"? Artinya ada sesuatu yang <vocabulary>efektif</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Efektif')
    RETURNING id INTO v_5008_efektif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '靴', 'sepatu', 24, 165, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Sabas!', 'Sepatu')
    RETURNING id INTO v_5098_sepatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '更に', 'lebih-lebih-lagi', 24, 166, 'Saat Anda <kanji>memperbarui</kanji> apa yang Anda katakan, Anda menambahkan ke dalamnya, yang menjadikannya <vocabulary>lebih lanjut</vocabulary> atau <vocabulary>lebih lanjut</vocabulary>. 

Ini adalah salah satu kata esai yang bagus untuk memulai paragraf atau kalimat, dan itulah yang sering Anda lihat digunakan!', 'Kanji berdiri sendiri dengan sebuah partikel, artinya ini menggunakan bacaan kun''yomi, yang tidak Anda pelajari dengan kanji. Berikut ini mnemonik untuk membantu Anda:

Anda mengenal seseorang yang memulai setiap kalimat dengan mengatakan "<vocabulary>Selanjutnya</vocabulary>," dan itu adalah... <reading>Sarah</reading> (さら). Benar-benar merasa kesal dengan Sarah ini karena memulai setiap kalimat lainnya dengan "Lagipula, ...!"

Perhatikan saja bahwa 更に sering kali ditulis dalam kana, seperti さらに, terutama dalam tulisan biasa!', 'Lebih-lebih lagi, Lebih jauh, Lagi')
    RETURNING id INTO v_5325_lebih_lebih_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜系', 'jenis', 24, 167, 'Telusuri kembali sesuatu melalui <kanji>silsilah</kanji> untuk menentukan <vocabulary>jenis</vocabulary> benda tersebut.

〜系 adalah sufiks yang dapat Anda lampirkan dengan santai pada sebuah kata untuk mengklasifikasikannya sebagai <vocabulary>genre</vocabulary> atau grup, seperti 理系 (bidang yang berorientasi pada sains), おしゃれ系 (orang yang trendi atau penuh gaya), atau 日系 (orang <vocabulary>silsilah</vocabulary> Jepang).', 'Ini adalah bacaan yang sama yang Anda pelajari dengan kanji, jadi sebaiknya Anda melanjutkan.', 'Jenis, Genre, Garis keturunan')
    RETURNING id INTO v_5352_jenis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日系', 'keturunan-jepang', 24, 168, '日 singkatan dari 日本 di sini. Jadi apa istilah yang lebih baik untuk "<kanji>garis keturunan</kanji> Jepang" dalam bahasa Inggris? Itu adalah <vocabulary>keturunan Jepang</vocabulary> atau <vocabulary>asal Jepang</vocabulary>.

日系 dapat digunakan untuk orang dan entitas, seperti di 日系アメリカ人 (Jepang-Amerika) atau 日系企業 (perusahaan <vocabulary>yang dioperasikan Jepang</vocabulary>).', 'Kata jukugo ini menggunakan pembacaan on''yomi yang Anda pelajari dengan kanji, namun pembacaan 日 berubah dari にち menjadi にっ, jadi inilah mnemoniknya:

Selebriti manakah yang populer di kalangan <vocabulary>keturunan Jepang</vocabulary>? Mungkin <read>Nic Ca</reading>ge (にっけい). Istrinya orang Jepang dan dia terkenal sangat menyukai Jepang, jadi mungkin itu alasannya? Bayangkan saja komunitas 日系 bersorak "Nic Cage! Nic Cage!" setiap kali Anda melihat kata ini.', 'Keturunan Jepang, Asal Jepang, Dioperasikan Jepang')
    RETURNING id INTO v_5353_keturunan_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '燃やす', 'untuk-membakar-sesuatu', 24, 169, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>membakar</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>membakar sesuatu</vocabulary>, atau <vocabulary>membakar</vocabulary>.', 'Ini adalah saat Anda membakar sesuatu. Untuk mengingat makna ini, Anda harus mengingat bagian も. Jadi, pikirkan saja temanmu <reading>Mo</reading>e (も), dan bagaimana kamu akan membakarnya... uh... sedikit saja.', 'Untuk Membakar Sesuatu, Untuk Membakar')
    RETURNING id INTO v_6235_untuk_membakar_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全額', 'total', 24, 170, '<kanji>Semua</kanji> dari <kanji>jumlah</kanji> adalah <vocabulary>total</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Total, Jumlah Penuh, Jumlah Keseluruhan')
    RETURNING id INTO v_7599_total;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '左腕', 'lengan-kiri', 24, 171, '<kanji>lengan</kanji> kiri</kanji> Anda adalah <vocabulary>lengan kiri</vocabulary> Anda.', 'Ini adalah kata jukugo, tapi menggunakan kun''yomi dan bukan on''yomi, jadi berhati-hatilah!', 'Lengan Kiri')
    RETURNING id INTO v_7652_lengan_kiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '額', 'bingkai-gambar', 24, 172, 'Anda sebelumnya mempelajari kanji ini dengan tiga arti berbeda. Untuk kosakata, kami hanya akan fokus pada salah satunya: <vocabulary>bingkai foto</vocabulary>.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Bingkai gambar, Bingkai')
    RETURNING id INTO v_7653_bingkai_gambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指差す', 'untuk-menunjuk', 24, 173, 'Bila Anda ingin menggunakan <kanji>jari</kanji> Anda untuk menjelaskan <kanji>perbedaan</kanji> antara lebih dari satu hal, Anda perlu <vocabulary>menunjuk</vocabulary> hal tersebut. Kalau tidak, orang yang Anda ajak bicara tidak akan tahu siapa yang Anda bicarakan.

Secara umum, 指差す secara khusus berarti menggunakan jari telunjuk untuk menunjuk sesuatu atau seseorang secara fisik.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Untuk Menunjuk, Untuk Menunjuk Ke')
    RETURNING id INTO v_7711_untuk_menunjuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本質', 'esensi', 24, 174, '<kanji>yang sebenarnya</kanji> <kanji>kualitas</kanji> dari sesuatu adalah <vocabulary>esensi</vocabulary>, atau <vocabulary>sifat sebenarnya</vocabulary>. Entah itu baik atau buruk, itu lain cerita.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Esensi, Alam Sejati, Zat, Realitas')
    RETURNING id INTO v_7766_esensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '燃料', 'bahan-bakar', 24, 175, '<kanji>bahan</kanji> yang dapat <kanji>bakar</kanji> disebut <vocabulary>bahan bakar</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bahan bakar')
    RETURNING id INTO v_8679_bahan_bakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '両腕', 'kedua-lengan', 24, 176, '<kanji>Kedua</kanji> <kanji>lengan</kanji> adalah <vocabulary>kedua lengan</vocabulary>!', 'Ini merupakan kombinasi bacaan on''yomi 両 dan bacaan kun''yomi 腕. Anda telah mempelajari keduanya, jadi Anda juga mengetahuinya!', 'Kedua Lengan')
    RETURNING id INTO v_8715_kedua_lengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '輸送', 'angkutan', 24, 177, 'Anda ingin <kanji>mengangkut</kanji> sesuatu dengan <kanji>mengirimkannya</kanji>? Ya, itulah <vocabulary>transportasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Angkutan')
    RETURNING id INTO v_8755_angkutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '値札', 'label-harga', 24, 178, '<kanji>harga</kanji> <kanji>tag</kanji> adalah... <vocabulary>label harga</vocabulary>!', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari bacaan kun''yomi untuk 値 dalam kosakata 値 (ね). Anda telah mempelajari cara membaca 札 dalam kosakata 札 (ふだ). Gabungkan keduanya dan Anda akan mendapatkan ねふだ.', 'Label Harga')
    RETURNING id INTO v_8808_label_harga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '半袖', 'lengan-pendek', 24, 179, '<kanji>Setengah</kanji> <kanji>lengan</kanji> hanyalah nama lain untuk <vocabulary>lengan pendek</vocabulary>.', 'Kata ini menggunakan bacaan on''yomi untuk 半 dan bacaan kun''yomi untuk 袖. Anda sudah mempelajari keduanya, jadi Anda seharusnya bisa membaca kata ini.', 'Lengan Pendek')
    RETURNING id INTO v_8899_lengan_pendek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '長袖', 'lengan-panjang', 24, 180, '<kanji>Panjang</kanji> <kanji>lengan</kanji> adalah <vocabulary>lengan panjang</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda sudah mempelajari keduanya, jadi Anda seharusnya sudah bisa membacanya!', 'Lengan Panjang')
    RETURNING id INTO v_8900_lengan_panjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '築く', 'untuk-membangun-sesuatu', 24, 181, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>membangun</kanji> dan versi kata kerjanya adalah <kosa kata>membangun sesuatu</vocabulary> atau <vocabulary>membangun sesuatu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda ingin <vocabulary>membangun sesuatu</vocabulary> yang disebut <reading>key zoo</reading> (きず). Yang merupakan kebun binatang untuk kunci, bukan binatang. Jadi pada dasarnya itu adalah sekumpulan kunci di dalam sangkar. Hmm, betapa berseninya kamu... Semoga orang-orang mengerti. Bukankah <vocabulary>membangun sesuatu</vocabulary> yang agak avant-garde seperti kebun binatang utama?', 'Untuk Membangun Sesuatu, Untuk Membangun Sesuatu')
    RETURNING id INTO v_9027_untuk_membangun_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腹痛', 'sakit-perut', 24, 182, 'Saat Anda menderita <kanji>perut</kanji> <kanji>nyeri</kanji>, Anda menderita <vocabulary>sakit perut</vocabulary>.

腹痛 adalah kata umum untuk segala jenis <vocabulary>nyeri perut</vocabulary>, dengan nada yang sedikit formal atau medis. Ini bisa merujuk pada rasa sakit di perut Anda yang sebenarnya, tetapi juga mencakup rasa sakit atau ketidaknyamanan di bagian perut lainnya, seperti usus atau organ pencernaan lainnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sakit perut, Sakit Perut')
    RETURNING id INTO v_9471_sakit_perut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空腹', 'perut-kosong', 24, 183, 'Ingat bagaimana 空 juga bisa berarti <kanji>kosong</kanji>? Ya, <kanji>perut</kanji> yang kosong adalah <vocabulary>perut yang kosong</vocabulary>.

空腹 adalah kata yang mengacu pada keadaan perut Anda yang tidak berisi apa-apa. Oleh karena itu, kata ini juga sering digunakan untuk merujuk pada <vocabulary>lapar</vocabulary> itu sendiri. Anda bahkan dapat menggunakannya sebagai kata sifat untuk mendeskripsikan orang <vocabulary>lapar</vocabulary>, meskipun kedengarannya agak formal atau klinis.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perut Kosong, Kelaparan, Lapar')
    RETURNING id INTO v_9472_perut_kosong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頭脳', 'otak', 24, 184, '<kanji>kepala</kanji> <kanji>otak</kanji> Anda adalah sesuatu yang ada di otak Anda yang Anda gunakan untuk berpikir — dengan kata lain, <vocabulary>otak</vocabulary> Anda.

Dibandingkan dengan 脳, yang merupakan otak fisik, 頭脳 adalah tentang <vocabulary>kecerdasan</vocabulary> Anda. Ini mengacu pada kemampuan Anda untuk berpikir dan menyusun strategi, seperti dalam ungkapan 頭脳プレー (langkah yang cerdas dan strategis, baik dalam olahraga atau kehidupan sehari-hari).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi 頭 saat mempelajari kanji, jadi inilah mnemonik untuk membantu Anda:

Kamu senang memamerkan <vocabulary>otak</vocabulary> pintarmu di <reading>kebun binatang</reading> (ず). Anda menyebut semua hewan dengan nama ilmiahnya ("Orangutan? Ah, yang Anda maksud pasti Pongo Pygmaeus.") dan menceritakan hal-hal sepele zoologi yang tidak jelas kepada siapa pun yang mau mendengarkan. Tidak ada yang bisa meragukan <vocabulary>kecerdasan</vocabulary> Anda setelah seharian berada di kebun binatang bersama Anda.', 'Otak, Intelek')
    RETURNING id INTO v_9473_otak;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3995_bangunan, 'Bangunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3995_bangunan, 'Struktur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4346_benar_benar, 'Benar-benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4346_benar_benar, 'Seperti yang Diharapkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4346_benar_benar, 'Seperti yang Saya Pikirkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4421_penyelidikan, 'Penyelidikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4421_penyelidikan, 'Inspeksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4421_penyelidikan, 'Penyelidikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4421_penyelidikan, 'Tinjauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4452_keputusan, 'Keputusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4452_keputusan, 'Wasit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4452_keputusan, 'Wasit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4499_untuk_menanggalkan_pakaian, 'Untuk menanggalkan pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4499_untuk_menanggalkan_pakaian, 'Untuk Melepas Pakaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4549_harga_rendah, 'Harga Rendah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4549_harga_rendah, 'Harga Murah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4551_harga_tinggi, 'Harga Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4579_ekonomis, 'Ekonomis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4579_ekonomis, 'Finansial', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4579_ekonomis, 'Ekonomis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4603_aturan, 'Aturan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4603_aturan, 'Peraturan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4604_aturan, 'Aturan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4604_aturan, 'Hukum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4604_aturan, 'Disiplin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4654_perbedaan, 'Perbedaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4655_menjadi_berbeda, 'Menjadi Berbeda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4655_menjadi_berbeda, 'Menjadi Salah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4655_menjadi_berbeda, 'Menjadi Salah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4655_menjadi_berbeda, 'Untuk Bervariasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4655_menjadi_berbeda, 'Untuk Berbeda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4656_sampah_yang_dapat_dibakar, 'Sampah yang Dapat Dibakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4656_sampah_yang_dapat_dibakar, 'Sampah yang Dapat Dibakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4656_sampah_yang_dapat_dibakar, 'Sampah yang Dapat Dibakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4657_untuk_menjalankan_bisnis, 'Untuk Menjalankan Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4657_untuk_menjalankan_bisnis, 'Untuk Mengelola Bisnis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4658_tradisional, 'Tradisional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4659_hari_ulang_tahun, 'Hari ulang tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4660_untuk_tidur_berlebihan, 'Untuk tidur berlebihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4661_waktu_lampau, 'Waktu lampau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4662_terlalu_banyak, 'Terlalu Banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4662_terlalu_banyak, 'Setelah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4662_terlalu_banyak, 'Masa lalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4663_rencana_kontra, 'Rencana Kontra', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4663_rencana_kontra, 'Tindakan balasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4664_nilai_nilai, 'Nilai-nilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4664_nilai_nilai, 'Rasa Nilai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4664_nilai_nilai, 'Nilai Moral', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4665_bagian_rooting, 'Bagian Rooting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4665_bagian_rooting, 'Pasukan Penyemangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4665_bagian_rooting, 'Bagian Bersorak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4668_untuk_membawa, 'Untuk Membawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4668_untuk_membawa, 'Ke Bahu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4669_bertanggung_jawab, 'Bertanggung jawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4670_beban, 'Beban', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4670_beban, 'Tanggung jawab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4671_setengah_harga, 'Setengah harga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4672_jumlah_besar, 'Jumlah Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4672_jumlah_besar, 'Jumlah Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4673_jumlah_tahunan, 'Jumlah Tahunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4673_jumlah_tahunan, 'Jumlah Tahunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4674_jumlah_bulanan, 'Jumlah Bulanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4675_jumlah_tetap, 'Jumlah Tetap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4675_jumlah_tetap, 'Jumlah Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4675_jumlah_tetap, 'Tarif Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4676_jumlah_sisa, 'Jumlah Sisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4676_jumlah_sisa, 'Keseimbangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4677_produk, 'Produk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4677_produk, 'Barang yang Diproduksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4678_manufaktur, 'Manufaktur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4678_manufaktur, 'Produksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4679_kayu, 'Kayu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4679_kayu, 'Terbuat Dari Kayu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4679_kayu, 'Terbuat Dari Kayu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4680_buatan_jepang, 'Buatan Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4681_dibuat_di_cina, 'Dibuat Di Cina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4682_buatan_as, 'Buatan AS', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4682_buatan_as, 'Dibuat di Amerika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4683_buatan_sendiri, 'Buatan sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4683_buatan_sendiri, 'Buatan Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4683_buatan_sendiri, 'Dibuat Di Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4684_ekspor, 'Ekspor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4685_transfusi_darah, 'Transfusi Darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, 'Sampah yang Tidak Dapat Dibakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, 'Sampah yang Tidak Dapat Dibakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, 'Sampah yang Tidak Dapat Dibakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, 'Sampah yang Tidak Dapat Dibakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, 'Sampah yang Tidak Dapat Dibakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, 'Sampah yang Tidak Dapat Dibakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4687_untuk_merayakan, 'Untuk Merayakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4688_hari_libur_nasional, 'Hari Libur Nasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4688_hari_libur_nasional, 'Hari Libur Nasional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4689_untuk_dikirim, 'Untuk Dikirim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4689_untuk_dikirim, 'Untuk Tiba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4689_untuk_dikirim, 'Untuk Mencapai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4690_sempit, 'Sempit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4691_bahu, 'Bahu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4692_lengan, 'Lengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4693_jam_tangan, 'Jam tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4693_jam_tangan, 'Jam tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4694_pinggang, 'Pinggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4694_pinggang, 'Punggung Bawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4695_untuk_menyentuh_sesuatu, 'Untuk Menyentuh Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4695_untuk_menyentuh_sesuatu, 'Untuk Menyentuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4696_antena, 'Antena', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4697_menyentuh, 'Menyentuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4697_menyentuh, 'Sentuhan Rasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4697_menyentuh, 'Merasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4697_menyentuh, 'Merasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4698_tercatat, 'Tercatat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4698_tercatat, 'Diterbitkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4699_catatan, 'Catatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4699_catatan, 'Rekaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4699_catatan, 'Mendokumentasikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4700_untuk_ditempatkan, 'Untuk Ditempatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4700_untuk_ditempatkan, 'Untuk Direkam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4700_untuk_ditempatkan, 'Untuk Dimuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4701_lebih_banyak_lagi, 'Lebih Banyak Lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4701_lebih_banyak_lagi, 'Semakin Banyak Lagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4701_lebih_banyak_lagi, 'Bahkan Lebih Banyak Lagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4702_lapisan, 'Lapisan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4702_lapisan, 'Lapisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4702_lapisan, 'Demografis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4703_model, 'Model', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4703_model, 'Jenis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4703_model, 'Cetakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4703_model, 'Pola', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4704_khas, 'Khas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4704_khas, 'Stereotip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4704_khas, 'Prototipikal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4705_prototipe, 'Prototipe', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4705_prototipe, 'Model', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4706_gedung_pemerintahan_metropolitan, 'Gedung Pemerintahan Metropolitan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4706_gedung_pemerintahan_metropolitan, 'Kantor Pemerintah Metropolitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4707_departemen_kepolisian_metropolitan, 'Departemen Kepolisian Metropolitan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4707_departemen_kepolisian_metropolitan, 'Polda Metro', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4708_badan_kepolisian_nasional, 'Badan Kepolisian Nasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4709_kantor_pemerintah, 'Kantor Pemerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4709_kantor_pemerintah, 'Otoritas Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4709_kantor_pemerintah, 'Instansi Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4710_untuk_mengabaikan, 'Untuk Mengabaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4710_untuk_mengabaikan, 'Untuk Mengabaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4711_indra_penglihatan, 'Indra Penglihatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4711_indra_penglihatan, 'Penglihatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4712_rabun_jauh, 'Rabun jauh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4712_rabun_jauh, 'Rabun jauh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4712_rabun_jauh, 'Lamur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4713_rabun_jauh, 'Rabun jauh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4713_rabun_jauh, 'Rabun jauh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4713_rabun_jauh, 'Rabun dekat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4714_untuk_bersinar, 'Untuk Bersinar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4714_untuk_bersinar, 'Untuk Memproyeksikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4714_untuk_bersinar, 'Untuk Memperluas Ke Luar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4714_untuk_bersinar, 'Untuk Muncul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4715_diskriminasi, 'Diskriminasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4716_persimpangan, 'Persimpangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4717_perbedaan_waktu, 'Perbedaan Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4718_pipa, 'Pipa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4718_pipa, 'Tabung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4719_pengelolaan, 'Pengelolaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4719_pengelolaan, 'Administrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4720_pembuluh_darah, 'Pembuluh darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4720_pembuluh_darah, 'Pembuluh darah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4722_target, 'Target', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4722_target, 'Subjek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4723_gejala, 'Gejala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4724_cuaca, 'Cuaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4725_untuk_mengukur, 'Untuk Mengukur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4725_untuk_mengukur, 'untuk menimbang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4726_kuantitas, 'Kuantitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4726_kuantitas, 'Jumlah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4727_jumlah_besar, 'Jumlah Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4727_jumlah_besar, 'Jumlah besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4727_jumlah_besar, 'Jumlah Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4728_kuantitas_tetap, 'Kuantitas Tetap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4728_kuantitas_tetap, 'Pengukuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4728_kuantitas_tetap, 'Jumlah Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4728_kuantitas_tetap, 'Tetapkan Kuantitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4728_kuantitas_tetap, 'Tetapkan Jumlah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4729_batas, 'Batas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4730_perbatasan_nasional, 'Perbatasan Nasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4731_batas, 'Batas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4732_lingkungan, 'Lingkungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4733_senjata, 'Senjata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4734_seni_bela_diri, 'Seni Bela Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4735_samurai, 'Samurai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4736_kualitas, 'Kualitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4737_pertanyaan, 'Pertanyaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4738_kualitas_bahan, 'Kualitas Bahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4738_kualitas_bahan, 'Kualitas Barang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4738_kualitas_bahan, 'Kualitas Produk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4738_kualitas_bahan, 'Kualitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4739_kualitas_bagus, 'Kualitas Bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4739_kualitas_bagus, 'Kualitas Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4739_kualitas_bagus, 'Kualitas Unggul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4740_ciri, 'Ciri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4740_ciri, 'Sifat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4741_untuk_disebutkan, 'Untuk Disebutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4741_untuk_disebutkan, 'Untuk menyatakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4741_untuk_disebutkan, 'Untuk Menjelaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4742_menulis, 'Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4742_menulis, 'Keterangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4742_menulis, 'Akun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4743_disebutkan_di_atas, 'Disebutkan Di Atas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4743_disebutkan_di_atas, 'Yang Disebutkan Di Atas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4751_menawarkan, 'Menawarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4751_menawarkan, 'Menyediakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4752_untuk_membuat_persembahan, 'Untuk Membuat Persembahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4752_untuk_membuat_persembahan, 'Untuk Menawarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4753_anak, 'Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4753_anak, 'Anak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4753_anak, 'Anak-anak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4753_anak, 'Anak-anak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4754_pameran_dagang, 'Pameran Dagang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4754_pameran_dagang, 'Pameran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4755_untuk_berkembang, 'Untuk Berkembang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4756_berlangsung, 'Berlangsung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4756_berlangsung, 'Perkembangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4757_rahasia, 'Rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4758_penjualan, 'Penjualan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4758_penjualan, 'Penjualan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4758_penjualan, 'Pemasaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4759_mesin_penjual_otomatis, 'Mesin Penjual Otomatis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4760_pesanan_lewat_pos, 'Pesanan lewat pos', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4761_saham, 'Saham', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4761_saham, 'Membagikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4762_saham, 'Saham', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4762_saham, 'Membagikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4861_bangun_terlambat, 'Bangun Terlambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4861_bangun_terlambat, 'Kesiangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4862_terbuka_untuk_bisnis, 'Terbuka Untuk Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4863_tempat_untuk_meletakkan_sesuatu, 'Tempat Untuk Meletakkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4864_subyektif, 'Subyektif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4865_untuk_membantu, 'Untuk Membantu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4865_untuk_membantu, 'Untuk Membantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4866_untuk_melakukan_root_untuk, 'Untuk Melakukan Root Untuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4866_untuk_melakukan_root_untuk, 'Untuk Menghibur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4866_untuk_melakukan_root_untuk, 'Untuk Menghibur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4868_wakil_presiden, 'Wakil Presiden', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4869_untuk_melamar, 'Untuk Melamar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4870_untuk_mendukung, 'Untuk Mendukung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4870_untuk_mendukung, 'Untuk Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4870_untuk_mendukung, 'Untuk Membantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4871_turis, 'Turis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4871_turis, 'Pelancong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4960_untuk_menusuk, 'Untuk Menusuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4960_untuk_menusuk, 'Untuk menyodok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4960_untuk_menusuk, 'Ke Jab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5008_efektif, 'Efektif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5098_sepatu, 'Sepatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5325_lebih_lebih_lagi, 'Lebih-lebih lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5325_lebih_lebih_lagi, 'Lebih jauh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5325_lebih_lebih_lagi, 'Lagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5352_jenis, 'Jenis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5352_jenis, 'Genre', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5352_jenis, 'Garis keturunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5353_keturunan_jepang, 'Keturunan Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5353_keturunan_jepang, 'Asal Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5353_keturunan_jepang, 'Dioperasikan Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6235_untuk_membakar_sesuatu, 'Untuk Membakar Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6235_untuk_membakar_sesuatu, 'Untuk Membakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7599_total, 'Total', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7599_total, 'Jumlah Penuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7599_total, 'Jumlah Keseluruhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7652_lengan_kiri, 'Lengan Kiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7653_bingkai_gambar, 'Bingkai gambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7653_bingkai_gambar, 'Bingkai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7711_untuk_menunjuk, 'Untuk Menunjuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7711_untuk_menunjuk, 'Untuk Menunjuk Ke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7766_esensi, 'Esensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7766_esensi, 'Alam Sejati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7766_esensi, 'Zat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7766_esensi, 'Realitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8679_bahan_bakar, 'Bahan bakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8715_kedua_lengan, 'Kedua Lengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8755_angkutan, 'Angkutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8808_label_harga, 'Label Harga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8899_lengan_pendek, 'Lengan Pendek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8900_lengan_panjang, 'Lengan Panjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9027_untuk_membangun_sesuatu, 'Untuk Membangun Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9027_untuk_membangun_sesuatu, 'Untuk Membangun Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9471_sakit_perut, 'Sakit perut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9471_sakit_perut, 'Sakit Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9472_perut_kosong, 'Perut Kosong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9472_perut_kosong, 'Kelaparan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9472_perut_kosong, 'Lapar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9473_otak, 'Otak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9473_otak, 'Intelek', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3995_bangunan, 'たてもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4346_benar_benar, 'はたして', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4421_penyelidikan, 'しんさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4452_keputusan, 'しんぱん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4499_untuk_menanggalkan_pakaian, 'ぬぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4549_harga_rendah, 'やすね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4551_harga_tinggi, 'たかね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4579_ekonomis, 'けいざいてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4603_aturan, 'きそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4604_aturan, 'きりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4654_perbedaan, 'ちがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4655_menjadi_berbeda, 'ちがう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4656_sampah_yang_dapat_dibakar, 'かねんごみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4656_sampah_yang_dapat_dibakar, 'かねんゴミ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4657_untuk_menjalankan_bisnis, 'えいぎょうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4658_tradisional, 'でんとうてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4659_hari_ulang_tahun, 'たんじょうび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4660_untuk_tidur_berlebihan, 'ねぼうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4661_waktu_lampau, 'かこけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4662_terlalu_banyak, 'すぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4663_rencana_kontra, 'たいさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4664_nilai_nilai, 'かちかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4665_bagian_rooting, 'おうえんだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4668_untuk_membawa, 'かつぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4669_bertanggung_jawab, 'たんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4670_beban, 'ふたん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4671_setengah_harga, 'はんがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4672_jumlah_besar, 'たがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4673_jumlah_tahunan, 'ねんがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4674_jumlah_bulanan, 'げつがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4675_jumlah_tetap, 'ていがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4676_jumlah_sisa, 'ざんがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4677_produk, 'せいひん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4678_manufaktur, 'せいさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4679_kayu, 'もくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4680_buatan_jepang, 'にほんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4681_dibuat_di_cina, 'ちゅうごくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4682_buatan_as, 'あめりかせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4682_buatan_as, 'アメリカせい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4683_buatan_sendiri, 'じかせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4684_ekspor, 'ゆしゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4685_transfusi_darah, 'ゆけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, 'ふねんごみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, 'ふねんゴミ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4687_untuk_merayakan, 'いわう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4688_hari_libur_nasional, 'しゅくじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4689_untuk_dikirim, 'とどく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4690_sempit, 'せまい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4691_bahu, 'かた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4692_lengan, 'うで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4693_jam_tangan, 'うでどけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4694_pinggang, 'こし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4695_untuk_menyentuh_sesuatu, 'さわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4696_antena, 'しょっかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4697_menyentuh, 'かんしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4698_tercatat, 'しょさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4699_catatan, 'きさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4700_untuk_ditempatkan, 'のる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4701_lebih_banyak_lagi, 'いっそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4702_lapisan, 'そう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4703_model, 'かた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4704_khas, 'てんけいてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4705_prototipe, 'げんけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4706_gedung_pemerintahan_metropolitan, 'とちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4707_departemen_kepolisian_metropolitan, 'けいしちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4708_badan_kepolisian_nasional, 'けいさつちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4709_kantor_pemerintah, 'かんちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4710_untuk_mengabaikan, 'むしする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4711_indra_penglihatan, 'しかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4712_rabun_jauh, 'きんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4713_rabun_jauh, 'えんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4714_untuk_bersinar, 'さす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4715_diskriminasi, 'さべつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4716_persimpangan, 'こうさてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4717_perbedaan_waktu, 'じさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4718_pipa, 'くだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4719_pengelolaan, 'かんり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4720_pembuluh_darah, 'けっかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4722_target, 'たいしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4723_gejala, 'げんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4724_cuaca, 'きしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4725_untuk_mengukur, 'はかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4726_kuantitas, 'りょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4727_jumlah_besar, 'たいりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4728_kuantitas_tetap, 'ていりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4729_batas, 'さかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4730_perbatasan_nasional, 'こっきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4730_perbatasan_nasional, 'くにざかい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4731_batas, 'きょうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4732_lingkungan, 'かんきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4733_senjata, 'ぶき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4734_seni_bela_diri, 'ぶどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4735_samurai, 'ぶし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4736_kualitas, 'しつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4737_pertanyaan, 'しつもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4738_kualitas_bahan, 'ひんしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4739_kualitas_bagus, 'りょうしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4740_ciri, 'とくしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4741_untuk_disebutkan, 'のべる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4742_menulis, 'きじゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4743_disebutkan_di_atas, 'じょうじゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4751_menawarkan, 'ていきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4752_untuk_membuat_persembahan, 'そなえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4753_anak, 'こども', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4754_pameran_dagang, 'てんじかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4755_untuk_berkembang, 'はってんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4756_berlangsung, 'てんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4757_rahasia, 'しんてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4758_penjualan, 'はんばい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4759_mesin_penjual_otomatis, 'じどうはんばいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4760_pesanan_lewat_pos, 'つうはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4761_saham, 'かぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4762_saham, 'かぶしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4861_bangun_terlambat, 'あさねぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4862_terbuka_untuk_bisnis, 'えいぎょうちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4863_tempat_untuk_meletakkan_sesuatu, 'おきば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4864_subyektif, 'しゅかんてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4865_untuk_membantu, 'えんじょする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4866_untuk_melakukan_root_untuk, 'おうえんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4868_wakil_presiden, 'ふくだいとうりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4869_untuk_melamar, 'ていあんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4870_untuk_mendukung, 'しえんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4871_turis, 'かんこうきゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4960_untuk_menusuk, 'つく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5008_efektif, 'こうかてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5098_sepatu, 'くつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5325_lebih_lebih_lagi, 'さらに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5352_jenis, 'けい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5353_keturunan_jepang, 'にっけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6235_untuk_membakar_sesuatu, 'もやす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7599_total, 'ぜんがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7652_lengan_kiri, 'ひだりうで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7653_bingkai_gambar, 'がく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7711_untuk_menunjuk, 'ゆびさす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7766_esensi, 'ほんしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8679_bahan_bakar, 'ねんりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8715_kedua_lengan, 'りょううで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8755_angkutan, 'ゆそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8808_label_harga, 'ねふだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8899_lengan_pendek, 'はんそで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8900_lengan_panjang, 'ながそで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9027_untuk_membangun_sesuatu, 'きずく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9471_sakit_perut, 'ふくつう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9472_perut_kosong, 'くうふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9473_otak, 'ずのう', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3995_bangunan, 'すてきなデザインの建物ですね。', 'Ini adalah bangunan yang dirancang dengan sangat bagus, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3995_bangunan, 'この建物には、たくさんのオフィスが入る予定です。', 'Gedung tersebut akan menampung sejumlah kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3995_bangunan, 'あそこに赤い建物があるのが見えますか？あの赤い建物は、地元のアートギャラリーです。', 'Lihat gedung merah di sana? Gedung merah itu adalah galeri seni lokal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4346_benar_benar, '果たしてこの計画は成功するのだろうか？', 'Akankah rencana ini benar-benar berhasil?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4346_benar_benar, '私の行動は果たしてあれで正しかったのだろうか？', 'Apakah tindakanku benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4346_benar_benar, 'あのカフェでコウイチに会えるかもしれないと思っていたら、果たしてその通りになった。', 'Kupikir aku mungkin bisa bertemu Koichi di kafe, dan ternyata benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4421_penyelidikan, 'この論文はもう一度審査にかけるべきだ。', 'Kita harus meninjau makalah ini lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4421_penyelidikan, '高橋は来週はコンテストの審査をすることになっているからオフィスには来ませんよ。', 'Takahashi tidak akan datang ke kantor minggu depan karena dia dijadwalkan untuk menjadi juri sebuah kontes.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4421_penyelidikan, '私のパスポートに上陸許可の判子を押してくれた入国審査官は、コウイチにそっくりでした。', 'Inspektur imigrasi, yang mencap pasporku dengan stempel izin pendaratan, terlihat mirip dengan Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4452_keputusan, '私は審判でもあり、スポーツ解説者でもあります。', 'Saya bukan hanya seorang wasit, tapi juga seorang analis olahraga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4452_keputusan, 'そのスポーツ大学には、審判コースも設けられています。', 'Perguruan tinggi olahraga itu juga telah mendirikan kursus wasit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4452_keputusan, '審判を下すのは思ったよりも簡単な事ではなかった。', 'Memberikan penilaian tidak semudah yang saya harapkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4499_untuk_menanggalkan_pakaian, 'え、日本ではみんな家の中でクツを脱ぐんですか？', 'Oh, apakah semua orang di Jepang melepas sepatu di rumah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4499_untuk_menanggalkan_pakaian, '日曜はたいていパジャマを脱がずに過ごします。', 'Saya biasanya menghabiskan hari Minggu dengan piyama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4499_untuk_menanggalkan_pakaian, '「分かったよ。気温が何度だろうが、服を脱いでやるよ。」「いいぞ。その意気だ。」', '“Baiklah, aku akan melepas pakaianku tidak peduli berapa pun suhunya.” "Bagus! Itulah semangatnya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4499_untuk_menanggalkan_pakaian, 'ジョナサンは、社員達にオフィスの中では帽子を脱ぐよう指示しました。', 'Jonathan menginstruksikan karyawannya untuk melepas topi selama berada di kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4549_harga_rendah, '私はこのレインブーツを驚くほどの安値で買いましたが、防水加工がされてませんでした。', 'Saya membeli sepatu bot hujan ini dengan harga yang sangat murah, tetapi tidak tahan air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4551_harga_tinggi, 'いつも高値の時に株を買ってしまうんです。', 'Saya selalu membeli saham saat harganya sedang tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4551_harga_tinggi, '先週、家を売ったんですが、希望していたほどの高値では売れませんでした。', 'Kami menjual properti kami minggu lalu, tetapi harganya tidak setinggi yang kami harapkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4551_harga_tinggi, 'コウイチの秘密の日記が、オークションで歴代最高値で落札された。', 'Buku harian rahasia Koichi mencapai rekor harga tertinggi di pelelangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4579_ekonomis, 'この人数なら、タクシーで行く方が経済的じゃない？', 'Dengan jumlah orang sebanyak ini, bukankah lebih hemat jika naik taksi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4579_ekonomis, '私は経済的に苦しい立場にあるため、週五日フルタイムの仕事をしているうえに、週六日パートタイムでも働いています。', 'Karena aku dalam posisi sulit secara finansial, aku bekerja penuh waktu lima hari seminggu dan juga bekerja paruh waktu enam hari seminggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4579_ekonomis, '経済的な余裕は無いが、万が一に備えてできるだけ貯金をするようにしています。', 'Meskipun kami tidak mempunyai banyak kelonggaran finansial, kami berusaha menabung sebanyak mungkin jika terjadi keadaan darurat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4603_aturan, '「それが規則だ。分かったか？」「分かりました。」', '"Itulah peraturannya. Mengerti?" "Saya mengerti."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4603_aturan, '一人でベーコンを食べるのは、規則に反してますよ！	', 'Makan bacon sendiri melanggar aturan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4603_aturan, 'トーフグには、厳しい就業規則が設けられている。', 'Tofugu telah menetapkan peraturan dan regulasi tempat kerja yang ketat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4604_aturan, 'もっと規律正しい生活をしなさい。	', 'Jalani hidup yang lebih disiplin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4604_aturan, 'これからは、ちゃんと規律を守ります。', 'Mulai sekarang, saya akan mengikuti aturan dengan benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4604_aturan, '規律に従って酒は一滴たりとも飲んでいないと断言します。', 'Saya bersumpah saya mengikuti aturan dan tidak minum, bahkan setetes pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4604_aturan, '規律が厳しすぎて逃げ出す仏僧もいるらしい。', 'Disiplin mereka sangat ketat sehingga bahkan beberapa biksu Buddha pun melarikan diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4654_perbedaan, 'この新製品とあの型落ちした商品の違いは何ですか？', 'Apa bedanya produk baru ini dengan model lama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4654_perbedaan, '私たちは、みんなに違いがあることを理解し、認め合う必要があります。', 'Kita perlu memahami bahwa kita semua mempunyai perbedaan dan kita harus menerima satu sama lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4654_perbedaan, '清掃員と副社長の違いなんて全く分からないね。', 'Saya sama sekali tidak memahami perbedaan antara petugas kebersihan dan wakil presiden eksekutif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4655_menjadi_berbeda, '違うアプローチも試してみましょう。', 'Mari kita coba pendekatan yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4655_menjadi_berbeda, '今の人、どこかで会った気がしたんですが、違ったみたいです。', 'Aku merasa seperti pernah bertemu orang itu sebelumnya, tapi ternyata aku salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4655_menjadi_berbeda, 'ベテラン社員とは違って、新入社員の基本給はあまり高くない。', 'Dibandingkan dengan pegawai lama, gaji pokok pegawai baru tidak terlalu tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4655_menjadi_berbeda, '同じ家の中でも、この部屋の内と外で温度が全然違うね。', 'Semuanya adalah rumah yang sama, tetapi suhu di dalam dan di luar ruangan ini sangat berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4656_sampah_yang_dapat_dibakar, '今日は可燃ゴミの日だよね。', 'Hari ini adalah hari dimana sampah bisa dibakar, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4656_sampah_yang_dapat_dibakar, '可燃ゴミの中に不可燃ゴミを交ぜないでくれませんか？', 'Bisakah Anda tidak memasukkan sampah yang tidak dapat dibakar ke dalam sampah yang dapat dibakar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4656_sampah_yang_dapat_dibakar, 'あなたが私から貰うクリスマスプレゼントは、可燃ごみだけだよ。', 'Satu-satunya hal yang Anda dapatkan untuk Natal dari saya adalah sampah yang bisa dibakar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4657_untuk_menjalankan_bisnis, '私たちのカフェは、今日から営業するんです。', 'Kafe kami dibuka untuk bisnis mulai hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4657_untuk_menjalankan_bisnis, 'このお店、先月は営業していたはずなんだけど...。', 'Toko ini seharusnya masih buka bulan lalu…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4657_untuk_menjalankan_bisnis, '道ばたで営業する占い師が、どれくらいのお金を稼ぐのか知ってる？', 'Tahukah Anda berapa penghasilan seorang peramal yang berbisnis di jalan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4658_tradisional, '日本には伝統的な文化がたくさんあります。', 'Jepang memiliki banyak budaya tradisional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4658_tradisional, 'このお祭りは伝統的な行事ですが、今では現代的なエッセンスも加えられています。', 'Festival ini merupakan acara tradisional, namun kini memiliki esensi modern juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4658_tradisional, '着物は日本の伝統的な衣装で、褌は、伝統的な日本の男性用下着です。', 'Kimono adalah pakaian tradisional Jepang, dan fundoshi adalah pakaian dalam tradisional Jepang untuk pria.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4659_hari_ulang_tahun, '誕生日ぐらい、肩の力をぬいたら？', 'Mengapa kamu tidak membiarkan dirimu bersantai di hari ulang tahunmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4659_hari_ulang_tahun, '私だけワニカニの誕生日会に呼んでもらえなくて、無視された気分になった。', 'Saya satu-satunya yang tidak diundang ke pesta ulang tahun WaniKani, jadi saya merasa tersisih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4659_hari_ulang_tahun, '「君の誕生日会に友達を連れて行ってもいい？」「もちろん！ 人数が多ければ多いほど楽しいしね。」', '"Bolehkah aku mengajak teman ke pesta ulang tahunmu?" "Tentu saja! Semakin banyak orang yang kita miliki, akan semakin menyenangkan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4660_untuk_tidur_berlebihan, '寝坊して、試合前に肩をちゃんと作れなかったんだ。', 'Saya ketiduran dan tidak bisa menghangatkan bahu saya dengan baik sebelum pertandingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4660_untuk_tidur_berlebihan, '寝坊しすぎて、ついに社長から肩をたたかれた。', 'Saya terlalu sering ketiduran, sehingga presiden akhirnya menyarankan saya untuk mundur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4660_untuk_tidur_berlebihan, '「しまった！寝坊した！」と思ったんですが、有り難いことに日曜日でした。', 'Saya berpikir, "Oh tidak! Saya ketiduran," namun untungnya, saat itu hari Minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4661_waktu_lampau, 'この形容詞を過去形に変えてください。', 'Silakan ubah kata sifat i ini menjadi bentuk lampau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4661_waktu_lampau, 'この場合は過去形は使わないんですか？', 'Apakah Anda tidak menggunakan bentuk lampau dalam kasus ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4661_waktu_lampau, '過去形と過去完了形の違いをやさしく説明してくれますか。', 'Bisakah Anda menjelaskan perbedaan past tense dan past perfect tense secara sederhana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4662_terlalu_banyak, 'うちの子は、気が多過ぎて一つのことに集中するのが苦手なんです。', 'Anak saya terlalu banyak memikirkan dan kesulitan fokus pada satu hal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4662_terlalu_banyak, '五時過ぎにむかえに行きます。', 'Saya akan menjemput Anda segera setelah jam 5.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4662_terlalu_banyak, '短時間の仕事で良い給料をもらい過ぎだよ。', 'Anda dibayar terlalu banyak untuk bekerja dengan jam kerja sesingkat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4663_rencana_kontra, 'あなたの家ではどんな地震対策をしていますか。', 'Tindakan penanggulangan gempa bumi apa yang Anda lakukan di rumah Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4663_rencana_kontra, '日本政府は少子化対策を進めているって言うけど、どの対策もビミョーなものばかりじゃない？', 'Dikatakan bahwa pemerintah Jepang sedang mengambil langkah-langkah untuk mengatasi penurunan angka kelahiran, namun bukankah semua tindakan tersebut kurang memadai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4663_rencana_kontra, 'コーヒーを入れようとしてボタンを押したら、コーヒーメーカーが火を噴いたの。不具合の原因を見つけて、再発防止対策を講じなきゃいけないわ。', 'Ketika saya mencoba membuat kopi dan menekan tombolnya, pembuat kopinya terbakar. Kita perlu mencari penyebab kerusakan ini dan mengambil tindakan pencegahan agar kejadian serupa tidak terulang kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4664_nilai_nilai, 'やっぱり、若者たちの価値観はどんどんアップデートされていってるよね。', 'Saya rasa nilai-nilai generasi muda semakin diperbarui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4664_nilai_nilai, '私は価値観の違う人達のパーティに出席する気はありません。', 'Saya tidak berniat menghadiri pesta dengan orang-orang yang memiliki nilai berbeda dengan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4664_nilai_nilai, '結婚相手と価値観が近いことって結構大切だと思うんだよねー。', 'Menurut saya, sangat penting untuk berbagi nilai-nilai yang sama dengan pasangan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4665_bagian_rooting, '中学校の時は野球部の応援団の一員でした。', 'Saat aku masih di sekolah menengah, aku adalah anggota bagian pemandu sorak di klub baseball.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4665_bagian_rooting, 'コウイチは、トーフグ応援団について聞かれても、肩をすくめるだけだった。', 'Koichi hanya mengangkat bahunya ketika ditanya tentang bagian rooting Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4665_bagian_rooting, 'ああ、君が応援団長だね？噂はかねがね伺っておるよ。', 'Hei, kamu adalah pemimpin regu pemandu sorak, kan? Saya sudah mendengar banyak tentang Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4668_untuk_membawa, 'レスリングで、相手の選手を担ぐための型を覚えた。', 'Saya mempelajari bentuk gulat yang memungkinkan Anda menangkap lawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4668_untuk_membawa, 'あそこで子供を肩に担いでいるのが私の兄です。', 'Pria di sana yang menggendong seorang anak di bahunya adalah kakak laki-lakiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4668_untuk_membawa, '日本に行ったら、お祭りで神輿を担いでみたい。', 'Jika saya pergi ke Jepang, saya ingin membawa kuil portabel dalam parade.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4669_bertanggung_jawab, '私はこの会社の日本語教育を担当しています。', 'Saya bertanggung jawab atas pendidikan bahasa Jepang di perusahaan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4669_bertanggung_jawab, 'あいにく今担当者が不在なんです。', 'Sayangnya, penanggung jawabnya sedang tidak ada di kantor sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4669_bertanggung_jawab, 'もしこの染みが抜けなかったら、私はこのプロジェクトの担当から外されてしまうかもしれない。', 'Jika noda tersebut tidak hilang, saya mungkin tidak lagi bertanggung jawab atas proyek ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4670_beban, '私、これ以上あなたに負担をかけたくないんです。', 'Aku tidak ingin membebanimu lebih jauh lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4670_beban, 'この仕事は、経験の浅い社員には負担が大きいかもしれません。', 'Tugas ini mungkin memberatkan bagi karyawan yang tidak berpengalaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4670_beban, '10キロのお米を持ち上げることは、彼の腰の負担となった。', 'Mengangkat beras seberat 10kg menjadi beban di punggung bawahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4670_beban, 'あんな男の借金を負担してあげるなんて、あなたの気が知れないわ。', 'Saya tidak mengerti mengapa Anda mau menanggung hutang orang seperti dia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4671_setengah_harga, 'コートの右肩のところに、半額のシールが付いてますよ。', 'Ada stiker obral setengah harga di bahu kanan mantel Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4671_setengah_harga, 'ワオ、全品半額大出血セールだって！', 'Wow, katanya ada obral setengah harga besar-besaran!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4671_setengah_harga, 'そろそろ起きる時間よ！ウォールマートの半額セールに行かなきゃいけないんだから。', 'Saatnya bangun! Kita harus pergi ke penjualan setengah harga Walmart hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4672_jumlah_besar, '会社は多額の投資を行って新しい製品を開発したが、失敗に終わった。', 'Perusahaan menginvestasikan sejumlah besar uang untuk mengembangkan produk baru, namun berakhir dengan kegagalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4672_jumlah_besar, '私は多額の借金を負ってしまったことを、まだ家族に言えずにいます。', 'Saya masih belum memberi tahu keluarga saya bahwa saya telah menimbun hutang dalam jumlah besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4672_jumlah_besar, '最終的に会議はうまくいって、なんとか我々の科学調査への多額の寄付金を約束してもらうことができたよ。', 'Pada akhirnya pertemuan tersebut berjalan lancar, dan kami berhasil membuat mereka menjanjikan sumbangan besar untuk penelitian ilmiah kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4673_jumlah_tahunan, '月額よりも年額の方がお得ですよ。', 'Biaya tahunan adalah kesepakatan yang lebih baik daripada biaya bulanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4673_jumlah_tahunan, '固定資産税の年額を見ると、その高さにビックリしてしまいます。', 'Ketika saya melihat jumlah pajak properti tahunan, saya terkejut betapa mahalnya biayanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4673_jumlah_tahunan, '前回のサービスも良かったとは思いますが、今回の新サービスはもっとよくなったと思うんです。それでいて、会員費は変わらず年額80ドルのままなんですよ。', 'Menurut saya pelayanan sebelumnya sudah bagus, namun menurut saya pelayanan baru ini lebih baik lagi. Apalagi biaya keanggotaannya masih hanya delapan puluh dolar setahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4674_jumlah_bulanan, 'それって月額いくらですか？', 'Berapa biayanya per bulan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4674_jumlah_bulanan, 'このアプリは、月額たったの五ドルです。', 'Aplikasi ini hanya $5 per bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4674_jumlah_bulanan, '月額基本料金が安いスマホのキャリアに変えました。', 'Saya beralih ke operator ponsel pintar baru dengan biaya bulanan dasar yang rendah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4674_jumlah_bulanan, '月額たったの5ドルでできる新しい日本語学習体験を促進するための広告キャンペーンを打ち始めます。', 'Kami memulai kampanye iklan untuk mendorong pengalaman belajar bahasa Jepang baru dengan biaya hanya lima dolar sebulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4675_jumlah_tetap, '定額のプランにしました。', 'Saya memilih paket tarif tetap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4675_jumlah_tetap, 'ワニカニは月々定額で利用できますよ。', 'WaniKani tersedia dengan jumlah bulanan tetap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4675_jumlah_tetap, 'あの〜、定額貯金の口座を開設したいんですが。', 'Permisi, saya ingin membuka rekening tabungan deposito tetap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4676_jumlah_sisa, '念のため、ICカードのチャージ残額を確認しておくよ。', 'Untuk berjaga-jaga, saya akan memeriksa berapa banyak uang yang tersisa di kartu IC saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4676_jumlah_sisa, 'やばっ、残額、五百円もないわ。', 'Oh tidak, jumlah sisanya kurang dari 500 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4676_jumlah_sisa, '残額は全て寄付します。', 'Saya akan menyumbangkan seluruh jumlah yang tersisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4677_produk, 'あの会社はこの製品について本当のことを言っていない気がするんです。', 'Saya merasa perusahaan tidak mengatakan yang sebenarnya tentang barang-barang manufaktur tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4677_produk, 'この製品が売れなかったら、その後はどうする気なんだ？', 'Jika produk ini tidak laku, apa yang akan Anda lakukan setelahnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4677_produk, '我が社の新製品に関する会議を火曜日の午後に延期することは可能かな？', 'Soal rapat produk baru kita, apakah bisa ditunda sampai Selasa sore?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4678_manufaktur, '私たちは今、プロトタイプの製作に取りかかっています。', 'Kami sekarang sedang mengerjakan produksi prototipe.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4678_manufaktur, 'この製品を実際に製作するまでに、何度も失敗をして、その度にくじけそうになりました。', 'Sebelum kami benar-benar memproduksi produk ini, kami gagal berkali-kali dan hampir kehilangan semangat setiap saat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4678_manufaktur, '村田製作所は、電子部品を製造している日本の会社です。', 'Murata Manufacturing Co., Ltd. adalah perusahaan Jepang yang memproduksi komponen elektronik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4679_kayu, 'このテーブルは木製に見えますが、実はプラスチック製です。', 'Meja ini terlihat seperti terbuat dari kayu, namun kenyataannya terbuat dari plastik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4679_kayu, 'この木製のオルゴールはディズニーランドのお土産なんです。', 'Kotak musik kayu ini merupakan oleh-oleh dari Disneyland.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4679_kayu, '俺の木製バットは、あいつの内角速球によって折れてしまったんだ。', 'Pemukul kayuku patah karena fastball bagian dalam yang dilempar oleh orang itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4680_buatan_jepang, 'この肩かけは、日本製ですか？', 'Apakah selendang ini buatan Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4680_buatan_jepang, '村田さんは日本製のものにこだわりすぎている。', 'Pak Murata terlalu terobsesi dengan barang-barang buatan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4680_buatan_jepang, 'その日本製の刀の柄には、美しい宝石が散りばめられている。', 'Gagang pedangnya dibuat di Jepang dan bertatahkan permata yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4681_dibuat_di_cina, '中国製だからってだけで差別するのは止めてください。', 'Tolong jangan mendiskriminasikannya hanya karena itu buatan China.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4681_dibuat_di_cina, '中国は長い間アフリカにたくさん投資してきたからか、今ではアフリカは中国製のものであふれ返っている。', 'Mungkin karena Tiongkok telah lama berinvestasi besar-besaran di Afrika, Afrika kini penuh dengan barang-barang buatan Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4681_dibuat_di_cina, 'インターネット上で、中国製の日本語学習サイトがどれだけあるのかについては、正確な数字は今は分かりません。調べてのちほどお答えします。', 'Sayangnya, saya tidak yakin berapa jumlah pasti situs pembelajaran bahasa Jepang di internet saat ini yang dibuat di Tiongkok. Saya akan memeriksanya dan menghubungi Anda kembali nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4682_buatan_as, '昨日、あのアメリカ製のスーツの肩をつめてもらいました。', 'Saya mengenakan setelan jas buatan Amerika di bagian bahu kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4682_buatan_as, 'そのアメリカ製の時計、新しい型だよね？', 'Jam tangan buatan Amerika itu model baru ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4682_buatan_as, 'アメリカ製の寿司は食べられないだって？好き嫌いするんじゃないよ！', 'Maksudmu kamu tidak boleh makan sushi buatan Amerika? Jangan terlalu pilih-pilih!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4683_buatan_sendiri, '美味しい自家製のベーコンを使っています。', 'Kami menggunakan bacon buatan sendiri yang lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4683_buatan_sendiri, '良かったら、自家製のソーダでも飲みますか？', 'Apakah Anda ingin minum soda buatan sendiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4683_buatan_sendiri, '私がホテルで自家製ビールを楽しんでいる時に、警察が自宅へ襲撃を決行したようです。', 'Saat saya sedang menikmati bir buatan rumah saya di kamar hotel tadi malam, polisi sepertinya melakukan penggerebekan di rumah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4684_ekspor, 'うちの工場で作られた製品は、アジア全体に輸出されています。', 'Produk yang dibuat di pabrik kami diekspor ke seluruh Asia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4684_ekspor, '輸出のことについてはよく分かりませんが、輸入のことについては任せてください。', 'Meskipun saya tidak tahu banyak tentang masalah ekspor, Anda dapat mengandalkan saya dalam hal impor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4684_ekspor, '石油の輸出が減少すると、多くの産業が直接的または間接的に影響を受けます。 ', 'Ketika ekspor minyak bumi berkurang, hal ini secara langsung atau tidak langsung berdampak pada banyak industri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4684_ekspor, '出張の際にヘロウィンを密輸出しようとしたため、彼は試験期間のうちに契約を打ち切られた。', 'Dia dipecat selama masa percobaannya karena mencoba menyelundupkan heroin dalam perjalanan bisnis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4685_transfusi_darah, 'お前の気の済むまで、オレの血を輸血するがいい。', 'Pindahkan darahku sebanyak yang kamu mau sampai kamu puas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4685_transfusi_darah, '輸血によってやっと兄の意識がもどりました。', 'Kakak saya akhirnya sadar kembali berkat transfusi darah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4685_transfusi_darah, '彼女はちょうど東京に向かおうとしていた矢先に交通事故に巻き込まれ、現在病院で輸血を受けている。', 'Dia mengalami kecelakaan mobil ketika dia baru saja hendak berangkat ke Tokyo, dan sekarang dia mendapatkan transfusi darah di rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, '不燃ゴミは火曜日に出してください。', 'Silakan membuang sampah yang tidak dapat dibakar pada hari Selasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, '不燃ゴミをちゃんとすてることができて、肩の荷が下りた。', 'Suatu beban pikiran hilang ketika saya berhasil membuang sampah yang tidak dapat dibakar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, 'どうも、水曜日に不燃ゴミを忘れずに出すという責任が、夫の肩に重くのしかかっているようなのよね。', 'Rupanya, tanggung jawab membuang sampah yang tidak bisa dibakar tanpa lupa di hari Rabu sangat berat berada di pundak suami saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4687_untuk_merayakan, 'こんな年だし、誕生日を祝われるのはちょっとはずかしい。', 'Di usiaku, merayakan ulang tahunku agak memalukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4687_untuk_merayakan, 'オフィスに全ユーザーを呼んで、ワニカニの成功とJLPTの合格を祝う飲み会を開く夢を見ました。', 'Saya bermimpi di mana kami mengundang semua pengguna kami ke kantor dan mengadakan pesta untuk merayakan keberhasilan WaniKani dan kelulusan JLPT mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4687_untuk_merayakan, '日曜日におじいちゃんの還暦を祝うために、中華を食べに行きます。', 'Kami akan pergi makan masakan Cina untuk merayakan ulang tahun kakek yang ke-60 pada hari Minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4688_hari_libur_nasional, '今度の祝日の予定、もう立てた？', 'Apakah Anda sudah membuat rencana untuk liburan berikutnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4688_hari_libur_nasional, 'この間の祝日はヒマだったので、洋服の型を取ったりしていました。', 'Saya tidak melakukan apa pun pada liburan terakhir, jadi saya melakukan hal-hal seperti memotong pola kertas untuk gaun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4688_hari_libur_nasional, '母は祝日はいつもかなり派手な格好をしている。', 'Ibuku selalu memakai pakaian paling mencolok di hari libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4689_untuk_dikirim, 'トーフグからの手紙がちょうど今届きました。', 'Surat dari Tofugu baru saja terkirim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4689_untuk_dikirim, '空港に置き忘れた荷物が昨日届いた。', 'Bagasi yang saya lupakan di bandara tiba kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4689_untuk_dikirim, 'あのバーテンダー、うちの職員に気があるみたいでさ、今日もオフィスに花束が届いたよ。', 'Bartender itu sepertinya menyukai salah satu staf kami. Buket lain tiba di kantor hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4690_sempit, 'こんな狭い道、本当に通れるかな？', 'Apakah jalan sempit seperti itu benar-benar bisa dilewati?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4690_sempit, '私のアパート、めっちゃ狭いけど引かないでね。', 'Apartemen saya sangat kecil, tapi tolong jangan kecewa dengan hal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4690_sempit, 'コウイチ、おもちゃを片付けなさい！さもないと、暗くて狭いクローゼットに閉じ込めるわよ。', 'Koichi, simpan mainanmu! Jika tidak, aku akan memasukkanmu ke dalam lemari yang gelap dan sempit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4690_sempit, '最近、父の言動を見ていると、本当に心が狭い人だなぁと感じます。母がどうして父と結婚したのか、未だに謎です。', 'Baru-baru ini, ketika aku mengamati apa yang ayahku katakan dan lakukan, aku merasa bahwa dia benar-benar orang yang berpikiran sempit. Aku masih bertanya-tanya mengapa ibuku menikah dengannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4691_bahu, 'ビエトはいつも、肩で風を切って歩いている。', 'Viet selalu berjalan dengan angkuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4691_bahu, '母は肩からカバンをかけて、すぐに出かけました。', 'Ibuku menyampirkan tas di bahunya dan langsung keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4691_bahu, '肩がこっているんだけど、ちょっともんでくれない？', 'Bahuku kaku, jadi bisakah kamu menggosoknya sedikit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4692_lengan, 'アイツのラーメン作りの腕は、プロのラーメン職人と肩をならべるほどだ。', 'Keterampilan membuat ramennya setara dengan koki ramen profesional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4692_lengan, '腕の力がなさすぎて荷物が運べない。', 'Kekuatan lengan saya terlalu sedikit untuk membawa barang bawaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4692_lengan, '「フグのこと、どう思う？」「正直に言うと、私の好みじゃないわ。私は筋肉モリモリの腕の男が好きなの。」', '"Apa pendapatmu tentang Fugu?" “Sejujurnya, dia bukan tipeku. Aku lebih suka pria dengan lengan berotot.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4693_jam_tangan, '私は高級腕時計を買いたいとは全然思いません。', 'Saya sama sekali tidak tertarik untuk membeli jam tangan mewah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4693_jam_tangan, 'これは父の形見の腕時計なんです。', 'Jam tangan ini adalah kenang-kenangan dari ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4693_jam_tangan, '俺の無くなった腕時計についてちょっと話がしたいんだけど、いいか？あまり時間は取らせないよ。', 'Bisakah kita bicara tentang jam tangan saya yang hilang sebentar? Saya tidak akan menyita terlalu banyak waktu Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4694_pinggang, 'あのバッターは腰が強い。', 'Adonan itu memiliki pinggang yang kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4694_pinggang, '腰に力を入れて立ってください。', 'Tolong berikan kekuatan di pinggang Anda saat berdiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4694_pinggang, '腰に激痛が走ってるんだ。もう一歩も歩けないよ。', 'Pinggang saya sangat sakit. Saya tidak bisa mengambil langkah lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4695_untuk_menyentuh_sesuatu, '私のパソコンに触るな！', 'Lepaskan komputerku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4695_untuk_menyentuh_sesuatu, 'これを手で触ってみると、温かい感じがします。', 'Saat aku menyentuhnya dengan tanganku, terasa hangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4695_untuk_menyentuh_sesuatu, 'あの男が、急に私の肩を触ったんです。', 'Pria itu tiba-tiba menyentuh bahuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4695_untuk_menyentuh_sesuatu, 'わたしは猫を触るのが大好きですが、うちの猫は他人に触られるのが大嫌いです。', 'Saya suka memelihara kucing, tetapi kucing kami tidak suka jika orang asing menyentuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4695_untuk_menyentuh_sesuatu, '私は、電話をしているとき、髪を触る癖があります。', 'Saat saya sedang menelepon, saya mempunyai kebiasaan menyentuh rambut saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4696_antena, 'アリの触角も美しいが、ちょうちょうの触角の方が一層美しい。', 'Antena semut memang indah, tetapi antena kupu-kupu lebih indah lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4696_antena, '虫の触角は触覚だけでなく、臭覚の機能も備えている。', 'Antena serangga tidak hanya berfungsi sebagai sensor sentuhan tetapi juga memiliki fungsi penciuman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4696_antena, '蝸牛の触角の先端に目があるなんて知りませんでした！', 'Saya tidak tahu kalau mata siput ada di ujung antenanya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4697_menyentuh, 'このストールの感触、シルクみたい。', 'Syal ini terasa seperti sutra.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4697_menyentuh, '今のところの感触としては、ユーザーは新しいアップデートに好感を持ってるみたい。', 'Sejauh ini perasaannya adalah pengguna menyukai pembaruan baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4697_menyentuh, '僕は魚に触った感触が大嫌いだからフグとはどうやってもいい友達になれるとは思えないよ。', 'Aku sangat benci perasaan ikan saat disentuh, jadi menurutku tidak mungkin kita bisa menjadi teman baik, Fugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4698_tercatat, 'その記事なら五月号所載ですよ。', 'Jika Anda mencari artikel itu, artikel itu dicetak di edisi Mei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4698_tercatat, '確か『Tofugu』所載の記事で、助詞の「は」と「が」の違いが解説されていたはずです。', 'Saya yakin ada artikel yang diterbitkan di Tofugu yang menjelaskan perbedaan antara partikel "wa" dan "ga".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4698_tercatat, '『古事記』所載の日本最古の和歌について何か知っていますか？', 'Tahukah Anda tentang waka Jepang pertama yang diterbitkan di Kojiki?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4699_catatan, 'ここには、「ビエトは気の弱いヤクザだ」という記載があります。', 'Ada laporan di sini yang mengatakan bahwa Viet adalah yakuza yang penakut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4699_catatan, 'ここには何も記載しないでください。', 'Tolong jangan merekam apa pun di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4699_catatan, '小論文を提出したが、日付を記載するのを忘れてしまった。', 'Saya menyerahkan esai saya tetapi saya lupa mencatat tanggalnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4700_untuk_ditempatkan, 'え、リンゴ八個もあるの？このトレイに載るかな？', 'Tunggu, ada delapan apel? Akankah mereka muat di nampan ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4700_untuk_ditempatkan, 'スーツケースなら、まだ車のトランクに載ってるよ。', 'Kalau di cari kopernya masih ada di bagasi mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4700_untuk_ditempatkan, '私たちの記事がネイチャーに載りました！', 'Artikel kami dicatat di majalah Nature!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4701_lebih_banyak_lagi, 'より一層の努力で、ワニカニをより良いサイトにしてみせます。', 'Kami akan berupaya lebih keras lagi untuk membuat WaniKani menjadi situs yang lebih baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4701_lebih_banyak_lagi, 'こういう考え方がより一層大切になってくると思っています。', 'Saya percaya bahwa pemikiran seperti ini menjadi jauh lebih penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4701_lebih_banyak_lagi, 'かわいそうなことに、彼の視力はレーシック手術の後に一層悪化してしまった。', 'Saya merasa kasihan karena penglihatannya semakin memburuk setelah operasi Lasik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4702_lapisan, 'このファッションは、若者層に人気です。', 'Fashion ini populer di kalangan demografi muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4702_lapisan, 'ミルフィーユとは、パイ生地を何層にも重ね、間にクリームや果物などをはさんだケーキのことです。', 'Mille-feuille adalah kue yang dibuat dengan melapisi adonan kue beberapa kali dan mengapit krim, buah, atau isian lainnya di antaranya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4702_lapisan, 'ホッケーの競技場さえも、オゾン層の破壊に関係しているって、知ってたかい？', 'Tahukah Anda arena hoki berkaitan dengan rusaknya lapisan ozon?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4703_model, '今から、シリコンの型からゼリーを取り出します。', 'Sekarang kita akan mengeluarkan jeli dari cetakan silikon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4703_model, 'おそうじロボットは、古い型より新型を買った方がいいですよ。', 'Sedangkan untuk robot pembersih, lebih baik membeli model baru daripada yang lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4703_model, 'お使いのパソコンの型番って、分かりますか？', 'Tahukah Anda nomor model komputer Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4703_model, '石こうでワニカニの像の型を作るつもりです。', 'Kita akan membuat cetakan patung WaniKani dari plester.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4704_khas, 'どうして彼のことを典型的な日本人だっていうの？', 'Mengapa Anda menyebutnya orang Jepang pada umumnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4704_khas, '川村さんは典型的な会社人間です。', 'Tuan Kawamura adalah tipikal orang korporat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4704_khas, '典型的なハリウッド映画って感じだったね。', 'Rasanya seperti film Hollywood pada umumnya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4704_khas, 'それは日本語学習者が犯す典型的な間違いだね。', 'Itu adalah kesalahan umum yang dilakukan pembelajar bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4705_prototipe, 'へー、これがワニカニ人形の原型なんですか。', 'Oh jadi ini prototipe asli boneka WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4705_prototipe, 'この商品は、最初の原型から多くの改善が加えられて、今の形になったんです。', 'Produk ini telah mengalami banyak penyempurnaan sejak prototipe awal hingga menjadi seperti sekarang ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4705_prototipe, '私たちはまず初めに、粘土で彫刻の原型を作るんです。', 'Kami biasanya membuat model dari tanah liat pada awalnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4706_gedung_pemerintahan_metropolitan, '都庁の前には、１９９５年の型のホンダ・シビックが停まっていた。', 'Ada Honda Civic model 1995 yang terparkir di depan Pemko Metro.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4706_gedung_pemerintahan_metropolitan, '兄は、都庁の仕事にうつってから、一層熱心に働くようになった。', 'Sejak kakak saya pindah kerja di Pemerintahan Metropolitan Tokyo, dia semakin berdedikasi pada pekerjaannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4706_gedung_pemerintahan_metropolitan, '東京都庁の展望台に行った事はありますか。', 'Apakah Anda pernah ke dek observasi Gedung Pemerintahan Metropolitan Tokyo?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4707_departemen_kepolisian_metropolitan, '男性はぼったくりバーで40万円をだまし取られ、警視庁に相談していた。', 'Seorang pria ditipu sebesar 400.000 yen di sebuah bar penipu dan sedang berkonsultasi dengan Departemen Kepolisian Metropolitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4707_departemen_kepolisian_metropolitan, 'この間、警視庁で働いている友人と話をしてたら、ビエトは暴力団業界では無視できない男だって言ってたよ。', 'Saat aku berbincang dengan temanku yang bekerja di Departemen Kepolisian Metropolitan beberapa hari yang lalu, dia memberitahuku bahwa Viet adalah orang yang patut diperhitungkan di dunia yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4707_departemen_kepolisian_metropolitan, '私の兄は、東京都警視庁公安部に勤めています。', 'Kakak saya bekerja di Biro Keamanan Umum Departemen Kepolisian Metropolitan Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4708_badan_kepolisian_nasional, 'どうして警察庁は犯人の肩を持つような発言をしているんだ？', 'Mengapa Mabes Polri melontarkan pernyataan yang terkesan berpihak pada tersangka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4708_badan_kepolisian_nasional, '今日は、警察庁のウェブサイトを見て、警察庁の歴史について学びました。', 'Hari ini, saya mengunjungi website Badan Kepolisian Nasional dan mempelajari sejarahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4708_badan_kepolisian_nasional, '警視庁と警察庁の違いは何ですか？', 'Apa perbedaan antara Departemen Kepolisian Metropolitan dan Badan Kepolisian Nasional?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4709_kantor_pemerintah, '官庁は少数意見を無視することが多い。', 'Instansi pemerintah seringkali mengabaikan pendapat minoritas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4709_kantor_pemerintah, '国家の意思を決定する官庁が東京に集中していることは、長らく危険視されてきました。', 'Fakta bahwa semua lembaga pemerintah yang mengambil keputusan untuk negara terkonsentrasi di Tokyo telah lama dianggap sebagai suatu hal yang memprihatinkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4709_kantor_pemerintah, '主に官庁内で使われる特別な用語ってありますか？', 'Apakah ada kata-kata spesifik yang terutama digunakan di kantor-kantor pemerintah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4710_untuk_mengabaikan, '法律を無視するような事はできません。', 'Kita tidak bisa melakukan sesuatu yang melanggar hukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4710_untuk_mengabaikan, 'トーフグはユーザーの意見を無視しない、立派な会社です。', 'Tofugu adalah perusahaan luar biasa yang tidak mengabaikan opini pengguna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4710_untuk_mengabaikan, '休暇届を申請したが、上司に無視された。', 'Saya meminta hari libur karena alasan pribadi, namun atasan saya mengabaikannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4711_indra_penglihatan, 'うーん…もっと消費者にアピールできるような、視覚的なデザインにしたいよね。', 'Hmm... Saya ingin membuat desain yang lebih menarik secara visual sehingga dapat menarik konsumen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4711_indra_penglihatan, '学習者が理解しやすいように、視覚情報と音声情報を組み合わせたレッスンを提供しています。', 'Kami memberikan pelajaran yang menggabungkan informasi visual dan pendengaran untuk memudahkan pembelajar memahaminya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4711_indra_penglihatan, '焼きそばスパゲッティを食べたが、視覚のイメージと味が一致しないので脳が混乱した。', 'Saya makan spageti yakisoba, tapi otak saya bingung karena gambar visual dan rasanya tidak cocok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4711_indra_penglihatan, '視覚障害のある社員を差別したとの理由から、上司が解雇された。', 'Atasan saya dipecat karena melakukan diskriminasi terhadap pekerja penyandang disabilitas penglihatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4712_rabun_jauh, 'メガネをかけてるのはファッションじゃなくて、単に近視なだけですよ。', 'Saya memakai kacamata bukan karena fashion tetapi karena kepicikan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4712_rabun_jauh, 'このコンタクトレンズは、遠視と近視両方に対応しています。', 'Lensa kontak ini mengakomodasi rabun jauh dan rabun jauh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4712_rabun_jauh, '私は近視と乱視の両方があります。', 'Saya menderita rabun jauh dan astigmatisme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4713_rabun_jauh, '遠視なので、メガネが必要なんです。', 'Saya rabun jauh, jadi saya perlu kacamata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4713_rabun_jauh, '毎年遠視が悪化していっています。', 'Rabun jauh saya semakin memburuk setiap tahunnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4713_rabun_jauh, '遠視が進んできたので、そろそろ老眼鏡を買わなきゃいけないかもしれない。', 'Rabun jauh saya semakin parah, jadi saya mungkin harus segera membeli kacamata baca.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4714_untuk_bersinar, '暗い部屋に光が差しています。', 'Cahaya menyinari ruangan gelap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4714_untuk_bersinar, 'よく日が差す部屋に変えてもらえませんか。', 'Bisakah Anda mengubah ruangan menjadi ruangan yang memiliki sinar matahari cerah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4714_untuk_bersinar, '窓の外を見ると、もう雨が上がって薄日が差していた。', 'Ketika saya melihat ke luar jendela, hujan sudah berhenti dan cahaya lembut mulai bersinar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4715_diskriminasi, '差別が差別を呼んだ。', 'Diskriminasi melahirkan diskriminasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4715_diskriminasi, 'それは人種差別ですよ。分かってますか？', 'Itu diskriminasi rasial. Apakah kamu mengerti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4715_diskriminasi, 'その俳優は、差別的な発言が問題となり、仕事を干された。', 'Komentar diskriminatif aktor tersebut menjadi masalah dan dia kehilangan pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4716_persimpangan, '交差点で赤信号を無視した車がいた。', 'Ada sebuah mobil yang melewati lampu merah di sebuah persimpangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4716_persimpangan, '次の交差点を左に曲がって下さい。', 'Silakan belok kiri di persimpangan berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4716_persimpangan, '日本で一番有名な交差点は渋谷駅前の交差点だと思います。', 'Menurut saya persimpangan paling terkenal di Jepang adalah persimpangan di depan Stasiun Shibuya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4717_perbedaan_waktu, 'まだ時差ボケに苦しんでいるんです。', 'Saya masih menderita jet lag.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4717_perbedaan_waktu, '日本との時差を聞いて、気が遠くなりました。', 'Saya kewalahan ketika mendengar perbedaan waktu dengan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4717_perbedaan_waktu, '東京とポートランドの時差はどのぐらいありますか？', 'Berapa perbedaan waktu antara Tokyo dan Portland?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4718_pipa, '管を取り付ける前に、部品を確認してください。', 'Sebelum memasang tabung, harap periksa komponennya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4718_pipa, 'カテーテル検査では、プラスチック製の管を使います。', 'Kateterisasi menggunakan tabung plastik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4718_pipa, '病院のベッドで目を覚ましたら、鼻から管が入っていて気持ち悪かったです。', 'Ketika saya terbangun di ranjang rumah sakit, ada selang yang masuk melalui hidung saya dan rasanya sangat tidak nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4719_pengelolaan, 'ヒカルが日本に行っている間、アパートの管理を任されました。', 'Saya bertugas mengurus apartemen Hikaru selama dia berada di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4719_pengelolaan, 'トーフグは実はアメリカ政府に管理されているんだ。', 'Tofugu sebenarnya dikelola oleh pemerintah Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4719_pengelolaan, '時間管理法の授業の講師が遅刻しているなんて、信じられない。', 'Saya tidak percaya dosen mata kuliah strategi manajemen waktu terlambat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4720_pembuluh_darah, '父は血管が切れそうなぐらい怒っていた。', 'Ayah saya sangat marah sampai pembuluh darahnya menonjol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4720_pembuluh_darah, 'おじいちゃんは、今日は病院で血管の検査をしてもらうことになっているはずです。', 'Kakek seharusnya memeriksakan pembuluh darahnya di rumah sakit hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4720_pembuluh_darah, '皮膚が白いので、腕の血管が見えてしまいます。', 'Kulitku pucat, jadi aku bisa melihat pembuluh darah di lenganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4722_target, 'トーフグは、日本語学習者対象のセミナーを企画しています。', 'Tofugu merencanakan lokakarya untuk pelajar bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4722_target, 'このキャンペーンの対象エリアは関西のみとなっています。', 'Area sasaran kampanye ini terbatas pada wilayah Kansai saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4722_target, '勤続三十年の従業員は、勤続手当として二週間連続有給休暇の対象となる。', 'Karyawan yang bekerja di perusahaan ini selama tiga puluh tahun akan mendapat libur dua minggu berturut-turut dengan gaji penuh sebagai imbalan atas pengabdiannya selama bertahun-tahun kepada perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4723_gejala, 'これは、科学的には説明できない現象です。', 'Ini adalah fenomena yang tidak bisa dijelaskan secara ilmiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4723_gejala, 'その時、なんとも不思議な現象が起こったんです。', 'Pada saat itulah terjadi fenomena yang agak misterius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4723_gejala, '日本にUFO現象を調査しているUFO団体はありますか？', 'Apakah ada kelompok UFO yang menyelidiki fenomena UFO di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4724_cuaca, '気象予報によると、明日は大雪になるそうです。', 'Menurut ramalan cuaca, besok akan turun salju lebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4724_cuaca, '気象庁は、大型台風が接近していると発表しました。', 'Badan Meteorologi Jepang mengumumkan bahwa topan besar akan segera terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4724_cuaca, '気象予報士と気象学者の違いが説明できますか。', 'Bisakah Anda menjelaskan perbedaan antara peramal dan ahli meteorologi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4725_untuk_mengukur, '調味料は、レシピ通りきちんと量ってくださいね。', 'Pastikan untuk menakar bumbu dan bumbu dengan benar sesuai resep.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4725_untuk_mengukur, '空いている時間でここにある荷物の重さを量って、この紙に書いておいてください。', 'Jika Anda punya waktu, harap timbang barang bawaan Anda di sini dan tuliskan beratnya di kertas ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4725_untuk_mengukur, '体重計で自分の体重を量るのが恐い。', 'Saya takut menimbang diri saya sendiri pada timbangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4726_kuantitas, 'いや、この量は多すぎでしょ。', 'Tidak, tentu saja jumlah ini berlebihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4726_kuantitas, '今は少しの量の食事さえもとる気がしません。', 'Saya tidak ingin makan meski dalam jumlah kecil saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4726_kuantitas, '仕事の量を考えると、この給料じゃ割りに合わない。', 'Mengingat banyaknya pekerjaan, kami dibayar dengan buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4727_jumlah_besar, '単に気が変わったという理由で、前日に大量のドーナツの注文をキャンセルした。', 'Saya membatalkan pesanan donat dalam jumlah besar sehari sebelumnya, hanya karena saya berubah pikiran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4727_jumlah_besar, '兄はデスクの引き出しに、大量にアイドルの生写真をかくしている。', 'Adikku menyembunyikan sejumlah besar cetakan foto idola di laci mejanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4727_jumlah_besar, '台所にアリが大量発生しているのを見て、完全に取り乱してしまいました。', 'Saya benar-benar ketakutan ketika melihat banyaknya semut di dapur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4728_kuantitas_tetap, '定量オーバーですよ。', 'Itu sudah melebihi jumlah yang ditentukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4728_kuantitas_tetap, 'ワニカニには、「売上1000万ドルアップ」「コスト九割カット」みたいな分かりやすい定量的な目標が必要だと思う。', 'Saya pikir WaniKani memerlukan tujuan yang jelas dan kuantitatif seperti "Meningkatkan penjualan sebesar $10 juta" atau "Memotong biaya sebesar 90%.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4728_kuantitas_tetap, 'どうにかしてこのリスクを定量化する方法はないのかな。', 'Apakah tidak ada cara untuk mengubah jumlah risiko yang ditetapkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4728_kuantitas_tetap, 'まずは定量的なデータを集めて、それを分析しましょう。', 'Pertama-tama mari kita kumpulkan data kuantitatif dan menganalisisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4729_batas, 'コウイチは一週間も生死の境をさまよった。', 'Koichi berada di batas antara hidup dan mati selama seminggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4729_batas, 'この川がちょうど両州の境となっているんですよ。', 'Sungai ini menjadi batas antara kedua negara bagian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4729_batas, '今日を境に三日坊主の自分に決別するんだ！', 'Mulai hari ini, aku akan mengucapkan selamat tinggal pada diriku yang tidak pernah terikat pada sesuatu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4730_perbatasan_nasional, '私の妹は、この国境の向こう側にいるんです。', 'Adik perempuan saya berada di seberang perbatasan negara ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4730_perbatasan_nasional, '日本は海に囲まれているんだから歩いて国境をこえるなんて無理だよ。', 'Mustahil melintasi perbatasan negara dengan berjalan kaki karena Jepang dikelilingi lautan lho?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4730_perbatasan_nasional, '国境警備隊の隊員がアメリカに不法入国した外国人を国境のそばの茂みで見つけることはよくあることです。', 'Agen Patroli Perbatasan biasanya menemukan orang asing yang memasuki AS secara ilegal di semak-semak dekat perbatasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4731_batas, 'あの橋があるところが、二つの国の境界です。', 'Lokasi jembatan itu berada di perbatasan dua negara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4731_batas, '最近、妻に心の境界線を引かれている気がする。', 'Akhir-akhir ini, saya merasa istri saya telah menetapkan batasan emosional di antara kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4731_batas, '母と私は、いつもお互いの個人的な境界線のようなものを気にしています。', 'Saya dan ibu saya selalu berhati-hati terhadap batasan pribadi masing-masing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4732_lingkungan, '家の周りの環境がよくないので、引っこすことにしました。', 'Saya memutuskan untuk pindah karena lingkungan di sekitar rumah saya tidak bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4732_lingkungan, '生まれ持った性格っていうのもあるだろうけど、環境によって変えられることもあると思うんだ。', 'Tentu saja kepribadian bawaan seseorang berperan, namun menurut saya ada beberapa hal yang dapat dibentuk oleh lingkungan seseorang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4732_lingkungan, '環境保護の観点では、固形石けんの方が液体石けんよりも優れている。', 'Dari sudut pandang lingkungan, sabun batangan biasanya lebih baik dibandingkan sabun cair.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4733_senjata, 'カフェをやめて、新しく武器の輸出のビジネスを始めることにしました。', 'Saya telah memutuskan untuk keluar dari bisnis kafe dan memulai bisnis baru dengan mengekspor senjata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4733_senjata, '私は、このゲームで武器のデザインを担当しています。', 'Saya bertugas mendesain senjata di game ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4733_senjata, '全ての警察官に武器を使う資格があるわけではないというのは本当ですか？', 'Benarkah tidak semua petugas polisi memenuhi syarat untuk menggunakan senjatanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4734_seni_bela_diri, '武道の経験が無い日本人はたくさんいます。', 'Ada banyak orang Jepang yang tidak memiliki pengalaman dalam seni bela diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4734_seni_bela_diri, '武道でコウイチと肩をならべる者はいません。', 'Koichi tidak ada bandingannya dalam seni bela diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4734_seni_bela_diri, '五十肩で武道が続けられなくなりました。', 'Saya menjadi tidak mampu mengikuti seni bela diri karena bahu saya yang membeku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4735_samurai, '武士は刀を肩に担いで歩いていた。', 'Samurai itu sedang berjalan sambil membawa pedang katana di bahunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4735_samurai, 'ビエトは武士のようにストイックに走り続け、フルマラソンを完走した。', 'Viet terus berlari dengan tabah seperti seorang samurai dan menyelesaikan maraton penuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4735_samurai, '武士は食わねど高楊枝って言うじゃない？', 'Dikatakan bahwa "Seorang samurai akan menggunakan tusuk gigi meskipun dia belum makan", bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4736_kualitas, '上質の革ぐつを買い求めるため、イタリアまで行くことにした。', 'Untuk membeli sepatu kulit berkualitas tinggi, saya memutuskan untuk pergi ke Italia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4736_kualitas, '量よりも質が大事でしょ、と、コウイチは一個50セントのハンバーガー10個をほおばりながら言った。', '“Lebih penting memiliki kualitas daripada kuantitas, tahu?” kata Koichi sambil menjejali mulutnya dengan sepuluh hamburger seharga 50 sen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4736_kualitas, '外国語指導助手の質は人によって全然違うので、心配です。', 'Kualitas asisten guru bahasa asing berbeda-beda pada setiap orang dan saya mengkhawatirkan hal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4737_pertanyaan, '肩のこる質問は苦手だ。', 'Saya tidak suka pertanyaan yang membuat saya tegang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4737_pertanyaan, 'その選手は、ある観客から質問の内容が予想外すぎてたじろいだ。', 'Atlet tersebut terkejut dengan pertanyaan yang tidak terduga dari seorang penonton.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4737_pertanyaan, '大統領は、不正資金の受領について記者から質問攻めめにあった。', 'Presiden mendapat banyak pertanyaan dari wartawan terkait penerimaan dana haram tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4738_kualitas_bahan, 'ちゃんとした品質を保っていられるのか、毎日気が気じゃないんです。', 'Saya sangat cemas setiap hari tentang apakah kami dapat mempertahankan kualitas yang tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4738_kualitas_bahan, '日本製だからといって品質が保証されているかは分からないよ。', 'Hanya karena suatu barang buatan Jepang bukan berarti kualitasnya terjamin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4738_kualitas_bahan, '彼女は品質管理マネージャーとして入社した。', 'Dia diangkat sebagai manajer kendali mutu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4739_kualitas_bagus, '朝食には、良質なタンパク質を取るよう心がけています。', 'Saya mencoba memastikan saya mengonsumsi protein berkualitas baik untuk sarapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4739_kualitas_bagus, '子供には良質で安全な食べ物を食べさせてあげたいです。', 'Saya ingin memberi anak-anak saya makanan yang berkualitas tinggi dan aman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4739_kualitas_bagus, '良質のワインを飲む事が私の唯一の楽しみだ。', 'Minum anggur berkualitas baik adalah satu-satunya kesenangan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4740_ciri, 'これは、日本文化の特質と言えるでしょう。', 'Hal ini bisa dikatakan merupakan ciri khas budaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4740_ciri, '全てのカルトには、何らかの共通の特質があるような気がします。', 'Saya merasa semua aliran sesat memiliki beberapa ciri yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4740_ciri, '笑いは人間だけの特質なのかな？それとも動物も笑うのかな？', 'Apakah tertawa merupakan ciri yang hanya dimiliki manusia, atau apakah hewan juga tertawa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4740_ciri, '有害物質と知られるまで、アスベストは、その優れた特質から「奇跡の繊維」として持て囃され、工業材料として大量に使用されていました。', 'Sebelum diketahui sebagai bahan berbahaya, asbes dipuji sebagai "serat ajaib" karena karakteristiknya yang sangat baik dan banyak digunakan sebagai bahan industri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4741_untuk_disebutkan, '上司に全く正反対の意見を述べるのは気が引けます。', 'Saya ragu untuk menyatakan pendapat yang bertentangan dengan pendapat atasan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4741_untuk_disebutkan, '論文では、研究結果だけでなく、プロセスも具体的に述べる必要があります。', 'Dalam makalah, perlu dijelaskan tidak hanya hasil penelitian tetapi juga prosesnya secara detail.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4741_untuk_disebutkan, 'ビエトは自著の中で、ヤクザの歴史について述べた。', 'Viet menjelaskan sejarah yakuza dalam karya sastranya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4742_menulis, 'うーん、それは正しい記述ではないですね。', 'Hmm, itu bukan pernyataan yang benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4742_menulis, 'ここに日本語の文法に関するルールを記述してください。', 'Silakan jelaskan aturan mengenai tata bahasa Jepang di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4742_menulis, 'もし新聞のあの記述が間違いだったとしたら、大変なことになるよ。', 'Jika pemberitaan di surat kabar itu salah, bisa jadi masalah serius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4743_disebutkan_di_atas, '上述の理由から、私は今回のプロジェクトには参加しないことに決めました。', 'Karena alasan yang disebutkan di atas, saya memutuskan untuk tidak berpartisipasi dalam proyek ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4743_disebutkan_di_atas, '上述の問題を解決するために、私たちが考えた新しいプランを下記に示します。', 'Untuk mengatasi masalah di atas, di bawah ini kami menyajikan rencana baru yang telah kami buat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4743_disebutkan_di_atas, '上述のように、雇用者、従業員のどちらも、いついかなる理由においても契約を終了することができる。', 'Sebagaimana dinyatakan di atas, baik pekerja maupun pemberi kerja dapat memutuskan kontrak kerja kapan saja dengan alasan apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4751_menawarkan, '無料でワニカニを提供するなんて、コウイチ、気は確かなのかな？', 'Apakah Koichi sudah gila dan menawarkan WaniKani secara gratis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4751_menawarkan, 'この番組はごらんのスポンサーの提供でお送りします。', 'Program ini dipersembahkan oleh sponsor berikut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4751_menawarkan, '日本で臓器提供者になる同意書にサインをするには、どうすればいいですか？', 'Bagaimana cara saya mendaftar menjadi donor organ di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4752_untuk_membuat_persembahan, '月見だんごを供える方法を教えてください。', 'Tolong beritahu saya bagaimana cara menawarkan dango melihat bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4752_untuk_membuat_persembahan, '親父が好きだったイチローズ・モルトを供えてくれるなんて、アイツは本当に気が利くやつだよ。', 'Senang sekali dia meninggalkan persembahan Ichiro''s Malt yang disukai ayahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4752_untuk_membuat_persembahan, '明日お墓に供える花を、帰りに買ってきてくれない？', 'Bisakah kamu membeli bunga untuk ditaruh di kuburan besok dalam perjalanan pulang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4753_anak, 'この映画は子供向けではなく、大人向けだと思うよ。', 'Menurut saya film ini tidak ditujukan untuk anak-anak, melainkan untuk orang dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4753_anak, '子供が生まれると、思った以上に生活が大きく変わった。', 'Ketika anak saya lahir, kehidupan berubah secara dramatis dari yang saya duga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4753_anak, 'お前の子供、イケメンすぎて、お前の子供だとは思えねーよ。', 'Anak Anda terlalu tampan, saya hampir tidak percaya dia adalah anak Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4753_anak, '子供達が寝静まった後に夫婦の時間を楽しみたいのは山々だが、疲れすぎて子供達と一緒に寝落ちしてしまうことがほとんどだ。', 'Setelah anak-anak tidur, kami sangat ingin menikmati waktu bersama pasangan, namun biasanya kami terlalu lelah dan akhirnya tertidur bersama anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4754_pameran_dagang, '万一に備えて、展示会にエンピツを持って行きました。', 'Saya membawa pensil ke pameran untuk berjaga-jaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4754_pameran_dagang, 'スーパーマーケットトレードショーという展示会に行ってきたんだ。', 'Saya pergi ke pameran yang disebut Supermarket Trade Show.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4754_pameran_dagang, '私の兄は、カフェで初めての美術展示会を開催した。', 'Adikku menyelenggarakan pameran seni pertamanya di sebuah kafe.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4755_untuk_berkembang, '百年前と比べて、日本は大きく発展した。', 'Jepang telah berkembang pesat dibandingkan 100 tahun yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4755_untuk_berkembang, 'この国が発展するかどうかは、若者にかかっています。', 'Maju atau tidaknya negara ini tergantung generasi mudanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4755_untuk_berkembang, '年寄りの風邪は肺炎に発展しやすいんだよ。', 'Jika orang lanjut usia terkena flu, penyakit ini dapat dengan mudah berkembang menjadi pneumonia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4756_berlangsung, 'その話の展開は意外だった。', 'Perkembangan cerita itu tidak terduga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4756_berlangsung, '中小企業が海外展開をする利点とは何でしょうか。', 'Apa keuntungan bisnis kecil yang berekspansi ke luar negeri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4756_berlangsung, 'このエアバッグは車が衝突してもすぐには展開しないので危険なんです。', 'Kantung udara ini berbahaya karena tidak langsung mengembang saat mobil mengalami tabrakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4757_rahasia, 'じゃあ、親展で送るね。', 'Baiklah, kalau begitu aku akan mengirimkannya sebagai surat rahasia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4757_rahasia, '検査結果は後日、親展で送付されます。', 'Hasil tes akan dikirimkan kepada Anda nanti, ditandai “rahasia.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4757_rahasia, '「親展」って書いてるのに、開けたの？これ、勝手に開けると、罪に問われるんだよ。', 'Apakah Anda membukanya meskipun ditandai “rahasia”? Jika Anda membukanya tanpa izin, itu bisa dianggap sebagai kejahatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4757_rahasia, '親展の文字が印刷された封筒を買って来てくれない？', 'Bisakah Anda membelikan saya amplop dengan tulisan "rahasia" tercetak di atasnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4758_penjualan, 'トーフグがオンラインで色んなグッズを販売しているのはもちろん知っていますよね？', 'Tentu Anda tahu kalau Tofugu menjual berbagai macam barang secara online bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4758_penjualan, 'トーフグのステッカーの販売は好調です。', 'Penjualan stiker Tofugu kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4758_penjualan, '我が社の販売員の多くは、八月に休暇を取ります。', 'Banyak tenaga penjualan di perusahaan kami mengambil cuti kerja di bulan Agustus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4759_mesin_penjual_otomatis, 'トーフグオフィスに自動販売機を設置することには、あまり気が乗りません。', 'Saya tidak ingin memasang mesin penjual otomatis di kantor Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4759_mesin_penjual_otomatis, 'この駅の自動販売機は全部空になっているみたいだ。', 'Semua mesin penjual otomatis di stasiun ini sepertinya kosong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4759_mesin_penjual_otomatis, '10月23日の自動販売機に関する会議は、コウイチの誕生日会のため、10月24日に変更されました。', 'Pertemuan tanggal dua puluh tiga Oktober tentang mesin penjual otomatis telah dijadwalkan ulang ke tanggal dua puluh empat Oktober karena pesta ulang tahun Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4760_pesanan_lewat_pos, '通販のカタログが届いた。', 'Katalog pesanan lewat pos telah tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4760_pesanan_lewat_pos, '今まで通販で買い物したことないけど、ちょっとやってみるよ。', 'Saya belum pernah membeli apa pun melalui pesanan lewat pos sebelumnya, tapi saya akan mencobanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4760_pesanan_lewat_pos, '何度もクレームが発生したんで、ネットショップで通販するのはやめました。', 'Saya mendapat keluhan berkali-kali sehingga saya keluar dari toko online pesanan lewat pos.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4761_saham, 'ずっと塩づけになっていた株がやっと上がって、気が楽になりました。', 'Stok yang selama ini saya tunggu akhirnya naik dan saya merasa lega.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4761_saham, 'ビエトがどういうつもりでバイオベンチャーの株を買ったのか、全然分からないんだよね。', 'Saya sama sekali tidak mengerti mengapa Viet membeli saham perusahaan bio-venture tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4761_saham, 'コウイチは株でガッポリもうけたので、車のタイヤをどでかいホイール・タイヤに変えて、シートも革張りにしてカッチョ良くしちゃおうと決めた。', 'Koichi menghasilkan banyak uang di pasar saham dan memutuskan untuk menjual mobilnya dengan roda besar dan jok kulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4762_saham, 'コウイチは、株式のさらなる下落に備えて気を引きしめた。', 'Koichi bersiap menghadapi penurunan harga saham lebih lanjut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4762_saham, '会社で株式を買うという考えにはあまり気が進まないよ。', 'Saya tidak terlalu antusias dengan gagasan membeli saham sebagai sebuah perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4762_saham, '株式市場が底なしの下落に陥ったようだというニュースは、彼に大きな精神的ダメージを与えた。', 'Berita bahwa pasar saham sepertinya mengalami penurunan tanpa dasar merupakan pukulan besar baginya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4861_bangun_terlambat, '同じ日に朝寝坊するなんて、オレ達って本当に気が合うよなぁ。', 'Kami ketiduran di hari yang sama. Kayaknya kita benar-benar sinkron ya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4861_bangun_terlambat, '朝寝坊するクセがあるんだったら、朝早い仕事はムリなんじゃない？', 'Jika Anda mempunyai kebiasaan tidur berlebihan, bukankah pekerjaan pagi akan terasa berat bagi Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4861_bangun_terlambat, '私は朝寝坊だが、妹は私と違って早起きだから、君の犬の散歩に行けるかもしれないよ。', 'Aku bangun terlambat tapi adikku bangun pagi, dia mungkin bisa mengajak anjingmu jalan-jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4862_terbuka_untuk_bisnis, '今日は日曜日なのに営業中なんですね。', 'Hari ini buka untuk bisnis ya, padahal ini hari Minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4862_terbuka_untuk_bisnis, '営業中に電話しないでって言ったじゃない。', 'Saya meminta Anda untuk tidak menelepon saya saat toko buka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4862_terbuka_untuk_bisnis, '営業中にお客さんの前でヒジをつくなんて、一流のホストだったらありえないよ。', 'Tidak terpikirkan bagi tuan rumah kelas atas untuk bersandar di depan pelanggan selama jam kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4863_tempat_untuk_meletakkan_sesuatu, '川崎駅の自転車置き場に自転車を停めています。', 'Aku memarkir sepedaku di area parkir sepeda di Stasiun Kawasaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4863_tempat_untuk_meletakkan_sesuatu, '置き場がなくてちょっと困ってたんだ。', 'Saya mengalami sedikit masalah karena tidak ada tempat untuk meletakkan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4863_tempat_untuk_meletakkan_sesuatu, '洗面台の下にタオル置き場があるから、シャワーの後勝手に取って使ってね。', 'Kami punya tempat untuk handuk di bawah wastafel, jadi bantulah diri Anda sendiri setelah mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4864_subyektif, 'できるだけ主観的な見方をしないように心がけています。', 'Saya berusaha sebisa mungkin menghindari pandangan subjektif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4864_subyektif, 'アイツの意見は主観的すぎて参考にならないよ。', 'Pendapatnya terlalu subyektif untuk bisa digunakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4864_subyektif, '主観的に見たら、その指摘は的を得てると思います。', 'Jika dilihat secara subyektif, menurut saya maksud Anda tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4864_subyektif, 'これはとても主観的な見方かもしれないけど、僕にとっては君は働き過ぎだと思うんだよね。近々休みを取った方がいいよ。', 'Ini mungkin pandangan yang sangat subyektif, tapi bagi saya, Anda terlalu banyak bekerja dan harus mengambil cuti dalam waktu dekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4865_untuk_membantu, 'だからあの二人を援助することには気が進まなかったんだよ。', 'Itu sebabnya saya enggan membantu mereka berdua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4865_untuk_membantu, 'あなたを援助することが会社にとってどんなプラスになるんでしょうか。', 'Saya ingin tahu manfaat apa yang akan kami peroleh sebagai perusahaan dengan membantu Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4865_untuk_membantu, '政府は被災地を援助するために多額の資金を用意しました。', 'Pemerintah menyiapkan dana besar untuk membantu daerah bencana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4866_untuk_melakukan_root_untuk, 'どっちの力士を応援してるの？', 'Pegulat sumo manakah yang Anda dukung?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4866_untuk_melakukan_root_untuk, 'トーフグ社員はみんな、日本代表を応援しています。', 'Seluruh karyawan Tofugu mendukung tim Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4866_untuk_melakukan_root_untuk, '成績が落ちたからと言って、好きなアイドルを応援することを我慢する気はサラサラありません。', 'Saya tidak punya niat untuk menahan diri untuk mendukung idola favorit saya hanya karena nilai saya turun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4868_wakil_presiden, 'あのがっしりした広い肩の男が、この国の副大統領です。', 'Pria berbahu lebar itu adalah wakil presiden negara ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4868_wakil_presiden, '副大統領は大統領にあいさつしたが、完全に無視された。', 'Wakil presiden menyapa presiden, tetapi presiden mengabaikannya sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4868_wakil_presiden, 'やってみるべきだと思うけど。大統領は無理でも、副大統領ぐらいなら狙えるんじゃない？', 'Saya pikir Anda harus mencobanya. Mungkin tidak mungkin menjadi presiden, tapi Anda bisa mencoba mencalonkan diri sebagai wakil presiden.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4869_untuk_melamar, '私たちは、社員のやる気を上げるための新しいプログラムを提案しました。', 'Kami mengusulkan program baru untuk memotivasi karyawan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4869_untuk_melamar, '昨日、新人が、素晴らしいビジネスモデルを提案してきた。', 'Kemarin, seorang pendatang baru mengusulkan model bisnis yang hebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4869_untuk_melamar, '本日は、新しい投資信託をご提案させて頂きたいと思います。', 'Saya ingin mengusulkan reksa dana baru kepada Anda hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4870_untuk_mendukung, 'やる気のある学生がいれば、支援してあげたいと思っています。', 'Jika ada siswa yang bermotivasi baik, saya ingin mendukung mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4870_untuk_mendukung, '本気でクラウドファンディングでそのプロジェクトを支援するつもりでいたんですけど、気が変わって支援しないことにしたんです。', 'Saya sebenarnya berencana mendukung proyek tersebut melalui crowdfunding, namun saya berubah pikiran dan memutuskan untuk tidak mendukungnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4870_untuk_mendukung, '僕は、他者を支援することは、自分自身を支援することにもつながると思っています。 ', 'Saya percaya bahwa mendukung orang lain juga berkontribusi untuk mendukung diri sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4871_turis, 'この町には毎年多くの観光客が訪れます。', 'Banyak wisatawan mengunjungi kota ini setiap tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4871_turis, 'このツアーは観光客にとても人気があります。', 'Wisata ini sangat populer di kalangan wisatawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4871_turis, 'その観光客は、アメリカで医者の診断書をもらうために50ドルを支払わなければならなかった。', 'Turis tersebut harus membayar $50 untuk mendapatkan surat dokter di AS.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4960_untuk_menusuk, 'ヒジで突くの、やめてくれない？', 'Maukah kamu berhenti menyodokku dengan sikumu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4960_untuk_menusuk, '目を突いたら危ないから、気をつけてね！', 'Berhati-hatilah untuk tidak menyodok mata—itu berbahaya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4960_untuk_menusuk, 'フェンシングのフルーレで突かれたこと、ありますか？', 'Pernahkah Anda ditusuk dengan fleurette anggar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4960_untuk_menusuk, '「それじゃあ、いくらお金があれば幸せになれるっていうの？」 「う～ん。いたいところを突かれたな。」', '"Kalau begitu, berapa banyak uang yang kamu perlukan untuk menjadi bahagia?" "Ah. Kamu benar-benar mendapat masalah di sana."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5008_efektif, 'でも、あなたのチームは効率的だけど効果的ではないよね。', 'Nah, tim Anda efisien tapi tidak efektif, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5008_efektif, 'ウォーキングが最も効果的なのは、朝だと言われています。', 'Jalan kaki dikatakan paling efektif di pagi hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5008_efektif, '効果的にやせるには、しっかり寝ることも大切です。', 'Untuk menurunkan berat badan secara efektif, penting juga untuk mendapatkan banyak tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5098_sepatu, '子供がすぐ靴をなくすから困っているんです。', 'Saya mengalami kesulitan karena anak saya cepat kehilangan sepatunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5098_sepatu, '歩き方が悪いせいか、靴を買っても一年たたないうちにはきつぶしてしまう。', 'Mungkin karena gaya berjalanku yang buruk, tapi sepatuku akan usang dalam waktu satu tahun setelah membelinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5098_sepatu, 'そろそろ新しい靴を買わなきゃ。', 'Saatnya membeli sepatu baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5325_lebih_lebih_lagi, '更にこうした事例もあります。', 'Selain itu, ada juga contoh seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5325_lebih_lebih_lagi, '何度失敗しても更に試みるつもりです。', 'Tidak peduli berapa kali saya gagal, saya berniat untuk mencoba lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5325_lebih_lebih_lagi, 'この連続殺人事件で更に被害者が出てしまった。', 'Semakin banyak korban yang ditemukan dalam kasus pembunuhan berantai ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5325_lebih_lebih_lagi, '更に英語を上達させるには、ネイティブスピーカーと喋り続ける必要があります。', 'Untuk lebih meningkatkan bahasa Inggris Anda, Anda perlu terus berbicara dengan penutur asli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5352_jenis, '私の町にはラテン系アメリカ人がたくさん住んでいます。', 'Ada banyak orang Amerika Latin yang tinggal di kota saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5352_jenis, '私は恋愛系の映画が好きだけど、ホラー系は苦手です。', 'Aku suka film bergenre romansa, tapi aku tidak pandai dengan film horor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5352_jenis, '個人的には、キレイ系のファッションより、カジュアル系の方が好きなんだよね。', 'Secara pribadi, saya lebih suka busana kasual daripada gaya yang lebih bergaya dan elegan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5352_jenis, '私の兄はガテン系の陽キャだが、顔は小動物系なのでちょっと可愛い。', 'Adikku adalah pria kerah biru yang supel, tapi dia mempunyai wajah yang sangat kecil sehingga dia benar-benar menggemaskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5353_keturunan_jepang, 'ロサンゼルスには多くの日系アメリカ人が住んでいます。', 'Banyak orang Jepang-Amerika tinggal di Los Angeles.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5353_keturunan_jepang, 'アメリカで日系企業につとめるメリットは何ですか。', 'Apa keuntungan bekerja di perusahaan Jepang di Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5353_keturunan_jepang, '私は日系の飛行機しか乗らないようにしています。', 'Saya hanya menggunakan maskapai Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5353_keturunan_jepang, '私の妻は日系アメリカ人の三世です。', 'Istri saya adalah generasi ketiga Amerika keturunan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6235_untuk_membakar_sesuatu, '落ち葉を燃やして焼きイモを作ります。', 'Kita akan membakar beberapa daun yang gugur dan membuat ubi panggang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6235_untuk_membakar_sesuatu, 'フグは不可燃ゴミを燃やして毒ガスを発生させた。', 'Fugu menghasilkan gas beracun dengan membakar sampah yang tidak dapat dibakar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6235_untuk_membakar_sesuatu, '何かを完全に灰になるまで燃やすことが大好きだ。', 'Saya sangat suka membakar sesuatu hingga menjadi abu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7599_total, 'えっ、この金額を全額現金で！？', 'Apa, semua uang ini tunai!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7599_total, 'ウェディングの費用とハネムーン旅行の費用を合わせると全額でいくらになりますか。', 'Berapa total biaya pernikahan dan bulan madu jika digabungkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7599_total, 'お菓子代は、全額自己負担でお願いします。', 'Harap menanggung sendiri seluruh biaya makanan ringan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7652_lengan_kiri, 'コウイチの左腕には、トーフグのタトゥーがある。', 'Koichi memiliki tato Tofugu di lengan kirinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7652_lengan_kiri, '左腕を骨折しました。', 'Saya mematahkan lengan kiri saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7652_lengan_kiri, 'あれ、あのピッチャー、左腕を痛めてるんじゃかなかったっけ？', 'Tunggu sebentar, bukankah pelempar itu melukai lengan kirinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7653_bingkai_gambar, 'この絵に合う額を探しています。', 'Saya sedang mencari bingkai yang cocok dengan gambar ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7653_bingkai_gambar, '卒業証書を大学の名前付きの額に入れてかべにかけました。', 'Ijazah kelulusan saya letakkan dalam bingkai foto yang dilengkapi nama universitas dan digantung di dinding.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7653_bingkai_gambar, '大統領、本当にコウイチの絵を額に入れてホワイトハウスにかざる気なのかな？', 'Entah apakah presiden benar-benar bersedia membingkai lukisan Koichi dan menggantungnya di Gedung Putih?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7711_untuk_menunjuk, '日本では、人を指差すのは失礼なんだよ。', 'Di Jepang, tidak sopan menunjuk orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7711_untuk_menunjuk, 'おばさんは少女を指差しながら、「アイツは本当に気が強くてなぁ」と言い、ニコリと笑った。', 'Sambil menunjuk pada gadis muda itu, wanita yang lebih tua itu berkata, “Dia benar-benar berkemauan keras, lho,” dan menyeringai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7711_untuk_menunjuk, '今、忙しい。名探偵が犯人を指差すときにビシッと決まる、カッコいい台詞を考えてるんだ。', 'Saat ini, saya sedang sibuk. Saya mencoba memberikan kalimat keren yang akan diucapkan seorang detektif hebat ketika menunjuk pelakunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7766_esensi, '人間の本質って、何だろうね。', 'Saya bertanya-tanya, apa hakikat kemanusiaan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7766_esensi, '問題の本質の追求って難しいよね。', 'Mengejar inti permasalahan itu sulit, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7766_esensi, 'この男は、物事の本質を見抜くことができる。', 'Pria ini memiliki kemampuan untuk memahami sifat sebenarnya dari segala sesuatu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8679_bahan_bakar, '今朝、次世代燃料自動車に関するニュースを見ましたよ。', 'Pagi ini, saya melihat berita tentang mobil berbahan bakar generasi berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8679_bahan_bakar, '単なる燃料切れだったよ。', 'Itu hanya kehabisan bahan bakar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8679_bahan_bakar, '飛行機に積む燃料の量はどのぐらいなんでしょうか。', 'Saya ingin tahu berapa banyak bahan bakar yang dimuat ke dalam pesawat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8715_kedua_lengan, '両腕にホクロがたくさんあります。', 'Ada banyak tahi lalat di kedua lenganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8715_kedua_lengan, '次は両腕を交差させてください。', 'Selanjutnya silahkan menyilangkan kedua tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8715_kedua_lengan, 'コックの両腕には、ヤケドの跡がたくさんありました。', 'Ada banyak luka bakar di kedua lengan si juru masak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8715_kedua_lengan, '両腕がしびれています。もう限界です。', 'Kedua lenganku mati rasa. Mereka tidak tahan lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8755_angkutan, 'ええっ、日本から、コンテナでウィスキーを輸送したんですか！？', 'Tunggu, kamu mengirimkan wiski jauh-jauh dari Jepang dalam sebuah wadah!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8755_angkutan, '輸送コストを教えて下さい。', 'Tolong beritahu saya biaya transportasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8755_angkutan, 'ダリンはトラックで新鮮なフグを大量に輸送した。', 'Darin mengangkut ikan buntal segar dalam jumlah besar dengan menggunakan truk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8808_label_harga, 'この品物には、値札シールがありません。', 'Barang ini tidak memiliki label harga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8808_label_harga, '値札を確かめた後に、買うのを止めました。', 'Setelah mengecek label harganya, saya memutuskan untuk tidak membelinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8808_label_harga, '王様は、いつも値札を見ずに買い物をして、女王様に怒られます。', 'Raja selalu membeli barang tanpa melihat label harganya dan ratu marah padanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8899_lengan_pendek, 'いやいや、半袖はまだ早すぎるでしょ。半袖で寒くないの？え、暑いから半袖に着替えた！？', 'Tidak mungkin, ini masih terlalu dini untuk baju lengan pendek bukan? Bukankah kamu kedinginan dengan atasan lengan pendek? Apa, kamu mengganti baju lengan pendek karena panas!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8899_lengan_pendek, 'コンマリの本を読んでから、半袖のシャツは一枚しか持っていない。', 'Setelah membaca buku Kon Mari, saya hanya memiliki satu baju lengan pendek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8899_lengan_pendek, '今年のファッショントレンドは半袖の革ジャンです。', 'Fashion yang sedang tren tahun ini adalah jaket kulit lengan pendek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8899_lengan_pendek, 'このワンピースにあの白の半袖のカーディガンを合わせると可愛いと思うんだよね。', 'Menurutku akan lucu jika memadukan kardigan putih lengan pendek dengan gaun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8900_lengan_panjang, '今日は、長袖着ていった方がいいかな？', 'Haruskah saya memakai atasan lengan panjang hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8900_lengan_panjang, '長袖のパーカーを買いに行くのに、付き合ってくれない？', 'Bisakah Anda membantu saya berbelanja hoodies lengan panjang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8900_lengan_panjang, 'ジャケットの下に長袖も着てるの？暑くない？', 'Apakah Anda mengenakan baju lengan panjang di balik jaket Anda? Apakah kamu tidak seksi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8900_lengan_panjang, '私の彼氏は、タトゥー隠すため夏でも長袖を着ることがあるし、母も寒がりだから、いつも長袖を着ています。', 'Terkadang pacarku memakai baju lengan panjang di musim panas untuk menyembunyikan tatonya, dan ibuku selalu memakai baju lengan panjang karena dia mudah kedinginan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9027_untuk_membangun_sesuatu, '良好な人間関係を築くのに、あいさつは欠かせません。', 'Salam sangat penting untuk membangun hubungan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9027_untuk_membangun_sesuatu, '今日はみんなで、より良い社会を築くためには何をすればいいかを考えましょう。', 'Hari ini, mari kita memikirkan apa yang bisa kita lakukan untuk membangun masyarakat yang lebih baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9027_untuk_membangun_sesuatu, '私の夢は、あなたと幸せな家庭を築くことです。', 'Impianku adalah membangun keluarga bahagia bersamamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9471_sakit_perut, '強い腹痛で目が覚めた。', 'Saya terbangun dengan sakit perut yang parah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9471_sakit_perut, '腹痛のため、今日は会社を休みます。', 'Saya akan mengambil cuti hari ini karena sakit perut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9471_sakit_perut, '昨日の夜から激しい腹痛が続いているんです。', 'Saya menderita sakit perut yang parah sejak tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9471_sakit_perut, 'カオリは、腹痛で体を折り曲げた。', 'Kaori berlipat ganda karena sakit perut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9472_perut_kosong, '空腹のせいで、何も考えられなかった。', 'Karena kelaparan, saya tidak bisa berpikir jernih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9472_perut_kosong, '彼女は空腹を忘れるために歩いた。', 'Dia berjalan untuk melupakan rasa laparnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9472_perut_kosong, '空腹と疲労が、彼の判断をにぶらせていた。', 'Perutnya yang kosong dan kelelahan menumpulkan penilaiannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9473_otak, '彼は非常に優秀な頭脳の持ち主だ。', 'Dia memiliki pikiran yang sangat cemerlang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9473_otak, '私は頭脳を使う仕事が好きなんです。', 'Saya menyukai pekerjaan yang mengharuskan saya berpikir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9473_otak, 'これは頭脳戦になりそうですね…。', 'Sepertinya ini akan menjadi pertarungan kecerdasan…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9473_otak, 'それは、世界最高の頭脳集団によって設計されたシステムだった。', 'Itu adalah sistem yang dirancang oleh para pemikir terhebat di dunia.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1144_hakim, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1144_hakim, id FROM items WHERE type = 'radical' AND (slug = '280' OR id = '280') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1191_standar, id FROM items WHERE type = 'radical' AND (slug = '146' OR id = '146') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1191_standar, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1217_membawa, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1217_membawa, r_293_fajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1218_jumlah, r_295_tamu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1218_jumlah, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1219_pembuatan, r_296_kontrol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1219_pembuatan, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1220_berbeda, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1220_berbeda, r_294_korea);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1221_mengangkut, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1221_mengangkut, r_8790_bintang_kematian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1222_membakar, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1222_membakar, r_297_alam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1223_merayakan, id FROM items WHERE type = 'radical' AND (slug = '80' OR id = '80') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1223_merayakan, id FROM items WHERE type = 'radical' AND (slug = '191' OR id = '191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1224_mengantarkan, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1224_mengantarkan, id FROM items WHERE type = 'radical' AND (slug = '268' OR id = '268') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1225_sempit, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1225_sempit, id FROM items WHERE type = 'radical' AND (slug = '146' OR id = '146') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1225_sempit, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1226_bahu, id FROM items WHERE type = 'radical' AND (slug = '73' OR id = '73') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1226_bahu, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1227_lengan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1227_lengan, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1227_lengan, id FROM items WHERE type = 'radical' AND (slug = '33' OR id = '33') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1227_lengan, id FROM items WHERE type = 'radical' AND (slug = '158' OR id = '158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1228_pinggang, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1228_pinggang, id FROM items WHERE type = 'radical' AND (slug = '424' OR id = '424') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1228_pinggang, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1229_menyentuh, id FROM items WHERE type = 'radical' AND (slug = '281' OR id = '281') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1229_menyentuh, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1230_tempatkan, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1230_tempatkan, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1230_tempatkan, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1231_lapisan, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1231_lapisan, id FROM items WHERE type = 'radical' AND (slug = '259' OR id = '259') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1232_model, id FROM items WHERE type = 'radical' AND (slug = '171' OR id = '171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1232_model, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1232_model, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1233_agen, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1233_agen, id FROM items WHERE type = 'radical' AND (slug = '27' OR id = '27') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1234_lihat, id FROM items WHERE type = 'radical' AND (slug = '80' OR id = '80') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1234_lihat, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1235_perbedaan, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1235_perbedaan, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1236_pipa, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1236_pipa, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1236_pipa, id FROM items WHERE type = 'radical' AND (slug = '8777' OR id = '8777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1238_kuantitas, r_293_fajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1238_kuantitas, id FROM items WHERE type = 'radical' AND (slug = '125' OR id = '125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1239_batas, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1239_batas, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1239_batas, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1240_lingkaran, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1240_lingkaran, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1240_lingkaran, id FROM items WHERE type = 'radical' AND (slug = '8784' OR id = '8784') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1241_militer, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1241_militer, id FROM items WHERE type = 'radical' AND (slug = '79' OR id = '79') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1241_militer, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1242_kualitas, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1242_kualitas, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1243_menyebutkan, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1243_menyebutkan, id FROM items WHERE type = 'radical' AND (slug = '130' OR id = '130') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1243_menyebutkan, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1244_menawarkan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1244_menawarkan, id FROM items WHERE type = 'radical' AND (slug = '269' OR id = '269') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1245_memperluas, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1245_memperluas, id FROM items WHERE type = 'radical' AND (slug = '8775' OR id = '8775') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1245_memperluas, id FROM items WHERE type = 'radical' AND (slug = '8770' OR id = '8770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1246_menjual, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1246_menjual, id FROM items WHERE type = 'radical' AND (slug = '218' OR id = '218') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1247_saham, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1247_saham, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1247_saham, id FROM items WHERE type = 'radical' AND (slug = '134' OR id = '134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1317_perut, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1317_perut, id FROM items WHERE type = 'radical' AND (slug = '265' OR id = '265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1337_sepatu, id FROM items WHERE type = 'radical' AND (slug = '288' OR id = '288') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1337_sepatu, id FROM items WHERE type = 'radical' AND (slug = '311' OR id = '311') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1415_garis_keturunan, r_329_garis_keturunan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3995_bangunan, id FROM items WHERE type = 'kanji' AND (slug = '946' OR id = '946') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3995_bangunan, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4346_benar_benar, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4421_penyelidikan, k_1144_hakim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4421_penyelidikan, id FROM items WHERE type = 'kanji' AND (slug = '1130' OR id = '1130') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4452_keputusan, k_1144_hakim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4452_keputusan, id FROM items WHERE type = 'kanji' AND (slug = '1127' OR id = '1127') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4499_untuk_menanggalkan_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '1157' OR id = '1157') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4549_harga_rendah, id FROM items WHERE type = 'kanji' AND (slug = '612' OR id = '612') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4549_harga_rendah, id FROM items WHERE type = 'kanji' AND (slug = '1176' OR id = '1176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4551_harga_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4551_harga_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '1176' OR id = '1176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4579_ekonomis, id FROM items WHERE type = 'kanji' AND (slug = '1120' OR id = '1120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4579_ekonomis, id FROM items WHERE type = 'kanji' AND (slug = '1124' OR id = '1124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4579_ekonomis, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4603_aturan, k_1191_standar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4603_aturan, id FROM items WHERE type = 'kanji' AND (slug = '1201' OR id = '1201') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4604_aturan, k_1191_standar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4604_aturan, id FROM items WHERE type = 'kanji' AND (slug = '1197' OR id = '1197') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4654_perbedaan, k_1220_berbeda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4655_menjadi_berbeda, k_1220_berbeda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4656_sampah_yang_dapat_dibakar, id FROM items WHERE type = 'kanji' AND (slug = '1049' OR id = '1049') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4656_sampah_yang_dapat_dibakar, k_1222_membakar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4657_untuk_menjalankan_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '1168' OR id = '1168') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4657_untuk_menjalankan_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4658_tradisional, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4658_tradisional, id FROM items WHERE type = 'kanji' AND (slug = '1170' OR id = '1170') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4658_tradisional, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4659_hari_ulang_tahun, id FROM items WHERE type = 'kanji' AND (slug = '1156' OR id = '1156') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4659_hari_ulang_tahun, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4659_hari_ulang_tahun, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4660_untuk_tidur_berlebihan, id FROM items WHERE type = 'kanji' AND (slug = '1160' OR id = '1160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4660_untuk_tidur_berlebihan, id FROM items WHERE type = 'kanji' AND (slug = '1159' OR id = '1159') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4661_waktu_lampau, id FROM items WHERE type = 'kanji' AND (slug = '1158' OR id = '1158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4661_waktu_lampau, id FROM items WHERE type = 'kanji' AND (slug = '532' OR id = '532') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4661_waktu_lampau, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4662_terlalu_banyak, id FROM items WHERE type = 'kanji' AND (slug = '1158' OR id = '1158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4663_rencana_kontra, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4663_rencana_kontra, id FROM items WHERE type = 'kanji' AND (slug = '1172' OR id = '1172') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4664_nilai_nilai, id FROM items WHERE type = 'kanji' AND (slug = '1166' OR id = '1166') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4664_nilai_nilai, id FROM items WHERE type = 'kanji' AND (slug = '1176' OR id = '1176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4664_nilai_nilai, id FROM items WHERE type = 'kanji' AND (slug = '1175' OR id = '1175') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4665_bagian_rooting, id FROM items WHERE type = 'kanji' AND (slug = '1180' OR id = '1180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4665_bagian_rooting, id FROM items WHERE type = 'kanji' AND (slug = '1182' OR id = '1182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4665_bagian_rooting, id FROM items WHERE type = 'kanji' AND (slug = '1076' OR id = '1076') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4668_untuk_membawa, k_1217_membawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4669_bertanggung_jawab, k_1217_membawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4669_bertanggung_jawab, id FROM items WHERE type = 'kanji' AND (slug = '571' OR id = '571') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4670_beban, id FROM items WHERE type = 'kanji' AND (slug = '733' OR id = '733') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4670_beban, k_1217_membawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4671_setengah_harga, id FROM items WHERE type = 'kanji' AND (slug = '518' OR id = '518') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4671_setengah_harga, k_1218_jumlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4672_jumlah_besar, id FROM items WHERE type = 'kanji' AND (slug = '570' OR id = '570') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4672_jumlah_besar, k_1218_jumlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4673_jumlah_tahunan, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4673_jumlah_tahunan, k_1218_jumlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4674_jumlah_bulanan, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4674_jumlah_bulanan, k_1218_jumlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4675_jumlah_tetap, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4675_jumlah_tetap, k_1218_jumlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4676_jumlah_sisa, id FROM items WHERE type = 'kanji' AND (slug = '912' OR id = '912') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4676_jumlah_sisa, k_1218_jumlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4677_produk, k_1219_pembuatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4677_produk, id FROM items WHERE type = 'kanji' AND (slug = '967' OR id = '967') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4678_manufaktur, k_1219_pembuatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4678_manufaktur, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4679_kayu, id FROM items WHERE type = 'kanji' AND (slug = '478' OR id = '478') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4679_kayu, k_1219_pembuatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4680_buatan_jepang, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4680_buatan_jepang, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4680_buatan_jepang, k_1219_pembuatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4681_dibuat_di_cina, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4681_dibuat_di_cina, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4681_dibuat_di_cina, k_1219_pembuatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4682_buatan_as, k_1219_pembuatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4683_buatan_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4683_buatan_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4683_buatan_sendiri, k_1219_pembuatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4684_ekspor, k_1221_mengangkut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4684_ekspor, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4685_transfusi_darah, k_1221_mengangkut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4685_transfusi_darah, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4686_sampah_yang_tidak_dapat_dibakar, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4686_sampah_yang_tidak_dapat_dibakar, k_1222_membakar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4687_untuk_merayakan, k_1223_merayakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4688_hari_libur_nasional, k_1223_merayakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4688_hari_libur_nasional, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4689_untuk_dikirim, k_1224_mengantarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4690_sempit, k_1225_sempit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4691_bahu, k_1226_bahu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4692_lengan, k_1227_lengan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4693_jam_tangan, k_1227_lengan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4693_jam_tangan, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4693_jam_tangan, id FROM items WHERE type = 'kanji' AND (slug = '935' OR id = '935') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4694_pinggang, k_1228_pinggang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4695_untuk_menyentuh_sesuatu, k_1229_menyentuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4696_antena, k_1229_menyentuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4696_antena, id FROM items WHERE type = 'kanji' AND (slug = '592' OR id = '592') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4697_menyentuh, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4697_menyentuh, k_1229_menyentuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4698_tercatat, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4698_tercatat, k_1230_tempatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4699_catatan, id FROM items WHERE type = 'kanji' AND (slug = '664' OR id = '664') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4699_catatan, k_1230_tempatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4700_untuk_ditempatkan, k_1230_tempatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4701_lebih_banyak_lagi, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4701_lebih_banyak_lagi, k_1231_lapisan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4702_lapisan, k_1231_lapisan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4703_model, k_1232_model);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4704_khas, id FROM items WHERE type = 'kanji' AND (slug = '975' OR id = '975') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4704_khas, k_1232_model);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4704_khas, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4705_prototipe, id FROM items WHERE type = 'kanji' AND (slug = '995' OR id = '995') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4705_prototipe, k_1232_model);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4706_gedung_pemerintahan_metropolitan, id FROM items WHERE type = 'kanji' AND (slug = '826' OR id = '826') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4706_gedung_pemerintahan_metropolitan, k_1233_agen);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4707_departemen_kepolisian_metropolitan, id FROM items WHERE type = 'kanji' AND (slug = '1023' OR id = '1023') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4707_departemen_kepolisian_metropolitan, k_1234_lihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4707_departemen_kepolisian_metropolitan, k_1233_agen);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4708_badan_kepolisian_nasional, id FROM items WHERE type = 'kanji' AND (slug = '1023' OR id = '1023') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4708_badan_kepolisian_nasional, id FROM items WHERE type = 'kanji' AND (slug = '1019' OR id = '1019') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4708_badan_kepolisian_nasional, k_1233_agen);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4709_kantor_pemerintah, id FROM items WHERE type = 'kanji' AND (slug = '1018' OR id = '1018') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4709_kantor_pemerintah, k_1233_agen);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4710_untuk_mengabaikan, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4710_untuk_mengabaikan, k_1234_lihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4711_indra_penglihatan, k_1234_lihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4711_indra_penglihatan, id FROM items WHERE type = 'kanji' AND (slug = '1025' OR id = '1025') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4712_rabun_jauh, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4712_rabun_jauh, k_1234_lihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4713_rabun_jauh, id FROM items WHERE type = 'kanji' AND (slug = '963' OR id = '963') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4713_rabun_jauh, k_1234_lihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4714_untuk_bersinar, k_1235_perbedaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4715_diskriminasi, k_1235_perbedaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4715_diskriminasi, id FROM items WHERE type = 'kanji' AND (slug = '785' OR id = '785') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4716_persimpangan, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4716_persimpangan, k_1235_perbedaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4716_persimpangan, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4717_perbedaan_waktu, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4717_perbedaan_waktu, k_1235_perbedaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4718_pipa, k_1236_pipa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4719_pengelolaan, k_1236_pipa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4719_pengelolaan, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4720_pembuluh_darah, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4720_pembuluh_darah, k_1236_pipa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4722_target, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4722_target, id FROM items WHERE type = 'kanji' AND (slug = '1237' OR id = '1237') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4723_gejala, id FROM items WHERE type = 'kanji' AND (slug = '1211' OR id = '1211') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4723_gejala, id FROM items WHERE type = 'kanji' AND (slug = '1237' OR id = '1237') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4724_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4724_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '1237' OR id = '1237') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4725_untuk_mengukur, k_1238_kuantitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4726_kuantitas, k_1238_kuantitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4727_jumlah_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4727_jumlah_besar, k_1238_kuantitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4728_kuantitas_tetap, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4728_kuantitas_tetap, k_1238_kuantitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4729_batas, k_1239_batas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4730_perbatasan_nasional, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4730_perbatasan_nasional, k_1239_batas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4731_batas, k_1239_batas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4731_batas, id FROM items WHERE type = 'kanji' AND (slug = '728' OR id = '728') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4732_lingkungan, k_1240_lingkaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4732_lingkungan, k_1239_batas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4733_senjata, k_1241_militer);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4733_senjata, id FROM items WHERE type = 'kanji' AND (slug = '876' OR id = '876') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4734_seni_bela_diri, k_1241_militer);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4734_seni_bela_diri, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4735_samurai, k_1241_militer);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4735_samurai, id FROM items WHERE type = 'kanji' AND (slug = '877' OR id = '877') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4736_kualitas, k_1242_kualitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4737_pertanyaan, k_1242_kualitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4737_pertanyaan, id FROM items WHERE type = 'kanji' AND (slug = '859' OR id = '859') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4738_kualitas_bahan, id FROM items WHERE type = 'kanji' AND (slug = '967' OR id = '967') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4738_kualitas_bahan, k_1242_kualitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4739_kualitas_bagus, id FROM items WHERE type = 'kanji' AND (slug = '805' OR id = '805') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4739_kualitas_bagus, k_1242_kualitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4740_ciri, id FROM items WHERE type = 'kanji' AND (slug = '807' OR id = '807') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4740_ciri, k_1242_kualitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4741_untuk_disebutkan, k_1243_menyebutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4742_menulis, id FROM items WHERE type = 'kanji' AND (slug = '664' OR id = '664') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4742_menulis, k_1243_menyebutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4743_disebutkan_di_atas, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4743_disebutkan_di_atas, k_1243_menyebutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4751_menawarkan, id FROM items WHERE type = 'kanji' AND (slug = '1181' OR id = '1181') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4751_menawarkan, k_1244_menawarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4752_untuk_membuat_persembahan, k_1244_menawarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4753_anak, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4753_anak, k_1244_menawarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4754_pameran_dagang, k_1245_memperluas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4754_pameran_dagang, id FROM items WHERE type = 'kanji' AND (slug = '1169' OR id = '1169') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4754_pameran_dagang, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4755_untuk_berkembang, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4755_untuk_berkembang, k_1245_memperluas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4756_berlangsung, k_1245_memperluas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4756_berlangsung, id FROM items WHERE type = 'kanji' AND (slug = '753' OR id = '753') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4757_rahasia, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4757_rahasia, k_1245_memperluas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4758_penjualan, k_1246_menjual);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4758_penjualan, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4759_mesin_penjual_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4759_mesin_penjual_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4759_mesin_penjual_otomatis, k_1246_menjual);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4759_mesin_penjual_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4759_mesin_penjual_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '1090' OR id = '1090') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4760_pesanan_lewat_pos, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4760_pesanan_lewat_pos, k_1246_menjual);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4761_saham, k_1247_saham);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4762_saham, k_1247_saham);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4762_saham, id FROM items WHERE type = 'kanji' AND (slug = '939' OR id = '939') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4861_bangun_terlambat, id FROM items WHERE type = 'kanji' AND (slug = '695' OR id = '695') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4861_bangun_terlambat, id FROM items WHERE type = 'kanji' AND (slug = '1160' OR id = '1160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4861_bangun_terlambat, id FROM items WHERE type = 'kanji' AND (slug = '1159' OR id = '1159') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4862_terbuka_untuk_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '1168' OR id = '1168') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4862_terbuka_untuk_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4862_terbuka_untuk_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4863_tempat_untuk_meletakkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1164' OR id = '1164') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4863_tempat_untuk_meletakkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4864_subyektif, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4864_subyektif, id FROM items WHERE type = 'kanji' AND (slug = '1175' OR id = '1175') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4864_subyektif, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4865_untuk_membantu, id FROM items WHERE type = 'kanji' AND (slug = '1182' OR id = '1182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4865_untuk_membantu, id FROM items WHERE type = 'kanji' AND (slug = '680' OR id = '680') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4866_untuk_melakukan_root_untuk, id FROM items WHERE type = 'kanji' AND (slug = '1180' OR id = '1180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4866_untuk_melakukan_root_untuk, id FROM items WHERE type = 'kanji' AND (slug = '1182' OR id = '1182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4868_wakil_presiden, id FROM items WHERE type = 'kanji' AND (slug = '1174' OR id = '1174') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4868_wakil_presiden, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4868_wakil_presiden, id FROM items WHERE type = 'kanji' AND (slug = '1170' OR id = '1170') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4868_wakil_presiden, id FROM items WHERE type = 'kanji' AND (slug = '1171' OR id = '1171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4869_untuk_melamar, id FROM items WHERE type = 'kanji' AND (slug = '1181' OR id = '1181') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4869_untuk_melamar, id FROM items WHERE type = 'kanji' AND (slug = '1163' OR id = '1163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4870_untuk_mendukung, id FROM items WHERE type = 'kanji' AND (slug = '678' OR id = '678') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4870_untuk_mendukung, id FROM items WHERE type = 'kanji' AND (slug = '1182' OR id = '1182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4871_turis, id FROM items WHERE type = 'kanji' AND (slug = '1175' OR id = '1175') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4871_turis, id FROM items WHERE type = 'kanji' AND (slug = '567' OR id = '567') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4871_turis, id FROM items WHERE type = 'kanji' AND (slug = '723' OR id = '723') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4960_untuk_menusuk, id FROM items WHERE type = 'kanji' AND (slug = '1304' OR id = '1304') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5008_efektif, id FROM items WHERE type = 'kanji' AND (slug = '1267' OR id = '1267') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5008_efektif, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5008_efektif, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5098_sepatu, k_1337_sepatu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5325_lebih_lebih_lagi, id FROM items WHERE type = 'kanji' AND (slug = '1431' OR id = '1431') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5352_jenis, k_1415_garis_keturunan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5353_keturunan_jepang, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5353_keturunan_jepang, k_1415_garis_keturunan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6235_untuk_membakar_sesuatu, k_1222_membakar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7599_total, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7599_total, k_1218_jumlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7652_lengan_kiri, id FROM items WHERE type = 'kanji' AND (slug = '486' OR id = '486') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7652_lengan_kiri, k_1227_lengan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7653_bingkai_gambar, k_1218_jumlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7711_untuk_menunjuk, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7711_untuk_menunjuk, k_1235_perbedaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7766_esensi, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7766_esensi, k_1242_kualitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8679_bahan_bakar, k_1222_membakar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8679_bahan_bakar, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8715_kedua_lengan, id FROM items WHERE type = 'kanji' AND (slug = '609' OR id = '609') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8715_kedua_lengan, k_1227_lengan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8755_angkutan, k_1221_mengangkut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8755_angkutan, id FROM items WHERE type = 'kanji' AND (slug = '734' OR id = '734') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8808_label_harga, id FROM items WHERE type = 'kanji' AND (slug = '1176' OR id = '1176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8808_label_harga, id FROM items WHERE type = 'kanji' AND (slug = '649' OR id = '649') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8899_lengan_pendek, id FROM items WHERE type = 'kanji' AND (slug = '518' OR id = '518') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8899_lengan_pendek, id FROM items WHERE type = 'kanji' AND (slug = '8885' OR id = '8885') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8900_lengan_panjang, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8900_lengan_panjang, id FROM items WHERE type = 'kanji' AND (slug = '8885' OR id = '8885') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9027_untuk_membangun_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '957' OR id = '957') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9471_sakit_perut, k_1317_perut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9471_sakit_perut, id FROM items WHERE type = 'kanji' AND (slug = '1318' OR id = '1318') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9472_perut_kosong, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9472_perut_kosong, k_1317_perut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9473_otak, id FROM items WHERE type = 'kanji' AND (slug = '771' OR id = '771') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9473_otak, id FROM items WHERE type = 'kanji' AND (slug = '1045' OR id = '1045') LIMIT 1;

END $$;
