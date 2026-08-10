-- ====================================================
-- KaniGani — Seed Data Level 22 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 22) ============
  r_241_gergaji UUID; r_279_perdamaian UUID; r_282_bak_mandi UUID; r_283_murah UUID; r_284_dolar UUID; r_285_alokasikan UUID; r_286_sepak_bola UUID; r_287_kemampuan UUID; r_320_pakaian UUID; r_8826_es UUID;

  -- ============ KANJI IDs (Level 22) ============
  k_957_membangun UUID; k_1140_mengevaluasi UUID; k_1155_penalti UUID; k_1156_kelahiran UUID; k_1157_menanggalkan_pakaian UUID; k_1158_melampaui UUID; k_1159_biarawan UUID; k_1160_berbaring UUID; k_1161_kuil_shinto UUID; k_1162_setiap UUID; k_1163_rencana UUID; k_1164_meletakkan UUID; k_1165_pengeluaran UUID; k_1166_nilai UUID; k_1167_memaksa UUID; k_1168_mengelola UUID; k_1169_menunjukkan UUID; k_1170_bersatu UUID; k_1171_wilayah UUID; k_1172_rencana UUID; k_1173_wisteria UUID; k_1174_keburukan UUID; k_1175_melihat UUID; k_1176_nilai UUID; k_1177_mengisap UUID; k_1178_wilayah UUID; k_1179_angka UUID; k_1180_menanggapi UUID; k_1181_hadiah UUID; k_1182_bantuan UUID; k_1183_kondisi UUID; k_1184_penampilan UUID; k_1185_selamat UUID; k_1431_memperbarui UUID; k_1548_turun UUID; k_1796_pakaian UUID; k_8859_menyerah UUID; k_8885_lengan_baju UUID;

  -- ============ VOCABULARY IDs (Level 22) ============
  v_3757_arsitektur UUID; v_3781_baru_dibangun UUID; v_4278_untuk_memakai UUID; v_4292_ekor UUID; v_4317_untuk_lulus UUID; v_4319_orang_yang_berpengalaman UUID; v_4389_menjadi_ramai UUID; v_4400_ekonomi UUID; v_4404_cantik UUID; v_4445_evaluasi UUID; v_4446_kritik UUID; v_4447_ulasan_buku UUID; v_4480_membanjiri UUID; v_4481_tekanan_darah_tinggi UUID; v_4482_untuk_ada UUID; v_4483_kata_kata_yang_menyakitkan UUID; v_4484_peluang UUID; v_4485_pencegahan_kejahatan UUID; v_4486_industri UUID; v_4488_untuk_tidur UUID; v_4489_tidur_sebentar UUID; v_4490_kurang_tidur UUID; v_4491_tidur_berlebihan UUID; v_4492_untuk_lulus UUID; v_4493_masa_lalu UUID; v_4494_penalti UUID; v_4495_sebuah_denda UUID; v_4496_permainan_batsu UUID; v_4497_untuk_menghukum UUID; v_4498_kelahiran UUID; v_4501_karakter_yang_dihilangkan UUID; v_4504_biksu_buddha UUID; v_4505_bayi UUID; v_4506_biksu_buddha UUID; v_4507_istana_kekaisaran UUID; v_4508_setiap UUID; v_4509_setiap UUID; v_4510_setiap_daerah UUID; v_4511_setiap_orang UUID; v_4512_memandu UUID; v_4513_mendadak UUID; v_4514_untuk_meletakkan UUID; v_4515_posisi UUID; v_4516_pengeluaran UUID; v_4517_konsumsi UUID; v_4518_biaya_perusahaan UUID; v_4520_harga UUID; v_4521_nilai_tanah UUID; v_4522_memaksa UUID; v_4523_pengaruh UUID; v_4524_sikap UUID; v_4525_kerumunan UUID; v_4526_untuk_menjalankan_bisnis UUID; v_4527_bisnis UUID; v_4528_publik UUID; v_4529_pribadi UUID; v_4530_dijalankan_oleh_kota UUID; v_4531_manajemen_pemerintahan UUID; v_4532_dijalankan_oleh_prefektur UUID; v_4533_untuk_menunjukkan UUID; v_4534_instruksi UUID; v_4535_pengumuman_publik UUID; v_4536_presiden UUID; v_4537_tradisi UUID; v_4538_penyatuan UUID; v_4540_domain UUID; v_4541_wilayah UUID; v_4542_sebuah_rencana UUID; v_4543_kebijakan UUID; v_4544_wisteria UUID; v_4545_kata_keterangan UUID; v_4546_bisnis_sampingan UUID; v_4547_subjudul UUID; v_4548_nilai UUID; v_4550_nilai UUID; v_4552_untuk_melihat UUID; v_4553_tamasya UUID; v_4554_hadirin UUID; v_4555_penampilan_luar UUID; v_4556_pandangan_subjektif UUID; v_4557_ide UUID; v_4558_angka UUID; v_4559_daerah UUID; v_4560_wilayah UUID; v_4561_untuk_merokok UUID; v_4562_untuk_menanggapi UUID; v_4563_untuk_saat_ini UUID; v_4564_sebuah_reaksi UUID; v_4565_dalil UUID; v_4566_penyerahan UUID; v_4567_bantuan UUID; v_4568_mendukung UUID; v_4570_kondisi UUID; v_4571_orang_cabul UUID; v_4572_sesuai_tujuan UUID; v_4573_sikap UUID; v_4574_kesalahan_ceroboh UUID; v_4575_kartu_tahun_baru UUID; v_4582_untuk_menilai UUID; v_4583_rasa_tanggung_jawab UUID; v_4591_kartu_tahun_baru UUID; v_4839_mustahil UUID; v_4841_untuk_mengkritik UUID; v_4842_membenci UUID; v_4843_untuk_terjatuh UUID; v_4844_membiarkan_sesuatu_terbang UUID; v_4845_untuk_memastikannya UUID; v_4846_sulit UUID; v_4852_untuk_memeriksa UUID; v_4867_mendukung UUID; v_5327_pembaruan UUID; v_5328_perubahan UUID; v_5753_turun UUID; v_6531_membuka_baju UUID; v_7467_toilet UUID; v_7502_untuk_tinggal UUID; v_7596_suasana_hati_buruk UUID; v_7597_untuk_mengguncang UUID; v_7611_pakaian UUID; v_7650_harga UUID; v_7710_perasaan_tidak_menyenangkan UUID; v_7764_berurusan_dengan UUID; v_8677_siaga UUID; v_8713_terima_kasih UUID; v_8753_suvenir UUID; v_8867_untuk_menyerah UUID; v_8898_lengan_baju UUID; v_8949_untuk_menembus_ke UUID; v_9502_untuk_terhubung UUID; v_9503_simpul UUID;

BEGIN

  DELETE FROM items WHERE level = 22;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '巩', 'gergaji', 22, 1, 'Inilah <radikal>gergaji</radikal> radikal. Dapatkah Anda melihat gergaji berbentuk persegi panjang di depan batang pohon yang akan digergaji? Saya datang, saya menggergaji, saya menaklukkan.')
    RETURNING id INTO r_241_gergaji;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '平', 'perdamaian', 22, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>perdamaian</radikal>.')
    RETURNING id INTO r_279_perdamaian;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '呂', 'bak-mandi', 22, 3, 'Lihat pria yang duduk di dalam kotak? Kepalanya mencuat dari atas. Itu adalah <radical>bak mandi</radical> yang dia duduki.')
    RETURNING id INTO r_282_bak_mandi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '安', 'murah', 22, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>murah</radikal>.')
    RETURNING id INTO r_283_murah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '弗', 'dolar', 22, 5, 'Dapatkah Anda melihat tanda $ yang terbalik? Itulah radikal <radikal>dolar</radikal>. Itu digambar oleh seorang anak kecil, jadi wajar saja, ini sedikit mundur, tapi bukan kita yang mengoreksi visi artistiknya!')
    RETURNING id INTO r_284_dolar;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '充', 'alokasikan', 22, 6, 'Anda memiliki beberapa kaki dan Anda harus membuangnya ke tempat sampah. Namun Anda akan ketahuan jika memasukkannya ke dalam satu tempat sampah. Cepat, potong dan <radikal>alokasikan</radikal> ke tempat sampah lain di sekitar kota. Maka Anda tidak akan pernah tertangkap.')
    RETURNING id INTO r_285_alokasikan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '爰', 'sepak-bola', 22, 7, 'Ini adalah radikal <radikal>sepak bola</radikal>. Apakah Anda melihat pesepakbola cilik dengan helm besarnya sedang menendang bola? Tekad 100%, tanpa gagasan apa pun tentang apa yang sedang terjadi. Tim Kanji, ayo berangkat!')
    RETURNING id INTO r_286_sepak_bola;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '能', 'kemampuan', 22, 8, 'Radikal ini sama dengan kanji. Artinya <radikal>kemampuan</radikal>.')
    RETURNING id INTO r_287_kemampuan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '衣', 'pakaian', 22, 9, 'Ini yang <radikal>pakaian</radikal> radikal, bentuknya seperti baju yang digantung di gantungan baju ya? Sekarang pakaian ini sudah digantung, Anda harus membersihkan sisa tumpukan itu…')
    RETURNING id INTO r_320_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丬', 'es', 22, 10, 'Es ini berbentuk tongkat. Itu adalah <radikal>es</radikal>! Anda bahkan dapat melihat dua bongkahan es kecil pecah di sisi kiri.')
    RETURNING id INTO r_8826_es;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_241_gergaji, 'Gergaji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_279_perdamaian, 'Perdamaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_282_bak_mandi, 'Bak mandi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_283_murah, 'Murah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_284_dolar, 'Dolar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_285_alokasikan, 'Alokasikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_286_sepak_bola, 'Sepak bola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_287_kemampuan, 'Kemampuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_320_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8826_es, 'es', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '築', 'membangun', 22, 11, 'Anda menggunakan <radical>bambu</radical> <radical>gergaji</radical> untuk menebang <radical>pohon</radical> untuk <kanji>membangun</kanji> dan <kanji>membangun</kanji> sebuah bangunan. Gergaji bambu dibuat oleh ahli pembuat bambu, dan memotong pohon dengan mudah sehingga Anda dapat dengan cepat membangun gedung baru ini.', 'Saat Anda <kanji>membangun</kanji> dan <kanji>membangun</kanji> gedung ini, Anda mendengar suara ciapan yang aneh. Tiba-tiba seekor anak ayam <reading></reading> (ちく) muncul dari salah satu batang kayu yang sedang Anda gunakan untuk membuat. Lalu yang lain, dan yang lainnya. Anda dikelilingi oleh anak ayam! Apakah ini karena kamu menggunakan gergaji bambu ajaib(?)??')
    RETURNING id INTO k_957_membangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '評', 'mengevaluasi', 22, 12, 'Anda harus <radical>mengatakan</radical> "<radical>perdamaian</radical>" sebelum Anda <kanji>mengevaluasi</kanji> suatu situasi. Dengan begitu semua orang akan tahu dari mana Anda berasal. Jika Anda jujur ​​dan mengatakan "damai" sebelum menilai situasi dengan lantang, semua orang akan tahu posisi Anda.', 'Saat Anda mengatakan "damai", Anda akhirnya mengucapkan kata-kata yang sangat buruk dan Anda mendengar seseorang berkata “<reading>Hai</reading>!” (ひょう) Kamu melihat orang-orang di sekitarmu dan mencoba <kanji>mengevaluasi</kanji> siapa yang mengatakan heyo, tapi kamu tidak tahu. Anda mulai berbicara lagi ketika seseorang berseru, “Itu yang dia katakan” dan orang lain berteriak “Hei!” sekali lagi, tapi Anda masih tidak bisa menilai siapa yang mengatakan hal ini.')
    RETURNING id INTO k_1140_mengevaluasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '罰', 'penalti', 22, 13, 'Anda akan dimasukkan ke dalam <radical>jaring</radikal> jika Anda mencoba <radikal>mengatakan</radikal> sesuatu dengan <radikal>pisau</radikal> — itulah <kanji>penalti</kanji> Anda. Anda tidak bisa begitu saja mendatangi orang lain dan mengatakan sesuatu tanpa menggunakan pisau. Itu sebabnya polisi harus memasang jaring, sebagai hukuman.', '<kanji>Hukuman</kanji> Anda karena melanggar hukum belum berakhir. Sekarang kamu terjebak dalam jaring, kamu tidak bisa melawan ketika mereka memukulmu dengan <reading>kelelawar</reading> (ばつ).')
    RETURNING id INTO k_1155_penalti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '誕', 'kelahiran', 22, 14, 'Mereka <radical>mengatakan</radical> <radical>yoga</radical> adalah cara yang <radical>benar</radical> untuk menjalani <kanji>kelahiran</kanji>. Melahirkan bukanlah hal yang mudah, tetapi orang-orang terus mengatakan kepada Anda bahwa yoga adalah cara yang tepat untuk mempersiapkan dan benar-benar melakukannya.', 'Untuk mempersiapkan <kanji>melahirkan</kanji> Anda akhirnya melakukan begitu banyak yoga di luar ruangan sehingga Anda mendapatkan <read>tan</reading> (たん) yang sangat dalam.')
    RETURNING id INTO k_1156_kelahiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '脱', 'menanggalkan-pakaian', 22, 15, 'Cahaya <radical>bulan</radical> menyinari seorang <radical>penjaga</radical> yang bertugas sepanjang malam. Faktanya, cahaya bulan membuatnya begitu hangat, dia mencoba <kanji>menanggalkan pakaian</kanji> dan <kanji>melarikan diri</kanji>! Seseorang hentikan dia!', 'Anda tidak dapat menghentikan penjaga untuk <kanji>menelanjangi</kanji>dan <kanji>melarikan diri</kanji>, jadi Anda memutuskan untuk mulai melemparkan beberapa <read>panah</reading> (だつ) ke arahnya. Mungkin itu akan membuatnya berhenti.')
    RETURNING id INTO k_1157_menanggalkan_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '過', 'melampaui', 22, 16, 'Saat mengendarai <radical>skuter</radical>, Anda menumbuhkan <radical>kumis</radical> di atas <radical>kumis</radical> yang sudah Anda miliki untuk <kanji>mengungguli</kanji> orang-orang di sekitar Anda. Anda sedang mengikuti perlombaan skuter dan kumis Anda adalah satu-satunya hal yang membuat Anda tetap memimpin, tetapi orang lain juga memiliki kumis! Jadi, Anda menumbuhkan kumis lain untuk melampauinya sekali lagi!', 'Tiba-tiba, ada hal lain yang berhasil <kanji>melampaui</kanji> kalian semua. Itu adalah <read>ca</reading>r (か)! Sebuah mobil berkumis dua juga mengendarai skuter dan melaju lebih cepat dari Anda.')
    RETURNING id INTO k_1158_melampaui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '坊', 'biarawan', 22, 17, 'Dapatkah Anda melihat <radical>tanah</radikal> dan mengetahui <radikal>arah</radikal> mana yang harus Anda tuju? Maka Anda mungkin menjadi <kanji>biksu</kanji>. Para bhikkhu memiliki keterampilan luar biasa seperti itu. Dan saya yakin Anda pernah melihat para biksu berkeliaran di banyak media. Mereka tidak membutuhkan peta atau ponsel pintar. Mereka hanya melihat tanahnya dan membiarkan bumi membimbing mereka ke tempat yang mereka inginkan.', 'Anda ingin mengetahui trik <kanji>biksu</kanji> sehingga Anda bersembunyi di belakangnya sebentar saat dia berjalan. Akhirnya biksu itu berhenti, melihat sekeliling, mengeluarkan bola <reading>busur</reading>ling (ぼう) dan mulai bermain bowling di tanah. Bola bowling menggelinding, biksu mengikutinya, dan kemudian berangkat ke arah itu.')
    RETURNING id INTO k_1159_biarawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寝', 'berbaring', 22, 18, 'Dari <radical>atap</radical>, sebuah <radical>es</radical> jatuh dan mengenai <radical>Wolverine</radical> di <radical>dahi</radical>, dan dia harus pergi ke <radical>bangku</radical> untuk <kanji>berbaring</kanji>. Dan akhirnya dia pergi ke <kanji>tidur</kanji>.', 'Saat wolverine <kanji>tidur</kanji>, dia mengeluarkan suara <reading>meringkik</reading> (ね) yang mengerikan. Ini seperti ada kuda raksasa di mulutnya yang berteriak minta keluar! TETANGGA!')
    RETURNING id INTO k_1160_berbaring;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宮', 'kuil-shinto', 22, 19, 'Ini mungkin hanya <radical>atap</radical> di atas <radical>bak mandi</radical>, tapi ini sebenarnya adalah <kanji>kuil Shinto</kanji>.', 'Dewa apa yang dimiliki <kanji>kuil Shinto</kanji> ini? Anda melihat bahwa "Ini adalah-<reading>me-ya</reading> (みや)! (Mario!)"')
    RETURNING id INTO k_1161_kuil_shinto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '各', 'setiap', 22, 20, 'Anda <radical>mencium</radical> <kanji>setiap</kanji> dan <kanji>setiap</kanji> salah satu sahabat Anda untuk menunjukkan betapa Anda mencintai dan peduli terhadap mereka. Anda mencium setiap teman tepat di mulut.', 'Sebenarnya, <kanji>setiap</kanji> dan <kanji>setiap</kanji> salah satu sahabatmu termasuk dalam jenis <reading>ayam</reading> (かく). Maksud saya, masing-masing dari mereka adalah seekor ayam jago. Bayangkan mencium setiap ayam di paruhnya.')
    RETURNING id INTO k_1162_setiap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '案', 'rencana', 22, 21, '<radical>murah</radical> <radical>pohon</radical> memiliki <kanji>rencana</kanji>. Sebuah rencana untuk tetap murah.', '<kanji>rencana</kanji> pohon murah hanya melibatkan pembelian <reading>an</reading>chovies (あん) dan bertahan hidup dengan itu. Paparan sinar matahari dan air bersih yang baik terlalu mahal. Pohon itu berencana menghemat uang dengan memakan ikan teri.')
    RETURNING id INTO k_1163_rencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '置', 'meletakkan', 22, 22, 'Anda memerlukan <radical>net</radical> Anda <radical>lurus</radical> sebelum Anda <kanji>meletakkannya</kanji> di tanah dan mencoba memancing sesuatu ke dalamnya. Anda memasang jaring di sana untuk menangkap sesuatu, tetapi jika jaring terpelintir atau kusut, jaring tersebut tidak akan terlalu efektif.', 'Kemudian Anda memutuskan untuk <kanji>meletakkan</kanji> <reading>chee</reading>se (ち) di jaring Anda. Dengan jaring yang lurus sempurna dan keju yang Anda masukkan sebagai umpan, tidak mungkin gagal. Sukses adalah tentang bagaimana Anda memasang jaring dan keju yang Anda masukkan ke dalamnya.')
    RETURNING id INTO k_1164_meletakkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '費', 'pengeluaran', 22, 23, '<radical>Dolar</radical> dan <radical>kerang</radical> digunakan untuk membayar <kanji>beban</kanji> dan <kanji>biaya</kanji>. Kerang dulunya digunakan sebagai mata uang, jadi seperti koin yang dipadukan dengan dolar.', 'Berapa <kanji>biaya</kanji> dan <kanji>biaya</kanji> terbesar? Itu adalah tagihan <read>hea</reading>t (ひ).')
    RETURNING id INTO k_1165_pengeluaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '価', 'nilai', 22, 24, '<radical>pemimpin</radikal> hanya menggunakan <radical>helikopter</radikal> dengan <kanji>nilai</kanji> tertinggi. Mereka memilih untuk terbang hanya dengan helikopter terbaik dan paling berharga. Itu sebabnya nilainya jauh lebih tinggi dibandingkan yang lain. Faktanya, helikopter apa pun yang mereka gunakan akan naik nilainya. Itulah dampak luar biasa dari seorang pemimpin yang baik.', 'Untuk lebih meningkatkan <kanji>nilai</kanji> helikopter, pemimpin mengikatnya ke <reading>ca</reading>r (か). Wow, sekarang nilainya setara dengan gabungan helikopter dan mobil! Dengan nilai total… Nah, bayangkan sendiri berapa nilai tambah yang dimiliki mobil tersebut.')
    RETURNING id INTO k_1166_nilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '勢', 'memaksa', 22, 25, '<radikal>rahim</radikal> adalah <radikal>lingkaran</radikal> <radikal>kekuatan</radikal> tempat terbentuknya <kanji>kekuatan</kanji> alam. Rahim memiliki kekuatan untuk menciptakan kehidupan. Kehidupan adalah kekuatan alam, dan lingkaran kehidupan dimulai sejak dalam rahim.', 'Sekarang anggaplah kamu adalah ibunya. Kamu memerlukan semua <kanji>kekuatan</kanji> yang bisa kamu kerahkan untuk melahirkan bayi itu ke dunia, jadi kamu ambil <reading>sa</reading>ber (せい) spesialmu dan potong di udara untuk memberikan kekuatan ekstra yang kamu perlukan.')
    RETURNING id INTO k_1167_memaksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '営', 'mengelola', 22, 26, 'Seorang <radikal>Viking</radikal> yang mengetahui cara menggunakan <radikal>bak mandi</radikal> harus <kanji>mengelola</kanji> semua pemandian untuk Viking lainnya. Viking tidak begitu pandai mandi... jika Anda bisa membuat satu Viking mengetahuinya, dia harus mengatur sisanya.', 'Viking malang yang mencoba <kanji>mengelola</kanji> semua yang lain tetap harus menyita <read>a</reading>jagung (えい). “Tidak boleh mandi dengan biji ek dan kayu, itu harus air!” dia berteriak.')
    RETURNING id INTO k_1168_mengelola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '示', 'menunjukkan', 22, 27, 'Anda dapat menggunakan <radical>jackhammer</radical> untuk <kanji>menunjukkan</kanji> dan <kanji>menunjukkan</kanji> kepada seseorang di mana hadiah itu dikuburkan. Anda mengubur hadiahnya agar tetap aman, tetapi jackhammer sangat hebat dalam menggalinya. Jackhammers melakukan pekerjaan dengan baik dan menunjukkan di mana harta karun itu berada. Mereka menunjukkan dengan jelas ke mana seseorang harus pergi.', 'Sebenarnya, Anda sedang menggali <reading>Je</reading>sus (じ). Dialah harta karunnya. Untuk jiwamu. Dia di sini untuk menunjukkan kepada Anda bahwa Yesus masih seorang pria keren dan keren, dan dia ingin <kanji>menunjukkan</kanji> kepada Anda bahwa beriman kepada Yesus, Tuhan, dan sebagainya adalah sesuatu yang luar biasa. Yesus berkata, "Siapa yang punya dua jempol dan ingin <kanji>menunjukkan</kanji> kepadamu jalan Tuhan? Orang ini."')
    RETURNING id INTO k_1169_menunjukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '統', 'bersatu', 22, 28, 'Anda mengambil semua <radical>utas</radikal> Anda dan <radikal>mengalokasikan</radikal> mereka ke satu tempat untuk <kanji>menyatukan</kanji> mereka. Dengan semua benang merah Anda bersatu dan menyatu, Anda siap untuk <kanji>memerintah</kanji> dan <kanji>memerintah</kanji> dunia!', 'Anda sibuk mencoba <kanji>menyatukan</kanji> semua benang Anda, memelintir, mengikat, dan membungkus, dan tiba-tiba Anda melihat bola di tangan Anda dan melihat <membaca>とう</reading>きょう. Anda telah menyatukan thread ini menjadi bentuk とうきょう. Bahkan ada pin kecil untuk semua lingkungan dan tempat wisata terkenal. Ini aneh, karena Anda tidak ingat menaruhnya di sana.')
    RETURNING id INTO k_1170_bersatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '領', 'wilayah', 22, 29, 'Menerima <radical>perintah</radical> dari <radical>geoduck</radical> akan menempatkan Anda di <kanji>wilayah</kanji> musuh. Geoduck bisa menjadi komandan yang buruk, jadi jika Anda menerima perintah dari salah satunya, kemungkinan besar Anda akan berakhir di wilayah yang tidak diketahui, bahkan mungkin wilayah musuh. Dipersiapkan.', 'Karena tidak ingin mati di <kanji>wilayah</kanji> musuh, kamu putuskan untuk melarikan diri dari pemimpin geoduck ini dengan menaiki perahu <reading>baris</reading> (りょう) dan mendayung untuk keluar dari sana. Komandan geoduck memerintahkan Anda untuk menghentikan pelarian Anda, tetapi Anda tetap naik perahu dayung dan mendayung pergi.')
    RETURNING id INTO k_1171_wilayah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '策', 'rencana', 22, 30, 'Dengan <radical>bambu</radical> <radical>pohon</radical> yang berada di atas <radical>kepala</radical> Anda, Anda menyusun <kanji>rencana</kanji>. Rencananya sebenarnya untuk menghilangkan pohon bambu dari kepala Anda. Anda terjebak di bawahnya.', 'Tapi kenapa pohon bambu ini berat sekali? Anda melihat ke setiap ujung bambu dan menyadari bahwa ada <reading>karung</reading> (さく) yang diikat di setiap ujungnya. Setiap karung sepertinya berisi batu-batu berat. Sepertinya seseorang membuat <kanji>rencana</kanji> untuk menjebakmu di sini. Sekarang Anda harus menyusun rencana untuk melarikan diri!')
    RETURNING id INTO k_1172_rencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '藤', 'wisteria', 22, 31, 'Satu-satunya <radical>bunga</radical> yang <radical>bulan</radical> <radical>gladiator</radical> akan <radical>air</radical> adalah <kanji>wisteria</kanji>.', 'Karena mereka berada di bulan, dari mana mereka mendapatkan <kanji>wisteria</kanji>? Sebenarnya dari salah satu titik di bumi yang paling dekat dengan bulan, Gunung <reading>Fuji</reading> (ふじ).')
    RETURNING id INTO k_1173_wisteria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '副', 'keburukan', 22, 32, '<radical>orang-orangan sawah</radikal> yang memegang <radikal>pisau</radikal> itu adalah <kanji>wakil</kanji> presiden. Ya, saya tahu bagaimana penampilannya, dan saya cukup yakin dia melakukan pembunuhan di sisi <kanji></kanji>, tapi Anda tidak mendengarnya dari saya.', 'Sekarang giliran <kanji>wakil</kanji> yang berbicara di podium dan dia hanya berdehem dan berteriak, "<reading>F**k</reading> (ふく) kamu!" kepada orang banyak sambil mengacungkan pisaunya. Mereka bersorak.')
    RETURNING id INTO k_1174_keburukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '観', 'melihat', 22, 33, 'Ada <radical>panah</radical> di <radical>kalkun</radical> yang dapat Anda <radical>lihat</radical> di <kanji>tampilan</kanji> Anda. Kalkun tampaknya juga memperhatikan Anda, dari jauh.', 'Saat Anda <kanji>melihat</kanji> kalkun, Jenghis <reading>Khan</reading> (かん) tiba-tiba juga muncul di pandangan Anda. Dia menjulang tinggi di atas kalkun yang terluka, membungkuk, dan... mencabut anak panahnya!?')
    RETURNING id INTO k_1175_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '値', 'nilai', 22, 34, 'Seorang <radikal>pemimpin</radikal> yang hebat dapat melihat <radikal>langsung</radikal> pada sesuatu dan mengetahui <kanji>nilai</kanji>nya. Situs media sosial itu? 44 miliar dolar. Posisi pekerjaan itu? 50rb setahun. Empat hari kerja dalam seminggu? Um… maaf, tidak, tidak ada nilainya di sana. Melihat? Pemimpin dapat melihat langsung inti permasalahan untuk memahami nilai sebenarnya dari sesuatu.', 'Satu hal yang pemimpin Anda tahu memiliki <kanji>nilai</kanji> yang bagus adalah <reading>chee</reading>se (ち). Ucapkan selamat tinggal pada hari-hari Anda dengan santai mengemil camilan keju dari conbini, karena pemimpin Anda memutuskan nilai keju akan naik 1000%!')
    RETURNING id INTO k_1176_nilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '吸', 'mengisap', 22, 35, '<radical>Mulut</radikal> Anda seperti <radical>eskalator</radikal> yang Anda gunakan untuk <kanji>mengisap</kanji> dan <kanji>menghirup</kanji> sesuatu ke dalam tubuh Anda.', 'Gunakan kemampuan mulut ini untuk <kanji>menyedot</kanji> <membaca>cu</reading>ketimun (きゅう) ke dalam mulut Anda. Mentimun bentuknya seperti silinder sehingga bisa dihisap ke dalam mulut seperti ini. Seperti yang diinginkan alam.')
    RETURNING id INTO k_1177_mengisap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '域', 'wilayah', 22, 36, 'Berbaring di <radical>tanah</radikal>, seorang <radikal>pemabuk</radikal> meletakkan <radikal>mulut</radikal>nya ke <radikal>tanah</radikal> untuk memahami <kanji>wilayah</kanji>. Dia senang mengetahui semua perbedaan regional antara anggur dan minuman beralkohol lainnya, dan baginya tidak ada cara yang lebih baik untuk melakukan ini selain langsung mencicipi setiap daerah.', 'Ternyata dia menganggap segala sesuatu di <kanji>wilayah</kanji> ini <reading>menjijikkan</reading> (いき). Faktanya, bagi pemabuk, setiap daerah terasa menjijikkan dan menjijikkan. Anda tidak tega memberitahunya bahwa yang terasa menjijikkan adalah tanah dan tanahnya, bukan wilayahnya sendiri…')
    RETURNING id INTO k_1178_wilayah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '姿', 'angka', 22, 37, 'Anda selalu membandingkan diri Anda dengan <radical>berikutnya</radikal> <radikal>wanita</radikal> karena Anda terobsesi dengan <kanji>sosok</kanji> dan <kanji>penampilan</kanji> Anda. Itu tidak sehat, tapi ketika <kanji>bentuk</kanji> fisik adalah satu-satunya hal yang penting bagi Anda, membandingkan diri Anda dengan wanita lain akan menjadi kebiasaan.', 'Plot twist: saat kamu membandingkan dirimu dengan wanita berikutnya, <kanji>sosok</kanji> dan <kanji>penampilan</kanji> yang kamu bayangkan sebenarnya adalah <reading>shee</reading>p (し). Pantas saja Anda selalu merasa tidak puas dengan penampilan Anda. Kamu bukan domba, kamu manusia!')
    RETURNING id INTO k_1179_angka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '応', 'menanggapi', 22, 38, 'Jika seseorang berada di bawah <radical>kanopi</radikal> di atas <radikal>hati</radikal> Anda, Anda harus <kanji>merespons</kanji> mereka.', 'Anda <kanji>merespons</kanji> dan ternyata itu ke <reading>王</reading> (おう).')
    RETURNING id INTO k_1180_menanggapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '提', 'hadiah', 22, 39, 'Anda mengulurkan <radical>jari</radical> ke arah <radical>matahari</radical> dari atas <radical>rak mantel</radical> karena Anda akan <kanji>menyajikan</kanji> ide Anda kepada orang banyak. Anda harus menunjukkan pose yang berwibawa dari posisi tinggi untuk <kanji>menyampaikan</kanji> pemikiran Anda secara persuasif.', 'Jadi, apa yang akan Anda <kanji>hadirkan</kanji> kepada semua orang? Slideshow tentang <reading>ta</reading>ter tots (てい). Anda membuat PowerPoint kecil untuk menyajikan peringkat pribadi Anda tentang tater tots terbaik yang pernah Anda makan — dengan foto, tentu saja.')
    RETURNING id INTO k_1181_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '援', 'bantuan', 22, 40, 'Anda menggunakan <radical>jari</radical> Anda dalam permainan <radical>sepak bola</radical> untuk <kanji>membantu</kanji> dan <kanji>membantu</kanji> pemain lain. Dan ketika Anda bermain sepak bola, Anda perlu mendapatkan bantuan sendiri.

Jika Anda berasal dari Inggris, bayangkan saja seseorang menendang atau menginjak jari Anda.', 'Saat kamu membutuhkan <kanji>bantuan</kanji> untuk jari-jarimu yang patah, kamu pasti akan merasa bahwa itu adalah <reading>en</reading>d (えん) untukmu. Jari-jarimu sangat sakit, kamu bahkan tidak ingin perawat yang baik hati membantumu.')
    RETURNING id INTO k_1182_bantuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '状', 'kondisi', 22, 41, 'Lihat semua <radical>es</radical> di sebelah kiri <radical>anjing</radical> itu? Untung saja mereka semua jatuh ke sisi kirinya, atau dia akan berada dalam <kanji>kondisi</kanji> yang buruk.', 'Yang menyelamatkan <kanji>kondisi</kanji> anjing itu tidak lain adalah <reading>Joe</reading> (じょう), buruh tani setempat. Dia terus-menerus mengawasi kondisi anjingnya, termasuk es tajam berbahaya yang bisa menimpanya.')
    RETURNING id INTO k_1183_kondisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '態', 'penampilan', 22, 42, 'Anda memiliki <radikal>kemampuan</radikal> yang hebat karena <radikal>hati</radikal> Anda memberi Anda <kanji>penampilan</kanji> manusia super. Hati Anda benar-benar kuat dan bertenaga, memberi bahan bakar pada tubuh Anda dengan kemampuan terbaiknya. Semua ini bersama-sama memberi Anda penampilan seseorang dalam kondisi prima.', 'Meskipun Anda mungkin memiliki <kanji>penampilan</kanji> seseorang yang super kuat, bertenaga, dan mengagumkan, Anda memiliki satu kekurangan. Anda tidak tahu cara <read>mengikat</reading> (たい) dasi. Sebenarnya Anda bahkan tidak tahu cara mengikat sepatu, apalagi dasi. Memalukan sekali.')
    RETURNING id INTO k_1184_penampilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賀', 'selamat', 22, 43, 'Anda menggunakan <radical>kekuatan</radikal> dari <radikal>mulut</radikal> Anda untuk meludahi <radikal>kerang</radikal> kepada orang-orang sebagai bentuk <kanji>selamat</kanji>! Bahkan, Anda berteriak “SELAMAT!” saat kerang keluar dari mulutmu yang kuat.', 'Saat kamu mengucapkan <kanji>selamat</kanji> seperti ini, kamu terlihat seperti <reading>ga</reading>rgoyle (が). Anda berjongkok, mulut terbuka lebar, seperti gargoyle batu.')
    RETURNING id INTO k_1185_selamat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '更', 'memperbarui', 22, 44, 'Di dalam <radical>tanah</radikal> <radikal>sawah</radikal> terdapat <radikal>harta</radikal>. Saat Anda menariknya keluar dari tanah yang kotor, Anda dapat merasakan kekuatan hidup Anda <kanji>diperbarui</kanji>.', 'Sama seperti Anda terbiasa dengan <kanji>memperbarui</kanji>harta dalam hidup ini, <reading>こう</reading>いち muncul entah dari mana, mencuri harta Anda dan melarikan diri dengannya.')
    RETURNING id INTO k_1431_memperbarui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '降', 'turun', 22, 45, 'Di dalam <radical>gedung</radical> terdapat <radical>Musim Dingin</radical> <radical>Sapi</radical>. Anda perlu melihatnya, jadi Anda masuk ke dalam. Letaknya jauh di dalam sana, dan Anda harus <kanji>turun</kanji> untuk mencapainya.', 'Anda <kanji>turun</kanji> ke dasar dan di sanalah dia, Sapi Musim Dingin. Anda berjalan ke arah sapi itu, dan sapi itu mengayunkan kepalanya ke belakang untuk melihat Anda. Alih-alih wajah sapi, yang ada adalah wajah <reading>こう</reading>いち.')
    RETURNING id INTO k_1548_turun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '衣', 'pakaian', 22, 46, 'Radikal <radikal>pakaian</radikal> dan kanji <kanji>pakaian</kanji> sama persis! Mengejutkan!', 'Sebuah <reading>ea</reading>gle (い) melihat tumpukan <kanji>pakaian</kanji> Anda dan meletakkan <reading>e</reading>gg (え) di dalamnya. Telur elang membutuhkan tempat yang lembut dan hangat untuk menetaskannya, dan tumpukan pakaian Anda adalah tempat yang tepat.')
    RETURNING id INTO k_1796_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '諦', 'menyerah', 22, 47, 'Ada sesuatu yang ingin <radikal>katakan</radikal>, jadi Anda <radikal>berdiri</radikal>, menyerah, dan berteriak: "SAYA <kanji>MENYERAH</kanji>!" Stand radikal terlihat sedikit aneh dalam kanji ini, mungkin karena Anda semua lelah dan siap untuk menyerah.', 'Apa yang membuatmu ingin <kanji>menyerah</kanji>? Nah, ada <reading>seorang pembunuh</reading> (あきら) di belakangmu yang mengancam akan membunuhmu jika kamu tidak melakukannya.')
    RETURNING id INTO k_8859_menyerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '袖', 'lengan-baju', 22, 48, 'Semua orang menyukai <radical>pakaian</radical> Anda. <radikal>alasannya</radikal>? <kanji>lengan</kanji>mu yang keren. Anda mengenakan baju lengan yang luar biasa, dan itu adalah alasan yang cukup bagi semua orang untuk menyukai keseluruhan penampilan Anda.', 'Sedikit yang semua orang tahu, kamu mengenakan <kanji>lengan</kanji> ini karena lenganmu akan <membaca>begitu</reading>ad (そで) tanpanya. Mengapa? Karena mereka semua akan terekspos dan tidak berdaya!')
    RETURNING id INTO k_8885_lengan_baju;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_957_membangun, 'Membangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_957_membangun, 'Membangun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1140_mengevaluasi, 'Mengevaluasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1155_penalti, 'Penalti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1155_penalti, 'Hukuman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1156_kelahiran, 'Kelahiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1157_menanggalkan_pakaian, 'Menanggalkan pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1157_menanggalkan_pakaian, 'Melarikan diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1158_melampaui, 'Melampaui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1159_biarawan, 'Biarawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1160_berbaring, 'Berbaring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1160_berbaring, 'Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1161_kuil_shinto, 'Kuil Shinto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1161_kuil_shinto, 'Kuil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1161_kuil_shinto, 'Istana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1162_setiap, 'Setiap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1162_setiap, 'Setiap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1163_rencana, 'Rencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1164_meletakkan, 'Meletakkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1165_pengeluaran, 'Pengeluaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1165_pengeluaran, 'Biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1166_nilai, 'Nilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1167_memaksa, 'Memaksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1168_mengelola, 'Mengelola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1169_menunjukkan, 'Menunjukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1169_menunjukkan, 'Menunjukkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1170_bersatu, 'Bersatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1170_bersatu, 'Aturan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1170_bersatu, 'Memerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1171_wilayah, 'Wilayah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1172_rencana, 'Rencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1173_wisteria, 'Wisteria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1174_keburukan, 'Keburukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1174_keburukan, 'Samping', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1175_melihat, 'Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1176_nilai, 'Nilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1176_nilai, 'Harga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1177_mengisap, 'Mengisap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1177_mengisap, 'Menghirup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1178_wilayah, 'Wilayah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1178_wilayah, 'Batas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1179_angka, 'Angka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1179_angka, 'Penampilan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1179_angka, 'Membentuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1180_menanggapi, 'Menanggapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1181_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1181_hadiah, 'Kirim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1182_bantuan, 'Bantuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1182_bantuan, 'Membantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1183_kondisi, 'Kondisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1184_penampilan, 'Penampilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1184_penampilan, 'Negara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1184_penampilan, 'Membentuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1185_selamat, 'Selamat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1431_memperbarui, 'Memperbarui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1548_turun, 'Turun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1796_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8859_menyerah, 'Menyerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8859_menyerah, 'Meninggalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8885_lengan_baju, 'Lengan baju', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_957_membangun, 'ちく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_957_membangun, 'きず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1140_mengevaluasi, 'ひょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1155_penalti, 'ばつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1156_kelahiran, 'たん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1157_menanggalkan_pakaian, 'だつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1157_menanggalkan_pakaian, 'ぬ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1158_melampaui, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1158_melampaui, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1158_melampaui, 'あやま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1159_biarawan, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1160_berbaring, 'ね', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1160_berbaring, 'しん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1161_kuil_shinto, 'みや', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1161_kuil_shinto, 'きゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1161_kuil_shinto, 'ぐう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1162_setiap, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1162_setiap, 'おの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1163_rencana, 'あん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1164_meletakkan, 'ち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1164_meletakkan, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1165_pengeluaran, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1165_pengeluaran, 'つい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1166_nilai, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1166_nilai, 'あたい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1167_memaksa, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1167_memaksa, 'せ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1167_memaksa, 'いきお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1168_mengelola, 'えい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1168_mengelola, 'いとな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1169_menunjukkan, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1169_menunjukkan, 'し', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1169_menunjukkan, 'しめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1170_bersatu, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1170_bersatu, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1171_wilayah, 'りょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1172_rencana, 'さく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1173_wisteria, 'ふじ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1173_wisteria, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1173_wisteria, 'どう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1174_keburukan, 'ふく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1175_melihat, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1175_melihat, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1176_nilai, 'ち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1176_nilai, 'ね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1176_nilai, 'あたい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1177_mengisap, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1177_mengisap, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1178_wilayah, 'いき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1179_angka, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1179_angka, 'すがた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1180_menanggapi, 'おう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1180_menanggapi, 'こた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1181_hadiah, 'てい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1182_bantuan, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1183_kondisi, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1184_penampilan, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1184_penampilan, 'わざ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1185_selamat, 'が', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1431_memperbarui, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1431_memperbarui, 'さら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1431_memperbarui, 'ふ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1548_turun, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1548_turun, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1548_turun, 'ふ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1796_pakaian, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1796_pakaian, 'え', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1796_pakaian, 'ころも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1796_pakaian, 'きぬ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8859_menyerah, 'あきら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8859_menyerah, 'てい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8885_lengan_baju, 'そで', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8885_lengan_baju, 'しゅう', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '建築', 'arsitektur', 22, 49, 'Kalau berbicara mengenai <kanji>membangun</kanji>ing dan <kanji>membangun</kanji>ing, hal yang mencakup keduanya adalah <vocabulary>arsitektur</vocabulary>.

建築 mengacu pada desain dan <kosakata>konstruksi</kosakata> bangunan. Kadang-kadang kata ini juga bisa merujuk pada bangunan fisik itu sendiri, tetapi untuk itu lebih umum digunakan 建築物.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Arsitektur, Konstruksi')
    RETURNING id INTO v_3757_arsitektur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新築', 'baru-dibangun', 22, 50, 'Sesuatu yang <kanji>baru</kanji>baru <kanji>dibangun</kanji> adalah sesuatu yang <vocabulary>baru dibangun</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Baru Dibangun, Gedung baru, Konstruksi Baru')
    RETURNING id INTO v_3781_baru_dibangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '被る', 'untuk-memakai', 22, 51, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>menutup</kanji>, jadi versi kata kerjanya berarti <kosa kata>memakai</vocabulary>, <vocabulary>memakai</vocabulary>, atau <vocabulary>menutupi diri dengan</vocabulary>.

被る digunakan saat Anda mengenakan benda yang menutupi kepala atau wajah, seperti topi, helm, dan masker, atau saat menutupi diri dengan sesuatu, seperti menutupi tubuh dengan selimut. Secara kiasan, ini juga bisa merujuk pada peristiwa yang tumpang tindih — anggap saja seperti satu peristiwa yang "meliputi" peristiwa lain dalam garis waktu.

Karena arti kanji lainnya adalah <kanji>menanggung</kanji>, 被る juga bisa berarti memikul beban atau menyalahkan — dengan kata lain menimbulkan tanggung jawab.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Setiap kali kamu <vocabulary>memakai</vocabulary> topimu, kamu berteriak "<reading>KABOO</reading>M (かぶ)!" Mengapa? Karena topimu adalah bom. Silakan mencobanya: kenakan topi super keren Anda sambil berteriak "KABOOM!" Apakah semua orang melihatmu sekarang? Apakah mereka sadar topi yang kamu pakai itu da bomb?', 'Untuk Memakai, Untuk Dipakai, Untuk Menutupi Diri Sendiri')
    RETURNING id INTO v_4278_untuk_memakai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '尻尾', 'ekor', 22, 52, '<kanji>pantat</kanji> <kanji>ekor</kanji> Anda hanyalah <vocabulary>ekor</vocabulary> Anda, meskipun saya bertanya-tanya mengapa mereka harus menyebutkan bahwa itu adalah ekor pantat Anda. Di mana lagi kamu punya ekornya, ya?', 'Pembacaan kata ini merupakan pengecualian. Anda sepertinya sudah mengetahui bacaan 尻 dari kun''yomi しり yang sudah Anda pelajari. Di sini disingkat menjadi しっ. Pembacaan untuk 尾 sangat berbeda dari apa yang Anda pelajari, jadi inilah mnemonik yang dapat membantu Anda:

Hewan dengan <vocabulary>ekor</vocabulary> terbaik di dunia adalah beruang <reading>po</reading>lar (ぽ). Mereka gemuk, putih, dan imut. Hanya beruang kutub yang mempunyai ekor seperti itu!', 'Ekor')
    RETURNING id INTO v_4292_ekor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '経つ', 'untuk-lulus', 22, 53, 'Anda tahu bagaimana 経 berarti <kanji>berlalunya waktu</kanji>, bukan? Nah, ini adalah bentuk kata kerjanya. Apa yang dilakukan waktu ketika berlalu? Itu berlalu. Jadi, kata kerja ini berarti <vocabulary>to pass</vocabulary> atau <vocabulary>to elapse</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Apa yang Anda katakan kepada waktu ketika waktu mulai <vocabulary>melewati</vocabulary> Anda? "<reading>Ta</reading> ta (た), Waktu!"', 'Untuk Lulus, Akan berlalu')
    RETURNING id INTO v_4317_untuk_lulus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '経験者', 'orang-yang-berpengalaman', 22, 54, '<kanji>Seseorang</kanji> yang memiliki pengalaman (経験) adalah <vocabulary>orang yang berpengalaman</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Orang yang Berpengalaman')
    RETURNING id INTO v_4319_orang_yang_berpengalaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '混む', 'menjadi-ramai', 22, 55, 'Yang ini agak aneh. Kamu punya 混じる (untuk tercampur), 混ぜる (untuk mencampur), 混ざる (untuk tercampur), dan sekarang ini: 混む, <vocabulary>menjadi ramai</vocabulary>. Masuk akal jika semua orang berkumpul maka akan ramai, tapi bagaimana membedakan antara kata ini dan kata 混 lainnya? Bayangkan saja bagaimana sapi <reading>muuuuu</reading> (む) berkumpul dan berdesakan, itulah sebabnya kata ini <vocabulary>menjadi ramai</vocabulary>.', 'Hei, <reading>keluarlah</reading> (こむ) dari kerumunan sapi itu. <vocabulary>akan ramai</vocabulary> di sana.', 'Menjadi Ramai, Untuk Dikemas')
    RETURNING id INTO v_4389_menjadi_ramai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '経済', 'ekonomi', 22, 56, 'Anda dapat mengetahui <kanji>perjalanan waktu</kanji> telah <kanji>berakhir</kanji> dengan melihat <vocabulary>ekonomi</vocabulary>. Nilai saham Anda akan berubah, nilai uang Anda akan berkurang dibandingkan sebelumnya karena inflasi, dan (mudah-mudahan) jumlah di rekening bank Anda akan sedikit lebih besar. Yup, tidak ada hal yang begitu terpengaruh oleh berjalannya waktu selain kondisi perekonomian dan <vocabulary>keuangan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, さい berubah menjadi ざい, jadi berhati-hatilah.', 'Ekonomi, Keuangan')
    RETURNING id INTO v_4400_ekonomi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '素敵', 'cantik', 22, 57, '<kanji>elemen</kanji> dari <kanji>musuh</kanji> Anda yang paling mengganggu Anda adalah betapa <vocabulary>indahnya</vocabulary> mereka. Anda berharap Anda <vocabulary>menarik</vocabulary> seperti mereka… dan mungkin itulah sebabnya Anda bersikeras menjadi musuh mereka. Anda tidak bisa membayangkan betapa <vocabulary>hebatnya</vocabulary> mereka.

素敵 adalah jenis kata yang Anda gunakan saat ada sesuatu yang membuat hati Anda berdebar — saat hal itu terasa menyenangkan, mengagumkan, atau bahkan menginspirasi. Misalnya, 素敵な人 bisa berarti seseorang yang menarik, tapi bisa juga merujuk pada seseorang yang Anda kagumi, hormati, atau merasa tertarik karena sikap, nilai, karakter, atau getarannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum mempelajari bacaan ini untuk 素, jadi inilah mnemonik untuk membantu Anda:

Oh wow, kamu terlihat sangat <vocabulary>cantik</vocabulary> dengan <reading>su</reading>itu (す). Ya, saya dapat melihat Anda melalui Internet, dan saya harus mengatakan, setelan itu hanya <vocabulary>memimpikan</vocabulary>! Jangan pernah melepasnya.', 'Cantik, Menawan, Luar biasa')
    RETURNING id INTO v_4404_cantik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '評価', 'evaluasi', 22, 58, 'Mari kita <kanji>mengevaluasi</kanji> <kanji>nilai</kanji>. Ini juga dikenal sebagai apa? Sebuah <vocabulary>evaluasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Evaluasi, Penilaian, Dakwaan, Penilaian, Penilaian, Peringkat')
    RETURNING id INTO v_4445_evaluasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '評論', 'kritik', 22, 59, '<kanji>Evaluasi</kanji> <kanji>teori</kanji> saya. Lalu, ketika Anda mengevaluasi, tolong beri saya <vocabulary>kritik</vocabulary> dan <vocabulary>kritik</vocabulary> untuk membantu saya menjadi lebih baik?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kritik, Kritik')
    RETURNING id INTO v_4446_kritik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '書評', 'ulasan-buku', 22, 60, 'Sebuah <kanji>tulisan</kanji> yang telah <kanji>dievaluasi</kanji> telah mendapatkan <vocabulary>resensi buku</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ulasan buku')
    RETURNING id INTO v_4447_ulasan_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '圧倒する', 'membanjiri', 22, 61, '<kanji>tekanan</kanji> yang digunakan dengan mudah <kanji>runtuh</kanji> apa pun yang didorongnya. Itu sebabnya kata kerja ini berarti <vocabulary>menaklukkan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa あつ menjadi あっ, seperti yang mungkin Anda harapkan.', 'Membanjiri')
    RETURNING id INTO v_4480_membanjiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高血圧', 'tekanan-darah-tinggi', 22, 62, 'Ingat tekanan darah (血圧)? Nah, sekarang tekanan darahnya <kanji>tinggi</kanji>... jadi Anda memiliki "tekanan darah tinggi". Yah, itu bodoh. Sebut saja <vocabulary>tekanan darah tinggi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tekanan darah tinggi, Hipertensi')
    RETURNING id INTO v_4481_tekanan_darah_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '存在する', 'untuk-ada', 22, 63, 'Tahu bagaimana 存在 itu keberadaan? Nah, jadikan itu kata kerja dan Anda akan memiliki <vocabulary>untuk ada</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Ada')
    RETURNING id INTO v_4482_untuk_ada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嫌味', 'kata-kata-yang-menyakitkan', 22, 64, 'Anda memiliki <kanji>rasa</kanji> dari <kanji>tidak suka</kanji>. Jika seseorang memberi Anda "rasa" dan Anda tidak menyukainya, "rasa" apakah itu? Bagaimana dengan <vocabulary>kata-kata yang menyakitkan</vocabulary>.', 'Pembacaan 味 adalah on''yomi yang dipelajari dengan kanji, namun pembacaan 嫌 adalah kun''yomi, いや. Bayangkan saja seseorang mengucapkan kata-kata yang sangat menyakitkan hingga Anda harus berteriak, "<reading>Iya</reading>aaaa!" いや.', 'Kata-kata yang Menyakitkan, Ucapan yang Menyakitkan, Sarkasme, Ketidaksetujuan')
    RETURNING id INTO v_4483_kata_kata_yang_menyakitkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '機会', 'peluang', 22, 65, 'Saat <kanji>mesin</kanji>bertemu</kanji>, Anda akhirnya memiliki <vocabulary>kesempatan</vocabulary> untuk menghabisi semuanya sekaligus. MESIN MATI!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peluang, Peluang')
    RETURNING id INTO v_4484_peluang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '防犯', 'pencegahan-kejahatan', 22, 66, '<kanji>mencegah</kanji> <kanji>kejahatan</kanji> adalah hal yang baik. Untuk melakukan hal ini, Anda menggunakan teknik <vocabulary>pencegahan kejahatan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pencegahan Kejahatan')
    RETURNING id INTO v_4485_pencegahan_kejahatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '産業', 'industri', 22, 67, 'Apa yang akan <kanji>melahirkan</kanji> pada <kanji>bisnis</kanji>? Mungkin semacam <vocabulary>industri</vocabulary>. Padahal <vocabulary>industri berat</vocabulary> juga cukup bagus.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Industri, Industri Berat')
    RETURNING id INTO v_4486_industri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寝る', 'untuk-tidur', 22, 68, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tidur</kanji> atau <kanji>berbaring</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>tidur</vocabulary> atau <vocabulary>berbaring</vocabulary>—sama seperti yang Anda lakukan saat memutuskan <vocabulary>tidur</vocabulary>.', 'Bacaannya sama dengan bacaan yang Anda pelajari dengan kanji. Jadi, Anda bisa langsung berbaring sejenak sebelum melanjutkan ke item selanjutnya.', 'Untuk Tidur, Untuk Berbaring, Untuk Pergi Tidur')
    RETURNING id INTO v_4488_untuk_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昼寝', 'tidur-sebentar', 22, 69, '<kanji>siang</kanji> <kanji>tidur</kanji> adalah tidur yang Anda lakukan di siang hari, juga dikenal sebagai <vocabulary>tidur siang</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.', 'Tidur sebentar')
    RETURNING id INTO v_4489_tidur_sebentar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寝不足', 'kurang-tidur', 22, 70, 'Ingat bagaimana 不足 merupakan kekurangan fisik? Nah, sekarang Anda kekurangan <kanji>tidur</kanji> secara fisik. Itu adalah <vocabulary>kurang tidur</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun, kanji 寝 pertama sebenarnya menggunakan kun''yomi ね-nya. 不足 adalah on''yomi seperti yang Anda harapkan, tetapi ふ di 不 berubah menjadi ぶ, jadi semoga Anda cukup tidur.', 'Kurang Tidur')
    RETURNING id INTO v_4490_kurang_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寝坊', 'tidur-berlebihan', 22, 71, 'Anda <kanji>tidur</kanji> seperti <kanji>biarawan</kanji>, seperti halnya Anda tidak pernah berhenti tidur (karena Anda tidur sambil bermeditasi). Saat Anda tidur seperti biksu seperti ini, Anda terus-menerus <vocabulary>tertidur</vocabulary>, mungkin karena Anda terlambat mengerjakan sutra atau semacamnya. Anda adalah <vocabulary>yang bangun terlambat</vocabulary>.', 'Ini adalah bacaan yang Anda pelajari dengan kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidur berlebihan, Bangun Terlambat')
    RETURNING id INTO v_4491_tidur_berlebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '過ぎる', 'untuk-lulus', 22, 72, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>melampaui</kanji>, namun kata kerja ini bersifat intransitif, artinya kita tidak fokus pada siapa yang melakukan tindakan tersebut, namun pada tindakan itu sendiri. Jadi ini berarti <vocabulary>lewat</vocabulary>, seperti dalam “badai telah berlalu”, <vocabulary>berakhir</vocabulary> seperti dalam “winter’s over”, atau <vocabulary>berlebihan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Agar badai <vocabulary>berlalu</vocabulary> Anda harus <reading>menuntut</reading> (す) badai itu. Sayangnya badai tidak akan berlalu kecuali Anda mengambil tindakan hukum saat ini.', 'Untuk Lulus, Akan Berakhir, Menjadi Terlalu Banyak')
    RETURNING id INTO v_4492_untuk_lulus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '過去', 'masa-lalu', 22, 73, 'Jika Anda <kanji>melampaui</kanji> <kanji>masa lalu</kanji> maka Anda akan mundur ke masa lalu (setidaknya jika Anda berasal dari "masa kini"). Jika hal ini terjadi, maka Anda pasti berada di <vocabulary>masa lalu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun 去 memiliki dua bacaan on''yomi dan Anda belum pernah melihatnya, jadi inilah mnemonik untuk membantu:

Di <vocabulary>masa lalu</vocabulary>, Anda adalah seorang <reading>子</reading> (こ). Kamu sebenarnya bukan seorang 子 lagi, tapi di masa lalu kamu pasti pernah menjadi seorang 子!', 'Masa lalu, Masa Lalu')
    RETURNING id INTO v_4493_masa_lalu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '罰', 'penalti', 22, 74, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji! Dan Anda mengira saya akan menghukum Anda karena itu adalah kosakata kanji tunggal. Sekarang pergilah ke sini. Saatnya memukul dengan kotor karena memikirkan hal seperti itu.', 'Penalti, Hukuman')
    RETURNING id INTO v_4494_penalti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '罰金', 'sebuah-denda', 22, 75, '<kanji>Penalti</kanji> <kanji>emas</kanji> adalah uang yang Anda bayarkan saat mendapat penalti. Ini untuk <vocabulary>denda</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun ばつ diubah menjadi ばっ, jadi jangan salah (atau Anda akan mendapat 罰金!).', 'Sebuah denda, Bagus')
    RETURNING id INTO v_4495_sebuah_denda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '罰ゲーム', 'permainan-batsu', 22, 76, '<kanji>penalti</kanji> <kanji>Permainan</kanji> (ゲーム) adalah jenis permainan menyenangkan yang sering Anda lihat di televisi Jepang. Ketika Anda membuat kesalahan, Anda dihukum. Biasanya itu menyakitkan. Anda dapat menyebutnya sebagai <vocabulary>permainan batsu</vocabulary> atau <vocabulary>permainan penalti</vocabulary>. Namun, jangan menyebutnya apa pun lagi, atau Anda akan tahu apa yang terjadi...', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Permainan Batsu, Permainan Penalti')
    RETURNING id INTO v_4496_permainan_batsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '罰する', 'untuk-menghukum', 22, 77, 'Saat Anda melakukan <kanji> penalti</kanji> kepada seseorang, Anda mencoba <vocabulary>menghukum</vocabulary> atau <vocabulary>menghukum</vocabulary> mereka.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Ingatlah bahwa つ menjadi っ kecil jadi saya tidak punya <vocabulary>untuk menghukum</vocabulary> Anda.', 'Untuk Menghukum, Untuk Menghukum')
    RETURNING id INTO v_4497_untuk_menghukum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誕生', 'kelahiran', 22, 78, 'Berikan <kanji>kelahiran</kanji> pada <kanji>kehidupan</kanji>! Itulah <vocabulary>kelahiran</vocabulary>.', 'Pembacaan 誕 adalah apa yang Anda harapkan. Namun untuk 生, ini menggunakan bacaan sekunder yang kurang umum, jadi inilah mnemonik untuk membantu Anda:

Bayangkan saja <vocabulary>kelahiran</vocabulary> teman Anda <reading>Joe</reading> (じょう), buruh tani setempat. Dia pria yang sangat besar, itu pasti merupakan cobaan berat...', 'Kelahiran')
    RETURNING id INTO v_4498_kelahiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脱字', 'karakter-yang-dihilangkan', 22, 79, 'Anda mendapatkan <kanji>escape</kanji>d <kanji>huruf</kanji>, dengan kata lain, <vocabulary>karakter yang dihilangkan</vocabulary> atau <vocabulary>huruf yang dihilangkan</vocabulary>.

脱字 mengacu pada jenis kesalahan ketik di mana huruf, karakter, atau bahkan seluruh kata secara tidak sengaja dihilangkan dari tulisan Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Karakter yang Dihilangkan, Surat yang Dihilangkan')
    RETURNING id INTO v_4501_karakter_yang_dihilangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '坊さん', 'biksu-buddha', 22, 80, 'さん adalah apa yang kamu tuliskan pada nama orang. Ini seperti "Tuan." Jadi "Tuan Biksu" adalah seorang biksu — khususnya <vocabulary>biksu Budha</vocabulary>. 

坊さん adalah istilah biasa untuk para biksu. Bahkan dalam bentuknya yang lebih sopan, お坊さん, masih terlalu informal untuk digunakan saat berbicara langsung dengan biksu. Jadi boleh saja digunakan saat Anda sedang membicarakan <em>tentang</em> mereka, tetapi tidak dengan mereka!', 'Bacaannya adalah yang Anda pelajari dengan kanji. <membaca>ぼう</membaca>さん！', 'Biksu Buddha')
    RETURNING id INTO v_4504_biksu_buddha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '赤ん坊', 'bayi', 22, 81, 'Ini yang aneh untukmu. Anda memiliki <kanji>merah</kanji> <kanji>biksu</kanji>. Apa ini? Itu adalah <vocabulary>bayi</vocabulary>. Pikirkan tentang hal ini. Bayi ketika keluar semuanya berwarna merah. Selain itu, mereka juga memiliki kepala yang dicukur, seperti halnya seorang biksu. Jadi, "biksu merah" sebenarnya hanyalah seorang bayi. Saya bertanya-tanya siapa yang lebih dirugikan di sini, biksu atau bayinya? Mungkin biksu itu.', 'Bacaannya adalah bacaan kosakata kun''yomi 赤 (kamu mempelajarinya dengan kanji) dan bacaan yang kamu pelajari untuk 坊 juga.', 'Bayi, Bayi')
    RETURNING id INTO v_4505_bayi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '坊主', 'biksu-buddha', 22, 82, '<kanji>bhikkhu</kanji> <kanji>guru</kanji> tetaplah seorang bhikkhu, dan ini digunakan untuk <vocabulary>bhikkhu Buddha</vocabulary> secara khusus. Ingatlah bahwa ini bukanlah kata yang biasa Anda gunakan untuk menyapa para biksu secara langsung, jadi jangan gunakan kata tersebut saat Anda berbicara kepada mereka!

Kata ini juga digunakan untuk mendeskripsikan <vocabulary>kepala yang dicukur</vocabulary> (Anda mungkin bisa menebak alasannya). Mungkin itulah sebabnya ini juga bisa menjadi cara biasa untuk memanggil <vocabulary>anak laki-laki</vocabulary> muda, karena di masa lalu, kepala yang dicukur adalah gaya rambut standar untuk anak laki-laki di Jepang.', '坊 berbunyi seperti yang Anda harapkan. Sayangnya 主 merupakan pengecualian dan dibaca ず. Bayangkan saja <reading>kebun binatang</reading> yang menampung <vocabulary>biksu Budha</vocabulary> di penangkaran. Betapa menyedihkannya para biksu Buddha itu.', 'Biksu Buddha, Kepala yang Dicukur, Anak laki-laki')
    RETURNING id INTO v_4506_biksu_buddha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宮', 'istana-kekaisaran', 22, 83, '<kanji>Kuil Shinto</kanji> yang Anda kunjungi? Ternyata kalau kamu masuk ke dalamnya secara ajaib berubah menjadi <vocabulary>istana kekaisaran</vocabulary>. Wow! Rasanya seperti saya adalah anggota <vocabulary>keluarga kekaisaran</vocabulary> sekarang.

宮 adalah kata sejarah yang umumnya mengacu pada istana kekaisaran Jepang, keluarga kekaisaran Jepang, atau anggota keluarga kekaisaran. Tergantung pada konteksnya, kata ini juga bisa merujuk pada kuil Shinto atau bangunannya.', 'Bacaannya sama dengan bacaan kanji yang Anda pelajari.', 'Istana Kekaisaran, Keluarga Kekaisaran')
    RETURNING id INTO v_4507_istana_kekaisaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '各々', 'setiap', 22, 84, 'Anda memiliki <kanji>setiap</kanji> <kanji>setiap</kanji> yang merupakan <vocabulary>setiap</vocabulary> (atau <vocabulary>setiap</vocabulary>, atau "<vocabulary>masing-masing</vocabulary>"). Mirip dengan kata "each and every" dalam bahasa Inggris.', 'Bacaannya aneh. Maaf sekali. Bayangkan saja Anda melihat <vocabulary>setiap</vocabulary> item. Setiap orang kacau dalam beberapa hal. Mungkin mereka adalah robot yang secara tidak sengaja diprogram untuk membunuh manusia. Anda mengatakan "<reading>oh tidak oh tidak</reading>" secara berurutan karena ini adalah situasi yang buruk.', 'Setiap, Setiap, Masing-masing')
    RETURNING id INTO v_4508_setiap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '各〜', 'setiap', 22, 85, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji, meski dalam arti tertentu seperti tambahan untuk kata lain, yang menurut saya membuatnya berperilaku seperti jukugo. Namun jangan bingung dengan 各々. Yang itu memang menggunakan bacaan kun''yomi, yang aneh jika Anda menganggap yang ini tidak. Saya kira, setiap kanji memiliki "keistimewaan" tersendiri.', 'Setiap, Setiap, Bermacam-macam')
    RETURNING id INTO v_4509_setiap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '各地', 'setiap-daerah', 22, 86, '<kanji>Setiap</kanji> <kanji>tanah</kanji> adalah landasannya sendiri. Ini adalah <vocabulary>setiap area</vocabulary> atau <vocabulary>berbagai area</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Setiap Daerah, Berbagai Daerah')
    RETURNING id INTO v_4510_setiap_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '各自', 'setiap-orang', 22, 87, '<kanji>Setiap</kanji> <kanji>diri</kanji> mengacu pada <vocabulary>setiap orang</vocabulary> atau <vocabulary>individu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Setiap Orang, Individu')
    RETURNING id INTO v_4511_setiap_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '案内', 'memandu', 22, 88, '<kanji>rencana</kanji> <kanji>di dalam</kanji> kertas ini adalah <vocabulary>panduan</vocabulary> yang akan Anda gunakan. Itu sebuah rencana. Itu ada di dalam. Gunakan itu sebagai panduan Anda!

Tergantung pada konteksnya, ini juga bisa berupa <vocabulary>informasi</vocabulary> dan bahkan <vocabulary>undangan</vocabulary>. Ini semua adalah hal-hal yang memandu Anda dalam beberapa hal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memandu, Informasi, Undangan')
    RETURNING id INTO v_4512_memandu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '案外', 'mendadak', 22, 89, 'Sesuatu yang terjadi <kanji>di luar</kanji> <kanji>rencana</kanji> adalah sesuatu yang terjadi <vocabulary>di luar dugaan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mendadak, Lebih dari yang Diharapkan')
    RETURNING id INTO v_4513_mendadak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '置く', 'untuk-meletakkan', 22, 90, 'Ketika Anda <kanji>meletakkan</kanji> sesuatu yang tidak Anda letakkan begitu saja, Anda harus <vocabulary>meletakkan</vocabulary> item tersebut atau bahkan <vocabulary>(untuk) meletakkan</vocabulary> item tersebut. Pada dasarnya, Anda harus meletakkan sesuatu dengan kata kerja ini. Ini sedikit berbeda dari arti kanji yang Anda pelajari tetapi tidak terlalu berbeda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Bayangkan saja Anda meletakkan <reading>O</reading>reos (お). Satu demi satu. Setiap oreo yang Anda coba <vocabulary>letakkan</vocabulary> berkata di kepala Anda "Halo Pak Oreo, saya akan menurunkan Anda.. ooh ya, Anda suka itu bukan?" MENGULANG.', 'Untuk Meletakkan, Untuk Mengatur, Ke Tempat, Untuk Menempatkan')
    RETURNING id INTO v_4514_untuk_meletakkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '位置', 'posisi', 22, 91, 'Silakan <kanji>berikan</kanji> <kanji>peringkat</kanji> pada sesuatu. Yang ini peringkat #1, jadi <vocabulary>posisi</vocabulary>-nya naik lebih tinggi. Kemudian Anda memberi peringkat #67 pada sesuatu. Posisinya lebih rendah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Posisi, Lokasi, Tempat')
    RETURNING id INTO v_4515_posisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '費用', 'pengeluaran', 22, 92, '<kanji>biaya</kanji> dari <kanji>penggunaan</kanji> adalah <vocabulary>biaya</vocabulary> dan <vocabulary>biaya</vocabulary> yang harus kita bayar, sayangnya. Jika Anda menggunakan sesuatu, akan ada biaya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengeluaran, Biaya')
    RETURNING id INTO v_4516_pengeluaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '消費', 'konsumsi', 22, 93, 'Anda <kanji>mematikan</kanji> suatu item dan karena itu harus <kanji>menghabiskan</kanji> item tersebut. Beginilah cara kerja <vocabulary>konsumsi</vocabulary>. Pengeluaran, pemadaman, konsumsi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Konsumsi, Pengeluaran')
    RETURNING id INTO v_4517_konsumsi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '社費', 'biaya-perusahaan', 22, 94, '<kanji>beban</kanji> <kanji>perusahaan</kanji> adalah <vocabulary>beban perusahaan</vocabulary>. Omong-omong, ini bagus jika Anda bisa mendapatkannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Biaya Perusahaan')
    RETURNING id INTO v_4518_biaya_perusahaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '物価', 'harga', 22, 95, '<kanji>Benda</kanji> dengan <kanji>nilai</kanji> memiliki <vocabulary>harga</vocabulary>.

物価 mengacu pada harga barang dan jasa di suatu tempat — <vocabulary>harga komoditas</vocabulary>, alias <vocabulary>biaya hidup</vocabulary>. Ini digunakan ketika membahas betapa mahalnya tinggal di suatu tempat atau ketika berbicara tentang inflasi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun ぶつ berubah menjadi ぶっ, jadi mudah-mudahan hal itu tidak mengubah harga yang bersedia kamu bayarkan untuk vocab ini? Benar? Tolong beri saya uang Anda.', 'Harga, Harga Komoditas, Biaya Hidup')
    RETURNING id INTO v_4520_harga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地価', 'nilai-tanah', 22, 96, '<kanji>nilai</kanji> <kanji>tanah</kanji> adalah <vocabulary>nilai tanah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nilai Tanah')
    RETURNING id INTO v_4521_nilai_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勢い', 'memaksa', 22, 97, 'Ini adalah kanji tunggal dengan い di akhir, yang berarti Anda mungkin mengira ini adalah kata sifat, padahal sebenarnya itu adalah kata benda! Apa bentuk kata benda dari <kanji>kekuatan</kanji>? Itu juga merupakan <vocabulary>force</vocabulary> atau <vocabulary>momentum</vocabulary> sesuatu.', 'Karena kata ini terdiri dari kanji yang dibubuhi hiragana, maka menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda: 

Monster yang memiliki <vocabulary>force</vocabulary> lebih dari monster lainnya adalah monster <reading>icky oi</reading>l (いきおい). Ini adalah semangat dari minyak panas dan menjijikkan yang berasal dari penggorengan di restoran cepat saji, dan tidak ada yang bisa menghentikan minyak menjijikkan dalam jumlah besar untuk meluncur ke sasarannya.', 'Memaksa, momentum')
    RETURNING id INTO v_4522_memaksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勢力', 'pengaruh', 22, 98, '<kanji>kekuatan</kanji> dan <kanji>kekuatan</kanji> Anda bergabung bersama untuk menciptakan <vocabulary>pengaruh</vocabulary> (atau <vocabulary>force</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengaruh, Memaksa')
    RETURNING id INTO v_4523_pengaruh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '姿勢', 'sikap', 22, 99, 'Berikan <kanji>kekuatan</kanji> pada <kanji>gambar</kanji> Anda untuk membuatnya menjadi bentuk tertentu. Ini adalah <vocabulary>postur</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sikap, Sikap')
    RETURNING id INTO v_4524_sikap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大勢', 'kerumunan', 22, 100, '<kanji>kekuatan</kanji> besar</kanji> adalah sekelompok orang. Bayangkan saja kapan kata ini mungkin dibuat... dahulu kala, dan kekuatan terbesar yang bisa Anda miliki adalah sekelompok besar orang. Kelompok kekuatan orang ini juga dikenal sebagai <vocabulary>kerumunan</vocabulary>, atau <vocabulary>sejumlah besar</vocabulary> orang.', 'Bacaan 大 adalah bacaan おお (seperti 大きい). Tidak ada yang dapat Anda lakukan selain mengingatnya. Lalu, 勢 direndaku menjadi ぜい. Juga sesuatu yang harus Anda ingat. Ucapkan kata ini beberapa kali di kepala Anda, maka Anda akan dapat memikirkan apa yang terdengar benar dan apa yang salah sehingga Anda dapat mengetahuinya saat kata ini muncul lagi.', 'Kerumunan, Jumlah yang Besar')
    RETURNING id INTO v_4525_kerumunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '営む', 'untuk-menjalankan-bisnis', 22, 101, 'Kanji berarti <kanji>mengelola</kanji>, tetapi ketika Anda mengelola sesuatu, biasanya apa yang Anda kelola? Bagaimana dengan bisnis? Jadi kata ini berarti <vocabulary>menjalankan bisnis</vocabulary> meskipun kanjinya adalah mengelola.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda <vocabulary>menjalankan bisnis</vocabulary> bernama <reading>Eat O''Na</reading>chos (いとな). Ini adalah gabungan klasik Meksiko-Irlandia (sesuai dengan namanya). Nacho lezat disajikan dengan cita rasa Irlandia.', 'Untuk Menjalankan Bisnis, Untuk Mengelola Bisnis')
    RETURNING id INTO v_4526_untuk_menjalankan_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '営業', 'bisnis', 22, 102, '<kanji>Mengelola</kanji>menjalankan <kanji>bisnis</kanji>? Itulah <vocabulary>bisnis</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bisnis, Penjualan')
    RETURNING id INTO v_4527_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公営', 'publik', 22, 103, 'Sesuatu yang <kanji>publik</kanji>yang <kanji>dikelola</kanji>d adalah sesuatu yang <vocabulary>publik</vocabulary> alias <vocabulary>dijalankan pemerintah</vocabulary>. Bandingkan dengan 私営 yang dikelola swasta/swasta.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Publik, Pemerintahan dijalankan, Dijalankan Oleh Pemerintah')
    RETURNING id INTO v_4528_publik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '私営', 'pribadi', 22, 104, 'Apa pun yang <kanji>pribadi</kanji>yang <kanji>kelola</kanji>d adalah <vocabulary>pribadi</vocabulary> dan <vocabulary>dijalankan secara pribadi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pribadi, Jalankan Secara Pribadi, Jalankan Secara Pribadi')
    RETURNING id INTO v_4529_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '市営', 'dijalankan-oleh-kota', 22, 105, 'Sesuatu yang <kanji>dikelola</kanji>d oleh <kanji>kota</kanji> adalah <vocabulary>dijalankan oleh kota</vocabulary>, atau <vocabulary>dikelola oleh kota</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dijalankan Oleh Kota, Jalankan Kota')
    RETURNING id INTO v_4530_dijalankan_oleh_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '官営', 'manajemen-pemerintahan', 22, 106, '<kanji>Dikelola</kanji>d oleh <kanji>pemerintah</kanji>? Kemudian dijalankan oleh <vocabulary>manajemen pemerintah</vocabulary> atau merupakan <vocabulary>operasi pemerintah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Manajemen Pemerintahan, Operasi Pemerintah, Dijalankan Oleh Pemerintah, Pemerintahan dijalankan')
    RETURNING id INTO v_4531_manajemen_pemerintahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '県営', 'dijalankan-oleh-prefektur', 22, 107, '<kanji>Prefektur</kanji> <kanji>yang dikelola</kanji>segala hal <vocabulary>dijalankan oleh prefektur</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dijalankan Oleh Prefektur, Lari Prefektur, Prefektur')
    RETURNING id INTO v_4532_dijalankan_oleh_prefektur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '示す', 'untuk-menunjukkan', 22, 108, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menunjukkan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>untuk menunjukkan</vocabulary> atau <vocabulary>to show</vocabulary>. Ini digunakan dalam konteks seperti "sebuah penelitian menunjukkan bahwa belajar bahasa Jepang itu menyenangkan" dan "Saya menunjukkan kesediaan saya untuk belajar kanji".', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Penelitian tampaknya <vocabulary>menunjukkan</vocabulary> dan <vocabulary>menunjukkan</vocabulary> bahwa <reading>shee</reading>p <reading>me</reading>n (しめ) lebih baik daripada pria biasa dalam segala hal. Kombo domba/manusia adalah hal yang sangat kuat. Atau begitulah yang ditunjukkan oleh penelitian.', 'Untuk Menunjukkan, Untuk Menunjukkan Sesuatu, Untuk Mendemonstrasikan')
    RETURNING id INTO v_4533_untuk_menunjukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指示', 'instruksi', 22, 109, 'Gunakan <kanji>jari</kanji> Anda untuk <kanji>menunjukkan</kanji> beberapa hal. Ini adalah <vocabulary>instruksi</vocabulary> Anda. Oke, lakukan ini (tunjuk), lakukan itu (tunjuk), dan terakhir lakukan ini (tunjuk).', 'Bacaannya adalah bacaan on''yomi. Anda sudah mempelajari keduanya, bagus untuk Anda!', 'instruksi, Petunjuk arah, Nasihat')
    RETURNING id INTO v_4534_instruksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公示', 'pengumuman-publik', 22, 110, 'Harap <kanji>tunjukkan</kanji> ini dengan cara <kanji>publik</kanji>. Bagaimana dengan <vocabulary>pengumuman publik</vocabulary>?

Kata ini mengacu pada pengumuman publik yang formal, seperti pemilihan parlemen oleh Kaisar atau pengungkapan harga tanah oleh Komite Penilai Tanah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengumuman Publik')
    RETURNING id INTO v_4535_pengumuman_publik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大統領', 'presiden', 22, 111, 'Saat Anda <kanji>besar</kanji> <kanji>memerintah</kanji> atas <kanji>wilayah</kanji>, Anda mungkin adalah pemimpin yang cukup hebat. Seorang <vocabulary>presiden</vocabulary>, mungkin?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya', 'Presiden')
    RETURNING id INTO v_4536_presiden;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伝統', 'tradisi', 22, 112, 'Saat Anda <kanji>mentransmisikan</kanji> sesuatu yang <kanji>menyatukan</kanji> masyarakat, Anda mungkin menggunakan <vocabulary>tradisi</vocabulary>. Tradisi adalah apa yang menyatukan kita semua dan menularkan siapa kita kepada orang lain. Apa namamu?

伝統 berarti "tradisi" dalam arti adat istiadat, praktik, atau ritual yang diturunkan dalam suatu budaya atau komunitas. Tradisi-tradisi ini menyatukan orang-orang dari generasi ke generasi dan menjaga budaya bersama tetap hidup.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tradisi')
    RETURNING id INTO v_4537_tradisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '統合', 'penyatuan', 22, 113, 'Saat Anda <kanji>menyatukan</kanji> dan <kanji>menggabungkan</kanji> berbagai hal bersama-sama, Anda mendapatkan <vocabulary>penyatuan</vocabulary>! Ini juga bisa berarti <vocabulary>integration</vocabulary> dan <vocabulary>consolidation</vocabulary>, yang pada dasarnya merupakan cara lain untuk menggambarkan kesatuan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Satukan mereka.', 'Penyatuan, Integrasi, Konsolidasi')
    RETURNING id INTO v_4538_penyatuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '領域', 'domain', 22, 114, 'Ini adalah <kanji>wilayah</kanji>ku. Ini adalah <kanji>wilayah</kanji> saya. Ini adalah <vocabulary>domain</vocabulary> saya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Domain, Wilayah, Dunia')
    RETURNING id INTO v_4540_domain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '領土', 'wilayah', 22, 115, '<kanji>tanah</kanji> yang membentuk <kanji>wilayah</kanji> Anda adalah <vocabulary>wilayah</vocabulary> Anda. Tidak adakah yang akan menginjakkan kaki di tanahku nuh''uh.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Wilayah')
    RETURNING id INTO v_4541_wilayah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '策', 'sebuah-rencana', 22, 116, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Beruntungnya Anda, meskipun kata ini berupa kanji tunggal, kata ini menggunakan bacaan yang sama dengan yang Anda pelajari, artinya Anda sudah tahu cara membacanya. Saatnya merencanakan dan menyusun kosakata/kanji Anda berikutnya.', 'Sebuah Rencana, Rencana, Skema')
    RETURNING id INTO v_4542_sebuah_rencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '政策', 'kebijakan', 22, 117, '<kanji>rencana</kanji> yang dibuat oleh <kanji>pemerintah</kanji> biasanya dikenal sebagai <vocabulary>kebijakan</vocabulary>. “Pemerintah mengeluarkan kebijakan yang melarang penggunaan senjata terhadap zombie, sehingga merugikan kita semua.”', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kebijakan, Sebuah Kebijakan')
    RETURNING id INTO v_4543_kebijakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '藤', 'wisteria', 22, 118, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari! Sekarang Anda hanya perlu memastikan bahwa Anda tahu apa itu Wisteria... Kata ini sering ditemukan dalam nama, sangat banyak, jadi berhati-hatilah dengan cara itu.', 'Wisteria')
    RETURNING id INTO v_4544_wisteria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '副詞', 'kata-keterangan', 22, 119, 'Ini seperti <kanji>sisi</kanji> <kanji>bagian pidato</kanji> Anda, misalnya, Anda menambahkannya ke sisi kata kerja karena itu adalah <vocabulary>adverb</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kata keterangan')
    RETURNING id INTO v_4545_kata_keterangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '副業', 'bisnis-sampingan', 22, 120, '<kanji>bisnis sampingan</kanji> <kanji>bisnis</kanji> adalah <vocabulary>bisnis sampingan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bisnis Sampingan, Pekerjaan Sampingan, Pertunjukan Sampingan')
    RETURNING id INTO v_4546_bisnis_sampingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '副題', 'subjudul', 22, 121, '<kanji>wakil</kanji> <kanji>topik</kanji> adalah <vocabulary>subtitle</vocabulary> atau <vocabulary>subheading</vocabulary>. Anda tahu, seperti <vocabulary>judul sekunder</vocabulary> yang terkadang Anda lihat setelah titik dua pada judul buku. (Omong-omong, yang mana yang sudah kamu baca <em>WaniKani 2: Return of the Crabigator</em>?)', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Subjudul, Subjudul, Judul Sekunder')
    RETURNING id INTO v_4547_subjudul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '値', 'nilai', 22, 122, '<kanji>nilai</kanji> adalah <vocabulary>nilai</vocabulary>, tetapi hanya dalam arti matematis.

Tergantung pada bacaannya, ini juga bisa berarti <vocabulary>price</vocabulary>.', 'Bayangkan sebuah <vocabulary>nilai</vocabulary> numerik yang ditulis pada <reading>dasi</reading> (あたい). Sekarang bayangkan itu adalah <vocabulary>harga</vocabulary> dari <reading>ne</reading>igh (ね) dari kuda kesayangan Anda. Harganya cukup mahal, tetapi Anda akan melakukan apa saja untuk mendengar kuda itu meringkik.

Secara umum, あたい mengacu pada nilai numerik dalam matematika, sedangkan ね adalah kata formal untuk "harga".', 'Nilai, Harga')
    RETURNING id INTO v_4548_nilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '価値', 'nilai', 22, 123, 'Sebuah <kanji>nilai</kanji> dan sebuah <kanji>nilai</kanji>. Tentu saja ini adalah sesuatu yang memiliki banyak <vocabulary>value</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nilai, Bernilai, Kemampuan')
    RETURNING id INTO v_4550_nilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '観る', 'untuk-melihat', 22, 124, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>melihat</kanji> jadi apa versi vocab verbanya? Itu adalah <vocabulary>untuk melihat</vocabulary> atau <vocabulary>untuk ditonton</vocabulary>.', 'Pembacaan di sini sebenarnya sama dengan 見る. Ini mudah diingat karena artinya juga sangat mirip, belum lagi ada 見 tepat di dalam kanji itu sendiri!', 'Untuk Melihat, Untuk Menonton, Untuk Melihat')
    RETURNING id INTO v_4552_untuk_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '観光', 'tamasya', 22, 125, 'Anda sedang berada di luar kota <kanji>melihat</kanji>memandang <kanji>cahaya</kanji>! Anda tahu, pertunjukan lampu-lampu besar di hari libur, tenda-tenda yang menyala di teater-teater terkenal, lampu-lampu yang berkedip-kedip di kuil-kuil tua yang misterius. Mengapa Anda mengunjungi semua tempat keren dan fotogenik ini? Karena Anda sedang <vocabulary>tamasya</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tamasya, Pariwisata')
    RETURNING id INTO v_4553_tamasya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '観客', 'hadirin', 22, 126, '<kanji>tamu</kanji> yang <kanji>melihat</kanji>ing adalah <vocabulary>penonton</vocabulary> dan <vocabulary>penonton</vocabulary>. Hanya itu yang dilakukan pemirsa yang menjadi tamu di suatu lokasi, bukan? Sangat masuk akal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hadirin, Penonton')
    RETURNING id INTO v_4554_hadirin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外観', 'penampilan-luar', 22, 127, '<kanji>pandangan</kanji> luar</kanji> Anda adalah <vocabulary>penampilan luar</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penampilan Luar, Pulasan')
    RETURNING id INTO v_4555_penampilan_luar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主観', 'pandangan-subjektif', 22, 128, 'Apa tampilan <kanji>utama</kanji> <kanji></kanji> Anda? <vocabulary>pandangan subjektif</vocabulary> Anda, tentu saja! Ini bisa berupa <vocabulary>pendapat subjektif</vocabulary> Anda sendiri, dan juga mengacu pada gagasan tentang <vocabulary>subjektif</vocabulary> secara umum (bukan objektif). Mungkin sulit untuk mundur dan melihat berbagai hal tanpa bias dan perspektif unik Anda sendiri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pandangan Subjektif, Pendapat Subjektif, Subyektif')
    RETURNING id INTO v_4556_pandangan_subjektif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '観念', 'ide', 22, 129, 'Anda memiliki <kanji>pemikiran</kanji> pada <kanji>pandangan</kanji> tertentu. Ini adalah <vocabulary>ide</vocabulary> atau <vocabulary>gagasan</vocabulary> Anda tentangnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ide, Gagasan')
    RETURNING id INTO v_4557_ide;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '姿', 'angka', 22, 130, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

姿 mengacu pada <vocabulary>gambar</vocabulary> atau <vocabulary>penampakan</vocabulary> sesuatu. Anda akan melihatnya digunakan untuk berbicara tentang <kosakata>bentuk</vocabulary> fisik atau kesan yang terlihat dari seseorang atau benda, seperti dalam 後ろ姿 (sosok seseorang dari belakang), がんばる姿 (pemandangan seseorang sedang bekerja keras), atau 昔の姿 (penampakan sesuatu sebelumnya).', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Siapakah <vocabulary>sosok</vocabulary> di kejauhan itu? Apakah itu yang kamu pikirkan? Apakah itu Manusia <read>Sugar Ta</reading>co (すがた)??? YA. Anda akan mengetahui <vocabulary>penampilan</vocabulary> itu di mana saja. Sugar Taco Man berkeliling dari kota ke kota menjual choco-taco manis yang lezat, dan tidak ada yang membuat hari Anda menyenangkan seperti melihat wujudnya muncul di cakrawala. Di sini, Manusia Sugar Taco! Tolong jual kami taco gula!', 'Angka, Penampilan, Membentuk')
    RETURNING id INTO v_4558_angka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '区域', 'daerah', 22, 131, 'Jika ada <kanji>distrik</kanji> di <kanji>wilayah</kanji>, maka itu disebut <vocabulary>zona</vocabulary> atau <vocabulary>distrik</vocabulary>.

区域 adalah kata formal untuk semacam <vocabulary>area</vocabulary> yang ditentukan, biasanya ditentukan oleh batas atau karakteristik tertentu. Ini sering digunakan dalam perencanaan kota, seperti untuk zona larangan parkir atau kawasan pemukiman. Hal ini juga dapat berlaku untuk wilayah seperti distrik pos, wilayah hukum kepolisian, atau wilayah terlarang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Daerah, Daerah, Daerah')
    RETURNING id INTO v_4559_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地域', 'wilayah', 22, 132, '<kanji>wilayah</kanji> yang merupakan <kanji>tanah</kanji> ini adalah <vocabulary>wilayah</vocabulary> / <vocabulary>area</vocabulary>. Bayangkan saja setiap area tanah. Setiap daerah adalah setiap wilayah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Wilayah, Daerah, Daerah')
    RETURNING id INTO v_4560_wilayah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吸う', 'untuk-merokok', 22, 133, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengisap</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>mengisap</vocabulary>, tetapi biasanya digunakan untuk berbicara tentang apa yang Anda lakukan terhadap rokok, jadi terjemahan yang lebih baik menurut saya adalah <vocabulary>merokok</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda merokok terlalu banyak, dan itu menyebabkan Anda terkena kanker. Anda memutuskan untuk <reading>menuntut</reading> (す) pembuat rokok.', 'Untuk Merokok, Mengisap, Untuk menarik napas')
    RETURNING id INTO v_4561_untuk_merokok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '応じる', 'untuk-menanggapi', 22, 134, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menanggapi</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to respond</vocabulary>.

応じる adalah kata formal yang menggambarkan tindakan positif sebagai respons terhadap panggilan, permintaan, atau permintaan. Misalnya, 注文に応じる lebih dari sekadar menerima pesanan; itu berarti beradaptasi dengan tepat dan memenuhinya.', 'Bacaannya sebenarnya sama dengan yang Anda pelajari dengan kanji! Tidak terlalu buruk.', 'Untuk Menanggapi, Untuk Mematuhi')
    RETURNING id INTO v_4562_untuk_menanggapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一応', 'untuk-saat-ini', 22, 135, 'Oke, hanya <kanji>satu</kanji> <kanji>tanggapan</kanji> untuk itu, dan itu adalah kita mempunyai kesepakatan... <vocabulary>untuk saat ini</vocabulary>. Bayangkan saja satu tanggapan yang Anda miliki, dan satu tanggapan itu hanya untuk membuat semua orang mengabaikan Anda, jadi Anda setuju dengan mereka... untuk saat ini.

一応 menunjukkan melakukan sesuatu untuk sementara atau sebagai tindakan pencegahan, meskipun itu mungkin tidak cukup. Terjemahannya bervariasi berdasarkan konteks dan dapat mencakup <vocabulary>sampai batas tertentu</vocabulary>, <vocabulary>kurang lebih</vocabulary>, atau <vocabulary>untuk berjaga-jaga</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Saat Ini, Sampai batas tertentu, Lebih kurang, Untuk berjaga-jaga')
    RETURNING id INTO v_4563_untuk_saat_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '反応', 'sebuah-reaksi', 22, 136, 'Ups, yang ini jadi aneh. Anda memiliki <kanji>anti</kanji> <kanji>respon</kanji> meskipun arti kata ini adalah <vocabulary>reaksi</vocabulary>. Mungkin Anda "anti respond" tetapi Anda tidak punya pilihan, Anda harus memberikan <vocabulary>respon</vocabulary> meskipun demikian?', 'Pembacaan 反 semuanya bagus dan menyenangkan, tetapi pembacaan 応 menjadi agak miring, mengubah おう menjadi のう. Ini mungkin karena lebih mudah untuk mengucapkan はんのう dan pada dasarnya terdengar sama. Jadi, はんおう pergi ke はんのう dan semua orang senang. Apakah Anda punya <vocabulary>jawaban</vocabulary>?', 'Sebuah Reaksi, Reaksi, Sebuah Respon, Tanggapan')
    RETURNING id INTO v_4564_sebuah_reaksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '提案', 'dalil', 22, 137, 'Silakan <kanji>presentasikan</kanji> <kanji>rencana</kanji> Anda dalam bentuk <vocabulary>proposisi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dalil, Usul, Saran')
    RETURNING id INTO v_4565_dalil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '提出', 'penyerahan', 22, 138, 'Silakan <kanji>presentasikan</kanji> lalu <kanji>keluar</kanji>. Ini akan menjadi <vocabulary>presentasi</vocabulary> materi Anda.

Mungkin karena <vocabulary>pengajuan</vocabulary> pengunduran diri Anda, atau <vocabulary>pengajuan</vocabulary> keluhan, yang menjelaskan mengapa Anda keluar begitu cepat setelahnya. Anda juga bisa saja <vocabulary>menyerahkan</vocabulary> pekerjaan rumah Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penyerahan, Pengajuan, Menyerahkan, Presentasi')
    RETURNING id INTO v_4566_penyerahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '援助', 'bantuan', 22, 139, 'Jika Anda <kanji>membantu</kanji> dan <kanji>membantu</kanji> seseorang, Anda memberi mereka <vocabulary>bantuan</vocabulary>. Baik sekali!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bantuan, Bantuan')
    RETURNING id INTO v_4567_bantuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '支援', 'mendukung', 22, 140, '<kanji>mendukung</kanji> dan <kanji>membantu</kanji> berarti <vocabulary>mendukung</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mendukung')
    RETURNING id INTO v_4568_mendukung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '状態', 'kondisi', 22, 141, '<kanji>kondisi</kanji> di mana sesuatu berada dan <kanji>penampakan</kanji> dari benda tersebut adalah <vocabulary>kondisi</vocabulary> / <vocabulary>state</vocabulary> dari objek tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kondisi, Negara')
    RETURNING id INTO v_4570_kondisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変態', 'orang-cabul', 22, 142, '<kanji>Penampilan</kanji>mu <kanji>aneh</kanji>. Anda <vocabulary>abnormal</vocabulary>. Oh, dan kamu <vocabulary>mesum</vocabulary> karena kamu terlihat sangat tidak normal. Padahal Anda bisa saja menjadi ulat yang sedang melalui <kosakata>metamorfosis</vocabulary> Anda untuk menjadi kupu-kupu. Anda hanya terlihat sangat aneh saat perubahan sedang berlangsung.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Orang cabul, Abnormal, Transformasi, Metamorfosis')
    RETURNING id INTO v_4571_orang_cabul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '態と', 'sesuai-tujuan', 22, 143, 'Jadi ini kurang masuk akal dari segi arti kanjinya... tapi Anda akan baik-baik saja. Artinya <vocabulary>dengan sengaja</vocabulary>. Mungkin saat Anda melakukan sesuatu yang <kanji>terlihat seperti melakukan apa yang ingin Anda lakukan, Anda melakukannya dengan sengaja.

態と biasanya ditulis dalam kana dalam tulisan modern, namun terkadang Anda juga akan melihatnya dalam kanji.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: "Kamu melakukan itu padaku <vocabulary>sengaja</vocabulary>? <reading>Whaza</reading>pp dengan itu?"', 'Sesuai Tujuan, Dengan sengaja, Dengan sengaja')
    RETURNING id INTO v_4572_sesuai_tujuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '態度', 'sikap', 22, 144, '<kanji>penampilan</kanji> Anda memiliki banyak <kanji>derajat</kanji>. Anda memutarnya, dan Anda memamerkan satu <kosakata>sikap</vocabulary>. Kemudian Anda menurunkannya satu derajat dan Anda memiliki <vocabulary>perilaku</vocabulary> yang lain. Begitu banyak <kosakata>tata krama</vocabulary> yang bisa dipamerkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sikap, Tata krama, Perilaku')
    RETURNING id INTO v_4573_sikap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '失態', 'kesalahan-ceroboh', 22, 145, '<kanji>kemunculan</kanji> dari <kanji>kesalahan</kanji> adalah <vocabulary>kesalahan</vocabulary> besar pada keluarga kami. Setidaknya tidak terlihat ada kesalahan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun しつ disingkat menjadi しっ, jadi jangan membuat <vocabulary>kesalahan</vocabulary> itu.', 'Kesalahan ceroboh, Aib')
    RETURNING id INTO v_4574_kesalahan_ceroboh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賀状', 'kartu-tahun-baru', 22, 146, '<kanji> Selamat</kanji> atas <kanji>kondisi</kanji> Anda. Saya akan mengirimi Anda <vocabulary>kartu ucapan</vocabulary> untuk meresmikannya. Padahal kartu semacam ini hampir selalu berbentuk <vocabulary>Kartu Tahun Baru</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kartu Tahun Baru, Kartu Ucapan')
    RETURNING id INTO v_4575_kartu_tahun_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '判断する', 'untuk-menilai', 22, 147, '判断 adalah penilaian. Jadikan itu menjadi kata kerja dan Anda harus <vocabulary>menilai</vocabulary>, atau <vocabulary>untuk menyimpulkan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 判断 akan membantu sebelum mempelajari ini, tetapi jika tidak, saya tidak akan menghakimi Anda (Crabigator akan menilai Anda).', 'Untuk menilai, Untuk menyimpulkan')
    RETURNING id INTO v_4582_untuk_menilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '責任感', 'rasa-tanggung-jawab', 22, 148, '責任 adalah "tanggung jawab", dan jika Anda <kanji>merasakan</kanji>, maka Anda harus memiliki <vocabulary>rasa tanggung jawab</vocabulary>. Bagus untukmu!

責任感 menggambarkan dorongan internal agar dapat diandalkan dan melakukan tugas Anda. Kata ini sering digunakan untuk memuji orang yang menjalankan kewajibannya dengan serius dan menindaklanjuti apa yang seharusnya mereka lakukan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rasa Tanggung Jawab')
    RETURNING id INTO v_4583_rasa_tanggung_jawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年賀状', 'kartu-tahun-baru', 22, 149, '<kanji>tahun</kanji> <kanji>selamat</kanji> <kanji>kondisi</kanji> adalah saat Anda memberi tahu dunia tentang kondisi Anda di tahun baru. Apa cara yang lebih baik untuk memberi tahu mereka selain menggunakan <vocabulary>Kartu Tahun Baru</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kartu Tahun Baru, Kartu Ucapan Tahun Baru')
    RETURNING id INTO v_4591_kartu_tahun_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不可能', 'mustahil', 22, 150, 'Anda sudah tahu bagaimana 可能 artinya mungkin. Jadi ketika Anda menambahkan <kanji>bukan</kanji> maka itu menjadi <vocabulary>mustahil</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui cara membaca 可能 terlebih dahulu juga akan membantu.', 'Mustahil, Tidak Mungkin')
    RETURNING id INTO v_4839_mustahil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '非難する', 'untuk-mengkritik', 22, 151, 'Tahu bagaimana 非難 merupakan kritik? Jadikan itu kata kerja dan Anda akan mendapatkan kata <vocabulary>untuk mengkritik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Tentu saja, akan sangat membantu jika mengetahui kata 非難 sebagai permulaan.', 'Untuk Mengkritik, Disalahkan')
    RETURNING id INTO v_4841_untuk_mengkritik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大嫌い', 'membenci', 22, 152, 'Ingat bagaimana 嫌い dengan <kanji>tidak suka</kanji>? Ketika ketidaksukaan itu <kanji>besar</kanji>, Anda benar-benar tidak menyukainya. Itu berarti Anda <vocabulary>membenci</vocabulary> (atau <vocabulary>sangat membenci</vocabulary>) itu.

Seperti halnya 嫌い, terjemahan yang lebih literal adalah <vocabulary>menjijikkan</vocabulary>.', 'Pembacaannya adalah bacaan untuk 大, dan bacaan untuk 嫌い seperti yang Anda pelajari dengan 嫌い di level 20.', 'Membenci, Benar-benar Benci, Menjijikkan')
    RETURNING id INTO v_4842_membenci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '倒れる', 'untuk-terjatuh', 22, 153, 'Anda telah melihat bagaimana 倒す berarti "menjatuhkan". Tapi inilah saatnya sesuatu terjatuh dengan sendirinya. Kamu tahu bahwa kamu tidak melakukan apa pun di sini, karena ketika kamu tidak menyentuh semua benda kaca halus ini, sangat <read>jarang</reading> (れる) ada sesuatu yang terjatuh (karena kamu tidak menyentuh apa pun, dasar bodoh bodoh). Itu juga saat Anda atau orang lain pingsan. Kamu tidak memaksakan diri, kamu malah terjatuh sendiri.', 'Bacaannya sama seperti 倒す. Jika Anda mengetahui 倒す, Anda juga akan mengetahui bacaan yang ini.', 'Untuk Terjatuh, Untuk Dirobohkan, Runtuh')
    RETURNING id INTO v_4843_untuk_terjatuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飛ばす', 'membiarkan-sesuatu-terbang', 22, 154, 'Ingat bagaimana 飛ぶ terbang? Kata ini digunakan saat Anda membuat sesuatu terbang. Jadi, kata ini adalah <vocabulary>membiarkan sesuatu terbang</vocabulary> atau <vocabulary>menerbangkan sesuatu</vocabulary>. Ini juga berarti <vocabulary>melewati sesuatu</vocabulary>, seperti giliran seseorang atau pertanyaan dalam ujian.', 'Bacaannya seperti 飛ぶ, jadi jika Anda tahu bacaan itu, Anda sudah dekat. Berikut ini mnemonik untuk membantu Anda mengingat bagian kedua:

Anda dapat menggunakan kekuatan Anda <vocabulary>untuk membiarkan sesuatu terbang</vocabulary>, dan sesuatu itu adalah <reading>bus</reading> (ばす). Anda adalah penggemarnya!', 'Membiarkan Sesuatu Terbang, Untuk Mengirim Sesuatu Terbang, Untuk Melewati Sesuatu')
    RETURNING id INTO v_4844_membiarkan_sesuatu_terbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '確かめる', 'untuk-memastikannya', 22, 155, 'Seperti halnya 確か, yang berarti <kanji>tertentu</kanji>, ini adalah versi kata kerja dari itu. Jadi ketika Anda "melakukan hal tertentu", Anda akan <vocabulary>meyakinkan</vocabulary> sesuatu atau Anda akan <vocabulary>memverifikasi</vocabulary> sesuatu.', 'Yang ini kun''yomi diikuti oleh okurigana. Jika kamu ingat bacaan yang kamu pelajari dengan 確かに, kamu harus tahu yang ini!', 'Untuk Memastikannya, Untuk Memverifikasi, Untuk Konfirmasi')
    RETURNING id INTO v_4845_untuk_memastikannya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '面倒臭い', 'sulit', 22, 156, 'Ada yang bermasalah (面倒) dan berbau (臭い). Jadi apa yang berbau dan menimbulkan masalah? Ya, sesuatu yang <vocabulary>merepotkan</vocabulary> atau <vocabulary>mengganggu</vocabulary>, menurut saya. Pada dasarnya Anda bisa mengabaikan bagian yang bau. Untuk beberapa alasan seseorang melemparkannya kembali, tapi hal-hal yang berbau mengganggu, menurutku.', 'Bacaannya adalah kata-kata 面倒 ditambah 臭い yang dijumlahkan, jadi めんどうくさい!

Meskipun bacaan yang tepat adalah めんどうくさい, perlu diketahui bahwa orang sering kali hanya mengucapkan めんどくさい saat berbicara. Tambahan う itu sangat merepotkan, tahu?', 'Sulit, Sebuah Kerepotan, Mengganggu')
    RETURNING id INTO v_4846_sulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '検査する', 'untuk-memeriksa', 22, 157, 'Anda tahu bahwa 検査 adalah inspeksi, jadi versi kata kerjanya adalah <kosakata>memeriksa</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 検査 juga akan membantu.', 'Untuk Memeriksa, Untuk Memeriksa, Untuk Memeriksa')
    RETURNING id INTO v_4852_untuk_memeriksa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '応援', 'mendukung', 22, 158, 'Anda harus <kanji>merespons</kanji> dengan <kanji>bantuan</kanji> untuk menunjukkan <vocabulary>dukungan</vocabulary> Anda kepada seseorang yang membutuhkannya. Anda biasanya dapat menunjukkan dukungan Anda jika Anda <vocabulary>mendukung</vocabulary> mereka.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mendukung, Akar Untuk, Bantuan')
    RETURNING id INTO v_4867_mendukung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '更新', 'pembaruan', 22, 159, 'Anda <kanji>memperbarui</kanji> sesuatu menjadi <kanji>baru</kanji> lagi. Kita berbicara tentang <vocabulary>pembaharuan</vocabulary> atau <vocabulary>update</vocabulary> terhadap sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembaruan, Memperbarui')
    RETURNING id INTO v_5327_pembaruan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変更', 'perubahan', 22, 160, 'Hal-hal yang <kanji>berubah</kanji> dan <kanji>diperbarui</kanji> sedang mengalami <vocabulary>alteration</vocabulary> dan <vocabulary>berubah</vocabulary>. Cukup mudah!

Berbeda dengan 変化, yang digunakan untuk perubahan spontan, 変更 digunakan untuk perubahan yang disengaja atau direncanakan, seperti mengubah janji temu, mengubah peraturan, atau mengubah rencana.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perubahan, Mengubah')
    RETURNING id INTO v_5328_perubahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '降車', 'turun', 22, 161, '<kanji>Turun</kanji> dari <kanji>kereta</kanji>. Anda <vocabulary>turun</vocabulary> dari kereta, atau bus, atau apa pun yang beroda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Turun, Penurunan, Turun')
    RETURNING id INTO v_5753_turun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脱衣', 'membuka-baju', 22, 162, 'Jika Anda <kanji>menanggalkan pakaian</kanji> dari <kanji>pakaian</kanji> Anda <vocabulary>menanggalkan pakaian</vocabulary>.

脱衣 adalah kata yang relatif formal yang sering Anda lihat pada papan nama ruang ganti di pemandian umum, yang disebut dengan 脱衣所 atau 脱衣場.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Membuka baju')
    RETURNING id INTO v_6531_membuka_baju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お手洗い', 'toilet', 22, 163, 'Anda tahu bahwa 手洗い adalah "mencuci tangan" (dan juga cara yang tidak sopan untuk menyebut kamar mandi). Saat Anda menambahkan お Anda tiba-tiba membuatnya menjadi sopan. Mengapa? Karena Anda sedang membicarakan sesuatu yang lebih kasar daripada mencuci tangan. Yang Anda maksud adalah <vocabulary>toilet</vocabulary> atau <vocabulary>restroom</vocabulary> atau <vocabulary>bathroom</vocabulary>. Ewww. Kotoran pergi ke sana.', 'Bacaannya berasal dari 手洗い, jadi jika Anda mengetahuinya, Anda juga akan mengetahuinya!', 'Toilet, Kamar kecil, Kamar mandi, WC')
    RETURNING id INTO v_7467_toilet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '在留する', 'untuk-tinggal', 22, 164, 'Jika 在留 adalah <kanji>tempat tinggal</kanji>, maka versi kata kerjanya adalah <kosakata>bertempat tinggal</vocabulary>.

Seperti 在留, ini juga merupakan istilah yang lebih formal. Anda mungkin menjumpainya di kantor imigrasi, namun mungkin tidak akan mendengarnya dalam percakapan sehari-hari.', 'Bacaannya berasal dari 在留 jadi kamu seharusnya sudah bisa membaca yang ini!', 'Untuk Tinggal, Untuk Tetap, Untuk Tetap')
    RETURNING id INTO v_7502_untuk_tinggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不機嫌', 'suasana-hati-buruk', 22, 165, 'Ingat bagaimana 機嫌 berarti suasana hati? Nah ketika Anda menambahkan <kanji>bukan</kanji> itu menjadi <vocabulary>suasana hati yang buruk</vocabulary>. Ini sangat buruk seolah-olah Anda tidak punya mood sama sekali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Suasana hati buruk, Pemarah, Cemberut')
    RETURNING id INTO v_7596_suasana_hati_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '震える', 'untuk-mengguncang', 22, 166, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>gempa bumi</kanji> jadi kata kerjanya berarti <vocabulary>menggigil</vocabulary> dan <vocabulary>goyang</vocabulary>, seperti yang Anda lakukan jika terjadi gempa bumi saat ini.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda mulai <vocabulary>goyang</vocabulary> saat gempa bumi karena Anda benar-benar <reading>kenyang</reading> (ふる) setelah makan siang. Sekarang perutmu yang penuh gemetar dan gemetar bersama tanah! Ahh itu mengerikan! Anda tidak ingin kenyang lagi!', 'Untuk Mengguncang, Menggigil, Untuk Gempa, Gemetar, Ke Quaver, Bergetar')
    RETURNING id INTO v_7597_untuk_mengguncang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '衣服', 'pakaian', 22, 167, '<kanji>Pakaian</kanji> <kanji>pakaian</kanji> juga dikenal sebagai <vocabulary>pakaian</vocabulary>!

衣服 sedikit lebih formal daripada kata sehari-hari 服. Ini seperti mengatakan "pakaian" atau "<vocabulary>pakaian</vocabulary>s" bukan hanya "<vocabulary>pakaian</vocabulary>."', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pakaian, Pakaian, Pakaian')
    RETURNING id INTO v_7611_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '価格', 'harga', 22, 168, 'Saat Anda <kanji>menghargai</kanji> <kanji>status</kanji> Anda benar-benar peduli dengan <vocabulary>harga</vocabulary> suatu barang. Dan biasanya semakin tinggi <vocabulary>nilai</vocabulary>, semakin tinggi pula <vocabulary>biaya</vocabulary>.

価格 mengacu pada nilai pasar sesuatu, atau harga produk dalam arti yang lebih luas. Ini semacam kata formal, jadi Anda mungkin melihatnya di brosur atau dalam diskusi bisnis dan ekonomi tentang strategi penetapan harga, misalnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Harga, Nilai, Biaya')
    RETURNING id INTO v_7650_harga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嫌悪感', 'perasaan-tidak-menyenangkan', 22, 169, '<kanji>Perasaan</kanji> buruk</kanji> yang Anda <kanji>tidak suka</kanji> adalah <vocabulary>perasaan tidak menyenangkan</vocabulary>. Perasaan tidak menyenangkan ini mencakup hal-hal seperti kebencian, rasa jijik, rasa jijik, dan ketakutan. Semua itu dianggap sebagai bagian dari istilah perasaan tidak menyenangkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda telah mempelajari bacaan ini jadi Anda juga harus bisa membaca yang ini!', 'Perasaan Tidak Menyenangkan, Menjijikkan')
    RETURNING id INTO v_7710_perasaan_tidak_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対応', 'berurusan-dengan', 22, 170, 'Cara Anda <kanji>merespons</kanji> <kanji>melawan</kanji> orang lain adalah cara Anda <vocabulary>menangani</vocabulary> mereka. Ini adalah <vocabulary>respons</vocabulary> Anda terhadap kata-kata dan tindakan mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Berurusan Dengan, Tanggapan')
    RETURNING id INTO v_7764_berurusan_dengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '待機', 'siaga', 22, 171, '<kanji>menunggu</kanji>mesin <kanji></kanji> adalah mesin dalam keadaan <vocabulary>standby</vocabulary>.  Namun kata ini tidak selalu berlaku untuk mesin. Bisa jadi orang tersebut sedang standby, dalam hal ini Anda juga bisa mengatakan bahwa mereka <vocabulary>sedang dihubungi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Siaga, Sedang Panggilan')
    RETURNING id INTO v_8677_siaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '有り難う', 'terima-kasih', 22, 172, 'Beberapa orang <kanji>mengalami</kanji> saat <kanji>sulit</kanji> mengucapkan <vocabulary>terima kasih</vocabulary>. Tapi bukan Anda sekarang karena Anda tahu caranya!

Ini sering kali ditulis dengan kana, jadi Anda tidak perlu menggunakan kanji saat menulis. Namun terkadang Anda akan melihat kanji digunakan, jadi penting untuk bisa mengenalinya! Tahukah Anda bahwa ini adalah singkatan dari 有難うございます? Anda juga bisa mengejanya seperti ini: 有難う.', 'Anda pernah mendengar orang mengatakan ありがとう sebelumnya kan?!', 'Terima kasih, Terima kasih')
    RETURNING id INTO v_8713_terima_kasih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お土産', 'suvenir', 22, 173, 'Apakah Anda mengunjungi tempat yang rapi? Ambil beberapa <kanji>kotoran</kanji> dan bawa kembali bersama Anda. Lalu berpura-pura <kanji>melahirkan</kanji> di depan teman-teman Anda. Kotoran itu kini menjadi <vocabulary>suvenir</vocabulary> spesial! Ini adalah <vocabulary>hadiah</vocabulary> terbaik yang bisa Anda berikan kepada seseorang!', 'Bacaan ini merupakan pengecualian, maaf! Berikut ini mnemonik untuk membantu Anda:

Saat seseorang bertanya padamu siapa yang memberimu <vocabulary>suvenir</vocabulary>, katakan saja "<reading>Miya ga</reading>ve (みやげ) itu padaku." Siapa Miya? Tidak tahu. Tapi mereka juga tidak. Anda tidak perlu lagi mengingat siapa yang memberi Anda apa pun! Miya memberimu semua milikmu. Dia mungkin orang yang hebat.', 'Suvenir, Hadiah')
    RETURNING id INTO v_8753_suvenir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '諦める', 'untuk-menyerah', 22, 174, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyerah</kanji> atau <kanji>meninggalkan</kanji> sehingga versi kata kerjanya adalah <vocabulary>menyerah</vocabulary> atau <vocabulary>meninggalkan</vocabulary>.', 'Mudah-mudahan Anda mempelajari bacaan ini dengan kanji, tapi berikut ini pengingat untuk berjaga-jaga:

Tepat sebelum Anda siap <vocabulary>menyerah</vocabulary> pada sesuatu, Anda berteriak, "<reading>AKIRA</reading> (あきら)!". Anda tidak tahu siapa pun yang bernama Akira, Anda baru saja melihatnya di film dan itu masuk akal, Anda tahu? Jadi sekarang ketika kamu sudah berusaha keras pada sesuatu, tapi kamu tetap harus meninggalkannya, kamu berteriak AKIRA ke langit. Saya baru saja melakukannya ketika mencoba menulis mnemonik ini!', 'Untuk Menyerah, Untuk Meninggalkan')
    RETURNING id INTO v_8867_untuk_menyerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '袖', 'lengan-baju', 22, 175, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda sudah mempelajari pembacaan kun''yomi untuk kanji ini, jadi sebaiknya Anda mulai!', 'Lengan baju')
    RETURNING id INTO v_8898_lengan_baju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刺さる', 'untuk-menembus-ke', 22, 176, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini merupakan kata kerja intransitif, artinya penindikan terjadi begitu saja, tanpa penekanan pada apa yang menyebabkannya. Itu sebabnya artinya <vocabulary>menusuk ke dalam</vocabulary>, <vocabulary>menempel di</vocabulary>, atau <vocabulary>menusuk ke dalam</vocabulary>. 

Ini adalah kata yang rumit karena terjemahan bahasa Inggrisnya sering kali bersifat transitif, tetapi dalam bahasa Jepang kami selalu menggunakan ini dengan partikel に, bukan を, jadi kata ini bersifat intransitif. Anda dapat melihatnya dalam frasa seperti 言葉が心に刺さった (kata-katanya menusuk hati saya).', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 刺す.', 'Untuk Menembus Ke, Untuk Tetap Masuk, Untuk Menusuk Ke')
    RETURNING id INTO v_8949_untuk_menembus_ke;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結び付く', 'untuk-terhubung', 22, 177, 'Ingat bagaimana 結ぶ berarti "mengikat" dan 付く berarti "melekat"? Nah, <em>ikat</em> keduanya sehingga <em>melekat</em>, dan Anda akan mendapatkan <vocabulary>terhubung</vocabulary>. Kata-katanya saling berhubungan, dan itulah maksudnya juga. Sangat meta.

結び付く secara umum menggambarkan hubungan alami yang terbentuk antara sesuatu, seperti 名前と顔が結び付く (nama terhubung dengan wajah). Perhatikan bahwa ini sering ditulis 結びつく, tanpa kanji 付.', 'Ini adalah kombinasi dari 結ぶ dan 付く, jadi selama kamu tahu cara membacanya, kamu akan baik-baik saja di sini!', 'Untuk Terhubung, Menjadi Terkait, Untuk Bergabung Bersama')
    RETURNING id INTO v_9502_untuk_terhubung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結び目', 'simpul', 22, 178, '結ぶ berarti "mengikat", bukan? Nah, Anda dapat melihat dengan <kanji>mata</kanji> Anda bahwa ada sesuatu yang terikat ketika ia memiliki <vocabulary>simpul</vocabulary>. Semakin besar simpulnya, semakin mudah mata Anda melihatnya.', 'Ini adalah kombinasi kata 結ぶ dan 目. Jika Anda tahu cara membacanya, maka Anda seharusnya tidak mempunyai masalah dengan yang ini.', 'Simpul')
    RETURNING id INTO v_9503_simpul;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3757_arsitektur, 'Arsitektur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3757_arsitektur, 'Konstruksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3781_baru_dibangun, 'Baru Dibangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3781_baru_dibangun, 'Gedung baru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3781_baru_dibangun, 'Konstruksi Baru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4278_untuk_memakai, 'Untuk Memakai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4278_untuk_memakai, 'Untuk Dipakai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4278_untuk_memakai, 'Untuk Menutupi Diri Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4292_ekor, 'Ekor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4317_untuk_lulus, 'Untuk Lulus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4317_untuk_lulus, 'Akan berlalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4319_orang_yang_berpengalaman, 'Orang yang Berpengalaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4389_menjadi_ramai, 'Menjadi Ramai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4389_menjadi_ramai, 'Untuk Dikemas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4400_ekonomi, 'Ekonomi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4400_ekonomi, 'Keuangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4404_cantik, 'Cantik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4404_cantik, 'Menawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4404_cantik, 'Luar biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4445_evaluasi, 'Evaluasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4445_evaluasi, 'Penilaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4445_evaluasi, 'Dakwaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4445_evaluasi, 'Penilaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4445_evaluasi, 'Penilaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4445_evaluasi, 'Peringkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4446_kritik, 'Kritik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4446_kritik, 'Kritik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4447_ulasan_buku, 'Ulasan buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4480_membanjiri, 'Membanjiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4481_tekanan_darah_tinggi, 'Tekanan darah tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4481_tekanan_darah_tinggi, 'Hipertensi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4482_untuk_ada, 'Untuk Ada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4483_kata_kata_yang_menyakitkan, 'Kata-kata yang Menyakitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4483_kata_kata_yang_menyakitkan, 'Ucapan yang Menyakitkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4483_kata_kata_yang_menyakitkan, 'Sarkasme', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4483_kata_kata_yang_menyakitkan, 'Ketidaksetujuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4484_peluang, 'Peluang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4484_peluang, 'Peluang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4485_pencegahan_kejahatan, 'Pencegahan Kejahatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4486_industri, 'Industri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4486_industri, 'Industri Berat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4488_untuk_tidur, 'Untuk Tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4488_untuk_tidur, 'Untuk Berbaring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4488_untuk_tidur, 'Untuk Pergi Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4489_tidur_sebentar, 'Tidur sebentar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4490_kurang_tidur, 'Kurang Tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4491_tidur_berlebihan, 'Tidur berlebihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4491_tidur_berlebihan, 'Bangun Terlambat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4492_untuk_lulus, 'Untuk Lulus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4492_untuk_lulus, 'Akan Berakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4492_untuk_lulus, 'Menjadi Terlalu Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4493_masa_lalu, 'Masa lalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4493_masa_lalu, 'Masa Lalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4494_penalti, 'Penalti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4494_penalti, 'Hukuman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4495_sebuah_denda, 'Sebuah denda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4495_sebuah_denda, 'Bagus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4496_permainan_batsu, 'Permainan Batsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4496_permainan_batsu, 'Permainan Penalti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4497_untuk_menghukum, 'Untuk Menghukum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4497_untuk_menghukum, 'Untuk Menghukum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4498_kelahiran, 'Kelahiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4501_karakter_yang_dihilangkan, 'Karakter yang Dihilangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4501_karakter_yang_dihilangkan, 'Surat yang Dihilangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4504_biksu_buddha, 'Biksu Buddha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4505_bayi, 'Bayi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4505_bayi, 'Bayi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4506_biksu_buddha, 'Biksu Buddha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4506_biksu_buddha, 'Kepala yang Dicukur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4506_biksu_buddha, 'Anak laki-laki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4507_istana_kekaisaran, 'Istana Kekaisaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4507_istana_kekaisaran, 'Keluarga Kekaisaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4508_setiap, 'Setiap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4508_setiap, 'Setiap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4508_setiap, 'Masing-masing', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4509_setiap, 'Setiap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4509_setiap, 'Setiap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4509_setiap, 'Bermacam-macam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4510_setiap_daerah, 'Setiap Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4510_setiap_daerah, 'Berbagai Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4511_setiap_orang, 'Setiap Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4511_setiap_orang, 'Individu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4512_memandu, 'Memandu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4512_memandu, 'Informasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4512_memandu, 'Undangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4513_mendadak, 'Mendadak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4513_mendadak, 'Lebih dari yang Diharapkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4514_untuk_meletakkan, 'Untuk Meletakkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4514_untuk_meletakkan, 'Untuk Mengatur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4514_untuk_meletakkan, 'Ke Tempat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4514_untuk_meletakkan, 'Untuk Menempatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4515_posisi, 'Posisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4515_posisi, 'Lokasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4515_posisi, 'Tempat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4516_pengeluaran, 'Pengeluaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4516_pengeluaran, 'Biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4517_konsumsi, 'Konsumsi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4517_konsumsi, 'Pengeluaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4518_biaya_perusahaan, 'Biaya Perusahaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4520_harga, 'Harga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4520_harga, 'Harga Komoditas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4520_harga, 'Biaya Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4521_nilai_tanah, 'Nilai Tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4522_memaksa, 'Memaksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4522_memaksa, 'momentum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4523_pengaruh, 'Pengaruh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4523_pengaruh, 'Memaksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4524_sikap, 'Sikap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4524_sikap, 'Sikap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4525_kerumunan, 'Kerumunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4525_kerumunan, 'Jumlah yang Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4526_untuk_menjalankan_bisnis, 'Untuk Menjalankan Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4526_untuk_menjalankan_bisnis, 'Untuk Mengelola Bisnis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4527_bisnis, 'Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4527_bisnis, 'Penjualan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4528_publik, 'Publik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4528_publik, 'Pemerintahan dijalankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4528_publik, 'Dijalankan Oleh Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4529_pribadi, 'Pribadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4529_pribadi, 'Jalankan Secara Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4529_pribadi, 'Jalankan Secara Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4530_dijalankan_oleh_kota, 'Dijalankan Oleh Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4530_dijalankan_oleh_kota, 'Jalankan Kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4531_manajemen_pemerintahan, 'Manajemen Pemerintahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4531_manajemen_pemerintahan, 'Operasi Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4531_manajemen_pemerintahan, 'Dijalankan Oleh Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4531_manajemen_pemerintahan, 'Pemerintahan dijalankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4532_dijalankan_oleh_prefektur, 'Dijalankan Oleh Prefektur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4532_dijalankan_oleh_prefektur, 'Lari Prefektur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4532_dijalankan_oleh_prefektur, 'Prefektur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4533_untuk_menunjukkan, 'Untuk Menunjukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4533_untuk_menunjukkan, 'Untuk Menunjukkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4533_untuk_menunjukkan, 'Untuk Mendemonstrasikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4534_instruksi, 'instruksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4534_instruksi, 'Petunjuk arah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4534_instruksi, 'Nasihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4535_pengumuman_publik, 'Pengumuman Publik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4536_presiden, 'Presiden', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4537_tradisi, 'Tradisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4538_penyatuan, 'Penyatuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4538_penyatuan, 'Integrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4538_penyatuan, 'Konsolidasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4540_domain, 'Domain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4540_domain, 'Wilayah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4540_domain, 'Dunia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4541_wilayah, 'Wilayah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4542_sebuah_rencana, 'Sebuah Rencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4542_sebuah_rencana, 'Rencana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4542_sebuah_rencana, 'Skema', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4543_kebijakan, 'Kebijakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4543_kebijakan, 'Sebuah Kebijakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4544_wisteria, 'Wisteria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4545_kata_keterangan, 'Kata keterangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4546_bisnis_sampingan, 'Bisnis Sampingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4546_bisnis_sampingan, 'Pekerjaan Sampingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4546_bisnis_sampingan, 'Pertunjukan Sampingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4547_subjudul, 'Subjudul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4547_subjudul, 'Subjudul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4547_subjudul, 'Judul Sekunder', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4548_nilai, 'Nilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4548_nilai, 'Harga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4550_nilai, 'Nilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4550_nilai, 'Bernilai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4550_nilai, 'Kemampuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4552_untuk_melihat, 'Untuk Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4552_untuk_melihat, 'Untuk Menonton', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4552_untuk_melihat, 'Untuk Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4553_tamasya, 'Tamasya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4553_tamasya, 'Pariwisata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4554_hadirin, 'Hadirin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4554_hadirin, 'Penonton', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4555_penampilan_luar, 'Penampilan Luar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4555_penampilan_luar, 'Pulasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4556_pandangan_subjektif, 'Pandangan Subjektif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4556_pandangan_subjektif, 'Pendapat Subjektif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4556_pandangan_subjektif, 'Subyektif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4557_ide, 'Ide', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4557_ide, 'Gagasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4558_angka, 'Angka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4558_angka, 'Penampilan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4558_angka, 'Membentuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4559_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4559_daerah, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4559_daerah, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4560_wilayah, 'Wilayah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4560_wilayah, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4560_wilayah, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4561_untuk_merokok, 'Untuk Merokok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4561_untuk_merokok, 'Mengisap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4561_untuk_merokok, 'Untuk menarik napas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4562_untuk_menanggapi, 'Untuk Menanggapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4562_untuk_menanggapi, 'Untuk Mematuhi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4563_untuk_saat_ini, 'Untuk Saat Ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4563_untuk_saat_ini, 'Sampai batas tertentu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4563_untuk_saat_ini, 'Lebih kurang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4563_untuk_saat_ini, 'Untuk berjaga-jaga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4564_sebuah_reaksi, 'Sebuah Reaksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4564_sebuah_reaksi, 'Reaksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4564_sebuah_reaksi, 'Sebuah Respon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4564_sebuah_reaksi, 'Tanggapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4565_dalil, 'Dalil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4565_dalil, 'Usul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4565_dalil, 'Saran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4566_penyerahan, 'Penyerahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4566_penyerahan, 'Pengajuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4566_penyerahan, 'Menyerahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4566_penyerahan, 'Presentasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4567_bantuan, 'Bantuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4567_bantuan, 'Bantuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4568_mendukung, 'Mendukung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4570_kondisi, 'Kondisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4570_kondisi, 'Negara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4571_orang_cabul, 'Orang cabul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4571_orang_cabul, 'Abnormal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4571_orang_cabul, 'Transformasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4571_orang_cabul, 'Metamorfosis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4572_sesuai_tujuan, 'Sesuai Tujuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4572_sesuai_tujuan, 'Dengan sengaja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4572_sesuai_tujuan, 'Dengan sengaja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4573_sikap, 'Sikap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4573_sikap, 'Tata krama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4573_sikap, 'Perilaku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4574_kesalahan_ceroboh, 'Kesalahan ceroboh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4574_kesalahan_ceroboh, 'Aib', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4575_kartu_tahun_baru, 'Kartu Tahun Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4575_kartu_tahun_baru, 'Kartu Ucapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4582_untuk_menilai, 'Untuk menilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4582_untuk_menilai, 'Untuk menyimpulkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4583_rasa_tanggung_jawab, 'Rasa Tanggung Jawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4591_kartu_tahun_baru, 'Kartu Tahun Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4591_kartu_tahun_baru, 'Kartu Ucapan Tahun Baru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4839_mustahil, 'Mustahil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4839_mustahil, 'Tidak Mungkin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4841_untuk_mengkritik, 'Untuk Mengkritik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4841_untuk_mengkritik, 'Disalahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4842_membenci, 'Membenci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4842_membenci, 'Benar-benar Benci', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4842_membenci, 'Menjijikkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4843_untuk_terjatuh, 'Untuk Terjatuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4843_untuk_terjatuh, 'Untuk Dirobohkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4843_untuk_terjatuh, 'Runtuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4844_membiarkan_sesuatu_terbang, 'Membiarkan Sesuatu Terbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4844_membiarkan_sesuatu_terbang, 'Untuk Mengirim Sesuatu Terbang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4844_membiarkan_sesuatu_terbang, 'Untuk Melewati Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4845_untuk_memastikannya, 'Untuk Memastikannya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4845_untuk_memastikannya, 'Untuk Memverifikasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4845_untuk_memastikannya, 'Untuk Konfirmasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4846_sulit, 'Sulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4846_sulit, 'Sebuah Kerepotan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4846_sulit, 'Mengganggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4852_untuk_memeriksa, 'Untuk Memeriksa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4852_untuk_memeriksa, 'Untuk Memeriksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4852_untuk_memeriksa, 'Untuk Memeriksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4867_mendukung, 'Mendukung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4867_mendukung, 'Akar Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4867_mendukung, 'Bantuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5327_pembaruan, 'Pembaruan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5327_pembaruan, 'Memperbarui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5328_perubahan, 'Perubahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5328_perubahan, 'Mengubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5753_turun, 'Turun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5753_turun, 'Penurunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5753_turun, 'Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6531_membuka_baju, 'Membuka baju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7467_toilet, 'Toilet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7467_toilet, 'Kamar kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7467_toilet, 'Kamar mandi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7467_toilet, 'WC', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7502_untuk_tinggal, 'Untuk Tinggal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7502_untuk_tinggal, 'Untuk Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7502_untuk_tinggal, 'Untuk Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7596_suasana_hati_buruk, 'Suasana hati buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7596_suasana_hati_buruk, 'Pemarah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7596_suasana_hati_buruk, 'Cemberut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7597_untuk_mengguncang, 'Untuk Mengguncang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7597_untuk_mengguncang, 'Menggigil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7597_untuk_mengguncang, 'Untuk Gempa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7597_untuk_mengguncang, 'Gemetar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7597_untuk_mengguncang, 'Ke Quaver', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7597_untuk_mengguncang, 'Bergetar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7611_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7611_pakaian, 'Pakaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7611_pakaian, 'Pakaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7650_harga, 'Harga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7650_harga, 'Nilai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7650_harga, 'Biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7710_perasaan_tidak_menyenangkan, 'Perasaan Tidak Menyenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7710_perasaan_tidak_menyenangkan, 'Menjijikkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7764_berurusan_dengan, 'Berurusan Dengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7764_berurusan_dengan, 'Tanggapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8677_siaga, 'Siaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8677_siaga, 'Sedang Panggilan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8713_terima_kasih, 'Terima kasih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8713_terima_kasih, 'Terima kasih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8753_suvenir, 'Suvenir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8753_suvenir, 'Hadiah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8867_untuk_menyerah, 'Untuk Menyerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8867_untuk_menyerah, 'Untuk Meninggalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8898_lengan_baju, 'Lengan baju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8949_untuk_menembus_ke, 'Untuk Menembus Ke', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8949_untuk_menembus_ke, 'Untuk Tetap Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8949_untuk_menembus_ke, 'Untuk Menusuk Ke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9502_untuk_terhubung, 'Untuk Terhubung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9502_untuk_terhubung, 'Menjadi Terkait', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9502_untuk_terhubung, 'Untuk Bergabung Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9503_simpul, 'Simpul', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3757_arsitektur, 'けんちく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3781_baru_dibangun, 'しんちく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4278_untuk_memakai, 'かぶる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4292_ekor, 'しっぽ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4317_untuk_lulus, 'たつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4319_orang_yang_berpengalaman, 'けいけんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4389_menjadi_ramai, 'こむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4400_ekonomi, 'けいざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4404_cantik, 'すてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4445_evaluasi, 'ひょうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4446_kritik, 'ひょうろん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4447_ulasan_buku, 'しょひょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4480_membanjiri, 'あっとうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4481_tekanan_darah_tinggi, 'こうけつあつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4482_untuk_ada, 'そんざいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4483_kata_kata_yang_menyakitkan, 'いやみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4484_peluang, 'きかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4485_pencegahan_kejahatan, 'ぼうはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4486_industri, 'さんぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4488_untuk_tidur, 'ねる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4489_tidur_sebentar, 'ひるね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4490_kurang_tidur, 'ねぶそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4491_tidur_berlebihan, 'ねぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4492_untuk_lulus, 'すぎる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4493_masa_lalu, 'かこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4494_penalti, 'ばつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4495_sebuah_denda, 'ばっきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4496_permainan_batsu, 'ばつげーむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4496_permainan_batsu, 'ばつゲーム', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4497_untuk_menghukum, 'ばっする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4498_kelahiran, 'たんじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4501_karakter_yang_dihilangkan, 'だつじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4504_biksu_buddha, 'ぼうさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4505_bayi, 'あかんぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4506_biksu_buddha, 'ぼうず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4507_istana_kekaisaran, 'みや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4508_setiap, 'おのおの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4509_setiap, 'かく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4510_setiap_daerah, 'かくち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4511_setiap_orang, 'かくじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4512_memandu, 'あんない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4513_mendadak, 'あんがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4514_untuk_meletakkan, 'おく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4515_posisi, 'いち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4516_pengeluaran, 'ひよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4517_konsumsi, 'しょうひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4518_biaya_perusahaan, 'しゃひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4520_harga, 'ぶっか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4521_nilai_tanah, 'ちか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4522_memaksa, 'いきおい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4523_pengaruh, 'せいりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4524_sikap, 'しせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4525_kerumunan, 'おおぜい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4526_untuk_menjalankan_bisnis, 'いとなむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4527_bisnis, 'えいぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4528_publik, 'こうえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4529_pribadi, 'しえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4530_dijalankan_oleh_kota, 'しえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4531_manajemen_pemerintahan, 'かんえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4532_dijalankan_oleh_prefektur, 'けんえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4533_untuk_menunjukkan, 'しめす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4534_instruksi, 'しじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4535_pengumuman_publik, 'こうじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4536_presiden, 'だいとうりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4537_tradisi, 'でんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4538_penyatuan, 'とうごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4540_domain, 'りょういき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4541_wilayah, 'りょうど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4542_sebuah_rencana, 'さく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4543_kebijakan, 'せいさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4544_wisteria, 'ふじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4545_kata_keterangan, 'ふくし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4546_bisnis_sampingan, 'ふくぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4547_subjudul, 'ふくだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4548_nilai, 'あたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4548_nilai, 'ね', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4550_nilai, 'かち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4552_untuk_melihat, 'みる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4553_tamasya, 'かんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4554_hadirin, 'かんきゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4555_penampilan_luar, 'がいかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4556_pandangan_subjektif, 'しゅかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4557_ide, 'かんねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4558_angka, 'すがた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4559_daerah, 'くいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4560_wilayah, 'ちいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4561_untuk_merokok, 'すう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4562_untuk_menanggapi, 'おうじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4563_untuk_saat_ini, 'いちおう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4564_sebuah_reaksi, 'はんのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4565_dalil, 'ていあん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4566_penyerahan, 'ていしゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4567_bantuan, 'えんじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4568_mendukung, 'しえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4570_kondisi, 'じょうたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4571_orang_cabul, 'へんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4572_sesuai_tujuan, 'わざと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4573_sikap, 'たいど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4574_kesalahan_ceroboh, 'しったい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4575_kartu_tahun_baru, 'がじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4582_untuk_menilai, 'はんだんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4583_rasa_tanggung_jawab, 'せきにんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4591_kartu_tahun_baru, 'ねんがじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4839_mustahil, 'ふかのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4841_untuk_mengkritik, 'ひなんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4842_membenci, 'だいきらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4843_untuk_terjatuh, 'たおれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4844_membiarkan_sesuatu_terbang, 'とばす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4845_untuk_memastikannya, 'たしかめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4846_sulit, 'めんどうくさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4846_sulit, 'めんどくさい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4852_untuk_memeriksa, 'けんさする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4867_mendukung, 'おうえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5327_pembaruan, 'こうしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5328_perubahan, 'へんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5753_turun, 'こうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6531_membuka_baju, 'だつい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7467_toilet, 'おてあらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7502_untuk_tinggal, 'ざいりゅうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7596_suasana_hati_buruk, 'ふきげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7597_untuk_mengguncang, 'ふるえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7611_pakaian, 'いふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7650_harga, 'かかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7710_perasaan_tidak_menyenangkan, 'けんおかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7764_berurusan_dengan, 'たいおう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8677_siaga, 'たいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8713_terima_kasih, 'ありがとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8753_suvenir, 'おみやげ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8867_untuk_menyerah, 'あきらめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8898_lengan_baju, 'そで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8949_untuk_menembus_ke, 'ささる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9502_untuk_terhubung, 'むすびつく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9503_simpul, 'むすびめ', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3757_arsitektur, 'この町はユニークな建築で有名です。', 'Kota ini terkenal dengan arsitekturnya yang unik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3757_arsitektur, 'その建築物は市のランドマークになっています。', 'Bangunan itu telah menjadi landmark kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3757_arsitektur, '私は大学で建築学を学んでいます。', 'Saya sedang belajar arsitektur di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3781_baru_dibangun, '新築のマンション以外には住みたくありません。', 'Saya tidak ingin tinggal di mana pun selain gedung apartemen baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3781_baru_dibangun, '新築の方がアレルギーが出ることが多いって聞いたんですけど、本当ですか？', 'Saya pernah mendengar bahwa rumah yang baru dibangun cenderung menyebabkan lebih banyak alergi, namun apakah itu benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3781_baru_dibangun, '新築の家でも買えば、気分が晴れるよ。', 'Membeli rumah yang baru dibangun akan menghibur Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4278_untuk_memakai, 'この仕事では、安全のためにヘルメットを被る必要があります。', 'Dalam pekerjaan ini, perlu memakai helm untuk keselamatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4278_untuk_memakai, 'この写真でニューヨーク・ヤンキースのキャップを被ってるのが私の弟です。', 'Di foto ini, yang memakai topi New York Yankees adalah saudara laki-laki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4278_untuk_memakai, 'うちの子は、他人の前ではいつも猫を被ります。', 'Anak saya selalu memakai topeng kepolosan di depan orang yang bukan anggota keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4278_untuk_memakai, 'ストッキングを被った男が銀行からお金を持って走って出ていくのを見ました。銀行に入るタイミングが被らなくて良かった！', 'Saya melihat seorang pria yang mengenakan stoking menutupi kepalanya berlari keluar dari bank membawa uang. Saya senang waktu kita untuk memasuki bank tidak bersamaan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4292_ekor, 'マリリンの猫の尻尾は、とてもフワフワです。', 'Ekor kucing Marilyn sangat halus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4292_ekor, 'だれも、タイソンに尻尾が生えていることには気づいていなかった。', 'Tak seorang pun menyadari bahwa Tyson punya ekor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4292_ekor, 'あの可愛い柴犬が、尻尾を振りながらコウイチに近づき、飛びついた。', 'Shiba imut itu mendatangi Koichi sambil mengibaskan ekornya dan melompat ke arahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4317_untuk_lulus, '時が経つのを忘れて熱中していました。', 'Saya begitu asyik sampai lupa waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4317_untuk_lulus, 'あなたがワニカニを始めてから、もう何年経ちましたか？', 'Sudah berapa tahun sejak Anda mulai menggunakan WaniKani?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4317_untuk_lulus, '時間が経てばわかるよ。', 'Waktu akan menjawabnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4317_untuk_lulus, '急に片目が全く見えなくなったら、できるだけ早く目医者さんに行ってください。時間が経てば経つほど、治すのが難しくなる可能性があります。', 'Jika salah satu mata tiba-tiba menjadi buta total, harap segera pergi ke dokter mata. Semakin lama Anda menunggu, semakin sulit pengobatannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4319_orang_yang_berpengalaman, '経験者から、価値あるアドバイスをいただくことができました。', 'Kami bisa mendapatkan nasihat berharga dari orang yang berpengalaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4319_orang_yang_berpengalaman, 'やっぱり経験者はちがうね。', 'Seperti yang Anda harapkan, orang yang berpengalaman itu luar biasa, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4319_orang_yang_berpengalaman, 'コウイチはトーフグに犯罪経験者を雇うと思いますか？', 'Apakah menurut Anda Koichi akan mempekerjakan penjahat berpengalaman di Tofugu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4389_menjadi_ramai, 'その時間だと道路はかなり混んでいますよね？', 'Jalanan saat itu cukup ramai, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4389_menjadi_ramai, 'ファーマーズマーケットはお昼ごろになるとかなり混むので、人混みをさけるためにできるだけ朝早く買い物に行くようにしています。', 'Pasar petani cukup ramai pada siang hari, jadi saya mencoba berbelanja sepagi mungkin untuk menghindari keramaian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4389_menjadi_ramai, '電車は毎日混みますが、あなたのせいではありません。自分を責める必要はありませんよ。', 'Keretanya ramai setiap pagi, tapi itu bukan salahmu. Tidak perlu menyalahkan diri sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4400_ekonomi, '私の兄は、大学で経済学を勉強しています。', 'Kakak laki-laki saya sedang belajar ekonomi di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4400_ekonomi, 'トーフグが毎晩飲み会を設けているのは、経済活性化のためです。', 'Tofugu mengadakan pesta minum setiap malam untuk membantu menstimulasi perekonomian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4400_ekonomi, 'コウイチが大統領になってからというもの、アメリカの経済は急ピッチで回復している。', 'Sejak Koichi menjadi Presiden, perekonomian AS telah pulih dengan pesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4404_cantik, 'カレの他の人を助けたいっていう熱意が、素敵だなって思うのよね。', 'Saya menganggapnya menarik karena antusiasmenya dalam membantu orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4404_cantik, '素敵な花に交じって、キノコが生えているのを見つけました。', 'Saya memperhatikan beberapa jamur hidup di antara bunga-bunga indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4404_cantik, 'とっても素敵な露天風呂ですね。', 'Ini adalah pemandian terbuka yang indah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4445_evaluasi, '日本語の先生たちも、トーフグのことを高く評価してくれているようです。', 'Guru bahasa Jepang juga tampaknya sangat menghargai Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4445_evaluasi, 'この映画が批判的な評価を受けるとは思わなかった。', 'Saya tidak menyangka film ini mendapat kritik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4445_evaluasi, '私のホームドクターは、いつも急いでいて、自分の症状について調べてきた患者の話を聞かずにけんもほろろに追い出すので、評価が低い。', 'Dokter keluarga saya mendapat rating rendah karena dia selalu terburu-buru, tidak mau mendengarkan pasien yang telah meneliti masalah kesehatannya, dan sering mengabaikan kekhawatiran mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4446_kritik, 'この評論はよくまとまっているね。', 'Kritik ini cukup kohesif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4446_kritik, 'あんな二流の評論しか書けないやつの言葉、気にするなよ。', 'Jangan biarkan perkataan seseorang yang hanya bisa menulis kritik kelas dua mempengaruhi Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4446_kritik, '映画の中で十歳の女の子が評論をしているのが可愛いよね。', 'Lucu sekali melihat gadis berusia sepuluh tahun melontarkan kritik di sebuah film, bukan begitu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4447_ulasan_buku, 'コウイチにこの本の書評をお願いしてもらえませんか？', 'Bisakah Anda meminta Koichi untuk mengulas buku ini untuk saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4447_ulasan_buku, 'その書評は、妥当なものとして広く認められています。', 'Resensi buku tersebut diakui secara luas sebagai ulasan yang beralasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4447_ulasan_buku, 'その本についての批判的な書評があまりにも多いので、買う気が失せたよ。', 'Ada begitu banyak ulasan kritis tentang buku itu sehingga saya kehilangan minat untuk membelinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4480_membanjiri, 'ダリンは自然の美しさに圧倒された。', 'Darin terpesona dengan keindahan alam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4480_membanjiri, 'この新しいサイトは他社の日本語学習サイトを圧倒するだろう。', 'Situs baru ini akan mengalahkan situs berbahasa Jepang lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4480_membanjiri, 'ケリー氏は今回の選挙で圧倒的に勝利を収めましたね。彼の勢いには本当に圧倒されました。', 'Tuan Kerry memenangkan pemilihan ini dengan telak, bukan? Saya benar-benar takjub dengan momentumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4481_tekanan_darah_tinggi, '原因は高血圧です。', 'Penyebabnya adalah tekanan darah tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4481_tekanan_darah_tinggi, 'コウイチが高血圧だというデマをあちこちで飛ばしているのは一体だれなんだ？', 'Siapa sih yang menyebarkan rumor palsu bahwa Koichi menderita tekanan darah tinggi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4481_tekanan_darah_tinggi, 'フグは高血圧で、塩分の少ない食事を取る必要があるとお医者さんから言われた。', 'Fugu menderita tekanan darah tinggi dan dokter diberitahu bahwa ia harus menjalani diet rendah garam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4482_untuk_ada, 'ワニカニが存在してくれたおかげで、ついに漢字を覚えることができました。', 'Berkat adanya WaniKani, saya akhirnya bisa menghafal karakter kanji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4482_untuk_ada, '私は死後の世界は存在すると思います。', 'Menurutku, kehidupan setelah kematian itu ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4482_untuk_ada, '感情をそこまで態度に出す人が存在するとは思ってもみなかったよ。', 'Saya bahkan tidak pernah membayangkan bahwa mungkin ada seseorang yang membiarkan emosinya terlihat sedemikian rupa dalam sikapnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4483_kata_kata_yang_menyakitkan, 'こんなクイズも解けないのか、と嫌味を言われた。', 'Mereka memberikan komentar yang tidak menyenangkan kepada saya, seperti, "Kamu bahkan tidak bisa menjawab pertanyaan sederhana seperti itu?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4483_kata_kata_yang_menyakitkan, 'アイツ、ちょっと頭悪いよね。どうしてあれが嫌味だってことに気づかないのかな。', 'Dia agak idiot, bukan begitu? Mengapa dia tidak menyadari bahwa itu adalah sarkasme?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4483_kata_kata_yang_menyakitkan, 'あの嫌味な女をギャフンと言わせた君の発言は、賞賛に値するよ。', 'Komentar yang Anda buat untuk membungkam wanita menjengkelkan itu sungguh terpuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4484_peluang, 'えーっ、仲直りするいい機会じゃない？', 'Eh, bukankah ini kesempatan bagus untuk berdamai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4484_peluang, '機会があれば、今度ご案内しますよ。', 'Jika ada kesempatan, aku akan mengajakmu berkeliling kapan-kapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4484_peluang, '「土曜日に夕食にいらっしゃいませんか？河豚のパイ生地包み焼きを作る予定なんですよ。」「喜んで行きたいのですが、会議がありますので。またの機会にお願いします。」', '“Apakah kamu ingin datang untuk makan malam pada hari Sabtu? Aku akan membuatkan Fugu-wellington.” "Aku ingin, tapi aku ada rapat. Aku akan mengambil cek hujan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4485_pencegahan_kejahatan, '防犯のために多くの提案がなされました。', 'Banyak proposal yang diajukan untuk pencegahan kejahatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4485_pencegahan_kejahatan, 'その防犯カメラを分解検査してもらわないといけません。', 'Kita perlu membongkar dan memeriksa kamera keamanan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4485_pencegahan_kejahatan, '本日参りました理由は、当社の最新防犯グッズをご紹介するためです。', 'Alasan saya berada di sini hari ini adalah untuk memperkenalkan produk pencegahan kejahatan terbaru kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4486_industri, '日本で最も重要な産業は何ですか？', 'Industri apa yang paling penting di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4486_industri, '産業のグローバル化を支えるために、月一で同業者で集まって、英語の勉強会を開いています。', 'Kami mengadakan pertemuan belajar bahasa Inggris sebulan sekali dengan orang-orang yang memiliki keahlian yang sama untuk mendukung globalisasi industri kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4486_industri, '戦後の日本の高度成長期を牽引した重厚長大産業を支えたのは、石油産業である。', 'Industri minyak mendukung industri berat, yang menyebabkan periode pertumbuhan pesat Jepang setelah Perang Dunia II.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4488_untuk_tidur, 'よし、そろそろ寝るね〜。おやすみ〜。また明日〜。', 'Baiklah, aku akan tidur. Tidur nyenyak. Sampai jumpa di pagi hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4488_untuk_tidur, 'おやすみ、ダーリン<3 ぐっすり寝てね。', 'Selamat malam sayang <3 Tidur nyenyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4488_untuk_tidur, '日曜日にトーフグのオフィスに行くと、コウイチが床の上で寝ていたことがあった。', 'Saya pernah pergi ke kantor Tofugu pada hari Minggu dan menemukan Koichi tertidur di lantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4489_tidur_sebentar, 'ちょこっと昼寝してくるねー。', 'Aku akan tidur siang sebentar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4489_tidur_sebentar, '昼寝から目覚めると、すでに夜の七時を回っていた。', 'Ketika saya bangun dari tidur siang saya, waktu sudah lewat jam 7 malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4489_tidur_sebentar, 'コウイチはただ今昼寝中です。おかけになって少々お待ちください。', 'Koichi sedang tidur siang saat ini. Silakan duduk dan tunggu sebentar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4490_kurang_tidur, '「今日も残業するつもりなの？」「えっと…ですね、今日は寝不足なのでどちらかというと早く上がりたいと思っています。」', '“Jadi, apakah kamu akan bekerja lembur lagi hari ini?” "Sebenarnya, aku berharap bisa pulang kerja lebih awal hari ini karena aku kurang tidur."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4490_kurang_tidur, '昨日は午前二時まで夫の帰りを寝ないで待っていたので、寝不足です。', 'Saya tidak cukup tidur tadi malam karena saya menunggu suami saya sampai jam dua pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4490_kurang_tidur, 'そんな寝不足な顔して会社に来るなって上司に怒られた。', 'Saya ditegur oleh atasan saya karena datang ke kantor dalam keadaan mengantuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4491_tidur_berlebihan, '二度寝は危ないよ〜寝坊しちゃうよ！ゼッタイに二度寝しちゃダメだよ。', 'Jangan kembali tidur - Anda akan ketiduran! Jangan pernah kembali tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4491_tidur_berlebihan, 'あいにくですが、トーフグのオフィスには今、ご対応できる者がおりません。社員がみんな寝坊してしまったのです。', 'Saya khawatir tidak ada seorang pun di kantor Tofugu yang bisa dihubungi saat ini. Setiap pekerja ketiduran hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4491_tidur_berlebihan, '寝坊で遅刻することが多すぎて、田舎の支店に飛ばされました。', 'Saya sering ketiduran dan terlambat, jadi saya dipindahkan ke kantor cabang pedesaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4492_untuk_lulus, '夏が過ぎ、木の葉が色づき初めていた。', 'Musim panas telah berakhir dan dedaunan di pepohonan mulai berubah warna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4492_untuk_lulus, 'トーフグの社員達はみんな、台風が過ぎるのをオフィスで待った。', 'Seluruh karyawan Tofugu menunggu di kantor hingga topan berlalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4492_untuk_lulus, '昨晩は、晩ご飯を食べ過ぎて、どうしても寝られませんでした。', 'Saya tidak bisa tidur tadi malam karena saya makan terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4493_masa_lalu, '玉ねぎが目にしみたことは過去に一度もありません。', 'Mataku belum pernah berair karena bawang sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4493_masa_lalu, 'これから、自分なりに、過去の出来事にしっかり向き合っていくつもりです。', 'Ke depannya, saya memutuskan untuk menghadapi peristiwa di masa lalu dengan cara saya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4493_masa_lalu, 'あの男は、過去十年にも渡って、家賃を滞納しているんです。', 'Pria itu belum membayar sewa selama 10 tahun terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4494_penalti, 'クラスの生徒全員がカンニングで罰を受けたなんて、信じられない。', 'Saya tidak percaya semua siswa di kelas mendapat hukuman karena menyontek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4494_penalti, 'タイガー・ウッズがドライバーにポケモンのシールを付けてプレイしていたせいで、一ホールにつき二打の罰が科されたって本当？', 'Benarkah Tiger Woods dihukum dua tembakan per hole karena bermain dengan stiker Pokémon di pengemudinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4494_penalti, 'アスリートのドーピング違反に、刑事罰を導入する動きが広まっています。', 'Ada gerakan luas yang menjadikan pelanggaran doping oleh atlet dapat dikenakan hukuman pidana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4495_sebuah_denda, '罰金については、また追って連絡します。', 'Kami akan segera menghubungi Anda mengenai denda tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4495_sebuah_denda, '運転中にスマホをチラ見したところを警察に見られて、六千円の罰金を取られた。', 'Polisi melihat saya melirik ponsel saya saat mengemudi dan memberi saya denda 6.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4495_sebuah_denda, '遅刻した社員に罰金を払わせようという提案がありました。', 'Ada usulan agar karyawan yang terlambat membayar denda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4496_permainan_batsu, 'この罰ゲームについて、がっかりもしてるんだけど、ワクワクしてもいるんだよね。', 'Saya agak kecewa dengan permainan penalti ini, tapi saya juga sedikit bersemangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4496_permainan_batsu, '罰ゲームで、一週間毎日八時間寝ることになりました。', 'Sebagai hukuman dari permainan batsu, saya harus tidur delapan jam setiap malam selama seminggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4496_permainan_batsu, '今だから言えるけど、あの時お前に告白したの、ただの罰ゲームだったんだよ。	', 'Aku bisa memberitahumu ini sekarang, tapi dulu saat aku menyatakan perasaanku padamu, itu hanya karena permainan batsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4497_untuk_menghukum, 'その選手は明らかにドーピングをしていたのに、罰せられなかったんだ。', 'Atlet tersebut jelas menggunakan doping, namun dia tidak dihukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4497_untuk_menghukum, 'ウソをついている子どもがいたら、罰する前にまず理由を聞いてあげるべきです。', 'Jika seorang anak berbohong, sebaiknya tanyakan dulu alasannya sebelum menghukumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4497_untuk_menghukum, 'コウイチはトーフグの秘密を漏らした従業員を罰した。', 'Koichi menghukum karyawan yang membocorkan rahasia Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4498_kelahiran, 'トーフグはどうやって誕生したんですか？', 'Bagaimana Tofugu muncul?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4498_kelahiran, 'その男は、一九八五年にアメリカで誕生した。', 'Pria tersebut lahir di Amerika Serikat pada tahun 1985.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4498_kelahiran, '私の誕生日は四月八日で、お釈迦様の誕生日と同じ日です。', 'Ulang tahun saya tanggal 8 April, yang merupakan hari lahir yang sama dengan hari lahir Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4501_karakter_yang_dihilangkan, 'あっ、ヤバい。一字脱字がある！', 'Oh tidak. Ada satu karakter yang hilang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4501_karakter_yang_dihilangkan, 'この記事の中の、どこに脱字があるか分かりますか？', 'Bisakah Anda melihat di mana karakter yang hilang di artikel ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4501_karakter_yang_dihilangkan, '誤字脱字を見つけたら、遠慮せずに教えてくださいね。', 'Jangan takut untuk memberi tahu saya jika Anda menemukan kata-kata yang salah eja atau hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4504_biksu_buddha, 'あの坊さんには、アメリカ人の血も混じっているんですよ。', 'Bhikkhu itu mempunyai darah Amerika dalam dirinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4504_biksu_buddha, '人は見かけだけでは判断できないよ。例えば、アイツはヤクザみたいな見た目をしているけど、実は坊さんなんだぜ。', 'Penampilan bisa menipu. Misalnya, dia terlihat seperti yakuza, tapi sebenarnya dia adalah seorang biksu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4504_biksu_buddha, 'くそ、彼女が付き合ってる坊さんたちには太刀打ちできねーよ。あいつら俺とはかなりレベルが違うんだ。', 'Sobat, aku tidak bisa bersaing dengan para biksu yang berkencan dengannya. Mereka berada pada level yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4505_bayi, 'ミルクもあげてみたし、オムツもかえてみたでしょ。それに、ゲップもさせてみた。あーどうしたら赤ん坊を泣き止ませることができるんだろう。', 'Kami sudah mencoba memberinya makan, mengganti pakaiannya, dan bersendawa. Nah, bagaimana caranya agar bayi ini berhenti menangis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4505_bayi, 'たいていの人は、ペットや赤ん坊を見ると、思わず「可愛い」と思ってしまう。', 'Kebanyakan orang pasti berpikir “imut” saat melihat hewan peliharaan atau bayi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4505_bayi, '「赤ん坊、寝てる？起きてる？」「風邪を引いて寝てるよ。」', '“Apakah bayinya tidur atau bangun?” “Dia tertidur karena kedinginan.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4506_biksu_buddha, '坊主になる前に頭を坊主にした。', 'Sebelum menjadi pendeta Buddha, saya mencukur rambut saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4506_biksu_buddha, '明日、バリカンで坊主にする。', 'Besok, aku akan mencukur rambutku dengan gunting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4506_biksu_buddha, '息子よ。現実的になれ。いい加減俺の後を継いで坊主になったらどうなんだ？', 'Hei, nak. Anda harus realistis. Bukankah sudah saatnya Anda mengikuti jejak saya dan menjadi pendeta Buddha?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4507_istana_kekaisaran, '主人は宮仕えでとても忙しくしており、私は四週間も顔も見ていません。', 'Suamiku begitu sibuk dengan dinas istana kekaisaran sehingga aku tidak bertemu dengannya selama empat minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4507_istana_kekaisaran, '僕の夢は、お父さんみたいな宮大工になることです。', 'Impian saya adalah menjadi tukang kayu kuil dan kuil seperti ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4507_istana_kekaisaran, 'うちの赤ちゃんたちが生後一か月になったので、お宮参りに行ってきました。', 'Bayi kami sekarang berumur satu bulan, jadi kami membawa mereka ke kuil untuk diberkati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4508_setiap, 'コウイチとビエトは、各々ハンバーガーとホットドッグを注文しました。', 'Koichi dan Viet masing-masing memesan burger dan hot dog.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4508_setiap, 'まあ、各々、色々と都合がありますからね。', 'Ya, masing-masing dari kita punya alasan untuk melakukan sesuatu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4508_setiap, 'どうやら各々独自のポテトチップスの食べ方があるようだ。', 'Tampaknya setiap orang mempunyai cara tersendiri dalam mengonsumsi keripik kentang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4509_setiap, '各場所に、案内係が立っているはずです。', 'Harus ada pengantar yang berdiri di setiap lokasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4509_setiap, 'まず始めに、各チームの代表者を決めて下さい。', 'Pertama, pilih perwakilan untuk setiap tim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4509_setiap, 'こちらのお店では、ベーコンが各種取り揃えられています。', 'Toko ini menawarkan berbagai jenis bacon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4510_setiap_daerah, 'ワニカニのユーザーは世界各地にいます。', 'Pengguna Wanikani berada di berbagai belahan dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4510_setiap_daerah, 'テレビを点けると、ちょうど各地の今日の天気が伝えられているところだった。', 'Saat saya nyalakan TV, mereka hanya melaporkan cuaca hari ini di tiap daerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4510_setiap_daerah, '父の仕事の都合で、私の家族は各地を転々としなくてはいけませんでした。', 'Keluarga saya harus berpindah dari satu tempat ke tempat lain karena pekerjaan ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4511_setiap_orang, '遠足には、各自お弁当を持参してください。', 'Anda perlu membawa kotak bento sendiri untuk piknik sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4511_setiap_orang, 'トーフグのオフィスに入ると、各自が楽な姿勢で横になっていました。', 'Saat saya memasuki kantor Tofugu, setiap pekerja sudah berbaring dalam posisi yang nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4511_setiap_orang, '後は各自の判断に任せるしかないよ。', 'Satu-satunya hal yang bisa kita lakukan saat ini adalah membiarkan setiap orang memutuskan sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4512_memandu, '友人が、県営プールまで案内してくれました。', 'Teman saya membimbing saya ke kolam prefektur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4512_memandu, '「二人なんですが、席は空いていますか？」「お席にご案内するまで少しお待ちください。」', '"Apakah kamu punya meja untuk dua orang?" “Mohon tunggu sebentar, dan saya akan memandu Anda ke tempat duduk Anda.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4512_memandu, '先生の案内で学校を見て回った後、入学案内を渡されました。', 'Setelah guru membimbing kami berkeliling sekolah, kami diberi panduan penerimaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4513_mendadak, '日本語学習は私にはかなりハードルが高いんじゃないかと思っていたんですが、案外そうでもなかったです。', 'Saya pikir belajar bahasa Jepang akan sangat sulit bagi saya, namun di luar dugaan, ternyata tidak seburuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4513_mendadak, '日本人の魚好きの人でも、魚の小骨が苦手な人って案外多いんですよ。', 'Bahkan di kalangan pecinta ikan Jepang, ternyata banyak sekali orang yang tidak menyukai tulang ikan berukuran kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4513_mendadak, 'ご両親、全然そうは見えませんけど、案外お年を召してらっしゃるんですね。', 'Meski mereka tidak terlihat seperti itu, orang tuamu lebih tua dari perkiraanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4514_untuk_meletakkan, '赤ん坊をベビーベッドに置くことに成功した。', 'Saya berhasil menempatkan bayi itu di tempat tidurnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4514_untuk_meletakkan, 'ギョウザの皮の中央に具材を置いてください。', 'Letakkan bahan-bahan tersebut di tengah kulit gyoza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4514_untuk_meletakkan, 'フグと私は今距離を置いてるの。', 'Fugu dan aku membuat jarak di antara kami saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4515_posisi, '位置について、用意、ドン！', 'Sesuai keinginan Anda, bersiaplah, berangkat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4515_posisi, 'トーフグのオフィスは、かつて、ポートランドのど真ん中に位置していた。', 'Kantor Tofugu dulunya berlokasi di tengah Portland.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4515_posisi, '子供じゃないんだから、使った物はちゃんと元の位置に戻そうよ。', 'Anda bukan anak-anak, jadi Anda harus mengembalikan barang-barang yang telah Anda gunakan ke tempatnya yang semestinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4516_pengeluaran, '日本では引っ越し費用って大体どれくらいなの？', 'Kira-kira berapa biaya pindahan ke Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4516_pengeluaran, '式の費用は、夫の親が出してくれました。', 'Biaya pernikahan ditanggung oleh orang tua suami saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4516_pengeluaran, '昼食の費用は各自が負担することを提案します。', 'Kami mengusulkan agar setiap peserta membayar makan siangnya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4517_konsumsi, '日本の会社員の多くは、一日の時間のほとんどを仕事に消費します。', 'Mayoritas pekerja kantoran di Jepang menghabiskan sebagian besar waktunya di tempat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4517_konsumsi, '消費税の増税が消費を落ちこませたのは明らかだ。', 'Jelas bahwa kenaikan pajak konsumsi telah menekan konsumsi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4517_konsumsi, '豆乳や納豆の消費が増加しています。', 'Konsumsi susu kedelai dan natto meningkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4518_biaya_perusahaan, '私は社費で日本語を勉強させてもらっています。', 'Saya belajar bahasa Jepang dengan biaya perusahaan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4518_biaya_perusahaan, 'オフィスで働く社員達のランチは、社費でまかなわれている。', 'Makan siang untuk pekerja kantoran dibayar atas biaya perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4518_biaya_perusahaan, '来年、社費でアメリカの大学に留学できることになりました。', 'Tahun depan, saya akan belajar di universitas Amerika dengan biaya perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4520_harga, '日本でも、ついに物価が上がり始めたようだ。', 'Di Jepang, tampaknya harga-harga juga akhirnya mulai naik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4520_harga, '物価が急上昇してインフレが起こったせいで、お金の価値が下がってしまった。', 'Telah terjadi inflasi atau kenaikan harga yang tajam dan menyebabkan nilai uang anjlok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4520_harga, '最近は、物価が高くて遠い北米やヨーロッパよりも、近場で物価が安いタイやベトナムなどが、日本人の旅行先として選ばれています。', 'Wisatawan Jepang semakin memilih untuk bepergian ke Thailand dan Vietnam daripada ke Amerika Utara dan Eropa yang mahal dan jauh karena lokasinya yang dekat dan terjangkau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4521_nilai_tanah, '中国市場の暴落による地価の下落が止まりません。', 'Nilai tanah terus merosot akibat jatuhnya pasar Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4521_nilai_tanah, '幸運なことに、私の両親は地価がベラボウに高くなる前に、その土地を買いました。', 'Untungnya, orang tua saya telah membeli tanah tersebut sebelum harga tanah melambung tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4521_nilai_tanah, '地価税と固定資産税は、別に払わなくてはいけないんですか？', 'Apakah kita harus membayar pajak bumi dan bangunan secara terpisah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4522_memaksa, 'あの高校生のビデオへの批判の勢い、また強くなったね。', 'Momentum kritik atas video siswa SMA itu kembali mencuat ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4522_memaksa, 'みんなが食べるというので、勢いで私もイナゴのツクダニを食べた。', 'Semua orang bilang mereka akan memakannya, jadi di saat yang panas aku memakan belalang tsukudani juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4522_memaksa, '私達の犬は、誰と競争している訳でもないのに、いつもすごい勢いでミルクボーンに向かって行きます。', 'Anjing kami selalu berlari ke arah tulang susu meskipun dia tidak sedang balapan dengan siapa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4523_pengaruh, '世界の二大勢力と言えば、どの国とどの国を思いうかべますか？', 'Ketika Anda memikirkan dua negara besar di dunia, dua negara manakah yang Anda pikirkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4523_pengaruh, '台風の勢力は、夜にかけて次第に弱まっていきました。', 'Kekuatan topan secara bertahap melemah pada malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4523_pengaruh, 'その武装勢力は、急速に勢力を増大している。', 'Pemberontak bersenjata dengan cepat meningkatkan pengaruhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4524_sikap, 'トーフグはいつも低姿勢なので、好感が持てます。', 'Tofugu selalu mempunyai sikap yang rendah hati, jadi aku mempunyai kesan yang baik terhadap mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4524_sikap, 'クロッキーのクラスでは、モデルさんに色んな姿勢を取ってもらいました。', 'Kami meminta seorang model melakukan berbagai pose untuk kami selama kelas membuat sketsa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4524_sikap, 'たぶん姿勢が悪いから首がこるんでしょう。', 'Postur tubuh Anda yang buruk mungkin menjadi penyebab leher Anda sangat kaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4525_kerumunan, '大勢の生徒の出席を取る時、たまに一人か二人、名前を飛ばしてしまうことがあります。', 'Ketika saya mencatat kehadiran siswa dalam jumlah besar, terkadang saya melewatkan satu atau dua nama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4525_kerumunan, 'ブラピを一目見ようとする見物人が大勢集まりました。', 'Kerumunan besar penonton berkumpul untuk melihat sekilas Brad Pitt.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4525_kerumunan, '大勢の人の前で話す事に慣れていないので、今からもう手が震えています。', 'Saya tidak terbiasa berbicara di depan orang banyak, sehingga tangan saya sudah gemetar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4526_untuk_menjalankan_bisnis, '私のおじは、岡山県でイタリアン・レストランを営んでいます。', 'Paman saya mengelola sebuah restoran Italia di prefektur Okayama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4526_untuk_menjalankan_bisnis, 'コウイチは、事業を営む天才だ。', 'Koichi adalah seorang yang jenius dalam mengelola bisnis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4526_untuk_menjalankan_bisnis, '私の両親はマッサージ業を営んでいるので、私はそこで「マッサージ受け放題」なんです。', 'Orang tua saya menjalankan bisnis terapi pijat, jadi saya bisa mendapatkan ''pijat sepuasnya'' di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4527_bisnis, 'うん！あそこのメイドカフェなら、今日は営業してるよ。どの子に会いに来たの？', 'Ya! Kafe pelayan itu buka untuk bisnis hari ini. Gadis mana yang ingin kamu temui?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4527_bisnis, 'トーフグオフィスの営業時間は西海岸時間で大体朝九時から夕方六時までです。', 'Jam kerja kantor Tofugu umumnya pukul sembilan hingga enam PST.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4527_bisnis, 'トーフグの営業チームに配属されました。', 'Saya ditugaskan ke tim penjualan Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4528_publik, '日本政府は、トーフグを公営にさせてもらえないかとコウイチにお願いしたそうです。', 'Saya mendengar pemerintah Jepang bertanya kepada Koichi apakah mereka dapat menempatkan Tofugu di bawah pengelolaan publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4528_publik, '日本では、競馬は公営ギャンブルです。', 'Di Jepang, pacuan kuda adalah perjudian yang dikelola pemerintah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4528_publik, 'もし収入がものすごく低いのであれば、安い公営のアパートに住めるかもしれませんよ。', 'Jika penghasilan Anda sangat rendah, Anda mungkin bisa tinggal di apartemen umum yang murah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4529_pribadi, '私の両親は、私営のネギ園を所有しています。', 'Orang tua saya memiliki kebun bawang hijau pribadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4529_pribadi, '危ないから、この国の私営タクシーには乗らない方がいいよ。', 'Ini tidak aman, jadi sebaiknya Anda tidak naik taksi pribadi di negara ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4529_pribadi, '私営バスの運賃の方が、市営バスよりも十円安い。', 'Tarif bus pribadi lebih murah 10 yen dibandingkan bus kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4530_dijalankan_oleh_kota, '今は市営マンションに住んでいます。', 'Saya sekarang tinggal di apartemen kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4530_dijalankan_oleh_kota, 'このスイミングプールは二年前までは市営だったので、料金はもっと安かったんですよ。', 'Kolam renang ini adalah milik kota hingga dua tahun lalu, jadi biayanya jauh lebih rendah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4530_dijalankan_oleh_kota, '大阪市は、舞洲にすごくユニークな市営のゴミ焼却炉を建設しました。', 'Kota Osaka membangun pabrik insinerasi yang sangat unik dan dikelola kota di Maishima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4531_manajemen_pemerintahan, '私は官営の工場で働いています。', 'Saya bekerja di pabrik milik pemerintah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4531_manajemen_pemerintahan, 'トーフグを官営にするという大統領の提案には大きな反応があった。', 'Ada reaksi besar terhadap usulan presiden untuk menjadikan Tofugu sebagai lembaga yang dikelola pemerintah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4531_manajemen_pemerintahan, '日本郵政をどうして官営から民営に変える必要があったのか、未だに分かりません。', 'Saya masih belum mengerti mengapa Japan Post perlu berubah dari manajemen pemerintah menjadi manajemen swasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4532_dijalankan_oleh_prefektur, '県営の公園で、毎朝ジョギングしています。', 'Saya jogging setiap pagi di taman milik prefektur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4532_dijalankan_oleh_prefektur, '日曜日に、県営球場で野球の試合があります。', 'Pada hari Minggu, ada pertandingan bisbol di stadion yang dikelola oleh prefektur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4532_dijalankan_oleh_prefektur, 'フグは県営図書館でサーモンといちゃついていて、図書館司書さんに怒られた。', 'Fugu dimarahi karena bermesraan dengan Salmon di perpustakaan prefektur oleh seorang pustakawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4533_untuk_menunjukkan, 'このマークは何を示しているんですか？', 'Apa yang ditunjukkan oleh tanda ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4533_untuk_menunjukkan, '約束なんてしないで。言葉ではなく行いで示してよ。', 'Jangan berjanji padaku apa pun. Tindakan berbicara lebih keras daripada kata-kata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4533_untuk_menunjukkan, 'ここに名前とメールアドレスを入力すると、自分の就職市場における価値が示されるらしいよ。', 'Rupanya, jika Anda memasukkan nama dan alamat email Anda di sini, ini akan menunjukkan nilai Anda di pasar kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4534_instruksi, 'お金を使い切るよう、コウイチに指示されたんだ。', 'Saya diarahkan oleh Koichi untuk menghabiskan semua uang itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4534_instruksi, '医者の指示をあおいだ方がいいんじゃないかな？', 'Bukankah lebih baik meminta nasihat dokter?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4534_instruksi, '指示を無視するのはよくありませんが、指示待ち族にはなってもらいたくはありません。私の言っている意味が分かりますか？', 'Mengabaikan perintah memang tidak baik, tapi saya tidak ingin Anda menjadi seseorang yang tidak bisa bekerja tanpa instruksi. Tahukah Anda apa yang saya maksud?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4535_pengumuman_publik, '毎年いつぐらいに日本の地価公示価格が公表されるのか教えてもらえませんか？', 'Bisakah Anda memberi tahu saya kapan harga tanah di Jepang diumumkan setiap tahun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4535_pengumuman_publik, 'ミスした人の名前を公示することは、ミスを防止することにはならないと思う。', 'Saya rasa mengumumkan secara terbuka nama orang yang melakukan kesalahan tidak akan mencegah kesalahan (di masa depan).');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4535_pengumuman_publik, '来月十日に公示、二十二日に投票の日程で衆議院選挙を行う方向で調整しているところです。', 'Saat ini kami sedang merencanakan penyelenggaraan pemilihan Dewan Perwakilan Rakyat dengan pengumuman akan dilaksanakan pada tanggal 10 bulan depan dan pemungutan suara pada tanggal 22.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4536_presiden, '大統領のスピーチはとても感動的でした。', 'Pidato presiden sangat mengharukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4536_presiden, 'あの大統領は態度が大きいことで有名です。', 'Presiden itu terkenal dengan sikap angkuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4536_presiden, 'もしコウイチが大統領になったら、ワニカニが国民必修科目になります。', 'Jika Koichi menjadi presiden, WaniKani akan menjadi subjek wajib bagi seluruh warga negara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4537_tradisi, 'タイラーが飲んでいるのは、アイルランドの伝統のビールです。', 'Yang diminum Tyler adalah bir tradisional Irlandia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4537_tradisi, '北米では、感謝祭の日に七面鳥を食べる伝統があります。', 'Di Amerika Utara, ada tradisi makan kalkun pada hari Thanksgiving.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4537_tradisi, 'あの日本の伝統衣装の名前って何だっけ？単語をすっかり忘れちゃったよ。', 'Apa nama kostum tradisional Jepang itu? Saya benar-benar lupa kata itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4538_penyatuan, 'この教科書は、色々な学習教材を統合したものです。', 'Buku teks ini merupakan integrasi dari berbagai materi pembelajaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4538_penyatuan, 'データを統合したいんだけど、やり方知ってる？', 'Saya ingin mengkonsolidasikan data. Tahukah Anda cara melakukan itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4538_penyatuan, '全ての国が一つの政府に統合される日がいつかやってくると思いますか。', 'Menurut Anda, apakah suatu hari nanti semua negara akan bersatu di bawah satu pemerintahan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4540_domain, '各領域のボーダーを明確にしたほうがいい。', 'Sebaiknya diperjelas batas wilayah masing-masing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4540_domain, 'これはもう、科学の領域ではないんです。', 'Hal ini tidak lagi berada dalam ranah sains.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4540_domain, '誰でも、前進するためには未知の領域に足を踏み入れなくてはいけない。', 'Setiap orang harus mengambil langkah ke wilayah yang belum diketahui untuk maju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4541_wilayah, '「ここからはオレの領土だから、入ってくるんじゃない」と言って、コウイチはビエトと自分のデスクの間に線を引いた。', '"Itu wilayahku dari garis ini, jadi jangan masuk," kata Koichi sambil menarik garis antara mejanya dan meja Viet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4541_wilayah, 'ブログでは、国家間の領土問題にはあまり触れたくありません。', 'Kami tidak ingin menyinggung sengketa wilayah antar negara di blog kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4541_wilayah, '豊臣秀吉の朝鮮出兵は、領土の拡大だけが目的ではありませんでした。', 'Invasi Toyotomi Hideyoshi ke Korea bukan hanya soal perluasan wilayah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4542_sebuah_rencana, '本日のプレゼンでは、主に3つの策を取り上げます。', 'Dalam presentasi saya hari ini, saya akan membahas tiga rencana utama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4542_sebuah_rencana, 'ミッキー・マウスが良い解決策を提案してくれたんです。', 'Mickey Mouse menawari kami solusi yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4542_sebuah_rencana, 'お金を儲けるために、みんなで色々な策を捻り出しました。', 'Kami bekerja sama untuk menghasilkan berbagai skema untuk menghasilkan uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4543_kebijakan, 'アメリカの対ロシア政策について、どのようにお考えですか？', 'Apa pendapat Anda tentang kebijakan AS terhadap Rusia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4543_kebijakan, 'お集まりの皆さん、本日は私達の政策についてのプレゼンテーションの機会をいただき、有難うございます。', 'Hadirin sekalian, terima kasih atas kesempatan untuk membuat presentasi tentang kebijakan kita hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4543_kebijakan, '明日の委員会では、どんな政策を提案するつもりなんですか？', 'Kebijakan apa yang akan Anda usulkan ke panitia besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4544_wisteria, 'メニューにある、この藤セットって何ですか？', 'Apa saja menu Kombo Wisteria ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4544_wisteria, 'クリスマスに、母に藤色のスカーフをプレゼントしました。', 'Saya memberi ibu saya syal berwarna wisteria untuk Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4544_wisteria, '藤棚には、美しい藤の花が咲いていました。', 'Bunga wisteria yang indah bermekaran di teralis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4545_kata_keterangan, '私は昨日、日本語の時を表す副詞を学びました。', 'Saya mempelajari kata keterangan bahasa Jepang yang menunjukkan waktu kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4545_kata_keterangan, 'その副詞の使い方がよく分からないので、今辞書で調べているところなんです。', 'Saya tidak yakin bagaimana menggunakan kata keterangan itu, jadi saya mencarinya di kamus sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4545_kata_keterangan, '副詞節と名詞節の違いを説明しなさい。', 'Jelaskan perbedaan antara klausa adverbial dan klausa kata benda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4546_bisnis_sampingan, '副業で、中古のカメラを売り買いしています。', 'Saya membeli dan menjual kamera bekas di samping.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4546_bisnis_sampingan, '私の彼は副業でネットワークビジネスをしている。', 'Pacar saya melakukan pemasaran jaringan sebagai pekerjaan sampingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4546_bisnis_sampingan, '社員の副業をオッケーにするべきだという彼の提案は、一考に値する。', 'Sarannya agar karyawan diperbolehkan memiliki pekerjaan sampingan patut dipertimbangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4547_subjudul, '昨晩、私の本にぴったりのすごくいい副題を思いついたの。', 'Saya menemukan subjudul menarik untuk buku saya tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4547_subjudul, 'ジェニーはカナエに記事の副題を変えた方がいいと提案しました。', 'Jenny menyarankan kepada Kanae agar subjudul artikel diubah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4547_subjudul, '思い切って二つの副題を統合しちゃうのもアリかも.', 'Langkah berani mungkin adalah menggabungkan dua subtitle menjadi satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4548_nilai, 'xとyの値を求めなさい。', 'Temukan nilai x dan y.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4548_nilai, 'アヤの絵は、今後いい値になるだろうから、今のうちに買っておいた方がいいよ。', 'Gambar Aya mungkin akan mendapatkan harga yang bagus di masa depan, jadi kamu mungkin ingin membelinya selagi bisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4548_nilai, '羽毛布団はやっぱり値が張るね。', 'Selimut bulu angsa itu mahal, seperti yang saya harapkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4550_nilai, 'コンピュータの無い人生なんて生きてる価値がない。', 'Hidup tanpa komputer tidak ada gunanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4550_nilai, 'そのお皿の価値を知っていますか？', 'Tahukah Anda berapa harga hidangan itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4550_nilai, '多くの人が、トーフグのブログ記事に文学的価値を見出しました。', 'Banyak orang menemukan manfaat sastra dalam artikel blog Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4552_untuk_melihat, 'その試合を観た時は、確か二十才を過ぎていたと思います。', 'Saya pikir saya berusia lebih dari 20 tahun ketika saya menonton pertandingan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4552_untuk_melihat, '今日は東京タワーを観に行ってきました。', 'Kami pergi melihat Menara Tokyo hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4552_untuk_melihat, 'どっちの映画を観るか迷っています。', 'Saya tidak bisa memutuskan film mana yang akan saya tonton.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4553_tamasya, '観光案内のパンフレットありますか？', 'Apakah Anda memiliki brosur tamasya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4553_tamasya, '観光シーズンに京都のホテルを取るのは難しい。', 'Sulit mendapatkan hotel di Kyoto selama musim turis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4553_tamasya, '歩いて観光する方が好きなんですが、今年は小さい子供がいるので、レンタカーを借りて観光しました。', 'Saya lebih suka jalan-jalan jalan kaki, tapi kami menyewa mobil tahun ini karena kami punya anak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4554_hadirin, '昨日初めてアメリカのロックコンサートに行ってきたんだけど、観客同士が急にケンカし始めてビックリしたよ。', 'Saya pergi ke konser rock Amerika pertama saya kemarin dan terkejut ketika penonton tiba-tiba mulai berkelahi satu sama lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4554_hadirin, 'あの芸人は、観客に対する態度はいいけど、スタッフに対する態度は最悪です。', 'Komedian itu berperilaku baik terhadap penonton, tetapi berperilaku buruk terhadap staf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4554_hadirin, 'サーモンとコンサートに行ったんだけど、なんと他の観客は全員お相撲さんだったんだ。', 'Saya pergi ke konser bersama Salmon dan yang mengejutkan, semua penonton adalah pegulat Sumo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4555_penampilan_luar, 'このアパートメントの外観が好きです。', 'Saya suka tampilan luar apartemen ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4555_penampilan_luar, 'かなりレトロな外観のビルですね。', 'Bangunannya tampak retro, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4555_penampilan_luar, '外観の撮影に許可は要りません。', 'Izin tidak diperlukan untuk memotret bagian luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4556_pandangan_subjektif, 'これはあくまで私の主観です。', 'Ini hanya pendapat subjektif saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4556_pandangan_subjektif, 'あまり主観で話さない、保守的な若者が増えている気がする。', 'Tampaknya ada peningkatan jumlah anak muda konservatif yang ragu mengungkapkan pendapatnya dari sudut pandang subjektif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4556_pandangan_subjektif, '彼女の文章はとても主観的だが、だからこそとてもユニークでもある。', 'Tulisannya sangat subjektif tapi itulah yang membuatnya sangat unik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4557_ide, '南国の人達には時間の観念が無いという固定観念を持っている人は多い。', 'Banyak orang menerima stereotip bahwa orang-orang di daerah tropis tidak memiliki konsep waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4557_ide, 'もうそろそろ観念して、自分がお金の観念に欠けているってことを認めろよ。', 'Sudah waktunya Anda berhenti dan mengakui bahwa Anda tidak punya rasa uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4557_ide, '彼女は芸術においては素晴らしい美の観念を持っているのに、どうしてあんなに不細工な男性と付き合っているのかが理解できない。', 'Dia sangat menyukai keindahan dan seni, jadi aku tidak mengerti bagaimana dia bisa berkencan dengan pria jelek seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4558_angka, 'アイツは、人間の姿をしたバンパイアで、夜になるとコウモリに姿を変えるんだ。', 'Dia adalah vampir berwujud manusia yang berubah menjadi kelelawar di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4558_angka, 'この町の昔の姿と現在の姿は大きく変わった。', 'Kota ini telah banyak berubah dari dulu menjadi sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4558_angka, 'ニッコリと笑う母の姿が、今も私の頭に焼き付いている。', 'Bayangan ibuku yang sedang tersenyum masih membekas di benakku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4558_angka, 'お坊さんが「お金もうけは私にとっては価値のないことだ」と言っている姿に感動しました。', 'Saya tersentuh melihat biksu itu berkata, "Menghasilkan uang tidak ada nilainya bagi saya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4559_daerah, 'この区域の治安を良くする方法について、何か提案はありませんか？', 'Apakah Anda punya saran tentang cara meningkatkan keselamatan publik di distrik ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4559_daerah, '自転車の放置禁止区域に自転車をとめてしまい、罰金で一万二千円を取られた。', 'Saya memarkir sepeda saya di zona terlarang dan didenda 12.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4559_daerah, '日本政府は、その区域の正確な大気中の放射能濃度を公表しているのですか？', 'Apakah pemerintah sudah mengumumkan tingkat radiasi atmosfer yang akurat di wilayah tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4560_wilayah, 'そのハリケーンの被害は、広い地域におよびました。', 'Sebagian besar wilayah rusak akibat badai tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4560_wilayah, '人の性格に、地域性ってあると思いますか？', 'Menurut Anda, apakah ada perbedaan regional dalam kepribadian masyarakat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4560_wilayah, 'スーパーマンはその地域へ食料と新鮮な水を急送した。', 'Superman membawa makanan dan air bersih ke wilayah itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4561_untuk_merokok, 'これを最後に、きっぱりとタバコを吸うのを止めるつもりなんだ。', 'Setelah ini, saya akan berhenti merokok untuk selamanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4561_untuk_merokok, '生まれたての赤ちゃんは、上手におっぱいが吸えないことも多い。', 'Bayi baru lahir sering kali kesulitan untuk menempel pada puting susu ibunya (untuk menyusui).');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4561_untuk_merokok, '鼻から息を吸い込んで、口からゆっくり出してください。鼻から息を吸うと、記憶と気分を司る脳の領域が刺激されるんですよ。', 'Tarik napas melalui hidung dan keluarkan perlahan melalui mulut. Saat Anda bernapas melalui hidung, Anda menstimulasi area otak yang mengontrol memori dan suasana hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4562_untuk_menanggapi, 'ジョンはゼッタイに説得には応じないつもりみたいだよ。', 'John nampaknya benar-benar bertekad untuk tidak dibujuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4562_untuk_menanggapi, 'ニコラス・ケイジは、サインがほしいというファンの申し出に、笑顔で応じた。', 'Nicolas Cage menanggapi permintaan tanda tangan seorang penggemar dengan senyuman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4562_untuk_menanggapi, '先方は、我々の二割りの値下げ要求に応じるでしょうか？', 'Apakah menurut Anda mereka akan menerima permintaan diskon 20% dari kami?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4563_untuk_saat_ini, '一応、案内広告を出しておきましょうか？', 'Sementara itu, haruskah kita memasang iklan baris?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4563_untuk_saat_ini, '一応念のため、全データのバックアップをこのハードディスクに取っておきました。', 'Untuk saat ini saya membuat cadangan semua data di hard drive ini, untuk berjaga-jaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4563_untuk_saat_ini, 'まだ納得はいかないけど、一応仲直りはしたよ。', 'Saya masih belum sepenuhnya senang dengan hal ini, tapi setidaknya kami sudah berdamai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4564_sebuah_reaksi, 'で、それに対して、お母さんはどんな反応だったの？', 'Dan apa reaksi ibumu terhadap hal itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4564_sebuah_reaksi, '反応しないアプリケーションを強制終了する方法を教えてくれませんか？', 'Bisakah Anda memberi tahu saya cara menutup paksa aplikasi yang tidak responsif?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4564_sebuah_reaksi, '医者から、日本語の勉強に拒絶反応を起こしていると診断されました。', 'Dokter mendiagnosis saya dengan penolakan akut terhadap pelajaran bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4565_dalil, '「提案はどうだった？」「うーん。まあまあって感じかな。」', '"Jadi, apa pendapatmu tentang lamaran itu?" "Yah, menurutku tidak apa-apa."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4565_dalil, 'どうせ提案してもボツになるのに、このアイディアを提案する価値はあるのかな、って思っちゃうんだよね。', 'Saya bertanya-tanya apakah ide ini layak diajukan ketika ide itu akan ditolak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4566_penyerahan, 'そうだ！パスポートも提出しなきゃいけないんだった。', 'Oh benar! Saya harus menyerahkan paspor saya juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4566_penyerahan, '答えが合っているのか判断がつかなかったが、とりあえず時間が来たので提出した。', 'Aku tidak bisa memutuskan apakah jawabannya benar, tapi waktunya sudah habis, jadi aku tetap menyerahkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4566_penyerahan, 'トフグライターへの応募者の提出物について教えて頂けますか？また、必要なスキルは何ですか？', 'Bisakah Anda memberi tahu saya apa yang harus diserahkan oleh pelamar penulis Tofugu dan keterampilan apa yang dibutuhkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4567_bantuan, 'このオナラ計画の成功には君の援助が必要です。
', 'Bantuan Anda sangat penting untuk keberhasilan proyek kentut ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4567_bantuan, '政府からの援助を受けて大学に通うことができる外国人留学生もいるって聞いたんですが、本当ですか？', 'Saya dengar beberapa pelajar internasional bisa kuliah dengan bantuan pemerintah, apakah benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4567_bantuan, 'お金が無くて困っていると、社長が援助の手を差し伸べてくれた。', 'Ketika saya membutuhkan uang, presiden menawarkan bantuan kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4568_mendukung, '心あるご支援、有難うございます。', 'Terima kasih atas dukungan tulus Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4568_mendukung, '地域のお年寄りを支援するボランティアグループに参加しました。', 'Saya bergabung dengan kelompok sukarelawan yang mendukung para lansia di masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4568_mendukung, 'ビエトがヤクザを支援しているというウワサが、ポートランド中に広まった。', 'Rumor menyebar ke seluruh Portland bahwa Viet mendukung Yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4570_kondisi, '妹は、メンタルの状態が不安定なことを私に打ち明けた。', 'Adik perempuanku bercerita tentang kondisi pikirannya yang tidak stabil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4570_kondisi, 'え、元の状態って、こんな感じだったっけ？', 'Apa, keadaan aslinya seperti ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4570_kondisi, 'ヒロシと私は今距離を置いてる状態なの。', 'Hiroshi dan aku saat ini menjaga jarak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4571_orang_cabul, '君が変態だっていうウワサを聞いたんだけど、本当？', 'Aku mendengar rumor kalau kamu mesum, benarkah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4571_orang_cabul, 'どうしてあの社員達は、変態社長の判断をそんなにリスペクトしてるのかな？', 'Mengapa para karyawan itu begitu menghormati penilaian presiden yang sesat itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4571_orang_cabul, '僕は毛虫がチョウに変態するところを見るとテンションが上っちゃう変態なんです。', 'Aku seorang mesum yang senang saat melihat ulat bermetamorfosis menjadi kupu-kupu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4572_sesuai_tujuan, 'このお皿、ヒビが入ってるみたいに見えるけど、態とそういうデザインなの！', 'Pelat ini sepertinya ada yang retak, tapi memang sengaja dirancang seperti itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4572_sesuai_tujuan, '今の価格って、態とつり上げられたものなんじゃないかと思ってるんです。', 'Saya menduga harga saat ini sengaja dinaikkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4572_sesuai_tujuan, '彼女は、彼に態と気のないふりをした。', 'Dia sengaja berpura-pura tidak peduli padanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4573_sikap, 'すっごく態度の悪いスタッフで、イライラしたよ。', 'Anggota staf itu mempunyai sikap yang sangat buruk, dan itu membuatku jengkel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4573_sikap, 'あいつ、ダレと話をしているかによって、態度を180度変えるからね。信じられないよ。', 'Saya tidak bisa mempercayainya karena sikapnya berubah 180 derajat tergantung dengan siapa dia berbicara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4573_sikap, '仕事で遅くなるのは仕方の無いことなのに、つい夫にひどい態度を取ってしまいました。', 'Aku berperilaku buruk terhadap suamiku, meski mau bagaimana lagi dia pulang terlambat karena pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4574_kesalahan_ceroboh, '社長は大失態を犯し、それをごまかそうとしたが、それがかえってアダとなった。', 'Presiden membuat kesalahan besar dan berusaha menutupinya, namun justru menjadi bumerang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4574_kesalahan_ceroboh, '２０１７年の失態から、コウイチは部屋に引きこもって出てこなくなってしまった。', 'Sejak kegagalan tahun 2017, Koichi mengunci diri di kamarnya dan menolak keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4574_kesalahan_ceroboh, 'とんでもない政治的失態を演じた大統領は、苛立ちを隠せないでいた。', 'Presiden, yang telah melakukan kesalahan politik yang parah, tidak dapat menyembunyikan rasa frustrasinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4575_kartu_tahun_baru, '甥っ子が高校の入学試験に合格した時に、祝賀状を送りました。', 'Saya mengirimkan kartu ucapan selamat kepada keponakan saya ketika dia lulus ujian masuk SMA.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4582_untuk_menilai, '食用キノコか毒キノコかを判断するのは難しい。', 'Sulit untuk menilai apakah itu jamur yang bisa dimakan atau beracun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4582_untuk_menilai, 'よく人を見た目で判断してはいけないと言いますが、それは本当に正しいことだと思いますか？', 'Sering kali dikatakan bahwa Anda tidak boleh menilai orang dari penampilannya, tetapi menurut Anda apakah itu benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4582_untuk_menilai, 'これまでに聞いたことから判断すると、どうやら真打ちは最後にあるようだね。', 'Menilai dari apa yang kudengar, yang terbaik sepertinya disimpan untuk yang terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4583_rasa_tanggung_jawab, 'コウイチは、責任感のかたまりのような男だ。', 'Koichi adalah pria yang penuh dengan rasa tanggung jawab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4583_rasa_tanggung_jawab, 'トーフグの社員は責任感がある人達ばかりです。', 'Semua karyawan Tofugu adalah orang-orang yang bertanggung jawab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4583_rasa_tanggung_jawab, '彼は責任感が強いのかもしれないけど、私には少し失礼で自分勝手な気がしました。', 'Dia mungkin mempunyai rasa tanggung jawab yang kuat, tapi bagiku dia tampak sedikit kasar dan egois.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4591_kartu_tahun_baru, '今年は年賀状は出しません。', 'Saya tidak akan mengirimkan kartu Tahun Baru tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4591_kartu_tahun_baru, 'トーフグから、コウイチの写真付きの年賀状が送られてきました。', 'Saya mendapat kartu ucapan Tahun Baru dengan gambar Koichi dari Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4591_kartu_tahun_baru, '来年の年賀状のイラストをアヤにかいてもらおう。', 'Mari kita minta Aya menggambar ilustrasi untuk kartu Tahun Baru tahun depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4591_kartu_tahun_baru, '日本では、新年に年賀状を送り合う伝統があります。', 'Di Jepang, ada tradisi saling mengirim kartu Tahun Baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4839_mustahil, '無敵のスーパーマンに、不可能なことは何もなかった。', 'Tidak ada yang mustahil bagi Superman yang tak terkalahkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4839_mustahil, '政治に関心が無いのに政治評論家になるのは不可能だ。', 'Tidak mungkin menjadi pengamat politik jika tidak tertarik pada politik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4839_mustahil, 'あのポーカーのトーナメントで、悪い予感はしてたんだけど、捨てるのは不可能な手札を持っていたんだよ。', 'Di turnamen poker, saya punya firasat buruk, tetapi saya tidak bisa melipat tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4841_untuk_mengkritik, '君を非難するつもりは全くないんだけど、これはひどすぎるよ。', 'Saya tidak ingin mengkritik Anda, tapi ini buruk sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4841_untuk_mengkritik, '夏の合宿に参加しないことを、他の部員達から非難されました。', 'Saya disalahkan oleh anggota klub lain karena tidak menghadiri kamp pelatihan musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4841_untuk_mengkritik, '子どもたちは両親が不祥事を隠したことを非難した。', 'Anak-anak mengkritik orang tua mereka karena menyembunyikan skandal tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4842_membenci, '大嫌いな食べ物は何ですか。', 'Makanan apa yang sebenarnya kamu benci?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4842_membenci, '世の中には、トーフグのことが大嫌いな人もいるらしい。', 'Saya dengar ada beberapa orang di dunia yang membenci Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4842_membenci, 'コウイチはあなたのことが大嫌いなので、彼に代わってビエトがお会いします。', 'Tuan Viet yang akan menemuimu, bukan Tuan Koichi, karena Tuan Koichi sangat membencimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4843_untuk_terjatuh, '起きたら家の前に、木が倒れていたんです。おそらく風で倒れたんでしょうね。', 'Ketika saya bangun, ada pohon tumbang di depan rumah saya. Mungkin saja terguling oleh angin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4843_untuk_terjatuh, 'アイツは第一ラウンドで倒れちまったんだよ。', 'Dia terjatuh di ronde pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4843_untuk_terjatuh, 'そのマラソン選手は、ゴールの直前で疲れきって倒れてしまいました。', 'Pelari maraton itu pingsan karena kelelahan tepat sebelum garis finis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4844_membiarkan_sesuatu_terbang, '僕の順番を飛ばさないでよ！', 'Jangan lewati giliranku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4844_membiarkan_sesuatu_terbang, 'コウイチがつまらない冗談を飛ばすと、ビエトは不機嫌になる。', 'Saat Koichi melontarkan lelucon membosankan, Viet menjadi pemarah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4844_membiarkan_sesuatu_terbang, 'フグは、センターオーバーの三塁打をかっ飛ばした。', 'Fugu mengirim tiga kali terbang di atas lapangan tengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4845_untuk_memastikannya, 'ちゃんとドアにカギをかけたかどうか確かめた方がいいですよ。', 'Anda harus memastikan pintu terkunci dengan benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4845_untuk_memastikannya, 'アルコール分がちゃんと飛んだかどうか、確かめてくださいね。', 'Pastikan kandungan alkohol telah hilang seluruhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4845_untuk_memastikannya, 'いつも、カナエさんが単語の使い方に間違いが無いか、辞書で確かめてくれています。', 'Kanae selalu memeriksa kamus untuk memastikan tidak ada kesalahan dalam penggunaan kata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4846_sulit, '毎日シャワーするのって、本当に面倒臭い。', 'Mandi setiap hari sungguh merepotkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4846_sulit, '人のグチを聞くことほど面倒臭いことは無い。', 'Tidak ada yang lebih menyebalkan daripada mendengarkan keluh kesah orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4846_sulit, '白髪が出てきちゃったんだけど、白髪染めをするのは面倒臭いんだよね。', 'Aku sudah mulai beruban, tapi terlalu repot untuk mewarnainya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4852_untuk_memeriksa, 'このクーポンを使えば、検査する時に10ドル安くなります。', 'Jika Anda menggunakan kupon ini, biayanya akan lebih murah sepuluh dolar saat Anda melakukan pemeriksaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4852_untuk_memeriksa, '昨日、お医者さんに耳を検査してもらいました。', 'Saya meminta dokter memeriksa telinga saya kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4852_untuk_memeriksa, '今度、水道水の水質を検査する予定です。', 'Saya akan menguji kualitas air keran saya lain kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4852_untuk_memeriksa, '初めに歯と歯ぐきの状態を検査してから、プラークと歯石のクリーニングを行います。', 'Setelah memeriksa terlebih dahulu kondisi gigi dan gusi, selanjutnya kita lanjutkan dengan pembersihan plak dan karang gigi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4867_mendukung, '僕は、AKB４８の高橋みなみを応援していました。', 'Saya mendukung Takahashi Minami dari AKB48.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4867_mendukung, '応援演説で熱心に声を出してたあの応援者は、いったい誰だったんだ？', 'Siapakah pendukung kampanye yang bersorak riuh dan lantang saat berpidato?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4867_mendukung, 'トーフグ応援団の応援団長に選ばれたが、何をしていいか分からなかったので、前任者の応援を求めた。', 'Saya terpilih untuk memimpin regu pemandu sorak Tofugu, tapi saya tidak tahu harus berbuat apa, jadi saya meminta nasihat pendahulu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5327_pembaruan, '最近ちょっと、ブログの更新をサボってるんだ。', 'Akhir-akhir ini aku malas mengupdate blogku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5327_pembaruan, 'もうすぐライセンスの更新手続きをしなきゃいけないんだよね！', 'Saya perlu memperbarui lisensi saya segera!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5327_pembaruan, '来月末までに在留期間の更新許可申請をする必要があります。', 'Saya perlu mengajukan perpanjangan visa saya pada akhir bulan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5327_pembaruan, '先方は、いくつかの修正を伴う契約更新を提案してきているんだが、あまり気が進まないんだよね。', 'Mereka mengusulkan pembaruan kontrak dengan beberapa perubahan, tapi saya masih enggan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5328_perubahan, 'パスワードの変更をしてください。', 'Silakan ubah kata sandi Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5328_perubahan, 'サイズ、変更してもらったら？', 'Bagaimana jika Anda meminta mereka mengubah ukurannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5328_perubahan, '予約していたディナーのコースの変更って、今からできますか？', 'Apakah mengubah menu makan malam yang telah saya pesan adalah sesuatu yang masih dapat saya lakukan sekarang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5753_turun, '降車の際は、お忘れ物にご注意ください。', 'Harap berhati-hati untuk tidak meninggalkan barang apa pun saat turun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5753_turun, 'タクシーのドアは降車時に自動で開きます。', 'Pintu taksi akan terbuka secara otomatis saat Anda turun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5753_turun, '人が多すぎて、降車ボタンに手が届かなかったんです。', 'Ada terlalu banyak orang, jadi saya tidak bisa menekan tombol berhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5753_turun, '「あのジェットコースター、どうだった？」「すっごく良かったから、降車した瞬間にゲロっちゃったよ。」', '"Apa pendapatmu tentang roller coaster itu?" "Itu sangat intens sehingga saya muntah setelah turun."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6531_membuka_baju, '脱衣をしてから入浴してください。', 'Silakan menanggalkan pakaian sebelum mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6531_membuka_baju, '脱衣所にアップルウォッチを忘れてしまいました。', 'Saya lupa Apple Watch saya di ruang ganti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6531_membuka_baju, '車イスで母を風呂場のドアの前まで運び、脱衣を手伝いました。', 'Saya menggunakan kursi roda untuk membawa ibu saya ke pintu kamar mandi, lalu membantunya membuka pakaian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7467_toilet, 'お手洗いは、真っすぐ行って左です。', 'Toiletnya lurus dan ke kiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7467_toilet, 'ジェームスはいつも、お手洗いに行く前にウィスキーを一口飲む。', 'James selalu menyesap wiski sebelum pergi ke kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7467_toilet, 'お手洗いで用を足しているうちに、座ったまま寝てしまいました。', 'Saya tertidur sambil duduk di kamar mandi melakukan bisnis saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7502_untuk_tinggal, '外国人が日本に在留する時に必要になるものは何ですか？', 'Apa saja yang dibutuhkan orang asing saat tinggal di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7502_untuk_tinggal, 'もちろん、私は在留資格を持って、日本に在留しています。', 'Tentu saja, saya tinggal di Jepang dengan status tinggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7502_untuk_tinggal, '私がこの国に在留することができる期間は限られているんです。', 'Saya memiliki waktu terbatas untuk tinggal di negara ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7596_suasana_hati_buruk, 'すぐ不機嫌になる人は嫌だ。', 'Aku tidak suka dengan orang yang mudah marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7596_suasana_hati_buruk, 'そんな不機嫌そうな顔しないでさ。楽しもうよ！', 'Hei, jangan memasang wajah cemberut seperti itu. Mari bersenang-senang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7596_suasana_hati_buruk, '昨日遅く寝たのに朝五時に起きなくてはいけなかったので、今日は一日中不機嫌だった。', 'Aku tidur larut malam tadi dan harus bangun jam lima pagi, jadi aku kesal sepanjang hari hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7597_untuk_mengguncang, 'アル中の父の手は、いつも震えていた。', 'Tangan ayah saya yang alkoholik selalu gemetar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7597_untuk_mengguncang, 'すごく価値のある絵をフリーマーケットで見つけた時、全身が震えました。', 'Ketika saya menemukan lukisan yang sangat berharga di pasar loak, saya gemetar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7597_untuk_mengguncang, '寒さで震えている子犬を見ると、涙が止まらなくなりました。', 'Saya tidak bisa berhenti menangis ketika melihat anak anjing menggigil kedinginan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7611_pakaian, '衣服は着たままでかまいませんよ。', 'Tidak apa-apa membiarkan pakaian Anda tetap dipakai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7611_pakaian, '脱いだ衣服はこちらにおいてください。', 'Silakan letakkan pakaian yang Anda lepas di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7611_pakaian, 'この素材は、衣服のよごれが目立ちます。', 'Bahan ini membuat kotoran pada pakaian Anda menonjol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7650_harga, 'この商品の価格はいくらですか？', 'Berapa harga barang ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7650_harga, 'この価格はちょっと高すぎやしないかい。', 'Biayanya agak terlalu tinggi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7650_harga, '剣道のお面の原材料の価格が急激に値上がりしている。', 'Harga bahan baku masker kendo naik drastis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7710_perasaan_tidak_menyenangkan, '知らない人から急に頭に手を置かれたら、そりゃあ嫌悪感を感じるでしょう。', 'Jika ada orang asing yang tiba-tiba meletakkan tangannya di atas kepala Anda, Anda pasti akan merasa jijik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7710_perasaan_tidak_menyenangkan, 'それ以来、藤づるを見ると、どうしても嫌悪感にかられるんです。', 'Sejak itu, setiap kali saya melihat tanaman merambat wisteria, saya merasa jijik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7710_perasaan_tidak_menyenangkan, 'あなたと話していると、いつも嫌悪感を抱くんです。', 'Aku selalu merasa jijik saat berbicara denganmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7764_berurusan_dengan, 'あの医者の対応は素晴らしかった。', 'Berinteraksi dengan dokter itu sungguh luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7764_berurusan_dengan, 'コウイチは、今ワニカニユーザーからのクレームに対応していて忙しい。', 'Koichi saat ini sedang sibuk menangani keluhan dari pengguna WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7764_berurusan_dengan, 'あの店員、マジ神対応だったよ。値下げ交渉しようとしたら、すぐに笑顔で定価から五千円も値引きしてくれたの。', 'Pelayanan panitera adalah anugerah. Ketika saya mencoba menegosiasikan harga untuk turun, dia langsung memberi saya diskon 5.000 yen dari harga reguler sambil tersenyum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8677_siaga, '家で待機するように言われてたんだけど、こっそり外出してマクドナルドでハンバーガーを買ってきちゃった。', 'Aku disuruh berdiam diri di rumah, tapi aku menyelinap keluar dan membeli hamburger di McDonald''s.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8677_siaga, 'トーフグのエンジニアは、いつでもワニカニのバグに対応できるよう、常に待機している。	', 'Insinyur Tofugu selalu siap siaga untuk merespons setiap bug WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8677_siaga, '少子化なのにどうして待機児童が増えるんですか？', 'Jika angka kelahiran menurun, mengapa daftar tunggu sekolah meningkat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8713_terima_kasih, 'どうして素直に有り難うって言うことができないの？', 'Mengapa kamu tidak bisa dengan patuh mengucapkan terima kasih?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8713_terima_kasih, '「赤ちゃんのご誕生、おめでとうございます。」「有難うございます。」', '“Selamat atas kelahiran bayimu.” "Terima kasih banyak."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8713_terima_kasih, '有難う。お陰で脱税で告訴されたよ。', 'Berkat Anda, saya dituduh melakukan penggelapan pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8753_suvenir, 'まだお土産を選んでいません。', 'Saya belum memilih oleh-oleh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8753_suvenir, 'これは京都へバス旅行に行った時のお土産です。', 'Ini adalah oleh-oleh dari saat saya melakukan perjalanan bus ke Kyoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8753_suvenir, '母はアメリカに旅行に来た時、友達や同僚へのお土産を大量に買い込んでいたが、自分へのお土産は一つも買わなかった。', 'Saat ibu saya bepergian ke AS, dia membeli banyak sekali oleh-oleh untuk teman dan koleganya, namun tidak satu pun untuk dirinya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8867_untuk_menyerah, '死んでも漢字の勉強を諦めないで！', 'Bahkan jika kamu mati, jangan menyerah untuk belajar kanji!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8867_untuk_menyerah, 'コウイチはついにポケモンマスターになる夢を諦めた。', 'Koichi akhirnya meninggalkan mimpinya menjadi master Pokemon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8867_untuk_menyerah, '山のようなレビューを諦めずにやるかリセットするかは、とても難しい選択です。', 'Melakukan segudang ulasan tanpa menyerah atau mengatur ulang—ini adalah pilihan yang sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8898_lengan_baju, 'ねえ、袖が汚れているよ。', 'Hei, lengan bajumu sepertinya kotor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8898_lengan_baju, 'このポロシャツ、袖が短すぎてノースリーブに間違われたんだよね。', 'Lengan kaos polo ini sangat pendek sehingga orang salah mengira tidak ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8898_lengan_baju, '先輩の袖から見えた腕の血管に見とれて車にひかれそうになったなんて誰にも言えない。', 'Aku tidak bisa memberitahu siapa pun bahwa aku hampir tertabrak mobil karena aku tidak bisa berhenti menatap pembuluh darah yang terlihat di lengan senpaiku dari balik lengan bajunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8949_untuk_menembus_ke, 'それは心に刺さる言葉だった。', 'Itu adalah kata-kata yang menyentuh hati saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8949_untuk_menembus_ke, '矢が頭に刺さった。', 'Sebuah anak panah menancap di kepalanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8949_untuk_menembus_ke, 'トゲが刺さらないように気をつけてね。', 'Hati-hati jangan sampai tertusuk duri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9502_untuk_terhubung, '自分の中で、二つの出来事がようやく結び付いたよ。', 'Saya akhirnya berhasil — kedua peristiwa itu terhubung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9502_untuk_terhubung, 'がんばっても、努力が結果に結び付くとはかぎらないですよね？', 'Sekalipun Anda bekerja keras, usaha Anda tidak selalu membuahkan hasil, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9502_untuk_terhubung, '彼、何だか外見と中身が結び付かない感じがするんだよね。', 'Dia merasa penampilan dan jati dirinya tidak sesuai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9503_simpul, 'その固い結び目をほどくのはとても大変だった。', 'Sangat sulit untuk melepaskan ikatan yang erat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9503_simpul, '少しだけ結び目をゆるめさせてくださいね。', 'Tolong izinkan saya melonggarkan simpulnya sedikit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9503_simpul, '結び目が小さくて見えにくいんだよね。', 'Simpulnya kecil, jadi sulit dilihat lho?');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_957_membangun, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_957_membangun, r_241_gergaji);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_957_membangun, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1140_mengevaluasi, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1140_mengevaluasi, r_279_perdamaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1155_penalti, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1155_penalti, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1155_penalti, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1156_kelahiran, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1156_kelahiran, id FROM items WHERE type = 'radical' AND (slug = '206' OR id = '206') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1156_kelahiran, id FROM items WHERE type = 'radical' AND (slug = '229' OR id = '229') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1157_menanggalkan_pakaian, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1157_menanggalkan_pakaian, id FROM items WHERE type = 'radical' AND (slug = '422' OR id = '422') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1158_melampaui, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1158_melampaui, id FROM items WHERE type = 'radical' AND (slug = '121' OR id = '121') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1159_biarawan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1159_biarawan, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1160_berbaring, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1160_berbaring, r_8826_es);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1160_berbaring, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1160_berbaring, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1160_berbaring, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1161_kuil_shinto, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1161_kuil_shinto, r_282_bak_mandi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1162_setiap, id FROM items WHERE type = 'radical' AND (slug = '180' OR id = '180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1163_rencana, r_283_murah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1163_rencana, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1164_meletakkan, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1164_meletakkan, id FROM items WHERE type = 'radical' AND (slug = '8821' OR id = '8821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1165_pengeluaran, r_284_dolar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1165_pengeluaran, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1166_nilai, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1166_nilai, id FROM items WHERE type = 'radical' AND (slug = '424' OR id = '424') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1167_memaksa, id FROM items WHERE type = 'radical' AND (slug = '222' OR id = '222') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1167_memaksa, id FROM items WHERE type = 'radical' AND (slug = '223' OR id = '223') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1167_memaksa, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1168_mengelola, id FROM items WHERE type = 'radical' AND (slug = '8769' OR id = '8769') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1168_mengelola, r_282_bak_mandi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1169_menunjukkan, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1170_bersatu, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1170_bersatu, r_285_alokasikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1171_wilayah, id FROM items WHERE type = 'radical' AND (slug = '189' OR id = '189') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1171_wilayah, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1172_rencana, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1172_rencana, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1172_rencana, id FROM items WHERE type = 'radical' AND (slug = '29' OR id = '29') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1173_wisteria, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1173_wisteria, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1173_wisteria, id FROM items WHERE type = 'radical' AND (slug = '8819' OR id = '8819') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1173_wisteria, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1174_keburukan, id FROM items WHERE type = 'radical' AND (slug = '8824' OR id = '8824') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1174_keburukan, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1175_melihat, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1175_melihat, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1175_melihat, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1176_nilai, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1176_nilai, id FROM items WHERE type = 'radical' AND (slug = '8821' OR id = '8821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1177_mengisap, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1177_mengisap, id FROM items WHERE type = 'radical' AND (slug = '193' OR id = '193') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1178_wilayah, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1178_wilayah, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1178_wilayah, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1178_wilayah, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1179_angka, id FROM items WHERE type = 'radical' AND (slug = '278' OR id = '278') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1179_angka, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1180_menanggapi, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1180_menanggapi, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1181_hadiah, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1181_hadiah, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1181_hadiah, id FROM items WHERE type = 'radical' AND (slug = '420' OR id = '420') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1182_bantuan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1182_bantuan, r_286_sepak_bola);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1183_kondisi, r_8826_es);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1183_kondisi, id FROM items WHERE type = 'radical' AND (slug = '47' OR id = '47') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1184_penampilan, r_287_kemampuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1184_penampilan, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1185_selamat, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1185_selamat, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1185_selamat, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1431_memperbarui, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1431_memperbarui, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1431_memperbarui, id FROM items WHERE type = 'radical' AND (slug = '31' OR id = '31') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1548_turun, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1548_turun, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1548_turun, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1796_pakaian, r_320_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8859_menyerah, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8859_menyerah, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8859_menyerah, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8885_lengan_baju, id FROM items WHERE type = 'radical' AND (slug = '9392' OR id = '9392') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8885_lengan_baju, id FROM items WHERE type = 'radical' AND (slug = '268' OR id = '268') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3757_arsitektur, id FROM items WHERE type = 'kanji' AND (slug = '946' OR id = '946') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3757_arsitektur, k_957_membangun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3781_baru_dibangun, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3781_baru_dibangun, k_957_membangun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4278_untuk_memakai, id FROM items WHERE type = 'kanji' AND (slug = '1097' OR id = '1097') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4292_ekor, id FROM items WHERE type = 'kanji' AND (slug = '1100' OR id = '1100') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4292_ekor, id FROM items WHERE type = 'kanji' AND (slug = '1101' OR id = '1101') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4317_untuk_lulus, id FROM items WHERE type = 'kanji' AND (slug = '1120' OR id = '1120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4319_orang_yang_berpengalaman, id FROM items WHERE type = 'kanji' AND (slug = '1120' OR id = '1120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4319_orang_yang_berpengalaman, id FROM items WHERE type = 'kanji' AND (slug = '1048' OR id = '1048') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4319_orang_yang_berpengalaman, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4389_menjadi_ramai, id FROM items WHERE type = 'kanji' AND (slug = '1078' OR id = '1078') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4400_ekonomi, id FROM items WHERE type = 'kanji' AND (slug = '1120' OR id = '1120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4400_ekonomi, id FROM items WHERE type = 'kanji' AND (slug = '1124' OR id = '1124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4404_cantik, id FROM items WHERE type = 'kanji' AND (slug = '1138' OR id = '1138') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4404_cantik, id FROM items WHERE type = 'kanji' AND (slug = '1123' OR id = '1123') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4445_evaluasi, k_1140_mengevaluasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4445_evaluasi, k_1166_nilai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4446_kritik, k_1140_mengevaluasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4446_kritik, id FROM items WHERE type = 'kanji' AND (slug = '1119' OR id = '1119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4447_ulasan_buku, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4447_ulasan_buku, k_1140_mengevaluasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4480_membanjiri, id FROM items WHERE type = 'kanji' AND (slug = '1106' OR id = '1106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4480_membanjiri, id FROM items WHERE type = 'kanji' AND (slug = '1110' OR id = '1110') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4481_tekanan_darah_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4481_tekanan_darah_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4481_tekanan_darah_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '1106' OR id = '1106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4482_untuk_ada, id FROM items WHERE type = 'kanji' AND (slug = '990' OR id = '990') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4482_untuk_ada, id FROM items WHERE type = 'kanji' AND (slug = '1107' OR id = '1107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4483_kata_kata_yang_menyakitkan, id FROM items WHERE type = 'kanji' AND (slug = '1104' OR id = '1104') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4483_kata_kata_yang_menyakitkan, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4484_peluang, id FROM items WHERE type = 'kanji' AND (slug = '1090' OR id = '1090') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4484_peluang, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4485_pencegahan_kejahatan, id FROM items WHERE type = 'kanji' AND (slug = '1117' OR id = '1117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4485_pencegahan_kejahatan, id FROM items WHERE type = 'kanji' AND (slug = '1115' OR id = '1115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4486_industri, id FROM items WHERE type = 'kanji' AND (slug = '1109' OR id = '1109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4486_industri, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4488_untuk_tidur, k_1160_berbaring);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4489_tidur_sebentar, id FROM items WHERE type = 'kanji' AND (slug = '932' OR id = '932') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4489_tidur_sebentar, k_1160_berbaring);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4490_kurang_tidur, k_1160_berbaring);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4490_kurang_tidur, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4490_kurang_tidur, id FROM items WHERE type = 'kanji' AND (slug = '561' OR id = '561') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4491_tidur_berlebihan, k_1160_berbaring);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4491_tidur_berlebihan, k_1159_biarawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4492_untuk_lulus, k_1158_melampaui);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4493_masa_lalu, k_1158_melampaui);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4493_masa_lalu, id FROM items WHERE type = 'kanji' AND (slug = '532' OR id = '532') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4494_penalti, k_1155_penalti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4495_sebuah_denda, k_1155_penalti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4495_sebuah_denda, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4496_permainan_batsu, k_1155_penalti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4497_untuk_menghukum, k_1155_penalti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4498_kelahiran, k_1156_kelahiran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4498_kelahiran, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4501_karakter_yang_dihilangkan, k_1157_menanggalkan_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4501_karakter_yang_dihilangkan, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4504_biksu_buddha, k_1159_biarawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4505_bayi, id FROM items WHERE type = 'kanji' AND (slug = '560' OR id = '560') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4505_bayi, k_1159_biarawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4506_biksu_buddha, k_1159_biarawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4506_biksu_buddha, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4507_istana_kekaisaran, k_1161_kuil_shinto);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4508_setiap, k_1162_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4508_setiap, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4509_setiap, k_1162_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4510_setiap_daerah, k_1162_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4510_setiap_daerah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4511_setiap_orang, k_1162_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4511_setiap_orang, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4512_memandu, k_1163_rencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4512_memandu, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4513_mendadak, k_1163_rencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4513_mendadak, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4514_untuk_meletakkan, k_1164_meletakkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4515_posisi, id FROM items WHERE type = 'kanji' AND (slug = '782' OR id = '782') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4515_posisi, k_1164_meletakkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4516_pengeluaran, k_1165_pengeluaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4516_pengeluaran, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4517_konsumsi, id FROM items WHERE type = 'kanji' AND (slug = '819' OR id = '819') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4517_konsumsi, k_1165_pengeluaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4518_biaya_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4518_biaya_perusahaan, k_1165_pengeluaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4520_harga, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4520_harga, k_1166_nilai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4521_nilai_tanah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4521_nilai_tanah, k_1166_nilai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4522_memaksa, k_1167_memaksa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4523_pengaruh, k_1167_memaksa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4523_pengaruh, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4524_sikap, k_1179_angka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4524_sikap, k_1167_memaksa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4525_kerumunan, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4525_kerumunan, k_1167_memaksa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4526_untuk_menjalankan_bisnis, k_1168_mengelola);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4527_bisnis, k_1168_mengelola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4527_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4528_publik, id FROM items WHERE type = 'kanji' AND (slug = '499' OR id = '499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4528_publik, k_1168_mengelola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4529_pribadi, id FROM items WHERE type = 'kanji' AND (slug = '923' OR id = '923') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4529_pribadi, k_1168_mengelola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4530_dijalankan_oleh_kota, id FROM items WHERE type = 'kanji' AND (slug = '522' OR id = '522') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4530_dijalankan_oleh_kota, k_1168_mengelola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4531_manajemen_pemerintahan, id FROM items WHERE type = 'kanji' AND (slug = '1018' OR id = '1018') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4531_manajemen_pemerintahan, k_1168_mengelola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4532_dijalankan_oleh_prefektur, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4532_dijalankan_oleh_prefektur, k_1168_mengelola);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4533_untuk_menunjukkan, k_1169_menunjukkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4534_instruksi, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4534_instruksi, k_1169_menunjukkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4535_pengumuman_publik, id FROM items WHERE type = 'kanji' AND (slug = '499' OR id = '499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4535_pengumuman_publik, k_1169_menunjukkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4536_presiden, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4536_presiden, k_1170_bersatu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4536_presiden, k_1171_wilayah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4537_tradisi, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4537_tradisi, k_1170_bersatu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4538_penyatuan, k_1170_bersatu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4538_penyatuan, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4540_domain, k_1171_wilayah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4540_domain, k_1178_wilayah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4541_wilayah, k_1171_wilayah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4541_wilayah, id FROM items WHERE type = 'kanji' AND (slug = '459' OR id = '459') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4542_sebuah_rencana, k_1172_rencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4543_kebijakan, id FROM items WHERE type = 'kanji' AND (slug = '985' OR id = '985') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4543_kebijakan, k_1172_rencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4544_wisteria, k_1173_wisteria);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4545_kata_keterangan, k_1174_keburukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4545_kata_keterangan, id FROM items WHERE type = 'kanji' AND (slug = '1066' OR id = '1066') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4546_bisnis_sampingan, k_1174_keburukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4546_bisnis_sampingan, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4547_subjudul, k_1174_keburukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4547_subjudul, id FROM items WHERE type = 'kanji' AND (slug = '872' OR id = '872') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4548_nilai, k_1176_nilai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4550_nilai, k_1166_nilai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4550_nilai, k_1176_nilai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4552_untuk_melihat, k_1175_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4553_tamasya, k_1175_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4553_tamasya, id FROM items WHERE type = 'kanji' AND (slug = '567' OR id = '567') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4554_hadirin, k_1175_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4554_hadirin, id FROM items WHERE type = 'kanji' AND (slug = '723' OR id = '723') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4555_penampilan_luar, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4555_penampilan_luar, k_1175_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4556_pandangan_subjektif, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4556_pandangan_subjektif, k_1175_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4557_ide, k_1175_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4557_ide, id FROM items WHERE type = 'kanji' AND (slug = '906' OR id = '906') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4558_angka, k_1179_angka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4559_daerah, id FROM items WHERE type = 'kanji' AND (slug = '937' OR id = '937') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4559_daerah, k_1178_wilayah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4560_wilayah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4560_wilayah, k_1178_wilayah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4561_untuk_merokok, k_1177_mengisap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4562_untuk_menanggapi, k_1180_menanggapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4563_untuk_saat_ini, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4563_untuk_saat_ini, k_1180_menanggapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4564_sebuah_reaksi, id FROM items WHERE type = 'kanji' AND (slug = '855' OR id = '855') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4564_sebuah_reaksi, k_1180_menanggapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4565_dalil, k_1181_hadiah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4565_dalil, k_1163_rencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4566_penyerahan, k_1181_hadiah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4566_penyerahan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4567_bantuan, k_1182_bantuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4567_bantuan, id FROM items WHERE type = 'kanji' AND (slug = '680' OR id = '680') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4568_mendukung, id FROM items WHERE type = 'kanji' AND (slug = '678' OR id = '678') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4568_mendukung, k_1182_bantuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4570_kondisi, k_1183_kondisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4570_kondisi, k_1184_penampilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4571_orang_cabul, id FROM items WHERE type = 'kanji' AND (slug = '944' OR id = '944') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4571_orang_cabul, k_1184_penampilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4572_sesuai_tujuan, k_1184_penampilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4573_sikap, k_1184_penampilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4573_sikap, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4574_kesalahan_ceroboh, id FROM items WHERE type = 'kanji' AND (slug = '654' OR id = '654') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4574_kesalahan_ceroboh, k_1184_penampilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4575_kartu_tahun_baru, k_1185_selamat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4575_kartu_tahun_baru, k_1183_kondisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4582_untuk_menilai, id FROM items WHERE type = 'kanji' AND (slug = '1127' OR id = '1127') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4582_untuk_menilai, id FROM items WHERE type = 'kanji' AND (slug = '1139' OR id = '1139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4583_rasa_tanggung_jawab, id FROM items WHERE type = 'kanji' AND (slug = '1146' OR id = '1146') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4583_rasa_tanggung_jawab, id FROM items WHERE type = 'kanji' AND (slug = '1142' OR id = '1142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4583_rasa_tanggung_jawab, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4591_kartu_tahun_baru, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4591_kartu_tahun_baru, k_1185_selamat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4591_kartu_tahun_baru, k_1183_kondisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4839_mustahil, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4839_mustahil, id FROM items WHERE type = 'kanji' AND (slug = '1049' OR id = '1049') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4839_mustahil, id FROM items WHERE type = 'kanji' AND (slug = '921' OR id = '921') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4841_untuk_mengkritik, id FROM items WHERE type = 'kanji' AND (slug = '1013' OR id = '1013') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4841_untuk_mengkritik, id FROM items WHERE type = 'kanji' AND (slug = '1095' OR id = '1095') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4842_membenci, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4842_membenci, id FROM items WHERE type = 'kanji' AND (slug = '1104' OR id = '1104') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4843_untuk_terjatuh, id FROM items WHERE type = 'kanji' AND (slug = '1110' OR id = '1110') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4844_membiarkan_sesuatu_terbang, id FROM items WHERE type = 'kanji' AND (slug = '1092' OR id = '1092') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4845_untuk_memastikannya, id FROM items WHERE type = 'kanji' AND (slug = '1103' OR id = '1103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4846_sulit, id FROM items WHERE type = 'kanji' AND (slug = '974' OR id = '974') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4846_sulit, id FROM items WHERE type = 'kanji' AND (slug = '1110' OR id = '1110') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4846_sulit, id FROM items WHERE type = 'kanji' AND (slug = '1111' OR id = '1111') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4852_untuk_memeriksa, id FROM items WHERE type = 'kanji' AND (slug = '1143' OR id = '1143') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4852_untuk_memeriksa, id FROM items WHERE type = 'kanji' AND (slug = '1130' OR id = '1130') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4867_mendukung, k_1180_menanggapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4867_mendukung, k_1182_bantuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5327_pembaruan, k_1431_memperbarui);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5327_pembaruan, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5328_perubahan, id FROM items WHERE type = 'kanji' AND (slug = '944' OR id = '944') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5328_perubahan, k_1431_memperbarui);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5753_turun, k_1548_turun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5753_turun, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6531_membuka_baju, k_1157_menanggalkan_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6531_membuka_baju, k_1796_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7467_toilet, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7467_toilet, id FROM items WHERE type = 'kanji' AND (slug = '1043' OR id = '1043') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7502_untuk_tinggal, id FROM items WHERE type = 'kanji' AND (slug = '1107' OR id = '1107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7502_untuk_tinggal, id FROM items WHERE type = 'kanji' AND (slug = '986' OR id = '986') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7596_suasana_hati_buruk, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7596_suasana_hati_buruk, id FROM items WHERE type = 'kanji' AND (slug = '1090' OR id = '1090') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7596_suasana_hati_buruk, id FROM items WHERE type = 'kanji' AND (slug = '1104' OR id = '1104') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7597_untuk_mengguncang, id FROM items WHERE type = 'kanji' AND (slug = '1099' OR id = '1099') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7611_pakaian, k_1796_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7611_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '716' OR id = '716') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7650_harga, k_1166_nilai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7650_harga, id FROM items WHERE type = 'kanji' AND (slug = '920' OR id = '920') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7710_perasaan_tidak_menyenangkan, id FROM items WHERE type = 'kanji' AND (slug = '1104' OR id = '1104') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7710_perasaan_tidak_menyenangkan, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7710_perasaan_tidak_menyenangkan, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7764_berurusan_dengan, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7764_berurusan_dengan, k_1180_menanggapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8677_siaga, id FROM items WHERE type = 'kanji' AND (slug = '726' OR id = '726') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8677_siaga, id FROM items WHERE type = 'kanji' AND (slug = '1090' OR id = '1090') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8713_terima_kasih, id FROM items WHERE type = 'kanji' AND (slug = '615' OR id = '615') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8713_terima_kasih, id FROM items WHERE type = 'kanji' AND (slug = '1095' OR id = '1095') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8753_suvenir, id FROM items WHERE type = 'kanji' AND (slug = '459' OR id = '459') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8753_suvenir, id FROM items WHERE type = 'kanji' AND (slug = '1109' OR id = '1109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8867_untuk_menyerah, k_8859_menyerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8898_lengan_baju, k_8885_lengan_baju);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8949_untuk_menembus_ke, id FROM items WHERE type = 'kanji' AND (slug = '1296' OR id = '1296') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9502_untuk_terhubung, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9502_untuk_terhubung, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9503_simpul, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9503_simpul, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;

END $$;
