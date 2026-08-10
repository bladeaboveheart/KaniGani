-- ====================================================
-- KaniGani — Seed Data Level 21 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 21) ============
  r_148_tombak UUID; r_276_mohawk UUID; r_277_serentak UUID; r_278_berikutnya UUID; r_280_nomor UUID; r_305_setengah UUID; r_321_menyalahkan UUID; r_393_bilah UUID;

  -- ============ KANJI IDs (Level 21) ============
  k_946_membangun UUID; k_1036_berdoa UUID; k_1123_musuh UUID; k_1124_berakhir UUID; k_1125_komite UUID; k_1126_mengangkat UUID; k_1127_hakim UUID; k_1128_kontrol UUID; k_1129_tugas UUID; k_1130_memeriksa UUID; k_1131_utuh UUID; k_1132_mendirikan UUID; k_1133_sumber_daya UUID; k_1134_hak UUID; k_1135_urusan UUID; k_1136_sekte UUID; k_1137_bukit UUID; k_1138_elemen UUID; k_1139_memotong UUID; k_1141_kritik UUID; k_1142_tugas UUID; k_1143_meneliti UUID; k_1145_ayat UUID; k_1146_menyalahkan UUID; k_1147_melestarikan UUID; k_1148_meningkatkan UUID; k_1149_pajak UUID; k_1151_kesempatan UUID; k_1152_mengenali UUID; k_1154_kebenaran UUID; k_8880_iri UUID; k_9259_menerima UUID; k_9343_menjadi_kenyataan UUID; k_9451_memberi_makan UUID;

  -- ============ VOCABULARY IDs (Level 21) ============
  v_2633_nona UUID; v_3442_masyarakat UUID; v_3588_kekaguman UUID; v_4122_untuk_berdoa UUID; v_4124_doa UUID; v_4309_untuk_melahirkan UUID; v_4360_siulan UUID; v_4381_untuk_berpartisipasi UUID; v_4382_peserta UUID; v_4383_petugas_polisi UUID; v_4384_untuk_menaruh_kekacauan UUID; v_4385_asing UUID; v_4386_pesawat_luar_angkasa UUID; v_4388_untuk_membujuk UUID; v_4391_menjadi_bingung UUID; v_4392_untuk_mengurangi_sesuatu UUID; v_4393_untuk_melanjutkan_sesuatu UUID; v_4394_kata_benda_yang_tepat UUID; v_4396_kata_kerja_transitif UUID; v_4397_sindikat_kejahatan UUID; v_4398_mengira UUID; v_4399_geng_pengendara_sepeda_motor UUID; v_4401_hentikan UUID; v_4402_prosedur UUID; v_4403_musuh UUID; v_4405_musuh_besar UUID; v_4406_tak_ada_taranya UUID; v_4408_anggota_komite UUID; v_4409_untuk_dibangkitkan UUID; v_4410_pemilihan UUID; v_4411_segel_seseorang UUID; v_4413_seragam UUID; v_4414_sistem UUID; v_4415_memaksa UUID; v_4416_kontrol_diri UUID; v_4417_untuk_bekerja_sebagai UUID; v_4418_kantor UUID; v_4419_kewajiban UUID; v_4420_tugas UUID; v_4422_keseluruhan UUID; v_4424_secara_keseluruhan UUID; v_4425_untuk_membangun UUID; v_4426_untuk_mengatur UUID; v_4427_publik UUID; v_4428_konstruksi UUID; v_4429_modal UUID; v_4430_dana UUID; v_4431_bahan UUID; v_4432_investasi UUID; v_4433_hak_asasi_manusia UUID; v_4434_sebuah_benar UUID; v_4436_kondisi UUID; v_4437_insiden UUID; v_4438_menyolok UUID; v_4439_bagus_sekali UUID; v_4440_prefektur_okayama UUID; v_4442_bahan_mentah UUID; v_4443_menolak UUID; v_4444_keputusan UUID; v_4448_kritik UUID; v_4449_opsional UUID; v_4450_pemeriksaan UUID; v_4451_untuk_memeriksa UUID; v_4453_perjanjian UUID; v_4454_disalahkan UUID; v_4455_tanggung_jawab UUID; v_4456_untuk_menghilangkan UUID; v_4457_pertimbangan_kembali UUID; v_4458_untuk_meningkatkan UUID; v_4459_meningkatkan UUID; v_4460_peningkatan_mendadak UUID; v_4461_kenaikan_pajak UUID; v_4462_pajak UUID; v_4463_bebas_pajak UUID; v_4469_sebenarnya UUID; v_4470_internasional UUID; v_4471_samping UUID; v_4472_untuk_mengakui UUID; v_4473_konfirmasi UUID; v_4474_untuk_merencanakan UUID; v_4476_keadilan UUID; v_4477_aliran UUID; v_4478_rasa_tanggung_jawab UUID; v_4479_definisi UUID; v_4487_korban UUID; v_4850_kementerian UUID; v_5134_sashimi UUID; v_6457_untuk_mengkompensasi UUID; v_7481_na_kata_sifat UUID; v_7483_realisasi UUID; v_7486_penjelasan UUID; v_7595_kain UUID; v_7649_karakter UUID; v_7709_pengetahuan UUID; v_8712_untuk_bangun UUID; v_8752_kualifikasi UUID; v_8888_untuk_iri UUID; v_8889_iri UUID; v_8998_menjadi_iritasi UUID; v_9018_mengemudi_dalam_keadaan_mabuk UUID; v_9086_kehilangan_sesuatu UUID; v_9260_untuk_menerima_sesuatu UUID; v_9283_untuk_pergi UUID; v_9345_menjadi_kenyataan UUID; v_9347_memanen UUID; v_9457_memberi_makan UUID; v_9500_pembayaran UUID; v_9504_untuk_mengikat UUID; v_9509_pembayaran_kembali UUID;

BEGIN

  DELETE FROM items WHERE level = 21;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '矛', 'tombak', 21, 1, 'Apa yang mama lakukan? Sepertinya dia menghindari <radical>tombak</radical>. Apakah Anda melihat tombak itu melesat melewatinya saat dia melompat mundur untuk menghindarinya? Fiuh, hampir saja! Tidak hari ini, tombak. Tidak hari ini.')
    RETURNING id INTO r_148_tombak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '啇', 'mohawk', 21, 2, 'Ada sesuatu yang berdiri di atas kepala ini, itu sudah tua. Itu adalah <radikal>mohawk</radikal>. Gaya rambut apa lagi yang berdiri tegak? Mohawk juga termasuk gaya kuno, dalam hal gaya rambut, itulah sebabnya mohawk ini berdiri tegak di atas kepala orang tua.')
    RETURNING id INTO r_276_mohawk;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '斉', 'serentak', 21, 3, 'Anda ingin menulis beberapa tulisan (文), tetapi Anda juga ingin melihat bulan (月). Nah, mengapa tidak membuat kedua aktivitas tersebut <radikal>bersamaan</radikal>? Jika Anda menulis sambil melihat ke bulan, Anda mungkin akan mendapatkan puisi romantis yang keren atau semacamnya.')
    RETURNING id INTO r_277_serentak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '次', 'berikutnya', 21, 4, 'Seseorang bertanya-tanya ke mana harus pergi <radikal>selanjutnya</radikal>, jadi mereka melihat panah besar di atas kepalanya dan mulai bergerak ke arah yang ditunjuknya. Di mana mereka akan berakhir selanjutnya?')
    RETURNING id INTO r_278_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '番', 'nomor', 21, 5, 'Radikal ini sama dengan kanji, namun "angka dalam satu rangkaian" terlalu panjang. Mari kita persingkat menjadi <radical>angka</radikal>.')
    RETURNING id INTO r_280_nomor;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '半', 'setengah', 21, 6, 'Kata radikal ini sama dengan kanji, sehingga artinya <radikal>setengah</radikal>. Ini bahkan terlihat seperti beberapa baris terbelah dua. Lihat bagaimana bagian atas sebenarnya pecah menjadi dua juga? Itu sebabnya ini adalah setengah radikal.')
    RETURNING id INTO r_305_setengah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '責', 'menyalahkan', 21, 7, 'Kami dapat melihat tulang rusuk Anda, dan kerang yang buruklah yang harus <radikal>disalahkan</radikal>. Kerang-kerangan ini menyebabkan keracunan makanan yang parah, dan sekarang Anda sangat kurus hingga tulang rusuk Anda terlihat. Jangan salahkan diri Anda sendiri atas apa yang Anda makan – salahkan kerang yang melakukan hal ini pada Anda.')
    RETURNING id INTO r_321_menyalahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '刃', 'bilah', 21, 8, 'Jika kamu mengambil pedang (刀) dan melihat setetes (丶) darah, itu mungkin berarti kamu tidak sengaja memegang <radical>bilahnya</radical>. Bilahnya tajam, jadi berhati-hatilah saat memegangnya — Anda tidak ingin ada tetesan darah di mana-mana.')
    RETURNING id INTO r_393_bilah;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_148_tombak, 'Tombak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_276_mohawk, 'Mohawk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_277_serentak, 'Serentak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_278_berikutnya, 'Berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_280_nomor, 'Nomor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_305_setengah, 'Setengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_321_menyalahkan, 'Menyalahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_393_bilah, 'Bilah', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '建', 'membangun', 21, 9, '<radical>yoga</radical> <radical>brush</radical> ajaib Anda memungkinkan Anda <kanji>membangun</kanji> apa yang ada dalam pikiran Anda.', 'Anda <kanji>membangun</kanji> sebuah jembatan. Segera setelah itu, seseorang memanjat ke atasnya. Itu adalah <read>Ken</reading> (けん) sang samurai. Dia melambai ke arah Anda dan berkata, "Apakah Anda yang membuatnya? Keahliannya luar biasa."')
    RETURNING id INTO k_946_membangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '祈', 'berdoa', 21, 10, 'Jika Anda melihat <radikal>roh</radikal> dengan <radikal>kapak</radikal>, sebaiknya Anda <kanji>berdoa</kanji> untuk hidup Anda. Roh hanya memegang kapak jika mereka berpikir untuk membunuh, jadi berdoalah sekuat tenaga untuk mencoba menyelamatkan Anda.', 'Anda <kanji>berdoa</kanji> dan berdoa dan berdoa dan tidak ada yang terjadi. Anda berhenti berdoa dan berani membuka mata. Ada kunci <reading></reading> (き) di depan Anda. Ambil kuncinya dan pegang di depan Anda dan berdoalah agar roh mengambilnya. Beberapa saat kemudian, kunci dan rohnya hilang.')
    RETURNING id INTO k_1036_berdoa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '敵', 'musuh', 21, 11, 'Melihat <radical>mohawk</radical> di <radical>musim dingin</radical> berarti <kanji>musuh</kanji> ada di dekatnya. Anda berasal dari suku gimbal dan suku mohawk adalah musuh Anda. Anda berada jauh di tengah pertempuran dan musim dingin telah tiba. Sekaranglah waktunya untuk menghabisi musuh.', 'Anda adalah seorang <reading>teknisi</reading> (てき), jadi Anda memiliki keunggulan dibandingkan <kanji>musuh</kanji> Anda. Anda juga dipersenjatai dengan kacamata penglihatan malam dan perlengkapan teknologi keren lainnya. Menjadi seorang teknisi tentu mempunyai keuntungan tersendiri.')
    RETURNING id INTO k_1123_musuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '済', 'berakhir', 21, 12, 'Anda melihat <radikal>tsunami</radikal> yang <radikal>bersamaan</radikal> (dengan tsunami lain, saya berasumsi) dan Anda tahu bahwa dunia akan <kanji>berakhir</kanji>.', 'Saat dunia akan <kanji>berakhir</kanji>, <reading>cy</reading>borg (さい) Anda muncul dan memblokirnya dengan tubuh cyborgnya!')
    RETURNING id INTO k_1124_berakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '委', 'komite', 21, 13, '<radikal>gandum</radikal> <radikal>wanita</radikal> adalah seorang wanita yang berbicara tentang biji-bijian dengan wanita lain di <kanji>komite</kanji>. Bersama-sama mereka dikenal sebagai Komite Perempuan Biji-bijian. Apa yang dibahas panitia ini, Anda bertanya-tanya.', 'Ya, mereka membentuk <kanji>komite</kanji> ini karena <reading>ea</reading>gles (い) telah memakan semua biji-bijian. Para wanita bertemu sebagai sebuah komite dan mencoba mencari cara untuk menghentikan elang-elang sial ini memakan semua biji-bijian dan tidak menyisakan satu pun untuk manusia.')
    RETURNING id INTO k_1125_komite;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '挙', 'mengangkat', 21, 14, 'Jika ada <radical>rumput</radical> di <radical>tanah</radical> dan <radical>sirip</radical> di <radical>tangan</radical> Anda, Anda perlu <kanji>mengangkat</kanji> ke atas. Anda sedang menjalani ritual nelayan yang hanya bisa dilakukan di lahan berumput. Anda mengambil sirip ikan dari tahun sebelumnya, dan mengangkatnya ke langit untuk memastikan panen ikan yang baik.', 'Namun ritual ini hanya berlaku di satu bagian dunia saja. Itu mutlak harus dilakukan di Little <reading>Kyo</reading>to (きょ). Little Kyoto yang sejajar dengan matahari, langit, dan semua sampah astrologi menjadikannya tempat terbaik bagi Anda untuk <kanji>mengangkat</kanji> sirip ikan ke udara.')
    RETURNING id INTO k_1126_mengangkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '判', 'hakim', 21, 15, 'Dengan ini saya memotong aset Anda menjadi <radical>setengah</radical> dengan <radical>pisau</radical>, kata <kanji>hakim</kanji>. Pada proses perceraian seseorang. Ah, trik hakim tertua di buku ini.', '<kanji>juri</kanji> ini adalah <reading>Han</reading> (はん) Solo, jadi Anda tahu dia tidak akan mundur.')
    RETURNING id INTO k_1127_hakim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '制', 'kontrol', 21, 16, '<radical>Sapi</radical>, yang hanya menggunakan <radical>handuk</radical> dan <radical>pisau</radical>, telah mengambil <kanji>kendali</kanji> dunia. <kanji>sistem</kanji> kontrol mereka brutal — balasan atas cara kita sebagai manusia memperlakukan mereka, menurutku.', 'Saatnya mengambil kembali <kanji>kendali</kanji> dari para sapi! Tarik <reading>sa</reading>ber (せい) Anda dan lawan!')
    RETURNING id INTO k_1128_kontrol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '務', 'tugas', 21, 17, 'Anda menggunakan <radical>tombak</radical> khusus di <radical>musim dingin</radical> untuk memberi diri Anda <radical>kekuatan</radical> untuk melakukan semua <kanji>tugas</kanji> Anda.', '<kanji>Tugas</kanji> Anda adalah menombak sapi ini. "<reading>Moo</reading> (む)!" ia berteriak padamu dan lari. Tapi kamu perlu membuat makan malam... itu tugasmu, jadi sebaiknya kamu mengejar sapi itu dan menghentikan mooingnya.')
    RETURNING id INTO k_1129_tugas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '査', 'memeriksa', 21, 18, 'Jika <radical>pohon</radical> tumbuh dari <radical>top hat</radical> Anda perlu <kanji>memeriksa</kanji> untuk mencari tahu mengapa dan bagaimana hal ini terjadi. Anda mungkin harus <kanji>menyelidiki</kanji> area tersebut juga. Maksudku, bagaimana pohon bisa tumbuh dari topi? Tampaknya mencurigakan.', 'Saat Anda <kanji>memeriksa</kanji> pohon, Anda mengambil <reading>gergaji</reading>(さ) dan mulai memotongnya. Anda perlu menyelidiki bagaimana pohon dan topi atas terhubung, dan gergaji adalah satu-satunya cara untuk melakukannya dengan benar.')
    RETURNING id INTO k_1130_memeriksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '総', 'utuh', 21, 19, 'Dengan mengeluarkan <radical>benang</radikal> Anda, Anda menjahit <radikal>hati</radikal> publik</radikal> untuk menjadikannya <kanji>utuh</kanji> kembali.', 'Saat hati mereka <kanji>utuh</kanji>, <reading>sou</reading>l (そう) publik menjadi satu!')
    RETURNING id INTO k_1131_utuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '設', 'mendirikan', 21, 20, 'Jika Anda <radical>mengatakan</radical> ide <radical>senjata</radical> baru dengan lantang, maka ide tersebut akan <kanji>ditetapkan</kanji>segera.', 'Senjata harus <kanji>dibuat</kanji>di <reading>set</reading> (せつ). Jadi, Anda harus membuat yang lain yang sesuai. Tolong buat mereka kompak.')
    RETURNING id INTO k_1132_mendirikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '資', 'sumber-daya', 21, 21, '<radical>berikutnya</radikal> <radikal>kerang</radikal> akan menjadi milikmu, namun kerang ini akan menjadi milikku. Ini adalah <kanji>sumber daya</kanji> yang harus kami bagikan dan distribusikan.', 'Anda menyimpan semua <kanji>sumber daya</kanji> sehingga Anda dapat membeli <reading>shee</reading>p (し). Anda membawa sekarung besar sumber daya kerang Anda ke pasar dan akhirnya memilih domba yang sudah Anda incar selama berbulan-bulan.')
    RETURNING id INTO k_1133_sumber_daya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '権', 'hak', 21, 22, 'Di bawah <radical>pohon</radical>, <radical>panah</radical> yang patah menonjol dari <radical>kalkun</radical>. Mereka memperjuangkan <kanji>hak</kanji> sesama kalkun, dan terluka parah dalam prosesnya.', '"Kamu punya <kanji>hak</kanji>, jadi aku tidak akan menembakmu seperti kalkun ini," kata suara <read>Ken</reading> (けん) sang samurai, dari atas kamu di atas pohon.')
    RETURNING id INTO k_1134_hak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '件', 'urusan', 21, 23, '<radikal>pemimpin</radikal> suku <radikal>sapi</radikal> terlalu penting untuk menangani <kanji>masalah</kanji> kecil dan <kanji>urusan</kanji> yang sepele.', 'Semua <kanji>urusan</kanji>-nya diurus oleh <reading>Ken</reading> (けん) sang samurai, yang dia pekerjakan sebagai bawahannya.')
    RETURNING id INTO k_1135_urusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '派', 'sekte', 21, 24, '<radikal>tsunami</radikal> akan datang ke <radikal>tebing</radikal> yang terbuat dari <radikal>tahu</radikal>, tetapi ada <kanji>sekte</kanji> khusus yang melindungi tebing tahu ini.', 'Semua anggota <kanji>sekte</kanji> berdiri di atas tebing, tangan mereka terangkat, dan tepat saat tsunami akan menghantam mereka, mereka berteriak, "<reading>Hah</reading> (は)!" dan itu ditolak! Tsunami tenggelam dan menggelinding kembali ke laut — tebing tahu aman!')
    RETURNING id INTO k_1136_sekte;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '岡', 'bukit', 21, 25, 'Ada kejadian yang terjadi di dalam <radical>kepala</radikal> Anda. Bentuknya berupa sepasang <radical>tanduk</radikal> di <radikal>tanah</radikal> di atas <radikal>gunung</radikal>. Tidak. Ini bukan hanya sepasang tanduk. Itu banyak. Saking banyaknya, mereka membuat <kanji>bukit</kanji> raksasa di puncak gunung yang sudah cukup tinggi.', 'Bagaimana bisa berdiri di atas bukit tanduk di atas gunung ini bisa menyentuh langit? Eh. Tadinya <read>oka</reading>y (おか), tapi itu saja.')
    RETURNING id INTO k_1137_bukit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '素', 'elemen', 21, 26, 'Jika Anda melihat lebih dekat pada <radical>tulang rusuk</radikal> Anda, Anda akan melihat sesuatu yang tampak seperti jutaan <radikal>benang</radikal> yang sangat kecil. Tapi itu bukanlah benang — itu adalah <kanji>elemen</kanji> penting dalam kehidupan yang kita kenal.', '<kanji>elemen</kanji> penting dalam kehidupan harus dijaga kebersihannya sama seperti hal lainnya, jadi pastikan untuk mencucinya dengan <read>so</reading>ap (そ) setiap hari. Ini ternyata cukup sulit karena elemennya berbentuk seperti benang mikroskopis kecil, tetapi Anda harus melakukan yang terbaik.')
    RETURNING id INTO k_1138_elemen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '断', 'memotong', 21, 27, '<radical>singa</radical> yang memanen <radical>beras</radical> menggunakan <radical>kapak</radical> untuk <kanji>memotong</kanji> bagian atas batang. Singa sedang berkeliaran di sawah menggunakan kapaknya untuk memanen padi. Caranya dengan memotong bagian batang padi yang dibutuhkannya.', 'Singa akan <kanji>memotong</kanji> batang padi sampai <reading>fajar</reading> (だん). Namun saat fajar menyingsing, ia akan lari dan bersembunyi di bawah naungan pepohonan, jauh dari persawahan.')
    RETURNING id INTO k_1139_memotong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '批', 'kritik', 21, 28, 'Jika Anda menggunakan <radical>jari</radical> untuk menunjuk ketika Anda <radical>membandingkan</radical> sesuatu, Anda sebenarnya hanya melontarkan <kanji>kritik</kanji>. Anda tidak perlu menuding ketika Anda hanya membandingkan sesuatu. Jika Anda menunjuk, memilih, dan bersikap jahat, itu adalah kritik.', 'Jika Anda kesulitan untuk tidak memberikan <kanji>kritik</kanji>, pikirkan saja bagaimana reaksi Anda jika seseorang mengkritik Anda. Anda akan merasakan rasa malu di seluruh tubuh Anda. Panas itu akan menutupi seluruh wajahmu.')
    RETURNING id INTO k_1141_kritik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '任', 'tugas', 21, 29, 'Baik <radikal>pemimpin</radikal> dan <radikal>raja</radikal> memiliki <kanji>kewajiban</kanji> untuk melindungi rakyatnya. Pemimpin yang baik selalu melindungi pengikutnya, dan raja yang baik selalu melindungi rakyatnya. Ini adalah tugas mereka.', 'Anda adalah <reading>nin</reading>kompop (にん) desa, namun raja dan pemimpin masih memiliki <kanji>tugas</kanji> untuk melindungi Anda. Bahkan orang bodoh pun penting bagi raja dan pemimpin dunia.')
    RETURNING id INTO k_1142_tugas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '検', 'meneliti', 21, 30, 'Anda melihat <radical>pohon</radikal> dengan <radical>cumi-cumi</radikal> di atasnya, jadi Anda lebih dekat untuk <kanji>memeriksa</kanji> itu.', 'Anda mendekatkan wajah Anda ke dalam, sangat dekat untuk <kanji>memeriksa</kanji> cumi-cumi kecil di pohon ini ketika <reading>Ken</reading> (けん) sang samurai muncul di belakang Anda. "Ini dia, cumi-cumi! Terima kasih warga, aku sudah mencari teman kecilku ke mana-mana."')
    RETURNING id INTO k_1143_meneliti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '条', 'ayat', 21, 31, '<radical>musim dingin</radikal> <radikal>pohon</radikal> hanyalah pohon musim dingin karena adanya <kanji>klausa</kanji> dalam kontrak pohonnya.', '<kanji>Klausul</kanji> ini ditulis ke dalam kontrak semua pohon oleh <reading>Joe</reading> (じょう), buruh tani besar.')
    RETURNING id INTO k_1145_ayat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '責', 'menyalahkan', 21, 32, 'Kata radikal <radikal>menyalahkan</radikal> dan kanji <kanji>menyalahkan</kanji> adalah sama, karena Anda masih menyalahkan kerang-kerangan buruk itu karena membuat Anda keracunan makanan dan membuat tulang rusuk Anda terlihat. Sebenarnya, Anda sangat menyalahkan mereka sehingga Anda sekarang secara resmi meminta mereka untuk mengambil <kanji>tanggung jawab</kanji> juga.', 'Satu hal yang tidak bisa <kanji>disalahkan</kanji> karena kerang adalah membuatmu sangat <read>seksi</reading> (せき). Bahkan dalam kondisi Anda yang kurus dan keracunan makanan, Anda tetaplah salah satu orang paling seksi yang pernah ada.')
    RETURNING id INTO k_1146_menyalahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '省', 'melestarikan', 21, 33, 'Anda hanya memiliki <radical>beberapa</radical> <radical>mata</radical> sehingga Anda perlu <kanji>melestarikan</kanji> yang tersisa.', 'Anda mencoba untuk <kanji>menghemat</kanji> mata Anda, ketika <reading>Shou</reading>gun (しょう) lewat. Dia berhenti, melihat Anda, dan meminta Anda memberinya sisa mata Anda! Tapi Pak, saya menyimpan sedikit yang tersisa!')
    RETURNING id INTO k_1147_melestarikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '増', 'meningkatkan', 21, 34, '<radical>kotoran</radikal> <radikal>Masker</radikal> adalah masker yang bila dipakai akan <kanji>meningkatkan</kanji> jumlah kotoran secara signifikan.', 'Gunakan masker kotoran untuk <kanji>meningkatkan</kanji> kotoran di sekitar Anda. <reading>zo</reading>mbie (ぞう) mencoba melarikan diri, jadi kamu terus saja menambah tanah di atasnya agar mereka tidak bisa keluar.')
    RETURNING id INTO k_1148_meningkatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '税', 'pajak', 21, 35, 'Beberapa <radical>gandum</radical> Anda baru saja diambil oleh <radical>penjaga</radical>. Ini adalah <kanji>pajak</kanji> yang Anda bayarkan untuk tinggal di kota ini. Dahulu, gandum digunakan sebagai mata uang, jadi masuk akal jika para penjaga berkeliling memungut pajak gandum.', 'Anda harus membayar <kanji>pajak</kanji> ini, karena jika tidak, penjaga akan menebas Anda dengan pedang khas Jermannya, <reading>zei</reading>ber (ぜい). "Apakah kamu tidak mendengar tong aku zei? Bayar pajakmu atau aku akan zlei kamu melihat zeiberku!" dia berteriak.')
    RETURNING id INTO k_1149_pajak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '際', 'kesempatan', 21, 36, '<radical>Gedung</radical> mengadakan <radical>festival</radical> pada <kanji>acara</kanji> khusus.', '<kanji>kesempatan</kanji> kali ini adalah untuk merayakan <reading>cy</reading>borg (さい) Anda yang luar biasa. Sudah saatnya Anda melakukan sesuatu yang baik untuk itu.')
    RETURNING id INTO k_1151_kesempatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '認', 'mengenali', 21, 37, 'Apa pun yang <radikal>katakan</radikal> kepada Anda akan diukir oleh <radikal>pisau</radikal> ke dalam <radikal>hati</radikal> Anda. Kedengarannya kejam, tapi ini adalah cara untuk membuat Anda <kanji>mengenali</kanji> kekuatan mereka.', 'Mengukir kata-kata mereka di hati Anda membuat Anda <kanji>mengakui</kanji> otoritas banyak orang. Namun satu-satunya yang benar-benar dapat Anda <kanji>akui</kanji> adalah <reading>Nin</reading>tendo (にん).')
    RETURNING id INTO k_1152_mengenali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '義', 'kebenaran', 21, 38, 'Kanji dan radikalnya persis sama. Itu berarti mereka juga berbagi makna. <radical>Kebenaran</radikal> sama dengan <kanji>kebenaran</kanji>, bukan?', '<kanji>kebenaran</kanji> yang luar biasa! Setidaknya menurut raja yang menganggap dirinya benar. Versi kebenarannya adalah mengirim siapa pun yang tidak setuju dengannya ke <reading>gui</reading>llotine (ぎ).')
    RETURNING id INTO k_1154_kebenaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '羨', 'iri', 21, 39, '<radical>Domba</radical> selalu melihat hewan <radical>berikutnya</radical>, penuh dengan <kanji>iri</kanji> dan <kanji>cemburu</kanji>.', 'Alasan domba merasa <kanji>iri</kanji> dan <kanji>cemburu</kanji> adalah karena makhluk berikutnya adalah <reading>cen</reading>taur (せん)! Siapa yang tidak iri pada makhluk semulia centaur?')
    RETURNING id INTO k_8880_iri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貰', 'menerima', 21, 40, 'Semua <radical>kerang</radikal> di <radical>dunia</radikal> adalah milik Anda untuk <kanji>diterima</kanji>.', 'Mengapa Anda ingin <kanji>menerima</kanji> semua kerang ini? Karena itulah <reading>mora</reading>l (もら) yang harus dilakukan. Oh yang baik hati, raja moral dari semua kerang di dunia, terimalah kami.')
    RETURNING id INTO k_9259_menerima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '叶', 'menjadi-kenyataan', 21, 41, 'Di samping <radical>mulut</radikal> Anda memegang <radikal>salib</radikal> sambil berdoa agar semua keinginan Anda <kanji>terwujud</kanji>. Mungkin kekuatan ilahi akan <kanji>mengabulkan</kanji> apa yang Anda inginkan?', 'Dan jika Anda benar-benar ingin keinginan Anda <kanji>terkabul</kanji>, pastikan untuk menuliskannya di <reading>kana</reading>!')
    RETURNING id INTO k_9343_menjadi_kenyataan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '餌', 'memberi-makan', 21, 42, 'Seekor hewan mencoba <radical>memakan</radical> <radical>telinga</radical> Anda karena ia salah mengira itu sebagai <kanji>makanannya</kanji>. Mungkin sebaiknya Anda tidak mendekatkan telinga Anda pada <kanji>makanan hewani</kanji> — tidak ada yang perlu didengarkan selain suara kunyahan yang basah dan basah.', 'Anda sedang berjalan melewati salah satu kandang hewan dengan beberapa <kanji>makanan</kanji> ketika Anda mendengar, "<reading>Ay</reading>, <reading>Tuan</reading> (えさ)! Ay, Tuan! Tolong bawakan <kanji>makanan hewan</kanji> itu ke sini." Apakah seekor binatang baru saja… berbicara dengan Anda?')
    RETURNING id INTO k_9451_memberi_makan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_946_membangun, 'Membangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_946_membangun, 'Membangun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1036_berdoa, 'Berdoa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1123_musuh, 'Musuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1124_berakhir, 'Berakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1125_komite, 'Komite', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1126_mengangkat, 'Mengangkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1127_hakim, 'Hakim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1128_kontrol, 'Kontrol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1128_kontrol, 'Sistem', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1129_tugas, 'Tugas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1129_tugas, 'Tugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1130_memeriksa, 'Memeriksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1130_memeriksa, 'Menyelidiki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1131_utuh, 'Utuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1132_mendirikan, 'Mendirikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1133_sumber_daya, 'Sumber daya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1134_hak, 'Hak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1135_urusan, 'Urusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1135_urusan, 'Perselingkuhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1136_sekte, 'Sekte', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1136_sekte, 'Fraksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1137_bukit, 'Bukit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1138_elemen, 'Elemen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1139_memotong, 'Memotong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1141_kritik, 'Kritik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1142_tugas, 'Tugas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1143_meneliti, 'Meneliti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1145_ayat, 'Ayat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1146_menyalahkan, 'Menyalahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1146_menyalahkan, 'Tanggung jawab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1147_melestarikan, 'Melestarikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1148_meningkatkan, 'Meningkatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1149_pajak, 'Pajak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1151_kesempatan, 'Kesempatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1152_mengenali, 'Mengenali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1152_mengenali, 'Mengakui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1154_kebenaran, 'Kebenaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8880_iri, 'Iri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8880_iri, 'Kecemburuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9259_menerima, 'Menerima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9343_menjadi_kenyataan, 'Menjadi kenyataan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9343_menjadi_kenyataan, 'Menganugerahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9451_memberi_makan, 'Memberi makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9451_memberi_makan, 'Makanan Hewani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9451_memberi_makan, 'Umpan', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_946_membangun, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_946_membangun, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1036_berdoa, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1036_berdoa, 'いの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1123_musuh, 'てき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1123_musuh, 'かな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1123_musuh, 'かたき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1124_berakhir, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1124_berakhir, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1125_komite, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1125_komite, 'ゆだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1126_mengangkat, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1126_mengangkat, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1127_hakim, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1127_hakim, 'ばん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1128_kontrol, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1129_tugas, 'む', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1129_tugas, 'つと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1130_memeriksa, 'さ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1131_utuh, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1132_mendirikan, 'せつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1132_mendirikan, 'もう', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1133_sumber_daya, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1134_hak, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1135_urusan, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1135_urusan, 'くだり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1135_urusan, 'くだん', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1136_sekte, 'は', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1137_bukit, 'おか', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1137_bukit, 'こう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1138_elemen, 'そ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1138_elemen, 'す', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1138_elemen, 'もと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1139_memotong, 'だん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1139_memotong, 'ことわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1139_memotong, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1141_kritik, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1142_tugas, 'にん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1142_tugas, 'まか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1143_meneliti, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1145_ayat, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1146_menyalahkan, 'せき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1146_menyalahkan, 'せ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1147_melestarikan, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1147_melestarikan, 'せい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1147_melestarikan, 'はぶ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1148_meningkatkan, 'ぞう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1148_meningkatkan, 'ふ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1148_meningkatkan, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1149_pajak, 'ぜい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1151_kesempatan, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1151_kesempatan, 'きわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1152_mengenali, 'にん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1152_mengenali, 'みと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1154_kebenaran, 'ぎ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8880_iri, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8880_iri, 'うらや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9259_menerima, 'もら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9259_menerima, 'せい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9343_menjadi_kenyataan, 'かな', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9451_memberi_makan, 'えさ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9451_memberi_makan, 'え', 'kunyomi', false, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外れ', 'nona', 21, 43, '外れる adalah "lepas" atau "lepas". Dan inilah bentuk kata bendanya — <vocabulary>a miss</vocabulary>, alias sesuatu yang <vocabulary>melenceng</vocabulary>. Apapun itu, itu sama sekali melenceng dari tujuan awal atau sasaran yang dituju.

Kata ini mengacu pada sesuatu yang berada di luar apa yang diharapkan, penting, atau benar. Seperti sesuatu yang tidak sesuai harapan atau ekspektasi Anda — tiket lotre yang kalah atau pembelian yang mengecewakan. Kata ini juga bisa menggambarkan suatu tempat di <vocabulary>pinggiran</vocabulary> atau <vocabulary>pinggiran</vocabulary> — karena Anda "melenceng" dari suatu tempat yang lebih sentral.', 'Anda menembak, tapi <vocabulary>gagal</vocabulary>. <vocabulary>melenceng dari sasaran</vocabulary>. Lebih baik kenakan pakaian <reading>haz</reading>mat (はず) Anda karena Anda menabrak tong limbah beracun daripada mengenai sasaran. Pakai baju hazmat kalian, semuanya!', 'Nona, Meleset dari sasaran, Keliling, Pinggiran')
    RETURNING id INTO v_2633_nona;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '世の中', 'masyarakat', 21, 44, '<kanji>tengah</kanji> dari <kanji>dunia</kanji> adalah <vocabulary>masyarakat</vocabulary>. Itu yang menyatukan segalanya, bagi kita manusia. Anda juga bisa menyebutnya <vocabulary>dunia</vocabulary>.', 'Bacaannya adalah bacaan kun''yomi. Mengapa? Karena kata ini sebenarnya adalah dua kata terpisah yang dihubungkan menjadi satu kata yang lebih besar. Anda mengetahui bacaan kun''yomi dari latihan kosakata di level sebelumnya.', 'Masyarakat, Dunia')
    RETURNING id INTO v_3442_masyarakat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感心', 'kekaguman', 21, 45, '<kanji>Perasaan</kanji> Anda ada di <kanji>hati</kanji> Anda. Ketika perasaan Anda ada di dalam hati Anda, itu adalah perasaan yang murni. Anda bisa berbahagia untuk orang lain dan merasakan <vocabulary>kekaguman</vocabulary> atas kesuksesan mereka. Ini adalah perasaan yang luar biasa untuk ada di hati Anda.

感心 menyatakan bahwa Anda <vocabulary>terkesan</vocabulary> oleh usaha, keterampilan, atau perilaku baik seseorang. Anda akan mendengarnya ketika seseorang melakukan sesuatu yang <vocabulary>patut dipuji</vocabulary> dan Anda benar-benar mengaguminya, seperti 感心した (Saya terkesan).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kekaguman, Menjadi Terkesan, Terpuji')
    RETURNING id INTO v_3588_kekaguman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祈る', 'untuk-berdoa', 21, 46, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>berdoa</kanji> dan kata kerja ini bersifat transitif, sehingga artinya <vocabulary>berdoa</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: "Kamu harus berdoa untuk hadiah Natal jika kamu ingin Santa membawakanmu beberapa!" "<reading>Saya tahu</reading> (いの), saya tahu," jawab Anda sambil mulai berdoa meminta hadiah. Anda harus mengatakan ini dengan lantang untuk mengingatnya dengan lebih baik.', 'Untuk Berdoa')
    RETURNING id INTO v_4122_untuk_berdoa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祈願', 'doa', 21, 47, 'Anda <kanji>berdoa</kanji> dan membuat <kanji>permintaan</kanji>, sebagai <vocabulary>doa</vocabulary> kepada beberapa dewa di kuil atau kuil. 

Hal ini biasanya mengacu pada membuat permohonan atau meminta bantuan dari dewa, seperti kemakmuran, kesehatan yang baik, atau memenangkan pertandingan olahraga penting.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Doa, Sebuah Doa')
    RETURNING id INTO v_4124_doa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '産む', 'untuk-melahirkan', 21, 48, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>melahirkan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>melahirkan</vocabulary>.

Anda juga mengetahui 産む lainnya (生む).産む ini lebih ilmiah, tetapi keduanya baik untuk diketahui.', 'Anda tahu kata "melahirkan" lainnya (生む). Coba tebak!? Mereka berbagi bacaan!', 'Untuk Melahirkan')
    RETURNING id INTO v_4309_untuk_melahirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '口笛', 'siulan', 21, 49, '<kanji>mulut</kanji> <kanji>seruling</kanji>... Seruling normal yang Anda gunakan untuk meniupkan udara untuk menghasilkan suara. Bagaimana cara meniupkan udara melalui mulut hingga menimbulkan suara? Dengan <vocabulary>bersiul</vocabulary>.', 'Bacaannya adalah bacaan kun''yomi yang disatukan. Terima kasih telah menjadi bagian tubuh, yang cenderung menyebabkan hal ini terjadi. Jadi, kamu sudah menggabungkan 口 (くち) dan 笛 (ふえ), meskipun ふえ berubah menjadi ぶえ, mungkin karena kamu tidak bisa bersiul dengan benar? Buuuweee. Buwwweee.', 'Siulan')
    RETURNING id INTO v_4360_siulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '参加する', 'untuk-berpartisipasi', 21, 50, 'Anda tahu apa itu <kanji>partisipasi</kanji>? Nah, jadikan itu kata kerja dengan する dan Anda akan memiliki <vocabulary>untuk berpartisipasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Juga akan membantu untuk mengetahui bacaan 参加.', 'Untuk Berpartisipasi')
    RETURNING id INTO v_4381_untuk_berpartisipasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '参加者', 'peserta', 21, 51, 'Anda tahu bahwa 参加 adalah <kanji>partisipasi</kanji>, jadi <kanji>seseorang</kanji> yang melakukan partisipasi adalah <vocabulary>peserta</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peserta')
    RETURNING id INTO v_4382_peserta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '警察官', 'petugas-polisi', 21, 52, '<kanji>polisi</kanji> (警察) <kanji>pemerintah</kanji> penuh dengan <vocabulary>petugas polisi</vocabulary>. Ini adalah cara formal untuk mengatakan "petugas polisi". Ini mirip dengan 警官, tetapi memiliki nuansa yang sedikit lebih resmi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Petugas Polisi, Polisi, Polisi wanita')
    RETURNING id INTO v_4383_petugas_polisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乱す', 'untuk-menaruh-kekacauan', 21, 53, 'Anda tahu bagaimana 乱れる berarti "berada dalam kekacauan"? Nah, sekarang kamulah yang menyebabkan semua ini. Jadi, dengan melakukan ini Anda akan <vocabulary>membuat kekacauan</vocabulary>, <vocabulary>membuat tidak teratur</vocabulary>, atau <vocabulary>mengganggu</vocabulary> apa pun itu. Bayangkan saja semua orang yang akan mencoba <reading>menuntut</reading> (す) Anda atas tindakan Anda.', 'Bacaannya sama dengan 乱れる, jadi semoga kalian sudah mengetahuinya.', 'Untuk Menaruh Kekacauan, Untuk Membuang Rusak, Untuk Mengganggu')
    RETURNING id INTO v_4384_untuk_menaruh_kekacauan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宇宙人', 'asing', 21, 54, 'Anda tahu apa itu <kanji>ruang</kanji>? Ya, <kanji>orang</kanji> dari luar angkasa adalah <vocabulary>alien</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui cara membaca kata 宇宙 sendiri juga akan membantu.', 'Asing')
    RETURNING id INTO v_4385_asing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宇宙船', 'pesawat-luar-angkasa', 21, 55, 'Anda tahu bagaimana 宇宙 adalah <kanji>luar angkasa</kanji> dan bagaimana 船 adalah <kanji>kapal</kanji>, bukan? Nah, gabungkan semuanya dan Anda akan mendapatkan sebuah kapal luar angkasa (lebih dikenal sebagai <vocabulary>pesawat luar angkasa</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui kata 宇宙 sebelumnya juga akan membantu.', 'Pesawat luar angkasa, Pesawat Luar Angkasa, kapal luar angkasa, Benda terbang aneh, Pesawat luar angkasa, Piring Terbang')
    RETURNING id INTO v_4386_pesawat_luar_angkasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '説得する', 'untuk-membujuk', 21, 56, 'Anda tahu bahwa 説得 adalah <kanji>persuasi</kanji>, jadi apa versi kata kerjanya? <vocabulary>Untuk membujuk</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui pembacaan kata 説得 juga akan sangat membantu.', 'Untuk Membujuk, Untuk Meyakinkan')
    RETURNING id INTO v_4388_untuk_membujuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '混乱する', 'menjadi-bingung', 21, 57, 'Jika 混乱 adalah <kanji>kebingungan</kanji> maka menjadikannya menjadi kata kerja akan menyebabkan <vocabulary>menjadi bingung</vocabulary>.', 'Bacaannya sama dengan 混乱 jadi tidak ada alasan <vocabulary>bingung</vocabulary> bukan?', 'Menjadi Bingung, Menjadi Dalam Gangguan')
    RETURNING id INTO v_4391_menjadi_bingung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '減らす', 'untuk-mengurangi-sesuatu', 21, 58, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengurangi</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>untuk mengurangi sesuatu</vocabulary>. Anda dapat membedakan ini dari 減る karena dengan yang ini, Andalah yang akan melakukan penurunan. <reading>tergesa-gesa</reading> (らす) dalam mengurangi sesuatu memenuhi pembuluh darahmu.', 'Bacaannya sama dengan 減る, jadi kalau kalian tahu bacaan itu sebaiknya tahu yang ini.', 'Untuk Mengurangi Sesuatu, Untuk Mengurangi, Untuk Mengurangi, Untuk Mengurangi Sesuatu')
    RETURNING id INTO v_4392_untuk_mengurangi_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '続ける', 'untuk-melanjutkan-sesuatu', 21, 59, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>melanjutkan</kanji>, jadi 続ける berarti <vocabulary>melanjutkan sesuatu</vocabulary>. Itu kata kerja transitif, jadi butuh objek langsung. Anda dapat mengerjakan pekerjaan Anda, misalnya, dan Anda harus mempelajari pelajaran WaniKani Anda dengan kecepatan yang sesuai untuk Anda!

Meskipun memiliki kanji 続 yang sama, kata ini sedikit berbeda dari 続く, yang digunakan ketika sesuatu terus berlanjut (seperti hujan, atau tren). Mungkin sulit untuk mengingat perbedaannya, jadi inilah mnemonik untuk membantu Anda dalam 続ける:

Anda hanya <reading>peduli</reading> (ける) tentang hal-hal yang dapat Anda lanjutkan melalui tindakan Anda sendiri. Untuk hal-hal lain yang terus berlanjut, kamu seperti, Itu <reading>keren</reading>'' (く), tapi kamu tidak begitu tertarik.', 'Bacaannya sama dengan 続く, jadi pastikan mengetahuinya agar bisa mengetahuinya.', 'Untuk Melanjutkan Sesuatu, Untuk Terus Berlanjut, Untuk Melanjutkan')
    RETURNING id INTO v_4393_untuk_melanjutkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '固有名詞', 'kata-benda-yang-tepat', 21, 60, '<kanji>kata benda</kanji> (名詞) yang <kanji>memiliki</kanji> <kanji>kekerasan</kanji> adalah kata benda yang tidak dapat diubah. Itu adalah kata benda yang besar, sangat besar sehingga Anda harus menggunakan huruf kapital untuk kata benda semacam ini dalam bahasa Inggris. Ini adalah <vocabulary>kata benda</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui kata 名詞 juga akan membantu.', 'Kata Benda yang Tepat')
    RETURNING id INTO v_4394_kata_benda_yang_tepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '他動詞', 'kata-kerja-transitif', 21, 61, 'Ingat bagaimana 動詞 berarti "kata kerja"? Ketika kata kerjanya dilakukan pada suatu hal <kanji>lainnya</kanji>, itu adalah <vocabulary>kata kerja transitif</vocabulary>.

Artinya dibutuhkan objek langsung. Kata kerja seperti 食べる, 使う, dan 上げる merupakan kata kerja transitif karena memerlukan objek langsung, benda "lain", untuk menerima tindakannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kata kerja transitif')
    RETURNING id INTO v_4396_kata_kerja_transitif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暴力団', 'sindikat-kejahatan', 21, 62, 'Sebuah <kanji>kelompok</kanji> yang memiliki <kanji>kekuatan</kanji> menggunakan <kanji>kekerasan</kanji>? Kedengarannya seperti <vocabulary>sindikat kejahatan</vocabulary> bagi saya, mungkin <vocabulary>Yakuza</vocabulary> atau <vocabulary>organisasi gangster</vocabulary> lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sindikat Kejahatan, Yakuza, Organisasi Gangster')
    RETURNING id INTO v_4397_sindikat_kejahatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '容疑者', 'mengira', 21, 63, 'Saya mempunyai <kanji>kecurigaan</kanji> (容疑) tentang <kanji>seseorang</kanji>. Seseorang itu adalah <vocabulary>tersangka</vocabulary> utama saya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika bisa membaca 容疑 terlebih dahulu.', 'Mengira')
    RETURNING id INTO v_4398_mengira;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暴走族', 'geng-pengendara-sepeda-motor', 21, 64, '<kanji>suku</kanji> yang <kanji>berjalan liar</kanji> (暴走) adalah apa yang orang Jepang sebut sebagai <vocabulary>geng pengendara motor</vocabulary>. Bayangkan saja mereka berkeliling dengan sepeda, berlari liar. Mereka juga dekat, seperti keluarga. Bagus sekali!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Geng Pengendara Sepeda Motor, Geng motor, Biker Jepang, Bosozoku')
    RETURNING id INTO v_4399_geng_pengendara_sepeda_motor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'いい加減にしろ', 'hentikan', 21, 65, 'Anda tahu bagaimana いい加減 tidak berdasar atau tidak ada gunanya? Karena jika Anda <kanji>menambah</kanji> lalu <kanji>mengurangi</kanji> Anda belum melakukan apa-apa? Ini seperti mengatakan "lakukan hal yang tidak ada gunanya!" Oke, itu tidak masuk akal. Ini adalah frasa yang artinya mirip dengan <vocabulary>hentikan itu</vocabulary> atau <vocabulary>potong BS</vocabulary>!', 'Bacaannya sama dengan いい加減 yang (mudah-mudahan) kamu pelajari tadi.', 'Hentikan, Potong BS, Itu sudah cukup')
    RETURNING id INTO v_4401_hentikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手続き', 'prosedur', 21, 66, 'Seseorang memegang <kanji>tangan</kanji> Anda dan menunjukkan cara <kanji>melanjutkan</kanji>. "Inilah <vocabulary>prosedur</vocabulary>," kata mereka. Gerakkan tanganmu seperti ini. Bagus sekali. Prosedur yang bagus. Bagus!', 'Bacaannya merupakan bacaan kosakata kun''yomi 手 dan 続く yang disatukan menjadi satu. Sialan bagian tubuh ini membuat segalanya kun''yomi.', 'Prosedur, Formalitas, Proses')
    RETURNING id INTO v_4402_prosedur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '敵', 'musuh', 21, 67, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

敵 berarti <vocabulary>musuh</vocabulary> atau <vocabulary>lawan</vocabulary>, baik dalam perang, olahraga, kompetisi, atau situasi konflik lainnya. Ingatlah bahwa 敵 terdengar agak kuat!', 'Bacaan utamanya sama dengan yang Anda pelajari dengan kanji. Tapi ada juga bacaan かたき sekunder yang belum Anda lihat, jadi inilah mnemoniknya:

Kamu suka menyebut <vocabulary>musuh</vocabulary>mu sebagai <reading>mobil norak</reading> (かたき). Mereka selalu berkeliling dengan mobil sport yang norak, Anda tidak tahan. Setiap kali mereka lewat Anda berteriak, "Mobilmu norak, musuh!"

Catatan: Dalam hal perbedaan, pembacaan てき hanya berarti "musuh", sedangkan かたき biasanya mengacu pada seseorang yang sangat Anda benci, sering kali atas nama orang lain.', 'Musuh, Lawan')
    RETURNING id INTO v_4403_musuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大敵', 'musuh-besar', 21, 68, '<kanji>musuh</kanji> <kanji>besar</kanji> Anda adalah musuh terburuk Anda. <vocabulary>musuh bebuyutan</vocabulary> Anda.

大敵 ditujukan untuk lawan yang kuat atau berbahaya, baik itu <vocabulary>musuh tangguh</vocabulary> dalam pertempuran atau kompetisi, atau sesuatu yang abstrak, seperti menyebut kecerobohan sebagai <vocabulary>musuh besar</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Kedua kanji tersebut memiliki beberapa pembacaan on''yomi yang berbeda, jadi inilah mnemonik untuk membantu Anda mengingat mana yang harus dipilih:

<vocabulary>musuh bebuyutan</vocabulary> Anda adalah <reading>teknisi dasi</reading> (たいてき). Siapa teknisi dasinya? Dia adalah petugas dukungan teknis di tempat kerja yang selalu memakai dasi yang sama dan tidak pernah membantu Anda. Dia hanya mengatakan "coba mulai ulang komputer Anda" untuk setiap masalah, yang tidak membantu. Dia bukan hanya musuh besar, dia pada dasarnya adalah musuh bebuyutan Anda. Anda benci teknisi dasi itu.', 'Musuh Besar, Musuh yang Tangguh, Musuh Besar')
    RETURNING id INTO v_4405_musuh_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無敵', 'tak-ada-taranya', 21, 69, 'Anda <kanji>tidak punya apa-apa</kanji> jika menyangkut <kanji>musuh</kanji>. Mengapa? Itu bukan karena kamu super baik dan semua orang menyukaimu. Tidak, itu karena kamu telah mengalahkan siapa pun yang mencobanya. Anda <vocabulary>tak tertandingi</vocabulary> dan <vocabulary>tak terkalahkan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tak ada taranya, Tak terkalahkan')
    RETURNING id INTO v_4406_tak_ada_taranya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '委員', 'anggota-komite', 21, 70, '<kanji>komite</kanji> <kanji>anggota</kanji> adalah <vocabulary>anggota komite</vocabulary> (atau <vocabulary>anggota komite</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Anggota Komite, Anggota Komite')
    RETURNING id INTO v_4408_anggota_komite;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '挙がる', 'untuk-dibangkitkan', 21, 71, 'Saat Anda <kanji>mengangkat</kanji> sesuatu, Anda menyebabkan <vocabulary>diangkat</vocabulary>. Kata kerja ini juga dapat memiliki arti seperti <vocabulary>didaftarkan</vocabulary>, <vocabulary>dicalonkan</vocabulary>, atau <vocabulary>naik</vocabulary>. Untuk makna tambahan ini, Anda mungkin ingin membayangkan sesuatu yang masuk dalam daftar atau seseorang yang masuk dalam nominasi, karena daftar dan nominasi selalu menempati urutan teratas.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Bacaannya sama dengan kata "bangkit" lainnya, 上がる. Bagus cara kerjanya, bukan? Jadi, kaitkan saja keduanya dan Anda akan membacanya sendiri.', 'Untuk Dibangkitkan, Untuk Didaftarkan, Untuk Dinominasikan, Untuk Bangkit')
    RETURNING id INTO v_4409_untuk_dibangkitkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '選挙', 'pemilihan', 21, 72, 'Anda harus <kanji>memilih</kanji> seseorang dan <kanji>menaikkan</kanji> jabatannya. Ini adalah <vocabulary>pemilihan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemilihan')
    RETURNING id INTO v_4410_pemilihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '判子', 'segel-seseorang', 21, 73, '<kanji>anak</kanji> dari <kanji>hakim</kanji> adalah hal yang dia berikan dalam penilaiannya. Apa yang dia masukkan dalam penilaiannya? <vocabulary>segel</vocabulary>-nya, lho, untuk menjadikan semuanya resmi dan semacamnya.', '判 adalah bacaan yang Anda pelajari. 子 adalah bacaan kosakata kun''yomi, yang saya yakin Anda juga sudah mengetahuinya dengan baik. Anda hanya perlu ingat untuk menggunakannya di sini.', 'Segel Seseorang, Segel, Stempel Pribadi')
    RETURNING id INTO v_4411_segel_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '制服', 'seragam', 21, 74, 'Jika Anda <kanji>mengontrol</kanji> orang, Anda membuat mereka mengenakan <kanji>pakaian</kanji> yang sama. Itu adalah <vocabulary>seragam</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seragam')
    RETURNING id INTO v_4413_seragam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '制度', 'sistem', 21, 75, 'Anda <kanji>mengontrol</kanji> setiap <kanji>derajat</kanji> dari <vocabulary>sistem</vocabulary> ini. Pikirkan tentang sebuah sistem. Ini dirancang untuk menciptakan lebih banyak kendali bagi Anda, tingkat demi tingkat. Itu sebabnya mereka menyebutnya "Sistem".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sistem')
    RETURNING id INTO v_4414_sistem;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '強制', 'memaksa', 21, 76, 'Mereka memiliki <kanji>kuat</kanji> <kanji>kontrol</kanji> atas kita. Artinya, mereka tidak pernah berhenti <vocabulary>memaksa</vocabulary> kita ke dalam <vocabulary>kompulsif</vocabulary> atau membuat segala macam hal menjadi <vocabulary>wajib</vocabulary>.

強制 berarti membuat seseorang melakukan sesuatu yang bertentangan dengan keinginannya, seringkali melalui tekanan, ancaman, atau otoritas. Ini digunakan ketika seseorang dipaksa menandatangani dokumen di bawah paksaan, misalnya, atau ketika seseorang dipaksa kembali ke negaranya dengan paksa. 強制 berarti tidak ada pilihan dalam hal ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memaksa, Paksaan, Wajib')
    RETURNING id INTO v_4415_memaksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自制', 'kontrol-diri', 21, 77, '<kanji>Diri</kanji> <kanji>pengendalian</kanji> adalah <vocabulary>pengendalian diri</vocabulary> dan <vocabulary>pengendalian diri</vocabulary>. Miliki beberapa!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kontrol Diri, Pengendalian Diri')
    RETURNING id INTO v_4416_kontrol_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '務める', 'untuk-bekerja-sebagai', 21, 78, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>tugas</kanji> jadi apa versi kosakata kata kerjanya? Nah, ketika Anda mengerjakan suatu tugas, Anda akan <vocabulary>bekerja sebagai</vocabulary> atau <vocabulary>berfungsi sebagai</vocabulary> sesuatu untuk melakukan tugas itu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

<vocabulary>Untuk bekerja sebagai</vocabulary> sekretaris saya, Anda harus menyelesaikan tugas. Sebuah tugas dimana kamu membawakanku <reading>dua jari kaki</reading> (つと)! Jangan tanya kenapa! Anda ingin <vocabulary>menjadi</vocabulary> asisten saya, bukan? Kalau begitu ambilkan saja kedua jari kaki itu untukku!', 'Untuk Bekerja Sebagai, Untuk Melayani Sebagai, Untuk Dipekerjakan Sebagai')
    RETURNING id INTO v_4417_untuk_bekerja_sebagai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '事務所', 'kantor', 21, 79, 'Ketika <kanji>kejadian</kanji> <kanji>tugas</kanji> Anda berada di <kanji>tempat</kanji> yang sama setiap hari, tempat itu mungkin adalah <vocabulary>kantor</vocabulary>.

事務所 sering kali digunakan untuk ruang kantor yang menangani 事務 back-office (pekerjaan administratif atau klerikal). Ini juga dapat digunakan untuk kantor yang menawarkan layanan yang lebih terspesialisasi, seperti 会計事務所 (perusahaan <vocabulary>akuntansi</vocabulary>) atau 芸能事務所 (agen <vocabulary></vocabulary> bakat).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kantor')
    RETURNING id INTO v_4418_kantor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '義務', 'kewajiban', 21, 80, '<kanji>kebenaran</kanji> <kanji>tugas</kanji> saya adalah <vocabulary>kewajiban</vocabulary> saya kepada orang-orang ini. Saya akan keluar dan membersihkan dunia dari kejahatan, menjadi orang benar, dan mewujudkan segala sesuatunya. Itu adalah <vocabulary>tugas</vocabulary> saya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kewajiban, Tugas')
    RETURNING id INTO v_4419_kewajiban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '任務', 'tugas', 21, 81, 'Anda memiliki <kanji>tugas</kanji>. Anda memiliki <kanji>tugas</kanji>. Anda memiliki <vocabulary>tugas</vocabulary> dan <vocabulary>tugas</vocabulary> yang harus dilakukan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tugas, Tugas, Misi')
    RETURNING id INTO v_4420_tugas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '総合', 'keseluruhan', 21, 82, 'Saat Anda mengambil <kanji>keseluruhan</kanji> dan <kanji>menggabungkannya</kanji> bersama-sama, Anda mendapatkan <vocabulary>sintesis</vocabulary>, dan mungkin gambaran <vocabulary>keseluruhan</vocabulary> yang bagus.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keseluruhan, Luas, Sintesis')
    RETURNING id INTO v_4422_keseluruhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '総体的', 'secara-keseluruhan', 21, 83, 'Dengan <kanji>keseluruhan</kanji> <kanji>tubuh</kanji>. Lakukan <vocabulary>secara keseluruhan</vocabulary> bukan sebagai bagian, atau semacamnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Secara Keseluruhan, Keseluruhan')
    RETURNING id INTO v_4424_secara_keseluruhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '設ける', 'untuk-membangun', 21, 84, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendirikan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to build</vocabulary>, atau <vocabulary>to set up</vocabulary>.

設ける adalah kata formal yang menyarankan menyiapkan sesuatu untuk mempersiapkan kebutuhan atau acara di masa depan. Jika Anda ingin memastikan kelancaran operasional atau tata kelola, misalnya, Anda dapat membuat peraturan (ルールを設ける) atau mendirikan kantor (オフィスを設ける). Anda bahkan dapat menggunakannya untuk mengatakan Anda akan mengadakan pesta minum (酒の席を設ける), yang dalam hal ini mungkin berarti pesta tersebut memiliki tujuan yang lebih formal seperti membangun jaringan atau berdiskusi.', 'Apa yang ingin Anda <vocabulary>bangun</vocabulary>? Bagaimana dengan sistem untuk <read>memotong</reading> rumput? Penting sekali rumput dipangkas sesuai sistem yang sudah ada, lho. Bagaimana caramu memotong milikmu?', 'Untuk Membangun, Untuk Mengatur')
    RETURNING id INTO v_4425_untuk_membangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '設定する', 'untuk-mengatur', 21, 85, 'Apa yang Anda <kanji>tetapkan</kanji> dan <kanji>tentukan</kanji> dalam kehidupan Anda sehari-hari? Sebuah pengaturan. Saat Anda mengubahnya menjadi kata kerja, Anda memiliki kata <vocabulary>to set</vocabulary>, seperti dalam menyetel suhu AC, menyetel kata sandi, atau menyetel komputer Anda ke mode gelap.

設定する sedikit formal, tetapi biasanya digunakan untuk pengaturan perangkat, sistem, dan game. Ini juga sering digunakan dalam konteks yang lebih resmi, seperti untuk menetapkan harga produk atau menetapkan tujuan proyek.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Hati-hati karena 設 disingkat menjadi せっ.', 'Untuk Mengatur, Untuk Mengatur')
    RETURNING id INTO v_4426_untuk_mengatur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公設', 'publik', 21, 86, 'Ini adalah <kanji>publik</kanji> <kanji>pendirian</kanji>. Ini bersifat <vocabulary>publik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Publik, Institusi Publik')
    RETURNING id INTO v_4427_publik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '建設', 'konstruksi', 21, 87, 'Anda melakukan <kanji>membangun</kanji> untuk <kanji>membangun</kanji> sesuatu. Keseluruhan proses ini disebut <vocabulary>konstruksi</vocabulary>!

建設 adalah kata yang cukup formal untuk konstruksi, berfokus pada tindakan atau proses <vocabulary>construction</vocabulary> daripada struktur itu sendiri. Ini sering digunakan untuk proyek konstruksi besar, seperti mal, bendungan, atau jembatan. Dalam beberapa konteks, kata ini juga bisa merujuk pada <vocabulary>pendirian</vocabulary> entitas penting, seperti negara baru.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Konstruksi, Membangun, Pembentukan')
    RETURNING id INTO v_4428_konstruksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '資本', 'modal', 21, 88, 'Untuk memulai bisnis, <kanji>utama</kanji> <kanji>sumber daya</kanji> Anda adalah <vocabulary>modal</vocabulary> Anda, yang dapat berupa uang dan berbagai jenis aset lainnya, seperti properti real estate.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Modal')
    RETURNING id INTO v_4429_modal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '資金', 'dana', 21, 89, '<kanji>sumber daya</kanji> <kanji>emas</kanji> yang kami miliki adalah <vocabulary>dana</vocabulary> kami saat ini. 

資金 khusus untuk dana moneter, bukan jenis aset lainnya. Kanji 金 itu bisa berarti uang, jadi harusnya mudah diingat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dana')
    RETURNING id INTO v_4430_dana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '資料', 'bahan', 21, 90, 'Jika Anda menggunakan <kanji>sumber daya</kanji> untuk membuat <kanji>bahan</kanji>, Anda akan memiliki <vocabulary>bahan</vocabulary>. Maksudnya bahan untuk sebuah buku, atau <vocabulary>data</vocabulary> dan <vocabulary>dokumen</vocabulary> untuk penelitian.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bahan, Data, Dokumen')
    RETURNING id INTO v_4431_bahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '投資', 'investasi', 21, 91, 'Silakan <kanji>buang</kanji> <kanji>sumber daya</kanji> Anda ke proyek. Bisa menggunakan <vocabulary>investasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda tahu cara membaca kanji Anda, Anda juga akan tahu cara membacanya!', 'Investasi')
    RETURNING id INTO v_4432_investasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人権', 'hak-asasi-manusia', 21, 92, '<kanji>Rakyat</kanji> <kanji>Hak</kanji> adalah <vocabulary>hak asasi manusia</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hak asasi Manusia')
    RETURNING id INTO v_4433_hak_asasi_manusia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '権利', 'sebuah-benar', 21, 93, 'Anda memiliki <kanji>hak</kanji> untuk <kanji>mendapatkan keuntungan</kanji>! Ini adalah <vocabulary>hak</vocabulary> yang Anda miliki!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sebuah Benar, Benar')
    RETURNING id INTO v_4434_sebuah_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '条件', 'kondisi', 21, 94, 'Sebuah <kanji>klausul</kanji> dalam <kanji>masalah</kanji> memperumit banyak hal. Ia menambahkan <vocabulary>kondisi</vocabulary>, <vocabulary>istilah</vocabulary> dan <vocabulary>persyaratan</vocabulary> pada masalah sederhana.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kondisi, Kondisi, Ketentuan, Persyaratan')
    RETURNING id INTO v_4436_kondisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '事件', 'insiden', 21, 95, 'Sebuah <kanji>kejadian</kanji> dari suatu <kanji>materi</kanji> sebenarnya hanyalah sesuatu yang terjadi. Itu adalah <vocabulary>insiden</vocabulary> atau <vocabulary>case</vocabulary>. 

事件 sering merujuk pada kejadian penting atau serius seperti kasus kejahatan atau kecelakaan. Kata ini juga bisa digunakan untuk bercanda — "Ada 事件 di pesta itu!" — untuk mendramatisir suatu peristiwa seperti seseorang yang mengajak teman sekelasmu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Insiden, Kasus, Skandal')
    RETURNING id INTO v_4437_insiden;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '派手', 'menyolok', 21, 96, 'Ini aneh. Bayangkan saja tentang <kanji>sekte</kanji> dari <kanji>tangan</kanji>. Mereka selalu memainkan musik jazz dan hal-hal seperti itu, berusaha untuk menjadi <vocabulary>mencolok</vocabulary> dan <vocabulary>mencolok</vocabulary>. Ugh, sekte yang bodoh sekali, menurutmu.', 'Bacaannya adalah yang Anda pelajari dengan kanji, meskipun て berlanjut ke で.', 'Menyolok, Menyolok, mencolok')
    RETURNING id INTO v_4438_menyolok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '立派', 'bagus-sekali', 21, 97, 'Orang-orang <kanji>berdiri</kanji>dan membentuk <kanji>sekte</kanji> untuk Anda karena <vocabulary>indah</vocabulary> hal-hal yang Anda katakan dan lakukan. Perilaku <vocabulary>terpuji</vocabulary> Anda telah membuat mereka berdiri tegak, dan sekarang mereka memuja Anda seperti seorang guru zaman baru.

立派 adalah kata yang agak formal yang digunakan untuk mengatakan sesuatu atau seseorang <vocabulary>mengesankan</vocabulary>. Misalnya, Anda mungkin menyebut seseorang yang mencapai sesuatu yang hebat sebagai 立派な人, atau mendeskripsikan bangunan yang elegan dan tampak mahal sebagai 立派な建物. Bahkan kumis yang bagus dan megah pun bisa disebut 立派なヒゲ!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun りつ disingkat menjadi りっ, jadi berhati-hatilah agar tidak melakukan hal yang sama. Oh dan は berubah menjadi ぱ juga. Karena rendaku dan sebagainya.', 'Bagus sekali, Terpuji, Menakjubkan')
    RETURNING id INTO v_4439_bagus_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '岡山県', 'prefektur-okayama', 21, 98, 'Okayama (岡山) <kanji>Prefektur</kanji> adalah sebuah prefektur di Jepang. Mempelajari bacaan akan membantu Anda mengingat arti kata ini karena separuhnya dalam bahasa Jepang.', 'Bacaannya merupakan bacaan kun''yomi dari dua kanji pertama. Untungnya Anda mempelajarinya saat mempelajari kanji. Lalu, tempelkan 県 di sana dan Anda siap berangkat!', 'Prefektur Okayama')
    RETURNING id INTO v_4440_prefektur_okayama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '素材', 'bahan-mentah', 21, 99, 'Saat Anda ingin menggunakan <kanji>elemen</kanji> paling dasar dari sebuah <kanji>bahan</kanji>, Anda akan mendapatkan <vocabulary>bahan mentah</vocabulary>. Mungkin itu bahan mentah yang akan Anda gunakan untuk membangun rumah. Mungkin itu bahan mentah yang Anda perlukan untuk membuat sup yang enak. Bagaimanapun, mereka (belum) belum banyak tersentuh.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pembacaan 素 adalah pembacaan そ, jadi berhati-hatilah. Anda dapat mengingatnya dengan memikirkan bagaimana Anda harus <reading>menjahit</reading> bangunan tersebut menggunakan bahan mentah tersebut.', 'Bahan mentah, Bahan, Bahan')
    RETURNING id INTO v_4442_bahan_mentah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '断る', 'menolak', 21, 100, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>terpotong</kanji>. Apa yang terjadi jika Anda melakukan tindakan memotong seseorang? Anda akan <vocabulary>menolak</vocabulary> apa pun yang mereka inginkan.', 'Sayangnya, memutuskan <vocabulary>untuk menolak</vocabulary> sesuatu akan memicu <reading>perang mantel</reading> (seperti adu bantal, namun semua orang saling memukul dengan mantel, bukan bantal). Mantel sudah siap, dan biarkan perang mantel dimulai!', 'Menolak, Untuk Menolak')
    RETURNING id INTO v_4443_menolak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '判断', 'keputusan', 21, 101, 'Saya <kanji>menilai</kanji> untuk <kanji>memotong</kanji> kepala Anda. Itulah <vocabulary>penilaian</vocabulary> saya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keputusan, Keputusan, Kesimpulan')
    RETURNING id INTO v_4444_keputusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '批判', 'kritik', 21, 102, '<kanji>kritik</kanji> adalah saat Anda <kanji>menghakimi</kanji>. Ini masih sekedar <vocabulary>kritik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kritik')
    RETURNING id INTO v_4448_kritik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '任意', 'opsional', 21, 103, '<kanji>Ide</kanji> saya tentang <kanji>tugas</kanji> adalah Anda tidak benar-benar harus melakukannya. Itu <vocabulary>opsional</vocabulary>, Anda tahu?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Opsional, Sukarela, Sewenang-wenang')
    RETURNING id INTO v_4449_opsional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '検査', 'pemeriksaan', 21, 104, 'Kami perlu <kanji>memeriksa</kanji> dan <kanji>memeriksa</kanji> Anda untuk <vocabulary>pemeriksaan</vocabulary> tahunan kami, mmk? Sekarang tolong turunkan celanamu dan batuk.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemeriksaan, Inspeksi, Penyelidikan')
    RETURNING id INTO v_4450_pemeriksaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '検問する', 'untuk-memeriksa', 21, 105, 'Anda <kanji>memeriksa</kanji> <kanji>masalah</kanji>. Untuk melakukan hal ini, Anda perlu <vocabulary>memeriksa</vocabulary> atau <vocabulary>memeriksa</vocabulary> itu. Dan jika Anda menginspeksi orang seperti ini, kemungkinan besar Anda adalah polisi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Memeriksa, Untuk Memeriksa, Untuk Memeriksa')
    RETURNING id INTO v_4451_untuk_memeriksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '条約', 'perjanjian', 21, 106, 'Ada banyak <kanji>klausul</kanji> tentang <kanji>janji</kanji> yang Anda buat dalam kontrak ini mengingat itu seharusnya merupakan <vocabulary>perjanjian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perjanjian, Pakta, Perjanjian')
    RETURNING id INTO v_4453_perjanjian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '責める', 'disalahkan', 21, 107, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menyalahkan</kanji> jadi ini juga berarti <vocabulary>menyalahkan</vocabulary>. Selain itu, ini juga bisa berarti <vocabulary>mengkritik</vocabulary>, <vocabulary>mencela</vocabulary>, atau <vocabulary>menuduh</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Apakah kamu akan <vocabulary>menyalahkan</vocabulary> saya karena memakan <reading>ce</reading>lery (せ) kamu? Anda harus tahu saya orang yang salah untuk disalahkan karena saya bahkan tidak suka seledri!', 'Disalahkan, Untuk Mengkritik, Untuk mencela, Untuk Menuduh')
    RETURNING id INTO v_4454_disalahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '責任', 'tanggung-jawab', 21, 108, 'Anda sudah mengetahui bahwa 責 berarti "menyalahkan", namun bisa juga berarti <kanji>tanggung jawab</kanji>, bukan? Nah, ketika tanggung jawab bertemu dengan <kanji>tugas</kanji>, hal ini akan menghasilkan lebih banyak <vocabulary>tanggung jawab</vocabulary>. Bagaimanapun, Anda memiliki tanggung jawab untuk melakukan tugas Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tanggung jawab')
    RETURNING id INTO v_4455_tanggung_jawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '省く', 'untuk-menghilangkan', 21, 109, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>melestarikan</kanji>... tapi mengapa berhenti di situ jika Anda bisa mencoba <vocabulary>menghilangkan</vocabulary> semuanya dan <vocabulary>menghilangkan</vocabulary> semuanya? Ambil saja apa yang Anda butuhkan, simpan, dan hilangkan yang lainnya.', 'Anda <reading>memiliki</reading> (はぶ) apa yang Anda miliki, dan menghilangkan apa yang tidak Anda perlukan. Kehidupan yang sempurna.', 'Untuk Menghilangkan, Untuk menghilangkan, Untuk Melewati, Untuk Meninggalkan')
    RETURNING id INTO v_4456_untuk_menghilangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '反省', 'pertimbangan-kembali', 21, 110, 'Jika Anda <kanji>anti</kanji> <kanji>menghemat</kanji>, saya akan meminta Anda melakukan <vocabulary>pertimbangan ulang</vocabulary> dan <vocabulary>refleksi</vocabulary> yang berat, dan melihat apakah itu benar-benar cara yang tepat. Jika Anda mengubah pemikiran Anda, Anda mungkin akan menunjukkan <vocabulary>penyesalan</vocabulary>.', 'Pembacaan untuk 反 semuanya bagus. Bacaan 省 adalah bacaan on''yomi yang belum pernah Anda lihat. Berikut ini mnemonik untuk membantu Anda:

Aku berdiri di depanmu, memaksakan <vocabulary>pertimbangan ulang</vocabulary> sikap anti konservasimu, dengan <reading>sa</reading>ber (せい) ku ke tenggorokanmu. Sebaiknya aku melihat pantulan di wajahmu atau kamu tidak akan melihatnya sedetik pun.', 'Pertimbangan kembali, Cerminan, Menyesali')
    RETURNING id INTO v_4457_pertimbangan_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '増える', 'untuk-meningkatkan', 21, 111, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>meningkat</kanji>, jadi versi kosakata verbanya berarti <vocabulary>meningkat</vocabulary>. Ini adalah saat sesuatu meningkat dengan sendirinya, dan Anda tidak melakukan peningkatan tersebut. Anda mengetahui hal ini karena Anda suka <read>err</reading> (える) untuk berhati-hati dan tidak menyentuh apa pun saat kenaikannya, oleh karena itu Anda sendiri tidak melakukan peningkatan apa pun (itu terjadi begitu saja).

Ini adalah kata sehari-hari yang mengacu pada peningkatan jumlah atau kuantitas, namun perlu diingat bahwa kata tersebut tidak dapat digunakan untuk menyatakan peningkatan derajat.', 'Akan sangat <reading>foo</reading>lish (ふ) jika Anda menyentuh apa pun saat keadaan sedang meningkat. Anda tidak ingin mengacaukan hal yang baik, bukan? Jangan bodoh.', 'Untuk Meningkatkan')
    RETURNING id INTO v_4458_untuk_meningkatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '増加', 'meningkatkan', 21, 112, 'Sebuah <kanji>peningkatan</kanji> akan <kanji>menambah</kanji> ke apa yang Anda miliki sebelumnya. Ini merupakan <vocabulary>peningkatan</vocabulary>.

Kata ini mengacu pada peningkatan jumlah atau kuantitas, sering digunakan dalam konteks formal, laporan, atau artikel berita.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Meningkatkan')
    RETURNING id INTO v_4459_meningkatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '急増', 'peningkatan-mendadak', 21, 113, '<kanji>mendadak</kanji> <kanji>peningkatan</kanji> hanyalah <vocabulary>peningkatan mendadak</vocabulary> atau <vocabulary>lonjakan</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peningkatan Mendadak, Lonjakan')
    RETURNING id INTO v_4460_peningkatan_mendadak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '増税', 'kenaikan-pajak', 21, 114, 'Saat Anda <kanji>menaikkan</kanji> <kanji>pajak</kanji> Anda melakukan <vocabulary>kenaikan pajak</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kenaikan Pajak, Naikkan Pajak, Peningkatan Pajak')
    RETURNING id INTO v_4461_kenaikan_pajak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '税金', 'pajak', 21, 115, '<kanji>pajak</kanji> <kanji>emas</kanji> adalah apa yang harus Anda bayarkan ketika Anda harus membayar <vocabulary>pajak</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pajak')
    RETURNING id INTO v_4462_pajak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無税', 'bebas-pajak', 21, 116, 'Jika <kanji>pajak</kanji> adalah <kanji>tidak ada</kanji> maka semuanya <vocabulary>bebas pajak</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bebas Pajak, Tidak Ada Pajak, Bebas Bea')
    RETURNING id INTO v_4463_bebas_pajak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '実際', 'sebenarnya', 21, 117, '<kanji>kebenaran</kanji> <kanji>kejadian</kanji> adalah <vocabulary>realitas</vocabulary>. Kata ini juga banyak digunakan sebagai kata keterangan (dengan atau tanpa partikel に) yang berarti <vocabulary>sebenarnya</vocabulary> atau <vocabulary>really</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.つ disingkat menjadi っ.', 'Sebenarnya, Benar-benar, Realitas, Nyata')
    RETURNING id INTO v_4469_sebenarnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国際', 'internasional', 21, 118, 'Anda mempunyai <kanji> kesempatan</kanji> untuk mengunjungi <kanji>negara</kanji> lainnya. Wow, <vocabulary>internasional</vocabulary> sekali!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Internasional')
    RETURNING id INTO v_4470_internasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '際', 'samping', 21, 119, 'Meskipun kanji pada dasarnya berarti <kanji>kesempatan</kanji>, entah mengapa kata ini berarti <vocabulary>side</vocabulary> atau <vocabulary>edge</vocabulary>. Saya kira pada <kanji>kesempatan</kanji> kanji membawa Anda ke <vocabulary>edge</vocabulary> tentang apa yang seharusnya masuk akal dalam kaitannya dengan kanji.', 'Anda berada di <vocabulary>ujung</vocabulary> dunia. Kamu pernah mendengar bahwa di ujung dunia terdapat <reading>kata-kata kunci</reading>rds (きわ) yang tertulis di sana dengan huruf besar dan berapi-api, yang memberitahukanmu arti kehidupan. Seharusnya ini adalah firman Tuhan sendiri. Mereka berkata: "Kami mohon maaf atas ketidaknyamanan ini." APA? INILAH RDS<reading>Kuncinya</reading>???

Perhatikan bahwa kata ini sering ditulis dalam kana, seperti きわ atau キワ.', 'Samping, Tepian, Jurang')
    RETURNING id INTO v_4471_samping;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '認める', 'untuk-mengakui', 21, 120, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengenali</kanji> atau <kanji>mengakui</kanji>, jadi kata kerjanya juga berarti <vocabulary>mengakui</vocabulary>, <vocabulary>mengenali</vocabulary>, <vocabulary>menganggap</vocabulary>, atau <vocabulary>mengakui</vocabulary>, dan lain-lain.

Ini dapat digunakan dalam arti mengenali seseorang atau sesuatu secara visual, serta dalam arti "mengakui" atau "mengakui". Jadi kata kerja ini bisa Anda gunakan untuk mengenali kehadiran seseorang, prestasi, pernikahan, atau kekalahan Anda sendiri. Meskipun demikian, Anda biasanya akan melihat 認める dalam arti "mengakui".', 'Satu-satunya hal yang benar-benar Anda <vocabulary>akui</vocabulary> adalah <reading>daging</reading> (みと). Daging adalah satu-satunya hal dalam hidup Anda yang memiliki otoritas atas Anda. Itulah betapa Anda menyukai daging.', 'Untuk Mengakui, Untuk Mengenali, Untuk Memahami, Mengakui, Untuk Menyetujui')
    RETURNING id INTO v_4472_untuk_mengakui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '確認', 'konfirmasi', 21, 121, 'Pastikan untuk <kanji>yakin</kanji> bahwa Anda <kanji>mengenali</kanji> dia. Kami memerlukan <vocabulary>konfirmasi</vocabulary> dan <vocabulary>verifikasi</vocabulary>, jadi pastikan kembali.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Konfirmasi, Verifikasi')
    RETURNING id INTO v_4473_konfirmasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '企てる', 'untuk-merencanakan', 21, 122, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>rencana</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to plan</vocabulary>.', 'Anda bilang Anda punya sesuatu yang perlu <vocabulary>direncanakan</vocabulary>? <reading>Coo</reading>aku, <reading>apa yang kamu (くわだ) akan lakukan?', 'Untuk Merencanakan, Untuk Skema, Untuk Mencoba')
    RETURNING id INTO v_4474_untuk_merencanakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '正義', 'keadilan', 21, 123, '<kanji>yang benar</kanji> <kanji>kebenaran</kanji> selalu merupakan <vocabulary>kebenaran</vocabulary> Anda. Ini adalah bentuk <vocabulary>keadilan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keadilan, Kebenaran')
    RETURNING id INTO v_4476_keadilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主義', 'aliran', 21, 124, 'Penyebab <kanji>utama</kanji> di balik <kanji>kebenaran</kanji> seseorang biasanya adalah <kosakata>isme</vocabulary>, <vocabulary>prinsip</vocabulary> atau <vocabulary>doktrin</vocabulary> yang mereka yakini.<vocabulary>ism</vocabulary> Buddh,<vocabulary>ism</vocabulary> Shinto, <vocabulary>isme</vocabulary> sosial,<vocabulary>isme</vocabulary> komunitas, sebut saja. Jika Anda percaya pada salah satu dari hal-hal tersebut, itu adalah faktor pendorong utama di balik apa yang Anda yakini sebagai kebenaran.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Aliran, Prinsip, Doktrin')
    RETURNING id INTO v_4477_aliran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '義理', 'rasa-tanggung-jawab', 21, 125, 'Anda memiliki <kanji>kebenaran</kanji> dan kemudian <kanji>alasan</kanji> di baliknya, setidaknya dalam pikiran Anda sendiri. Ini adalah <vocabulary>rasa tanggung jawab</vocabulary> Anda. Dan itu juga benar-benar sebuah "perasaan". Anda hanya merasakannya. Itu bukanlah sesuatu yang nyata dan nyata. Itu adalah alasan pribadi Anda atas kebenaran ini.

Kata ini juga bisa berarti <kosakata>mertua</vocabulary> seperti ibu mertua Anda, karena mereka adalah ibu Anda dalam arti kewajiban sosial saja, bukan karena hubungan darah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rasa Tanggung Jawab, Kewajiban Sosial, Mertua')
    RETURNING id INTO v_4478_rasa_tanggung_jawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '定義', 'definisi', 21, 126, 'Tolong <kanji>tentukan</kanji> apa yang dimaksud dengan <kanji>kebenaran</kanji>. Saya ingin <vocabulary>definisi</vocabulary> untuk itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Definisi')
    RETURNING id INTO v_4479_definisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '被害者', 'korban', 21, 127, 'Anda telah mempelajari 被害 yang berarti "kerusakan", dan ini tentang <kanji>seseorang</kanji> yang menderita kerusakan, jadi ini berarti <vocabulary>korban</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengingat kata 被害 mungkin bisa membantu Anda juga.', 'Korban')
    RETURNING id INTO v_4487_korban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜省', 'kementerian', 21, 128, 'Apa yang harus Anda tetapkan untuk <kanji>melestarikan</kanji> suatu negara? <vocabulary>Kementerian</vocabulary>… ya, pelayanan apa pun sebenarnya. Dalam bahasa Jepang, 〜省 sering ditempelkan pada nama kementerian. Seperti Kementerian Keuangan (財務省), Kementerian Luar Negeri (外務省), dan yang lainnya adalah Kementerian Pendidikan, Kebudayaan, Olahraga, Ilmu Pengetahuan dan Teknologi (文部科学省). Wah!

〜省 juga merupakan akhiran yang digunakan untuk <vocabulary>provinsi</vocabulary> Cina, seperti 広東省 (Provinsi Guangdong), jadi ingatlah hal ini ketika membaca tentang urusan internasional.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kementerian, Propinsi')
    RETURNING id INTO v_4850_kementerian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刺身', 'sashimi', 21, 129, 'Ingat bagaimana kosakata 身 bisa berarti "daging binatang"? Nah, saat Anda <kanji>menusuk</kanji> daging hewan dan memakannya mentah, Anda akan mendapatkan <vocabulary>sashimi</vocabulary>, alias <vocabulary>irisan ikan mentah</vocabulary> (dan terkadang makanan laut mentah lainnya).

Tentu saja, Anda tidak boleh menusuk sashimi saat Anda memakannya — itu tidak sopan. Tangani saja dengan sumpit dan celupkan ke dalam kecap dan wasabi. enak! Dan jika ingin memberikan kesan yang baik, Anda bisa menyebutnya お刺身 agar terdengar lebih sopan — terutama saat memesan.', 'Bacaannya agak aneh. Ini adalah kun''yomi ganda di mana 刺す menjadi bentuk batang dan dimasukkan ke dalam kanji menjadi さし.身 hanyalah bacaan kata 身.', 'Sashimi, Irisan Ikan Mentah')
    RETURNING id INTO v_5134_sashimi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '埋め合わせる', 'untuk-mengkompensasi', 21, 130, '埋める berarti "mengubur". 合わせる berarti "menyatukan bersama". Jika Anda mengubur seseorang untuk menyatukan mereka dengan Anda, Anda hampir pasti mencoba <vocabulary>untuk memberikan kompensasi</vocabulary> sesuatu.', 'Bacaannya berasal dari 埋める dan 合わせる. Gabungkan semuanya menjadi satu kata bahagia yang besar.', 'Untuk Mengkompensasi, Untuk Menebus')
    RETURNING id INTO v_6457_untuk_mengkompensasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '形容動詞', 'na-kata-sifat', 21, 131, '形容詞 adalah <kanji>kata sifat</kanji>. Lalu bagaimana dengan kata sifat yang mengandung 動詞 (kata kerja)? Bagaimana hal itu masuk akal? Saya juga tidak terlalu yakin, tapi kata sifat yang mengandung gerakan adalah <vocabulary>na kata sifat</vocabulary>. Ini adalah kata sifat yang bisa diakhiri dengan な (便利な, misalnya). Faktanya, kata-kata tersebut lebih mirip kata benda daripada kata kerja, jadi apa penyebabnya? Apapun itu, putuskan saja Anda tidak ingin berurusan dengan kegilaan ini. Katakan saja <reading>nah</reading>, saya tidak peduli lagi dengan hal ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Mengetahui 形容詞 dan 動詞 juga akan membantu, karena keduanya merupakan bagian dari kata ini.', 'Na Kata Sifat')
    RETURNING id INTO v_7481_na_kata_sifat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '実感', 'realisasi', 21, 132, '<kanji>realitas</kanji> <kanji>perasaan</kanji> adalah apa yang Anda dapatkan ketika sesuatu terasa nyata. <vocabulary>realisasi</vocabulary> terjadi — apa pun itu, Anda memiliki <vocabulary>perasaan nyata</vocabulary> bahwa hal itu benar-benar terjadi.

実感 berarti realisasi yang berasal dari pengalaman hidup. Contohnya, saat Anda sedang menantikan bayi, Anda mungkin memahami bahwa Anda akan menjadi orang tua, namun belum benar-benar menyadari hal tersebut sampai bayi tersebut lahir atau Anda menggendongnya. Ini adalah perasaan bahwa sesuatu terasa nyata di luar teori atau penjelasan — ketika hal itu benar-benar meresap.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Pembacaan 実 diubah menjadi じっ jadi berhati-hatilah!', 'Realisasi, Perasaan Nyata, Menyadari Sepenuhnya')
    RETURNING id INTO v_7483_realisasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '解説', 'penjelasan', 21, 133, 'Setelah Anda <kanji>menyelesaikan</kanji>sebuah <kanji>teori</kanji>, Anda seharusnya bisa memberikan <vocabulary>penjelasan</vocabulary> yang cukup baik kepada orang lain. Masuk akal, bukan? 

解説 mengacu pada penjelasan rinci dan analitis. Ini sering digunakan ketika seseorang, seringkali seorang ahli, memberikan analisis mendalam tentang suatu topik, seperti permainan olahraga atau artikel berita <vocabulary>komentar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penjelasan, Komentar')
    RETURNING id INTO v_7486_penjelasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '布地', 'kain', 21, 134, '<kanji>Kain</kanji> dari <kanji>bumi</kanji> masih <vocabulary>kain</vocabulary>, hanya sedikit kotor.', 'Bacaannya merupakan gabungan bacaan kun''yomi dan on''yomi. Meskipun demikian, Anda sudah mempelajari keduanya!', 'Kain, Kain, Tekstil')
    RETURNING id INTO v_7595_kain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '得体', 'karakter', 21, 135, 'Seiring berjalannya waktu, <kanji>tubuh</kanji> Anda akan <kanji>memperoleh</kanji> tipe <vocabulary>karakter</vocabulary> tertentu. Ini menunjukkan <vocabulary>sifat</vocabulary> Anda yang sebenarnya sebagai pribadi.

Catatan: Kita hampir selalu menggunakan kata ini dalam frasa 得体が知れない/得体の知れない, jadi periksalah konteks kalimatnya untuk melihat "karakter" seperti apa yang sedang kita bicarakan.', 'Bacaannya merupakan gabungan bacaan kun''yomi dan on''yomi. Meski begitu, kedua bacaan untuk kedua kanji tersebut adalah bacaan yang sudah Anda pelajari, jadi Anda harus bisa membaca ini.', 'Karakter, Alam')
    RETURNING id INTO v_7649_karakter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心得', 'pengetahuan', 21, 136, 'Apa yang <kanji>hati</kanji> ingin <kanji>dapatkan</kanji> di atas segalanya? <vocabulary>Pengetahuan</vocabulary>! Itu sebabnya kamu ada di sini, bukan? 

Gali lebih dalam dan lihatlah bahwa yang diinginkan hati Anda hanyalah lebih banyak <vocabulary>tips</vocabulary> dan <vocabulary>rules</vocabulary>, untuk mendapatkan <vocabulary>pemahaman</vocabulary> yang lebih baik tentang… bahasa Jepang!

心得 mengacu pada keterampilan atau pengetahuan praktis yang diperoleh melalui pembelajaran, seperti keahlian dalam upacara minum teh atau penguasaan bahasa asing. Ini juga bisa berarti hal-hal yang perlu diingat dalam situasi tertentu, seperti etika bertelepon atau pengetahuan dalam suatu pekerjaan.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Pengetahuan, Kiat, Aturan, Memahami')
    RETURNING id INTO v_7709_pengetahuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '目覚める', 'untuk-bangun', 21, 137, 'Jika <kanji>mata</kanji> Anda <kanji>bangun</kanji> maka Anda akan <vocabulary>bangun</vocabulary>. Matamu biasanya menjadi hal pertama yang terbangun saat bangun tidur, lho? 

Kata ini juga bisa berarti <kosakata>terbangun</vocabulary> tetapi ini seperti saat Anda sadar, bukan bangun secara harfiah.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda belum mempelajari bacaan ini untuk 覚, dan dalam hal ini juga ada rendaku, jadi ingatlah itu. Bagaimanapun, inilah mnemonik untuk membantu Anda:

Jika Anda mulai <vocabulary>terbangun</vocabulary> di tengah malam, itu karena C<reading>za</reading>r (ざ) yang Anda temui yang melarang duduk. Tsar yang kejam dan bengis ini terus muncul dalam mimpi burukmu, membuatmu terbangun tanpa henti. Menakutkan.', 'Untuk Bangun, Untuk Bangkit')
    RETURNING id INTO v_8712_untuk_bangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '資格', 'kualifikasi', 21, 138, '<kanji>sumber daya</kanji> kredibel yang menentukan <kanji>status</kanji> profesional Anda adalah <vocabulary>kualifikasi</vocabulary> Anda. Anda memerlukan beberapa yang bagus jika Anda ingin masuk ke sekolah yang bagus atau mendapatkan pekerjaan yang bagus.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kualifikasi, Kemampuan, Persyaratan')
    RETURNING id INTO v_8752_kualifikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '羨む', 'untuk-iri', 21, 139, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>iri</kanji> jadi versi kata kerjanya adalah <vocabulary>to iri</vocabulary> pada seseorang.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Kamu benar-benar mulai <vocabulary>iri</vocabulary> <reading>ura</reading>nium <reading>Ya</reading>nkees (うらや) itu. Itulah tim Yankees yang baru menggunakan uranium yang dibuat di laboratorium. Meskipun mereka menjijikkan dan bertubuh besar, mereka sangat pandai bermain bisbol, jadi kamu iri pada mereka.', 'Untuk Iri, Menjadi Iri, Menjadi Cemburu')
    RETURNING id INTO v_8888_untuk_iri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '羨望', 'iri', 21, 140, '<kanji>Iri</kanji> menghabiskan <kanji>harapan</kanji> Anda dan mengubahnya menjadi <vocabulary>iri</vocabulary> dan <vocabulary>jealousy</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!', 'Iri, Kecemburuan')
    RETURNING id INTO v_8889_iri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苛々する', 'menjadi-iritasi', 21, 141, '<kanji>frustrasi</kanji> ganda akan menyebabkan siapa pun <vocabulary>menjadi kesal</vocabulary>, <vocabulary>menjadi jengkel</vocabulary>, atau <vocabulary>menjadi tidak sabar</vocabulary>.', 'Ini bukan bacaan yang Anda pelajari dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Anda tidak hanya merasa kesal, Anda juga menjadi <reading>ira-ira</reading>-tated (いらいら). Itu tingkat selanjutnya dari kesal.

Kata ini sering kali ditulis dalam katakana atau hiragana, namun terkadang Anda juga akan melihatnya dalam kanji, jadi perlu diketahui!', 'Menjadi Iritasi, Menjadi Kesal, Menjadi Tidak Sabar')
    RETURNING id INTO v_8998_menjadi_iritasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飲酒運転', 'mengemudi-dalam-keadaan-mabuk', 21, 142, 'Anda tahu bahwa 飲酒 berarti "minum alkohol" dan 運転する berarti "mengemudi", jadi masuk akal jika kata ini berarti <kosa kata>mengemudi dalam keadaan mabuk</vocabulary>, atau <vocabulary>minum dan mengemudi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mengemudi Dalam Keadaan Mabuk, Minum dan Mengemudi')
    RETURNING id INTO v_9018_mengemudi_dalam_keadaan_mabuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無くす', 'kehilangan-sesuatu', 21, 143, 'Kata ini diakhiri dengan bunyi う sehingga Anda dapat menebaknya sebagai kata kerja. Kanji tidak berarti <kanji>tidak ada</kanji>, dan cara terbaik untuk tidak mendapatkan apa-apa adalah dengan <vocabulary>kehilangan sesuatu</vocabulary> atau <vocabulary>menyingkirkan</vocabulary> itu.

無くす adalah kata luas yang dapat digunakan ketika Anda kehilangan sesuatu secara tidak sengaja, seperti 財布を無くしちゃった (Saya kehilangan dompet), dan ketika Anda dengan sengaja membuang sesuatu, seperti dalam 戦争を無くす (menghilangkan perang).', 'Kata ini menggunakan kun''yomi, yang sudah Anda pelajari saat mempelajari kata 無し.', 'Kehilangan Sesuatu, Untuk Menyingkirkan, Untuk Disingkirkan')
    RETURNING id INTO v_9086_kehilangan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貰う', 'untuk-menerima-sesuatu', 21, 144, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menerima</kanji>, yang berarti <vocabulary>menerima sesuatu</vocabulary>, atau alternatifnya, <vocabulary>mendapatkan sesuatu dari seseorang</vocabulary> atau <vocabulary>diberikan sesuatu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belajar membaca itu dengan kanji, jadi sebaiknya Anda pergi ke sini!', 'Untuk Menerima Sesuatu, Untuk Mendapatkan Sesuatu Dari Seseorang, Untuk Diberikan Sesuatu')
    RETURNING id INTO v_9260_untuk_menerima_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '立ち去る', 'untuk-pergi', 21, 145, 'Kamu 立つ dan kemudian 去る. Masuk akal, karena untuk <vocabulary>pergi</vocabulary>, Anda harus berdiri terlebih dahulu.

立ち去る menggambarkan tindakan fisik meninggalkan suatu tempat, sering digunakan ketika meninggalkan suatu tempat atau meninggalkan suatu tempat setelah suatu kejadian atau peristiwa.', 'Ini menggabungkan pembacaan dua kata kerja yang sudah Anda ketahui, jadi sebaiknya Anda pergi ke sini!', 'Untuk Pergi, Untuk Pergi, Untuk berangkat')
    RETURNING id INTO v_9283_untuk_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '叶う', 'menjadi-kenyataan', 21, 146, 'Kanji berarti <kanji>menjadi kenyataan</kanji>, dan ini adalah versi kata kerja intransitifnya, yang membuat <vocabulary>menjadi kenyataan</vocabulary> atau <vocabulary>dipenuhi</vocabulary>.', 'Ini merupakan kata kerja, jadi menggunakan bacaan kun''yomi. Untungnya, Anda sudah mempelajarinya dengan kanji, jadi sebaiknya Anda pergi ke sini!', 'Menjadi kenyataan, Untuk Dipenuhi')
    RETURNING id INTO v_9345_menjadi_kenyataan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '実り', 'memanen', 21, 147, 'Ingat bagaimana 実る berarti "menghasilkan buah"? Ini hanyalah versi kata benda dari kata tersebut, jadi artinya <vocabulary>panen</vocabulary>. (Panen yang bagus adalah apa yang Anda dapatkan ketika tanaman Anda benar-benar menghasilkan buah!)

Secara harfiah, 実り mengacu pada buah dan tanaman yang sudah matang dan siap dipanen. Ini agak kuno dan puitis, tetapi Anda mungkin melihatnya dalam frasa seperti 実りの秋 (musim gugur yang subur). Seperti versi kata kerjanya 実る, saat ini kata ini lebih sering digunakan secara kiasan untuk merujuk pada <vocabulary>buah</vocabulary> dari kerja keras.', 'Ini hanyalah versi kata benda dari kata kerja 実る, yang sudah Anda pelajari cara membacanya, jadi sebaiknya Anda membukanya di sini!', 'Memanen, Buah-buahan')
    RETURNING id INTO v_9347_memanen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '餌', 'memberi-makan', 21, 148, 'Kanji dan kata-katanya sama persis, jadi ini berarti <vocabulary>pakan</vocabulary>, <vocabulary>makanan hewani</vocabulary>, atau <vocabulary>umpan</vocabulary>.

餌 mengacu pada makanan yang diberikan kepada hewan, seperti makanan hewan atau umpan yang digunakan untuk memancing. Kata ini juga dapat digunakan secara kiasan untuk menggambarkan godaan seseorang dengan uang atau keuntungan — "umpan" yang digunakan untuk memikat mereka.

Kata ini juga biasa ditulis dalam katakana sebagai エサ.', 'Kata ini terdiri dari satu kanji, sehingga menggunakan bacaan kun''yomi. Untungnya, itulah bacaan yang sudah Anda pelajari!', 'Memberi makan, Makanan Hewani, Umpan')
    RETURNING id INTO v_9457_memberi_makan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '決済', 'pembayaran', 21, 149, 'Setelah Anda <kanji>memutuskan</kanji> suatu transaksi akan <kanji>berakhir</kanji>, langkah selanjutnya adalah melakukan <vocabulary>pembayaran</vocabulary>.

決済 mengacu secara khusus pada penyelesaian transaksi melalui pembayaran. Anda akan menemukannya di jalur pembayaran di toko-toko dengan hal-hal seperti キャッシュレス決済 (pembayaran tanpa uang tunai) dan スマホ決済 (pembayaran seluler), dan Anda juga akan melihatnya selama belanja online ketika Anda memasukkan informasi pembayaran di 決済画面 (layar pembayaran).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya — perhatikan saja pembacaan 決 yang berubah dari けつ menjadi けっ.', 'Pembayaran, Penyelesaian Transaksi')
    RETURNING id INTO v_9500_pembayaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結ぶ', 'untuk-mengikat', 21, 150, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengikat</kanji> atau <kanji>mengikat</kanji>, sehingga versi kosakata kata kerjanya adalah <vocabulary>to tie</vocabulary>. Mengikat juga merupakan cara <vocabulary>yang bagus untuk menghubungkan</vocabulary> berbagai hal, jadi kata kerja ini terkadang juga memiliki arti seperti itu.

Pada intinya, 結ぶ adalah tentang menyatukan berbagai hal dan menciptakan koneksi. Ini bisa bersifat fisik, seperti mengikat tali, tetapi juga biasa digunakan dalam cara yang abstrak, seperti membentuk hubungan atau membuat kontrak.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda memutuskan <vocabulary>untuk mengikat</vocabulary> pita pada <reading>rusa</reading> (むす). Mengapa? Anda akan memberikannya sebagai hadiah kepada seseorang yang ingin Anda <vocabulary>terhubung</vocabulary> dengannya. Tidak ada yang mengatakan "ayo berteman" seperti rusa besar yang diikatkan pita besar dan mewah. Sekarang seandainya rusa besar ini mau berdiri diam sehingga Anda dapat mengikat simpul dengan benar…', 'Untuk Mengikat, Untuk Menghubungkan')
    RETURNING id INTO v_9504_untuk_mengikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '返済', 'pembayaran-kembali', 21, 151, 'Ketika Anda <kanji>mengembalikan</kanji> uang untuk membuat hutang <kanji>berakhir</kanji>, ini disebut <vocabulary>pembayaran</vocabulary>.

返済 mengacu pada <vocabulary>membayar kembali</vocabulary> uang yang secara resmi wajib Anda bayarkan. Biasanya digunakan dalam situasi pembayaran yang lebih formal, seperti membayar kembali hipotek, pinjaman bisnis, atau jenis utang "resmi" lainnya. Dengan kata lain, ini bukanlah kata yang biasa Anda gunakan untuk sesuatu yang biasa-biasa saja, seperti membayar kembali teman untuk makan siang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembayaran kembali, Membayar Kembali')
    RETURNING id INTO v_9509_pembayaran_kembali;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2633_nona, 'Nona', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2633_nona, 'Meleset dari sasaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2633_nona, 'Keliling', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2633_nona, 'Pinggiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3442_masyarakat, 'Masyarakat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3442_masyarakat, 'Dunia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3588_kekaguman, 'Kekaguman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3588_kekaguman, 'Menjadi Terkesan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3588_kekaguman, 'Terpuji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4122_untuk_berdoa, 'Untuk Berdoa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4124_doa, 'Doa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4124_doa, 'Sebuah Doa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4309_untuk_melahirkan, 'Untuk Melahirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4360_siulan, 'Siulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4381_untuk_berpartisipasi, 'Untuk Berpartisipasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4382_peserta, 'Peserta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4383_petugas_polisi, 'Petugas Polisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4383_petugas_polisi, 'Polisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4383_petugas_polisi, 'Polisi wanita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4384_untuk_menaruh_kekacauan, 'Untuk Menaruh Kekacauan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4384_untuk_menaruh_kekacauan, 'Untuk Membuang Rusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4384_untuk_menaruh_kekacauan, 'Untuk Mengganggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4385_asing, 'Asing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4386_pesawat_luar_angkasa, 'Pesawat luar angkasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4386_pesawat_luar_angkasa, 'Pesawat Luar Angkasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4386_pesawat_luar_angkasa, 'kapal luar angkasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4386_pesawat_luar_angkasa, 'Benda terbang aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4386_pesawat_luar_angkasa, 'Pesawat luar angkasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4386_pesawat_luar_angkasa, 'Piring Terbang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4388_untuk_membujuk, 'Untuk Membujuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4388_untuk_membujuk, 'Untuk Meyakinkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4391_menjadi_bingung, 'Menjadi Bingung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4391_menjadi_bingung, 'Menjadi Dalam Gangguan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4392_untuk_mengurangi_sesuatu, 'Untuk Mengurangi Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4392_untuk_mengurangi_sesuatu, 'Untuk Mengurangi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4392_untuk_mengurangi_sesuatu, 'Untuk Mengurangi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4392_untuk_mengurangi_sesuatu, 'Untuk Mengurangi Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4393_untuk_melanjutkan_sesuatu, 'Untuk Melanjutkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4393_untuk_melanjutkan_sesuatu, 'Untuk Terus Berlanjut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4393_untuk_melanjutkan_sesuatu, 'Untuk Melanjutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4394_kata_benda_yang_tepat, 'Kata Benda yang Tepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4396_kata_kerja_transitif, 'Kata kerja transitif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4397_sindikat_kejahatan, 'Sindikat Kejahatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4397_sindikat_kejahatan, 'Yakuza', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4397_sindikat_kejahatan, 'Organisasi Gangster', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4398_mengira, 'Mengira', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4399_geng_pengendara_sepeda_motor, 'Geng Pengendara Sepeda Motor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4399_geng_pengendara_sepeda_motor, 'Geng motor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4399_geng_pengendara_sepeda_motor, 'Biker Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4399_geng_pengendara_sepeda_motor, 'Bosozoku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4401_hentikan, 'Hentikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4401_hentikan, 'Potong BS', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4401_hentikan, 'Itu sudah cukup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4402_prosedur, 'Prosedur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4402_prosedur, 'Formalitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4402_prosedur, 'Proses', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4403_musuh, 'Musuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4403_musuh, 'Lawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4405_musuh_besar, 'Musuh Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4405_musuh_besar, 'Musuh yang Tangguh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4405_musuh_besar, 'Musuh Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4406_tak_ada_taranya, 'Tak ada taranya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4406_tak_ada_taranya, 'Tak terkalahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4408_anggota_komite, 'Anggota Komite', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4408_anggota_komite, 'Anggota Komite', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4409_untuk_dibangkitkan, 'Untuk Dibangkitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4409_untuk_dibangkitkan, 'Untuk Didaftarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4409_untuk_dibangkitkan, 'Untuk Dinominasikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4409_untuk_dibangkitkan, 'Untuk Bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4410_pemilihan, 'Pemilihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4411_segel_seseorang, 'Segel Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4411_segel_seseorang, 'Segel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4411_segel_seseorang, 'Stempel Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4413_seragam, 'Seragam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4414_sistem, 'Sistem', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4415_memaksa, 'Memaksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4415_memaksa, 'Paksaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4415_memaksa, 'Wajib', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4416_kontrol_diri, 'Kontrol Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4416_kontrol_diri, 'Pengendalian Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4417_untuk_bekerja_sebagai, 'Untuk Bekerja Sebagai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4417_untuk_bekerja_sebagai, 'Untuk Melayani Sebagai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4417_untuk_bekerja_sebagai, 'Untuk Dipekerjakan Sebagai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4418_kantor, 'Kantor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4419_kewajiban, 'Kewajiban', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4419_kewajiban, 'Tugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4420_tugas, 'Tugas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4420_tugas, 'Tugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4420_tugas, 'Misi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4422_keseluruhan, 'Keseluruhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4422_keseluruhan, 'Luas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4422_keseluruhan, 'Sintesis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4424_secara_keseluruhan, 'Secara Keseluruhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4424_secara_keseluruhan, 'Keseluruhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4425_untuk_membangun, 'Untuk Membangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4425_untuk_membangun, 'Untuk Mengatur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4426_untuk_mengatur, 'Untuk Mengatur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4426_untuk_mengatur, 'Untuk Mengatur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4427_publik, 'Publik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4427_publik, 'Institusi Publik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4428_konstruksi, 'Konstruksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4428_konstruksi, 'Membangun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4428_konstruksi, 'Pembentukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4429_modal, 'Modal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4430_dana, 'Dana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4431_bahan, 'Bahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4431_bahan, 'Data', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4431_bahan, 'Dokumen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4432_investasi, 'Investasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4433_hak_asasi_manusia, 'Hak asasi Manusia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4434_sebuah_benar, 'Sebuah Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4434_sebuah_benar, 'Benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4436_kondisi, 'Kondisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4436_kondisi, 'Kondisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4436_kondisi, 'Ketentuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4436_kondisi, 'Persyaratan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4437_insiden, 'Insiden', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4437_insiden, 'Kasus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4437_insiden, 'Skandal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4438_menyolok, 'Menyolok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4438_menyolok, 'Menyolok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4438_menyolok, 'mencolok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4439_bagus_sekali, 'Bagus sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4439_bagus_sekali, 'Terpuji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4439_bagus_sekali, 'Menakjubkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4440_prefektur_okayama, 'Prefektur Okayama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4442_bahan_mentah, 'Bahan mentah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4442_bahan_mentah, 'Bahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4442_bahan_mentah, 'Bahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4443_menolak, 'Menolak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4443_menolak, 'Untuk Menolak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4444_keputusan, 'Keputusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4444_keputusan, 'Keputusan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4444_keputusan, 'Kesimpulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4448_kritik, 'Kritik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4449_opsional, 'Opsional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4449_opsional, 'Sukarela', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4449_opsional, 'Sewenang-wenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4450_pemeriksaan, 'Pemeriksaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4450_pemeriksaan, 'Inspeksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4450_pemeriksaan, 'Penyelidikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4451_untuk_memeriksa, 'Untuk Memeriksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4451_untuk_memeriksa, 'Untuk Memeriksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4451_untuk_memeriksa, 'Untuk Memeriksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4453_perjanjian, 'Perjanjian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4453_perjanjian, 'Pakta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4453_perjanjian, 'Perjanjian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4454_disalahkan, 'Disalahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4454_disalahkan, 'Untuk Mengkritik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4454_disalahkan, 'Untuk mencela', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4454_disalahkan, 'Untuk Menuduh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4455_tanggung_jawab, 'Tanggung jawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4456_untuk_menghilangkan, 'Untuk Menghilangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4456_untuk_menghilangkan, 'Untuk menghilangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4456_untuk_menghilangkan, 'Untuk Melewati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4456_untuk_menghilangkan, 'Untuk Meninggalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4457_pertimbangan_kembali, 'Pertimbangan kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4457_pertimbangan_kembali, 'Cerminan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4457_pertimbangan_kembali, 'Menyesali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4458_untuk_meningkatkan, 'Untuk Meningkatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4459_meningkatkan, 'Meningkatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4460_peningkatan_mendadak, 'Peningkatan Mendadak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4460_peningkatan_mendadak, 'Lonjakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4461_kenaikan_pajak, 'Kenaikan Pajak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4461_kenaikan_pajak, 'Naikkan Pajak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4461_kenaikan_pajak, 'Peningkatan Pajak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4462_pajak, 'Pajak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4463_bebas_pajak, 'Bebas Pajak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4463_bebas_pajak, 'Tidak Ada Pajak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4463_bebas_pajak, 'Bebas Bea', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4469_sebenarnya, 'Sebenarnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4469_sebenarnya, 'Benar-benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4469_sebenarnya, 'Realitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4469_sebenarnya, 'Nyata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4470_internasional, 'Internasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4471_samping, 'Samping', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4471_samping, 'Tepian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4471_samping, 'Jurang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4472_untuk_mengakui, 'Untuk Mengakui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4472_untuk_mengakui, 'Untuk Mengenali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4472_untuk_mengakui, 'Untuk Memahami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4472_untuk_mengakui, 'Mengakui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4472_untuk_mengakui, 'Untuk Menyetujui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4473_konfirmasi, 'Konfirmasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4473_konfirmasi, 'Verifikasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4474_untuk_merencanakan, 'Untuk Merencanakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4474_untuk_merencanakan, 'Untuk Skema', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4474_untuk_merencanakan, 'Untuk Mencoba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4476_keadilan, 'Keadilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4476_keadilan, 'Kebenaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4477_aliran, 'Aliran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4477_aliran, 'Prinsip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4477_aliran, 'Doktrin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4478_rasa_tanggung_jawab, 'Rasa Tanggung Jawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4478_rasa_tanggung_jawab, 'Kewajiban Sosial', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4478_rasa_tanggung_jawab, 'Mertua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4479_definisi, 'Definisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4487_korban, 'Korban', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4850_kementerian, 'Kementerian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4850_kementerian, 'Propinsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5134_sashimi, 'Sashimi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5134_sashimi, 'Irisan Ikan Mentah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6457_untuk_mengkompensasi, 'Untuk Mengkompensasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6457_untuk_mengkompensasi, 'Untuk Menebus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7481_na_kata_sifat, 'Na Kata Sifat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7483_realisasi, 'Realisasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7483_realisasi, 'Perasaan Nyata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7483_realisasi, 'Menyadari Sepenuhnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7486_penjelasan, 'Penjelasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7486_penjelasan, 'Komentar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7595_kain, 'Kain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7595_kain, 'Kain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7595_kain, 'Tekstil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7649_karakter, 'Karakter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7649_karakter, 'Alam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7709_pengetahuan, 'Pengetahuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7709_pengetahuan, 'Kiat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7709_pengetahuan, 'Aturan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7709_pengetahuan, 'Memahami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8712_untuk_bangun, 'Untuk Bangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8712_untuk_bangun, 'Untuk Bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8752_kualifikasi, 'Kualifikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8752_kualifikasi, 'Kemampuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8752_kualifikasi, 'Persyaratan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8888_untuk_iri, 'Untuk Iri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8888_untuk_iri, 'Menjadi Iri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8888_untuk_iri, 'Menjadi Cemburu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8889_iri, 'Iri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8889_iri, 'Kecemburuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8998_menjadi_iritasi, 'Menjadi Iritasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8998_menjadi_iritasi, 'Menjadi Kesal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8998_menjadi_iritasi, 'Menjadi Tidak Sabar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9018_mengemudi_dalam_keadaan_mabuk, 'Mengemudi Dalam Keadaan Mabuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9018_mengemudi_dalam_keadaan_mabuk, 'Minum dan Mengemudi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9086_kehilangan_sesuatu, 'Kehilangan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9086_kehilangan_sesuatu, 'Untuk Menyingkirkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9086_kehilangan_sesuatu, 'Untuk Disingkirkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9260_untuk_menerima_sesuatu, 'Untuk Menerima Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9260_untuk_menerima_sesuatu, 'Untuk Mendapatkan Sesuatu Dari Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9260_untuk_menerima_sesuatu, 'Untuk Diberikan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9283_untuk_pergi, 'Untuk Pergi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9283_untuk_pergi, 'Untuk Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9283_untuk_pergi, 'Untuk berangkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9345_menjadi_kenyataan, 'Menjadi kenyataan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9345_menjadi_kenyataan, 'Untuk Dipenuhi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9347_memanen, 'Memanen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9347_memanen, 'Buah-buahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9457_memberi_makan, 'Memberi makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9457_memberi_makan, 'Makanan Hewani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9457_memberi_makan, 'Umpan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9500_pembayaran, 'Pembayaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9500_pembayaran, 'Penyelesaian Transaksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9504_untuk_mengikat, 'Untuk Mengikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9504_untuk_mengikat, 'Untuk Menghubungkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9509_pembayaran_kembali, 'Pembayaran kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9509_pembayaran_kembali, 'Membayar Kembali', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2633_nona, 'はずれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3442_masyarakat, 'よのなか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3588_kekaguman, 'かんしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4122_untuk_berdoa, 'いのる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4124_doa, 'きがん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4309_untuk_melahirkan, 'うむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4360_siulan, 'くちぶえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4381_untuk_berpartisipasi, 'さんかする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4382_peserta, 'さんかしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4383_petugas_polisi, 'けいさつかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4384_untuk_menaruh_kekacauan, 'みだす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4385_asing, 'うちゅうじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4386_pesawat_luar_angkasa, 'うちゅうせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4388_untuk_membujuk, 'せっとくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4391_menjadi_bingung, 'こんらんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4392_untuk_mengurangi_sesuatu, 'へらす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4393_untuk_melanjutkan_sesuatu, 'つづける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4394_kata_benda_yang_tepat, 'こゆうめいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4396_kata_kerja_transitif, 'たどうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4397_sindikat_kejahatan, 'ぼうりょくだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4398_mengira, 'ようぎしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4399_geng_pengendara_sepeda_motor, 'ぼうそうぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4401_hentikan, 'いいかげんにしろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4402_prosedur, 'てつづき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4403_musuh, 'てき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4403_musuh, 'かたき', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4405_musuh_besar, 'たいてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4406_tak_ada_taranya, 'むてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4408_anggota_komite, 'いいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4409_untuk_dibangkitkan, 'あがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4410_pemilihan, 'せんきょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4411_segel_seseorang, 'はんこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4413_seragam, 'せいふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4414_sistem, 'せいど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4415_memaksa, 'きょうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4416_kontrol_diri, 'じせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4417_untuk_bekerja_sebagai, 'つとめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4418_kantor, 'じむしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4419_kewajiban, 'ぎむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4420_tugas, 'にんむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4422_keseluruhan, 'そうごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4424_secara_keseluruhan, 'そうたいてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4425_untuk_membangun, 'もうける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4426_untuk_mengatur, 'せっていする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4427_publik, 'こうせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4428_konstruksi, 'けんせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4429_modal, 'しほん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4430_dana, 'しきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4431_bahan, 'しりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4432_investasi, 'とうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4433_hak_asasi_manusia, 'じんけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4434_sebuah_benar, 'けんり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4436_kondisi, 'じょうけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4437_insiden, 'じけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4438_menyolok, 'はで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4439_bagus_sekali, 'りっぱ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4440_prefektur_okayama, 'おかやまけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4442_bahan_mentah, 'そざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4443_menolak, 'ことわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4444_keputusan, 'はんだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4448_kritik, 'ひはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4449_opsional, 'にんい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4450_pemeriksaan, 'けんさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4451_untuk_memeriksa, 'けんもんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4453_perjanjian, 'じょうやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4454_disalahkan, 'せめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4455_tanggung_jawab, 'せきにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4456_untuk_menghilangkan, 'はぶく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4457_pertimbangan_kembali, 'はんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4458_untuk_meningkatkan, 'ふえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4459_meningkatkan, 'ぞうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4460_peningkatan_mendadak, 'きゅうぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4461_kenaikan_pajak, 'ぞうぜい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4462_pajak, 'ぜいきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4463_bebas_pajak, 'むぜい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4469_sebenarnya, 'じっさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4470_internasional, 'こくさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4471_samping, 'きわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4472_untuk_mengakui, 'みとめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4473_konfirmasi, 'かくにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4474_untuk_merencanakan, 'くわだてる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4476_keadilan, 'せいぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4477_aliran, 'しゅぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4478_rasa_tanggung_jawab, 'ぎり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4479_definisi, 'ていぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4487_korban, 'ひがいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4850_kementerian, 'しょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5134_sashimi, 'さしみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6457_untuk_mengkompensasi, 'うめあわせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7481_na_kata_sifat, 'けいようどうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7483_realisasi, 'じっかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7486_penjelasan, 'かいせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7595_kain, 'ぬのじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7649_karakter, 'えたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7709_pengetahuan, 'こころえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8712_untuk_bangun, 'めざめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8752_kualifikasi, 'しかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8888_untuk_iri, 'うらやむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8889_iri, 'せんぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8998_menjadi_iritasi, 'いらいらする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9018_mengemudi_dalam_keadaan_mabuk, 'いんしゅうんてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9086_kehilangan_sesuatu, 'なくす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9260_untuk_menerima_sesuatu, 'もらう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9283_untuk_pergi, 'たちさる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9345_menjadi_kenyataan, 'かなう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9347_memanen, 'みのり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9457_memberi_makan, 'えさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9500_pembayaran, 'けっさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9504_untuk_mengikat, 'むすぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9509_pembayaran_kembali, 'へんさい', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2633_nona, '何回矢を投げてもダーツボードに当たらなくて、結局全部外れだったよ。', 'Tidak peduli berapa kali saya melempar anak panah, anak panah tersebut tidak mengenai papan dart, dan pada akhirnya, semuanya meleset.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2633_nona, '先生の予想は完全に外れでした。', 'Prediksi sang guru benar-benar melenceng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2633_nona, '男は森の外れの小さな家に住んでいた。', 'Pria itu tinggal di sebuah rumah kecil di pinggiran hutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2633_nona, '王女は、季節外れのドレスを着ていた。', 'Sang putri mengenakan gaun yang tidak sesuai dengan musim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3442_masyarakat, '世の中には、色々な人がいます。', 'Ada berbagai macam orang di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3442_masyarakat, 'それが世の中のルールだ。', 'Itu adalah aturan masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3442_masyarakat, 'この世の中は、安全だと言えるのでしょうか？', 'Bisakah kita mengatakan bahwa dunia ini aman?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3588_kekaguman, '感心なお子さんですね。', 'Anda memiliki anak yang mengagumkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3588_kekaguman, '毎日勉強するなんて、感心、感心。', 'Saya sangat terkesan karena Anda belajar setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3588_kekaguman, 'ケイティには、いつも感心させられっぱなしです。', 'Katie tidak pernah berhenti membuatku terkesan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4122_untuk_berdoa, 'ハリケーンのひがい者のために祈りました。', 'Saya berdoa untuk para korban badai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4122_untuk_berdoa, '国家試験に無事合格できるように祈っています。', 'Saya doakan semoga kalian lulus ujian nasional dengan sukses.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4122_untuk_berdoa, '日本の国技である相撲が、かつては米の豊作を祈る儀式だったことを知ってる日本人がたくさんいるとは思えないな。', 'Saya rasa tidak banyak orang Jepang yang mengetahui olahraga nasional Jepang "sumo" dulunya merupakan ritual berdoa agar panen padi melimpah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4124_doa, '車のバックミラーに、安全祈願のお守りがぶら下がっていた。', 'Jimat doa keselamatan tergantung di kaca spion mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4124_doa, '無事にビザが取れるよう、神社でご祈願してきました。', 'Saya pergi ke kuil untuk berdoa agar saya bisa mendapatkan visa tanpa kesulitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4124_doa, 'ご祈願は、神社でもお寺でもできますよ。', 'Anda dapat berdoa di kuil atau kuil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4124_doa, 'コウイチは、火星人の戦勝祈願のおどりをおどることができます。', 'Koichi bisa melakukan tarian perang Mars.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4309_untuk_melahirkan, 'あの人、去年の冬に赤ちゃんを産んだばかりなのに今年の秋にもまた赤ちゃんを産むんですって。', 'Saya mendengar orang itu baru saja melahirkan bayi pada musim dingin lalu dan dia akan melahirkan bayi lagi pada musim gugur ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4309_untuk_melahirkan, 'カマキリが産んだたまごの中からたくさんの赤ちゃんカマキリが出てきました。', 'Banyak bayi belalang sembah yang keluar dari telur belalang sembah tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4309_untuk_melahirkan, 'よし、もう一度いきむ準備はいいかい？君は双子の赤ちゃんを産むんだよ！ 大丈夫、大丈夫。頑張れ！君ならできるよ！', 'Oke. Anda siap untuk mendorong lagi? Anda akan memiliki anak kembar! Oke, oke, ayolah, kamu bisa melakukannya. Kamu bisa!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4360_siulan, 'その男の子は、うれしそうに口笛をふいていました。', 'Anak laki-laki itu bersiul gembira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4360_siulan, '夜おそくまでオフィスにいると、よく上司が口笛の練習をしている音が聞こえてくる。', 'Saya sering mendengar suara atasan saya sedang berlatih bersiul ketika saya berada di kantor pada larut malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4360_siulan, '口笛が下手くそなので、私が口笛を吹いても犬が来てくれません。', 'Anjing saya tidak mau bersiul karena saya buruk dalam bersiul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4381_untuk_berpartisipasi, 'ジャズ評論家として、とあるセミナーに参加してきました。', 'Saya berpartisipasi dalam seminar sebagai kritikus jazz.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4381_untuk_berpartisipasi, 'クラブ活動に参加するかどうかは、任意です。', 'Berpartisipasi dalam kegiatan klub adalah opsional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4381_untuk_berpartisipasi, '今週の日曜日、摩天楼の見学ツアーに参加します。', 'Saya berpartisipasi dalam tur observasi gedung pencakar langit hari Minggu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4382_peserta, '映画好きのパーティーの最年長参加者は、なんと百才だった。', 'Yang mengejutkan, peserta tertua dalam pesta penonton bioskop tersebut berusia 100 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4382_peserta, 'ある参加者が会議を混乱させてしまってね。さんざんだったよ。', 'Berkat salah satu peserta, rapat menjadi kacau balau. Itu adalah sebuah bencana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4382_peserta, 'コウイチのスピーチは、参加者達から心からの称賛を受けました。', 'Pidato Koichi mendapat pujian yang tulus dari para peserta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4383_petugas_polisi, 'あの警察官はいつも余計な一言が多い。', 'Petugas polisi itu selalu mengucapkan satu kata terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4383_petugas_polisi, 'あの警察官、混乱にまぎれてバックレやがったぞ！', 'Polisi itu lolos dari kebingungan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4383_petugas_polisi, '警察官が容疑者を発見した際、男は丘の上で美しい風景画を描いていました。', 'Saat petugas polisi menemukan tersangka, dia sedang melukis pemandangan indah di puncak bukit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4384_untuk_menaruh_kekacauan, 'そういう発言がみんなの和を乱しているってこと、気づいてないの？', 'Sadarkah Anda kalau komentar seperti itu mengganggu keharmonisan semua orang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4384_untuk_menaruh_kekacauan, 'ADHDの子どもは、生活のリズムを乱されることをイヤがる子が多いです。', 'Banyak anak-anak dengan ADHD tidak suka jika ritme kehidupan mereka tidak teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4384_untuk_menaruh_kekacauan, '髪を乱して走ったが、結局予定の飛行機には間に合わなかった。', 'Aku berlari dengan rambut acak-acakan, namun pada akhirnya aku tidak memenuhi jadwal penerbanganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4385_asing, '宇宙人と友達になってはいけないと言われて、余計になりたくなった。', 'Saat aku diberitahu untuk tidak berteman dengan alien, itu membuatku semakin ingin melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4385_asing, '平たく言えば、私達も宇宙人だよね。', 'Sederhananya, kita juga alien, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4385_asing, 'コウイチの写真は、火星で干ばつと大恐慌の犠牲となった宇宙人たちを正直に、かつ同情を込めてとらえている。', 'Foto-foto Koichi secara jujur ​​dan penuh simpati menggambarkan alien yang menjadi korban kekeringan dan Depresi Besar di Mars.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4386_pesawat_luar_angkasa, '敵からのいきなりのアタックで、宇宙船は大混乱となった。', 'Serangan musuh yang tiba-tiba membuat pesawat luar angkasa menjadi kacau balau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4386_pesawat_luar_angkasa, 'この宇宙船での生活には、きびしいルールが設けられています。', 'Aturan ketat telah ditetapkan untuk hidup di pesawat luar angkasa ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4386_pesawat_luar_angkasa, '十六台の宇宙船のほとんど全てが、保持され改装されました。', 'Hampir seluruh enam belas pesawat ruang angkasa dipertahankan dan diperbaharui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4388_untuk_membujuk, 'ロックミュージシャンになるには、親父を説得する必要がある。', 'Untuk menjadi musisi rock, saya perlu membujuk ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4388_untuk_membujuk, '余計な物を買いすぎないよう、妻を説得しました。', 'Saya membujuk istri saya untuk tidak membeli barang-barang yang tidak diperlukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4388_untuk_membujuk, 'ベーコンの密売ビジネスから足を洗うよう兄を説得するのは、容易なことではなかった。', 'Tidak mudah meyakinkan saudara laki-laki saya untuk keluar dari bisnis penyelundupan daging babi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4391_menjadi_bingung, 'ユーザーの多くは、ワニカニのサブスクリプションが安くなったことに混乱した。', 'Banyak pengguna yang bingung ketika biaya berlangganan WaniKani diturunkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4391_menjadi_bingung, '東日本大震災では、東京周辺の人々は混乱することもなく、ただ自分にできることをしていた。', 'Saat terjadi Gempa Besar di Jepang Timur, masyarakat di sekitar Tokyo tidak panik, mereka hanya melakukan apa yang mereka bisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4391_menjadi_bingung, '君はおそらく混乱すると思うけど、弟は今、死への恐怖を克服しようと必死で努力しているところなの。だから、そっとしておいてあげてくれないかな？', 'Kamu mungkin akan bingung, tapi saat ini kakakku sedang berusaha mengatasi rasa takutnya akan kematian, jadi tolong tinggalkan dia sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4392_untuk_mengurangi_sesuatu, '先生に宿題をちょっとだけ減らしてもらいました。', 'Saya meminta guru saya mengurangi jumlah pekerjaan rumah yang diberikan kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4392_untuk_mengurangi_sesuatu, 'クリームの量を減らすようお願いしたんですが、聞き入れてもらえませんでした。', 'Saya meminta mereka mengurangi jumlah krimnya, tetapi mereka tidak menerima permintaan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4392_untuk_mengurangi_sesuatu, 'その疫病は、河豚の数をそれまでの水準の半分に減らした。', 'Wabah tersebut mengurangi jumlah ikan buntal menjadi setengah dari jumlah sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4393_untuk_melanjutkan_sesuatu, 'これからもずっとワニカニを続けるつもりです♡', 'Saya akan melanjutkan WaniKani selamanya ♡');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4393_untuk_melanjutkan_sesuatu, 'どうしてあなた達は私のことを批判し続けるのですか？', 'Mengapa kalian semua terus mengkritik saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4393_untuk_melanjutkan_sesuatu, '一日中寝続けられるので、週末は最高だ。', 'Akhir pekan itu menyenangkan karena saya bisa terus tidur sepanjang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4394_kata_benda_yang_tepat, 'しりとりに固有名詞は使えません。', 'Anda tidak dapat menggunakan kata benda yang tepat dalam game Shiritori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4394_kata_benda_yang_tepat, '固有名詞と名詞はどうちがいますか。', 'Apa bedanya kata benda dengan kata benda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4394_kata_benda_yang_tepat, '分からない単語を辞書で一生懸命探してたんだけど、見つからないと思ったら、固有名詞だった。', 'Dengan penuh semangat aku mencari kata yang tidak kukenal di kamus, namun tidak kutemukan dan ternyata itu hanya kata benda saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4396_kata_kerja_transitif, '他動詞は目的語を取ります。', 'Kata kerja transitif mengambil objek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4396_kata_kerja_transitif, 'ここに書いてある他動詞を全部自動詞に書きかえてください。', 'Silakan ubah semua kata kerja transitif ini menjadi kata kerja intransitif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4396_kata_kerja_transitif, 'その動詞が他動詞か自動詞かを学ぶには、まる暗記するしかないのかな。', 'Apakah menghafal satu-satunya cara untuk mengetahui apakah kata kerjanya transitif atau intransitif?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4397_sindikat_kejahatan, '余計な事を言うようだけど、暴力団から足を洗った方がいいと思うよ。', 'Bukannya kamu memintaku, tapi menurutku kamu harus meninggalkan yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4397_sindikat_kejahatan, '父は私が暴力団に入ることを認めてくれないでしょう。', 'Ayah saya tidak akan pernah menyetujui saya bergabung dengan organisasi gangster.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4397_sindikat_kejahatan, '暴力団と関東連合の違いは何ですか？', 'Apa perbedaan antara Yakuza dan Kanto Rengo?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4398_mengira, '容疑者は、自分の罪を認めた。', 'Tersangka mengakui kesalahannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4398_mengira, 'その容疑者は、十代の若者たちにオプティミズムのメッセージを伝えた。', 'Tersangka menyampaikan pesan optimisme kepada para remaja tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4398_mengira, 'サトシはみたらし団子毒殺事件の容疑者として指名手配されたらしいよ。', 'Rupanya Satoshi dicari sebagai tersangka Kasus Keracunan Pangsit Manis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4399_geng_pengendara_sepeda_motor, '暴走族は、アライグマをひいたことを認めた。', 'Geng motor tersebut mengaku sempat menabrak rakun tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4399_geng_pengendara_sepeda_motor, '暴走族に入るなんて、ゼッタイにゼッタイに認めませんよ。', 'Saya tidak akan pernah mengakui Anda bergabung dengan geng pengendara motor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4399_geng_pengendara_sepeda_motor, 'ビエトさん、あなたが暴走族をしていた頃のエピソードについて、早急にお返事いただけると幸いです。', 'Pak Viet, saya akan berterima kasih jika Anda bisa membalas secepatnya tentang waktu yang Anda habiskan di geng motor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4401_hentikan, 'いい加減にしろ！最近判断ミスが多すぎるぞ。', 'Itu sudah cukup! Anda telah membuat terlalu banyak kesalahan dalam penilaian akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4401_hentikan, '審判のやつら、マジでいい加減にしろ！', 'Potong BS, referensi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4401_hentikan, 'ビエトはあまりにも怒っていたので、コウイチを殴って「いい加減にしろ！」と叫ばずにはいられなかった。', 'Viet sangat marah sehingga dia tidak bisa menahan diri untuk tidak meninju Koichi dan berteriak, "Hentikan!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4402_prosedur, 'みんな、面倒な手続きはしたくないよ！', 'Semua orang ingin menghindari formalitas yang merepotkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4402_prosedur, '先週、子どもを学校に入学させる手続きを終えました。', 'Minggu lalu saya menyelesaikan proses pendaftaran anak saya di sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4402_prosedur, '手続きが複雑で、頭が混乱してどうしていいか分からなくなりました。', 'Prosedurnya sangat rumit dan saya menjadi sangat bingung hingga tidak tahu harus berbuat apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4403_musuh, '「フグ、あなたはどっちの味方なの？私の敵なの？」「僕は君の味方だよ、サーモン。」', '"Kamu berada di pihak mana, Fugu? Apakah kamu musuhku?" "Aku di pihakmu, Salmon."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4403_musuh, 'ビエトは自分だけの判断で、敵のアジトに向かった。', 'Viet mengambil tindakan sendiri dan menuju ke tempat persembunyian musuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4403_musuh, 'いつかアイツに、親の敵を討ちたいんです。', 'Saya ingin membalas dendam pada orang itu demi orang tua saya suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4405_musuh_besar, 'ワニカニの大敵はだれだと思いますか？', 'Menurutmu siapa saingan Wanikani?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4405_musuh_besar, 'オレたちの大敵が、ついに敗北を認めたぞ。', 'Musuh bebuyutan kita akhirnya mengakui kekalahannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4405_musuh_besar, '分かっていると思うけど、油断大敵だよ。「サルも木から落ちる」って言うだろう？', 'Seperti yang Anda ketahui, kecerobohan adalah musuh terbesar manusia. Orang bilang "monyet pun jatuh dari pohon", bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4406_tak_ada_taranya, 'しりとりで、コウイチは無敵だ。', 'Koichi tidak terkalahkan di Shiritori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4406_tak_ada_taranya, '整形して、みんなから可愛すぎる無敵な女だって思われたい。', 'Saya ingin menjalani operasi plastik agar orang-orang mengira saya adalah wanita yang menawan dan tak tertandingi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4406_tak_ada_taranya, 'うちの息子は、無敵のヒーローに憧れています。', 'Putra kami mengagumi pahlawan yang tak terkalahkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4408_anggota_komite, 'あの委員は、すぐれた判断力を持っていますね。', 'Anggota komite itu punya penilaian yang bagus, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4408_anggota_komite, 'その委員会の委員長は、森島君です。', 'Morishima-kun adalah ketua panitia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4408_anggota_komite, '風紀委員は、保健体育の授業で教師が夢精について生徒たちに教える必要は無いと判断した。', 'Komite disiplin sekolah memutuskan bahwa guru tidak perlu mengajari siswa tentang mimpi basah di kelas pendidikan jasmani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4409_untuk_dibangkitkan, '先生がそう言うと、たくさん手が挙がった。', 'Ketika guru mengatakan itu, banyak tangan yang terangkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4409_untuk_dibangkitkan, 'その時にトムの名前が挙がってましたね。', 'Nama Tom disebutkan pada saat itu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4409_untuk_dibangkitkan, '自分がヒゲ大賞の候補に挙がっているなんて、信じられないよ。', 'Saya tidak percaya saya dinominasikan untuk Penghargaan Kumis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4410_pemilihan, '選挙の話と関係のないことを持ち出して、頭を混乱させるのは止めてくれ。', 'Jangan coba-coba membingungkan saya dengan mengungkit hal-hal yang tidak ada hubungannya dengan pemilu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4410_pemilihan, '今回の選挙結果には多くの人が批判的で、もう一度選挙し直すべきだと言っています。', 'Banyak orang yang mengkritik hasil pemilu kali ini, dan mereka mengatakan semuanya harus diulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4410_pemilihan, 'コウイチは、選挙演説中にブルースを歌って声がつぶれた。', 'Koichi kehilangan suaranya karena menyanyikan lagu blues selama pidato pemilihannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4411_segel_seseorang, '判子屋さんで、判子を注文しました。', 'Saya memesan segel pribadi saya di toko segel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4411_segel_seseorang, 'ここにはサイン、そこには判子をお願いします。', 'Silakan tanda tangan di sini dan tempelkan stempel Anda di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4411_segel_seseorang, 'この書類には、コウイチによって公的な判子が押されています。', 'Dokumen ini secara resmi disegel oleh Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4413_seragam, '高校の制服はセーラー服だった？それともブレザーだった？', 'Apakah seragam SMA Anda bergaya pelaut atau bergaya blazer?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4413_seragam, 'あの高校の制服が可愛いことは、みんな認めている。', 'Semua orang mengakui bahwa seragam sekolah menengah itu lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4413_seragam, 'アヤに、制服を着た女の子の絵を、立体派の画風を取り込みながら描いてもらいたいんだよね。', 'Saya ingin Aya menggambar gadis-gadis berseragam sekolah dan mengintegrasikan gaya kubisme ke dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4414_sistem, 'これは、新制度についての初心者向けガイドブックです。', 'Buku panduan untuk sistem baru ini ditujukan bagi pemula.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4414_sistem, 'まず始めに、トーフグの社員教育制度の話を聞かせてください。', 'Pertama, silakan mulai dengan memberi tahu kami tentang sistem pendidikan Tofugu untuk karyawannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4414_sistem, 'マサオなら、その制度について健全な判断をしてくれるはずです。', 'Jika kita bertanya pada Masao, dia seharusnya bisa memberi kita penilaian yang masuk akal tentang sistem itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4415_memaksa, 'えー、でも、強制されて学んだ知識って、すぐ忘れちゃうじゃん？', 'Ah, tapi bukankah ilmu yang terpaksa kamu pelajari akan cepat terlupakan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4415_memaksa, 'もちろん全社員が社員旅行に参加することが望ましいけど、強制ではないですよ。', 'Tentu saja seluruh partisipasi pekerja dalam retret perusahaan diharapkan, namun tidak wajib.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4415_memaksa, '母は、フグと私がこのアール・デコ様式の建物に引っ越すよう強制しました。', 'Ibu saya memaksa Fugu dan saya pindah ke properti art-deco bersejarah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4416_kontrol_diri, '私としては、断然フランボワイヤン様式の方が良かったんですが、そこはまぁ自制しています。', 'Saya lebih suka gaya flamboyan, tapi saya melatih pengendalian diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4416_kontrol_diri, 'お酒を飲み始めると、自制がうまくきかなくなるんです。', 'Saat saya mulai minum, saya cenderung kehilangan kemampuan mengendalikan diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4416_kontrol_diri, '自制の出来ない人は、株式投資はしない方がいい。', 'Orang yang tidak memiliki pengendalian diri sebaiknya tidak berinvestasi di saham.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4417_untuk_bekerja_sebagai, '父は去年まで四十年間警察官を務めました。', 'Ayah saya bekerja sebagai petugas polisi selama empat puluh tahun hingga tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4417_untuk_bekerja_sebagai, 'コウイチは色々な星からやってきた宇宙人をお世話するという大役を務めた。', 'Koichi berperan penting dalam merawat alien dari berbagai planet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4417_untuk_bekerja_sebagai, '田村さんは田中さんの個人秘書を一年間務めたんだけど、あまりうまくいかなかったんだよね。', 'Pak Tamura dipekerjakan sebagai sekretaris pribadi Bu Tanaka selama satu tahun, tapi tidak berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4418_kantor, 'この事務所では、喫煙は認められていません。', 'Merokok tidak diperbolehkan di kantor ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4418_kantor, 'この事務所には、余計な金はビタ一文も無いんだよ。', 'Tidak ada uang tambahan sepeser pun di kantor ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4418_kantor, '当社トーフグの事務所を簡単にご案内させてください。', 'Izinkan saya segera mengajak Anda berkeliling kantor Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4419_kewajiban, '家事をするのは、妻の義務だと言う人がいますが、本当にそうなんでしょうか？', 'Ada yang bilang kalau mengerjakan pekerjaan rumah adalah kewajiban istri, tapi benarkah demikian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4419_kewajiban, '審判は、公平な判断を下す義務があります。', 'Wasit mempunyai kewajiban untuk melakukan keputusan yang adil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4419_kewajiban, 'それって、守秘義務の違反になるんじゃないですか？', 'Tapi bukankah itu merupakan pelanggaran kerahasiaan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4420_tugas, '美味しい混ぜご飯を作ることが、あなたの任務です。', 'Tugas Anda adalah membuat sajian nasi campur yang lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4420_tugas, '今朝のニュース番組で、キャスターが国会議員の任務について解説していたのを見ただけだよ。', 'Saya baru saja menonton acara berita pagi ini di mana pembawa acara menjelaskan tugas anggota Diet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4420_tugas, '任務完了前に撤退することは許されないとコウイチに言われました。', 'Koichi memberitahuku bahwa aku tidak diperbolehkan pergi sebelum menyelesaikan misi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4422_keseluruhan, 'ワニカニは、総合すると良くできたサイトです。', 'Secara keseluruhan, WaniKani adalah situs web yang dibangun dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4422_keseluruhan, 'うちのクラスは、体育大会の総合の部で一位になりました。', 'Kelas kami menempati posisi pertama secara keseluruhan dalam kompetisi hari olahraga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4422_keseluruhan, 'オリンピックの総合メダル獲得数では、アメリカが一位だった。', 'Amerika mendapat tempat pertama dalam total medali keseluruhan di Olimpiade.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4424_secara_keseluruhan, 'この旅では色々な事件が起きましたが、総体的にはとても楽しかったです。', 'Meskipun ada banyak kejadian selama perjalanan ini, secara keseluruhan tetap sangat menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4424_secara_keseluruhan, '毎日エクササイズをすることで、生活が総体的に改善した。', 'Berolahraga setiap hari telah meningkatkan hidup saya secara keseluruhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4424_secara_keseluruhan, '我々は、お客様に総体的に満足して頂けるよう努力しています。', 'Kami berusaha untuk kepuasan pelanggan total.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4425_untuk_membangun, 'トーフグがついに日本支店を設けるというウワサを聞いたんだけど、本当かな？', 'Saya mendengar rumor bahwa Tofugu akhirnya akan membuka cabang di Jepang, tapi saya penasaran apakah itu benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4425_untuk_membangun, '社長、今度はオフィスにサウナを設けるつもりらしいですよ。', 'Saya dengar presiden berencana mendirikan sauna di kantor kali ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4425_untuk_membangun, 'コウイチは、新しい従業員規則を設けることを検討しているようです。', 'Rupanya Koichi sedang mempertimbangkan untuk membuat peraturan baru bagi karyawannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4426_untuk_mengatur, 'あなたの新しいビジネス用のメールアカウントを、グーグルに設定しました。', 'Saya menyiapkan akun email bisnis baru di Google untuk Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4426_untuk_mengatur, 'クーラーはいつも何度に設定していますか？', 'Berapa suhu yang biasanya Anda atur AC Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4426_untuk_mengatur, '今日中に全てのアカウントの二段階認証を設定しないと、会社を首になるんです。', 'Saya harus menyiapkan otentikasi dua faktor dengan semua akun yang saya miliki pada akhir hari atau saya akan dipecat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4427_publik, '来年度から、公設の委員会を設けることになりました。', 'Mulai tahun depan kami akan membentuk komite publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4427_publik, '確かあの公園に公設の便所があったはずだよ。', 'Jika kuingat dengan benar, menurutku ada toilet umum di taman itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4427_publik, 'もし沖縄を旅行するなら、牧志公設市場に行った方がいいよ。', 'Jika Anda berwisata ke Okinawa, Anda harus pergi ke Pasar Umum Makishi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4428_konstruksi, 'パンテオンは、ローマ市内のマルス広場に建設されました。', 'Pantheon dibangun di Kampus Martius di kota Roma.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4428_konstruksi, 'その空港、まだ建設中なの？本当に完成するのかな？', 'Apakah bandara itu masih dalam tahap pembangunan? Aku ingin tahu apakah ini akan selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4428_konstruksi, 'ゴジラが破壊したビルは、だれが建設し直すの？', 'Siapa yang akan membangun kembali bangunan yang dihancurkan Godzilla?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4429_modal, 'ベンチャー・キャピタル、いわゆる冒険資本が不足するには、ワケがあります。', 'Ada alasan kekurangan modal ventura.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4429_modal, '資本回転率を求める公式ってどんなのだったっけ？', 'Apa rumus menghitung rasio perputaran modal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4429_modal, '他人資本と株主資本で、どちらの資本でビジネスを始めるか迷っています。', 'Saya bertanya-tanya apakah saya harus memulai bisnis saya dengan dana luar atau dana pemegang saham.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4430_dana, 'あまり資金がなくても、新しい事業は始められますよ。', 'Anda tidak memerlukan modal yang besar untuk memulai bisnis baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4430_dana, '資金が底をつき始めたときに、パリであのお方にお会いしたのです。', 'Saat kami mulai kehabisan modal, kami bertemu orang itu di Paris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4430_dana, 'トーフグは、YouTubeのコンテンツ制作に多額の資金を投じました。', 'Tofugu menginvestasikan banyak modal dalam produksi konten YouTube.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4431_bahan, '色んな資料が、箱の中で混ぜこぜになっていました。', 'Berbagai bahan tercampur di dalam kotak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4431_bahan, 'その警察官は、資料の情報だけで事件を解決してしまった。', 'Petugas polisi telah menyelesaikan kasus ini hanya dengan menggunakan informasi dalam dokumen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4431_bahan, 'もしよろしければ、いくつか資料をお送りさせて頂けませんでしょうか？', 'Jika Anda tidak keberatan, bisakah saya mengirimkan beberapa data kepada Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4432_investasi, 'リスクの高い投資商品にまで手を出したくはないんです。', 'Saya tidak ingin terlibat dalam investasi berisiko tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4432_investasi, 'コウイチは、ビエトに投資判断を求めました。', 'Koichi meminta keputusan investasi kepada Viet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4432_investasi, '投資するなら自己責任でやらないといけませんよ。', 'Jika Anda berinvestasi, lakukan dengan risiko Anda sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4433_hak_asasi_manusia, '十二月十日は世界人権デーです。', 'Tanggal 10 Desember adalah Hari Hak Asasi Manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4433_hak_asasi_manusia, '人権を軽んじるような企業で働かない方がいいよ。', 'Anda tidak boleh bekerja di perusahaan yang tidak menghormati hak asasi manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4433_hak_asasi_manusia, '服装規定が人権侵害にあたることがあるという人もいますが、それについてどう思いますか？', 'Ada yang bilang bahwa dress code bisa melanggar hak asasi manusia. Apa pendapat Anda tentang hal itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4434_sebuah_benar, '私たちには反対する権利があります。', 'Kami mempunyai hak untuk menolak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4434_sebuah_benar, 'これは国民の権利です。', 'Ini adalah hak warga negara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4434_sebuah_benar, '日本では、選挙で投票する権利が20才から18才に引き下げられました。', 'Di Jepang, usia yang memenuhi syarat untuk berhak memilih diturunkan dari dua puluh menjadi delapan belas tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4436_kondisi, 'その条件を聞いて、すっかり目が覚めたよ。', 'Mendengar istilah-istilah itu membuatku terjaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4436_kondisi, 'フグ、金曜の夜の飲み会に行ってもいいけど、一つだけ条件があるわ。お酒は飲まないでね。', 'Fugu, kamu boleh pergi ke pesta minum pada Jumat malam, tapi dengan satu syarat - kamu tidak boleh minum alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4436_kondisi, 'こんな条件のいい仕事、どうして棒に振っちゃったのさ？', 'Mengapa Anda membuang pekerjaan dengan kondisi kerja yang baik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4437_insiden, '会社に向かっていると、ある事件が起こった。', 'Ada kejadian dalam perjalananku ke tempat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4437_insiden, '５年前、この町の銀行からお金が消える事件があったんです。', 'Lima tahun lalu, ada kasus uang hilang dari bank di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4437_insiden, '昨日のテロ事件のニュース見た？', 'Apakah Anda melihat berita tentang serangan teroris kemarin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4438_menyolok, 'ドレスが派手すぎるから、ブライズ・メイドにはなりたくないんだよね。', 'Saya tidak ingin menjadi pengiring pengantin karena gaunnya terlalu mencolok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4438_menyolok, '日本では三十年ほど前は派手なファッションが流行していました。', 'Busana mencolok merupakan tren sekitar 30 tahun lalu di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4438_menyolok, 'あの子、見た目は派手だけどああ見えて中身はとても繊細なのよ。', 'Gadis itu mungkin terlihat mencolok, tapi meski berpenampilan, dia sebenarnya sangat sensitif di dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4439_bagus_sekali, 'あの会社、うわべだけは立派だよね。', 'Perusahaan itu hanya mengagumkan di permukaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4439_bagus_sekali, 'お前も立派な映画評論家になったもんだなぁ。', 'Anda telah menjadi kritikus film yang hebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4439_bagus_sekali, '私の猫は立派な髯を生やしているので、「ヒゲ」と名付けました。', 'Kumis kucingku tumbuh sangat indah, jadi aku menamainya Hige.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4440_prefektur_okayama, '私の父は岡山県出身です。', 'Ayah saya berasal dari Prefektur Okayama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4440_prefektur_okayama, '岡山県は、地震で大混乱となりました。', 'Gempa bumi membawa kekacauan besar di prefektur Okayama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4440_prefektur_okayama, '岡山県は晴れの日が多いことで有名です。', 'Prefektur Okayama terkenal dengan cuacanya yang cerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4442_bahan_mentah, 'その素材を選んだアヤの判断は正しかった。', 'Aya benar dalam keputusannya memilih bahan mentah itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4442_bahan_mentah, 'このレストランでは、素材そのものの味を楽しんでもらうため、味付けはひかえめにしています。', 'Di restoran ini, bumbu diminimalkan agar Anda dapat menikmati rasa alami dari bahan-bahannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4442_bahan_mentah, '著作権フリーの素材を探しています。', 'Saya mencari materi bebas hak cipta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4443_menolak, 'その仕事、断るべきだと思う？', 'Apakah menurut Anda saya harus menolak pekerjaan itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4443_menolak, 'ビエトは次期国務長官に任命されたが、断った。', 'Viet diangkat sebagai Menteri Luar Negeri berikutnya, tapi dia menolak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4443_menolak, '野球の試合の主審を頼まれたけど、断りました。サッカーの試合の主審だったら引き受けたんだけどね。', 'Saya diminta menjadi ketua wasit pertandingan bisbol, namun saya menolak tawaran tersebut. Aku akan melakukannya jika itu untuk ketua wasit pertandingan sepak bola.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4444_keputusan, '私の判断は間違っていた。', 'Penilaian saya salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4444_keputusan, 'あの時、判断を誤らなければ、大金持ちになれていたのに。', 'Jika saya tidak membuat keputusan yang salah, saya akan menjadi sangat kaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4444_keputusan, '食用キノコか毒キノコの判断は、素人には難しい。', 'Sulit bagi seorang amatir untuk menilai apakah suatu jamur dapat dimakan atau beracun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4448_kritik, '批判の的となっても仕方がないと思っている。', 'Terkadang Anda mau tidak mau menjadi sasaran kritik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4448_kritik, 'できるだけ批判的な目であらゆる物事を見るよう心がけています。', 'Saya mencoba melihat segala sesuatunya sekritis mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4448_kritik, 'ビエトは暴力団から賄賂を受け取ったことを厳しく批判されました。', 'Viet dikritik habis-habisan karena menerima suap dari yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4449_opsional, 'フォローは任意です。', 'Anda dapat mengikuti saya secara sukarela.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4449_opsional, '任意の八ケタの数字を選んでください。', 'Silakan pilih nomor 8 digit mana saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4449_opsional, '名前と住所は法律で答えなくてはいけないと決まっているものですか？それとも任意ですか？', 'Apakah secara hukum saya harus memberi tahu Anda nama dan alamat saya, atau ini opsional?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4450_pemeriksaan, '病院で検査を受けました。', 'Saya menerima pemeriksaan di rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4450_pemeriksaan, '検査の結果、エンジンには何も問題ありませんでした。', 'Setelah diperiksa, kami tidak menemukan ada yang salah dengan mesinnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4450_pemeriksaan, '北米でギョウ虫検査があまり一般的ではないなんて、驚きです。', 'Saya terkejut tes cacing kremi tidak umum dilakukan di Amerika Utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4451_untuk_memeriksa, 'ほら、あそこで警察が検問しているよ。', 'Hei lihat, polisi sedang memeriksa orang-orang di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4451_untuk_memeriksa, '警察が私の車を検問している時、ドキドキしました。', 'Saat polisi memeriksa mobilku, jantungku berdebar kencang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4451_untuk_memeriksa, '成田空港の検問所で検問している警備員の中には、トレーニング中の警備員もいます。', 'Beberapa petugas keamanan yang memeriksa orang di pos pemeriksaan Bandara Narita sedang menjalani pelatihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4453_perjanjian, '兄は図書館からパリ条約に関する本を三冊とヴェルサイユ条約に関する本を二冊借りてきました。', 'Kakak laki-laki saya mengeluarkan tiga buku tentang Perjanjian Paris dan dua buku tentang Perjanjian Versailles dari perpustakaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4453_perjanjian, 'この条約は、委員会の判断に基いて取り決められたものです。', 'Perjanjian ini dibuat berdasarkan kesimpulan panitia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4453_perjanjian, 'コウイチの今年の抱負は、ベルサイユ条約の全文を暗記することです。', 'Resolusi Tahun Baru Koichi adalah menghafal seluruh teks Perjanjian Versailles.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4454_disalahkan, '「自分でちゃんとチェックするべきだったよ。」「そんなに自分を責めないで。あなたのせいじゃないわよ。」', '"Seharusnya aku memeriksanya sendiri." “Jangan salahkan dirimu sendiri. Itu bukan salahmu.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4454_disalahkan, '台風で電車のダイヤが混乱してただけなんだから、マイケルさんを責めるのはおかしいよ。', 'Topan tersebut mengganggu jadwal kereta, jadi menyalahkan Michael adalah hal yang tidak masuk akal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4454_disalahkan, '子どもが熱を出したんだけど、判断を誤って病院に連れて行かなかったら肺炎になっちゃってね。後で妻からひどく責められたよ。', 'Anak kami demam, tapi saya mengacau dan tidak membawanya ke rumah sakit, sehingga dia menderita pneumonia. Istri saya kemudian menegur saya dengan kasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4455_tanggung_jawab, 'それは私の責任です。なので、私が責任を取ります。', 'Itu adalah tanggung jawab saya, jadi saya akan mempertanggungjawabkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4455_tanggung_jawab, '親には子どもを守る責任があるんだよ！', 'Orang tua mempunyai tanggung jawab untuk melindungi anak-anak mereka!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4455_tanggung_jawab, '日本のサラリーマンは責任を取る事を嫌がることが多い。', 'Para pegawai di Jepang cenderung tidak suka mengambil tanggung jawab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4455_tanggung_jawab, '責任が誰にあるかの判断は一旦保留にして、まずは遅れを取り戻そう。', 'Mengapa kita tidak menghakimi siapa pun yang bertanggung jawab, dan mulai dengan mengganti waktu yang hilang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4456_untuk_menghilangkan, '最近はとても忙しいので、夕食を作る手間を省いてテイクアウトばかりしています。', 'Aku sangat sibuk akhir-akhir ini, jadi aku melewatkan persiapan makan dan hanya membeli makan malam untuk dibawa pulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4456_untuk_menghilangkan, '説明がたくさん省かれていたので理解できませんでした。', 'Banyak penjelasan yang diabaikan, jadi saya tidak dapat memahaminya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4456_untuk_menghilangkan, 'このロボットが多くの人手を省くはずだったが、状況は変化しないままである。', 'Robot ini seharusnya menghemat banyak tenaga kerja, namun situasinya tetap tidak berubah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4457_pertimbangan_kembali, '反省しているので、そんなにきつく当たらないでください。', 'Aku sudah merenungkannya, jadi tolong jangan terlalu keras padaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4457_pertimbangan_kembali, '弟は、私よりも余計に反省していた。', 'Adik laki-laki saya lebih mempertimbangkannya daripada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4457_pertimbangan_kembali, 'コウイチ大統領とビエト副大統領は反省会を開いた。', 'Presiden Koichi dan Wakil Presiden Viet mengadakan pertemuan postmortem.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4458_untuk_meningkatkan, 'ここ2、3年、ビエトが一日に飲むお酒、かなり増えてるんだよね。', 'Selama beberapa tahun terakhir, jumlah alkohol harian di Vietnam telah meningkat pesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4458_untuk_meningkatkan, 'もう少し建設的な批判が増えるといいんだけど。', 'Alangkah baiknya jika kritik yang membangun sedikit ditingkatkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4458_untuk_meningkatkan, '母の黒髪に交じった白髪の量が、以前より増えている気がした。', 'Rasanya jumlah uban yang bercampur dengan rambut hitam ibuku bertambah sejak terakhir kali aku melihatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4459_meningkatkan, 'ビエトがこの町を去ってから、 犯罪は着実に増加している。', 'Kejahatan terus meningkat sejak Viet meninggalkan kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4459_meningkatkan, 'この辺りでは、日本食レストランの数が増加しています。', 'Jumlah restoran Jepang telah meningkat di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4459_meningkatkan, 'お正月に餅を食べ過ぎて、体重が五十キロも増加した。', 'Saya makan terlalu banyak mochi pada Tahun Baru dan berat badan saya bertambah 50 kilogram.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4460_peningkatan_mendadak, '近年の、自制心が欠けている若者の急増について、フグ先生はどうお考えですか。', 'Apa pendapat Anda tentang peningkatan mendadak jumlah anak muda yang kurang memiliki pengendalian diri dalam beberapa tahun terakhir, Dr. Fugu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4460_peningkatan_mendadak, 'ちょっとした批判も受け入れられない人が急増している気がします。', 'Saya merasa tiba-tiba ada peningkatan dalam jumlah orang yang tidak bisa menerima kritik sekecil apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4460_peningkatan_mendadak, '振り付け師になるのが夢だという子どもが、急増しています。', 'Jumlah anak yang bercita-cita menjadi koreografer meningkat secara tiba-tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4461_kenaikan_pajak, '増税するなんて、ゼッタイに認めません。', 'Saya tidak akan pernah menerima kenaikan pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4461_kenaikan_pajak, '増税のせいで、五十円余計にかかった。', 'Karena kenaikan pajak, saya harus membayar tambahan 50 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4461_kenaikan_pajak, 'さっき届いた請求書の固定資産税が、50%も増税されてたんだけど、間違いだよね。そうであってほしい。', 'Di tagihan yang baru datang, pajak bumi dan bangunan saya sudah dinaikkan 50%, tapi itu salah kan? Setidaknya saya berharap demikian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4462_pajak, '税金でゴルフに参加するとか、ありえなくない？', 'Benar-benar tidak dapat diterima kalau dia menggunakan uang pajak kita untuk golf, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4462_pajak, '税金の勉強をしたかったのですが、どうやらフグの私には難しすぎたようです。', 'Aku ingin belajar pajak, tapi sepertinya itu terlalu sulit untuk orang bodoh sepertiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4462_pajak, '私の両親があなたを養子縁組したのは、ただ税金の控除を受けたかったのが理由です。', 'Orang tuaku mengadopsimu hanya karena mereka membutuhkan potongan pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4463_bebas_pajak, 'お酒が無税だったらいいのにな。', 'Saya berharap alkohol bebas pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4463_bebas_pajak, 'ドバイは無税の国として知られていますが、実際は税金の代わりに手数料という名目が使われているだけです。', 'Dubai dikenal sebagai negara bebas pajak, namun pada dasarnya mereka hanya menggunakan kata "biaya" dan bukan "pajak".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4463_bebas_pajak, '日本では年間110万円までは無税で贈与できる。	', 'Di Jepang, Anda dapat menghadiahkan hingga 1.100.000 yen setiap tahunnya tanpa pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4469_sebenarnya, '実際、宇宙人が人ごみに混じっていても、だれも気が付かないだろう。', 'Sebenarnya, menurutku tak seorang pun akan menyadarinya meskipun ada alien yang bercampur dengan kerumunan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4469_sebenarnya, 'あの男の実際の任務については、だれも知らないんだ。', 'Tidak ada yang tahu misi sebenarnya pria itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4469_sebenarnya, '今現在、実際にトーフグは何名の顧客を抱えているのですか？', 'Berapa banyak klien yang sebenarnya dimiliki Tofugu saat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4470_internasional, 'コウイチは国際会議でトーフグの開発成果について発表する予定です。', 'Koichi akan mengumumkan pengembangan Tofugu di konferensi internasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4470_internasional, '国際的なフィールドで仕事がしたいと思ったので、国際大学に行くことにしました。', 'Saya memutuskan untuk masuk universitas internasional, karena saya ingin bekerja di bidang internasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4470_internasional, 'あらゆる国際危機を解決し、国際の平和を維持するため、日々外交努力を行っています。	', 'Kami melakukan upaya diplomatik setiap hari untuk menyelesaikan segala jenis krisis internasional dan menjaga perdamaian internasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4471_samping, 'ガケの際に立っていたら、急に強い風がふいてきてドキッとした。', 'Saat aku sedang berdiri di tepi tebing, tiba-tiba angin kencang bertiup dan membuat jantungku berdebar kencang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4471_samping, '窓際に一輪の花が飾ってある。', 'Ada bunga menghiasi sisi jendela.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4471_samping, 'この時計、ダイヤルの際のところの色がビミョーにうすくなってるね。', 'Warna di sekitar tepi dial jam tangan ini sedikit memudar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4471_samping, '私は、リキッドライナーは、上まつ毛の上をなぞるようにして、上まぶたの際に引くようにしています。', 'Saya menggunakan liner cair untuk menelusuri bulu mata bagian atas dan menggambar garis di sepanjang tepi kelopak mata atas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4472_untuk_mengakui, 'コウイチがユニークな感性を持っていることは、だれもが認めています。', 'Semua orang menyadari betapa uniknya pikiran Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4472_untuk_mengakui, '余計なコストは認められません。 ', 'Kami tidak dapat menyetujui biaya tambahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4472_untuk_mengakui, '認めるのは悔しいけど、今回はフグはいい仕事をしていると思うよ。', 'Saya benci mengakuinya, tapi menurut saya Fugu melakukan pekerjaannya dengan baik kali ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4473_konfirmasi, '確認画面が出たらIDとパスワードを入力してログインをしてください。', 'Saat layar konfirmasi muncul, masukkan ID dan sandi Anda untuk login.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4473_konfirmasi, 'そのデータの確認は、ビエトの仕事です。', 'Viet bertanggung jawab atas verifikasi data.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4473_konfirmasi, '文芸評論家に確認してみましょう。', 'Saya akan mengonfirmasinya dengan kritikus sastra.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4474_untuk_merencanakan, '「何それ？」「わっ！何でもないよ。」「何か企てているでしょう？」', '"Apa itu?" "Ah, tidak ada apa-apa!" "Kamu sedang merencanakan sesuatu, bukan?!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4474_untuk_merencanakan, 'クーデターを企てたが、失敗してしまった。', 'Kami merencanakan kudeta, tetapi gagal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4474_untuk_merencanakan, 'コウイチの暗殺を企てていたワニカニユーザーを、ビエトがこっそり始末したらしいぜ。', 'Rupanya ada pengguna Wanikani yang mencoba membunuh Koichi, namun diam-diam Viet berhasil menyingkirkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4476_keadilan, 'トーフグチームは正義の味方です！', 'Tim Tofugu memihak keadilan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4476_keadilan, '戦争に正義はないと思います。', 'Saya percaya tidak ada kebenaran dalam perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4476_keadilan, '正義と悪についてずっと考えてきたけど、まだ正解が見えないんだ。', 'Saya sudah lama memikirkan tentang keadilan dan kejahatan, tetapi saya belum menemukan jawaban yang tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4477_aliran, 'グチをこぼしても何も解決しないので、私はグチを言わない主義なんです。', 'Menggerutu tidak akan menyelesaikan apa pun, jadi saya mempunyai kebijakan untuk tidak pernah mengeluh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4477_aliran, 'オレは語尾に主義が付いている言葉は使わない主義なんだよ！', 'Salah satu prinsip saya adalah saya tidak menggunakan kata-kata yang berakhiran -isme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4477_aliran, 'フグは肉を食べないよ。菜食主義者だからさ。', 'Fugu tidak makan daging. Dia seorang vegetarian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4478_rasa_tanggung_jawab, '義理の父に義理チョコを買いました。', 'Aku membeli sekotak coklat wajib untuk mertuaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4478_rasa_tanggung_jawab, '義理の姉と話をしている時に、つい余計な事を言ってしまったんです。', 'Saat aku berbicara dengan kakak iparku, aku berkata lebih dari yang kuinginkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4478_rasa_tanggung_jawab, 'ビエトはとても義理堅い男だ。', 'Viet adalah pria yang memiliki rasa tanggung jawab yang kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4479_definisi, 'スパムメールの定義は何ですか？', 'Apa definisi email spam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4479_definisi, 'コウイチは何日もかけて「アメリカ人」を定義した。', 'Koichi membutuhkan waktu berhari-hari untuk mendefinisikan "orang Amerika".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4479_definisi, '新しい単語を導入する時は、必ずその単語について定義しなければなりません。', 'Saat kita memperkenalkan sebuah kata baru, kita harus selalu mendefinisikan kata tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4487_korban, 'これが被害者のベッドの写真です。', 'Berikut gambar tempat tidur korban.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4487_korban, '被害者は、とても口数の少ない人でした。', 'Korban adalah orang yang sangat pendiam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4487_korban, '地震の被害者の多くは家を失ってしまったので、今は体育館で生活しているんです。', 'Banyak korban gempa yang kehilangan tempat tinggal sehingga saat ini mereka tinggal di gedung olah raga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4850_kementerian, '今度、外務省のディベートに参加してくるよ。', 'Saya akan berpartisipasi dalam diskusi yang diadakan oleh Kementerian Luar Negeri dalam waktu dekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4850_kementerian, 'マイケルの友達の中には、総務省のおえらいさんもいるってウワサだよ。', 'Saya mendengar rumor bahwa Michael mempunyai seorang teman yang mempunyai pengaruh besar di Kementerian Dalam Negeri dan Komunikasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4850_kementerian, 'ビエト財務省国際局次長は現在ダイエット中であり、砂糖の代わりにサッカリンを用いているため、彼の食事には砂糖を使用しないでください。', 'Pak Viet, Wakil Direktur Jenderal Senior, Biro Internasional, Kementerian Keuangan, saat ini sedang melakukan diet dan mengganti gula dengan sakarin, jadi jangan gunakan gula dalam makanannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5134_sashimi, 'めっちゃお刺身が食べたい。', 'Saya sangat ingin makan sashimi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5134_sashimi, 'イカの刺身を一人前下さい。', 'Tolong beri saya sashimi cumi untuk satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5134_sashimi, '刺身をスーパーで買ってきて！', 'Belilah sashimi dari supermarket!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5134_sashimi, '会合の後、素晴らしい刺身弁当があるレストランで昼食を予定しています。', 'Setelah pertemuan, kami berencana untuk makan siang di restoran yang memiliki sashimi bento yang enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6457_untuk_mengkompensasi, '病気で休んだ分を休日に働いて埋め合わせるつもりだ。', 'Saya berencana untuk bekerja pada hari libur saya untuk mengganti waktu cuti saya karena sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6457_untuk_mengkompensasi, '知性が足りないのを金で埋め合わせることはできると思う？', 'Menurut Anda, apakah kekurangan kecerdasan bisa dikompensasi dengan uang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6457_untuk_mengkompensasi, 'どうにかこの損失を埋め合わせることはできないだろうか。', 'Tidak bisakah kita mengganti kerugian ini dengan cara tertentu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7481_na_kata_sifat, '今日のレッスンは形容動詞でした。', 'Pelajaran hari ini adalah tentang kata sifat na.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7481_na_kata_sifat, '頭の中で、形容動詞と形容詞が混ぜこぜになってしまっていて、かなり混乱しています。', 'Saya mencampurkan kata sifat na dengan kata sifat i dan sekarang saya benar-benar bingung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7481_na_kata_sifat, 'それが形容動詞なのかただの形容詞なのか、判断に迷いました。', 'Saya kesulitan menilai apakah itu kata sifat na atau hanya kata sifat i.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7483_realisasi, 'ようやく親になる実感が持てるようになってきました。', 'Akhirnya aku mulai merasa seperti orang tua sungguhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7483_realisasi, '母が死んだという知らせを聞いても、すぐには実感できなかった。', 'Bahkan ketika saya mendengar kabar ibu saya meninggal, awalnya tidak terasa nyata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7483_realisasi, 'アメリカへ行って初めて、日本はなんと小さい国かと実感した。', 'Baru setelah saya pergi ke Amerika barulah saya menyadari betapa kecilnya Jepang sebenarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7486_penjelasan, 'あの先生の解説はとても分かり易いね。', 'Penjelasan guru sangat mudah dimengerti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7486_penjelasan, '最後の審判の解説の冒頭で席を立ちました。', 'Saya meninggalkan komentar di awal "Penghakiman Terakhir".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7486_penjelasan, 'トーフグの自己資本比率については、後ほど社長が解説します。', 'Sedangkan untuk rasio ekuitas Tofugu akan dijelaskan nanti oleh Presiden.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7595_kain, 'レースを布地にたたきつけた。', 'Saya menjahit renda menjadi kain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7595_kain, '緑色の布地を使って着物を作りました。', 'Saya membuat kimono dari kain hijau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7595_kain, '今日生地屋さんで一目ぼれした布地があったんだけど、高すぎて買えなかったよ。', 'Saya jatuh cinta dengan tekstil di toko kain hari ini, tetapi harganya terlalu mahal untuk saya beli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7649_karakter, 'こんな得体の知れないもの、食べられないよ。', 'Saya tidak bisa makan sesuatu yang aneh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7649_karakter, '得体の知れない男がさっきからこっちを見ていると思ったら、トーフグのコウイチだった。', 'Kupikir ada pria misterius yang sedang menatapku, tapi ternyata itu adalah Koichi dari Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7649_karakter, '得体の知れない何かが、猛スピードで迫ってくるような感覚に襲われ、冷や汗が止まらなくなりました。', 'Tiba-tiba aku merasa seolah-olah ada sesuatu yang tidak dapat dikenali datang ke arahku dengan kecepatan tinggi dan aku mulai berkeringat ketakutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7709_pengetahuan, '日本語を勉強する際の心得のようなものはありますか？', 'Apakah Anda punya tips untuk belajar bahasa Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7709_pengetahuan, '「確か、カナエちゃんは多少フランス語の心得があったはずですよ。」と、マミが心得顔で言いました。', '"Kalau ingatanku benar, Kanae-chan seharusnya punya pengetahuan bahasa Prancis," kata Mami dengan tatapan penuh pengertian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7709_pengetahuan, '先輩が就職活動の心得を教えてくれました。', 'Senpai saya menyebarkan pengetahuannya tentang mencari pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8712_untuk_bangun, 'このライフハックを使うと、朝、すっきり目覚めることができます。', 'Jika Anda menggunakan life hack ini, Anda bisa bangun dengan perasaan segar di pagi hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8712_untuk_bangun, 'ケンはやっと社長としての自覚に目覚めたようだね。', 'Tampaknya Ken akhirnya menyadari apa artinya menjadi presiden perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8712_untuk_bangun, '電車の中でうとうとしていて、目覚めたら知らない駅に着いていてびっくりしました。', 'Saya tertidur di kereta, dan ketika saya bangun, saya terkejut menemukan diri saya berada di stasiun yang asing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8752_kualifikasi, '一流の資格を持っていたって、食いっぱぐれることはあるさ。', 'Anda bisa saja memiliki kualifikasi terbaik namun tetap kehilangan kemampuan mencari nafkah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8752_kualifikasi, '資格試験が終わったら、打ち上げしましょう。', 'Setelah ujian kualifikasi, mari kita mengadakan pesta untuk merayakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8752_kualifikasi, 'じゃあ、日本とアメリカ両方で、年金の受給資格があるってことですか？', 'Tunggu, apakah itu berarti Anda berhak menerima pensiun di Jepang dan Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8888_untuk_iri, 'コウイチは、世界が羨む男だ。', 'Koichi adalah pria yang membuat iri dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8888_untuk_iri, '人は他人の幸せを羨みがちだ。', 'Orang mempunyai kecenderungan untuk iri terhadap kebahagiaan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8888_untuk_iri, 'いつか誰もが羨む名声と富を手に入れたいです。', 'Suatu hari nanti, saya ingin memperoleh kekayaan dan ketenaran yang membuat iri siapa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8889_iri, 'ハチは、犬界での羨望の的だ。', 'Hachi menjadi sasaran kecemburuan di dunia anjing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8889_iri, '彼は、あまりにも美味しそうなカレーパンを食べていたため羨望の視線を浴びた。', 'Dia sedang makan roti kari yang tampak lezat sehingga dia menarik tatapan iri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8889_iri, 'ゴードンへの羨望の気持ちが抑えきれず、料理の道へ進みました。', 'Saya tidak bisa mengabaikan perasaan iri saya terhadap Gordon dan saya memutuskan untuk mengejar karir saya di bidang masakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8998_menjadi_iritasi, 'あの人、いつも苛々しているね。', 'Orang itu selalu kesal ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8998_menjadi_iritasi, '運転しながら苛々しないでよ。', 'Jangan menjadi tidak sabar saat Anda sedang mengemudi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8998_menjadi_iritasi, '私だって苛々したくてしてる訳じゃないよ。', 'Bukannya aku mencoba untuk merasa kesal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9018_mengemudi_dalam_keadaan_mabuk, '飲酒運転は犯罪です。', 'Mengemudi dalam keadaan mabuk adalah kejahatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9018_mengemudi_dalam_keadaan_mabuk, '飲酒運転はしたくないから、タクシーで帰るよ。', 'Saya tidak ingin minum dan mengemudi, jadi saya akan pulang dengan taksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9018_mengemudi_dalam_keadaan_mabuk, '自転車でも飲酒運転とみなされるとは知りませんでしたが、なるほどと思いました。', 'Saya tidak tahu bahwa itu dianggap mengemudi dalam keadaan mabuk dengan sepeda, tapi itu masuk akal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9086_kehilangan_sesuatu, 'パスポートを無くすなんて信じられないけど、本当にあるんだね...。', 'Saya tidak percaya ada orang yang kehilangan paspornya, tapi itu benar-benar terjadi...');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9086_kehilangan_sesuatu, '日本語を話すときの英語話者っぽいなまりを無くしたいな。', 'Saya ingin menghilangkan aksen penutur bahasa Inggris yang saya miliki saat berbicara bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9086_kehilangan_sesuatu, 'ご自身が自信を無くした原因は何だと思いますか。', 'Menurut Anda apa yang menyebabkan Anda kehilangan rasa percaya diri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9086_kehilangan_sesuatu, '大事なデータを無くさないようにバックアップを取っていたにもかかわらず、なぜかバックアップまで消えてしまい、社長は言葉を無くした。', 'Meskipun mereka telah membuat cadangan data penting untuk memastikan data tersebut tidak hilang, entah bagaimana cadangannya pun hilang, membuat presiden perusahaan tidak dapat berkata-kata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9260_untuk_menerima_sesuatu, '大人は仕事をしてお金を貰うんでしょ？', 'Orang dewasa bekerja dan menerima uang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9260_untuk_menerima_sesuatu, 'プレゼントにネックレスを貰いました。', 'Saya menerima kalung sebagai hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9260_untuk_menerima_sesuatu, 'あなたの笑顔にはいつも元気を貰います。', 'Aku selalu mendapatkan energi dari senyumanmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9260_untuk_menerima_sesuatu, 'これについてアドバイスを貰えませんか？', 'Bisakah saya menerima saran mengenai hal ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9283_untuk_pergi, '何も言わずに立ち去るなんて、ひどいよ。', 'Pergi tanpa mengucapkan sepatah kata pun tidaklah keren.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9283_untuk_pergi, '早くここから立ち去れ！', 'Tinggalkan tempat ini sekarang, cepat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9283_untuk_pergi, '男はその場を足早に立ち去った。', 'Pria itu segera meninggalkan tempat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9345_menjadi_kenyataan, 'いつかこの願いが叶うといいな。', 'Saya berharap keinginan ini menjadi kenyataan suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9345_menjadi_kenyataan, 'どうせ、叶わぬ恋だったんだよ。', 'Bagaimanapun, itu adalah cinta yang tidak pernah dimaksudkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9345_menjadi_kenyataan, '大丈夫、あきらめなければ、夢はきっと叶うよ！', 'Jangan khawatir, jika kamu tidak menyerah, impianmu pasti akan terwujud!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9347_memanen, '実りの秋っていいますもんね。', 'Katanya musim panen di musim gugur, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9347_memanen, '秋は実りの季節ですから、美味しいものがたくさんあります。', 'Musim gugur adalah musim panen, jadi ada banyak hal yang enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9347_memanen, '皆さんのおかげで、とても実り多い研究会になりました。', 'Terima kasih kepada semuanya, lokakarya ini menjadi sangat bermanfaat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9347_memanen, '海外に出て学ぶことは、必ず大きな実りをもたらすと思っています。', 'Saya percaya bahwa belajar di luar negeri selalu membawa manfaat yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9457_memberi_makan, 'どのくらいのペースで魚に餌をあげるの？', 'Seberapa sering Anda memberi makan ikan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9457_memberi_makan, '明日は犬の餌を買いに行く予定です。', 'Saya berencana pergi membeli makanan anjing besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9457_memberi_makan, 'ウェットの餌もあるけど、うちの猫はドライの餌の方が好きなんだよね。', 'Kami juga punya makanan basah, tapi kucing kami lebih suka makanan kering.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9457_memberi_makan, 'あの会社は、無料を餌にして個人情報を集めています。', 'Perusahaan tersebut menggunakan barang gratis sebagai umpan untuk mengumpulkan informasi pribadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9500_pembayaran, 'ご利用いただける決済方法はこちらです。', 'Berikut adalah metode pembayaran yang tersedia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9500_pembayaran, 'オンライン決済しようとしたんだけど、エラーになっちゃったんだよね。', 'Saya mencoba membayar secara online, tetapi ada kesalahan situs web.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9500_pembayaran, 'クレジットカード決済だとポイントがたまるので、できるだけカードを使うようにしています。', 'Anda bisa mendapatkan poin jika membayar dengan kartu kredit, jadi saya mencoba menggunakan kartu saya bila memungkinkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9504_untuk_mengikat, '危ないから、クツひもを結んだ方がいいよ。', 'Anda harus mengikat tali sepatu Anda — jika tidak, itu berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9504_untuk_mengikat, 'かみをそうやって後ろでリボンで結ぶの、可愛いね。', 'Caramu mengikat rambut ke belakang dengan pita seperti itu lucu sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9504_untuk_mengikat, '見えない力が人と人を結んでいる気がするんですよね。', 'Rasanya seperti ada kekuatan tak kasat mata yang menghubungkan manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9504_untuk_mengikat, '一見バラバラな情報のカケラたちを、点と点で結んでいくのが好きなんです。', 'Saya suka menghubungkan titik-titik di antara bagian-bagian informasi yang tampaknya tidak berhubungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9509_pembayaran_kembali, '返済期間は10年を予定しています。', 'Jangka waktu pelunasan direncanakan sepuluh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9509_pembayaran_kembali, '銀行に返済計画を見せてくださいと言われました。', 'Bank meminta saya untuk menunjukkan kepada mereka rencana pembayaran saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9509_pembayaran_kembali, 'ボーナスが入ったら、すぐに返済をするつもりです。', 'Saya akan membayar kembali uang itu segera setelah saya mendapatkan bonus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9509_pembayaran_kembali, 'ローンの返済が来月から始まるんですが、毎月の返済が思ってたより大きいんですよね。', 'Pembayaran pinjaman saya dimulai bulan depan, tetapi pembayaran bulanannya akan lebih besar dari perkiraan saya.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_946_membangun, id FROM items WHERE type = 'radical' AND (slug = '206' OR id = '206') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_946_membangun, id FROM items WHERE type = 'radical' AND (slug = '220' OR id = '220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1036_berdoa, id FROM items WHERE type = 'radical' AND (slug = '80' OR id = '80') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1036_berdoa, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1123_musuh, r_276_mohawk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1123_musuh, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1124_berakhir, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1124_berakhir, r_277_serentak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1125_komite, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1125_komite, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1126_mengangkat, id FROM items WHERE type = 'radical' AND (slug = '8783' OR id = '8783') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1126_mengangkat, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1126_mengangkat, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1126_mengangkat, id FROM items WHERE type = 'radical' AND (slug = '41' OR id = '41') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1127_hakim, r_305_setengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1127_hakim, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1128_kontrol, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1128_kontrol, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1128_kontrol, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1129_tugas, r_148_tombak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1129_tugas, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1129_tugas, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1130_memeriksa, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1130_memeriksa, id FROM items WHERE type = 'radical' AND (slug = '419' OR id = '419') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1131_utuh, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1131_utuh, id FROM items WHERE type = 'radical' AND (slug = '237' OR id = '237') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1131_utuh, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1132_mendirikan, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1132_mendirikan, id FROM items WHERE type = 'radical' AND (slug = '160' OR id = '160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1133_sumber_daya, r_278_berikutnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1133_sumber_daya, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1134_hak, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1134_hak, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1134_hak, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1135_urusan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1135_urusan, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1136_sekte, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1136_sekte, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1136_sekte, id FROM items WHERE type = 'radical' AND (slug = '8778' OR id = '8778') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1137_bukit, id FROM items WHERE type = 'radical' AND (slug = '29' OR id = '29') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1137_bukit, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1137_bukit, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1137_bukit, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1138_elemen, id FROM items WHERE type = 'radical' AND (slug = '9452' OR id = '9452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1138_elemen, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1139_memotong, id FROM items WHERE type = 'radical' AND (slug = '56' OR id = '56') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1139_memotong, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1139_memotong, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1141_kritik, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1141_kritik, id FROM items WHERE type = 'radical' AND (slug = '161' OR id = '161') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1142_tugas, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1142_tugas, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1143_meneliti, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1143_meneliti, id FROM items WHERE type = 'radical' AND (slug = '8785' OR id = '8785') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1145_ayat, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1145_ayat, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1146_menyalahkan, r_321_menyalahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1147_melestarikan, id FROM items WHERE type = 'radical' AND (slug = '198' OR id = '198') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1147_melestarikan, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1148_meningkatkan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1148_meningkatkan, id FROM items WHERE type = 'radical' AND (slug = '259' OR id = '259') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1149_pajak, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1149_pajak, id FROM items WHERE type = 'radical' AND (slug = '422' OR id = '422') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1151_kesempatan, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1151_kesempatan, id FROM items WHERE type = 'radical' AND (slug = '8825' OR id = '8825') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1152_mengenali, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1152_mengenali, r_393_bilah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1152_mengenali, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1154_kebenaran, id FROM items WHERE type = 'radical' AND (slug = '383' OR id = '383') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8880_iri, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8880_iri, r_278_berikutnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9259_menerima, id FROM items WHERE type = 'radical' AND (slug = '83' OR id = '83') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9259_menerima, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9343_menjadi_kenyataan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9343_menjadi_kenyataan, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9451_memberi_makan, id FROM items WHERE type = 'radical' AND (slug = '139' OR id = '139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9451_memberi_makan, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2633_nona, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3442_masyarakat, id FROM items WHERE type = 'kanji' AND (slug = '527' OR id = '527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3442_masyarakat, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3588_kekaguman, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3588_kekaguman, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4122_untuk_berdoa, k_1036_berdoa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4124_doa, k_1036_berdoa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4124_doa, id FROM items WHERE type = 'kanji' AND (slug = '888' OR id = '888') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4309_untuk_melahirkan, id FROM items WHERE type = 'kanji' AND (slug = '1109' OR id = '1109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4360_siulan, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4360_siulan, id FROM items WHERE type = 'kanji' AND (slug = '1121' OR id = '1121') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4381_untuk_berpartisipasi, id FROM items WHERE type = 'kanji' AND (slug = '899' OR id = '899') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4381_untuk_berpartisipasi, id FROM items WHERE type = 'kanji' AND (slug = '1057' OR id = '1057') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4382_peserta, id FROM items WHERE type = 'kanji' AND (slug = '899' OR id = '899') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4382_peserta, id FROM items WHERE type = 'kanji' AND (slug = '1057' OR id = '1057') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4382_peserta, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4383_petugas_polisi, id FROM items WHERE type = 'kanji' AND (slug = '1023' OR id = '1023') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4383_petugas_polisi, id FROM items WHERE type = 'kanji' AND (slug = '1019' OR id = '1019') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4383_petugas_polisi, id FROM items WHERE type = 'kanji' AND (slug = '1018' OR id = '1018') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4384_untuk_menaruh_kekacauan, id FROM items WHERE type = 'kanji' AND (slug = '1079' OR id = '1079') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4385_asing, id FROM items WHERE type = 'kanji' AND (slug = '1072' OR id = '1072') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4385_asing, id FROM items WHERE type = 'kanji' AND (slug = '1073' OR id = '1073') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4385_asing, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4386_pesawat_luar_angkasa, id FROM items WHERE type = 'kanji' AND (slug = '1072' OR id = '1072') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4386_pesawat_luar_angkasa, id FROM items WHERE type = 'kanji' AND (slug = '1073' OR id = '1073') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4386_pesawat_luar_angkasa, id FROM items WHERE type = 'kanji' AND (slug = '671' OR id = '671') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4388_untuk_membujuk, id FROM items WHERE type = 'kanji' AND (slug = '1026' OR id = '1026') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4388_untuk_membujuk, id FROM items WHERE type = 'kanji' AND (slug = '1081' OR id = '1081') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4391_menjadi_bingung, id FROM items WHERE type = 'kanji' AND (slug = '1078' OR id = '1078') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4391_menjadi_bingung, id FROM items WHERE type = 'kanji' AND (slug = '1079' OR id = '1079') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4392_untuk_mengurangi_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1059' OR id = '1059') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4393_untuk_melanjutkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1083' OR id = '1083') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4394_kata_benda_yang_tepat, id FROM items WHERE type = 'kanji' AND (slug = '902' OR id = '902') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4394_kata_benda_yang_tepat, id FROM items WHERE type = 'kanji' AND (slug = '615' OR id = '615') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4394_kata_benda_yang_tepat, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4394_kata_benda_yang_tepat, id FROM items WHERE type = 'kanji' AND (slug = '1066' OR id = '1066') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4396_kata_kerja_transitif, id FROM items WHERE type = 'kanji' AND (slug = '529' OR id = '529') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4396_kata_kerja_transitif, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4396_kata_kerja_transitif, id FROM items WHERE type = 'kanji' AND (slug = '1066' OR id = '1066') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4397_sindikat_kejahatan, id FROM items WHERE type = 'kanji' AND (slug = '1077' OR id = '1077') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4397_sindikat_kejahatan, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4397_sindikat_kejahatan, id FROM items WHERE type = 'kanji' AND (slug = '1076' OR id = '1076') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4398_mengira, id FROM items WHERE type = 'kanji' AND (slug = '1061' OR id = '1061') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4398_mengira, id FROM items WHERE type = 'kanji' AND (slug = '894' OR id = '894') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4398_mengira, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4399_geng_pengendara_sepeda_motor, id FROM items WHERE type = 'kanji' AND (slug = '1077' OR id = '1077') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4399_geng_pengendara_sepeda_motor, id FROM items WHERE type = 'kanji' AND (slug = '595' OR id = '595') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4399_geng_pengendara_sepeda_motor, id FROM items WHERE type = 'kanji' AND (slug = '830' OR id = '830') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4401_hentikan, id FROM items WHERE type = 'kanji' AND (slug = '1057' OR id = '1057') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4401_hentikan, id FROM items WHERE type = 'kanji' AND (slug = '1059' OR id = '1059') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4402_prosedur, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4402_prosedur, id FROM items WHERE type = 'kanji' AND (slug = '1083' OR id = '1083') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4403_musuh, k_1123_musuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4405_musuh_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4405_musuh_besar, k_1123_musuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4406_tak_ada_taranya, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4406_tak_ada_taranya, k_1123_musuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4408_anggota_komite, k_1125_komite);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4408_anggota_komite, id FROM items WHERE type = 'kanji' AND (slug = '821' OR id = '821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4409_untuk_dibangkitkan, k_1126_mengangkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4410_pemilihan, id FROM items WHERE type = 'kanji' AND (slug = '886' OR id = '886') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4410_pemilihan, k_1126_mengangkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4411_segel_seseorang, k_1127_hakim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4411_segel_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4413_seragam, k_1128_kontrol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4413_seragam, id FROM items WHERE type = 'kanji' AND (slug = '716' OR id = '716') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4414_sistem, k_1128_kontrol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4414_sistem, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4415_memaksa, id FROM items WHERE type = 'kanji' AND (slug = '667' OR id = '667') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4415_memaksa, k_1128_kontrol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4416_kontrol_diri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4416_kontrol_diri, k_1128_kontrol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4417_untuk_bekerja_sebagai, k_1129_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4418_kantor, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4418_kantor, k_1129_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4418_kantor, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4419_kewajiban, k_1154_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4419_kewajiban, k_1129_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4420_tugas, k_1142_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4420_tugas, k_1129_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4422_keseluruhan, k_1131_utuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4422_keseluruhan, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4424_secara_keseluruhan, k_1131_utuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4424_secara_keseluruhan, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4424_secara_keseluruhan, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4425_untuk_membangun, k_1132_mendirikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4426_untuk_mengatur, k_1132_mendirikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4426_untuk_mengatur, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4427_publik, id FROM items WHERE type = 'kanji' AND (slug = '499' OR id = '499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4427_publik, k_1132_mendirikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4428_konstruksi, k_946_membangun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4428_konstruksi, k_1132_mendirikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4429_modal, k_1133_sumber_daya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4429_modal, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4430_dana, k_1133_sumber_daya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4430_dana, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4431_bahan, k_1133_sumber_daya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4431_bahan, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4432_investasi, id FROM items WHERE type = 'kanji' AND (slug = '686' OR id = '686') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4432_investasi, k_1133_sumber_daya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4433_hak_asasi_manusia, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4433_hak_asasi_manusia, k_1134_hak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4434_sebuah_benar, k_1134_hak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4434_sebuah_benar, id FROM items WHERE type = 'kanji' AND (slug = '786' OR id = '786') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4436_kondisi, k_1145_ayat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4436_kondisi, k_1135_urusan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4437_insiden, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4437_insiden, k_1135_urusan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4438_menyolok, k_1136_sekte);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4438_menyolok, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4439_bagus_sekali, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4439_bagus_sekali, k_1136_sekte);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4440_prefektur_okayama, k_1137_bukit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4440_prefektur_okayama, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4440_prefektur_okayama, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4442_bahan_mentah, k_1138_elemen);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4442_bahan_mentah, id FROM items WHERE type = 'kanji' AND (slug = '909' OR id = '909') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4443_menolak, k_1139_memotong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4444_keputusan, k_1127_hakim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4444_keputusan, k_1139_memotong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4448_kritik, k_1141_kritik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4448_kritik, k_1127_hakim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4449_opsional, k_1142_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4449_opsional, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4450_pemeriksaan, k_1143_meneliti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4450_pemeriksaan, k_1130_memeriksa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4451_untuk_memeriksa, k_1143_meneliti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4451_untuk_memeriksa, id FROM items WHERE type = 'kanji' AND (slug = '859' OR id = '859') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4453_perjanjian, k_1145_ayat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4453_perjanjian, id FROM items WHERE type = 'kanji' AND (slug = '915' OR id = '915') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4454_disalahkan, k_1146_menyalahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4455_tanggung_jawab, k_1146_menyalahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4455_tanggung_jawab, k_1142_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4456_untuk_menghilangkan, k_1147_melestarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4457_pertimbangan_kembali, id FROM items WHERE type = 'kanji' AND (slug = '855' OR id = '855') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4457_pertimbangan_kembali, k_1147_melestarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4458_untuk_meningkatkan, k_1148_meningkatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4459_meningkatkan, k_1148_meningkatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4459_meningkatkan, id FROM items WHERE type = 'kanji' AND (slug = '1057' OR id = '1057') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4460_peningkatan_mendadak, id FROM items WHERE type = 'kanji' AND (slug = '970' OR id = '970') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4460_peningkatan_mendadak, k_1148_meningkatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4461_kenaikan_pajak, k_1148_meningkatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4461_kenaikan_pajak, k_1149_pajak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4462_pajak, k_1149_pajak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4462_pajak, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4463_bebas_pajak, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4463_bebas_pajak, k_1149_pajak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4469_sebenarnya, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4469_sebenarnya, k_1151_kesempatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4470_internasional, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4470_internasional, k_1151_kesempatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4471_samping, k_1151_kesempatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4472_untuk_mengakui, k_1152_mengenali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4473_konfirmasi, id FROM items WHERE type = 'kanji' AND (slug = '1103' OR id = '1103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4473_konfirmasi, k_1152_mengenali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4474_untuk_merencanakan, id FROM items WHERE type = 'kanji' AND (slug = '1153' OR id = '1153') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4476_keadilan, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4476_keadilan, k_1154_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4477_aliran, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4477_aliran, k_1154_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4478_rasa_tanggung_jawab, k_1154_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4478_rasa_tanggung_jawab, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4479_definisi, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4479_definisi, k_1154_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4487_korban, id FROM items WHERE type = 'kanji' AND (slug = '1097' OR id = '1097') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4487_korban, id FROM items WHERE type = 'kanji' AND (slug = '1093' OR id = '1093') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4487_korban, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4850_kementerian, k_1147_melestarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5134_sashimi, id FROM items WHERE type = 'kanji' AND (slug = '1296' OR id = '1296') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5134_sashimi, id FROM items WHERE type = 'kanji' AND (slug = '689' OR id = '689') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6457_untuk_mengkompensasi, id FROM items WHERE type = 'kanji' AND (slug = '1725' OR id = '1725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6457_untuk_mengkompensasi, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7481_na_kata_sifat, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7481_na_kata_sifat, id FROM items WHERE type = 'kanji' AND (slug = '1061' OR id = '1061') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7481_na_kata_sifat, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7481_na_kata_sifat, id FROM items WHERE type = 'kanji' AND (slug = '1066' OR id = '1066') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7483_realisasi, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7483_realisasi, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7486_penjelasan, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7486_penjelasan, id FROM items WHERE type = 'kanji' AND (slug = '1026' OR id = '1026') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7595_kain, id FROM items WHERE type = 'kanji' AND (slug = '1062' OR id = '1062') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7595_kain, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7649_karakter, id FROM items WHERE type = 'kanji' AND (slug = '1081' OR id = '1081') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7649_karakter, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7709_pengetahuan, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7709_pengetahuan, id FROM items WHERE type = 'kanji' AND (slug = '1081' OR id = '1081') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8712_untuk_bangun, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8712_untuk_bangun, id FROM items WHERE type = 'kanji' AND (slug = '1025' OR id = '1025') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8752_kualifikasi, k_1133_sumber_daya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8752_kualifikasi, id FROM items WHERE type = 'kanji' AND (slug = '920' OR id = '920') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8888_untuk_iri, k_8880_iri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8889_iri, k_8880_iri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8889_iri, id FROM items WHERE type = 'kanji' AND (slug = '908' OR id = '908') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8998_menjadi_iritasi, id FROM items WHERE type = 'kanji' AND (slug = '8990' OR id = '8990') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8998_menjadi_iritasi, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9018_mengemudi_dalam_keadaan_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '755' OR id = '755') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9018_mengemudi_dalam_keadaan_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '743' OR id = '743') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9018_mengemudi_dalam_keadaan_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '752' OR id = '752') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9018_mengemudi_dalam_keadaan_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '747' OR id = '747') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9086_kehilangan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9260_untuk_menerima_sesuatu, k_9259_menerima);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9283_untuk_pergi, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9283_untuk_pergi, id FROM items WHERE type = 'kanji' AND (slug = '532' OR id = '532') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9345_menjadi_kenyataan, k_9343_menjadi_kenyataan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9347_memanen, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9457_memberi_makan, k_9451_memberi_makan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9500_pembayaran, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9500_pembayaran, k_1124_berakhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9504_untuk_mengikat, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9509_pembayaran_kembali, id FROM items WHERE type = 'kanji' AND (slug = '858' OR id = '858') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9509_pembayaran_kembali, k_1124_berakhir);

END $$;
