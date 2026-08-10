-- ====================================================
-- KaniGani — Seed Data Level 26 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 26) ============
  r_306_mengumumkan UUID; r_307_sepuluh_ribu UUID; r_8791_telur UUID; r_8792_sisir UUID; r_8827_gudang UUID; r_8828_bab UUID; r_9390_murung UUID;

  -- ============ KANJI IDs (Level 26) ============
  k_1075_alas_kaki UUID; k_1281_membuat UUID; k_1282_menginstruksikan UUID; k_1283_segel UUID; k_1284_membuat UUID; k_1285_memulihkan UUID; k_1286_perjalanan UUID; k_1287_kontras UUID; k_1288_kuas_tulis UUID; k_1289_memimpin UUID; k_1290_tabungan UUID; k_1291_keadaan UUID; k_1292_menghalangi UUID; k_1293_mematuhi UUID; k_1294_saya UUID; k_1295_garang UUID; k_1297_mendorong UUID; k_1298_menghukum UUID; k_1299_surat UUID; k_1300_jarum UUID; k_1301_indikasi UUID; k_1302_mencurigakan UUID; k_1303_binatang_buas UUID; k_1305_kue UUID; k_1306_sungai UUID; k_1307_menggoyang UUID; k_1308_keringat UUID; k_1310_lagi UUID; k_1311_berdampingan UUID; k_1312_sendiri UUID; k_1313_harta_benda UUID; k_1519_terkulai UUID; k_9338_menghapus UUID; k_9361_memutar UUID; k_9362_keseleo UUID;

  -- ============ VOCABULARY IDs (Level 26) ============
  v_4012_untuk_berkembang UUID; v_4745_membatasi UUID; v_4778_untuk_menyerahkan UUID; v_4801_skala UUID; v_4838_untuk_diganti UUID; v_4882_sebuah_kesalahan UUID; v_4883_untuk_menempatkan_pada_sesuatu UUID; v_4884_badan_cuaca UUID; v_4886_struktur UUID; v_4891_pembukaan_kembali UUID; v_4893_lagi UUID; v_4894_stimulasi UUID; v_4897_penciptaan UUID; v_4899_pembentukan UUID; v_4900_dorongan_yang_kuat UUID; v_4901_untuk_mendorong_seseorang UUID; v_4902_menceritakan_keberuntungan UUID; v_4903_untuk_menempati UUID; v_4904_monopoli UUID; v_4905_tanda UUID; v_4906_kesan_pertama UUID; v_4907_untuk_memberikan UUID; v_4908_untuk_mendiskriminasi UUID; v_4909_jari_telunjuk UUID; v_4910_untuk_memberi UUID; v_4911_perjalanan_pulang_pergi UUID; v_4912_untuk_mematuhi UUID; v_4914_hingga_kini UUID; v_4915_tinjauan UUID; v_4916_pemulihan UUID; v_4917_ciri UUID; v_4918_simbol UUID; v_4919_mencurigakan UUID; v_4920_misteri_aneh UUID; v_4921_cerita_hantu UUID; v_4922_saya UUID; v_4923_tidak_mementingkan_diri_sendiri UUID; v_4924_untuk_mengambil_tanggung_jawab UUID; v_4925_untuk_mengguncang_sesuatu UUID; v_4926_getaran UUID; v_4928_pelajaran UUID; v_4929_profesor UUID; v_4930_langsung UUID; v_4931_tidak_langsung UUID; v_4932_wawancara UUID; v_4934_kecelakaan UUID; v_4935_kerusakan UUID; v_4936_disengaja UUID; v_4937_perusahaan UUID; v_4938_pasar_saham UUID; v_4939_perbandingan UUID; v_4940_keringat UUID; v_4941_berbau_berkeringat UUID; v_4942_sungai UUID; v_4943_kappa UUID; v_4944_gletser UUID; v_4945_kanal UUID; v_4946_fugu UUID; v_4947_intens UUID; v_4948_untuk_membakar UUID; v_4949_untuk_menangkap_api UUID; v_4950_sendiri UUID; v_4951_lajang UUID; v_4952_unik UUID; v_4953_kemerdekaan UUID; v_4954_belajar_mandiri UUID; v_4955_binatang_buas UUID; v_4956_monster_raksasa UUID; v_4957_dokter_hewan UUID; v_4958_binatang_buas UUID; v_4959_binatang_buas UUID; v_4962_kuas_tulis UUID; v_4963_pensil UUID; v_4964_pengawas UUID; v_4965_makanan_ringan UUID; v_4966_untuk_menyentuh UUID; v_4967_untuk_memeriksa UUID; v_4968_perdebatan UUID; v_4969_selamat_ulang_tahun UUID; v_4972_mesin_penjual_otomatis UUID; v_4975_tabungan UUID; v_4976_impor UUID; v_4977_untuk_mengekspor UUID; v_4978_untuk_membangun UUID; v_4979_manufaktur UUID; v_4980_berkebun_lanskap UUID; v_4981_renovasi UUID; v_4982_buatan_manusia UUID; v_4983_pembuatan_bir UUID; v_4984_gila UUID; v_4985_identitas_yang_salah UUID; v_4986_salah_baca UUID; v_4987_perbedaan_besar UUID; v_4988_ahli_akupunktur UUID; v_4990_tangan_kedua UUID; v_4991_memimpin UUID; v_4992_pipa_timbal UUID; v_4993_toksisitas_timbal UUID; v_4994_mengiritasi UUID; v_4995_layar_shoji UUID; v_4996_disabilitas UUID; v_4997_keamanan UUID; v_4998_untuk_menghabiskan_waktu UUID; v_4999_surat UUID; v_5065_gaji UUID; v_5075_perut UUID; v_5096_untuk_menangkap UUID; v_5106_pemandangan_spektakuler UUID; v_5630_vertikal UUID; v_7160_untuk_mendinginkan_diri_sendiri UUID; v_7505_alasan UUID; v_7601_patuh UUID; v_7602_mengapa UUID; v_7655_raksasa UUID; v_7714_perayaan UUID; v_7715_kediktatoran UUID; v_7768_pulpen UUID; v_7769_untuk_mempersempit_sesuatu UUID; v_8681_pelanggaran UUID; v_8717_lengan_kanan UUID; v_9072_untuk_mempercayakan_sesuatu UUID; v_9341_untuk_menghapus UUID; v_9346_jarum UUID; v_9363_keseleo UUID; v_9364_mengikis_bersama UUID; v_9367_keadaan UUID; v_9377_tengah_malam UUID; v_9494_kemanjuran UUID; v_9511_catatan UUID;

BEGIN

  DELETE FROM items WHERE level = 26;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '告', 'mengumumkan', 26, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>mengumumkan</radikal>.')
    RETURNING id INTO r_306_mengumumkan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '万', 'sepuluh-ribu', 26, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>sepuluh ribu</radikal>.')
    RETURNING id INTO r_307_sepuluh_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/egg-8791.svg', 'telur', 26, 3, 'Huruf "E" untuk "<radical>telur</radical>" - cukup mudah bukan?')
    RETURNING id INTO r_8791_telur;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/comb.svg', 'sisir', 26, 4, 'Lihatlah semua hal kecil yang menonjol. Anda dapat dengan mudah menggunakannya untuk <radikal>menyisir</radikal> rambut Anda.')
    RETURNING id INTO r_8792_sisir;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '倉', 'gudang', 26, 5, 'Anda meletakkan topi Anda di tanah dan bendera di mulut Anda. Anda memberi tahu dunia bahwa mereka dapat menggunakan mulut Anda sebagai <radikal>gudang</radikal>. Kerongkongan Anda terbuka untuk bisnis penyimpanan. Perlu menyimpan es krim? Silakan gunakan gudang mulut saya. ;D ;D ;D')
    RETURNING id INTO r_8827_gudang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '章', 'bab', 26, 6, 'Radikal ini sama dengan kanji. Artinya <radikal>bab</radikal>.')
    RETURNING id INTO r_8828_bab;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '垂', 'murung', 26, 7, 'Ini adalah radikal <radical>droopy</radical> karena terlihat seperti kue es krim yang murung di atas dudukannya. Kebaikan yang meleleh terkulai di tepi setiap lapisan, dan seluruh bagian atasnya terkulai ke kiri seolah-olah akan menyerah pada gravitasi. Bayangkan betapa melelehnya hingga menjadi sangat lemas… lebih baik segera dimakan.')
    RETURNING id INTO r_9390_murung;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_306_mengumumkan, 'Mengumumkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_307_sepuluh_ribu, 'Sepuluh Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8791_telur, 'Telur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8792_sisir, 'Sisir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8827_gudang, 'Gudang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8828_bab, 'Bab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_9390_murung, 'murung', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '履', 'alas-kaki', 26, 8, '<radical>bendera</radikal> ini menandai tempat orang-orang biasa <radikal>berkeliaran</radikal> hingga <radikal>lubang hitam</radikal> menelan mereka, hanya menyisakan <kanji>alas kaki</kanji> mereka.', 'Jika dilihat lebih dekat, ternyata para gelandangan itu semuanya memakai <kanji>alas kaki</kanji> yang terbuat dari <reading>ree</reading>ds (り). Masuk akal, karena gaya hidup santai para pengembara sangat cocok dengan alas kaki buluh.')
    RETURNING id INTO k_1075_alas_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '造', 'membuat', 26, 9, '"Sebuah <radikal>skuter</radikal>!" Anda <radikal>umumkan</radikal>. Anda mengumumkan ini karena Anda memutuskan inilah yang akan Anda <kanji>buat</kanji>.', 'Namun, skuter telah <kanji>dibuat</kanji>d sebelumnya. Apa yang berbeda dari milikmu? Skuter yang akan Anda buat dirancang khusus untuk membuat <reading>zo</reading>mbies (ぞう) sibuk.')
    RETURNING id INTO k_1281_membuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '授', 'menginstruksikan', 26, 10, 'Ada <radical>jari</radical> yang menjangkau ke arah Anda meminta Anda untuk <radical>menerima</radical> untuk <kanji>menginstruksikan</kanji> mereka. Itu adalah jari-jari siswa. Dan Anda adalah gurunya. Lihat mereka meraih pengetahuan. Mereka ingin menerima pengetahuan ini ke dalam hati dan otak mereka. Instruksikan mereka!', '"Ya! Aku akan <kanji>menginstruksikan</kanji> padamu, murid-muridku yang terkasih!" kamu menangis, "Aku akan mengajarimu cara membuka kotak es (じゅ) kecil!" Itu benar. Anak-anak kecil ini memerlukan bantuan untuk mempelajari cara membuka kotak jus kecil (kecil karena anak-anak masih kecil).')
    RETURNING id INTO k_1282_menginstruksikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '印', 'segel', 26, 11, 'Anda mengambil <radical>sisir</radikal> ini, mematahkan pegangannya, dan menggunakannya untuk <radikal>mencap</radikal> <kanji>segel</kanji> resmi Anda pada sebuah dokumen. Ini semacam proses <kanji>penandaan</kanji> yang berantakan, tapi ini menyelesaikan pekerjaannya.', 'Anda memerlukan <kanji>segel</kanji> ini untuk menginap di <reading>penginapan</reading> (いん). Semua penginapan memerlukan dokumen resmi, jadi Anda harus berimprovisasi dan membuat segel dengan cepat.')
    RETURNING id INTO k_1283_segel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '創', 'membuat', 26, 12, 'Di <radical>gudang</radical> Anda menggunakan <radical>pisau</radical> untuk <kanji>membuat</kanji>. Anda menyimpan potongan kayu tua di gudang Anda, dan Anda menggunakan pisau Anda untuk mengukirnya menjadi benda baru yang hanya dapat Anda buat.', 'Saat Anda <kanji>membuat</kanji> itu baik untuk <membaca>sou</reading>l (そう) Anda. Faktanya, ini sangat membebaskan sehingga ketika Anda benar-benar mendalami ciptaan Anda, terkadang Anda bersumpah jiwa Anda melayang sedikit di luar tubuh Anda. Namun setiap kali Anda menyadarinya, ia tenggelam kembali. Hmm.')
    RETURNING id INTO k_1284_membuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '復', 'memulihkan', 26, 13, 'Anda <radical>berkeliaran</radical> di sekitar <radical>lubang hitam</radical>, menunggu hingga lubang tersebut selesai menghancurkan sesuatu sehingga Anda dapat mengalihkannya ke mode <kanji>pemulihan</kanji>. Anda diberi tahu bahwa semua lubang hitam pada akhirnya akan selesai, dan ketika hal itu selesai, Anda dapat menekan tombol untuk memulihkan semuanya kembali seperti semula.', 'Ketika tidak ada lagi yang bisa dimakan oleh lubang hitam, Anda menekan tombol <kanji>kembalikan</kanji>.... namun tidak terjadi apa-apa. "Oh, <reading>f**k</reading> (ふく) kamu!" kamu berteriak, saat kamu sadar kamu telah dibohongi.')
    RETURNING id INTO k_1285_memulihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '往', 'perjalanan', 26, 14, 'Anda <radical>berkeliaran</radical> di sekitar <radical>master</radical> Anda sampai dia <kanji>berangkat</kanji> dalam suatu <kanji>perjalanan</kanji>. Kamu punya lebih banyak kebebasan untuk melakukan sesuatu setelah majikanmu pergi, jadi sampai saat itu kamu hanya bermalas-malasan dan terlihat sibuk dan menjauhinya.', 'Akhirnya, tiba waktunya untuk <kanji>perjalanan</kanji> majikanmu dan dia memanggilmu dan berkata, "Kamu adalah <read>王</reading> (おう) rumah ini sekarang. Jaga semuanya selagi aku pergi."')
    RETURNING id INTO k_1286_perjalanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '較', 'kontras', 26, 15, '<radical>Mobil</radical> baru Anda tidak <radical>bercampur</radical> dengan baik dengan mobil lain di garasi Anda karena warnanya sangat <kanji>kontras</kanji> dengan yang lain. Semua mobil Anda yang lain berwarna putih bersih, tetapi mobil baru ini merupakan campuran dari banyak warna. Hampir terlihat seperti burung merak atau sesuatu yang sangat berwarna. Sangat kontras.', 'Tadi kubilang seperti apa rupa mobil ini? Oh benar, seekor kacang<reading>ayam</reading> (かく). Mobil ini terlihat seperti burung merak. Warnanya seperti burung merak dan Anda akan terlihat seperti burung merak saat mengendarainya di luar kota. Benar-benar <kanji>kontras</kanji> yang sangat disukai semua mobil lain di luar sana.')
    RETURNING id INTO k_1287_kontras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '筆', 'kuas-tulis', 26, 16, 'Dari <radical>bambu</radical>, Anda membuat <radical>kuas</radikal> – sebuah <kanji>kuas tulis</kanji>. Ini bukan kuas biasa, ingatlah. Ini adalah kuas yang dirancang khusus untuk menulis karakter elegan. Dan itu terbuat dari bambu!', 'Saat <kanji>kuas tulis</kanji> <reading>menabrak</reading> (ひつ) kertas itu, Anda seperti bertransformasi menjadi orang yang benar-benar berbeda. Tiba-tiba Anda menjadi ahli kaligrafi, menulis apa saja dengan cara yang paling indah. Begitu kuas itu menyentuh kertas, maka kuas itu menyala!')
    RETURNING id INTO k_1288_kuas_tulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鉛', 'memimpin', 26, 17, 'Anda memegang <radical>emas</radical> <radical>sirip</radical> di <radical>mulut</radical> Anda saat berbelanja <kanji>timah</kanji> pensil di toko. Toko timah pensil ini hanya menerima sirip emas sebagai pembayaran, tetapi sirip Anda tidak muat di saku dan Anda memerlukan tangan Anda untuk membawa timah agar sirip emas masuk ke mulut Anda.', 'Anda membayar <kanji>timbal</kanji> Anda tetapi kasir memasukkannya ke dalam mulut Anda di tempat sirip emas berada dan... semuanya <read>en</reading>ds (えん).')
    RETURNING id INTO k_1289_memimpin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貯', 'tabungan', 26, 18, 'Anda menyimpan semua <radical>kerang</radical> Anda di bawah <radical>atap</radical> di <radical>jalan</radical> dan itu adalah <kanji>tabungan</kanji> Anda. Kerang dulunya digunakan sebagai uang, dan ini bukanlah kerang yang Anda belanjakan, melainkan kerang yang Anda simpan untuk nanti.', 'Ketika kamu ingin menarik <kanji>tabungan</kanji> kamu, kamu memaksakan diri menggunakan <reading>cho</reading>psticks (ちょ) untuk mengambil kerang. Sumpitnya sangat licin, sulit juga digunakan, sehingga sangat sulit untuk mengambil terlalu banyak uang dari tabungan Anda.')
    RETURNING id INTO k_1290_tabungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '故', 'keadaan', 26, 19, '<radikal>lama</radikal> <radikal>musim dingin</radikal> adalah penyebab <kanji>keadaan</kanji> saat ini. Itulah <kanji>alasan</kanji> keadaan menjadi buruk sekarang.', 'Kenyataannya, <kanji>keadaan</kanji> ini sebenarnya disebabkan oleh satu <reading>子</reading> (こ). Anak ini melewati kota, menghancurkan segala sesuatu yang menghalangi jalannya.')
    RETURNING id INTO k_1291_keadaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '障', 'menghalangi', 26, 20, 'Ada <radical>bangunan</radikal> yang menghalangi <radikal>bab</radikal> berikutnya dalam hidup Anda, dan hal itu <kanji>menghalangi</kanji>Anda. Ini tidak seperti Anda tidak dapat menemukan jalan keluar lain, tetapi ini jelas merepotkan.', 'Seseorang menempatkan bangunan ini di sini khusus untuk <kanji>menghalangi</kanji> Anda. Mereka tahu Anda sudah dekat dengan babak berikutnya dalam hidup Anda, dan mereka sangat ingin menghalangi Anda. Dan di sanalah mereka, duduk di singgasana sambil menyeringai. Itu adalah senjata <read>Shou</reading> (しょう).')
    RETURNING id INTO k_1292_menghalangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '従', 'mematuhi', 26, 21, 'Jika Anda melihat suatu entitas <radical>berkeliaran</radikal>dengan <radical>tanduk</radikal> di kepalanya di atas <radical>rak mantel</radikal> Anda, Anda mungkin harus <kanji>mematuhi</kanji> dan <kanji>menemani</kanji> ke mana pun ia membawa Anda.', 'Jika kamu <kanji>mematuhi</kanji> entitas bertanduk di atas rak mantelmu, kamu akan mendapatkan banyak sekali <reading>Yahudi</reading>el (じゅう)!')
    RETURNING id INTO k_1293_mematuhi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '我', 'saya', 26, 22, '<radikal>ego</radikal> Anda... benar-benar di luar kendali. <kanji>Maksudku</kanji>, egoku tidak lepas kendali. akulah yang terhebat. Itu <kanji>saya</kanji>. Tapi egomu? Ugh, sangat lepas kendali tidak seperti egoku yang luar biasa.', '<kanji>Saya</kanji> adalah yang terhebat di dunia! Aku bukan bayi sepertimu, itu sebabnya. Seorang bayi berkata "<reading>ga</reading> (が) ga ga ga!"')
    RETURNING id INTO k_1294_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '激', 'garang', 26, 23, '<radikal>tsunami</radikal> yang <radikal>putih</radikal>, bergerak ke <radikal>arah</radikal> <radikal>musim dingin</radikal> adalah kekuatan alam yang <kanji>ganas</kanji> dan <kanji>kekerasan</kanji>. Tsunami putih ini terjadi setelah musim dingin, dan itulah sebabnya tsunami berwarna putih—ini adalah tsunami musim dingin. Ini adalah jenis tsunami paling dahsyat dan paling dahsyat yang pernah ada.', 'Tsunami terlalu <kanji>ganas</kanji>, terlalu <kanji>ganas</kanji>, dan sebelum Anda menyadari apa yang terjadi, <reading>Gecki</reading> (げき), tokek kesayangan Anda, terangkat dan terbawa ke udara.')
    RETURNING id INTO k_1295_garang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '励', 'mendorong', 26, 24, '"<radical>Tebing</radikal> <radikal>Sepuluh Ribu</radikal> <radikal>Kekuatan</radikal>" adalah tempat yang Anda tuju jika Anda ingin <kanji>didorong</kanji>d.', 'Ketika Anda sampai di sana, hal itu <kanji>menyemangati</kanji> Anda. Tebing itu berkata, "Hei, aku anjurkan kamu membeli senjata <reading>ray</reading> (れい)."')
    RETURNING id INTO k_1297_mendorong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '討', 'menghukum', 26, 25, 'Mereka <radikal>mengatakan</radikal> menggunakan alat <radikal>pengukur</radikal> (seperti penggaris) adalah cara yang baik untuk <kanji>menghukum</kanji> seseorang. Mereka melakukan sesuatu yang buruk? Hukumlah mereka dengan menampar pergelangan tangan, kaki, mata, telinga, apa saja! Mereka mengatakan sesuatu yang tidak pada tempatnya? HUKUM MEREKA!', 'Anda <kanji>dihukum</kanji>d karena Anda mencoba mengatakan sesuatu dalam bahasa Inggris di <reading>とう</reading>きょう. Semua orang di sekitarmu perlahan berbalik, mata menyala-nyala dan penggaris di tangan, siap menghukummu karena mengucapkan kata-kata terlarang itu.')
    RETURNING id INTO k_1298_menghukum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '郵', 'surat', 26, 26, '<radical>droopy</radical> <radical>building</radical> adalah tempat orang bermalas-malasan di bawah karung besar berisi <kanji>surat</kanji>, alias kantor <kanji>pos</kanji>.', 'Karena ini merupakan pekerjaan yang menuntut fisik, semua operator <kanji>mail</kanji> di kantor <kanji>pos</kanji> ini adalah <reading>Anda</reading>ths (ゆう). Menurutku, hanya kaum muda yang bisa menangani pengangkatan tas surat yang berat seperti ini.')
    RETURNING id INTO k_1299_surat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '針', 'jarum', 26, 27, 'Pada <radical>emas</radical> <radical>cross</radical>, Anda melihat <kanji>jarum</kanji> mencuat darinya. Jarumnya tepat di tengah-tengah salib emas. Jika Yesus ada di sana, jarumnya akan menusuk tepat di dadanya.', 'Anda akan menyerah pada <kanji>jarum</kanji> ketika jarum itu muncul dan terbang langsung ke <reading>tulang kering</reading> (しん) Anda. Aduh! Sekarang Anda berusaha mati-matian untuk mencabut jarum dari tulang kering Anda, tetapi kali ini jarum itu tidak mau bergerak. Mungkin Anda seharusnya mengurus urusan Anda sendiri.')
    RETURNING id INTO k_1300_jarum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '徴', 'indikasi', 26, 28, '<radikal>raja</radikal>yang berkeliaran <radikal>pegunungan</radikal> <radikal>radikal> di <radikal>musim dingin</radikal> adalah <kanji>indikasi</kanji> atau <kanji>tanda</kanji> dari sesuatu yang akan datang.', 'Saat kamu melihat raja gunung berkeliaran di musim dingin, kamu tahu itu adalah <kanji>indikasi</kanji> bahwa Nyonya <reading>Chou</reading> (ちょう) akan segera muncul. Ini seperti situasi di Hari Groundhog, tetapi itu berarti Ny. Chou akan segera keluar, mungkin lebih awal untuk musim ini.')
    RETURNING id INTO k_1301_indikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '怪', 'mencurigakan', 26, 29, 'Anda melihat <radical>jiwa</radikal> mengambang di sekitar <radikal>batu nisan</radikal> bertingkah <kanji>mencurigakan</kanji>. Agar adil, jika jiwa ingin berada di mana saja, batu nisan mungkin berada di urutan teratas dalam daftar, tapi yang ini sepertinya melakukan sesuatu yang aneh.', 'Anda menyelinap di sekitar batu nisan untuk melihat apa yang dilakukan oleh jiwa <kanji>mencurigakan</kanji> ini, dan Anda menyadari bahwa ia berpura-pura menjadi <read>kay</reading>ak (かい). Jiwa sedang duduk di belakang batu nisan, di atas kayak kecil, menggerakkan lengannya seperti sedang mendayung di air.

Yang lebih mencurigakan lagi, jiwa tersebut sepertinya sedang memegang <reading>ke</reading>ttle (け). Mengingat jiwa sudah mati, sepertinya ini bukan sesuatu yang diperlukan.')
    RETURNING id INTO k_1302_mencurigakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '獣', 'binatang-buas', 26, 30, 'Di <radical>rumput</radical> dekat <radical>sawah</radical> terdapat <radical>tanaman merambat</radical> yang merupakan sejenis <radical>anjing</radical> <kanji>binatang</kanji>, <kanji>hewan</kanji> yang ganas. Tanaman merambat ini bukan hanya anjing biasa, ia lebih mirip binatang buas, lebih mirip hewan liar daripada hewan peliharaan.', '<kanji>binatang</kanji> sedang menjaga <reading>Yahudi</reading>el (じゅう) miliknya yang berharga, yang terkubur di rumput atau sawah di suatu tempat. Jika Anda tidak ingin binatang itu mengira Anda datang untuk mencuri permata itu, sebaiknya jaga jarak.')
    RETURNING id INTO k_1303_binatang_buas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '菓', 'kue', 26, 31, 'Anda mengambil beberapa <radical>bunga</radikal> dan beberapa <radikal>buah</radikal> dan membuat <kanji>kue</kanji> darinya. Kuenya terlihat sangat bagus dan beraroma. Buahnya membuat rasanya enak dan bunganya menjadi dekorasi kue yang bagus.', 'Anda sedang berdiri di belakang, mengagumi <kanji>kue</kanji> Anda ketika Anda mendengar mesin <reading>ca</reading>r (か) berputar dan sebelum Anda menyadarinya, kue Anda telah terlindas. Mobil itu datang entah dari mana dan menabrak kue Anda, menyemprotkan potongan kue buah dan bunga ke mana-mana. Mobil bodoh!')
    RETURNING id INTO k_1305_kue;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '河', 'sungai', 26, 32, 'Saat terjadi <radikal>tsunami</radikal>, <radikal>cincin bibir</radikal> Anda terlepas saat Anda mencoba menyeberangi <kanji>sungai</kanji>. Tidak ada jalan lain menuju keselamatan, Anda harus menyeberangi sungai yang deras, tetapi Anda kehilangan pijakan dan wajah Anda terbentur batu dan kehilangan cincin bibir Anda.', 'Tapi kenapa kamu tetap mencoba menyeberangi <kanji>sungai</kanji> ini? Ya, ca</reading>r (か) Anda berada di sisi lain, dan Anda berpikir jika Anda bisa naik ke mobil, Anda bisa menghindari tsunami dan selamat. Sayang sekali kamu terjatuh dan merobek cincin bibirmu.')
    RETURNING id INTO k_1306_sungai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '振', 'menggoyang', 26, 33, 'Anda mencoba menggunakan <radical>jari</radical> Anda untuk menyebabkan <radical>tanah longsor</radical> sehingga Anda harus <kanji>mengguncang</kanji> bumi. Anda mungkin tidak akan berhasil, tetapi hal terbaik yang dapat Anda lakukan adalah menggoyangkan tangan Anda ke tanah sekuat yang Anda bisa. Sepertinya Anda sedang mencoba <kanji>melambaikan</kanji> ke tanah sekarang.', 'Kamu pikir kamu akhirnya bisa <kanji>mengguncang</kanji> bumi, tetapi ketika kamu melihat ke bawah, yang ada hanyalah <reading>tulang kering</reading>mu (しん). Sialan kamu bersinar, saya pikir saya membuat beberapa kemajuan. Hei tunggu...kenapa kamu tidak berhenti?!')
    RETURNING id INTO k_1307_menggoyang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '汗', 'keringat', 26, 34, '<radikal>tsunami</radikal> yang melanda wajah <radikal>kering</radikal> Anda hanyalah <kanji>keringat</kanji>.', '<kanji>keringat</kanji> tidak hanya di wajahmu, tapi juga menetes ke <reading>pantat</reading> (あせ).')
    RETURNING id INTO k_1308_keringat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '再', 'lagi', 26, 35, 'Di bawah <radical>tanah</radikal>, sebuah <radikal>kepala</radikal> yang tertutup <radikal>tanah</radikal> muncul... <kanji>lagi</kanji>! Ini bukan pertama kalinya Anda melihat kepala terkubur ini, juga bukan yang terakhir. Kepala yang tertutup tanah ini bersembunyi di bawah tanah kemanapun Anda pergi, dan terus bermunculan untuk menakut-nakuti Anda lagi dan lagi.', 'Kepala yang tertutup tanah meminta bantuan <kanji>lagi</kanji> dan lagi, tapi kamu hanya punya <read>gergaji</reading> (さ). Jadi kamu mulai menggalinya, mengikis kotorannya, sampai kamu melihat kepala ini bertubuh <reading>cy</reading>borg (さい)!')
    RETURNING id INTO k_1310_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '接', 'berdampingan', 26, 36, '<radical>jari</radical> Anda bersentuhan saat Anda <radical>berdiri</radical> dengan <radical>wanita</radical> dan <kanji>berdampingan</kanji> dengan diri Anda sendiri. Anda bersatu, Anda adalah satu.', 'Semua wanita <kanji>berdampingan</kanji> dalam <reading>set</reading> (せつ). Tentu saja, dua set. Seorang wanita dengan wanita lainnya, berdiri berbarengan.')
    RETURNING id INTO k_1311_berdampingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '独', 'sendiri', 26, 37, 'Pernah ada seekor <radical>hewan</radikal> dengan teman <radical>serangga</radikal> yang merasa sangat <kanji>sendirian</kanji> kecuali dia ada. Hewan dan serangga bukanlah pasangan yang tidak mungkin berpasangan, namun keduanya rukun dan tidak suka sendirian tanpa satu sama lain.', 'Salah satu aktivitas yang tidak dapat dilakukan hewan <kanji>sendirian</kanji> adalah memecahkan teka-teki Su<reading>doku</reading> (どく). Serangga itu selalu harus membantunya, dan bersama-sama mereka adalah tim pemecah Sudoku yang tak terhentikan.')
    RETURNING id INTO k_1312_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '占', 'harta-benda', 26, 38, 'Radikal <radikal>keberuntungan</radikal> dan kanji <kanji>keberuntungan</kanji> sama persis! Ini juga bisa berarti <kanji>menempati</kanji>, mungkin karena mengetahui keberuntungan menunjukkan kepada Anda bagaimana Anda akan menjalani hidup Anda. Atau bagaimana hal itu akan menyibukkan Anda…

Anda sudah lama tidak melihat kata radikal, jadi inilah mnemonik untuk membantu Anda mengingat kanji: Letakkan jari kaki Anda di mulut untuk mengetahui <kanji>keberuntungan</kanji> Anda. Rasanya akan memberi tahu Anda semua yang perlu Anda ketahui tentang keberuntungan Anda. Namun jari kaki Anda harus <kanji>menempati</kanji> terlebih dahulu agar dapat berfungsi.', 'Untuk <kanji>mengisi</kanji> waktu luang yang Anda miliki, pergilah dan dapatkan <kanji>peruntungan</kanji> Anda di peramal. Keberuntungan Anda adalah Anda akan bertemu dengan <reading>cen</reading>taur (せん) dalam waktu dekat. Saat itulah Anda menyadari bahwa peramal itu sebenarnya adalah centaur! Keberuntungan telah menjadi kenyataan!')
    RETURNING id INTO k_1313_harta_benda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '垂', 'terkulai', 26, 39, 'Kanji ini berasal langsung dari kata radikal <radical>droopy</radical>. Apa fungsi benda murung? Mereka <kanji>terkulai</kanji>. Oh, dan terkadang <kanji>menjuntai</kanji> juga.', 'Anda tahu apa yang lebih baik jika <kanji>terkulai</kanji> sedikit? Sebuah <membaca>swi</reading>ng (すい). Ayunan dengan dudukan karet yang longgar sangat nyaman untuk diduduki dan <kanji>menjuntai</kanji> kaki Anda — jauh lebih baik daripada ayunan kayu yang kaku.')
    RETURNING id INTO k_1519_terkulai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拭', 'menghapus', 26, 40, 'Anda menggunakan <radical>jari</radical> Anda untuk melakukan sesuatu yang penting untuk <radical>konstruksi</radical> <radical>upacara</radical> ini. Apa yang benar-benar penting untuk konstruksi upacara ini, menggunakan jari Anda? Ya… Anda <kanji>menghapus</kanji> lantai.', 'Sekarang <kanji>usap</kanji> lantai ini, dasar <reading>foo</reading>l (ふ)!')
    RETURNING id INTO k_9338_menghapus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '捻', 'memutar', 26, 41, '"Ambil <radical>jari</radical>mu. <radical>Sekarang</radical>, letakkan di <radical>jantung</radical> dan <kanji>twist</kanji> musuhmu." Ini adalah kata-kata dari master seni bela diri Anda saat dia mengajari Anda teknik terakhir dan terhebatnya: "finger-heart twister".', 'Penantang terakhir yang muncul adalah… gurumu sendiri, yang mengajarimu teknik <kanji>memutar</kanji>. Ternyata dia adalah seorang <read>nen</reading>doroid (ねん), jadi dia bahkan tidak tega jika kamu memelintirnya. Yah, kamu kacau.')
    RETURNING id INTO k_9361_memutar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '挫', 'keseleo', 26, 42, 'Saat Anda mengacungkan <radical>jari</radical> Anda, <radical>orang</radical> — dan kemudian <radical>orang</radical> kedua — menghentakkannya ke <radical>tanah</radical>, menyebabkan jari Anda <kanji>terkilir</kanji> yang serius. Hal itu tidak baik bagi kedua orang tersebut, dan sekarang Anda merasa sangat <kanji>berkecil hati</kanji> terhadap berbagai hal.', 'Anda menunjukkan <kanji>keseleo</kanji> Anda ke dokter, dan dia meminta Anda pergi menemui C<reading>za</reading>r (ざ). Di negara Anda, hanya Tsar yang mempunyai wewenang untuk mengobati keseleo separah ini.')
    RETURNING id INTO k_9362_keseleo;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1075_alas_kaki, 'Alas kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1281_membuat, 'Membuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1282_menginstruksikan, 'Menginstruksikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1283_segel, 'Segel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1283_segel, 'Tanda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1284_membuat, 'Membuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1285_memulihkan, 'Memulihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1286_perjalanan, 'Perjalanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1286_perjalanan, 'Berangkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1287_kontras, 'Kontras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1287_kontras, 'Membandingkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1288_kuas_tulis, 'Kuas Tulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1289_memimpin, 'Memimpin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1290_tabungan, 'Tabungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1291_keadaan, 'Keadaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1291_keadaan, 'Alasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1292_menghalangi, 'Menghalangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1293_mematuhi, 'Mematuhi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1293_mematuhi, 'Menemani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1293_mematuhi, 'Mengikuti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1294_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1294_saya, 'Aku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1295_garang, 'Garang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1295_garang, 'Brutal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1297_mendorong, 'Mendorong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1298_menghukum, 'Menghukum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1299_surat, 'Surat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1299_surat, 'Pos', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1300_jarum, 'Jarum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1301_indikasi, 'Indikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1301_indikasi, 'Tanda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1302_mencurigakan, 'Mencurigakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1303_binatang_buas, 'Binatang buas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1303_binatang_buas, 'Hewan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1305_kue, 'Kue', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1306_sungai, 'Sungai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1307_menggoyang, 'Menggoyang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1307_menggoyang, 'Melambai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1308_keringat, 'Keringat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1310_lagi, 'Lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1311_berdampingan, 'Berdampingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1312_sendiri, 'Sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1313_harta_benda, 'Harta benda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1313_harta_benda, 'Menempati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1519_terkulai, 'Terkulai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1519_terkulai, 'Menjuntai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9338_menghapus, 'Menghapus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9361_memutar, 'Memutar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9362_keseleo, 'Keseleo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9362_keseleo, 'Mengecilkan hati', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1075_alas_kaki, 'り', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1075_alas_kaki, 'は', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1281_membuat, 'ぞう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1281_membuat, 'つく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1282_menginstruksikan, 'じゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1282_menginstruksikan, 'さず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1283_segel, 'いん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1283_segel, 'しるし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1284_membuat, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1285_memulihkan, 'ふく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1286_perjalanan, 'おう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1287_kontras, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1287_kontras, 'こう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1288_kuas_tulis, 'ひつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1288_kuas_tulis, 'ふで', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1289_memimpin, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1289_memimpin, 'なまり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1290_tabungan, 'ちょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1290_tabungan, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1290_tabungan, 'たくわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1291_keadaan, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1291_keadaan, 'ゆえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1292_menghalangi, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1292_menghalangi, 'さわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1293_mematuhi, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1293_mematuhi, 'したが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1294_saya, 'が', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1294_saya, 'われ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1294_saya, 'わ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1295_garang, 'げき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1295_garang, 'はげ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1297_mendorong, 'れい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1297_mendorong, 'はげ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1298_menghukum, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1298_menghukum, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1299_surat, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1300_jarum, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1300_jarum, 'はり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1301_indikasi, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1301_indikasi, 'しるし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1302_mencurigakan, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1302_mencurigakan, 'け', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1302_mencurigakan, 'あや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1303_binatang_buas, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1303_binatang_buas, 'けもの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1305_kue, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1306_sungai, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1306_sungai, 'かわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1306_sungai, 'こう', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1306_sungai, 'こお', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1307_menggoyang, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1307_menggoyang, 'ふ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1308_keringat, 'あせ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1308_keringat, 'かん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1310_lagi, 'さ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1310_lagi, 'さい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1310_lagi, 'ふたた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1311_berdampingan, 'せつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1311_berdampingan, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1312_sendiri, 'どく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1312_sendiri, 'ひと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1313_harta_benda, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1313_harta_benda, 'うらな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1313_harta_benda, 'し', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1519_terkulai, 'すい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1519_terkulai, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1519_terkulai, 'しだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9338_menghapus, 'ふ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9338_menghapus, 'ぬぐ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9338_menghapus, 'しょく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9361_memutar, 'ねん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9361_memutar, 'ひね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9361_memutar, 'ねじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9362_keseleo, 'ざ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9362_keseleo, 'くじ', 'kunyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '栄える', 'untuk-berkembang', 26, 43, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>berkembang</kanji> atau <kanji>makmur</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to flourish</vocabulary> atau <vocabulary>to prosper</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Apa yang membuat Anda berkembang? Anda adalah pemain <reading>sepak bola</reading> (さか) luar biasa yang berkembang dan berkembang di mana pun Anda pergi untuk memainkan olahraga yang luar biasa ini (tetapi tidak sebagus bisbol).', 'Untuk Berkembang, Untuk Sejahtera')
    RETURNING id INTO v_4012_untuk_berkembang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '限定', 'membatasi', 26, 44, '<kanji>Batas</kanji> tertentu telah <kanji>ditentukan</kanji>d. Ini adalah <vocabulary>batas</vocabulary> dari suatu hal tertentu, yang tidak dapat dilampaui.

Kata ini berarti memberikan batasan atau pembatasan tertentu terhadap jumlah, ruang lingkup, atau ketersediaan sesuatu untuk tujuan khusus atau eksklusif. Ini sering digunakan untuk hal-hal seperti penjualan atau produk yang hanya tersedia dalam waktu terbatas atau dalam jumlah terbatas.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Membatasi')
    RETURNING id INTO v_4745_membatasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '渡す', 'untuk-menyerahkan', 26, 45, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>transit</kanji>. Itu juga ada dalam kata kerja 渡る, yang berarti "menyeberang". Namun dengan 渡す, ini lebih seperti Anda mengirimkan sesuatu, biasanya ke orang lain. Jadi 渡す berarti <kosa kata>menyerah</vocabulary>.

Ini juga bisa berarti <vocabulary>menyeberangi sesuatu</vocabulary> sungai, atau <vocabulary>meletakkan sesuatu melintasi</vocabulary> suatu hamparan, seperti ketika Anda meletakkan papan di atas lubang atau membangun jembatan di seberang sungai.

Untuk mengingat す dalam 渡す, pikirkan untuk menggugat seseorang. Saat Anda <reading>menuntut</reading> (す) mereka, Anda harus menyerahkan surat-suratnya agar mereka tahu bahwa Anda menggugat. Jika Anda tidak mengambil surat-suratnya, Anda tidak dapat menuntut!', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Menyerahkan, Untuk Menyeberang Sesuatu, Untuk Meletakkan Sesuatu')
    RETURNING id INTO v_4778_untuk_menyerahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '規模', 'skala', 26, 46, '<kanji>standar</kanji> dari <kanji>imitasi</kanji> adalah meniru <vocabulary>skala</vocabulary> dan <vocabulary>scope</vocabulary> dari aslinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Skala, Cakupan, Ukuran')
    RETURNING id INTO v_4801_skala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '替わる', 'untuk-diganti', 26, 47, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengganti</kanji>, dan kata ini berarti <vocabulary>diganti</vocabulary>, <vocabulary>diganti</vocabulary>, dan <vocabulary>diganti</vocabulary>.

Ingin tahu tentang perbedaan antara 代わる dan 替わる? 代わる digunakan ketika seseorang atau sesuatu menggantikan orang lain, seperti menggantikan rekan kerja yang sakit. Sedangkan 替わる digunakan ketika sesuatu atau situasi berpindah tempat atau digantikan dengan sesuatu yang baru, seperti ketika berbicara tentang pergantian generasi atau pengambilalihan kabinet pemerintahan yang baru.

Kata kerja ini bersifat intransitif, artinya tidak mengambil objek langsung. Terkadang Anda akan melihatnya dengan partikel を, karena dalam kasus ini を menunjukkan "jalan" dan bukan objek langsung. Misalnya, 席を替わる (untuk berpindah tempat duduk) menunjukkan lokasi Anda berpindah dari satu tempat duduk ke tempat duduk lainnya. Demikian pula, 電話を替わる menunjukkan bahwa panggilan sedang diserahkan kepada orang lain.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Diganti, Untuk Diganti, Untuk Ditukar')
    RETURNING id INTO v_4838_untuk_diganti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '間違い', 'sebuah-kesalahan', 26, 48, 'Kami menunggu <kanji>interval waktu</kanji>, dan pada setiap interval <kanji>berbeda</kanji>. Semuanya seharusnya sama. Apakah ada <vocabulary>kesalahan</vocabulary>?', 'Ambillah bacaan 間 (ま dari 間に合う) dan 違う dan Anda akan mendapatkan bacaan untuk kata ini juga.', 'Sebuah Kesalahan, Kesalahan')
    RETURNING id INTO v_4882_sebuah_kesalahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '載せる', 'untuk-menempatkan-pada-sesuatu', 26, 49, 'Ingat bagaimana 載る adalah "ditempatkan"? Yang ini <vocabulary>untuk diletakkan pada sesuatu</vocabulary>, seperti mug di atas meja. 載せる bersifat transitif, dan Anda mengetahuinya karena Anda melakukannya<reading>sel</reading>f (せる) Anda sendiri. Seperti 載る, 載せる juga sering merujuk pada memasukkan sesuatu ke dalam dokumen tertulis atau publikasi, sehingga dapat berarti <vocabulary>to put on record</vocabulary>.

Perhatikan bahwa 載せる tidak pernah digunakan untuk merujuk pada mengenakan pakaian atau aksesori. Itu masing-masing adalah 着る atau 着ける, yang telah Anda pelajari.', 'Bacaannya dibagikan dengan 載る, selama Anda mengingatnya, Anda dapat mengingatnya.', 'Untuk Menempatkan Pada Sesuatu, Untuk Mengenakan Sesuatu, Untuk Dicatat')
    RETURNING id INTO v_4883_untuk_menempatkan_pada_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気象庁', 'badan-cuaca', 26, 50, '<kanji>energi</kanji> <kanji>fenomena</kanji> <kanji>agen</kanji> terdengar seperti sesuatu yang sangat keren tetapi sebenarnya itu hanyalah <vocabulary>agen cuaca</vocabulary> atau <vocabulary>badan meteorologi</vocabulary>. Tidak ada hal mencurigakan yang terjadi di sini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Badan Cuaca, Badan Meteorologi')
    RETURNING id INTO v_4884_badan_cuaca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '構造', 'struktur', 26, 51, 'Pertama, Anda harus <kanji>menyiapkan</kanji> <vocabulary>struktur</vocabulary> sesuatu untuk <kanji>membuat</kanji> itu. Struktur ini penting untuk penciptaan segala sesuatu, jika tidak maka akan berantakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Struktur')
    RETURNING id INTO v_4886_struktur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '再開', 'pembukaan-kembali', 26, 52, '<kanji>Sekali lagi</kanji> sedang <kanji>terbuka</kanji>. Ini adalah <vocabulary>pembukaan kembali</vocabulary> atau <vocabulary>dimulainya kembali</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Jangan lupakan ekstra itu い!', 'Pembukaan kembali, Dimulainya kembali')
    RETURNING id INTO v_4891_pembukaan_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '再度', 'lagi', 26, 53, '<kanji>Lagi</kanji> dengan <kanji>kejadian</kanji> itu? Kejadian tersebut kini telah terjadi <vocabulary>lagi</vocabulary>.

Perhatikan bahwa kata ini relatif formal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ingatlah bahwa ada い yang bersembunyi di sana!', 'Lagi, Kedua Kalinya')
    RETURNING id INTO v_4893_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刺激', 'stimulasi', 26, 54, 'Anda mempunyai semua <kanji>tusukan</kanji> kecil yang sangat <kanji>ganas</kanji> pada Anda. Mereka kesemutan seperti orang gila. Ini merupakan <vocabulary>stimulasi</vocabulary> yang hebat pada tubuh Anda. *kesemutan kesemutan.*', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda sudah mempelajari cara membaca 刺 ini dengan 名刺, namun inilah mnemonik yang dapat digunakan jika Anda tidak dapat mengingatnya:

<vocabulary>Stimulasi</vocabulary> pada <reading>she</reading>p (し) Anda adalah cara terbaik untuk membuat bulunya tumbuh lebih cepat. Semua domba paling berbulu dirangsang setiap hari dengan pijatan dan olahraga, jika Anda memikirkannya. Domba butuh rangsangan!', 'Stimulasi, Mendorong, Merangsang')
    RETURNING id INTO v_4894_stimulasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '創造', 'penciptaan', 26, 55, '<kanji>Buat</kanji>! <kanji>Buat</kanji>! Jika Anda melakukan ini, Anda sedang melakukan <vocabulary>creation</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penciptaan')
    RETURNING id INTO v_4897_penciptaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '創立', 'pembentukan', 26, 56, '<kanji>Buat</kanji> dan <kanji>berdiri</kanji>. Ini adalah <vocabulary>pendirian</vocabulary> Anda, <vocabulary>pendirian</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembentukan, Pendirian')
    RETURNING id INTO v_4899_pembentukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '激励', 'dorongan-yang-kuat', 26, 57, 'Jika seseorang <kanji>galak</kanji> ketika mereka <kanji>menyemangati</kanji> Anda, itu adalah <vocabulary>dorongan yang kuat</vocabulary>! 

Kata ini agak formal, dan menggunakannya akan benar-benar menyampaikan penghargaan Anda atas <vocabulary>dorongan</vocabulary> yang diberikan seseorang kepada Anda. Bahkan jika mereka hanya melontarkan 頑張れ ke arah Anda, menyebut 激励 akan membuatnya terdengar seperti dorongan terkuat dan terhangat yang pernah Anda dapatkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dorongan yang Kuat, Dorongan')
    RETURNING id INTO v_4900_dorongan_yang_kuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '励ます', 'untuk-mendorong-seseorang', 26, 58, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendorong</kanji> dan versi kosakata kata kerjanya adalah <kosakata>mendorong seseorang</vocabulary> (atau <vocabulary>mendorong</vocabulary>).', 'Pikirkan tentang menyemangati <reading>wanita tua</reading> (はげ). Dia membutuhkan dorongan karena dia perempuan tua, dan tidak ada yang menyukainya karena itu.', 'Untuk Mendorong Seseorang, Untuk Menghibur Seseorang, Untuk Mendorong')
    RETURNING id INTO v_4901_untuk_mendorong_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '占い', 'menceritakan-keberuntungan', 26, 59, 'Meskipun ada い di akhir, ini rumit dan bukan kata sifat. Kanjinya adalah <kanji>keberuntungan</kanji>, dan kosakatanya adalah <vocabulary>ramalan</vocabulary>.', 'Aku akan melakukan <vocabulary>meramal</vocabulary> padamu... hmmm... Begitu... ohhhh... Sepertinya kamu akan tinggal di <reading>Uranu</reading> (うらな) dalam waktu dekat, biayanya $50. Benar-benar ramalan yang bodoh untuk $ 50, Anda pasti tidak akan tinggal di sana, kecuali yang dia maksud adalah Anda, mungkin saja.', 'Menceritakan Keberuntungan')
    RETURNING id INTO v_4902_menceritakan_keberuntungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '占める', 'untuk-menempati', 26, 60, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menempati</kanji> jadi versi kata kerjanya adalah <vocabulary>to menempati</vocabulary>.', 'Apa hal yang paling ingin Anda <vocabulary> kuasai</vocabulary> di seluruh dunia? Kawanan <reading>shee</reading>p (し) Anda sendiri. Selain itu, seorang peramal (ingat, kanji ini juga berarti keberuntungan) memberi tahu Anda bahwa jika Anda menempati dombanya, Anda akan mendapatkan keberuntungan! Harus melakukan apa yang dia katakan!', 'Untuk Menempati, Untuk Mempertanggungjawabkan')
    RETURNING id INTO v_4903_untuk_menempati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独占', 'monopoli', 26, 61, 'Anda <kanji>sendirian</kanji> dalam apa yang Anda <kanji>tempati</kanji>. Tidak seorang pun kecuali Anda yang menempatinya. Anda memiliki <vocabulary>monopoli</vocabulary>. Anda <vocabulary>memonopoli</vocabulary> itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Monopoli, Memonopoli')
    RETURNING id INTO v_4904_monopoli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '印', 'tanda', 26, 62, 'Kanji dan kata-katanya hampir persis sama. Kata ini berarti <vocabulary>tanda</vocabulary>.', 'Anda melihat seorang wanita cantik di depan Anda. Dia menunjukkan <vocabulary>tanda</vocabulary> pada selembar kertas. Itu adalah tanda yang memberitahumu bahwa dia orang Rusia (しるし)!', 'Tanda, Token')
    RETURNING id INTO v_4905_tanda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '第一印象', 'kesan-pertama', 26, 63, '<kanji>Fenomena</kanji> (第一) <kanji>yang pertama adalah apa yang <kanji>segel</kanji>di kepala Anda. Ini adalah <vocabulary>kesan pertama</vocabulary> Anda terhadap sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesan pertama')
    RETURNING id INTO v_4906_kesan_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '届ける', 'untuk-memberikan', 26, 64, '届く adalah "untuk disampaikan." Kata ini adalah saat Anda melakukan penyampaian sebenarnya, menjadikannya <vocabulary>to delivery</vocabulary>. Anda dapat mengingat ini karena Anda sangat <read>care</reading> (ける) terhadap paket tersebut sehingga Anda mengirimkannya sendiri, sehingga melakukan tindakan mengantarkannya!', 'Pembacaannya sama dengan 届く dan Anda dapat menggunakannya untuk mengirimkan memori ke otak Anda.', 'Untuk Memberikan')
    RETURNING id INTO v_4907_untuk_memberikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '差別する', 'untuk-mendiskriminasi', 26, 65, '差別 adalah diskriminasi. Ini adalah versi kata kerjanya, <vocabulary>to discriminate</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Mendiskriminasi')
    RETURNING id INTO v_4908_untuk_mendiskriminasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人差し指', 'jari-telunjuk', 26, 66, '<kanji>orang</kanji> <kanji>perbedaan</kanji> <kanji>jari</kanji> Anda adalah jari yang Anda gunakan untuk menunjuk orang untuk membedakannya dari orang lain. Ini adalah <vocabulary>jari telunjuk</vocabulary> Anda... <vocabulary>jari telunjuk</vocabulary> Anda.', 'Bacaannya adalah semua bacaan kun''yomi dari segalanya. Kata 人, kata 差す, dan kata 指. Luangkan waktumu dengan yang ini, ini agak aneh.', 'Jari telunjuk, Jari Penunjuk')
    RETURNING id INTO v_4909_jari_telunjuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '差し上げる', 'untuk-memberi', 26, 67, 'Ini adalah cara yang sangat rendah hati dan sopan untuk mengatakan "<vocabulary>memberi</vocabulary>," mungkin karena Anda menurunkan diri dan mengangkat benda itu ke atas kepala Anda sedemikian rupa sehingga Anda harus menunjuknya karena jika Anda menyentuhnya, Anda tetap akan menajiskannya, jadi, Anda tahu, arahkan ke sana dan angkat ke atas, dasar cacing kecil di tanah.', 'Bacaannya adalah 差す dan 上げる digabungkan, keduanya semoga kata-katanya sudah Anda ketahui sekarang.', 'Untuk Memberi, Untuk Bangkit')
    RETURNING id INTO v_4910_untuk_memberi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '往復', 'perjalanan-pulang-pergi', 26, 68, '<kanji>Berangkat</kanji> lalu <kanji>kembalikan</kanji> diri Anda kembali ke tempat keberangkatan semula. Jika Anda melakukan ini (berangkat dan kembali), Anda memiliki <vocabulary>perjalanan pulang pergi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perjalanan Pulang Pergi, Lakukan Perjalanan Pulang Pergi, Bolak-balik')
    RETURNING id INTO v_4911_perjalanan_pulang_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '従う', 'untuk-mematuhi', 26, 69, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menuruti</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>menaati</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Saya akan <vocabulary>menaati</vocabulary> Anda. Saya pikir perintah Anda sedikit <reading>sial が</reading> (したが), saya akan melakukannya dan mematuhi Anda. 

(Catatan kecil, tahukah Anda が di tengah kalimat bisa berarti "tetapi" dalam bahasa Jepang? Anggap saja seperti itu artinya di sini.)', 'Untuk Mematuhi, Untuk Mengikuti')
    RETURNING id INTO v_4912_untuk_mematuhi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '従来', 'hingga-kini', 26, 70, 'Anda telah <kanji>mematuhi</kanji>semua yang <kanji>datang</kanji> <vocabulary>hingga saat ini</vocabulary>. Hal ini karena ini adalah cara <vocabulary>konvensional</vocabulary> dalam melakukan sesuatu, dan itulah yang <vocabulary>konvensional</vocabulary> diharapkan dari Anda.

Kata ini adalah cara yang relatif formal untuk membicarakan keadaan hingga saat ini. Biasanya digunakan dengan の untuk memodifikasi kata benda atau frasa, atau sebagai kata keterangan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hingga kini, Konvensional, Secara konvensional')
    RETURNING id INTO v_4914_hingga_kini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '復習', 'tinjauan', 26, 71, '<kanji>Kembalikan</kanji> apa yang telah <kanji>pelajari</kanji>dengan <vocabulary>review</vocabulary>s. Itu yang kamu lakukan di WaniKani, kan?

復習 adalah untuk <vocabulary>meninjau</vocabulary> hal-hal yang telah Anda pelajari untuk memastikannya melekat. Beberapa orang juga menyebutnya <vocabulary>revisi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tinjauan, Meninjau, Merevisi')
    RETURNING id INTO v_4915_tinjauan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回復', 'pemulihan', 26, 72, 'Sering <kanji>kali</kanji> Anda <kanji>memulihkan</kanji> sesuatu. Anda melakukan ini berulang kali untuk <vocabulary>pemulihan</vocabulary> hal ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemulihan')
    RETURNING id INTO v_4916_pemulihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '特徴', 'ciri', 26, 73, '<kanji>khusus</kanji> <kanji>indikasi</kanji> pada sesuatu atau diri Anda sendiri adalah <vocabulary>karakteristik</vocabulary> khusus. Itu adalah <vocabulary>fitur khas</vocabulary> yang ada.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ciri, Ciri Khas')
    RETURNING id INTO v_4917_ciri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '象徴', 'simbol', 26, 74, 'Sebuah <kanji>fenomena</kanji> yang merupakan <kanji>indikasi</kanji> dari sesuatu yang lain disebut <vocabulary>simbol</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Simbol')
    RETURNING id INTO v_4918_simbol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怪しい', 'mencurigakan', 26, 75, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>mencurigakan</kanji>? Juga <vocabulary>mencurigakan</vocabulary>!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Ketika Anda memikirkan orang yang <vocabulary>mencurigakan</vocabulary> atau <vocabulary>teduh</vocabulary>, Anda tentu memikirkan orang yang bernama <reading>Aya</reading>. Bayangkan saja <a href="https://www.tofugu.com/about/people/aya-francisco/" target="_blank">artis Aya</a> kami, dia sangat mencurigakan dan mencurigakan!', 'Mencurigakan, Teduh')
    RETURNING id INTO v_4919_mencurigakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怪事件', 'misteri-aneh', 26, 76, 'Ingat bagaimana 事件 berarti "insiden"? Ya, kejadian <kanji>mencurigakan</kanji> selalu memiliki <vocabulary>misteri aneh</vocabulary> di baliknya. Itu juga selalu berubah menjadi <vocabulary>kasus misteri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Misteri Aneh, Kasus Misteri')
    RETURNING id INTO v_4920_misteri_aneh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怪談', 'cerita-hantu', 26, 77, 'Jika Anda memiliki <kanji>mencurigakan</kanji> <kanji>pembicaraan</kanji>, Anda sedang membicarakan sesuatu yang mungkin nyata atau tidak. Salah satu hal yang bisa Anda diskusikan adalah <vocabulary>cerita hantu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cerita Hantu, Cerita Horor')
    RETURNING id INTO v_4921_cerita_hantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '我', 'saya', 26, 78, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

我 adalah kata ganti kuno dan tidak umum digunakan di luar frasa tertentu seperti 我を忘れる (melupakan diri sendiri atau benar-benar terserap) atau 我に返る (kembali ke dunia nyata atau sadar kembali).', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Itu adalah <vocabulary>I</vocabulary>! Karena ego saya, saya menyukai Wii dan tidak menyukai perangkat game lainnya. Saya suka memainkan semua <reading>ware</reading> (われ) Wii yang tersedia, dan yang lainnya jelek.', 'SAYA, Aku, Saya sendiri')
    RETURNING id INTO v_4922_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無我', 'tidak-mementingkan-diri-sendiri', 26, 79, '<kanji>tidak</kanji> ada di antara <kanji>I</kanji>. Ini semua tentang orang lain. Ini semua tentang <vocabulary>tidak mementingkan diri sendiri</vocabulary>.

Kata ini biasa digunakan pada frasa 無我夢中 (penyerapan total).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak mementingkan diri sendiri')
    RETURNING id INTO v_4923_tidak_mementingkan_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '担う', 'untuk-mengambil-tanggung-jawab', 26, 80, '担ぐ lebih seperti saat Anda membawa sesuatu yang bersifat fisik. 担う adalah saat Anda memikul tanggung jawab, itulah sebabnya kata ini berarti <vocabulary>memikul tanggung jawab</vocabulary>. Anda dapat mengingat ini karena <reading>ANDA</reading> (う) bertanggung jawab untuk ini. Anda memikul tanggung jawab ini.

Perhatikan bahwa 担う umumnya digunakan dengan kata lain yang menjelaskan tanggung jawab, seperti 役割を担う (mengambil peran) atau 未来を担う (menanggung masa depan).', 'Apa tanggung jawab Anda? Untuk membesarkan gadis ini bernama <reading>Nina</reading> (にな).', 'Untuk Mengambil Tanggung Jawab, Untuk memikul tanggung jawab, Untuk Mengambil Beban')
    RETURNING id INTO v_4924_untuk_mengambil_tanggung_jawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '振る', 'untuk-mengguncang-sesuatu', 26, 81, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengguncang</kanji> dan kata kerja ini bersifat transitif, artinya Anda sedang menggoyangkan sesuatu. Jadi kata kerja ini berarti <vocabulary>mengguncang sesuatu</vocabulary>, <vocabulary>melambaikan sesuatu</vocabulary>, atau <vocabulary>mengayunkan sesuatu</vocabulary>. Anda akan sering melihatnya dipasangkan dengan 手, seperti dalam 手を振る, yang berarti "melambaikan tangan" atau, seperti yang biasa kita katakan dalam bahasa Inggris, cukup "melambai".

Kata ini juga dapat digunakan saat Anda melepaskan seseorang dengan cara yang tidak terlalu bersifat fisik, seperti dalam <vocabulary>putus dengan seseorang</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Seseorang sedang mencoba <vocabulary>mengguncang sesuatu</vocabulary>. Dan sayangnya, sesuatu itu adalah kamu. Hal yang paling disayangkan di sini adalah Anda benar-benar <membaca>kenyang</reading> (ふる), dan Anda muntah karena gemetar (dan Anda kenyang, menjijikkan!).', 'Untuk Mengguncang Sesuatu, Untuk Melambaikan Sesuatu, Untuk Mengayunkan Sesuatu, Untuk Putus Dengan Seseorang')
    RETURNING id INTO v_4925_untuk_mengguncang_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '振動', 'getaran', 26, 82, '<kanji>gerakan</kanji>yang ada hubungannya dengan <kanji>goyangan</kanji> adalah <vocabulary>getaran</vocabulary> dan <vocabulary>osilasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Getaran, Osilasi')
    RETURNING id INTO v_4926_getaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '授業', 'pelajaran', 26, 83, '<kanji>instruksi</kanji>ion <kanji>bisnis</kanji> adalah ketika Anda memberikan <vocabulary>pelajaran</vocabulary> atau <vocabulary>kelas</vocabulary> kepada seseorang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pelajaran, Kelas, Pengajaran')
    RETURNING id INTO v_4928_pelajaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '教授', 'profesor', 26, 84, 'Jika Anda <kanji>mengajar</kanji> dan <kanji>mengajar</kanji>, maka Anda mungkin semacam <vocabulary>professor</vocabulary>. Dan pekerjaan seorang profesor adalah… <vocabulary>mengajar</vocabulary>!

教授 biasanya berarti profesor universitas, tetapi bisa juga merujuk pada jenis pengajaran ahli lainnya dalam konteks formal. Anda bahkan dapat menggunakannya dalam frasa seperti ご教授ありがとうございます untuk menunjukkan rasa hormat terhadap keahlian seseorang yang berstatus lebih tinggi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Profesor, Pengajaran')
    RETURNING id INTO v_4929_profesor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直接', 'langsung', 26, 85, 'Ingat bagaimana 直 juga bisa berarti "langsung?" Nah, jika Anda <kanji>mengarahkan</kanji>dengan <kanji>menggabungkan</kanji> dua hal, hubungannya akan menjadi <vocabulary>langsung</vocabulary> juga. Tidak ada yang menghalangi mereka!

Meski begitu, 直接 tidak terbatas pada kontak fisik. Bahkan lebih sering digunakan ketika seseorang melakukan sesuatu tanpa melalui langkah tengah atau orang, baik itu dalam komunikasi, tindakan, atau koneksi. Misalnya, jika Anda mengatakan 直接聞いた (Saya mendengarnya langsung), berarti Anda mendapat informasi langsung dari sumbernya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Langsung')
    RETURNING id INTO v_4930_langsung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '間接', 'tidak-langsung', 26, 86, 'Setelah <kanji>selang waktu</kanji> ia akan <kanji>berdampingan</kanji>, namun tidak langsung. Itu karena bersifat <vocabulary>tidak langsung</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak langsung')
    RETURNING id INTO v_4931_tidak_langsung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '面接', 'wawancara', 26, 87, '<kanji>Wajah</kanji> kami <kanji>berdampingan</kanji>di satu ruangan ini untuk berbicara. Anda melakukan wawancara telepon di mana Anda tidak menunjukkan wajah Anda. Sekarang Anda menunjukkannya, jadi kita bisa memulai <vocabulary>wawancara</vocabulary> yang sebenarnya.

面接 umumnya merujuk pada <kosa kata>wawancara kerja</vocabulary> atau <vocabulary>ujian lisan</vocabulary>. Untuk percakapan antara profesional media dan orang-orang yang memiliki kepentingan publik, digunakan インタビュー.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Wawancara, Wawancara Kerja, Ujian Lisan')
    RETURNING id INTO v_4932_wawancara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '事故', 'kecelakaan', 26, 88, 'Sebuah <kanji>kejadian</kanji> yang hanya terjadi karena <kanji>keadaan</kanji> juga disebut <vocabulary>kecelakaan</vocabulary>. Anda tidak ingin hal buruk ini terjadi, itu hanya kebetulan saja! Semuanya selaras dengan cara terburuk.

事故 sebagian besar digunakan untuk merujuk pada kecelakaan fisik, seperti kecelakaan lalu lintas (交通事故) atau kecelakaan konstruksi (建設事故). Terkadang jenis <vocabulary>mishap</vocabulary> lainnya juga diberi label 事故, seperti mishaps siaran (放送事故), yaitu sesuatu yang tidak pantas atau tidak direncanakan terjadi saat siaran.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kecelakaan, Kecelakaan')
    RETURNING id INTO v_4934_kecelakaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '故障', 'kerusakan', 26, 89, 'Dalam <kanji>keadaan</kanji> tertentu, benda yang Anda gunakan <kanji>menghalangi</kanji>menghalangi Anda. Biasanya berhasil, tapi sekarang <vocabulary>rusak</vocabulary> dan ada <vocabulary>malfunction</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kerusakan, Rusak')
    RETURNING id INTO v_4935_kerusakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '故意', 'disengaja', 26, 90, '<kanji>Keadaan</kanji> ini disebabkan oleh <kanji>ide</kanji> yang saya miliki. Karena saya mempunyai ide ini sebelum kejadian tersebut, hal ini menunjukkan bahwa saya <vocabulary>disengaja</vocabulary> dalam melakukannya. Saya melakukannya <vocabulary>dengan sengaja</vocabulary>.

Perhatikan bahwa 故意 sebagian besar digunakan dalam konteks formal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Disengaja, Sesuai Tujuan, Disengaja')
    RETURNING id INTO v_4936_disengaja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '株式会社', 'perusahaan', 26, 91, '<kanji>perusahaan</kanji> (会社) ini telah melakukan <kanji>ritual</kanji> yang diperlukan untuk membuat <kanji>saham</kanji> untuk perusahaan mereka. Ketika sebuah perusahaan memiliki saham, mereka menjadi <vocabulary>corporation</vocabulary>.', 'Pembacaan untuk semuanya di sini adalah pembacaan yang Anda pelajari dengan masing-masing kanji, meskipun tidak semuanya on''yomi. Kata ini biasanya juga disebut rendaku, tetapi terkadang Anda akan melihat versi non-rendaku dalam romaji jika menyangkut hal-hal legal dalam bahasa Inggris, jadi ingatlah itu.', 'Perusahaan')
    RETURNING id INTO v_4937_perusahaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '株式市場', 'pasar-saham', 26, 92, '<kanji>Lokasi</kanji> di <kanji>kota</kanji> tempat berlangsungnya <kanji>ritual</kanji> saham adalah <vocabulary>pasar saham</vocabulary>. Bayangkan saja apa yang terjadi di pasar saham... ritual saham, di mana orang membeli dan menjual saham. Dan tentu saja, ini terletak di kota.', 'Semua bacaannya adalah bacaan yang Anda pelajari dengan kanji, jadi selama Anda mengingatnya, Anda siap melakukannya!', 'Pasar saham')
    RETURNING id INTO v_4938_pasar_saham;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '比較', 'perbandingan', 26, 93, '<kanji>perbandingan</kanji> dan <kanji>kontras</kanji> akan memberi Anda <vocabulary>perbandingan</vocabulary> sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perbandingan')
    RETURNING id INTO v_4939_perbandingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汗', 'keringat', 26, 94, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Selain itu, <vocabulary>keringat</vocabulary> Anda berbau seperti <reading>ass</reading> (あせ).', 'Keringat')
    RETURNING id INTO v_4940_keringat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汗臭い', 'berbau-berkeringat', 26, 95, 'Jika <kanji>keringat</kanji> Anda <kanji>bau</kanji> (臭い) Anda <vocabulary>berbau keringat</vocabulary>, <vocabulary>berbau keringat</vocabulary>, atau <vocabulary>berbau seperti keringat</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Berbau Berkeringat, Berbau Keringat, Berbau Seperti Keringat')
    RETURNING id INTO v_4941_berbau_berkeringat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '河', 'sungai', 26, 96, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

河 awalnya mengacu pada Sungai Kuning di Tiongkok kuno, jadi biasanya dikaitkan dengan <kosakata>sungai</vocabulary> yang sangat besar. 河 jauh lebih jarang dibandingkan 川, tetapi Anda mungkin masih menemukannya dalam literatur, yang menekankan keagungan dan kekuatan sungai atau makna budayanya.', 'Bacaannya sama seperti kata 川 yang mempunyai arti sama. Kaitkan keduanya untuk diingat!', 'Sungai, Sungai Besar')
    RETURNING id INTO v_4942_sungai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '河童', 'kappa', 26, 97, '<kanji>sungai</kanji> <kanji>remaja</kanji>... tidak seperti yang Anda pikirkan. Itu adalah <vocabulary>kappa</vocabulary>, makhluk mitologi Jepang. Meskipun demikian, ia hidup di/sekitar sungai dan berukuran sebesar remaja, jadi mungkin ini masuk akal.', 'Pembacaan 河 masuk akal. Namun pembacaan untuk 童 aneh. Karena artinya adalah "kappa", Anda juga dapat menggunakannya untuk mengingat bacaannya. Jika Anda tidak tahu apa itu kappa, lakukan riset di internet dan cari tahu tentangnya. Ini menarik dan akan membantu Anda mengingat kata ini.', 'Kappa')
    RETURNING id INTO v_4943_kappa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '氷河', 'gletser', 26, 98, '<kanji>es</kanji> <kanji>sungai</kanji> adalah es yang bergerak (sangat lambat) seperti sungai. Itu adalah <vocabulary>gletser</vocabulary>. Faktanya, banyak lubang masuk dan suara tercipta dari gletser, karena gletser bergerak melaluinya seperti sungai... namun tidak terlalu cepat.', 'Bacaan untuk 氷 adalah bacaan yang belum Anda pelajari. Bayangkan gletser datang perlahan ke depan pintu Anda. Ia membunyikan bel pintu Anda dan berkata <reading>heyo</reading> (ひょう). Perhatikan bahwa か menjadi が di sini.', 'Gletser')
    RETURNING id INTO v_4944_gletser;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '運河', 'kanal', 26, 99, 'Ia dapat <kanji>membawa</kanji> sebuah <kanji>sungai</kanji>. Itu adalah <vocabulary>kanal</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.か menuju ke が, mungkin sambil mengambang di <vocabulary>kanal</vocabulary> tersebut.', 'Kanal')
    RETURNING id INTO v_4945_kanal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '河豚', 'fugu', 26, 100, '<kanji>sungai</kanji> <kanji>babi</kanji> dikenal sebagai <vocabulary>fugu</vocabulary> atau <vocabulary>blowfish</vocabulary>. Anda mungkin mengetahuinya dari maskot dan sahabat kami, Tofugu!

Tapi kenapa "babi sungai" = fugu? Memang benar fugu biasanya hidup di laut, namun terkadang mereka juga hidup di sungai dekat laut. Bagian "babi" mungkin berasal dari penampilannya yang bulat dan menggembung.', 'Bacaannya tidak masuk akal, sungguh. Pembacaan kanji juga tidak berfungsi. Tapi, kalau kamu ingat kalau babi sungai itu fugu, kamu pasti tahu kalau bacaannya adalah <reading>ふぐ</reading>juga! KAMU IKAN BLOWFISH, JESSE!', 'Fugu, ikan buntal, Ikan buntal')
    RETURNING id INTO v_4946_fugu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '激しい', 'intens', 26, 101, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>fierce</kanji> dan <kanji>violent</kanji>? <vocabulary>Geram</vocabulary> dan <vocabulary>kejam</vocabulary>! Itu <vocabulary>intens</vocabulary>.', 'Apa yang dimaksud dengan <vocabulary>ganas</vocabulary> dan <vocabulary>kekerasan</vocabulary>? <reading>wanita</reading> tua itu (はげ). Bayangkan dia mendatangi Anda dan menyerang Anda dengan kejam!', 'Intens, Brutal, Garang')
    RETURNING id INTO v_4947_intens;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '燃える', 'untuk-membakar', 26, 102, 'Ingat bagaimana 燃やす berarti "membakar sesuatu" atau "membakar"? Nah, 燃える adalah versi yang artinya <vocabulary>to burn</vocabulary> atau <vocabulary>to be on fire</vocabulary>. Anda mungkin mengatakan bahwa kertas dan kayu 燃える dengan mudah, misalnya. Dan jika rumah Anda 燃えている, Anda berada dalam masalah.

Anda dapat mengingat arti yang sedikit berbeda untuk 燃える karena bagian える, yang mengacu pada huruf "L". Dan huruf "L" berarti "cinta" — seperti cinta Anda yang membara dan membara terhadap kanji.', 'Bacaannya sama dengan kata 燃やす.', 'Untuk Membakar, Menjadi Terbakar')
    RETURNING id INTO v_4948_untuk_membakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '燃え付く', 'untuk-menangkap-api', 26, 103, 'Ketika sesuatu <kanji>melekat</kanji> menjadi <kanji>terbakar</kanji> pada sesuatu, maka sesuatu itu akan <vocabulary>terbakar</vocabulary>.', 'Ini adalah pembacaan 燃える dan 付く jika digabungkan.', 'Untuk Menangkap Api, Untuk Menangkap Api')
    RETURNING id INTO v_4949_untuk_menangkap_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独り', 'sendiri', 26, 104, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Meskipun 一人 berarti "satu orang", 独り memiliki arti yang lebih kuat yaitu <vocabulary>sendirian</vocabulary>, seringkali dengan konotasi <vocabulary>sendirian</vocabulary>. Bisa juga berarti seseorang <vocabulary>single</vocabulary> (misalnya belum menikah).', 'Bacaannya berbeda dengan yang kamu pelajari (ini Kun''yomi). Namun ada cara mudah untuk mengingatnya. 一人 dan 独り memiliki bacaan yang sama dan memiliki arti yang hampir sama. Coba ingat-ingat kalau ひとり ini digunakan untuk menekankan kesendirian.', 'Sendiri, Kesendirian, Lajang')
    RETURNING id INTO v_4950_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独身', 'lajang', 26, 105, 'Seseorang yang <kanji>sendirian</kanji> dengan <kanji>dirinya</kanji> belum berpasangan dalam pernikahan — dengan kata lain, mereka <vocabulary>lajang</vocabulary> atau <vocabulary>belum menikah</vocabulary>.

独身 mengacu secara khusus pada status perkawinan. Itu hanya berarti bahwa seseorang tidak memiliki pasangan, bukan karena mereka kesepian atau tragisnya makan es krim sendirian atau semacamnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lajang, Belum menikah')
    RETURNING id INTO v_4951_lajang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独特', 'unik', 26, 106, 'Itu <kanji>sendirian</kanji> dan <kanji>khusus</kanji>. Tidak ada yang seperti itu. Ini sangat <vocabulary>unik</vocabulary> dan <vocabulary>aneh</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Unik, Aneh')
    RETURNING id INTO v_4952_unik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独立', 'kemerdekaan', 26, 107, '<kanji>Sendirian</kanji> Saya <kanji>berdiri</kanji>. Saya akhirnya memperoleh <kosakata>kemandirian</vocabulary> saya!

独立 menyiratkan pemutusan atau pemisahan dari sesuatu atau seseorang dan mencapai <kosa kata>otonomi</vocabulary> yang mandiri. Meskipun bisa juga merujuk pada kemandirian, hal ini lebih sering dikaitkan dengan independensi politik atau independensi dari organisasi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemerdekaan, Otonomi')
    RETURNING id INTO v_4953_kemerdekaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独学', 'belajar-mandiri', 26, 108, 'Anda <kanji>sendirian</kanji> di <kanji>belajar</kanji> Anda. Anda belajar sendiri. Ini adalah <vocabulary>belajar mandiri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Belajar Mandiri, Pendidikan Mandiri')
    RETURNING id INTO v_4954_belajar_mandiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '獣', 'binatang-buas', 26, 109, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

<vocabulary>binatang</vocabulary>... apa yang Anda pikirkan ketika memikirkan binatang? Bagaimana dengan benda (物, もの) yang penuh bulu (毛, け), alias けもの (benda bulu)? Binatang buas adalah benda yang terbuat dari bulu, dan dalam bahasa Jepang disebut けもの. Punnnn.', 'Binatang buas, Seekor Binatang')
    RETURNING id INTO v_4955_binatang_buas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怪獣', 'monster-raksasa', 26, 110, 'Lihatlah <kanji>mencurigakan</kanji> <kanji>binatang</kanji> itu... itu adalah Godzilla, berjalan berkeliling sambil terlihat mencurigakan. Apa itu Godzilla? Dia adalah <vocabulary>monster raksasa</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Monster Raksasa, Kaiju')
    RETURNING id INTO v_4956_monster_raksasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '獣医', 'dokter-hewan', 26, 111, 'Orang yang melakukan <kanji>hewan</kanji> <kanji>pengobatan</kanji> adalah <vocabulary>dokter hewan</vocabulary>, yang merawat semua hewan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dokter hewan, Dokter hewan')
    RETURNING id INTO v_4957_dokter_hewan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '獣類', 'binatang-buas', 26, 112, 'Benda-benda yang termasuk dalam <kanji>jenis</kanji> <kanji>hewan</kanji> atau <kanji>hewan</kanji> <kanji>jenis</kanji> termasuk dalam kategori <vocabulary>binatang</vocabulary> dan <vocabulary>hewan</vocabulary>.

獣類 mengacu pada mamalia berkaki empat dengan bulu. Ini adalah istilah teknis yang umum digunakan dalam bidang biologi dan zoologi untuk mengkategorikan hewan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'binatang buas, Hewan')
    RETURNING id INTO v_4958_binatang_buas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '野獣', 'binatang-buas', 26, 113, '<kanji>ladang</kanji> <kanji>binatang/hewan</kanji> adalah yang hidup di luar dan tidak berada di bawah perawatan manusia. Itu adalah <vocabulary>binatang buas</vocabulary> / <vocabulary>hewan liar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Binatang Buas, Hewan Liar')
    RETURNING id INTO v_4959_binatang_buas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '筆', 'kuas-tulis', 26, 114, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca ini, jadi inilah mnemonik yang dapat membantu Anda mengingatnya: Sepanjang ingatan Anda, keluarga Anda dan keluarga lain pernah terlibat <membaca>perseteruan</reading> (ふで) berdarah karena <vocabulary>sikat tulis</vocabulary> yang satu ini. Bayangkan saja semua orang terbunuh karena semak ini. Perseteruan ini harus diakhiri.', 'Kuas Tulis, Kuas, Sikat')
    RETURNING id INTO v_4962_kuas_tulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉛筆', 'pensil', 26, 115, '<kanji>timah</kanji> <kanji>kuas tulis</kanji> Anda mengandung timbal. Alat tulis apa yang mengandung timbal? Bagaimana dengan <vocabulary>pensil</vocabulary>?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah karena ひつ membuat rendaku menjadi ぴつ. Jika Anda memerlukan bantuan dalam membaca rendaku ini, berikut mnemoniknya:

Tahukah Anda bagaimana beberapa orang menaruh <vocabulary>pensil</vocabulary> di belakang telinga mereka? Baiklah, simpanlah milikmu di antara <reading>pits</reading> (ぴつ). Mengapa? Jadi teman-temanmu akan berhenti mengejekmu dengan pensil di kelas. Tidak ada seorang pun yang menginginkan pensil kotor yang Anda simpan di antara lubangnya.', 'Pensil')
    RETURNING id INTO v_4963_pensil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '管理人', 'pengawas', 26, 116, 'Ingat bagaimana 管理 adalah "manajemen"? Ya, orang yang mengelola adalah seseorang yang mengelola suatu tempat, seperti <vocabulary>superintendent</vocabulary> sebuah gedung atau taman, atau <vocabulary>administrator</vocabulary> sebuah situs web. 

Kata ini juga bisa merujuk pada seseorang yang ditunjuk untuk mengelola suatu perkebunan, seperti <vocabulary>custodian</vocabulary> properti.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengawas, Administrator, Pemelihara')
    RETURNING id INTO v_4964_pengawas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お菓子', 'makanan-ringan', 26, 117, '<kanji>Kue</kanji> adalah <vocabulary>makanan ringan</vocabulary> favorit <kanji>anak-anak. Kata ini mengacu pada semua jajanan bermutu rendah yang dapat Anda bayangkan, <vocabulary>permen</vocabulary>, <vocabulary>kue kering</vocabulary> dan <vocabulary>manis</vocabulary>, tetapi juga jajanan gurih. Tahukah kamu, seperti keripik dan sejenisnya... 🤤', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Makanan Ringan, Permen, kue kering, Permen')
    RETURNING id INTO v_4965_makanan_ringan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '触れる', 'untuk-menyentuh', 26, 118, '触る berarti "menyentuh", dan 触れる juga berarti <vocabulary>menyentuh</vocabulary>. Kata ini juga berarti <vocabulary>menyentuh</vocabulary>, seperti menyentuh suatu subjek. Bayangkan saja sebuah subjek yang <read>jarang</reading> (れる) untuk Anda sentuh.

触れる sering kali digunakan ketika sesuatu <vocabulary>bersentuhan dengan</vocabulary> sesuatu, mungkin dalam sekejap atau sesaat. Kata ini masih digunakan dalam frasa seperti "Saat aku menyentuh tanganmu", namun memiliki nuansa lebih ringan, tidak langsung, dan sastra dibandingkan 触る, yang menyampaikan maksud dan tujuan yang lebih besar di balik tindakan tersebut.

触れる sering digunakan dalam konstruksi seperti 手がカバンに触れる (tangan seseorang menyentuh tas), di mana が menunjukkan apa yang disentuh dan に menandai apa yang disentuh. Jika Anda melihat を dan bukannya が, 触れる menjadi transitif, mengubah arti menjadi "tangan Anda menyentuh tas".', 'Bacaannya sangat berbeda dengan 触る jadi jangan biarkan hal itu membodohi Anda. Dalam hal ini, Anda merasakan <membaca>bulu</reading> (ふれ).', 'Untuk Menyentuh, Untuk Berhubungan Dengan, Untuk Menyentuh')
    RETURNING id INTO v_4966_untuk_menyentuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '検討する', 'untuk-memeriksa', 26, 119, 'Anda <kanji>memeriksa</kanji> tetapi Anda juga <kanji>menghukum</kanji> karena Anda ingin memastikan pemeriksaan ini benar. Ini adalah <vocabulary>untuk memeriksa</vocabulary> atau <vocabulary>untuk dipelajari</vocabulary>. Semua memerlukan hukuman untuk memastikannya.

検討する umumnya berarti memeriksa <kosakata>segala sesuatu untuk mempertimbangkan pro dan kontra, kesesuaian, atau kelayakannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Memeriksa, Untuk Belajar, Untuk Dipertimbangkan')
    RETURNING id INTO v_4967_untuk_memeriksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '討論', 'perdebatan', 26, 120, 'Saya akan <kanji> menghukum</kanji> Anda tentang <kanji>teori</kanji> ini. Saat saya melakukan ini, ini adalah <vocabulary>debate</vocabulary>. Bukankah Anda merasa dimarahi jika ada orang yang terkadang berdebat dengan Anda, apalagi dengan teori Anda sendiri? Saya kira demikian.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perdebatan, Diskusi')
    RETURNING id INTO v_4968_perdebatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お誕生日おめでとう', 'selamat-ulang-tahun', 26, 121, '誕生日 adalah <kanji>ulang tahun</kanji>. おめでとう seperti "selamat". Jadi, ucapan selamat ulang tahunmu seperti <vocabulary>selamat ulang tahun</vocabulary>!', 'Bacaannya sama dengan 誕生日, jadi kalau kalian tahu pasti tahu ini!', 'Selamat ulang tahun')
    RETURNING id INTO v_4969_selamat_ulang_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自販機', 'mesin-penjual-otomatis', 26, 122, 'Ingat mesin penjual otomatis super panjang yaitu 自動販売機? Ini adalah versi lebih pendek yang lebih mudah diingat dan diucapkan. Pada dasarnya setiap kanji lainnya dihilangkan, menjadikannya 自販機.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ini juga akan membantu jika Anda sudah mengetahui 自動販売機.', 'Mesin Penjual Otomatis')
    RETURNING id INTO v_4972_mesin_penjual_otomatis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貯金', 'tabungan', 26, 123, '<kanji>tabungan</kanji> <kanji>emas</kanji> Anda adalah <vocabulary>tabungan</vocabulary> Anda. Sebenarnya, Anda sebaiknya memiliki emas di tabungan Anda sekarang. Lelehkan menjadi batangan, manngggg.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tabungan')
    RETURNING id INTO v_4975_tabungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '輸入', 'impor', 26, 124, '<kanji>transportasi</kanji> barang-barang yang <kanji>masuk</kanji> ke negara Anda adalah <vocabulary>impor</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Impor')
    RETURNING id INTO v_4976_impor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '輸出する', 'untuk-mengekspor', 26, 125, 'Ingat bagaimana 輸出 merupakan ekspor? Ini adalah kata kerjanya, jadi ini <vocabulary>mengekspor</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Juga akan membantu untuk mengetahui kata 輸出.', 'Untuk Mengekspor')
    RETURNING id INTO v_4977_untuk_mengekspor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '造る', 'untuk-membangun', 26, 126, 'Kanji berarti <kanji>menciptakan</kanji>, dan kata ini berarti penciptaan hal-hal besar. Jadi artinya <vocabulary>membangun</vocabulary> atau <vocabulary>membangun</vocabulary> atau <vocabulary>membuat</vocabulary>, dan biasanya digunakan pada kapal, jembatan, gedung, dan pekerjaan berskala besar lainnya.

Ini juga bisa berarti <vocabulary>menyeduh</vocabulary>, seperti dalam menyeduh sake. Menurut saya, menyeduh <em>itu</em> seperti membuat, karena melibatkan pemilihan dan pencampuran bahan secara cermat untuk mendapatkan kreasi yang nikmat!', 'Bacaannya seperti 作る yang artinya "membuat". Mereka memiliki arti yang sangat mirip, tetapi kanjinya berbeda. Gunakan 作る untuk membantu Anda mengingat bacaan kata ini.', 'Untuk Membangun, Untuk Membangun, Untuk Membuat, Untuk Menyeduh')
    RETURNING id INTO v_4978_untuk_membangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '製造', 'manufaktur', 26, 127, '<kanji>Membuat</kanji> dan <kanji>membuat</kanji>. Itulah <vocabulary>manufaktur</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Manufaktur')
    RETURNING id INTO v_4979_manufaktur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '造園', 'berkebun-lanskap', 26, 128, '<kanji>Buat</kanji> <kanji>taman</kanji>? Anda harus tahu banyak tentang <vocabulary>berkebun lanskap</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berkebun Lanskap')
    RETURNING id INTO v_4980_berkebun_lanskap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '改造', 'renovasi', 26, 129, '<kanji>Memperbarui</kanji> dengan <kanji>menciptakan</kanji>menciptakan sesuatu yang baru. Ini adalah <vocabulary>remodeling</vocabulary> karena Anda menciptakan sesuatu dan mengubah sesuatu yang sudah ada, memperbaruinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Renovasi, Perombakan')
    RETURNING id INTO v_4981_renovasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人造', 'buatan-manusia', 26, 130, 'Item yang <kanji>orang</kanji> <kanji>buat</kanji> adalah <vocabulary>buatan manusia</vocabulary>. Ini adalah <vocabulary>sintetis</vocabulary> dan <vocabulary>buatan</vocabulary>.

Ingin tahu apa yang membuat 人造 berbeda dari 人工? Meskipun 人工 berarti "buatan" secara umum, 人造 secara khusus mengacu pada sesuatu yang diproduksi atau dibuat oleh manusia. Ini tidak umum digunakan seperti 人工 dan sering ditemukan dalam penulisan kreatif ketika berbicara tentang 人造人間 (android).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Buatan Manusia, Sintetis, Palsu')
    RETURNING id INTO v_4982_buatan_manusia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '酒造', 'pembuatan-bir', 26, 131, 'Tindakan <kanji>alkohol</kanji> <kanji>penciptaan</kanji>ion dilakukan melalui <vocabulary>penyeduhan</vocabulary> dan <vocabulary>penyulingan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembuatan bir, Penyulingan')
    RETURNING id INTO v_4983_pembuatan_bir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気違い', 'gila', 26, 132, '<kanji>energi</kanji> Anda... yah... <kanji>berbeda</kanji>. Itu cara yang bagus untuk menjelaskannya. Sebenarnya kamu <vocabulary>gila</vocabulary>.

PERINGATAN: Kami mengajari Anda kata ini karena kata ini masih sering digunakan (terutama saat online) dan kami ingin Anda dapat memahaminya jika Anda melihatnya. Namun harap diingat bahwa ini dianggap sebagai kata yang diskriminatif terhadap orang yang memiliki penyakit mental, jadi kami sangat menyarankan Anda untuk tidak menggunakan atau mengarahkan kata ini kepada siapa pun. Anggap saja seperti kata makian yang sangat tidak pantas sehingga membuat Anda sangat tidak keren jika mengucapkannya. Silakan!

Meskipun Anda masih melihat versi kanjinya, kata ini biasanya ditulis dalam katakana.', 'Bacaannya adalah 気 ditambah 違い.', 'Gila')
    RETURNING id INTO v_4984_gila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人違い', 'identitas-yang-salah', 26, 133, '<kanji>orang</kanji> yang <kanji>berbeda</kanji> dari orang yang Anda kira adalah <vocabulary>identitas yang salah</vocabulary>. Ups, maaf, saya pikir Anda orang lain. bagus sekali!', 'Bacaannya adalah 人 dan 違い yang disatukan.', 'Identitas yang Salah')
    RETURNING id INTO v_4985_identitas_yang_salah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '読み違い', 'salah-baca', 26, 134, 'Saat Anda <kanji>membaca</kanji> sesuatu dengan cara <kanji>berbeda</kanji> dari yang seharusnya, itu adalah <vocabulary>salah membaca</vocabulary>.

Kata ini juga dapat digunakan secara kiasan, seperti ketika Anda salah membaca situasi atau niat seseorang, dan ekspektasi Anda ternyata salah.

Perhatikan bahwa 読み間違い juga dapat digunakan untuk mengartikan hal yang sama.', 'Ini menggunakan bacaan kun''yomi dari kosakata 読む dan 違い. Selama Anda mengingatnya, Anda bisa menerapkan ilmu itu di sini juga.', 'Salah baca, Salah membaca')
    RETURNING id INTO v_4986_salah_baca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大違い', 'perbedaan-besar', 26, 135, '違い adalah <kanji>perbedaan</kanji>, jadi <kanji>besar</kanji> salah satunya adalah <vocabulary>perbedaan besar</vocabulary>.', 'Bacaannya adalah 違い ditambah 大 dari 大きい (おお) disatukan. Anda dapat mengingat hal ini karena ketika Anda melihat perbedaannya (perbedaan BESAR), Anda berkata "oohhhhh" (お), karena Anda terkejut karena Anda tidak melihatnya sebelumnya.', 'Perbedaan Besar')
    RETURNING id INTO v_4987_perbedaan_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '針医', 'ahli-akupunktur', 26, 136, '<kanji>Jarum</kanji> <kanji>obat</kanji> adalah saat Anda menusukkan jarum ke orang untuk menyembuhkannya. Hal ini dilakukan melalui <vocabulary>ahli akupunktur</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk 針 dan bacaan on''yomi untuk 医. Anda belum mempelajari bacaan ini untuk 針, jadi inilah mnemonik untuk membantu Anda:

Jika kamu melakukan <vocabulary>akupunktur</vocabulary> dan menusukkan banyak jarum ke punggungmu, itu akan terlihat sangat <read>berbulu</reading> (はり). Jarum terlihat seperti rambut logam ketika keluar dari seseorang. Bayangkan saja jarum-jarum kecil berbulu di sekujur tubuh Anda dan Anda tidak akan pernah melupakan bacaan ini!', 'Ahli akupunktur')
    RETURNING id INTO v_4988_ahli_akupunktur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '秒針', 'tangan-kedua', 26, 137, '<kanji>kedua</kanji> <kanji>jarum</kanji> adalah jarum tipis yang menunjukkan detik pada jam Anda. Itulah <vocabulary>jarum detik</vocabulary> sebuah jam.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tangan Kedua')
    RETURNING id INTO v_4990_tangan_kedua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉛', 'memimpin', 26, 138, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Banyak <vocabulary>lead</vocabulary>, semuanya dalam bentuk bullet. Seperti itulah di <reading>nam, ''arry" (なまり).</reading>', 'Memimpin')
    RETURNING id INTO v_4991_memimpin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉛管', 'pipa-timbal', 26, 139, '<kanji>timbal</kanji> <kanji>pipa</kanji> adalah <vocabulary>pipa timbal</vocabulary>. Jangan pukul lutut orang dengan ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pipa Timbal')
    RETURNING id INTO v_4992_pipa_timbal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉛毒', 'toksisitas-timbal', 26, 140, '<kanji>Timbal</kanji> <kanji>racun</kanji> adalah <vocabulary>keracunan timbal</vocabulary>.

Kata ini umumnya mengacu pada toksisitas timbal. Meskipun bisa juga merujuk pada <vocabulary>keracunan timbal</vocabulary>, 鉛中毒 (なまりちゅうどく) adalah kata yang lebih umum untuk itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Toksisitas Timbal, Keracunan Timbal')
    RETURNING id INTO v_4993_toksisitas_timbal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '障る', 'mengiritasi', 26, 141, 'Ini adalah versi kata kerja dari <kanji>menghalangi</kanji>, tapi itulah yang terjadi jika Anda cukup menghalangi orang lain. Anda akan mulai <vocabulary>mengganggu</vocabulary> dan <vocabulary>mengganggu</vocabulary> mereka. 

Perhatikan bahwa kata ini tidak digunakan sendiri, tetapi dalam frasa seperti 気に障る (menyakitkan perasaan) atau 体に障る (<vocabulary>berbahaya bagi</vocabulary> kesehatan seseorang). Lihat Kombinasi Kata Umum untuk contoh lebih lanjut!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Jika kamu ingin <vocabulary>membuatku kesal</vocabulary>, kamu hanya perlu menjadikan apa yang aku makan <reading>sou</reading>r (さわ). Tahukah Anda bahwa makanan asam <vocabulary>dikenal buruk bagi</vocabulary> Anda juga? Jangan membuat wajah masam itu, berhenti makan yang asam!', 'Mengiritasi, Mengganggu, Untuk Mempengaruhi Secara Negatif, Menjadi Buruk')
    RETURNING id INTO v_4994_mengiritasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '障子', 'layar-shoji', 26, 142, 'Itu bisa <kanji>menghalangi</kanji> seorang <kanji>anak</kanji>, tapi itu saja. Ini adalah <vocabulary>layar shoji</vocabulary>, yang merupakan sejenis <vocabulary>pintu geser bahasa Jepang</vocabulary>. Biasanya ditutupi dengan kertas tipis, jadi, tahukah Anda, orang dewasa bisa melewatinya tapi anak-anak akan terhalang olehnya.

Shoji terbuat dari kertas tipis yang direntangkan pada bingkai kisi kayu. Mereka ringan dan dirancang untuk membiarkan cahaya alami masuk.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, 子 diubah dari し menjadi じ, jadi berhati-hatilah.', 'Layar Shoji, Pintu Geser Jepang, Shoji')
    RETURNING id INTO v_4995_layar_shoji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '障害', 'disabilitas', 26, 143, 'Ada <kanji>kerusakan</kanji> yang <kanji>menghalangi</kanji> Anda melakukan sesuatu secara normal. Ini adalah <vocabulary>kecacatan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Disabilitas, Rintangan, Rintangan')
    RETURNING id INTO v_4996_disabilitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保障', 'keamanan', 26, 144, 'Jika Anda <kanji>melestarikan</kanji> dan tidak <kanji>menghalangi</kanji>, Anda memberikan <vocabulary>keamanan</vocabulary>, Anda <vocabulary>menjaga</vocabulary> sesuatu.

Kata ini digunakan dalam konteks di mana penekanannya adalah pada perlindungan dari bahaya. Misalnya, Anda akan melihatnya dalam kata majemuk seperti 社会保障 (jaminan sosial), 安全保障 (keamanan) dan 人権保障 (melindungi hak asasi manusia).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keamanan, Menjaga')
    RETURNING id INTO v_4997_keamanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '過ごす', 'untuk-menghabiskan-waktu', 26, 145, '過ぎる berarti "melewati", dan 過ごす adalah <vocabulary>untuk melewatkan waktu</vocabulary>.

過ごす mengacu pada bagaimana Anda menjalani atau mengalami waktu Anda. Jadi biasanya memerlukan konteks tambahan saat Anda menggunakannya, seperti apa yang Anda lakukan saat menghabiskan waktu, dengan siapa Anda melewatkannya, atau seperti apa. Periksa kolokasi dan konteks kalimat untuk lebih memahami kata ini!', 'Bacaannya sama dengan 過ぎる. Jika Anda mengetahuinya, tidak apa-apa <vocabulary>menghabiskan waktu</vocabulary> bersantai sejenak! Jika Anda belum mengetahuinya, mungkin ada baiknya <vocabulary>menghabiskan waktu</vocabulary> untuk mengulas…', 'Untuk Menghabiskan Waktu, Untuk Menghabiskan Waktu')
    RETURNING id INTO v_4998_untuk_menghabiskan_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '郵便', 'surat', 26, 146, '<kanji>Mail</kanji> (atau <kanji>posting</kanji>) memiliki <kanji>kenyamanan</kanji> karena dikirimkan untuk Anda di <vocabulary>mail</vocabulary> (atau <vocabulary>post</vocabulary>!).

郵便 awalnya mengacu pada sistem pos, tetapi akhirnya juga merujuk pada surat itu sendiri sebagai singkatan dari 郵便物.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun, pembacaan 便 di sini (びん) bukanlah on''yomi yang Anda pelajari dengan kanji, jadi inilah mnemonik yang dapat membantu Anda:

Anda mendapatkan banyak <vocabulary>mail</vocabulary> sampah, jadi Anda membuangnya ke <reading>bin</reading> sampah (びん). Tempat sampah adalah tempat pengiriman surat.', 'Surat, Pos')
    RETURNING id INTO v_4999_surat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '給与', 'gaji', 26, 147, '<kanji>gaji</kanji> yang saya <kanji>berikan</kanji> kepada Anda adalah <vocabulary>gaji</vocabulary> Anda, atau <vocabulary>upah</vocabulary> Anda. Ini adalah <vocabulary>bayar</vocabulary> yang Anda peroleh.

Penasaran perbedaan antara 給与 dan 給料? 給与 umumnya dianggap sebagai versi formal dari 給料, tetapi ada perbedaan kecil lainnya dalam nuansanya. 給料 sering kali mengacu pada gaji pokok Anda, sedangkan 給与 mengacu pada jumlah total <vocabulary>kompensasi</vocabulary> yang Anda terima, termasuk lembur, bonus, dll.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gaji, Gaji, Membayar, Kompensasi')
    RETURNING id INTO v_5065_gaji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お腹', 'perut', 26, 148, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

お腹 adalah kata umum sehari-hari untuk <vocabulary>perut</vocabulary>, <vocabulary>abdomen</vocabulary>, atau <vocabulary>stomach</vocabulary>. Kata ini biasanya ditulis dalam kanji, tetapi Anda juga akan melihatnya ditulis dalam hiragana, terutama dalam konteks biasa.', 'Pembacaannya merupakan pengecualian, tetapi tidak terlalu sulit untuk diingat. <vocabulary>perut</vocabulary> Anda berisi seluruh isi perut Anda, jadi masuk akal jika bacaannya sama dengan kata "di dalam" — <reading>中</reading> (なか)!', 'Perut, Perut, Perut')
    RETURNING id INTO v_5075_perut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逮捕する', 'untuk-menangkap', 26, 149, 'Ingat bagaimana 逮捕 adalah "penangkapan" atau "penangkapan"? Ini adalah versi kata kerjanya, dan ini adalah <vocabulary>to capture</vocabulary> atau <vocabulary>to capture</vocabulary>.', 'Anda sudah belajar membaca dengan 逮捕, jadi Anda akan baik-baik saja di sini.', 'Untuk Menangkap, Untuk Menangkap, Untuk Memahami')
    RETURNING id INTO v_5096_untuk_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絶景', 'pemandangan-spektakuler', 26, 150, 'Semua hal baik cepat berlalu. Ketika <kanji>adegan</kanji> di depan Anda <kanji>padam</kanji>, maka adegan itu hilang. Tapi, itu indah, menakjubkan, <vocabulary>pemandangan spektakuler</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemandangan Spektakuler, Pemandangan Menakjubkan, Pemandangan Luar Biasa')
    RETURNING id INTO v_5106_pemandangan_spektakuler;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '垂直', 'vertikal', 26, 151, 'Sesuatu <kanji>terkulai</kanji> <kanji>lurus</kanji> ke bawah, menjadikannya <vocabulary>vertikal</vocabulary> sempurna. Jika kita ingin menjadi mewah, kita bahkan bisa mengatakan itu <vocabulary>tegak lurus</vocabulary> ke lantai.

垂直 adalah kata formal dan tepat yang berarti vertikal — sempurna ke atas dan ke bawah, pada sudut 90 derajat terhadap tanah atau permukaan lainnya. Anda akan mendengarnya dalam matematika, sains, konstruksi, atau situasi apa pun yang memerlukan orientasi pasti, seperti 垂直の線 (garis vertikal).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Vertikal, Tegak lurus, Jujur')
    RETURNING id INTO v_5630_vertikal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '涼む', 'untuk-mendinginkan-diri-sendiri', 26, 152, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>sejuk</kanji> (sesuai suhu) dan versi kosakata kata kerjanya adalah <vocabulary>to coolself</vocabulary> atau <vocabulary>to cool off</vocabulary>. Wah, rasanya jauh lebih keren sekarang.', 'Bacaannya adalah bacaan kun''yomi, tapi itu bacaan yang kamu pelajari dengan kanji jadi kamu harus bisa membaca yang ini juga. 

Jika Anda perlu penyegaran, ingatlah bahwa <reading>Sue Zoo</reading> (すず) dibuat untuk <vocabulary>sue penguin untuk mendinginkan</vocabulary>, bahkan saat cuaca di luar panas.', 'Untuk Mendinginkan Diri Sendiri, Untuk Mendinginkan')
    RETURNING id INTO v_7160_untuk_mendinginkan_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '故', 'alasan', 26, 153, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Saat memikirkan tentang <vocabulary>keadaan</vocabulary> situasi Anda saat ini dan <vocabulary>alasan</vocabulary> Anda berada di sana (yaitu mempelajari kanji dan kosakata). Salah siapa ini? Itu salah WaniKani! Tapi, otakmu sudah terpukul habis-habisan karena semua pembelajaran, jadi saat kamu mengatakan "itu salahmu" yang keluar adalah "itu salah <reading>yue</reading>!" Silakan katakan dengan lantang seperti itu.', 'Alasan, Keadaan, Menyebabkan')
    RETURNING id INTO v_7505_alasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '従順', 'patuh', 26, 154, 'Ketika Anda <kanji>menaati</kanji> <kanji>perintah</kanji> orang menganggap Anda sebagai orang yang <vocabulary>patuh</vocabulary>.

Kata ini relatif formal dan agak sastra.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Patuh, Lembut, Jinak')
    RETURNING id INTO v_7601_patuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何故', 'mengapa', 26, 155, 'Saat Anda ingin mengetahui <kanji>apa</kanji> <kanji>keadaan</kanji> di sekitar Anda, Anda harus bertanya <vocabulary>mengapa</vocabulary>. Mengapa banyak hal terjadi di sekitar Anda? Menanyakan mengapa sangatlah penting jika Anda ingin memahami dunia.', 'Pembacaan untuk ini merupakan pengecualian. Pembacaan 何 hanyalah な pertama dari なに. Anda dapat mengingat bagian kedua seperti ini:

Tidak ada seorang pun yang mengetahui <vocabulary>bagaimana</vocabulary> atau <vocabulary>mengapa</vocabulary> <reading>ze</reading>ppelin (ぜ) besar itu jatuh pada tahun 1930an. Orang-orang masih bertanya sampai sekarang dan tidak ada yang punya jawaban. Kami harus terus meminta sampai kami mendapatkannya.', 'Mengapa, Bagaimana')
    RETURNING id INTO v_7602_mengapa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怪物', 'raksasa', 26, 156, 'Jika Anda menemukan <kanji>mencurigakan</kanji> <kanji>sesuatu</kanji> mungkin itu adalah <vocabulary>monster</vocabulary>! Melarikan diri!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Raksasa')
    RETURNING id INTO v_7655_raksasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お祝い', 'perayaan', 26, 157, 'Ini adalah versi kata benda dari kanji <kanji>merayakan</kanji>, jadi artinya <vocabulary>celebration</vocabulary>! 

お祝い juga digunakan untuk mengartikan <vocabulary>hadiah ucapan selamat</vocabulary> itu sendiri.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Perayaan, Hadiah Ucapan Selamat')
    RETURNING id INTO v_7714_perayaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独裁', 'kediktatoran', 26, 158, 'Ketika seseorang berada dalam posisi untuk <kanji>menghakimi</kanji> semua orang <kanji>sendirian</kanji> sendirian, mereka jelas merupakan bagian dari <vocabulary>kediktatoran</vocabulary>. Seseorang tidak boleh sendirian untuk menghakimi semua orang karena begitulah cara para diktator diciptakan dan mereka tidak begitu hebat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kediktatoran, Despotisme')
    RETURNING id INTO v_7715_kediktatoran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '万年筆', 'pulpen', 26, 159, 'Satu-satunya jenis <kanji>kuas tulis</kanji> yang dapat Anda gunakan untuk <kanji>sepuluh ribu</kanji> <kanji>tahun</kanji> adalah <vocabulary>pena air mancur</vocabulary>! Semua pena lainnya kehabisan tinta dan Anda kurang beruntung. Tapi pulpen bisa diisi ulang, sehingga bisa bertahan hingga sepuluh ribu tahun.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pulpen')
    RETURNING id INTO v_7768_pulpen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狭める', 'untuk-mempersempit-sesuatu', 26, 160, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>sempit</kanji>, jadi versi kata kerjanya adalah <vocabulary>to mempersempit sesuatu</vocabulary> atau <vocabulary>to mempersempit sesuatu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda memiliki <vocabulary>untuk mempersempit</vocabulary> lebarnya sesuatu. Satu-satunya cara Anda dapat melakukannya adalah dengan <reading>memutus</reading> (せば) dari setiap ujungnya. Mungkin Anda mencoba menaikkan sofa ke tangga yang sempit. Satu-satunya cara untuk melakukannya adalah dengan memotong setiap lengan untuk mempersempitnya.', 'Untuk Mempersempit Sesuatu, Untuk Mempersempit Sesuatu')
    RETURNING id INTO v_7769_untuk_mempersempit_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '違反', 'pelanggaran', 26, 161, 'Jika Anda <kanji>anti-</kanji> sesuatu dengan cara yang <kanji>berbeda</kanji> dari norma maka Anda akan <vocabulary>melanggar</vocabulary> hukum! Hukum yang “tidak” dibuat oleh orang-orang yang berbeda. Apa pun yang terjadi, orang-orang itu akan menyulitkan Anda karena sikap anti Anda terhadap hal yang mereka sukai, dan mengatakan itu adalah <vocabulary>pelanggaran</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 違, jadi inilah mnemonik untuk membantu Anda:

Jika Anda mendapati diri Anda berada dalam <vocabulary>pelanggaran</vocabulary> hukum, cabut saja <reading>ea</reading>gle (い) peliharaan Anda. Elang begitu agung, mereka akan melupakan semua pelanggaranmu dan membiarkanmu pergi. Jika Anda ingin anti-sesuatu pastikan Anda membawa elang itu. Orang-orang tampaknya lebih peduli terhadap hewan dibandingkan orang lain seperti itu.', 'Pelanggaran, Pelanggaran, Melanggar')
    RETURNING id INTO v_8681_pelanggaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '右腕', 'lengan-kanan', 26, 162, '<kanji>kanji>kanji> <kanji>lengan</kanji> Anda adalah <vocabulary>lengan kanan</vocabulary> Anda.', 'Ini adalah kata jukugo, tapi menggunakan kun''yomi dan bukan on''yomi, jadi berhati-hatilah!', 'Lengan Kanan')
    RETURNING id INTO v_8717_lengan_kanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '任せる', 'untuk-mempercayakan-sesuatu', 26, 163, 'Jika Anda memberikan <kanji>tugas</kanji> kepada seseorang, itu berarti Anda akan <vocabulary>mempercayakan sesuatu</vocabulary> kepada orang tersebut, atau Anda akan <vocabulary>mendelegasikan sesuatu</vocabulary>. Dengan kata lain, Anda akan <vocabulary>mewariskan sesuatu kepada</vocabulary> mereka, sehingga mereka melakukannya untuk Anda.', 'Kata ini menggunakan kun''yomi dari kanji. Anda belum mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda:

Untuk <vocabulary>mempercayakan sesuatu</vocabulary> kepada seseorang, Anda perlu <reading>membuat</reading> daftar (まか). Tidak ada gunanya mendelegasikan tugas jika orang tersebut tidak tahu harus berbuat apa, jadi pastikan untuk membuat daftarnya, oke?', 'Untuk Mempercayakan Sesuatu, Untuk Mendelegasikan Sesuatu, Untuk Meninggalkan Sesuatu')
    RETURNING id INTO v_9072_untuk_mempercayakan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拭く', 'untuk-menghapus', 26, 164, 'Kanjinya berarti <kanji>menghapus</kanji>, dan ini adalah versi kata kerjanya, menjadikan <vocabulary>to wipe</vocabulary> ini.

拭く umumnya digunakan untuk tindakan yang melibatkan pembersihan atau pengeringan permukaan dengan menyeka, seringkali dengan kain, handuk, atau benda serupa.', 'Seperti kata kerja biasanya, ini menggunakan kun''yomi, yang sudah Anda pelajari dengan kanji. Beruntungnya kamu!', 'Untuk Menghapus')
    RETURNING id INTO v_9341_untuk_menghapus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '針', 'jarum', 26, 165, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Sebagai kosakata yang berdiri sendiri, ini menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca dengan kanji, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>jarum</vocabulary> ini… luar biasa <reading>berbulu</reading> (はり). Dan Anda akan menerima suntikan. Satu-satunya hal yang lebih buruk daripada jarum biasa mungkin adalah jarum berbulu. eh.', 'Jarum')
    RETURNING id INTO v_9346_jarum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捻挫', 'keseleo', 26, 166, '<kanji>memutar</kanji> <kanji>keseleo</kanji> adalah <vocabulary>keseleo</vocabulary>. Anda mungkin tidak perlu memelintirnya lagi - keseleo itu sudah terlihat cukup parah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda tahu cara membaca kanji Anda, Anda juga akan tahu cara membacanya.', 'Keseleo')
    RETURNING id INTO v_9363_keseleo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捻出', 'mengikis-bersama', 26, 167, '<kanji>Putar</kanji> dompet Anda hingga uang <kanji>keluar</kanji>. Ini adalah cara terbaik <vocabulary>mengumpulkan</vocabulary> uang tunai saat dana Anda hampir habis.

捻出 menggambarkan tindakan bekerja keras untuk mengumpulkan sesuatu, apakah Anda <vocabulary>mencari-cari</vocabulary> uang atau waktu luang dalam situasi sulit, atau <vocabulary>menemukan</vocabulary> ide dengan benar-benar memeras otak. Bayangkan memutar tabung pasta gigi yang hampir kosong untuk mendapatkan sisa pasta gigi, dan seperti itulah rasanya 捻出.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda tahu cara membaca kanji Anda, Anda juga akan tahu cara membacanya.', 'Mengikis Bersama, Mencari-cari, Akan Datang')
    RETURNING id INTO v_9364_mengikis_bersama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '様子', 'keadaan', 26, 168, '<kanji>cara</kanji> <kanji>anak</kanji> Anda berubah seiring dengan <vocabulary>keadaan</vocabulary>.

様子 adalah kata serba guna yang mengacu pada keadaan sesuatu — pada dasarnya, bagaimana segala sesuatu tampak atau tampak. Kata tersebut dapat mendeskripsikan <vocabulary>situasi</vocabulary>, <vocabulary>kondisi</vocabulary> seseorang, penampilan, tingkah laku, atau tingkah lakunya, atau bahkan suasana dalam sebuah ruangan (“getaran”).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Namun pembacaan す untuk 子 di sini kurang umum dan Anda belum pernah melihatnya, jadi inilah mnemonik yang dapat membantu Anda:

Jika Anda tidak puas dengan <vocabulary>keadaan</vocabulary>, Anda <reading>menuntut</reading> (す). Tuntut pemerintah, tuntut tetangga Anda, tuntut siapa pun. Yap, menggugat adalah satu-satunya cara untuk memperbaiki keadaan.', 'Keadaan, Situasi, Kondisi')
    RETURNING id INTO v_9367_keadaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夜中', 'tengah-malam', 26, 169, '<kanji>tengah</kanji> <kanji>malam</kanji> adalah <vocabulary>tengah malam</vocabulary>. Dengan kata lain, <vocabulary>larut malam</vocabulary>.

夜中 tidak merujuk pada waktu pastinya, namun biasanya berarti pada akhir malam, sekitar saat kebanyakan orang cenderung tertidur.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. 夜 memiliki beberapa bacaan kun''yomi, jadi inilah mnemonik yang perlu diingat よ yang Anda inginkan di sini:

Di <vocabulary>tengah malam</vocabulary>, Anda suka bermain dengan <reading>yo</reading>-yo (よ). Pada siang hari, sulit untuk mendapatkan kedamaian dan ketenangan untuk melatih trik yo-yo Anda, tetapi di tengah malam Anda akhirnya bisa mendapatkan waktu sendirian dengan yo-yo Anda yang berharga.', 'Tengah Malam, Larut Malam')
    RETURNING id INTO v_9377_tengah_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '効き目', 'kemanjuran', 26, 170, '効く berarti "menjadi efektif", bukan? Nah, jika ada sesuatu yang sangat efektif sehingga bisa menyembuhkan <kanji>mata</kanji> Anda dan membuat Anda bisa melihat kembali, maka itu pasti memiliki <vocabulary>efikasi</vocabulary> yang luar biasa.

効き目 dan 効果 sama-sama mendeskripsikan <vocabulary>efek</vocabulary> sesuatu, namun meskipun 効果 hanya mengacu pada hasil, 効き目 menekankan apakah hal tersebut dapat dirasakan atau dilihat, terutama pada hal-hal seperti obat-obatan atau perawatan.', 'Ini adalah kombinasi kata 効く dan 目. Jika Anda tahu cara membacanya, maka Anda juga harus pandai di sini.', 'Kemanjuran, Memengaruhi')
    RETURNING id INTO v_9494_kemanjuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '履歴', 'catatan', 26, 171, '<kanji>Alas kaki</kanji> menunjukkan <kanji>sejarah</kanji> lebih dari apa pun yang Anda kenakan, itulah sebabnya Anda dapat menganggapnya sebagai <vocabulary>log</vocabulary> dari semua tempat yang pernah Anda kunjungi. Sungguh, sepatu usang Anda merupakan <kosakata>catatan</vocabulary> penting dari seluruh aktivitas Anda di masa lalu. Mirip seperti "setiap bekas luka menceritakan sebuah kisah", kecuali bekas luka yang ada hanyalah lecet dan kotoran anjing.

履歴 adalah log atau <vocabulary>history</vocabulary> aktivitas masa lalu. Itu bisa berupa riwayat akademis dan pekerjaan yang sangat Anda banggakan, misalnya, atau riwayat peramban yang… tidak terlalu Anda banggakan.', 'Kata jukugo ini menggunakan pembacaan on''yomi yang Anda pelajari dengan kanji, jadi sebaiknya Anda mulai melakukannya.', 'Catatan, Catatan, Sejarah')
    RETURNING id INTO v_9511_catatan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4012_untuk_berkembang, 'Untuk Berkembang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4012_untuk_berkembang, 'Untuk Sejahtera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4745_membatasi, 'Membatasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4778_untuk_menyerahkan, 'Untuk Menyerahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4778_untuk_menyerahkan, 'Untuk Menyeberang Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4778_untuk_menyerahkan, 'Untuk Meletakkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4801_skala, 'Skala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4801_skala, 'Cakupan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4801_skala, 'Ukuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4838_untuk_diganti, 'Untuk Diganti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4838_untuk_diganti, 'Untuk Diganti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4838_untuk_diganti, 'Untuk Ditukar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4882_sebuah_kesalahan, 'Sebuah Kesalahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4882_sebuah_kesalahan, 'Kesalahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4883_untuk_menempatkan_pada_sesuatu, 'Untuk Menempatkan Pada Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4883_untuk_menempatkan_pada_sesuatu, 'Untuk Mengenakan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4883_untuk_menempatkan_pada_sesuatu, 'Untuk Dicatat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4884_badan_cuaca, 'Badan Cuaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4884_badan_cuaca, 'Badan Meteorologi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4886_struktur, 'Struktur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4891_pembukaan_kembali, 'Pembukaan kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4891_pembukaan_kembali, 'Dimulainya kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4893_lagi, 'Lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4893_lagi, 'Kedua Kalinya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4894_stimulasi, 'Stimulasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4894_stimulasi, 'Mendorong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4894_stimulasi, 'Merangsang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4897_penciptaan, 'Penciptaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4899_pembentukan, 'Pembentukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4899_pembentukan, 'Pendirian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4900_dorongan_yang_kuat, 'Dorongan yang Kuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4900_dorongan_yang_kuat, 'Dorongan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4901_untuk_mendorong_seseorang, 'Untuk Mendorong Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4901_untuk_mendorong_seseorang, 'Untuk Menghibur Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4901_untuk_mendorong_seseorang, 'Untuk Mendorong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4902_menceritakan_keberuntungan, 'Menceritakan Keberuntungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4903_untuk_menempati, 'Untuk Menempati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4903_untuk_menempati, 'Untuk Mempertanggungjawabkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4904_monopoli, 'Monopoli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4904_monopoli, 'Memonopoli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4905_tanda, 'Tanda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4905_tanda, 'Token', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4906_kesan_pertama, 'Kesan pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4907_untuk_memberikan, 'Untuk Memberikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4908_untuk_mendiskriminasi, 'Untuk Mendiskriminasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4909_jari_telunjuk, 'Jari telunjuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4909_jari_telunjuk, 'Jari Penunjuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4910_untuk_memberi, 'Untuk Memberi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4910_untuk_memberi, 'Untuk Bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4911_perjalanan_pulang_pergi, 'Perjalanan Pulang Pergi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4911_perjalanan_pulang_pergi, 'Lakukan Perjalanan Pulang Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4911_perjalanan_pulang_pergi, 'Bolak-balik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4912_untuk_mematuhi, 'Untuk Mematuhi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4912_untuk_mematuhi, 'Untuk Mengikuti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4914_hingga_kini, 'Hingga kini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4914_hingga_kini, 'Konvensional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4914_hingga_kini, 'Secara konvensional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4915_tinjauan, 'Tinjauan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4915_tinjauan, 'Meninjau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4915_tinjauan, 'Merevisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4916_pemulihan, 'Pemulihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4917_ciri, 'Ciri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4917_ciri, 'Ciri Khas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4918_simbol, 'Simbol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4919_mencurigakan, 'Mencurigakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4919_mencurigakan, 'Teduh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4920_misteri_aneh, 'Misteri Aneh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4920_misteri_aneh, 'Kasus Misteri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4921_cerita_hantu, 'Cerita Hantu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4921_cerita_hantu, 'Cerita Horor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4922_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4922_saya, 'Aku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4922_saya, 'Saya sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4923_tidak_mementingkan_diri_sendiri, 'Tidak mementingkan diri sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4924_untuk_mengambil_tanggung_jawab, 'Untuk Mengambil Tanggung Jawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4924_untuk_mengambil_tanggung_jawab, 'Untuk memikul tanggung jawab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4924_untuk_mengambil_tanggung_jawab, 'Untuk Mengambil Beban', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4925_untuk_mengguncang_sesuatu, 'Untuk Mengguncang Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4925_untuk_mengguncang_sesuatu, 'Untuk Melambaikan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4925_untuk_mengguncang_sesuatu, 'Untuk Mengayunkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4925_untuk_mengguncang_sesuatu, 'Untuk Putus Dengan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4926_getaran, 'Getaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4926_getaran, 'Osilasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4928_pelajaran, 'Pelajaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4928_pelajaran, 'Kelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4928_pelajaran, 'Pengajaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4929_profesor, 'Profesor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4929_profesor, 'Pengajaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4930_langsung, 'Langsung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4931_tidak_langsung, 'Tidak langsung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4932_wawancara, 'Wawancara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4932_wawancara, 'Wawancara Kerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4932_wawancara, 'Ujian Lisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4934_kecelakaan, 'Kecelakaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4934_kecelakaan, 'Kecelakaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4935_kerusakan, 'Kerusakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4935_kerusakan, 'Rusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4936_disengaja, 'Disengaja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4936_disengaja, 'Sesuai Tujuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4936_disengaja, 'Disengaja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4937_perusahaan, 'Perusahaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4938_pasar_saham, 'Pasar saham', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4939_perbandingan, 'Perbandingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4940_keringat, 'Keringat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4941_berbau_berkeringat, 'Berbau Berkeringat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4941_berbau_berkeringat, 'Berbau Keringat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4941_berbau_berkeringat, 'Berbau Seperti Keringat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4942_sungai, 'Sungai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4942_sungai, 'Sungai Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4943_kappa, 'Kappa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4944_gletser, 'Gletser', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4945_kanal, 'Kanal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4946_fugu, 'Fugu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4946_fugu, 'ikan buntal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4946_fugu, 'Ikan buntal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4947_intens, 'Intens', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4947_intens, 'Brutal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4947_intens, 'Garang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4948_untuk_membakar, 'Untuk Membakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4948_untuk_membakar, 'Menjadi Terbakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4949_untuk_menangkap_api, 'Untuk Menangkap Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4949_untuk_menangkap_api, 'Untuk Menangkap Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4950_sendiri, 'Sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4950_sendiri, 'Kesendirian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4950_sendiri, 'Lajang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4951_lajang, 'Lajang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4951_lajang, 'Belum menikah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4952_unik, 'Unik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4952_unik, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4953_kemerdekaan, 'Kemerdekaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4953_kemerdekaan, 'Otonomi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4954_belajar_mandiri, 'Belajar Mandiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4954_belajar_mandiri, 'Pendidikan Mandiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4955_binatang_buas, 'Binatang buas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4955_binatang_buas, 'Seekor Binatang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4956_monster_raksasa, 'Monster Raksasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4956_monster_raksasa, 'Kaiju', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4957_dokter_hewan, 'Dokter hewan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4957_dokter_hewan, 'Dokter hewan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4958_binatang_buas, 'binatang buas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4958_binatang_buas, 'Hewan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4959_binatang_buas, 'Binatang Buas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4959_binatang_buas, 'Hewan Liar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4962_kuas_tulis, 'Kuas Tulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4962_kuas_tulis, 'Kuas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4962_kuas_tulis, 'Sikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4963_pensil, 'Pensil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4964_pengawas, 'Pengawas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4964_pengawas, 'Administrator', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4964_pengawas, 'Pemelihara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4965_makanan_ringan, 'Makanan Ringan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4965_makanan_ringan, 'Permen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4965_makanan_ringan, 'kue kering', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4965_makanan_ringan, 'Permen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4966_untuk_menyentuh, 'Untuk Menyentuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4966_untuk_menyentuh, 'Untuk Berhubungan Dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4966_untuk_menyentuh, 'Untuk Menyentuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4967_untuk_memeriksa, 'Untuk Memeriksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4967_untuk_memeriksa, 'Untuk Belajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4967_untuk_memeriksa, 'Untuk Dipertimbangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4968_perdebatan, 'Perdebatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4968_perdebatan, 'Diskusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4969_selamat_ulang_tahun, 'Selamat ulang tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4972_mesin_penjual_otomatis, 'Mesin Penjual Otomatis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4975_tabungan, 'Tabungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4976_impor, 'Impor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4977_untuk_mengekspor, 'Untuk Mengekspor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4978_untuk_membangun, 'Untuk Membangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4978_untuk_membangun, 'Untuk Membangun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4978_untuk_membangun, 'Untuk Membuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4978_untuk_membangun, 'Untuk Menyeduh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4979_manufaktur, 'Manufaktur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4980_berkebun_lanskap, 'Berkebun Lanskap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4981_renovasi, 'Renovasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4981_renovasi, 'Perombakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4982_buatan_manusia, 'Buatan Manusia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4982_buatan_manusia, 'Sintetis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4982_buatan_manusia, 'Palsu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4983_pembuatan_bir, 'Pembuatan bir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4983_pembuatan_bir, 'Penyulingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4984_gila, 'Gila', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4985_identitas_yang_salah, 'Identitas yang Salah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4986_salah_baca, 'Salah baca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4986_salah_baca, 'Salah membaca', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4987_perbedaan_besar, 'Perbedaan Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4988_ahli_akupunktur, 'Ahli akupunktur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4990_tangan_kedua, 'Tangan Kedua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4991_memimpin, 'Memimpin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4992_pipa_timbal, 'Pipa Timbal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4993_toksisitas_timbal, 'Toksisitas Timbal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4993_toksisitas_timbal, 'Keracunan Timbal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4994_mengiritasi, 'Mengiritasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4994_mengiritasi, 'Mengganggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4994_mengiritasi, 'Untuk Mempengaruhi Secara Negatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4994_mengiritasi, 'Menjadi Buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4995_layar_shoji, 'Layar Shoji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4995_layar_shoji, 'Pintu Geser Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4995_layar_shoji, 'Shoji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4996_disabilitas, 'Disabilitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4996_disabilitas, 'Rintangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4996_disabilitas, 'Rintangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4997_keamanan, 'Keamanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4997_keamanan, 'Menjaga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4998_untuk_menghabiskan_waktu, 'Untuk Menghabiskan Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4998_untuk_menghabiskan_waktu, 'Untuk Menghabiskan Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4999_surat, 'Surat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4999_surat, 'Pos', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5065_gaji, 'Gaji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5065_gaji, 'Gaji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5065_gaji, 'Membayar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5065_gaji, 'Kompensasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5075_perut, 'Perut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5075_perut, 'Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5075_perut, 'Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5096_untuk_menangkap, 'Untuk Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5096_untuk_menangkap, 'Untuk Menangkap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5096_untuk_menangkap, 'Untuk Memahami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5106_pemandangan_spektakuler, 'Pemandangan Spektakuler', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5106_pemandangan_spektakuler, 'Pemandangan Menakjubkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5106_pemandangan_spektakuler, 'Pemandangan Luar Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5630_vertikal, 'Vertikal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5630_vertikal, 'Tegak lurus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5630_vertikal, 'Jujur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7160_untuk_mendinginkan_diri_sendiri, 'Untuk Mendinginkan Diri Sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7160_untuk_mendinginkan_diri_sendiri, 'Untuk Mendinginkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7505_alasan, 'Alasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7505_alasan, 'Keadaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7505_alasan, 'Menyebabkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7601_patuh, 'Patuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7601_patuh, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7601_patuh, 'Jinak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7602_mengapa, 'Mengapa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7602_mengapa, 'Bagaimana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7655_raksasa, 'Raksasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7714_perayaan, 'Perayaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7714_perayaan, 'Hadiah Ucapan Selamat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7715_kediktatoran, 'Kediktatoran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7715_kediktatoran, 'Despotisme', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7768_pulpen, 'Pulpen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7769_untuk_mempersempit_sesuatu, 'Untuk Mempersempit Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7769_untuk_mempersempit_sesuatu, 'Untuk Mempersempit Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8681_pelanggaran, 'Pelanggaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8681_pelanggaran, 'Pelanggaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8681_pelanggaran, 'Melanggar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8717_lengan_kanan, 'Lengan Kanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9072_untuk_mempercayakan_sesuatu, 'Untuk Mempercayakan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9072_untuk_mempercayakan_sesuatu, 'Untuk Mendelegasikan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9072_untuk_mempercayakan_sesuatu, 'Untuk Meninggalkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9341_untuk_menghapus, 'Untuk Menghapus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9346_jarum, 'Jarum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9363_keseleo, 'Keseleo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9364_mengikis_bersama, 'Mengikis Bersama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9364_mengikis_bersama, 'Mencari-cari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9364_mengikis_bersama, 'Akan Datang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9367_keadaan, 'Keadaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9367_keadaan, 'Situasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9367_keadaan, 'Kondisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9377_tengah_malam, 'Tengah Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9377_tengah_malam, 'Larut Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9494_kemanjuran, 'Kemanjuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9494_kemanjuran, 'Memengaruhi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9511_catatan, 'Catatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9511_catatan, 'Catatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9511_catatan, 'Sejarah', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4012_untuk_berkembang, 'さかえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4745_membatasi, 'げんてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4778_untuk_menyerahkan, 'わたす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4801_skala, 'きぼ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4838_untuk_diganti, 'かわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4882_sebuah_kesalahan, 'まちがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4883_untuk_menempatkan_pada_sesuatu, 'のせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4884_badan_cuaca, 'きしょうちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4886_struktur, 'こうぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4891_pembukaan_kembali, 'さいかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4893_lagi, 'さいど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4894_stimulasi, 'しげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4897_penciptaan, 'そうぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4899_pembentukan, 'そうりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4900_dorongan_yang_kuat, 'げきれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4901_untuk_mendorong_seseorang, 'はげます', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4902_menceritakan_keberuntungan, 'うらない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4903_untuk_menempati, 'しめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4904_monopoli, 'どくせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4905_tanda, 'しるし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4906_kesan_pertama, 'だいいちいんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4907_untuk_memberikan, 'とどける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4908_untuk_mendiskriminasi, 'さべつする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4909_jari_telunjuk, 'ひとさしゆび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4910_untuk_memberi, 'さしあげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4911_perjalanan_pulang_pergi, 'おうふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4912_untuk_mematuhi, 'したがう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4914_hingga_kini, 'じゅうらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4915_tinjauan, 'ふくしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4916_pemulihan, 'かいふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4917_ciri, 'とくちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4918_simbol, 'しょうちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4919_mencurigakan, 'あやしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4920_misteri_aneh, 'かいじけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4921_cerita_hantu, 'かいだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4922_saya, 'われ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4923_tidak_mementingkan_diri_sendiri, 'むが', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4924_untuk_mengambil_tanggung_jawab, 'になう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4925_untuk_mengguncang_sesuatu, 'ふる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4926_getaran, 'しんどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4928_pelajaran, 'じゅぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4929_profesor, 'きょうじゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4930_langsung, 'ちょくせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4931_tidak_langsung, 'かんせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4932_wawancara, 'めんせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4934_kecelakaan, 'じこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4935_kerusakan, 'こしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4936_disengaja, 'こい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4937_perusahaan, 'かぶしきがいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4938_pasar_saham, 'かぶしきしじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4939_perbandingan, 'ひかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4940_keringat, 'あせ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4941_berbau_berkeringat, 'あせくさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4942_sungai, 'かわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4943_kappa, 'かっぱ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4944_gletser, 'ひょうが', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4945_kanal, 'うんが', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4946_fugu, 'ふぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4947_intens, 'はげしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4948_untuk_membakar, 'もえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4949_untuk_menangkap_api, 'もえつく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4950_sendiri, 'ひとり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4951_lajang, 'どくしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4952_unik, 'どくとく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4953_kemerdekaan, 'どくりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4954_belajar_mandiri, 'どくがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4955_binatang_buas, 'けもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4956_monster_raksasa, 'かいじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4957_dokter_hewan, 'じゅうい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4958_binatang_buas, 'じゅうるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4959_binatang_buas, 'やじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4962_kuas_tulis, 'ふで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4963_pensil, 'えんぴつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4964_pengawas, 'かんりにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4965_makanan_ringan, 'おかし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4966_untuk_menyentuh, 'ふれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4967_untuk_memeriksa, 'けんとうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4968_perdebatan, 'とうろん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4969_selamat_ulang_tahun, 'おたんじょうびおめでとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4972_mesin_penjual_otomatis, 'じはんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4975_tabungan, 'ちょきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4976_impor, 'ゆにゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4977_untuk_mengekspor, 'ゆしゅつする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4978_untuk_membangun, 'つくる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4979_manufaktur, 'せいぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4980_berkebun_lanskap, 'ぞうえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4981_renovasi, 'かいぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4982_buatan_manusia, 'じんぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4983_pembuatan_bir, 'しゅぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4984_gila, 'きちがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4985_identitas_yang_salah, 'ひとちがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4986_salah_baca, 'よみちがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4987_perbedaan_besar, 'おおちがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4988_ahli_akupunktur, 'はりい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4990_tangan_kedua, 'びょうしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4991_memimpin, 'なまり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4992_pipa_timbal, 'えんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4993_toksisitas_timbal, 'えんどく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4994_mengiritasi, 'さわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4995_layar_shoji, 'しょうじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4996_disabilitas, 'しょうがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4997_keamanan, 'ほしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4998_untuk_menghabiskan_waktu, 'すごす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4999_surat, 'ゆうびん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5065_gaji, 'きゅうよ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5075_perut, 'おなか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5096_untuk_menangkap, 'たいほする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5106_pemandangan_spektakuler, 'ぜっけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5630_vertikal, 'すいちょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7160_untuk_mendinginkan_diri_sendiri, 'すずむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7505_alasan, 'ゆえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7601_patuh, 'じゅうじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7602_mengapa, 'なぜ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7655_raksasa, 'かいぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7714_perayaan, 'おいわい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7715_kediktatoran, 'どくさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7768_pulpen, 'まんねんひつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7769_untuk_mempersempit_sesuatu, 'せばめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8681_pelanggaran, 'いはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8717_lengan_kanan, 'みぎうで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9072_untuk_mempercayakan_sesuatu, 'まかせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9341_untuk_menghapus, 'ふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9346_jarum, 'はり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9363_keseleo, 'ねんざ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9364_mengikis_bersama, 'ねんしゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9367_keadaan, 'ようす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9377_tengah_malam, 'よなか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9494_kemanjuran, 'ききめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9511_catatan, 'りれき', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4012_untuk_berkembang, '私は、教育にお金をかければ国は栄えると思います。', 'Saya percaya jika kita membelanjakan uang untuk pendidikan, negara kita akan maju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4012_untuk_berkembang, 'この町は、かつては銀山で栄えていました。', 'Dulunya kota ini merupakan kota pertambangan perak yang makmur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4012_untuk_berkembang, 'この町はもっと栄えてるのかと思ってました。', 'Saya pikir kota ini akan lebih makmur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4745_membatasi, 'これはライフタイム会員限定のサービスなんです。', 'Layanan ini terbatas untuk anggota seumur hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4745_membatasi, 'このレストランでは、季節限定のコース料理が提供されています。', 'Restoran ini menawarkan hidangan musiman yang terbatas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4745_membatasi, 'お母さん、あの限定販売のトーフグ人形が欲しいんだけど、百万ドルくれない？', 'Bu, aku sangat ingin boneka Tofugu edisi terbatas, jadi bisakah ibu memberiku satu juta dolar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4778_untuk_menyerahkan, '彼が私にペンを渡してくれた時、胸がどきどきした。', 'Saat dia menyerahkan pena itu kepadaku, jantungku berdebar kencang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4778_untuk_menyerahkan, '上司に辞表を渡す時、手が震えました。', 'Ketika saya menyerahkan surat pengunduran diri saya kepada atasan, tangan saya gemetar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4778_untuk_menyerahkan, '渡された番号に電話を掛けてみたが、つながらなかった。', 'Saya memutar nomor yang dia berikan kepada saya, tetapi saya tidak dapat menghubunginya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4801_skala, 'このイベントの集客人数の規模って、どのくらいを見てますか？', 'Berapa jumlah kehadiran yang Anda harapkan untuk acara ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4801_skala, '規模が小さいプロジェクトにしか参加したことがないので、ちょっと不安です。', 'Saya sedikit cemas karena saya hanya berpartisipasi dalam proyek berukuran kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4801_skala, 'あなたにとってはただの規模の小さな会社かもしれませんが、私は両親の会社に誇りをもっています。', 'Bagimu ini mungkin hanya sebuah perusahaan skala kecil, tapi aku bangga dengan perusahaan orang tuaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4838_untuk_diganti, 'ドラえもんの声優が替わってから、観なくなってしまった。', 'Saya berhenti menonton Doraemon setelah pengisi suaranya diganti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4838_untuk_diganti, '今回の選挙で政権が替わることになりました。', 'Pemerintah akan diganti sebagai hasil pemilu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4838_untuk_diganti, 'もしご迷惑でなければ、席を替わってもらえませんか？彼女と一緒なんですが、席が別々になってしまったんです。', 'Jika tidak terlalu merepotkan, bisakah kamu bertukar tempat duduk denganku? Saya bersama pacar saya, tetapi kami duduk terpisah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4882_sebuah_kesalahan, '間違いを一つ見つけたよ！', 'Saya menemukan satu kesalahan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4882_sebuah_kesalahan, 'これは間違いないね！', 'Ini tidak salah lagi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4882_sebuah_kesalahan, 'ファイナルファンタジーについて君に聞いたのが間違いだったよ。', 'Adalah suatu kesalahan untuk bertanya kepada Anda tentang Final Fantasy.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4882_sebuah_kesalahan, '新しい市場に参入したことは間違いじゃなかった。', 'Berekspansi ke pasar baru bukanlah sebuah kesalahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4883_untuk_menempatkan_pada_sesuatu, 'このトーフグ人形は、あのたなの上に載せておきますね。', 'Aku akan meletakkan boneka Tofugu ini di atas rak, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4883_untuk_menempatkan_pada_sesuatu, '同意なしに住所や電話番号をリストに載せるなんて、今時ありえないです。', 'Saat ini tidak dapat diterima untuk memasukkan alamat dan nomor telepon seseorang ke dalam daftar tanpa persetujuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4883_untuk_menempatkan_pada_sesuatu, '自分の写真をインターネットに載せるのには、ちょっと抵抗があります。', 'Saya sedikit tidak nyaman mempublikasikan foto saya sendiri di Internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4884_badan_cuaca, '気象庁の仕事の面接を受けてきました。', 'Saya pergi ke wawancara kerja untuk badan cuaca.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4884_badan_cuaca, '気象庁の発表では、今朝東京で地震があったようですよ。', 'Berdasarkan pengumuman badan meteorologi, tampaknya gempa terjadi di Tokyo pagi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4884_badan_cuaca, 'やっと気象庁に電話が繋がったと思ったら、切られたんだよ。ありえなくね？', 'Saya pikir saya akhirnya mendapat telepon dari badan cuaca, tetapi mereka menutup telepon. Sulit dipercaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4884_badan_cuaca, '気象庁は、防災気象情報、交通安全情報、産業情報、生活情報、地球環境に関する情報などを提供し、人々の安全と生活を支えています。', 'Badan Meteorologi Jepang menyediakan informasi terkait pencegahan bencana, cuaca, keselamatan lalu lintas, perkembangan industri, kehidupan sehari-hari, dan data lingkungan. Semuanya sekaligus berkontribusi terhadap keselamatan dan kesejahteraan masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4886_struktur, '日本社会とアメリカ社会の構造に違いはありますか。', 'Apakah ada perbedaan struktur masyarakat Jepang dan Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4886_struktur, 'あの人の脳内、一体どんな構造をしてるんだろうね。', 'Aku ingin tahu struktur seperti apa yang ada di dalam otak orang itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4886_struktur, '今日はエッセイの構造とルールについて授業をします。', 'Saya akan mengajari kalian struktur dan aturan esai hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4891_pembukaan_kembali, '警察は捜査を再開したそうだよ。', 'Saya mendengar polisi telah membuka kembali penyelidikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4891_pembukaan_kembali, '戦争の再開条件は十分に満たされている。', 'Persyaratan untuk dimulainya kembali perang telah dipenuhi sepenuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4891_pembukaan_kembali, 'コウイチとビエトの交渉は、近々再開される予定だ。', 'Negosiasi antara Koichi dan Viet akan segera dibuka kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4893_lagi, 'この件については再度検討した方がいいかもね。', 'Mungkin kita harus memeriksanya lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4893_lagi, '計画は再度たな上げになってしまった。', 'Proyek ini ditunda untuk kedua kalinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4893_lagi, 'お手数ですが、念のため再度確認していただけないでしょうか。', 'Maaf merepotkan Anda, tapi bisakah Anda memeriksanya lagi untuk memastikannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4893_lagi, '相手は、埋め立て計画に反対する請願書を再度持ってくるかもしれませんよ。', 'Mereka mungkin akan kembali mengajukan petisi menentang proyek reklamasi lahan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4894_stimulasi, '周りに若い人が多いので、私も刺激を受けています。', 'Karena ada begitu banyak anak muda di sekitarku, itu juga memberikan semangat bagiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4894_stimulasi, 'コウイチをこれ以上刺激しないで。何しでかすか分からないよ。', 'Jangan memprovokasi Koichi lagi. Tidak ada yang tahu apa yang akan dia lakukan selanjutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4894_stimulasi, '彼女には会ったんだけど、お互いにいまいちピンと来なかったんだよな。俺としては、もうちょっと刺激的な女性の方がいいっていうかさ。', 'Aku bertemu dengannya, tapi kami tidak terlalu cocok. Bagi saya, saya lebih suka memiliki wanita yang sedikit lebih menarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4897_penciptaan, '神様は本当に人間を創造したんですか。', 'Benarkah Tuhan menciptakan manusia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4897_penciptaan, '常に新たな創造を求められます。', 'Kita selalu dituntut untuk menciptakan sesuatu yang baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4897_penciptaan, '私は、天地創造を目の当たりにしました...というのはウソです。', 'Saya menyaksikan Penciptaan... oke itu bohong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4899_pembentukan, 'コウイチは、死ぬまでにトーフグ大学を創立するつもりだ。', 'Koichi bermaksud mendirikan Universitas Tofugu sebelum dia meninggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4899_pembentukan, '今日はトーフグの創立記念日なんです。', 'Hari ini adalah hari jadi berdirinya Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4899_pembentukan, 'ワニカニの創立者が誰かはご存知ですよね？', 'Tahukah Anda siapa pendiri WaniKani?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4899_pembentukan, '電車に乗り遅れて、会社の創立記念のイベントに遅れそうだ。', 'Saya ketinggalan kereta dan saya terlambat menghadiri acara ulang tahun perusahaan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4900_dorongan_yang_kuat, 'コウイチ社長から、激励の言葉をいただきました。', 'Presiden Koichi memberi kami kata-kata penyemangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4900_dorongan_yang_kuat, '日本語能力検定試験の前に、先生が激励してくれました。', 'Sebelum tes JLPT, guru saya memberi saya semangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4900_dorongan_yang_kuat, 'テレビ番組が放映された後、何百にも及ぶ激励の電話が、数時間に渡って掛かってきた。', 'Setelah acara TV tersebut, ratusan panggilan telepon yang menawarkan dorongan berdatangan selama berjam-jam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4901_untuk_mendorong_seseorang, '私は人を励ますのが苦手だ。', 'Saya tidak pandai menyemangati orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4901_untuk_mendorong_seseorang, 'いつも励ましてくれてありがとう。', 'Terima kasih karena selalu menyemangatiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4901_untuk_mendorong_seseorang, '落ち込んでいる人を励ますのは難しい。	', 'Sulit untuk menghibur seseorang yang sedang depresi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4902_menceritakan_keberuntungan, '占いは、良いことだけ信じるようにしています。', 'Saya mencoba untuk percaya hanya pada hal-hal baik dari ramalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4902_menceritakan_keberuntungan, '占いで、今週は毎朝六時にラジオを掛けるように言われたから、五時五十五分に目覚まし時計を掛けているんです。', 'Ramalan memberitahuku untuk menyalakan radio pada pukul enam setiap pagi minggu ini, jadi aku menyetel alarmku pada pukul 5:55.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4902_menceritakan_keberuntungan, '星占いによると、フグと私ってあまり相性が良くないみたいなんだよね。', 'Menurut para bintang, Fugu dan saya seharusnya tidak memiliki banyak chemistry di antara kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4903_untuk_menempati, 'トーフグがベーコン市場を買い占めるつもりだと聞きましたよ。', 'Saya mendengar Tofugu sedang berpikir untuk memojokkan pasar bacon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4903_untuk_menempati, 'コウイチ社長の生写真の売り上げが、トーフグの全売り上げの80%を占めるんです。', 'Penjualan foto candid Presiden Koichi menyumbang 80% dari total penjualan Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4903_untuk_menempati, '今日のパーティー会場はアラサーの女性で占められていました。', 'Tempat pesta hari ini dipenuhi oleh wanita berusia sekitar 30 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4903_untuk_menempati, '反対者が過半数を占めてるんじゃ、仕方ないね。', 'Jika oposisi menguasai mayoritas, tidak ada yang bisa dilakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4904_monopoli, 'うちの家族の場合は、父がテレビを独占しています。', 'Dalam kasus keluarga saya, ayah saya memonopoli televisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4904_monopoli, 'それまでは、一つのプロバイダによる独占的な事業でした。', 'Hingga saat itu, bisnis ini merupakan bisnis monopoli yang dilakukan oleh satu penyedia saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4904_monopoli, 'あの会社は独占禁止法違反の疑いで調査を受けている。', 'Perusahaan tersebut sedang diselidiki atas dugaan pelanggaran undang-undang antimonopoli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4905_tanda, '道にまよわないように、ここに印をつけておこう。', 'Mari kita tandai di sini agar kita tidak tersesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4905_tanda, '友情の印にこれをあげるよ。', 'Sebagai tanda persahabatan kita, aku memberimu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4905_tanda, '私は手紙の最後にハートの印を付けるのが好きです。', 'Saya suka memberi tanda hati di akhir surat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4906_kesan_pertama, '第一印象はあまりいいものではなかったらしいです。', 'Saya mendengar kesan pertama tidak terlalu bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4906_kesan_pertama, '第一印象では我の強そうな人だなぁと思っていたんですが、全然違っていましたね。', 'Kesan pertamaku terhadapmu adalah orang yang asertif, tapi kamu sangat berbeda, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4906_kesan_pertama, 'オペレーターは、電話をかけてくださったお客様にとって、会社の 第一印象になるということを教えられました。', 'Kami semua diajari bahwa operator adalah kesan pertama penelepon terhadap perusahaan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4907_untuk_memberikan, 'このピザをお客さんに三十分以内に届ける必要があるんです。', 'Saya harus mengantarkan pizza ini ke pelanggan dalam waktu tiga puluh menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4907_untuk_memberikan, '今夜お前のところに俺のパソコンと外付けハードディスクを届けるよ。', 'Saya akan mengirimkan komputer dan hard drive eksternal saya kepada Anda malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4907_untuk_memberikan, 'コウイチはいつもワニカニユーザーに愛を届けたいと言っています。', 'Koichi selalu mengatakan ingin menyampaikan cinta kepada pengguna WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4907_untuk_memberikan, '赤ちゃんの出生はもう区役所に届けましたか？', 'Apakah Anda sudah memberi tahu kantor kelurahan tentang kelahiran bayi Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4908_untuk_mendiskriminasi, 'どうして差別するんですか？', 'Mengapa Anda melakukan diskriminasi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4908_untuk_mendiskriminasi, '誰かに差別されたことはありますか。', 'Pernahkah Anda didiskriminasi oleh seseorang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4908_untuk_mendiskriminasi, '無意識に外国人を差別してる人は多いんじゃないかな。', 'Saya pikir banyak orang secara tidak sadar melakukan diskriminasi terhadap orang asing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4909_jari_telunjuk, 'コウイチは、人差し指でメガネをクイッと上げるのがくせだ。', 'Sudah menjadi kebiasaan Koichi untuk mendorong kacamatanya ke atas dengan jari telunjuknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4909_jari_telunjuk, '人差し指にトゲが刺さっちゃった！', 'Saya mendapat serpihan di jari telunjuk saya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4909_jari_telunjuk, '人差し指と小指を立て、それ以外の指をたたんで指先をくっつけると、かわいいキツネができあがります。', 'Jika kamu menjulurkan jari telunjuk dan kelingkingmu, lalu melipat jari lainnya dan menyatukan ujung jari tersebut, kamu akan mendapatkan seekor rubah yang lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4909_jari_telunjuk, '電気コードに躓いた時に、人差し指を切っちゃったんだよね。', 'Saya melukai jari telunjuk saya ketika tersandung kabel listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4910_untuk_memberi, 'その本、先生に差し上げるつもりらしいよ。	', 'Sepertinya dia akan memberikan buku itu kepada gurunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4910_untuk_memberi, 'これ、よかったら差し上げますよ。', 'Aku akan memberikan ini padamu, jika kamu mau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4910_untuk_memberi, 'パソコンの動作を速くするのに役立つアプリケーションを無料で差し上げます。', 'Saya akan memberi Anda aplikasi ini yang membantu membuat komputer Anda berjalan lebih cepat secara gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4911_perjalanan_pulang_pergi, 'ここから大阪まで、往復でいくらですか？', 'Berapa biaya perjalanan pulang pergi dari sini ke Osaka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4911_perjalanan_pulang_pergi, 'ラッシュアワーの中を運転したので、往復一時間半もかかった。	', 'Saya melewati lalu lintas pada jam sibuk, jadi perjalanan pulang pergi memakan waktu satu setengah jam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4911_perjalanan_pulang_pergi, 'コウイチは考え事をする時、オフィスのはしからはしまで何度も往復するんだ。', 'Ketika Koichi sedang berpikir keras, dia mondar-mandir melintasi kantor berulang kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4912_untuk_mematuhi, 'もし彼の命令に従わなければ、どうなると思う？', 'Menurut Anda apa yang akan terjadi jika saya tidak mematuhi perintahnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4912_untuk_mematuhi, '不服でも、ルールには従うべきだよ。その上で、間違っていることを正していくしかないんだ。', 'Sekalipun Anda tidak puas, Anda tetap harus mematuhi aturan. Kemudian, Anda dapat berupaya memperbaiki apa yang salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4912_untuk_mematuhi, '教師が宿題を前の人に渡すよう言ったが、生徒達は一人もそれに従わなかった。', 'Guru menginstruksikan siswa untuk memberikan pekerjaan rumah kepada orang di depan, tetapi tidak ada siswa yang menindaklanjutinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4912_untuk_mematuhi, '従業員だからって、社長の決定に絶対に従わなければならないってことはないんだよ。', 'Hanya karena Anda seorang karyawan bukan berarti Anda harus mengikuti keputusan CEO begitu saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4914_hingga_kini, 'ワニカニでは、従来の方法とは全く違ったやり方で漢字を学べます。', 'Dengan WaniKani, Anda dapat mempelajari kanji dengan cara yang sangat berbeda dari metode konvensional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4914_hingga_kini, '従来のタトゥーインクとは違い、約一年で消える新しいタトゥーインクが開発されました。', 'Berbeda dengan tinta tato yang digunakan selama ini, tinta tato baru yang hilang dalam waktu sekitar satu tahun telah dikembangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4914_hingga_kini, '従来、一年目の新入社員はこの会社では有給休暇は一日ももらえません。', 'Secara konvensional, karyawan tahun pertama tidak diberikan hari libur berbayar di perusahaan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4915_tinjauan, '今日は「て形」の復習をしましょう。', 'Mari kita tinjau te-form hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4915_tinjauan, '大事なところだから、しっかり復習しておいてね！', 'Bagian ini penting, jadi pastikan untuk meninjaunya secara menyeluruh nanti!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4915_tinjauan, '予習と復習はどちらも大切です。', 'Persiapan dan peninjauan keduanya penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4915_tinjauan, '毎日復習していたら、未来の自分からお礼の手紙が来た。', 'Setelah meninjau setiap hari, saya menerima surat terima kasih dari diri saya di masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4916_pemulihan, 'まずは体力の回復が先ですよ。', 'Anda harus memulihkan kekuatan fisik Anda terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4916_pemulihan, '直子の意識の回復はまだなのか？', 'Naoko belum sadar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4916_pemulihan, '一時間休んだら体力は回復した。しかしやる気は回復しなかった。', 'Setelah istirahat selama satu jam, energi saya kembali. Namun motivasi saya tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4916_pemulihan, '家族は私の回復を喜んだ。ただ、誰も私が入院した理由を話そうとはしなかった。', 'Keluarga saya senang melihat saya pulih. Tapi tak seorang pun mau memberitahuku alasan mengapa aku dirawat di rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4917_ciri, 'ワニカニの最大の特徴はなんですか？	', 'Apa fitur WaniKani yang paling signifikan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4917_ciri, 'この会社の特徴は、他とは違う日本語学習教材を提供しようとしているところです。', 'Salah satu ciri khas perusahaan ini adalah berupaya menyediakan materi pembelajaran bahasa Jepang yang unik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4917_ciri, '優柔不断と事なかれ主義が彼の特徴だ。', 'Kepribadiannya ditandai dengan keragu-raguan dan kecenderungan menghindari konflik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4918_simbol, '実はこの題名には、象徴的な意味があります。', 'Padahal, gelar ini memiliki makna simbolis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4918_simbol, 'この絵のベーコンは何かを象徴しているんですか？', 'Apakah bacon di gambar ini melambangkan sesuatu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4918_simbol, '鳩は世界共通の平和の象徴だ。', 'Merpati adalah simbol perdamaian dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4919_mencurigakan, '怪しいリンクはクリックしちゃダメだよ！', 'Anda tidak boleh mengklik tautan yang mencurigakan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4919_mencurigakan, 'なんか今日のアイツの行動、怪しくね？	', 'Bukankah perilakunya hari ini tampak mencurigakan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4919_mencurigakan, '家の前に怪しい人がいたから警察に通報しました。', 'Saya melapor ke polisi karena ada orang mencurigakan di depan rumah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4919_mencurigakan, '彼女は同僚に比べて病欠が多いし、本当に病気なのか怪しいよね。', 'Dia lebih sering sakit dibandingkan rekan kerjanya yang lain, jadi patut dicurigai apakah dia benar-benar sakit atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4920_misteri_aneh, 'とんだ怪事件だったね。', 'Sungguh sebuah misteri yang aneh, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4920_misteri_aneh, 'コウイチの書いた「トーフグオフィスの怪事件」は、エドガー・アラン・ポーの「マリー・ロジェエの怪事件」とならぶ、素晴らしい作品だ。', '"Perselingkuhan Misterius di Kantor Tofugu" karya Koichi adalah mahakarya yang sama bagusnya dengan "Misteri Marie Roget" karya Edgar Allan Poe.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4920_misteri_aneh, 'ホームズでさえもその怪事件の糸口を見つけることはできないだろう。', 'Bahkan Holmes tidak akan bisa menemukan petunjuk atas misteri itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4921_cerita_hantu, 'アメリカで有名な学校の怪談はありますか。', 'Apakah ada cerita hantu sekolah yang terkenal di Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4921_cerita_hantu, '夏になるとなぜか怪談が聞きたくなる。', 'Saat musim panas tiba, entah kenapa aku ingin mendengar cerita hantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4921_cerita_hantu, '今度、有名な怪談を元にした映画が制作されるそうです。', 'Saya mendengar bahwa film berdasarkan cerita hantu terkenal akan segera diproduksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4922_saya, 'お店が開くと、みんな我も我もとセール品を目掛けて走り出した。', 'Saat toko dibuka, semua orang berlari menuju barang penjualan, masing-masing fokus pada diri mereka sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4922_saya, '子供時代は、我を忘れて夢中で楽しめることがたくさんあった', 'Semasa kecilku, ada banyak hal yang bisa kunikmati dengan sepenuh hati, hingga melupakan diriku sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4922_saya, '我に返った時には、取り返しのつかないことになっていた。', 'Ketika saya sadar, itu sudah menjadi situasi yang tidak bisa diubah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4922_saya, '我関せずって感じのアイツの態度、超嫌なんだけど。', 'Aku benci cara dia bertindak seolah-olah dia tidak peduli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4923_tidak_mementingkan_diri_sendiri, '私はサメに追いかけられて、無我夢中で泳ぎました。', 'Saya dikejar oleh hiu dan berenang demi nyawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4923_tidak_mementingkan_diri_sendiri, 'コウイチはついに無我の境地に達した。', 'Koichi akhirnya mencapai keadaan tidak mementingkan diri sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4923_tidak_mementingkan_diri_sendiri, '自分に優しくない人は、他人に優しくなれない。すなわち、自分を大切にすることこそが、無我なのである。', 'Jika Anda tidak baik pada diri sendiri, Anda tidak akan baik pada orang lain. Jadi, menjaga diri sendiri adalah inti dari sikap tidak mementingkan diri sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4924_untuk_mengambil_tanggung_jawab, '日本の未来を担うのは若者たちです。', 'Generasi mudalah yang bertanggung jawab atas masa depan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4924_untuk_mengambil_tanggung_jawab, 'トーフグは、これからの社会を担う人材の育成を目指しています。', 'Tofugu bertujuan untuk mendorong perkembangan individu yang akan membentuk masa depan masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4924_untuk_mengambil_tanggung_jawab, '我が社の純利益は前年比で70％も上昇したが、それを達成するために私が重要な役割を担ったんだ。', 'Keuntungan perusahaan saya melonjak 70% dibandingkan tahun lalu dan saya memainkan peran penting dalam mencapai hal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4924_untuk_mengambil_tanggung_jawab, '会社のビジョンを明確にするのを担うのが社長だろ？でもうちの社長が担ってるのは、暑い夏にダジャレでみんなを寒くするエアコンディションの役目なんだ。', 'Presiden seharusnya bertanggung jawab untuk mengartikulasikan visi perusahaan, bukan? Namun, dalam kasus kami, presiden kami memainkan peran sebagai pendingin ruangan yang mendinginkan semua orang dengan permainan kata-kata selama musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4925_untuk_mengguncang_sesuatu, 'よく振ってから飲んでください。', 'Silakan kocok dengan baik sebelum diminum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4925_untuk_mengguncang_sesuatu, '赤ちゃんがバイバイと手を振るのが可愛かったです。', 'Lucu sekali saat bayi itu melambaikan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4925_untuk_mengguncang_sesuatu, 'うちの犬は、私を見るといつも思いっきりシッポを振るんですよ。', 'Anjing saya selalu mengibaskan ekornya dengan penuh semangat saat melihat saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4925_untuk_mengguncang_sesuatu, 'コウイチは首をたてに振ったが、ビエトは首を横に振った。', 'Koichi menganggukkan kepalanya, tapi Viet menggelengkan kepalanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4925_untuk_mengguncang_sesuatu, '「彼に振られたなんて信じられない。」「あんた、浮気してたんでしょ。自業自得だよ。」', '"Aku tidak percaya dia putus denganku." "Kamu berselingkuh. Kamulah yang mewujudkannya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4926_getaran, '車の中で、エンジンの振動を感じるのが好きなんです。', 'Saya suka merasakan getaran mesin di dalam mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4926_getaran, '音は空気の振動で、低い音は空気の振動が遅いんです。', 'Suara disebabkan oleh getaran di udara, dan suara bernada rendah memiliki getaran udara yang lebih lambat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4926_getaran, 'ソファに座っている時、となりにいる人がオナラをした振動が伝わってきた経験はありませんか？', 'Pernahkah Anda merasakan getaran dari seseorang yang duduk di sebelah Anda di sofa saat mereka buang angin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4926_getaran, 'すると突然、体全体がビリビリと振動するような感覚があった。', 'Lalu tiba-tiba, ada sensasi seolah seluruh tubuhku bergetar hebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4928_pelajaran, '今日は初めて日本語で授業を受けました。', 'Hari ini, saya mengikuti kelas pertama saya dalam bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4928_pelajaran, 'その教師は、いつも白いマスクをつけて授業をしていた。', 'Guru itu selalu mengajar di kelas dengan memakai topeng putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4928_pelajaran, '昨日病気で欠席したため、今日は授業の遅れを取り戻すために忙しい。', 'Kemarin saya absen karena sakit, jadi hari ini saya sibuk berusaha mengejar pelajaran yang saya lewatkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4929_profesor, 'あの教授の息子、ずい分コウイチに肩入れしてるよね。', 'Putra profesor itu cukup banyak mendukung Koichi, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4929_profesor, '音楽大学で教授から、ピアノ教授法について教授してもらいました。', 'Saya menerima instruksi tentang metode pengajaran piano dari seorang profesor di universitas musik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4929_profesor, '教授会は毎月第三金曜日に開かれます。', 'Rapat fakultas diadakan pada hari Jumat ketiga setiap bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4930_langsung, 'それは直接関係ありません。', 'Itu tidak berhubungan langsung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4930_langsung, '結局、直接の原因は何だったんですか？', 'Pada akhirnya, apa penyebab langsungnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4930_langsung, '直接会って、確かめてみるよ。', 'Saya akan menemui orangnya secara langsung dan melihatnya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4930_langsung, '君と彼が僕のベーコンを食べたって話は、彼から直接聞いたんだよ。', 'Kudengar kalian berdua memakan dagingku langsung dari dia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4931_tidak_langsung, 'あなたにも間接の責任があると思います。', 'Saya pikir Anda juga memiliki tanggung jawab tidak langsung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4931_tidak_langsung, 'それって、間接的なリストラじゃない？', 'Bukankah itu merupakan cara tidak langsung untuk melakukan perampingan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4931_tidak_langsung, '消費税は間接税です。', 'Pajak konsumsi merupakan pajak tidak langsung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4931_tidak_langsung, '寝室用の落ち着いた感じのロマンチックな間接照明を探しているんです。', 'Saya mencari pencahayaan yang lembut, romantis, dan tidak langsung untuk kamar tidur kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4932_wawancara, '今回の面接の面接官は女性でした。', 'Pewawancara untuk wawancara kali ini adalah seorang wanita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4932_wawancara, '面接する場所はポートランドのオフィスになりますが、よろしいですか？', 'Lokasi wawancara akan berada di kantor kami di Portland. Apakah itu oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4932_wawancara, '二次試験は面接形式のスピーキングテストです。', 'Ujian sekunder merupakan tes berbicara berupa wawancara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4934_kecelakaan, '王子を船で川の向こう岸へ渡していた時に、事故が起きたんです。', 'Ketika saya sedang mengangkut pangeran menyeberangi sungai dengan perahu ke tepi seberang, terjadi kecelakaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4934_kecelakaan, '車を買ってまだ半年しかたっていないのに、もう事故に巻きこまれてしまった。', 'Saya baru memiliki mobil itu selama setengah tahun, dan saya sudah mengalami kecelakaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4934_kecelakaan, 'ひき逃げ事故のせいで、買ったばかりの牛肉が挽き肉になった。', 'Akibat kecelakaan tabrak lari, daging sapi yang baru dibelinya menjadi daging giling.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4935_kerusakan, 'パソコンの故障で仕事ができない。', 'Saya tidak dapat bekerja karena kerusakan komputer saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4935_kerusakan, 'あのファックス機は故障中だよ。', 'Mesin faks itu rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4935_kerusakan, 'コウイチが百万ドルをかけて制作したワニカニロボットは、起動してから十秒で故障してしまいました。', 'Robot WaniKani yang dibuat oleh Koichi menghabiskan satu juta dolar, tidak berfungsi dalam waktu sepuluh detik setelah dinyalakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4936_disengaja, '故意にしたつもりは全くないんです。', 'Aku sama sekali tidak bermaksud melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4936_disengaja, '故意ではありませんが、あなたを悲しませてしまったのは事実です。', 'Itu tidak disengaja, tapi itu membuatmu sedih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4936_disengaja, 'ここでは、故意または過失によるものだったかが争点となります。', 'Persoalan yang diperdebatkan di sini adalah apakah hal itu diakibatkan oleh kesengajaan atau kelalaian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4936_disengaja, 'コウイチの秘密のベーコンを故意に食べた罪を認めます。', 'Saya mengaku bersalah karena sengaja memakan daging rahasia Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4937_perusahaan, '今はパナソニック株式会社で働いています。', 'Saat ini saya bekerja di Panasonic Corporation.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4937_perusahaan, 'トーフグは株式会社じゃなくて合同会社ですよ。', 'Tofugu bukanlah sebuah korporasi; itu adalah perseroan terbatas (LLC).');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4937_perusahaan, '株式会社ソニーに電話を入れて、ファックスの送信がきちんと完了しているかどうか確認してくれる？', 'Dapatkah Anda menghubungi Sony Corporation untuk memastikan faks terkirim dengan baik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4938_pasar_saham, 'うちの母は、株式市場に関する知識はほとんどありません。', 'Pengetahuan ibu saya tentang pasar saham sangat sedikit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4938_pasar_saham, '多くの株が下落したため、今日の株式市場は真っ赤です。', 'Pasar saham hari ini berada di zona merah karena banyak saham yang anjlok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4938_pasar_saham, '世界的な景気の減速は、私たちの株式市場にも影響を及ぼした。', 'Perlambatan global juga berdampak signifikan pada pasar saham kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4938_pasar_saham, '日本には、「市場第一部」、「市場第二部」、「マザーズ」、「JASDAQ」、「プライム市場」、「スタンダード市場」、「グロース市場」の七つの株式市場があります。', 'Di Jepang, ada tujuh pasar saham: "Bagian Pertama", "Bagian Kedua", "Ibu", "JASDAQ", "Pasar Utama", "Pasar Standar", dan "Pasar Pertumbuhan".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4939_perbandingan, '他の子と比較しないで。私は私なんだから。', 'Jangan bandingkan aku dengan anak-anak lain. Saya adalah siapa saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4939_perbandingan, '教育についての日米の比較データを作成しました。', 'Saya telah membuat data perbandingan pendidikan antara Jepang dan Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4939_perbandingan, '偽物のダイヤと本物のダイヤを直接比較してみれば、どっちがどっちだかすぐに分かるよ。', 'Jika Anda membandingkan langsung berlian palsu dengan berlian asli, Anda akan langsung tahu yang mana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4940_keringat, '彼の額には、汗がキラキラ光っていた。', 'Dahinya berkilau karena keringat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4940_keringat, '汗だくなんだけど。もう少し温度下げてくれない？', 'Aku basah oleh keringat. Bisakah Anda menurunkan suhunya sedikit lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4940_keringat, '汗っかきなので、せっかく大好きなアイドルとハイタッチをするのに、汗で手がベタベタだったんです。', 'Aku seorang yang bersweter tebal, jadi ketika aku akhirnya melakukan tos terhadap idola kesayanganku, tanganku berkeringat dan lengket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4941_berbau_berkeringat, 'ゲッ、なんかこのシャツ、汗臭い！', 'Ugh, baju ini bau keringat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4941_berbau_berkeringat, '三時間も運動したから、さすがに汗臭くなった。', 'Setelah tiga jam berolahraga, tak heran saya berkeringat dan mulai berbau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4941_berbau_berkeringat, '私は彼の汗臭い枕が好きだった。', 'Saya suka bantalnya yang berbau keringat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4942_sungai, '河の音が聞こえてきました。', 'Saya mulai mendengar suara sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4942_sungai, 'ついにあの大きな河に橋が掛かるそうだ。', 'Akhirnya, sebuah jembatan telah dibangun di atas sungai besar itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4942_sungai, 'あの河はとても広いので、馬が泳いで渡るのは無理でしょう。', 'Sungai itu sangat lebar, sehingga mustahil kuda bisa berenang melintasinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4943_kappa, '河童のシールがはってあるスーツケースが私のスーツケースです。', 'Koper yang terdapat stiker kappa adalah koper saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4943_kappa, '河童がかっぱ巻きを食べてるのを見たよ。', 'Saya melihat seorang kappa sedang makan gulungan sushi mentimun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4943_kappa, 'まるで河童が存在していることを信じているかのようにリアクションしてもらえますか？', 'Bisakah kamu bereaksi seolah-olah kamu percaya Kappa benar-benar ada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4943_kappa, 'あの河童は本当に視野が狭い。', 'Kappa itu mempunyai pandangan yang sangat terbatas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4944_gletser, 'これは、氷河期に生きていたマンモスの化石です。', 'Ini adalah fosil mamut yang hidup pada zaman glasial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4944_gletser, 'ビエトは、氷河の写真をとるために、次のバケーションでアサバスカ氷河へ行く予定です。', 'Viet berencana pergi ke Gletser Athabasca pada liburan berikutnya untuk mengambil foto gletser.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4944_gletser, '遠くのほうにキラキラと青く光る氷河が見えました。', 'Saya melihat gletser biru berkilauan di kejauhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4944_gletser, '地球温暖化のために、毎年溶けている氷河が増えている。', 'Jumlah gletser yang mencair semakin meningkat setiap tahunnya akibat pemanasan global.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4945_kanal, 'パナマ運河を見てみたいです。', 'Saya ingin melihat Terusan Panama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4945_kanal, '冬には運河の上でスケートができますよ。', 'Anda bisa berseluncur di kanal selama musim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4945_kanal, 'この運河がなかったら、この国はここまで発展しなかったでしょう。', 'Jika terusan ini tidak ada, saya rasa negara ini tidak akan berkembang sejauh ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4946_fugu, '「豆腐と河豚のサンドイッチをお願いします。」 「同じく。」', '"Aku pesan sandwich ikan buntal dan tahu." "Aku akan mendapatkan hal yang sama."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4946_fugu, '河豚がサーモンの手にそっとお金を渡したのを見ちゃったんだよ。', 'Saya kebetulan menyaksikan Fugu menyelipkan sejumlah uang ke tangan Salmon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4946_fugu, '夜に食べに行く河豚のことが心を占めていて、仕事が手につきません。', 'Ikan buntal yang akan saya makan malam ini telah memenuhi pikiran saya dan saya tidak dapat menyelesaikan pekerjaan apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4947_intens, 'コウイチのダンスはいつも激しいです。', 'Tarian Koichi selalu intens.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4947_intens, '外からは激しい雨風の音が聞こえてきていた。', 'Suara hujan deras dan angin terdengar dari luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4947_intens, 'うちの父と母は、よく激しい口論をする。', 'Ayah dan ibu saya sering bertengkar sengit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4947_intens, '時々、夜になると激しい不安を感じるの。', 'Terkadang di malam hari saya merasakan kecemasan yang luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4948_untuk_membakar, 'これは燃えるゴミですか？燃えないゴミですか？', 'Apakah ini sampah yang bisa dibakar? Apakah itu sampah yang tidak bisa dibakar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4948_untuk_membakar, 'これは燃えやすいから火のそばで使わないでください。', 'Ini mudah terbakar, jadi jangan gunakan di dekat api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4948_untuk_membakar, 'なんか久々に燃えてきた！', 'Aku merasa sangat bersemangat untuk pertama kalinya setelah sekian lama!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4948_untuk_membakar, 'このツイート、ゼッタイめっちゃ燃えるよ。', 'Tweet ini pasti akan menimbulkan kontroversi besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4949_untuk_menangkap_api, 'タバコから燃え付いた火がやっと消えました。', 'Api yang bermula dari rokok akhirnya padam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4949_untuk_menangkap_api, 'そこから他のものに火が燃え付くのに時間はかからなかった。', 'Tak butuh waktu lama, api merembet ke benda lain dari sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4949_untuk_menangkap_api, '化学の実験をしている最中に、前髪に火が燃え付いた。', 'Saat melakukan percobaan kimia, poni saya terbakar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4950_sendiri, '全てを失って、独りぼっちになってしまった。', 'Setelah kehilangan segalanya, saya akhirnya sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4950_sendiri, 'これからずっと独りで生きなくちゃいけないのか。', 'Sepertinya aku harus hidup sendiri mulai sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4950_sendiri, '彼も独りで住んでいるよ。', 'Dia juga tinggal sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4951_lajang, 'これって独身の特権だよね。', 'Ini merupakan keistimewaan bagi mereka yang belum menikah, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4951_lajang, 'アイツ、独身ってウソを付くことに味を占めちゃったんだよ。', 'Dia merasakan kesuksesan melalui kebohongan tentang belum menikah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4951_lajang, '独身時代はバイクに乗ってましたが、危険なので家族のことを考えて今はもう乗っていません。', 'Saya biasa mengendarai sepeda motor ketika saya masih lajang, tapi itu berbahaya. Jadi sekarang, memikirkan keluargaku, aku tidak bersepeda lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4951_lajang, '私は独身で、婚活中です。とりあえずそんな感じですが、何か他に聞きたいことがあれば、遠慮なくご連絡ください。', 'Saya lajang dan mencari seseorang yang bisa saya nikahi. Itu saja untuk saat ini. Namun jangan ragu untuk menghubungi saya jika Anda memerlukan informasi lebih lanjut tentang saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4952_unik, '桜ちゃんの猫は、目が独特だよね。', 'Sakura-chan, kucingmu punya mata yang unik ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4952_unik, 'あのコメディアンは、独特な口調がいい味を出している。', 'Cara bicara komedian yang unik itu menambah banyak cita rasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4952_unik, 'この香辛料は独特の香りがする。', 'Rempah-rempah ini mempunyai aroma yang khas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4953_kemerdekaan, '七月四日はアメリカ独立記念日です。', '4 Juli adalah Hari Kemerdekaan Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4953_kemerdekaan, '私は独立開業を目指して頑張っています。', 'Saya bekerja keras untuk mengejar kewirausahaan mandiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4953_kemerdekaan, 'あの会社は、うちの会社とは独立した関係にあります。', 'Perusahaan itu memiliki hubungan independen dengan perusahaan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4953_kemerdekaan, '会社を辞めて独立した人で成功した人は多くないって言うなら、そのデータやその人たちの計画、そしてどうしてそれが失敗したのかを示してくださいよ。', 'Jika Anda mengatakan tidak banyak orang yang keluar dari perusahaan dan menjadi mandiri yang berhasil, tunjukkan datanya, rencana mereka, dan bagaimana mereka gagal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4954_belajar_mandiri, 'え、全部、独学で勉強したんですか！？', 'Oh, apakah kamu mempelajari semuanya melalui belajar mandiri!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4954_belajar_mandiri, '独学の方法なんて、インターネットがあればいくらでも調べられるじゃない。', 'Anda dapat mencari sejumlah metode belajar mandiri di Internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4954_belajar_mandiri, '独学で学ぶのは効率が悪いんじゃない？', 'Bukankah belajar mandiri tidak efisien?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4954_belajar_mandiri, 'インターネットの普及によって、独学で外国語を勉強することは昔よりもずっと簡単になった。', 'Karena penyebaran Internet, saat ini mempelajari bahasa lain melalui belajar mandiri menjadi jauh lebih mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4955_binatang_buas, '獣がワナにかかったぞ！', 'Binatang itu terperangkap dalam perangkap!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4955_binatang_buas, '森に大きな獣が一匹住んでいる。', 'Seekor binatang besar tinggal di hutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4955_binatang_buas, 'あの男の人、獣のような目をしていて、恐いわ。', 'Orang itu mempunyai mata seperti binatang. saya takut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4956_monster_raksasa, 'スーパーマンは、怪獣に数分遅れて現れた。', 'Superman muncul beberapa menit lebih lambat dari monster raksasa itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4956_monster_raksasa, 'ワニカニって怪獣なの？', 'Apakah WaniKani seorang kaiju?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4956_monster_raksasa, '怪獣が私の白いスカートにどろをはねかけた。', 'Kaiju memercikkan lumpur ke rok putihku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4957_dokter_hewan, 'うちの子の夢は獣医になることです。', 'Cita-cita anak saya adalah menjadi dokter hewan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4957_dokter_hewan, '獣医大学獣医学部で獣医学の勉強をしています。', 'Saya sedang belajar ilmu kedokteran hewan di sekolah kedokteran hewan di perguruan tinggi kedokteran hewan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4957_dokter_hewan, '獣医さんにペット保険をすすめられたんだよね。', 'Saya direkomendasikan asuransi hewan peliharaan oleh dokter hewan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4957_dokter_hewan, 'あの獣医さんに行く一番のメリットは、もちろん先生が優しくて賢いってこともあるけど、それだけじゃなくて治療費を分割で支払えるのよ。', 'Pergi ke dokter hewan memiliki manfaat terbaik. Tentu saja dia baik dan cerdas, tetapi tidak hanya itu, Anda dapat membagi tagihan Anda menjadi beberapa pembayaran terpisah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4958_binatang_buas, '狼に育てられた少女は、獣類のように四つ足で歩行をしていました。', 'Gadis yang dibesarkan oleh serigala berjalan dengan empat kaki seperti binatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4958_binatang_buas, '中国では、キリンは毛をもった360種の獣類の長とされています。', 'Di Tiongkok, Qilin dianggap sebagai raja dari 360 hewan berbulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4958_binatang_buas, '引越しを考えてるんだけど、どこも鳥獣類禁止ばっかりなの。', 'Saya berpikir untuk pindah, tetapi hampir semua tempat melarang burung dan hewan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4959_binatang_buas, 'その男は野獣のような目をしていた。', 'Pria itu mempunyai mata seperti binatang buas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4959_binatang_buas, 'あのカップル、まさに「美女と野獣」って感じだね。', 'Pasangan itu persis seperti si cantik dan si buruk rupa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4959_binatang_buas, 'これは野獣の姿に変えられてしまった王子が恋をして本当の愛を知るお話です。', 'Ini adalah kisah tentang seorang pangeran yang berubah menjadi binatang buas dan belajar tentang cinta sejati saat ia jatuh cinta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4962_kuas_tulis, '来週までに絵の具と筆を用意しておいてください。', 'Harap persiapkan cat dan kuas Anda paling lambat minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4962_kuas_tulis, '習字の筆は、持ち方も使い方も分かりません。', 'Saya tidak tahu cara memegang atau menggunakan kuas kaligrafi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4962_kuas_tulis, '筆マークのアイコンの上にカーソルを合わせて、マウスの左のボタンをカチカチッと２回クリックしてください。', 'Letakkan kursor di atas ikon kuas dan klik tombol kiri mouse dua kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4963_pensil, '最初はボールペンじゃなくて鉛筆で練習してください。', 'Silakan berlatih terlebih dahulu dengan pensil, bukan pulpen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4963_pensil, '筆箱の中に、鉛筆は何本ありますか？', 'Berapa banyak pensil yang ada di kotak penamu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4963_pensil, 'そのパグは、このHBの鉛筆で描いたんだよ。', 'Saya menggambar pesek dengan pensil HB ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4964_pengawas, 'このウェブサイトの管理人は私です。 ', 'Saya adalah administrator situs web ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4964_pengawas, 'うちのアパートの管理人さんは、いつも笑顔であいさつをしてくれる。', 'Manajer apartemen kami selalu menyambut kami dengan senyuman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4964_pengawas, '何かあれば、ビルの管理人に連絡してください。', 'Jika terjadi sesuatu, harap menghubungi pengelola gedung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4964_pengawas, '行方不明の方の財産を管理する人のことを「不在者財産管理人」と言います。', 'Orang yang mengelola properti orang hilang disebut "Administrator Properti Absentee".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4965_makanan_ringan, 'どうしてお友達のお菓子に水をかけたの？', 'Mengapa kamu menuangkan air ke permen temanmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4965_makanan_ringan, 'お菓子屋さんに行って、ケーキを買ってきてちょうだいな。', 'Bisakah Anda pergi ke toko kue dan membeli kue?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4965_makanan_ringan, '甘くないお菓子だったら、ポテトチップスが人気ですよ。', 'Untuk camilan yang tidak manis, keripik kentang menjadi pilihan yang populer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4965_makanan_ringan, '小さい頃、お菓子の家に住むことが夢でした。', 'Ketika saya masih kecil, impian saya adalah tinggal di rumah yang terbuat dari permen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4966_untuk_menyentuh, 'この車にはお手を触れないようお願い申し上げます。', 'Mohon jangan sentuh mobil ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4966_untuk_menyentuh, 'その話にはもう触れないでください。', 'Tolong jangan sentuh topik itu lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4966_untuk_menyentuh, '誰かが肩に触れるのを感じて振り返ったが、そこには誰もいなかった。', 'Aku merasakan seseorang menyentuh bahuku dan aku menoleh ke belakang, tapi tak seorang pun di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4967_untuk_memeriksa, 'これについては、まだもう少し検討するつもりです。', 'Saya berencana untuk menyelidiki hal ini lebih lanjut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4967_untuk_memeriksa, 'それぞれの可能性を一つ一つ検討した。', 'Saya memeriksa setiap kemungkinan satu per satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4967_untuk_memeriksa, 'そろそろ独立して、自分の店を持つことを検討してみないか？', 'Bagaimana kalau mempertimbangkan untuk segera mandiri dan membuka toko sendiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4967_untuk_memeriksa, '分厚いノートパソコンから薄型タブレットへの買い替えを検討している。', 'Kami sedang mempertimbangkan untuk mengganti laptop besar kami dengan tablet ramping.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4968_perdebatan, '討論の最中にどうしてもトイレに行きたくなったんです。', 'Saya benar-benar perlu pergi ke kamar mandi di tengah diskusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4968_perdebatan, '星占いについて占い師と討論した。', 'Saya berdebat dengan seorang astrolog tentang astrologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4968_perdebatan, '私は給与削減と年金減額に関する討論に加わった。', 'Saya berpartisipasi dalam diskusi tentang pemotongan gaji dan pengurangan pensiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4969_selamat_ulang_tahun, '弟はだれからもお誕生日おめでとうって言ってもらえなかったと言って、すねていましたよ。', 'Adikku merajuk karena tidak ada yang mengucapkan selamat ulang tahun padanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4969_selamat_ulang_tahun, '歌詞が「お誕生日おめでとう」しかない歌なのに、バズって売れた。', 'Sebuah lagu yang hanya berisi lirik dari お誕生日おめでとう(Selamat Ulang Tahun) berhasil menjadi viral dan menjadi hits.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4969_selamat_ulang_tahun, '遅れたとしても、「お誕生日おめでとう」って言う方が言わないよりもいいよ。', 'Lebih baik terlambat daripada tidak sama sekali dengan mengucapkan selamat ulang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4972_mesin_penjual_otomatis, 'あ、あそこに自販機がある！', 'Oh, ada mesin penjual otomatis di sana!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4972_mesin_penjual_otomatis, '父親が誕生日に自販機をプレゼントしてくれた。', 'Ayah saya memberi saya mesin penjual otomatis sebagai hadiah ulang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4972_mesin_penjual_otomatis, '台所を改造して、自販機を設置しました。', 'Kami telah merenovasi dapur kami dan memasang mesin penjual otomatis di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4972_mesin_penjual_otomatis, '日本には、自販機で肉やタレを売ってる焼肉屋があるんです。', 'Di Jepang, ada restoran yakiniku yang menjual daging dan saus melalui mesin penjual otomatis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4975_tabungan, 'クリスマスにサンタクロースから貯金箱をもらった。', 'Saya menerima celengan dari Santa Claus pada Natal ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4975_tabungan, '大学院に行くための貯金をはたいて、彼女とのデートのためにベンツを買った。', 'Saya menghabiskan tabungan saya untuk sekolah pascasarjana untuk membeli Benz untuk kencan dengan pacar saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4975_tabungan, '単刀直入に聞きますが、貯金額っていくらぐらいですか？', 'Saya akan bertanya langsung, berapa jumlah tabungan Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4975_tabungan, 'もし退職金が一括で支払われることになったら、それを使い切ってしまわずにちゃんと貯金することができますか。', 'Jika uang pensiun Anda dibayarkan sekaligus, bisakah Anda tidak menggunakannya dan memasukkannya ke dalam tabungan Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4976_impor, '次は輸入車が買いたいな。', 'Saya ingin membeli mobil impor selanjutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4976_impor, 'このスーパーでは輸入食品がたくさん売られています。', 'Supermarket ini banyak menjual makanan impor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4976_impor, 'サプリメントの輸入業者から聞いた話なんだけど、輸入禁止のサプリもそこそこ流通してるらしいよ。', 'Saya mendengar dari salah satu importir suplemen, ternyata cukup banyak suplemen yang dilarang impor namun masih beredar di pasaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4976_impor, '兄の会社が輸入家具マーケットにビジネスを広げるのですが、私はそのプロジェクトマネージャーに抜擢されました。', 'Perusahaan saudara laki-laki saya akan memperluas bisnisnya di pasar furnitur impor dan dia memilih saya sebagai manajer proyek tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4977_untuk_mengekspor, '彼らはライオン、トラ、くまなどたくさんの動物を輸出する。', 'Mereka mengekspor banyak hewan seperti singa, harimau, dan beruang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4977_untuk_mengekspor, '日本の商品を海外に輸出するには、どんな手続きが必要ですか？', 'Prosedur apa saja yang diperlukan untuk mengekspor produk Jepang ke luar negeri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4977_untuk_mengekspor, 'この会社はスパゲッティウィッグを世界各国に輸出している。', 'Perusahaan ini mengekspor wig spageti ke berbagai negara di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4977_untuk_mengekspor, 'この可愛いウサギの耳付きコーヒーカップを共同で輸出しませんか？', 'Tidakkah Anda ingin bersama-sama mengekspor cangkir kopi lucu bertelinga kelinci ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4978_untuk_membangun, '僕は建造物を造るのに使われる重機が好きなんですよ。', 'Saya suka alat berat yang digunakan untuk membangun struktur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4978_untuk_membangun, '船を造るにはまず設計が必要です。同じ船でも、客船を造るのかタンカーを造るのかで、設計が全く違ってくるんですよ。', 'Langkah pertama dalam pembuatan kapal adalah desain. Desain kapal yang sama sangat berbeda tergantung apakah itu kapal penumpang atau kapal tanker.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4978_untuk_membangun, '私の最近の趣味は、手作りのビールを造ることなんですよ。', 'Hobi saya baru-baru ini adalah membuat bir buatan sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4979_manufaktur, '実は、この商品とこの商品の製造方法はほぼ同じなんですよ。', 'Sebenarnya cara produksi kedua produk ini hampir sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4979_manufaktur, 'コウイチから、フグのかまぼこを工場で製造する許可をもらいました。', 'Saya mendapat izin dari Koichi untuk memproduksi fugu kamaboko di pabrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4979_manufaktur, '自動車の製造プロセスを解説するビデオを作りました。', 'Saya membuat video yang menjelaskan proses pembuatan mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4980_berkebun_lanskap, '私の友達は大学院で造園について学んでいます。', 'Teman saya sedang kuliah pascasarjana mempelajari arsitektur lanskap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4980_berkebun_lanskap, 'サーモンはフグの造園スタイルの大ファンなんですよ。', 'Salmon adalah penggemar berat gaya lansekap Fugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4980_berkebun_lanskap, '大学を卒業した時、造園会社から内定をもらっていました。', 'Ketika saya lulus kuliah, saya mendapat tawaran pekerjaan dari sebuah perusahaan pertamanan lanskap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4981_renovasi, 'すごいだろ？ガレージを改造して子供部屋にしたんだ。', 'Itu keren, bukan? Saya merenovasi garasi menjadi kamar anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4981_renovasi, '言うのは恥ずかしいんですが、あの改造バイクに乗ってるのは私の兄です。', 'Ini memalukan untuk dikatakan, tapi pria yang mengendarai sepeda motor modifikasi itu adalah saudara laki-laki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4981_renovasi, 'コウイチ総理には、内閣を改造する気はさらさらありませんよ。', 'Perdana Menteri Koichi tidak berniat merombak kabinetnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4981_renovasi, '肉体改造のために、今ランニングと食事制限で頑張ってるんです。', 'Untuk transformasi fisik saya, saya berupaya melalui pembatasan lari dan diet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4982_buatan_manusia, 'その外交官は人造人間十八号に刺された。', 'Diplomat itu ditusuk oleh Android No.18.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4982_buatan_manusia, '国もお金も、人間が作った人造物だろ？', 'Negara dan uang merupakan konstruksi buatan manusia, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4982_buatan_manusia, '「人造大理石」と違って、「人工大理石」には天然石の成分は一切含まれていません。', 'Berbeda dengan 人造大理石 (terrazzo), 人工大理石 (marmer buatan) tidak memiliki komponen batu alam sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4983_pembuatan_bir, 'この町には酒造会社がたくさんあります。', 'Ada banyak perusahaan pembuatan bir di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4983_pembuatan_bir, 'うちは元は酒造業を営んでたんですよ。', 'Kami dulu menjalankan bisnis penyulingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4983_pembuatan_bir, '青木酒造は、1717年に創業してからずっと酒づくりを続けている、伝統のある酒造会社です。', 'Aoki Shuzo adalah tempat pembuatan bir sake tradisional yang telah beroperasi sejak didirikan pada tahun 1717.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4983_pembuatan_bir, 'ジムの会員権や食事だけではなく酒まで無料の特典として提供されるので、私はこの酒造での仕事が好きです。', 'Saya senang bekerja di perusahaan pembuat bir ini karena mereka menawarkan semua fasilitas seperti keanggotaan gym gratis, makanan gratis, dan bahkan sake gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4984_gila, 'カナエは、たまに気違いじみたダンスをしながらオフィスに入ってくる。', 'Kanae terkadang masuk ke kantor sambil melakukan tarian gila.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4984_gila, '不思議の国のアリスの「気違いのお茶会」の絵をかいてみました。', 'Saya menggambar "Pesta Teh Gila" dari Alice in Wonderland.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4984_gila, 'この吹雪の中、パンツ一丁で踊るなんて、気違いにも程がある。', 'Menari-nari di tengah badai salju hanya dengan mengenakan celana dalam saja sungguh gila.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4985_identitas_yang_salah, '人違いでした。すみません。', 'Itu adalah kasus kesalahan identitas. Saya minta maaf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4985_identitas_yang_salah, 'ビエトはヤクザじゃありません。人違いで疑われたかわいそうな被害者なんですよ。', 'Viet bukan yakuza. Dia adalah korban malang dari kesalahan identitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4985_identitas_yang_salah, '妻にボーナスを渡したつもりだったんですが、どうやら人違いだったようです。', 'Saya pikir saya telah memberikan bonus kepada istri saya, tetapi sepertinya saya melakukan kesalahan dan memberikannya kepada orang yang salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4985_identitas_yang_salah, 'はい、私達も結合双生児ではありますが、申し訳ありませんがあなたは人違いをしていると思います。', 'Ya, kami juga kembar siam, tapi saya khawatir Anda salah mengira kami adalah pasangan kembar yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4986_salah_baca, '今日、超恥ずかしい読み違いをしてしまった。', 'Saya membuat kesalahan membaca yang paling memalukan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4986_salah_baca, '捜査令状の読み違いで、犯人に笑われた。', 'Pelakunya menertawakan saya karena salah membaca surat perintah penggeledahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4986_salah_baca, '名前の読み違いは日本人の間でもよくあることですよ。', 'Salah membaca nama sering terjadi bahkan di kalangan orang Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4986_salah_baca, 'どうやら私は彼の意図について、完全に読み違いをしていたようです。', 'Sepertinya saya salah mengartikan niatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4987_perbedaan_besar, 'やっぱり、聞くと見るでは大違いだね。', 'Tentu saja ada perbedaan besar antara mendengar dan melihat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4987_perbedaan_besar, 'ホットケーキにメープルシロップをかけるのとかけないのとでは大違いだよ。', 'Ada perbedaan besar apakah Anda menuangkan sirup maple ke atas pancake atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4987_perbedaan_besar, '山田さんのご主人は私の夫とは大違いだ。', 'Suami Yamada-san sangat berbeda dengan suamiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4987_perbedaan_besar, '堅い木の椅子と柔らかい快適な椅子じゃあ大違いだよ。', 'Ada perbedaan besar antara kursi kayu keras dan kursi empuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4988_ahli_akupunktur, '私の弟には、針医になるという夢があります。', 'Adik laki-laki saya mempunyai cita-cita menjadi seorang ahli akupunktur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4988_ahli_akupunktur, 'お気に入りの針医の電話番号を送るね！', 'Saya akan mengirimkan nomor telepon ahli akupunktur favorit saya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4988_ahli_akupunktur, '針医の技術の進歩には驚くばかりです。', 'Sungguh menakjubkan membayangkan teknik akupunktur telah berkembang sejauh ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4990_tangan_kedua, 'ねむれなかったので、時計の秒針を見て夜を過ごしました。', 'Saya tidak bisa tidur, jadi saya menghabiskan malam itu dengan memperhatikan jarum detik jam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4990_tangan_kedua, '秒針のチクタクチクタクいう音がうるさくてイライラする。', 'Bunyi detak jarum detik yang begitu keras dan mengganggu hingga membuat frustasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4990_tangan_kedua, '腕時計の秒針が折れちゃってるの。	', 'Jarum detik jam tangan saya rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4991_memimpin, '鉛でできたおもりを買いました。', 'Saya membeli beban yang terbuat dari timah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4991_memimpin, '今日はすごくやる気が無くて、体が鉛のように重く感じる。', 'Aku sangat tidak termotivasi hari ini, badanku terasa berat seperti timah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4991_memimpin, '1kgの鉛と1kgの鉄だったらどっちが重いか、という引っ掛け問題に見事にハマってしまった。', 'Saya benar-benar terjebak oleh pertanyaan jebakan yang menanyakan mana yang lebih berat, 1kg timah atau 1kg besi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4992_pipa_timbal, '鉛管の中に鉛製のカギが置かれていた。', 'Kunci yang terbuat dari timah ditempatkan di dalam pipa timah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4992_pipa_timbal, '水道の配管には、かつては鉛管がよく使われていました。', 'Perpipaan timbal dulunya sering digunakan dalam sistem perpipaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4992_pipa_timbal, 'この家のパイプの一部はまだ鉛管になっているから、水道から出るお湯を直接口にしてはいけないよ。', 'Beberapa bagian rumah ini masih menggunakan pipa timbal, jadi jangan minum air panas dari keran ya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4993_toksisitas_timbal, '鉛筆には鉛は入っていないので、鉛毒はありません。', 'Pensil tidak mengandung timbal, jadi tidak ada racun darinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4993_toksisitas_timbal, 'ライフルで仕留められたシカの肉には、鉛毒が残っている可能性があるって本当ですか？', 'Benarkah daging rusa yang dibunuh dengan senapan masih mengandung timbal dan beracun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4993_toksisitas_timbal, '白粉には鉛白が使われていたため、大正時代以前の役者さんには、鉛中毒に苦しみ鉛毒死した人がたくさんいたんですよ。', 'Bedak wajah dulunya mengandung timbal putih, sehingga banyak aktor pada masa dan sebelum era Taisho menderita keracunan timbal dan meninggal karena keracunan timbal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4994_mengiritasi, 'ごめん。気に障ったのなら、あやまるよ。', 'Saya minta maaf. Saya minta maaf jika saya menyinggung Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4994_mengiritasi, '暴飲暴食は体に障るよ。', 'Minum berlebihan dan makan berlebihan akan menghambat kesehatan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4994_mengiritasi, '仕事に差し障るので、顔出しは出来ません。', 'Itu akan menghambat pekerjaanku, jadi aku tidak bisa memperlihatkan wajahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4994_mengiritasi, '彼女の金切り声が時々癪に障るんだよね。', 'Terkadang suaranya yang melengking bisa sangat menjengkelkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4995_layar_shoji, 'あなたが着くころには、障子のはり替えをしてると思います。', 'Saat Anda tiba, saya mungkin akan mengganti layar shoji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4995_layar_shoji, '夜寝ていたら、障子に人影が映ってこわくなった。', 'Saat saya sedang tidur di malam hari, saya ketakutan dengan pantulan bayangan di shoji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4995_layar_shoji, '障子から差し込む光で、朝目を覚ますのが好きです。', 'Saya suka dibangunkan oleh sinar matahari yang menyaring dengan lembut melalui layar shoji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4996_disabilitas, 'ワニカニはシステム障害でメンテナンス中です。', 'WaniKani saat ini sedang menjalani pemeliharaan karena kerusakan sistem.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4996_disabilitas, '私はパニック障害に苦しんでいます。', 'Saya menderita gangguan panik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4996_disabilitas, '私の弟には軽度の知的障害があるんです。', 'Adik laki-laki saya memiliki cacat intelektual ringan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4996_disabilitas, '障害があることがバレて、内定が取り消された。', 'Ketika bocor bahwa saya memiliki disabilitas, tawaran pekerjaan yang saya terima dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4997_keamanan, '日本にはどんな社会保障がありますか。', 'Jaminan sosial seperti apa yang ada di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4997_keamanan, '明日は、国家安全保障会議に出席する予定です。', 'Besok, saya akan menghadiri Dewan Keamanan Nasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4997_keamanan, '学校で、基本的人権の保障について学びました。', 'Di sekolah, saya belajar tentang menjaga hak asasi manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4998_untuk_menghabiskan_waktu, 'お正月は一人でゆっくりして過ごす予定です。', 'Saya berencana untuk menghabiskan Hari Tahun Baru sendirian dan bersantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4998_untuk_menghabiskan_waktu, '日曜日は友達と映画を観て過ごしました。', 'Saya menghabiskan hari Minggu menonton film bersama teman-teman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4998_untuk_menghabiskan_waktu, '私はアメリカで毎日忙しい日々を過ごしています。', 'Saya menjalani kehidupan yang sibuk setiap hari di AS.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4998_untuk_menghabiskan_waktu, '電気料金の支払いが三ヶ月遅れて電気を止められちゃって、あのクソ暑い日をエアコン無しで過ごさなきゃならなかったんだ。', 'Listrik kami padam karena tagihan listrik kami terlambat tiga bulan, jadi kami harus menghabiskan hari yang panas tanpa AC.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4999_surat, 'おくさーん、郵便ですよー！', 'Nyonya, kami punya surat untuk Anda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4999_surat, 'そこには明るい赤色の郵便ポストがありました。', 'Ada kotak surat berwarna merah cerah di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4999_surat, '郵便番号は何番ですか？', 'Apa kode posnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4999_surat, '郵便業においては、効率とスピードが全てだ。', 'Efisiensi dan kecepatan adalah segalanya dalam layanan email.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5065_gaji, '月にもらえる給与は手取りでいくらぐらいですか。', 'Berapa gaji bulanan yang Anda terima?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5065_gaji, 'アメリカの企業では給与の話題はタブーだと聞いたんですが、本当ですか？', 'Saya dengar topik gaji adalah hal yang tabu di perusahaan Amerika, apakah benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5065_gaji, '毎月の給与は、指定の銀行口座にお振り込みいたします。', 'Gaji bulanan Anda akan kami transfer ke rekening bank yang ditunjuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5065_gaji, '正直、ご希望の給与水準に見合うお仕事を見つけるのは、かなり難しいかと思います。', 'Sejujurnya, menurut saya akan cukup sulit mencari pekerjaan yang sesuai dengan tingkat gaji yang Anda inginkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5075_perut, '朝から、ちょっとお腹が痛いんです。', 'Saya sedikit sakit perut sejak pagi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5075_perut, '四十代になってお腹がぽっこり出てきた。', 'Di usia empat puluhan, perutku mulai buncit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5075_perut, '今日はおいしいものをお腹いっぱい食べたから、また明日から仕事がんばれそうだよ。', 'Karena aku sudah kenyang dengan makanan lezat hari ini, aku merasa bisa bekerja keras lagi di pekerjaanku mulai besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5075_perut, '「お夕飯の支度ができましたよ！いらっしゃい。」「ああ、よかった！お腹ペコペコだよ。」', '"Makan malam sudah siap! Ayo ambil." "Oh, sempurna! Aku kelaparan!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5096_untuk_menangkap, 'どうやって逮捕するつもりですか？', 'Bagaimana Anda berencana menangkap mereka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5096_untuk_menangkap, 'ついに犯人を逮捕した。', 'Kami akhirnya menangkap pelakunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5096_untuk_menangkap, 'これまでに逮捕されたことはありません。', 'Saya belum pernah ditangkap sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5096_untuk_menangkap, '犯人はまだ逮捕されてないみたいだから、気を付けた方がいいよ。', 'Tampaknya penjahatnya masih bebas, jadi kamu harus berhati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5096_untuk_menangkap, 'もし今この場を去らなければ、公務執行妨害で逮捕するぞ。', 'Jika Anda tidak pergi sekarang, saya akan menangkap Anda karena menghalangi pelaksanaan tugas publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5106_pemandangan_spektakuler, 'もうすぐ絶景ポイントですよ！', 'Kita hampir sampai pada sudut pandang yang spektakuler!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5106_pemandangan_spektakuler, '山の上から、絶景を見るのが楽しみです。', 'Saya tak sabar untuk melihat pemandangan spektakuler dari puncak gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5106_pemandangan_spektakuler, '展望台からは、予想以上に素晴らしい絶景が広がっていました。', 'Dari dek observasi, pemandangannya bahkan lebih spektakuler dari yang diperkirakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5106_pemandangan_spektakuler, '世界の息を飲むような絶景をたくさん紹介している有名なFacebookページがあります。', 'Ada halaman facebook terkenal yang memperkenalkan banyak pemandangan menakjubkan dari seluruh dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5630_vertikal, 'スマホが垂直に立っていてびっくりした。', 'Aku terkejut melihat ponsel pintarku berdiri tegak sempurna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5630_vertikal, 'この線は地面に対して垂直に引かれている。', 'Garis ini ditarik tegak lurus dengan tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5630_vertikal, 'ボールは垂直に近い角度で落ちていきました。', 'Bola jatuh dengan sudut hampir vertikal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7160_untuk_mendinginkan_diri_sendiri, 'どこかでちょっと涼む？', 'Ingin sedikit menenangkan diri di suatu tempat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7160_untuk_mendinginkan_diri_sendiri, 'すごく暑かったから、とにかく涼みたくてその店に入ったんだ。', 'Saat itu sangat panas, jadi saya hanya ingin menenangkan diri dan pergi ke toko itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7160_untuk_mendinginkan_diri_sendiri, 'うちのワンコはあそこの木陰で涼んでいます。', 'Anak anjing kami sedang bersantai di bawah naungan pohon di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7505_alasan, '故あって、この製品のローンチが中止になりました。', 'Karena alasan tertentu, peluncuran produk ini dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7505_alasan, 'ここは火山が多い。それ故に、地震もよく起きる。', 'Ada banyak gunung berapi di sini. Oleh karena itu sering terjadi gempa juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7505_alasan, '若さ故の過ちだったんだよ。大目に見てやろうじゃないか。', 'Kesalahannya terjadi pada masa mudanya. Mari kita beri dia waktu luang, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7601_patuh, 'あいつは犬のように従順だ。	', 'Dia patuh seperti anjing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7601_patuh, '我を殺して従順でいる方が楽だと思いませんか？', 'Tidakkah menurut Anda lebih mudah menahan diri dan bersikap patuh?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7601_patuh, '俺はいつも上司に従順な部下より、ちょっとくらい歯向かってくるやつの方がいいと思うけど。', 'Saya pikir lebih baik memiliki seseorang yang sedikit membela dirinya sendiri, daripada selalu patuh kepada atasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7601_patuh, 'パブリアス・サイラスが、「従順な妻というものは、夫に従うことで夫を支配する。」って言ってたよ。', 'Publilius Syrus berkata, “Istri yang berbudi luhur memerintahkan suaminya dengan menaatinya.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7602_mengapa, '何故そんなヒドイことが言えるんだろう。', 'Saya bertanya-tanya mengapa mereka bisa mengatakan hal-hal buruk seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7602_mengapa, '何故あのアヒルたちは泣いているの？', 'Mengapa bebek-bebek itu menangis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7602_mengapa, '何故復讐しようと思ったんですか。', 'Mengapa Anda mencoba membalas dendam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7602_mengapa, '何故今ごろになって、もう一度あの殺人事件の捜査を行うことにしたんですか？', 'Mengapa Anda memutuskan untuk menyelidiki kasus pembunuhan itu lagi sekarang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7655_raksasa, '怪物には友達がほとんどいなかった。', 'Monster itu hanya punya sedikit teman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7655_raksasa, '怪物はメガネを掛けたが、似合わないと言われてすぐに外した。', 'Monster itu mengenakan kacamatanya, tetapi dia diberitahu bahwa kacamata itu tidak cocok untuknya dan segera melepasnya setelah itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7655_raksasa, 'この山には、心の優しい怪物が住んでいるという言い伝えがある。', 'Legenda mengatakan ada monster baik hati yang tinggal di gunung ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7714_perayaan, 'おばあちゃんから大学の入学のお祝いにスマホをもらった。', 'Saya mendapat ponsel pintar dari nenek saya sebagai hadiah ucapan selamat karena telah mulai masuk universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7714_perayaan, '新しい仕事見つかったの？今度お祝いしなきゃね。', 'Oh, kamu sudah menemukan pekerjaan baru? Kita harus merayakannya suatu saat nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7714_perayaan, 'せっかくのお祝いの席なのに、税金の話ばっかりしないでよ！', 'Jangan terus-menerus membicarakan pajak saat Anda sedang menghadiri perayaan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7714_perayaan, '引っ越しのお祝いを渡さなくちゃいけないわね。', 'Kita harus memberi mereka hadiah pindah rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7714_perayaan, 'お祝いの言葉を伝える時に、お祝いっぽい曲をかけようよ。', 'Saat menyampaikan kata-kata perayaan, mari kita mainkan lagu perayaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7715_kediktatoran, 'これって、ほぼ独裁政権みたいなものですよね。', 'Ini seperti sebuah kediktatoran, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7715_kediktatoran, '社長が独裁的だからあの会社では働きたくない。', 'Saya tidak ingin bekerja di perusahaan itu karena presiden menjalankannya seperti negara diktator.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7715_kediktatoran, '俺は世界一の独裁者になるんだ。', 'Saya akan menjadi diktator terbaik di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7768_pulpen, '万年筆を落とされましたよ。', 'Anda menjatuhkan pulpen Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7768_pulpen, '社会人になった後輩に、万年筆をプレゼントした。', 'Saya memberikan pulpen sebagai hadiah kepada rekan junior saya yang telah memasuki dunia kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7768_pulpen, '今時万年筆を使う人ってめずらしいですね。', 'Jarang sekali kita melihat orang yang menggunakan pulpen saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7768_pulpen, '万年筆といえばモンブランでしょ。', 'Kalau bicara pulpen, itu Montblanc, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7769_untuk_mempersempit_sesuatu, 'もう少しここの幅を狭めることはできますか？', 'Bisakah Anda mempersempit lebarnya sedikit lagi di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7769_untuk_mempersempit_sesuatu, 'この部屋を狭めて、バスルームを広くするつもりなんです。', 'Saya berencana mempersempit ruangan ini dan membuat kamar mandi lebih besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7769_untuk_mempersempit_sesuatu, '初めから自分の視野を狭めないことが大切です。', 'Penting untuk tidak mempersempit sudut pandang seseorang sejak awal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7769_untuk_mempersempit_sesuatu, 'もう少しこの記事のテーマを狭めた方が、読者にとって分かりやすくなるかもしれないね。', 'Pembaca mungkin akan lebih mudah memahaminya jika Anda sedikit mempersempit topik artikel ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8681_pelanggaran, '法律に違反するようなことはくれぐれもしないでください。', 'Tolong jangan melakukan apa pun yang melanggar hukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8681_pelanggaran, 'それはルール違反じゃないですか？', 'Bukankah itu melanggar aturan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8681_pelanggaran, 'スピード違反で警察に止められた。', 'Saya ditilang oleh polisi karena ngebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8717_lengan_kanan, '右腕を骨折したため、しばらくの間仕事ができません。', 'Lengan kananku patah, jadi aku tidak bisa bekerja untuk sementara waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8717_lengan_kanan, '彼女はコウイチ社長の右腕です。', 'Dia adalah tangan kanan Presiden Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8717_lengan_kanan, 'ひまつぶしで右腕の毛をぬいてたので、こっちの腕だけツルツルです。', 'Aku mencabut rambut di lengan kananku untuk mengisi waktu, jadi hanya lengan ini yang mulus sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8717_lengan_kanan, '奴の右腕には、龍のタトゥーがあるハズだ。', 'Menurutku itu seharusnya adalah tato naga di lengan kanan pria itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9072_untuk_mempercayakan_sesuatu, 'この会社では、若い会社員にも重要な仕事を任せています。', 'Di perusahaan ini, karyawan muda pun diserahi tugas-tugas penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9072_untuk_mempercayakan_sesuatu, '本当に大事なことなので、他の人には任せられません。', 'Ini sangat penting, jadi tidak bisa diserahkan kepada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9072_untuk_mempercayakan_sesuatu, '任せることを学ばなければ、自分が大変になりますよ。', 'Jika Anda tidak belajar mendelegasikan, Anda akan mempersulit diri Anda sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9341_untuk_menghapus, 'えっ、バスタオルじゃなく、この小さいタオルで体を拭くんですか？', 'Tunggu, kamu menyeka tubuhmu dengan handuk kecil ini, bukan handuk mandi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9341_untuk_menghapus, 'こぼしたものをティッシュで拭くのはもったいないよ。ふきんとかないの？', 'Sia-sia jika menyeka tumpahan dengan tisu. Bukankah kita punya sesuatu seperti serbet?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9341_untuk_menghapus, 'じゃあ、ミサキさんは、これでテーブルを拭いといてもらえますか？', 'Kalau begitu, bisakah kamu membersihkan meja dengan ini, Misaki-san?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9346_jarum, 'この虫、針があるから気をつけてね！', 'Hati-hati dengan bug ini; ia memiliki penyengat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9346_jarum, '針を刺す時、ちょっとチクっとしたけど、平気だったよ。', 'Sedikit terjepit saat jarum masuk, tapi tidak apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9346_jarum, '時計の針のことって、英語でなんて言うんだっけ？', 'Apa lagi yang disebut "hari" jam dalam bahasa Inggris?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9363_keseleo, 'うわ、最悪！手首、捻挫したかも。', 'Ugh, ini menyebalkan! Pergelangan tanganku mungkin terkilir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9363_keseleo, '試合中に捻挫をしないようにしっかりストレッチしよう。', 'Mari kita melakukan peregangan dengan benar agar kita tidak terkilir apapun selama pertandingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9363_keseleo, '彼と別れた理由は捻挫だったの。歩けないくらいの捻挫だったのに「大したことないじゃん！」って言われて。', 'Alasan aku putus dengannya adalah keseleo. Meskipun kondisinya sangat buruk sehingga saya tidak bisa berjalan, dia berkata, "Oh, ayolah — kamu baik-baik saja!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9364_mengikis_bersama, '大学に行くためのお金を捻出するためにアルバイトを頑張ってます。', 'Aku bekerja keras di pekerjaan paruh waktuku untuk mengumpulkan uang untuk kuliah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9364_mengikis_bersama, '時間がない中で、新しいアイディアを五つも捻出したんですよ！', 'Meski tidak punya waktu, saya masih berhasil memunculkan lima ide baru!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9364_mengikis_bersama, 'ただでさえ生活が苦しいのに、日本に旅行に行く費用を捻出するのは難しいよ。', 'Saya kesulitan memenuhi kebutuhan hidup, jadi mencari uang untuk bepergian ke Jepang itu sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9367_keadaan, 'しばらく様子を見ましょう。', 'Mari kita tunggu dan lihat bagaimana keadaannya sebentar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9367_keadaan, '息子は「これで足りるかな？」と不安そうな様子で言いました。', 'Tampak cemas, anak saya berkata, "Saya ingin tahu apakah ini cukup."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9367_keadaan, '昨日からお父さんの様子がおかしいんだけど、何かあったのかな？', 'Ayah bertingkah aneh sejak kemarin—aku ingin tahu apakah terjadi sesuatu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9377_tengah_malam, '夜中の二時にチャイムが鳴った。', 'Bel pintu berbunyi pada pukul dua pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9377_tengah_malam, 'こんな夜中に何の用ですか？', 'Apa yang membawamu ke sini larut malam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9377_tengah_malam, '前の仕事では夜中まで残業をすることもあったけど、今は五時には家に帰ってますよ。', 'Di pekerjaan saya sebelumnya, saya terkadang bekerja lembur hingga tengah malam, tetapi sekarang saya sampai di rumah jam lima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9494_kemanjuran, 'この薬はいつもすぐに効き目が現れる。', 'Obat ini selalu bekerja dengan cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9494_kemanjuran, '効き目には個人差があります。', 'Khasiatnya bervariasi dari orang ke orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9494_kemanjuran, 'エアコンの効き目が弱い気がする。', 'AC sepertinya tidak terlalu efektif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9494_kemanjuran, '政策の効き目がなくなると、状況は悪化した。', 'Ketika kebijakan tersebut tidak lagi efektif, keadaan menjadi lebih buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9511_catatan, '兄のグーグルサーチの履歴に「なぜネコはかわいい」が三回あった。', 'Di riwayat penelusuran Google kakak saya, "kenapa kucing itu lucu?" muncul tiga kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9511_catatan, 'そういえば、YouTubeの動画の履歴も全部ネコ関連だった。', 'Kalau dipikir-pikir, riwayat tontonan YouTube-nya juga sepenuhnya berhubungan dengan kucing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9511_catatan, 'Amazonの買い物履歴もチェックしてみたら、やっぱり猫グッズばっかり買っていた。', 'Ketika saya memeriksa riwayat pembeliannya di Amazon, tentu saja dia tidak membeli apa pun kecuali barang-barang kucing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9511_catatan, 'デスクに置いてあった履歴書をふと見ると、猫カフェで働いていた職歴まであった。お、お兄ちゃん！？', 'Saat melirik resume yang tergeletak di mejanya, aku melihat resume itu bahkan mencantumkan beberapa pengalaman kerja di kafe kucing. Ka-kakak!?');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1075_alas_kaki, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1075_alas_kaki, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1075_alas_kaki, id FROM items WHERE type = 'radical' AND (slug = '265' OR id = '265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1281_membuat, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1281_membuat, r_306_mengumumkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1282_menginstruksikan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1282_menginstruksikan, id FROM items WHERE type = 'radical' AND (slug = '298' OR id = '298') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1283_segel, r_8792_sisir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1283_segel, id FROM items WHERE type = 'radical' AND (slug = '145' OR id = '145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1284_membuat, r_8827_gudang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1284_membuat, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1285_memulihkan, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1285_memulihkan, id FROM items WHERE type = 'radical' AND (slug = '265' OR id = '265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1286_perjalanan, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1286_perjalanan, id FROM items WHERE type = 'radical' AND (slug = '154' OR id = '154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1287_kontras, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1287_kontras, id FROM items WHERE type = 'radical' AND (slug = '302' OR id = '302') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1288_kuas_tulis, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1288_kuas_tulis, id FROM items WHERE type = 'radical' AND (slug = '220' OR id = '220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1289_memimpin, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1289_memimpin, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1289_memimpin, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1290_tabungan, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1290_tabungan, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1290_tabungan, id FROM items WHERE type = 'radical' AND (slug = '27' OR id = '27') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1291_keadaan, id FROM items WHERE type = 'radical' AND (slug = '69' OR id = '69') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1291_keadaan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1292_menghalangi, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1292_menghalangi, r_8828_bab);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1293_mematuhi, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1293_mematuhi, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1293_mematuhi, id FROM items WHERE type = 'radical' AND (slug = '420' OR id = '420') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1294_saya, id FROM items WHERE type = 'radical' AND (slug = '272' OR id = '272') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1295_garang, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1295_garang, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1295_garang, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1295_garang, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1297_mendorong, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1297_mendorong, r_307_sepuluh_ribu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1297_mendorong, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1298_menghukum, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1298_menghukum, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1299_surat, r_9390_murung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1299_surat, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1300_jarum, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1300_jarum, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1301_indikasi, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1301_indikasi, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1301_indikasi, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1301_indikasi, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1302_mencurigakan, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1302_mencurigakan, id FROM items WHERE type = 'radical' AND (slug = '179' OR id = '179') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1303_binatang_buas, id FROM items WHERE type = 'radical' AND (slug = '8783' OR id = '8783') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1303_binatang_buas, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1303_binatang_buas, id FROM items WHERE type = 'radical' AND (slug = '8781' OR id = '8781') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1303_binatang_buas, id FROM items WHERE type = 'radical' AND (slug = '47' OR id = '47') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1305_kue, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1305_kue, id FROM items WHERE type = 'radical' AND (slug = '235' OR id = '235') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1306_sungai, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1306_sungai, id FROM items WHERE type = 'radical' AND (slug = '113' OR id = '113') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1307_menggoyang, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1307_menggoyang, id FROM items WHERE type = 'radical' AND (slug = '183' OR id = '183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1308_keringat, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1308_keringat, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1310_lagi, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1310_lagi, id FROM items WHERE type = 'radical' AND (slug = '29' OR id = '29') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1310_lagi, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1311_berdampingan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1311_berdampingan, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1311_berdampingan, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1312_sendiri, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1312_sendiri, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1313_harta_benda, id FROM items WHERE type = 'radical' AND (slug = '143' OR id = '143') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1519_terkulai, r_9390_murung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9338_menghapus, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9338_menghapus, id FROM items WHERE type = 'radical' AND (slug = '79' OR id = '79') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9338_menghapus, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9361_memutar, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9361_memutar, id FROM items WHERE type = 'radical' AND (slug = '238' OR id = '238') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9361_memutar, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9362_keseleo, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9362_keseleo, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9362_keseleo, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4012_untuk_berkembang, id FROM items WHERE type = 'kanji' AND (slug = '1006' OR id = '1006') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4745_membatasi, id FROM items WHERE type = 'kanji' AND (slug = '1248' OR id = '1248') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4745_membatasi, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4778_untuk_menyerahkan, id FROM items WHERE type = 'kanji' AND (slug = '1253' OR id = '1253') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4801_skala, id FROM items WHERE type = 'kanji' AND (slug = '1191' OR id = '1191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4801_skala, id FROM items WHERE type = 'kanji' AND (slug = '1264' OR id = '1264') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4838_untuk_diganti, id FROM items WHERE type = 'kanji' AND (slug = '1279' OR id = '1279') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4882_sebuah_kesalahan, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4882_sebuah_kesalahan, id FROM items WHERE type = 'kanji' AND (slug = '1220' OR id = '1220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4883_untuk_menempatkan_pada_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1230' OR id = '1230') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4884_badan_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4884_badan_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '1237' OR id = '1237') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4884_badan_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '1233' OR id = '1233') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4886_struktur, id FROM items WHERE type = 'kanji' AND (slug = '1263' OR id = '1263') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4886_struktur, k_1281_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4891_pembukaan_kembali, k_1310_lagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4891_pembukaan_kembali, id FROM items WHERE type = 'kanji' AND (slug = '753' OR id = '753') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4893_lagi, k_1310_lagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4893_lagi, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4894_stimulasi, id FROM items WHERE type = 'kanji' AND (slug = '1296' OR id = '1296') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4894_stimulasi, k_1295_garang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4897_penciptaan, k_1284_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4897_penciptaan, k_1281_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4899_pembentukan, k_1284_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4899_pembentukan, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4900_dorongan_yang_kuat, k_1295_garang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4900_dorongan_yang_kuat, k_1297_mendorong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4901_untuk_mendorong_seseorang, k_1297_mendorong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4902_menceritakan_keberuntungan, k_1313_harta_benda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4903_untuk_menempati, k_1313_harta_benda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4904_monopoli, k_1312_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4904_monopoli, k_1313_harta_benda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4905_tanda, k_1283_segel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4906_kesan_pertama, id FROM items WHERE type = 'kanji' AND (slug = '825' OR id = '825') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4906_kesan_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4906_kesan_pertama, k_1283_segel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4906_kesan_pertama, id FROM items WHERE type = 'kanji' AND (slug = '1237' OR id = '1237') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4907_untuk_memberikan, id FROM items WHERE type = 'kanji' AND (slug = '1224' OR id = '1224') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4908_untuk_mendiskriminasi, id FROM items WHERE type = 'kanji' AND (slug = '1235' OR id = '1235') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4908_untuk_mendiskriminasi, id FROM items WHERE type = 'kanji' AND (slug = '785' OR id = '785') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4909_jari_telunjuk, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4909_jari_telunjuk, id FROM items WHERE type = 'kanji' AND (slug = '1235' OR id = '1235') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4909_jari_telunjuk, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4910_untuk_memberi, id FROM items WHERE type = 'kanji' AND (slug = '1235' OR id = '1235') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4910_untuk_memberi, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4911_perjalanan_pulang_pergi, k_1286_perjalanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4911_perjalanan_pulang_pergi, k_1285_memulihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4912_untuk_mematuhi, k_1293_mematuhi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4914_hingga_kini, k_1293_mematuhi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4914_hingga_kini, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4915_tinjauan, k_1285_memulihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4915_tinjauan, id FROM items WHERE type = 'kanji' AND (slug = '746' OR id = '746') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4916_pemulihan, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4916_pemulihan, k_1285_memulihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4917_ciri, id FROM items WHERE type = 'kanji' AND (slug = '807' OR id = '807') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4917_ciri, k_1301_indikasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4918_simbol, id FROM items WHERE type = 'kanji' AND (slug = '1237' OR id = '1237') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4918_simbol, k_1301_indikasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4919_mencurigakan, k_1302_mencurigakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4920_misteri_aneh, k_1302_mencurigakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4920_misteri_aneh, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4920_misteri_aneh, id FROM items WHERE type = 'kanji' AND (slug = '1135' OR id = '1135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4921_cerita_hantu, k_1302_mencurigakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4921_cerita_hantu, id FROM items WHERE type = 'kanji' AND (slug = '736' OR id = '736') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4922_saya, k_1294_saya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4923_tidak_mementingkan_diri_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4923_tidak_mementingkan_diri_sendiri, k_1294_saya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4924_untuk_mengambil_tanggung_jawab, id FROM items WHERE type = 'kanji' AND (slug = '1217' OR id = '1217') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4925_untuk_mengguncang_sesuatu, k_1307_menggoyang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4926_getaran, k_1307_menggoyang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4926_getaran, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4928_pelajaran, k_1282_menginstruksikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4928_pelajaran, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4929_profesor, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4929_profesor, k_1282_menginstruksikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4930_langsung, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4930_langsung, k_1311_berdampingan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4931_tidak_langsung, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4931_tidak_langsung, k_1311_berdampingan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4932_wawancara, id FROM items WHERE type = 'kanji' AND (slug = '974' OR id = '974') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4932_wawancara, k_1311_berdampingan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4934_kecelakaan, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4934_kecelakaan, k_1291_keadaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4935_kerusakan, k_1291_keadaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4935_kerusakan, k_1292_menghalangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4936_disengaja, k_1291_keadaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4936_disengaja, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4937_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '1247' OR id = '1247') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4937_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '939' OR id = '939') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4937_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4937_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4938_pasar_saham, id FROM items WHERE type = 'kanji' AND (slug = '1247' OR id = '1247') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4938_pasar_saham, id FROM items WHERE type = 'kanji' AND (slug = '939' OR id = '939') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4938_pasar_saham, id FROM items WHERE type = 'kanji' AND (slug = '522' OR id = '522') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4938_pasar_saham, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4939_perbandingan, id FROM items WHERE type = 'kanji' AND (slug = '1088' OR id = '1088') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4939_perbandingan, k_1287_kontras);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4940_keringat, k_1308_keringat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4941_berbau_berkeringat, k_1308_keringat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4941_berbau_berkeringat, id FROM items WHERE type = 'kanji' AND (slug = '1111' OR id = '1111') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4942_sungai, k_1306_sungai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4943_kappa, k_1306_sungai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4943_kappa, id FROM items WHERE type = 'kanji' AND (slug = '833' OR id = '833') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4944_gletser, id FROM items WHERE type = 'kanji' AND (slug = '537' OR id = '537') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4944_gletser, k_1306_sungai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4945_kanal, id FROM items WHERE type = 'kanji' AND (slug = '752' OR id = '752') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4945_kanal, k_1306_sungai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4946_fugu, k_1306_sungai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4946_fugu, id FROM items WHERE type = 'kanji' AND (slug = '1309' OR id = '1309') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4947_intens, k_1295_garang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4948_untuk_membakar, id FROM items WHERE type = 'kanji' AND (slug = '1222' OR id = '1222') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4949_untuk_menangkap_api, id FROM items WHERE type = 'kanji' AND (slug = '1222' OR id = '1222') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4949_untuk_menangkap_api, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4950_sendiri, k_1312_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4951_lajang, k_1312_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4951_lajang, id FROM items WHERE type = 'kanji' AND (slug = '689' OR id = '689') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4952_unik, k_1312_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4952_unik, id FROM items WHERE type = 'kanji' AND (slug = '807' OR id = '807') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4953_kemerdekaan, k_1312_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4953_kemerdekaan, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4954_belajar_mandiri, k_1312_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4954_belajar_mandiri, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4955_binatang_buas, k_1303_binatang_buas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4956_monster_raksasa, k_1302_mencurigakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4956_monster_raksasa, k_1303_binatang_buas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4957_dokter_hewan, k_1303_binatang_buas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4957_dokter_hewan, id FROM items WHERE type = 'kanji' AND (slug = '681' OR id = '681') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4958_binatang_buas, k_1303_binatang_buas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4958_binatang_buas, id FROM items WHERE type = 'kanji' AND (slug = '1034' OR id = '1034') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4959_binatang_buas, id FROM items WHERE type = 'kanji' AND (slug = '848' OR id = '848') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4959_binatang_buas, k_1303_binatang_buas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4962_kuas_tulis, k_1288_kuas_tulis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4963_pensil, k_1289_memimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4963_pensil, k_1288_kuas_tulis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4964_pengawas, id FROM items WHERE type = 'kanji' AND (slug = '1236' OR id = '1236') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4964_pengawas, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4964_pengawas, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4965_makanan_ringan, k_1305_kue);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4965_makanan_ringan, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4966_untuk_menyentuh, id FROM items WHERE type = 'kanji' AND (slug = '1229' OR id = '1229') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4967_untuk_memeriksa, id FROM items WHERE type = 'kanji' AND (slug = '1143' OR id = '1143') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4967_untuk_memeriksa, k_1298_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4968_perdebatan, k_1298_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4968_perdebatan, id FROM items WHERE type = 'kanji' AND (slug = '1119' OR id = '1119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4969_selamat_ulang_tahun, id FROM items WHERE type = 'kanji' AND (slug = '1156' OR id = '1156') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4969_selamat_ulang_tahun, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4969_selamat_ulang_tahun, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4972_mesin_penjual_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4972_mesin_penjual_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '1246' OR id = '1246') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4972_mesin_penjual_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '1090' OR id = '1090') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4975_tabungan, k_1290_tabungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4975_tabungan, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4976_impor, id FROM items WHERE type = 'kanji' AND (slug = '1221' OR id = '1221') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4976_impor, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4977_untuk_mengekspor, id FROM items WHERE type = 'kanji' AND (slug = '1221' OR id = '1221') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4977_untuk_mengekspor, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4978_untuk_membangun, k_1281_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4979_manufaktur, id FROM items WHERE type = 'kanji' AND (slug = '1219' OR id = '1219') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4979_manufaktur, k_1281_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4980_berkebun_lanskap, k_1281_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4980_berkebun_lanskap, id FROM items WHERE type = 'kanji' AND (slug = '960' OR id = '960') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4981_renovasi, id FROM items WHERE type = 'kanji' AND (slug = '1082' OR id = '1082') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4981_renovasi, k_1281_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4982_buatan_manusia, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4982_buatan_manusia, k_1281_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4983_pembuatan_bir, id FROM items WHERE type = 'kanji' AND (slug = '743' OR id = '743') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4983_pembuatan_bir, k_1281_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4984_gila, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4984_gila, id FROM items WHERE type = 'kanji' AND (slug = '1220' OR id = '1220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4985_identitas_yang_salah, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4985_identitas_yang_salah, id FROM items WHERE type = 'kanji' AND (slug = '1220' OR id = '1220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4986_salah_baca, id FROM items WHERE type = 'kanji' AND (slug = '765' OR id = '765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4986_salah_baca, id FROM items WHERE type = 'kanji' AND (slug = '1220' OR id = '1220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4987_perbedaan_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4987_perbedaan_besar, id FROM items WHERE type = 'kanji' AND (slug = '1220' OR id = '1220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4988_ahli_akupunktur, k_1300_jarum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4988_ahli_akupunktur, id FROM items WHERE type = 'kanji' AND (slug = '681' OR id = '681') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4990_tangan_kedua, id FROM items WHERE type = 'kanji' AND (slug = '800' OR id = '800') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4990_tangan_kedua, k_1300_jarum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4991_memimpin, k_1289_memimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4992_pipa_timbal, k_1289_memimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4992_pipa_timbal, id FROM items WHERE type = 'kanji' AND (slug = '1236' OR id = '1236') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4993_toksisitas_timbal, k_1289_memimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4993_toksisitas_timbal, id FROM items WHERE type = 'kanji' AND (slug = '948' OR id = '948') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4994_mengiritasi, k_1292_menghalangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4995_layar_shoji, k_1292_menghalangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4995_layar_shoji, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4996_disabilitas, k_1292_menghalangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4996_disabilitas, id FROM items WHERE type = 'kanji' AND (slug = '1093' OR id = '1093') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4997_keamanan, id FROM items WHERE type = 'kanji' AND (slug = '983' OR id = '983') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4997_keamanan, k_1292_menghalangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4998_untuk_menghabiskan_waktu, id FROM items WHERE type = 'kanji' AND (slug = '1158' OR id = '1158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4999_surat, k_1299_surat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4999_surat, id FROM items WHERE type = 'kanji' AND (slug = '808' OR id = '808') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5065_gaji, id FROM items WHERE type = 'kanji' AND (slug = '1345' OR id = '1345') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5065_gaji, id FROM items WHERE type = 'kanji' AND (slug = '1249' OR id = '1249') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5075_perut, id FROM items WHERE type = 'kanji' AND (slug = '1317' OR id = '1317') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5096_untuk_menangkap, id FROM items WHERE type = 'kanji' AND (slug = '1260' OR id = '1260') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5096_untuk_menangkap, id FROM items WHERE type = 'kanji' AND (slug = '1265' OR id = '1265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5106_pemandangan_spektakuler, id FROM items WHERE type = 'kanji' AND (slug = '1371' OR id = '1371') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5106_pemandangan_spektakuler, id FROM items WHERE type = 'kanji' AND (slug = '1256' OR id = '1256') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5630_vertikal, k_1519_terkulai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5630_vertikal, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7160_untuk_mendinginkan_diri_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '1954' OR id = '1954') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7505_alasan, k_1291_keadaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7601_patuh, k_1293_mematuhi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7601_patuh, id FROM items WHERE type = 'kanji' AND (slug = '1060' OR id = '1060') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7602_mengapa, id FROM items WHERE type = 'kanji' AND (slug = '582' OR id = '582') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7602_mengapa, k_1291_keadaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7655_raksasa, k_1302_mencurigakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7655_raksasa, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7714_perayaan, id FROM items WHERE type = 'kanji' AND (slug = '1223' OR id = '1223') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7715_kediktatoran, k_1312_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7715_kediktatoran, id FROM items WHERE type = 'kanji' AND (slug = '1194' OR id = '1194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7768_pulpen, id FROM items WHERE type = 'kanji' AND (slug = '495' OR id = '495') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7768_pulpen, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7768_pulpen, k_1288_kuas_tulis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7769_untuk_mempersempit_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1225' OR id = '1225') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8681_pelanggaran, id FROM items WHERE type = 'kanji' AND (slug = '1220' OR id = '1220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8681_pelanggaran, id FROM items WHERE type = 'kanji' AND (slug = '855' OR id = '855') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8717_lengan_kanan, id FROM items WHERE type = 'kanji' AND (slug = '484' OR id = '484') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8717_lengan_kanan, id FROM items WHERE type = 'kanji' AND (slug = '1227' OR id = '1227') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9072_untuk_mempercayakan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1142' OR id = '1142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9341_untuk_menghapus, k_9338_menghapus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9346_jarum, k_1300_jarum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9363_keseleo, k_9361_memutar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9363_keseleo, k_9362_keseleo);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9364_mengikis_bersama, k_9361_memutar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9364_mengikis_bersama, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9367_keadaan, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9367_keadaan, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9377_tengah_malam, id FROM items WHERE type = 'kanji' AND (slug = '622' OR id = '622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9377_tengah_malam, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9494_kemanjuran, id FROM items WHERE type = 'kanji' AND (slug = '1267' OR id = '1267') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9494_kemanjuran, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9511_catatan, k_1075_alas_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9511_catatan, id FROM items WHERE type = 'kanji' AND (slug = '1069' OR id = '1069') LIMIT 1;

END $$;
