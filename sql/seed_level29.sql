-- ====================================================
-- KaniGani — Seed Data Level 29 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 29) ============
  r_319_arang UUID; r_322_daerah UUID; r_323_pelayan UUID; r_324_hidung UUID; r_325_di_atas UUID; r_403_misterius UUID;

  -- ============ KANJI IDs (Level 29) ============
  k_1379_mengawasi UUID; k_1380_secangkir_cairan UUID; k_1381_kering UUID; k_1382_sponsor UUID; k_1383_keinginan UUID; k_1384_eropa UUID; k_1385_masuk UUID; k_1386_meminta UUID; k_1387_pria UUID; k_1388_korea UUID; k_1389_merusak UUID; k_1390_diagnosis UUID; k_1391_kabinet UUID; k_1392_kolega UUID; k_1393_mengumpulkan UUID; k_1394_langsung UUID; k_1395_pelayan UUID; k_1396_singkatan UUID; k_1397_navigasi UUID; k_1398_mendekatlah UUID; k_1399_papan UUID; k_1400_jalanan UUID; k_1401_agama UUID; k_1402_tegang UUID; k_1403_anak_perempuan UUID; k_1404_perjamuan UUID; k_1405_menakutkan UUID; k_1406_takut UUID; k_1407_menambahkan UUID; k_1408_garang UUID; k_1409_brutal UUID; k_1410_mencari UUID; k_1411_diisi UUID; k_1723_menyarankan UUID; k_2145_misterius UUID;

  -- ============ VOCABULARY IDs (Level 29) ============
  v_4387_alas_kaki UUID; v_4769_untuk_ditangkap UUID; v_4808_efektivitas UUID; v_4892_pembangunan_kembali UUID; v_5009_untuk_mendapatkan_posisi UUID; v_5031_untuk_naik UUID; v_5074_perut UUID; v_5076_menjadi_gila UUID; v_5081_untuk_mengundang UUID; v_5117_kolega UUID; v_5118_birokrat UUID; v_5146_ibu_rumah_tangga UUID; v_5166_diagnosa UUID; v_5213_menjadi_kering UUID; v_5214_musim_kemarau UUID; v_5215_kanpai UUID; v_5216_untuk_mendesak UUID; v_5217_keinginan UUID; v_5218_melihat UUID; v_5219_tuan_rumah UUID; v_5220_untuk_menghancurkan_sesuatu UUID; v_5221_penghancuran_lengkap UUID; v_5222_runtuh UUID; v_5223_anak_perempuan UUID; v_5224_putri_tunggal UUID; v_5225_agama UUID; v_5226_sekte UUID; v_5227_sekte_zen UUID; v_5228_perjamuan UUID; v_5229_perjamuan UUID; v_5230_tidak_sehat UUID; v_5231_gugup UUID; v_5232_amarah UUID; v_5233_menakutkan UUID; v_5234_teror UUID; v_5235_fobi UUID; v_5236_menakutkan UUID; v_5237_satu_piala UUID; v_5238_dua_piala UUID; v_5239_tiga_piala UUID; v_5240_papan UUID; v_5241_papan_nama UUID; v_5242_untuk_mencapai_dasarnya UUID; v_5243_sangat UUID; v_5244_eropa_dan_amerika UUID; v_5245_eropa_tengah UUID; v_5246_jepang_dan_eropa UUID; v_5247_edo UUID; v_5248_masuk UUID; v_5249_untuk_menambahkan_sesuatu_ke UUID; v_5250_lampiran UUID; v_5251_sangat_kuat UUID; v_5252_garang UUID; v_5253_kuat UUID; v_5254_garang UUID; v_5255_untuk_menyingkat UUID; v_5256_menghilangkan UUID; v_5257_singkatan UUID; v_5258_diagram_kasar UUID; v_5259_garis_besar_luas UUID; v_5260_sakit UUID; v_5261_penawar_rasa_sakit UUID; v_5263_untuk_tidur UUID; v_5264_ramuan_tidur UUID; v_5266_untuk_akumulasi UUID; v_5267_daerah UUID; v_5268_volume UUID; v_5269_pencarian UUID; v_5270_indeks UUID; v_5271_mendesak UUID; v_5272_tenggat_waktu UUID; v_5273_untuk_mengencangkan UUID; v_5274_menteri UUID; v_5275_navigasi UUID; v_5276_penerbangan UUID; v_5277_penerbangan_tanpa_henti UUID; v_5278_distrik_perbelanjaan UUID; v_5280_untuk_memeriksa_seorang_pasien UUID; v_5281_pemeriksaan_kesehatan UUID; v_5282_untuk_memasukkan UUID; v_5285_meminta UUID; v_5288_untuk_mengambil UUID; v_5289_persewaan UUID; v_5290_tersesat UUID; v_5291_menteri_kabinet UUID; v_5292_rapat_kabinet UUID; v_5293_pahlawan UUID; v_5294_korea_selatan UUID; v_5295_jepang_dan_korea_selatan UUID; v_5305_keingintahuan UUID; v_5306_nomor_ganjil UUID; v_5307_aneh UUID; v_5391_tekstil UUID; v_5393_amarah UUID; v_5394_lapar UUID; v_5395_memanggil_kucing UUID; v_5396_untuk_mengatur UUID; v_5397_untuk_mengunjungi UUID; v_5428_pusat_perbelanjaan_bawah_tanah UUID; v_5430_pengawasan UUID; v_5431_pengawasan UUID; v_6295_untuk_merekomendasikan UUID; v_6297_permohonan UUID; v_7470_papan_tulis UUID; v_7500_peserta_pelatihan UUID; v_7501_spam UUID; v_7604_kontribusi UUID; v_7657_pengurus_rumah_tangga UUID; v_7658_sumbangan UUID; v_7718_tertidur UUID; v_7772_untuk_membuat_marah_seseorang UUID; v_7811_pintu_masuk UUID; v_8684_untuk_mendekat UUID; v_8720_keraguan UUID; v_8759_mencari UUID; v_9045_untuk_mempercayakan_sesuatu UUID; v_9048_tiket_penumpang UUID; v_9090_tonkatsu UUID; v_9094_kemarahan UUID; v_9296_terjadi_secara_berturut_turut UUID; v_9308_aplikasi UUID; v_9376_begadang UUID;

BEGIN

  DELETE FROM items WHERE level = 29;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '尞', 'arang', 29, 1, 'Saat matahari mulai kecil, Anda perlu memanaskannya dengan melemparkan beberapa tanduk besar ke dalam api. Ini berubah menjadi arang. <radikal>arang</radikal> yang enak dan hangat yang membuat Anda tetap hangat saat matahari mulai terbenam.')
    RETURNING id INTO r_319_arang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '区', 'daerah', 29, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>distrik</radikal>.')
    RETURNING id INTO r_322_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '臣', 'pelayan', 29, 3, 'Hei, itu raksasa yang kamu pelajari sebelumnya. Tapi... tapi lengannya dirantai. Mereka dirantai karena Anda menangkap raksasa itu dan sekarang menjadi <radikal>pelayan</radikal> Anda!')
    RETURNING id INTO r_323_pelayan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '乙', 'hidung', 29, 4, 'Jika Anda melihat ke arah kanan radikal ini, Anda akan melihat <radikal>HIDUNG</radikal> (dengan mata sipit di sebelah kiri).')
    RETURNING id INTO r_324_hidung;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '上', 'di-atas', 29, 5, 'Radikal ini sama dengan kanji. Artinya <radikal>di atas</radikal>.')
    RETURNING id INTO r_325_di_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '玄', 'misterius', 29, 6, 'Apa yang ada di balik penutup ini yang berbau seperti kotoran? Aku tidak tahu! Betapa <radikal>misterius</radikal>.')
    RETURNING id INTO r_403_misterius;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_319_arang, 'Arang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_322_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_323_pelayan, 'Pelayan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_324_hidung, 'Hidung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_325_di_atas, 'Di atas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_403_misterius, 'Misterius', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '監', 'mengawasi', 29, 7, 'Kepada <radical>pelayan</radical> Anda mengatakan: "<radical>gun</radical>, <radical>ground</radical>, <radical>plate</radical>." Tugas Anda adalah <kanji>mengawasi</kanji> semua yang mereka lakukan.', 'Mengapa Anda harus <kanji>mengawasi</kanji> semuanya? Karena Anda adalah Jenghis <reading>Khan</reading> (かん), dan Jenghis Khan mengawasi segalanya.')
    RETURNING id INTO k_1379_mengawasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '杯', 'secangkir-cairan', 29, 8, '<radikal>pohon</radikal> <radikal>bukan</radikal> adalah <kanji>secangkir cairan</kanji> atau <kanji>penghitung untuk cangkir</kanji>. Jangan sampai mereka tercampur aduk. Terakhir kali Anda mencoba membuat cangkir dari pohon untuk menghitung, tenggorokan Anda dipenuhi serpihan saat Anda menggunakannya. Bahkan tidak ada cairan apa pun di dalamnya.', 'Cara lain untuk mengingat <kanji>penghitung cangkir</kanji> menggunakan <kanji>cangkir cairan</kanji> adalah dengan membuat dan menghafal <membaca>hai</reading>ku (はい) tentangnya. Bukankah haiku berguna?')
    RETURNING id INTO k_1380_secangkir_cairan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '乾', 'kering', 29, 9, 'Di <radical>pagi</radical>, Anda menggunakan <radical>pistol</radical> di <radical>hidung</radical> Anda untuk membuatnya <kanji>kering</kanji>.', 'Teknik untuk membuat hidung <kanji>kering</kanji> yang bagus ini ditemukan oleh Jenghis <reading>Khan</reading> (かん)! Bukan dia, tapi seseorang yang bekerja di bawahnya. Soalnya, hidungnya agak lembap.')
    RETURNING id INTO k_1381_kering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '催', 'sponsor', 29, 10, '<radical>pemimpin</radikal> <radical>gunung</radikal> <radikal>kalkun</radikal> adalah <kanji>sponsor</kanji> kami. Dia membayar kami untuk mengatakan dan mengetik semua yang Anda baca.', '<kanji>sponsor</kanji> yang sama ini juga merupakan cara Anda membuat <reading>cy</reading>borg (さい) Anda. Anda tidak berpikir Anda bisa mendapatkan semua bagian tubuh itu sendiri, bukan? Tidak tidak, pemimpin kalkun gunung mensponsori Anda sehingga Anda dapat melakukan eksperimen.')
    RETURNING id INTO k_1382_sponsor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '促', 'keinginan', 29, 11, '<radikal>pemimpin</radikal> Anda melihat <radikal>kaki</radikal> Anda yang telanjang dan <kanji>mendesak</kanji> Anda untuk mengenakan kaus kaki.', 'Saat <kanji>mendorong</kanji>d, Anda mengenakan <reading>kaus kaki</reading> (そく) di kaki Anda. Ahh, rasanya jauh lebih baik. Hebat sekali, kaus kaki ini.')
    RETURNING id INTO k_1383_keinginan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '欧', 'eropa', 29, 12, 'Sebuah <radikal>distrik</radikal> yang <radikal>kekurangan</radikal> akan berada di <kanji>Eropa</kanji>.', '<kanji>Eropa</kanji> sangat kekurangan karena <reading>王</reading> (おう) mereka terus mengambil semuanya.')
    RETURNING id INTO k_1384_eropa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '江', 'masuk', 29, 13, '<radikal>tsunami</radikal> melanda dan menghancurkan semua <radikal>konstruksi</radikal> yang sedang dilakukan di <kanji>inlet</kanji> dan <kanji>teluk</kanji>. Baik saluran masuk maupun teluk sedang banyak dibangun untuk memperbaiki kerusakan akibat tsunami terakhir, dan kemudian tsunami lain datang dan menghancurkan semuanya juga. Gelandangan.', 'Bayangkan orang Jepang berdiri di <kanji>teluk</kanji> dan <kanji>inlet</kanji> saat tsunami mendekat. "<reading>Eh</reading> (え)? Apa itu, Akiko?" "Eh? Dimana? Aduh, itu tsunami!!"')
    RETURNING id INTO k_1385_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '請', 'meminta', 29, 14, 'Jika apa yang Anda <radikal>ucapkan</radikal> hasilnya <radikal>biru</radikal>, semua orang tahu itu berarti Anda membuat <kanji>permintaan</kanji>. Anda meminta bantuan dan kata-kata itu keluar dari mulut Anda dalam gumpalan biru cerah. Mereka melayang di depan Anda selama beberapa detik, sebelum jatuh ke orang yang Anda ajukan permintaan.', 'Lain kali jika seseorang <kanji>meminta</kanji> sesuatu dari Anda, keluarkan <reading>sa</reading>ber (せい) Anda dan potong menjadi dua!')
    RETURNING id INTO k_1386_meminta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雄', 'pria', 29, 15, '<radical>narwhal</radical> bertemu secara <radical>pribadi</radical> dengan <radical>kalkun</radical> sehingga mereka dapat, eh, saling menunjukkan beberapa hal pribadi. Melakukan hal ini mereka menyadari bahwa mereka berdua <kanji>laki-laki</kanji>! Kamu harus cukup <kanji>jantan</kanji> dan <kanji>berani</kanji> untuk melakukan hal seperti itu.', 'Hewan <kanji>jantan</kanji> ini jelas masih bereksperimen dengan berbagai hal. Ah, mereka pasti <read>you</reading>ths (ゆう)!  Menjadi remaja lagi!')
    RETURNING id INTO k_1387_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '韓', 'korea', 29, 16, 'Di <radical>pagi</radical>, <radical>Korea</radical> akan tetap menjadi <kanji>Korea</kanji>.', 'Anda tahu siapa penggemar berat <kanji>Korea</kanji>? Jenghis <reading>Khan</reading> (かん). Dia sangat menyukai Korea sehingga dia benar-benar mengabaikannya saat dia menundukkan negara-negara Asia lainnya.')
    RETURNING id INTO k_1388_korea;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '壊', 'merusak', 29, 17, 'Di <radical>tanah</radical> Anda memasang <radical>salib</radical> dan mengelilinginya dengan <radical>jaring</radikal> yang terbuat dari <radical>pakaian</radikal> agar tetap aman, namun jaring ini cenderung <kanji>putus</kanji>. Tentu saja rusak, itu hanya beberapa pakaian yang kamu ikat menjadi satu.', 'Anda menyadari apa yang membuat <kanji>break</kanji> jaring Anda adalah <reading>kay</reading>aks (かい). Salib dan jaringnya berada <em>tepat</em> di sebelah jalur sungai tempat para pembuat kayak melakukan aktivitas kayak mereka, dan setiap kali mereka melewati dayung mereka, mereka akan membentur jaring Anda dan memecahkannya.')
    RETURNING id INTO k_1389_merusak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '診', 'diagnosis', 29, 18, 'Mereka <radikal>mengatakan</radikal> untuk memakai <radikal>topi</radikal> untuk menutupi <radikal>rambut</radikal> Anda jika dokter <kanji>mendiagnosis</kanji> Anda mengalami kerontokan rambut. Itu pilihan terbaik, kawan.', 'Anda baru saja meminta dokter <kanji>mendiagnosis</kanji> Anda menderita rambut rontok. Sungguh mengerikan! Anda tersandung keluar ruangan, tercengang. Tanpa memperhatikan, kamu membenturkan <reading>tulang kering</reading> (しん)mu ke atas meja. Tulang keringmu sungguh sakit. Hari yang sangat buruk.')
    RETURNING id INTO k_1390_diagnosis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '閣', 'kabinet', 29, 19, 'Di <radikal>gerbang</radikal>, Anda <radikal>mencium</radikal> <kanji>para anggota kabinet</kanji>, satu per satu. Untuk mendapatkan akses ke gedung pemerintah ini, Anda harus mencium semua anggota kabinet di pintu gerbang. Ritual yang aneh.', 'Anda perlu mencium setiap anggota <kanji>kabinet</kanji> untuk mendapatkan akses ke gedung mereka. Dan Anda harus masuk ke dalam gedung untuk memulihkan <reading>ayam</reading> Anda (かく). Ayam pemenang hadiah Anda telah ditangkap oleh anggota kabinet dan Anda perlu menyusup ke markas mereka dan memulihkan ayam Anda!')
    RETURNING id INTO k_1391_kabinet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '僚', 'kolega', 29, 20, '<radikal>pemimpin</radikal> yang baik akan menggunakan <radikal>arang</radikal> untuk menandai <kanji>rekan</kanji>nya. Kadang-kadang jika pemimpin tidak selalu ada, masyarakat akan memberontak dan bertindak buruk terhadap orang-orang yang dapat membuat mereka mendapat masalah. Jadi ketika Anda menandai mereka dengan arang, Anda tahu bahwa ada seseorang yang dekat dengan pemimpin Anda dan Anda mungkin harus berhenti bersikap brengsek.', 'Kamu harus bersikap baik di dekat <kanji>rekan</kanji>nya, karena jika kamu bukan <reading>baris</reading> (りょう) kamu, izin perahu akan dicabut. Berperahu mendayung adalah satu-satunya kesenangan yang bisa Anda dapatkan, selain belajar kanji. Jadi bertindaklah sebaik mungkin di sekitar rekan pemimpin agar Anda tidak kehilangan hak mendayung.')
    RETURNING id INTO k_1392_kolega;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '積', 'mengumpulkan', 29, 21, '<radical>Biji-bijian</radical> <radical>disalahkan</radical>d karena banyaknya <kanji>terakumulasi</kanji>. Jika biji-bijian menumpuk terlalu banyak maka akan menambah pekerjaan bagi para petani. Jika jumlahnya terlalu sedikit, maka akan membuat rakyat kelaparan. Ugh, biji-bijian tidak bisa menang bersama kalian. Mereka disalahkan atas segalanya.', 'Sekarang biji-bijian telah <kanji>mengumpul</kanji> satu ton, melimpah di dalam karung biji-bijian, dan petani itu membeku dan berkata, "Ini adalah biji-bijian yang <read>seksi</reading> (せき)."')
    RETURNING id INTO k_1393_mengumpulkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '督', 'langsung', 29, 22, '<radical>Di atas</radical> Anda di <radical>kecil</radical> <radical>bangku</radical> adalah <radical>mata</radical> orang yang akan <kanji>mengarahkan</kanji> dan <kanji>mengawasi</kanji> Anda di tempat kerja. Dia sangat tinggi di atasmu, jadi yang bisa kamu lihat hanyalah kilatan mata pengawasnya. Namun Anda dapat mendengarnya meneriakkan arah dengan jelas, memberi tahu Anda apa yang harus dilakukan.', 'Seseorang yang bisa <kanji>mengarahkan</kanji> dengan baik pastilah <reading>Toku</reading>gawa (とく) Ieyasu. Benar saja, ketika dia akhirnya turun dari kursinya, Anda melihat bahwa dia adalah hantu Tokugawa Ieyasu!!! Itu menjelaskan mengapa sebelumnya Anda hanya bisa melihat sinar samar dari mata pengawasnya.')
    RETURNING id INTO k_1394_langsung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '臣', 'pelayan', 29, 23, 'Kanji <radikal>pelayan</radikal> dan kanji <kanji>pelayan</kanji> sama persis! Ingatlah bahwa kanji juga berarti <kanji>pengikut</kanji> dan Anda akan baik-baik saja.', '<kanji>Pelayan</kanji> Anda, juga dikenal sebagai <kanji>punggawa</kanji> Anda, membenturkan <reading>tulang kering</reading> (しん) sepanjang waktu sehingga Anda memaksanya mengenakan <reading>jean</reading> (じん) untuk bekerja sekarang. Dia membenturkan tulang keringnya ke semua perabotan di rumah, menjatuhkan semua barang berharga Anda. Tapi setidaknya saat dia memakai celana jeans tidak meninggalkan bekas lebam seperti saat dia tidak memakai celana.')
    RETURNING id INTO k_1395_pelayan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '略', 'singkatan', 29, 24, '<radical>sawah</radikal> yang ingin Anda <radikal>cium</radikal> adalah yang mungkin memiliki <kanji>singkatan</kanji> yang keren untuk namanya, seperti Ri''-Pad. Ya, itu pasti singkatan yang keren!', 'Sebuah <kanji>singkatan</kanji> seperti Ri''-Pad pasti akan mendapatkan <membaca>reaksi</reading>tion (りゃく) yang kuat — beberapa orang akan menganggapnya sedikit megah, beberapa akan membencinya, namun sebagian besar mungkin akan menganggapnya sangat keren.')
    RETURNING id INTO k_1396_singkatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '航', 'navigasi', 29, 25, 'Di setiap <radical>perahu</radical> ada <radical>tutup</radical> di <radical>meja</radical> yang digunakan untuk <kanji>navigasi</kanji>. Saat Anda membuka tutupnya, ada peta besar, sekstan, dan beberapa miniatur perahu kecil. Semua alat navigasi.', 'Anda melihat peralatan <kanji>navigasi</kanji> berguling dan kemudian Anda merasakan tamparan di bagian belakang kepala Anda. Aduh! Anda berbalik dan di sana berdiri <reading>こう</reading>いち, yang Anda bawa sebagai navigator ekspedisi ini. Dan, Anda baru saja kehilangan semua barangnya!')
    RETURNING id INTO k_1397_navigasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寄', 'mendekatlah', 29, 26, 'Di bawah <radical>atap</radikal> ini seseorang yang <radikal>aneh</radikal> sedang mencoba <kanji>mendekati</kanji> kepada Anda. Anda mundur, tapi mereka tetap mendekat.', 'Mereka terus <kanji>mendekat</kanji> sampai Anda tidak tahan lagi. Anda keluar dari bawah atap, membanting pintu hingga tertutup, dan menguncinya dengan <reading>kunci</reading> (き).')
    RETURNING id INTO k_1398_mendekatlah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '板', 'papan', 29, 27, 'Jika kamu seorang <radical>pohon</radikal> <radikal>anti</radikal> (seseorang yang menentang pohon), maka kamu tidak akan keberatan jika aku mengubah semuanya menjadi <kanji>papan</kanji>! Ha ha ha!', 'Asosiasi Pecinta Pohon mempunyai satu kata ketika mereka melihatmu mengubah pohon menjadi <kanji>papan</kanji>: "<reading>Ban</reading>ned (ばん)," teriak mereka padamu. "Papan berarti kamu dilarang!"')
    RETURNING id INTO k_1399_papan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '街', 'jalanan', 29, 28, 'Jika hanya <radical>kotoran</radikal> dan lebih banyak <radikal>kotoran</radikal> yang Anda lihat saat <radikal>pergi</radikal> dari satu tempat ke tempat lain, Anda pasti menjelajahi <kanji>jalanan</kanji> di <kanji>kota</kanji>. Kota adalah tempat yang terkenal kotor, jadi berhati-hatilah saat keluar rumah.', 'Saat kamu berjalan di <kanji>jalanan</kanji>, membersihkan diri dari kotoran, seorang <reading>pria</reading> (がい) menabrakmu: "Hei kawan, perhatikan kemana kamu pergi!" Saat dia mengatakan ini, dia bertemu pria lain. "Wah, kawan - kamu pikir kamu pemilik jalan ini atau apa?" “Sebenarnya, kawan, saya menjalankan jalan ini, jadi sebaiknya Anda memeriksanya sendiri.”')
    RETURNING id INTO k_1400_jalanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宗', 'agama', 29, 29, 'Di bawah <radikal>atap</radikal> ini Anda <radikal>mendongkrak</radikal> <kanji>agama</kanji> Anda ke masyarakat.', '<kanji>agama</kanji> Anda mengharuskan setiap orang melepas <membaca>sepatu</reading> mereka (しゅう). Terutama karena sepatu akan membantu mereka melawan pukulan keras, jadi Anda memberi tahu mereka bahwa untuk bergabung dengan agama Anda, mereka harus meninggalkan sepatu mereka di depan pintu.')
    RETURNING id INTO k_1401_agama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '緊', 'tegang', 29, 30, '<radical>pelayan</radical> duduk di <radical>bangku</radical>, memegang seutas <radical>benang</radical>, terlihat sangat <kanji>tegang</kanji>.', 'Anda bertanya kepada pelayan mengapa mereka begitu <kanji>tegang</kanji>, dan mereka mengatakan bahwa mereka ditugaskan untuk membunuh <reading>Raja</reading>g (きん) Inggris dengan seutas benang ini.')
    RETURNING id INTO k_1402_tegang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '娘', 'anak-perempuan', 29, 31, 'Seorang <radikal>wanita</radikal> yang <radikal>baik</radikal> adalah <kanji>putri</kanji> saya. Putriku adalah wanita yang baik, aku jamin itu.', 'Sebaliknya, <kanji>putri</kanji> Anda bukanlah wanita yang baik. Putri Anda tampak seperti <reading>rusa yang mungkin</reading> (むすめ) tidak dapat menemukan jalan keluar dari kantong kertas yang basah. Putri Anda tampak seperti rusa besar yang mungkin tersesat tanpa peta. Putri Anda terlihat seperti rusa besar yang mungkin melakukan banyak hal bodoh.')
    RETURNING id INTO k_1403_anak_perempuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宴', 'perjamuan', 29, 32, 'Di bawah <radical>atap</radikal>, namun masih di bawah <radikal>matahari</radikal>, seorang <radikal>wanita</radikal> sedang mengadakan <kanji>perjamuan</kanji> yang luar biasa. Wanita itu tidak ingin ada orang yang terbakar sinar matahari, tapi jamuan makan paling baik dilakukan di luar ruangan, jadi dia memasang atap untuk melindungi dia dan tamunya.', 'Sayangnya, atap <kanji>perjamuan</kanji> runtuh tepat sebelum para tamu tiba, dan <reading>berakhir</reading> (えん) sebelum dimulai.')
    RETURNING id INTO k_1404_perjamuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '怖', 'menakutkan', 29, 33, '<radikal>jiwa</radikal> <radikal>narwhal</radikal> tersedot ke dalam <radikal>handuk</radikal>, yang mana <kanji>menakutkan</kanji>!', 'Saat kamu menonton adegan <kanji>menakutkan</kanji> ini kamu tidak bisa menahan diri untuk tidak bergumam, "<reading>Foo</reading>l," (ふ) pelan-pelan. Kemudian Anda mendengar, "Bodoh, bodoh, bodoh, itu terlalu menakutkan, bodoh!" dan Anda menyadari semua narwhal lainnya sedang bernyanyi.')
    RETURNING id INTO k_1405_menakutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '恐', 'takut', 29, 34, 'Sebuah <radikal>gergaji</radikal> memotong <radikal>hati</radikal> Anda dan Anda dipenuhi dengan <kanji>ketakutan</kanji>. Ya, kamu diliputi rasa takut sebelum gergaji itu mencapai hatimu juga, tapi sekarang gergaji itu menusuk hatimu, kamu merasa lebih takut dari sebelumnya.', 'Bahkan lebih dari <kanji>ketakutan</kanji> Anda akan kematian, Anda dipenuhi dengan ketakutan bahwa Anda tidak akan pernah bisa berlibur di <reading>きょう</reading>と. Anda selalu ingin melakukan perjalanan ke きょうと, tetapi jika Anda mati karena luka di hati ini, Anda tidak akan pernah mendapat kesempatan untuk pergi.')
    RETURNING id INTO k_1406_takut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '添', 'menambahkan', 29, 35, 'Ada <radical>tsunami</radical> di <radical>surga</radical> dan Anda mengambil <radical>kecil</radical> <radical>setetes</radical> air dan <kanji>menambahkan</kanji> ke tsunami. Sekarang tsunaminya cukup besar untuk menghancurkan seluruh surga. Tetesan kecil yang Anda tambahkan pada tsunami sudah cukup untuk mendorongnya ke tepian, mencapai kemampuan kehancuran penuh.', 'Tepat setelah Anda <kanji>menambahkan</kanji> tetesan kecil air ke dalam tsunami, ketinggiannya akan <reading>sepuluh</reading> (てん) tingkat. Sebelumnya hanya sembilan, tapi sejak Anda menambahkan ketinggian itu, tsunami sekarang setinggi sepuluh lantai.')
    RETURNING id INTO k_1407_menambahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '猛', 'garang', 29, 36, 'Seekor <radikal>hewan</radikal> memakan <radikal>anak</radikal> dari <radikal>piring</radikal> dengan cara yang sangat <kanji>ganas</kanji>. Ini adalah hewan yang galak, jadi masuk akal jika ia memakan anak itu dengan gaya yang galak.', 'Alasan hewan <kanji>ganas</kanji> ini memakan anak dari piring adalah karena anak tersebut lupa <read>memotong</reading> (もう) halaman rumput hewan tersebut. Hewan ganas itu telah mempekerjakan anak tersebut untuk memotong rumput halamannya hari ini, dan ketika anak tersebut lupa melakukannya, hewan ganas tersebut memburu anak tersebut dan memakannya.')
    RETURNING id INTO k_1408_garang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '烈', 'brutal', 29, 37, 'Saat <radical>yakuza</radical> <radical>pisau</radical> <radical>mendidih</radical>, Anda tahu bahwa sesuatu yang sangat <kanji>kekerasan</kanji> dan <kanji>intens</kanji> akan segera terjadi.', 'Ketika seseorang menjadi <kanji>kekerasan</kanji> atau <kanji>intens</kanji>, mereka selalu berteriak "<reading>Ayo</reading> (れつ) menjadi kasar dan intens!"')
    RETURNING id INTO k_1409_brutal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '索', 'mencari', 29, 38, 'Ada <radical>salib</radikal> di <radikal>dahi</radikal> Anda dengan <radikal>benang</radikal> melekat padanya, memaksa Anda untuk <kanji>menelusuri</kanji> ke mana arahnya. Anda tidak yakin bagaimana salib itu tersangkut di dahi Anda, tetapi Anda tertarik untuk melihat ke mana arah benang ini. Pencarian sedang berlangsung.', '<kanji>penelusuran</kanji> Anda telah selesai. Anda menemukan akhir utas. Utas membawa Anda ke <reading>sack</reading> (さく). Sebuah karung berisi lebih banyak salib dengan lebih banyak benang yang melekat padanya. Apa maksudnya semua itu!?!')
    RETURNING id INTO k_1410_mencari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '詰', 'diisi', 29, 39, '<radical>Ucapkan</radical> <radical>semoga sukses</radical> kepada satu orang saja dan mereka akan <kanji>diisi</kanji> dengan keberuntungan itu.', 'Anda <kanji>mengisi</kanji> mereka dengan mengucapkan semoga beruntung <reading>dua</reading> (つ) berkali-kali!')
    RETURNING id INTO k_1411_diisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '勧', 'menyarankan', 29, 40, 'Ada <radical>panah</radical> di <radical>kalkun</radikal> itu dan Anda melakukan segala daya <radikal>tenaga</radikal> Anda untuk <kanji>merekomendasikan</kanji> agar kami tidak memakan kalkun tersebut. Ada anak panah di kalkun ini. Anak panahnya terlihat sedikit patah, jadi mungkin ada serpihan di dalam kalkun itu. Saya tahu Anda semua lapar tetapi saya tidak merekomendasikan memakan burung ini.', 'Anda <kanji>merekomendasikan</kanji> <reading>Khan</reading> (かん) Jenghis yang spesial daripada kalkun yang tercemar panah ini! Saat itu keluar, hatimu tenggelam. Jenghis Khan rupanya memakan seekor sapi yang anak panahnya patah.')
    RETURNING id INTO k_1723_menyarankan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '玄', 'misterius', 29, 41, 'Kata radikal berarti <radikal>misterius</radikal> dan kanji memiliki arti yang sama: <kanji>misterius</kanji>. Bisa juga berarti <kanji>gelap</kanji>, karena hal-hal misterius cenderung agak gelap dan berbayang.', 'Tidak ada yang lebih <kanji>misterius</kanji> selain <reading>Gen</reading>ji (げん). Dia tinggi, <kanji>gelap</kanji>, tampan, dan yang terpenting... 〜misterius〜!')
    RETURNING id INTO k_2145_misterius;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1379_mengawasi, 'Mengawasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1379_mengawasi, 'Pengawasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1380_secangkir_cairan, 'Secangkir Cairan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1380_secangkir_cairan, 'Penghitung Untuk Piala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1381_kering, 'Kering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1382_sponsor, 'Sponsor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1383_keinginan, 'Keinginan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1384_eropa, 'Eropa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1385_masuk, 'Masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1385_masuk, 'Teluk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1386_meminta, 'Meminta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1387_pria, 'Pria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1387_pria, 'Jantan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1387_pria, 'Berani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1388_korea, 'Korea', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1389_merusak, 'Merusak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1390_diagnosis, 'Diagnosis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1391_kabinet, 'Kabinet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1391_kabinet, 'Kabinet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1392_kolega, 'Kolega', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1393_mengumpulkan, 'Mengumpulkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1394_langsung, 'Langsung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1394_langsung, 'Mengawasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1395_pelayan, 'Pelayan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1395_pelayan, 'Gaji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1396_singkatan, 'Singkatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1396_singkatan, 'Singkatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1397_navigasi, 'Navigasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1398_mendekatlah, 'Mendekatlah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1398_mendekatlah, 'Mampir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1398_mendekatlah, 'Mengirim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1399_papan, 'Papan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1400_jalanan, 'Jalanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1400_jalanan, 'Kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1401_agama, 'Agama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1402_tegang, 'Tegang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1403_anak_perempuan, 'Anak perempuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1404_perjamuan, 'Perjamuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1404_perjamuan, 'Berpesta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1405_menakutkan, 'Menakutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1406_takut, 'Takut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1407_menambahkan, 'Menambahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1408_garang, 'Garang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1409_brutal, 'Brutal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1409_brutal, 'Intens', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1410_mencari, 'Mencari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1411_diisi, 'diisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1723_menyarankan, 'Menyarankan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2145_misterius, 'Misterius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2145_misterius, 'Gelap', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1379_mengawasi, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1380_secangkir_cairan, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1381_kering, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1381_kering, 'かわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1381_kering, 'ほ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1382_sponsor, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1382_sponsor, 'もよお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1383_keinginan, 'そく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1383_keinginan, 'うなが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1384_eropa, 'おう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1385_masuk, 'え', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1385_masuk, 'こう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1386_meminta, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1386_meminta, 'しん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1386_meminta, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1386_meminta, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1386_meminta, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1387_pria, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1387_pria, 'おす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1387_pria, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1388_korea, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1389_merusak, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1389_merusak, 'こわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1390_diagnosis, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1390_diagnosis, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1391_kabinet, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1392_kolega, 'りょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1393_mengumpulkan, 'せき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1393_mengumpulkan, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1394_langsung, 'とく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1395_pelayan, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1395_pelayan, 'じん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1396_singkatan, 'りゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1397_navigasi, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1397_navigasi, 'わたる', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1398_mendekatlah, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1398_mendekatlah, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1399_papan, 'ばん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1399_papan, 'はん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1399_papan, 'いた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1400_jalanan, 'がい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1400_jalanan, 'かい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1400_jalanan, 'まち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1401_agama, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1402_tegang, 'きん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1403_anak_perempuan, 'むすめ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1404_perjamuan, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1404_perjamuan, 'うたげ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1405_menakutkan, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1405_menakutkan, 'こわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1406_takut, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1406_takut, 'おそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1406_takut, 'こわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1407_menambahkan, 'てん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1407_menambahkan, 'そ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1408_garang, 'もう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1408_garang, 'たけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1409_brutal, 'れつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1409_brutal, 'はげ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1410_mencari, 'さく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1411_diisi, 'つ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1411_diisi, 'きつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1411_diisi, 'きち', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1411_diisi, 'づ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1723_menyarankan, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1723_menyarankan, 'すす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2145_misterius, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2145_misterius, 'くろ', 'kunyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '履き物', 'alas-kaki', 29, 42, 'Ingat bagaimana 履く berarti "memakai sepatu" dan 物 berarti "benda"? Nah, gabungkan keduanya dan Anda akan mendapatkan istilah untuk benda yang Anda kenakan — <vocabulary>alas kaki</vocabulary> atau <vocabulary>sepatu</vocabulary>, dengan kata lain.

Anda mungkin tahu 履く digunakan untuk banyak pakaian berbeda yang dikenakan di bawah pinggang, tapi hati-hati: <vocabulary>履き物</vocabulary> hanya mengacu pada alas kaki dan sepatu.', 'Ini menggunakan bacaan kun''yomi yang Anda pelajari dengan kosakata 履く dan 物. Jika Anda dapat mengingatnya, Anda siap melakukannya.', 'Alas kaki, Sepatu')
    RETURNING id INTO v_4387_alas_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捕まる', 'untuk-ditangkap', 29, 43, 'Anda telah melihat bagaimana 捕まえる berarti "menangkap", dan ini adalah saudara intransitifnya: <vocabulary>ditangkap</vocabulary>.

Pada intinya, 捕まる berarti tertangkap secara fisik, baik Anda kalah dalam permainan kejar-kejaran atau ditangkap oleh polisi. Kadang-kadang, kata ini juga dapat digunakan dalam arti kiasan, seperti ketika Anda dihambat oleh orang yang sangat cerewet (Anda telah "tertangkap" olehnya) atau Anda akhirnya berhasil berbicara dengan seseorang yang selama ini Anda coba ajak bicara (mereka telah "tertangkap" oleh Anda).

Anda dapat membedakannya dengan 捕まえる dengan memikirkan bagaimana hal ini akan <read>merusak</reading> (まる) reputasi Anda jika Anda <vocabulary>ditangkap</vocabulary> oleh polisi.', 'Kata ini menggunakan bacaan yang sama dengan 捕まえる, jadi jika kamu mengingatnya, kamu juga akan baik-baik saja di sini.', 'Untuk Ditangkap, Akan Ditangkap')
    RETURNING id INTO v_4769_untuk_ditangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '効力', 'efektivitas', 29, 44, '<kanji>efektif</kanji> <kanji>kekuatan</kanji> sesuatu adalah <vocabulary>efektivitas</vocabulary>-nya. Jika mempunyai kekuatan efektif, maka <vocabulary>berlaku</vocabulary> tetap ada.

Kata ini biasanya mengacu pada kekuatan hukum atau keefektifan suatu undang-undang, perjanjian, kontrak, atau perjanjian, namun dapat juga digunakan untuk berbicara tentang kemanjuran hal lain, misalnya kedokteran.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Efektivitas, Sedang Berlaku, Kemanjuran')
    RETURNING id INTO v_4808_efektivitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '再建', 'pembangunan-kembali', 29, 45, '<kanji>Sekali lagi</kanji> Anda <kanji>membangun</kanji> itu. Ini adalah <vocabulary>membangun kembali</vocabulary>.

再建 adalah kata formal yang mengacu pada tindakan membangun kembali sesuatu yang telah rusak atau hilang, baik itu struktur fisik seperti bangunan atau organisasi, atau bagian tubuh dalam konteks prosedur medis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Jangan lupakan ekstra itu い!', 'Pembangunan kembali, Rekonstruksi')
    RETURNING id INTO v_4892_pembangunan_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '就く', 'untuk-mendapatkan-posisi', 29, 46, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya <kanji>mendapatkan posisi</kanji>. Versi kosakata kata kerjanya adalah <vocabulary>to get a position</vocabulary>, atau <vocabulary>to get a job</vocabulary>.

Perhatikan bahwa 就く digunakan dengan kata lain yang menunjukkan posisi atau pekerjaan, seperti 王位に就く(menjadi raja) atau 仕事に就く (mencari pekerjaan).', 'Jika Anda ingin <vocabulary>mendapatkan posisi</vocabulary>, ada <reading>dua</reading> (つ) wawancara. Lewati saja dua wawancara untuk mendapatkan pekerjaan!', 'Untuk Mendapatkan Posisi, Untuk Mendapatkan Pekerjaan')
    RETURNING id INTO v_5009_untuk_mendapatkan_posisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昇る', 'untuk-naik', 29, 47, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>naik</kanji> jadi versi kosakata kata kerjanya haruslah <vocabulary>to ascend</vocabulary>, atau <vocabulary>to rise</vocabulary>.

昇る biasanya digunakan untuk membicarakan hal-hal seperti matahari dan bulan terbit, atau asap yang mengepul dari api.', 'Bacaannya adalah bacaan kun''yomi, namun cukup mudah. Bagaimana Anda membaca semua kata "mendaki" lainnya? 登る adalah salah satu contohnya. 上る adalah hal lain. Semuanya <read>のぼ</reading>る, begitu juga dengan ini. Berbeda dengan kata pendakian lainnya, kata ini menunjukkan bahwa tidak ada usaha yang harus dilakukan. Itu sebabnya Anda "mendaki" dan tidak mendaki, karena mendaki itu membutuhkan sedikit usaha.', 'Untuk Naik, Untuk Bangkit')
    RETURNING id INTO v_5031_untuk_naik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腹', 'perut', 29, 48, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa 腹 bisa dianggap sedikit lebih kasar atau kurang sopan dibandingkan dengan お腹.', 'Jika ada yang mencoba menyentuh <kanji>perut</kanji>mu, itu <reading>hara</reading>ssment (はら). Kecuali Anda tidak keberatan dengan hal itu, tentu saja. Namun jika tidak, pastikan untuk meneriakkan "pelecehan!" ketika mereka menyentuh perutmu. Anda juga harus meneriakkan jenis pelecehan apa itu: 腹ハラ (腹 pelecehan).

Catatan: Kata ini sering kali disebut rendaku jika dikombinasikan dengan kosakata lain, seperti ビールばら (perut buncit) atau 別ばら (perut terpisah untuk pencuci mulut).', 'Perut, Perut, Perut')
    RETURNING id INTO v_5074_perut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腹が立つ', 'menjadi-gila', 29, 49, 'Emosi seperti apa yang membuat <kanji>perut</kanji> Anda 立つ (berdiri)? Aku yakin, dia cukup marah. Anda benar-benar harus <vocabulary>marah</vocabulary> karena perut Anda mengalami semua masalah itu.

腹が立つ adalah ungkapan sehari-hari yang digunakan ketika seseorang membuat Anda kesal, dengan gambaran kemarahan dan kekesalan yang muncul dari dalam hati Anda. Perhatikan bahwa partikel が sering kali hilang, terutama dalam percakapan santai.', 'Kata ini hanya 腹 dan 立つ dengan が di tengahnya. Mungkin が memisahkan mereka karena mereka marah dan mencoba untuk berkelahi satu sama lain.

Perlu diperhatikan bahwa が tidak selalu ada — terkadang が dihilangkan dalam percakapan biasa. Ada juga versi alternatif tanpa が dari kata yang diucapkan はらだつ yang mungkin Anda temui dalam suasana atau tulisan yang lebih formal.', 'Menjadi Gila, Menjadi Marah')
    RETURNING id INTO v_5076_menjadi_gila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誘う', 'untuk-mengundang', 29, 50, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>mengundang</kanji>. Versi kosakata kata kerjanya adalah <vocabulary>mengundang</vocabulary>.

誘う mengacu pada mengundang seseorang dengan santai ke suatu tempat, acara, atau aktivitas. Jika itu adalah ajakan untuk melakukan sesuatu yang menggoda, itu juga bisa berarti <vocabulary>to menggoda</vocabulary>, atau <vocabulary>memikat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Semua orang bersemangat untuk <vocabulary>mengundang</vocabulary> Anda ke rumah mereka untuk demo karena Anda baru saja menemukan <reading>saw</reading> <reading>jadi</reading>ap (さそ). Apa itu sabun gergaji? Ini adalah sabun yang menghilangkan semua kotoran!', 'Untuk Mengundang, Untuk menggoda, Untuk Memikat')
    RETURNING id INTO v_5081_untuk_mengundang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同僚', 'kolega', 29, 51, 'Kita bekerja di tempat <kanji>yang sama</kanji> dan merupakan <kanji>rekan kerja</kanji>, sehingga menjadikan kita <vocabulary>kolega</vocabulary> atau <vocabulary>rekan kerja</vocabulary>.

Seperti yang bisa Anda tebak dari 同 kanji, 同僚 umumnya mengacu pada orang yang bekerja di tempat kerja yang sama dengan pangkat atau status yang sama. Dengan kata lain, Anda biasanya tidak menyebut atasan Anda sebagai 同僚!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kolega, Teman sekerja')
    RETURNING id INTO v_5117_kolega;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '官僚', 'birokrat', 29, 52, '<kanji>pemerintah</kanji> <kanji>rekan</kanji> adalah seseorang yang bekerja untuk <vocabulary>birokrasi</vocabulary>, menjadikan mereka <vocabulary>birokrat</vocabulary>.

Sama seperti kata birokrasi dalam bahasa Inggris, 官僚 sering kali memiliki konotasi negatif, menyiratkan birokrasi, inefisiensi, atau kekuasaan dan pengaruh yang mungkin dimiliki oleh pegawai negeri sipil senior dalam pemerintahan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Birokrat, Birokrasi, Pejabat Pemerintah')
    RETURNING id INTO v_5118_birokrat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主婦', 'ibu-rumah-tangga', 29, 53, '<kanji>tuan</kanji> <kanji>nyonya</kanji> adalah seorang wanita yang bertanggung jawab atas sebuah rumah. Dengan kata lain, dia adalah <vocabulary>ibu rumah tangga</vocabulary> atau <vocabulary>ibu rumah tangga</vocabulary>! Di Jepang, ini adalah profesi yang cukup umum bagi wanita yang sudah menikah, meski banyak hal telah berubah sedikit demi sedikit. Tetap saja, menjadi ibu rumah tangga berarti Anda mengendalikan uang, dan itu cukup bagus jika Anda bertanya kepada saya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ibu rumah tangga, Ibu rumah tangga')
    RETURNING id INTO v_5146_ibu_rumah_tangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '診断', 'diagnosa', 29, 54, '<kanji>mendiagnosis</kanji> berarti (secara metaforis) <kanji>memotong</kanji> semua kemungkinan yang menurut Anda tidak mungkin terjadi. Begitulah cara Anda mendapatkan <vocabulary>diagnosis</vocabulary>!

診断 terutama digunakan dalam konteks medis yang berarti tindakan <vocabulary>mendiagnosis</vocabulary> atau diagnosis itu sendiri. Dalam konteks non-medis, ini juga bisa berarti <vocabulary>assessment</vocabulary> yang digunakan untuk mengevaluasi sesuatu, seperti 性格診断 (tes kepribadian).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Diagnosa, Mendiagnosis, Penilaian')
    RETURNING id INTO v_5166_diagnosa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乾く', 'menjadi-kering', 29, 55, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>kering</kanji>, jadi versi kosakata verba ini artinya <vocabulary>to get dry</vocabulary>. Anda tidak melakukan pengeringan di sini — hal ini terjadi dengan sendirinya. Untuk mengingat hal ini, coba pikirkan betapa <reading>coo</reading>l (く) sesuatu bisa menjadi kering dengan sendirinya. Itu hanya keajaiban alam - betapa kerennya itu?', '<reading>川</reading> (かわ) telah mulai <vocabulary>menjadi kering</vocabulary>. Perlu menggunakan lebih sedikit air di sekitar sini jika tidak maka akan menjadi benar-benar kering.', 'Menjadi Kering, Menjadi Kering, Untuk Dikeringkan')
    RETURNING id INTO v_5213_menjadi_kering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乾季', 'musim-kemarau', 29, 56, '<kanji>kering</kanji> <kanji>musim</kanji> adalah <vocabulary>musim kemarau</vocabulary>.

乾季 adalah istilah formal yang biasanya digunakan dalam diskusi iklim geografis, terutama untuk wilayah dengan musim hujan dan kemarau yang jelas seperti Asia Tenggara, Afrika, dan Amerika Selatan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Musim kemarau')
    RETURNING id INTO v_5214_musim_kemarau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乾杯', 'kanpai', 29, 57, 'Anda <kanji>mengeringkan</kanji> <kanji>cangkir cairan</kanji> Anda setelah mengucapkan <vocabulary>Kanpai</vocabulary>, atau <vocabulary>cheers</vocabulary>!

乾杯 berarti <vocabulary>bersulang</vocabulary>dengan minuman Anda dan merupakan cara Anda mengucapkan "Cheers!" dalam bahasa Jepang. Secara harfiah berarti "keringkan cangkirmu" (minumlah), jadi secara tradisional, orang akan menghabiskan minumannya setelah mengucapkannya. Namun saat ini jauh lebih santai—kebanyakan orang hanya menyesap 乾杯.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Hati-hati dengan はい yang berubah menjadi ぱい!', 'Kanpai, Bersulang, Roti panggang')
    RETURNING id INTO v_5215_kanpai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '促す', 'untuk-mendesak', 29, 58, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendesak</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>mendesak</vocabulary>.

促す berarti <vocabulary>mendorong</vocabulary> atau <vocabulary>mendorong</vocabulary> seseorang untuk mengambil tindakan atau melanjutkan sesuatu. Tergantung konteksnya, ini juga bisa berarti <vocabulary>untuk mendorong</vocabulary> pertumbuhan, perkembangan, atau perubahan sesuatu.', 'Seseorang dengan aksen aneh mencoba <vocabulary>mendesak</vocabulary> Anda untuk makan "<reading>Unagah</reading>" (うなが). Orang ini sebenarnya bermaksud "unagi", dan orang ini juga tidak menyadari betapa enaknya unagi (dan mengira dia menipu Anda). Anda bertanya padanya apa itu "Unagah". Silakan dan ucapkan dengan lantang.', 'Untuk Mendesak, Untuk Mendorong, Untuk Meminta, Untuk Mempromosikan')
    RETURNING id INTO v_5216_untuk_mendesak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '催促', 'keinginan', 29, 59, 'Saya sangat bersedia untuk <kanji>mensponsori</kanji> Anda. Saya akan <kanji>mendorong</kanji> Anda untuk melakukan ini sampai Anda melakukannya, sehingga saya akan memberi Anda uang. Ini merupakan <vocabulary>dorongan</vocabulary> yang besar dan <vocabulary>menekan</vocabulary> Anda untuk melakukan hal ini!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keinginan, Tekan Untuk, Tuntutan')
    RETURNING id INTO v_5217_keinginan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '催告', 'melihat', 29, 60, 'Saat Anda <kanji>mensponsori</kanji> sebuah <kanji>pengumuman</kanji>ment, Anda mengizinkan orang yang Anda sponsori untuk membuat semacam <vocabulary>pemberitahuan</vocabulary> untuk semua orang yang ingin mereka hubungi.

催告 merujuk pada tindakan <vocabulary>memberitahukan secara resmi</vocabulary> seseorang dengan <vocabulary>pemberitahuan formal</vocabulary>, mendesak mereka untuk mengambil tindakan dalam jangka waktu tertentu. Ini adalah istilah teknis yang terutama digunakan dalam konteks hukum atau bisnis, seperti mengingatkan seseorang untuk memenuhi kewajiban seperti pembayaran atau kontrak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Melihat, Memberitahukan Secara Resmi, Pemberitahuan Resmi')
    RETURNING id INTO v_5218_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主催', 'tuan-rumah', 29, 61, '<kanji>master</kanji> <kanji>sponsor</kanji> untuk suatu acara adalah tuan rumah yang <vocabulary>menjadi tuan rumah</vocabulary> (dan mungkin mensponsori) acara tersebut. 

主催 adalah istilah formal yang sering digunakan dalam bisnis, acara resmi, atau pertemuan publik. Meskipun dapat berarti sponsorship, hal ini terutama mengacu pada tindakan memimpin dan mengorganisir suatu acara atau kegiatan, serta orang atau kelompok yang menyelenggarakannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tuan rumah, Tuan rumah, Sponsor')
    RETURNING id INTO v_5219_tuan_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '壊す', 'untuk-menghancurkan-sesuatu', 29, 62, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mematahkan</kanji> dan versi vocab verba ini berarti <vocabulary>merusak sesuatu</vocabulary>. 

Andalah yang secara aktif melakukan pelanggaran di sini, jadi selalu ada objek langsung yang terlibat. Anda mengetahui hal ini karena seseorang mencoba <reading>menuntut</reading> (す) Anda atas hal-hal yang telah Anda langgar.', 'Kata ini menggunakan bacaan kun''yomi こわ, yang tidak kamu pelajari dengan kanji. Berikut ini mnemonik untuk membantu Anda:

Saat Anda merasa ingin <vocabulary>merusak sesuatu</vocabulary>, gunakanlah <reading>koa</reading>la (こわ). Bukan, bukan koala sungguhan. Koala keramik yang cantik. Perhatikanlah benda itu hancur di tanah, karena Anda ingin pergi dan menghancurkannya. Kamu brengsek sekali.', 'Untuk Menghancurkan Sesuatu, Untuk Merusak Sesuatu, Untuk Menghancurkan Sesuatu')
    RETURNING id INTO v_5220_untuk_menghancurkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全壊', 'penghancuran-lengkap', 29, 63, 'Ketika <kanji>semua</kanji> dari sesuatu <kanji>rusak</kanji>, setiap bagiannya akan rusak. Ini <vocabulary>kehancuran total</vocabulary>!!!

全壊 adalah istilah formal yang digunakan ketika bangunan atau struktur hancur total akibat bencana seperti gempa bumi, kebakaran, atau kecelakaan. Hal ini sering terlihat dalam laporan berita atau penilaian asuransi untuk menggambarkan <kosakata>kehancuran total</vocabulary> properti.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penghancuran Lengkap, Kehancuran Total')
    RETURNING id INTO v_5221_penghancuran_lengkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '倒壊', 'runtuh', 29, 64, 'Ketika sesuatu <kanji>runtuh</kanji> dan <kanji>rusak</kanji>, itulah saat <vocabulary>runtuh</vocabulary> terjadi. Sesuatu yang runtuh atau <vocabulary>jatuh</vocabulary> mungkin akan mengakibatkan <vocabulary>kehancuran</vocabulary> nya.

倒壊 adalah kata formal yang sering ditemukan dalam berita atau dokumen resmi. Kata ini digunakan untuk menggambarkan keruntuhan bangunan atau struktur, biasanya akibat kekuatan destruktif seperti bencana alam atau pemboman.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Runtuh, Jatuh, Pengrusakan')
    RETURNING id INTO v_5222_runtuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '娘', 'anak-perempuan', 29, 65, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

娘 pada dasarnya berarti <vocabulary>putri</vocabulary> tetapi bisa juga merujuk pada <vocabulary>wanita muda</vocabulary> (seringkali belum menikah). Ini karena bentuk aslinya adalah 産す女 (むすめ), atau "seorang wanita yang melahirkan". Seiring waktu, itu mewakili putri dan remaja putri.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Anak perempuan, Wanita Muda')
    RETURNING id INTO v_5223_anak_perempuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一人娘', 'putri-tunggal', 29, 66, '<kanji>anak perempuan</kanji> yang "sendirian" (一人) adalah anak perempuan yang tidak memiliki saudara perempuan lainnya, menjadikannya <vocabulary>anak perempuan tunggal</vocabulary>.', 'Bacaannya adalah 一人 ditambah 娘 yang dirangkai menjadi satu kata (anak perempuan).', 'Putri Tunggal')
    RETURNING id INTO v_5224_putri_tunggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宗教', 'agama', 29, 67, '<kanji>agama</kanji> <kanji>ajaran</kanji>adalah apa yang membentuk sebuah <vocabulary>agama</vocabulary>. Jika Anda tidak memiliki ajaran agama tersebut, tidak ada seorang pun yang akan mempelajarinya, dan agama tersebut akan berhenti menjadi sebuah agama.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Agama')
    RETURNING id INTO v_5225_agama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宗派', 'sekte', 29, 68, '<kanji>agama</kanji> <kanji>sekte</kanji> kemungkinan besar adalah sekte di dalam agama, tetapi bisa juga disebut dengan <kosakata>sekte</vocabulary> atau <vocabulary>denominasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sekte, Denominasi')
    RETURNING id INTO v_5226_sekte;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '禅宗', 'sekte-zen', 29, 69, '<kanji>zen</kanji> <kanji>agama</kanji> adalah bagian dari agama Buddha. Ini adalah <vocabulary>Sekte Zen</vocabulary> dalam agama Buddha, atau <vocabulary>Zen Buddhism</vocabulary>.

Praktisi 禅宗 mengikuti praktik 禅 (Zen) seperti meditasi dan perhatian penuh untuk mencapai pencerahan. Itu sebabnya disebut 禅宗!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sekte Zen, Buddhisme Zen')
    RETURNING id INTO v_5227_sekte_zen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宴会', 'perjamuan', 29, 70, '<kanji>perjamuan</kanji> <kanji>pertemuan</kanji> adalah saat Anda bertemu bersama untuk <vocabulary>perjamuan</vocabulary> atau <vocabulary>pesta makan malam</vocabulary>.

宴会 mengacu pada pertemuan di mana orang berbagi makanan dan minuman untuk merayakan sesuatu atau memperdalam ikatan sosial mereka. Biasanya tidak digunakan untuk pesta makan malam santai bersama teman, melainkan untuk acara sosial formal atau semi formal yang melibatkan sekelompok besar orang, seperti pesta perpisahan rekan kerja atau pesta liburan di tempat kerja.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perjamuan, Pesta Makan Malam')
    RETURNING id INTO v_5228_perjamuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宴', 'perjamuan', 29, 71, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

宴 adalah kata kuno untuk 宴会. Ini mengacu pada pesta besar dan meriah dalam suasana tradisional, sering kali melibatkan banyak sake dan kenikmatan seni pertunjukan tradisional. Anda mungkin melihatnya digunakan dalam literatur atau lirik lagu untuk mengingatkan kita pada adegan jamuan makan mewah dan megah di masa lampau.', 'Di <vocabulary>banquet</vocabulary> atau <vocabulary>party</vocabulary>, Anda tidak hanya mendapatkan makanan, Anda juga <reading>歌 GE</reading>T (うたげ), yaitu Anda mendapatkan lagu dari seorang penyanyi. Lagipula, hiburan sama pentingnya dengan makanan saat Anda berada di <vocabulary>bacchanal</vocabulary> liar seperti ini!', 'Perjamuan, Berpesta, Bacakanal')
    RETURNING id INTO v_5229_perjamuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不健康', 'tidak-sehat', 29, 72, 'Jika 健康 adalah "kesehatan", maka sesuatu yang <kanji>tidak</kanji> adalah <vocabulary>tidak sehat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu untuk mengetahui 健康 terlebih dahulu.', 'Tidak sehat, Tidak Sehat')
    RETURNING id INTO v_5230_tidak_sehat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緊張', 'gugup', 29, 73, 'Tubuh <kanji>tegang</kanji> Anda mulai <kanji>meregang</kanji> semakin erat seiring <vocabulary>gugup</vocabulary> mengambil alih.

緊張 menggambarkan kegugupan yang Anda rasakan sebelum peristiwa besar atau saat stres. Bisa juga mengacu pada hal-hal lain yang terasa tegang atau tegang, seperti <vocabulary>tension</vocabulary> otot, atau bahkan ketegangan global dan ketegangan hubungan antar negara.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gugup, Ketegangan')
    RETURNING id INTO v_5231_gugup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怒り', 'amarah', 29, 74, 'Kata ini sangat mirip dengan 怒る, bukan? Namun kata ini bukan kata kerja, jadi Anda bisa menganggapnya mengacu pada <vocabulary>marah</vocabulary> atau <vocabulary>wrath</vocabulary> itu sendiri.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Aku mempunyai banyak <vocabulary>marah</vocabulary> karena <reading>Aku membawa (いか) semua barang-barangku sendiri (buku, koper, minuman) dan tak seorang pun mau membawakannya untukku. Ditambah lagi, semakin banyak barang yang kubawa, semakin banyak amarah yang kubawa ke dalam. Ahhh!', 'Amarah, Kemarahan')
    RETURNING id INTO v_5232_amarah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怖い', 'menakutkan', 29, 75, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>menakutkan</kanji>? Ini juga <vocabulary>menakutkan</vocabulary>.

怖い umumnya digunakan dalam bahasa sehari-hari untuk menggambarkan sesuatu yang menakutkan pada tingkat yang lebih langsung atau pribadi.', 'Anda tahu apa yang sebenarnya <vocabulary>menakutkan</vocabulary>, seperti double-shorty (karena kanji dan vocab sama-sama berarti menakutkan)? Bagaimana dengan <reading>cowo</reading>rkers (こわ) Anda. Mereka semua gila, dan Anda tahu itu. Benar-benar gila.', 'Menakutkan')
    RETURNING id INTO v_5233_menakutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恐怖', 'teror', 29, 76, 'Saya <kanji>takut</kanji> akan hal itu. Itu <kanji>menakutkan</kanji>. Itu adalah <vocabulary>teror</vocabulary> murni.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Teror, Takut')
    RETURNING id INTO v_5234_teror;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恐怖症', 'fobi', 29, 77, 'Anda telah mempelajari 恐怖 berarti "teror", dan 〜症 dapat berarti "penyakit". Jadi apa itu penyakit teror? Ya, itu adalah <vocabulary>fobia</vocabulary>.

Dalam bahasa Jepang, 恐怖症 banyak digunakan sebagai akhiran untuk nama fobia tertentu, seperti 高所恐怖症 (acrophobia, atau takut ketinggian). Apakah Anda punya 恐怖症?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Fobi')
    RETURNING id INTO v_5235_fobi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恐ろしい', 'menakutkan', 29, 78, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>ketakutan</kanji>? Saat Anda benar-benar merasa takut, Anda berpikir ada sesuatu yang <vocabulary>mengerikan</vocabulary> atau <vocabulary>menakutkan</vocabulary> atau bahkan <vocabulary>mengerikan</vocabulary>.

恐ろしい dapat menggambarkan sesuatu yang menimbulkan ketakutan atau kekaguman yang mendalam, seringkali melebihi perasaan takut yang normal. Karena dapat digunakan untuk menciptakan suasana dramatis atau intens, Anda mungkin lebih sering menemukan 恐ろしい dalam karya sastra.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Seberapa <kosakata>mengerikan</vocabulary> itu? <reading>Oh jadi</reading> (おそ) menakutkan!', 'Menakutkan, Menakutkan, Mengerikan')
    RETURNING id INTO v_5236_menakutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一杯', 'satu-piala', 29, 79, '<kanji>Satu</kanji> <kanji>cangkir cairan</kanji> sama dengan <vocabulary>satu cangkir</vocabulary>. Ini bisa saja berupa <vocabulary>minuman</vocabulary>, namun jika Anda mengukur tepat satu cangkir, maka gelas tersebut harus <vocabulary>penuh</vocabulary> hingga penuh. Itu <vocabulary>banyak</vocabulary> cairan—jadi hati-hati jangan sampai tumpah!

一杯 terutama mengacu pada jumlah yang mengisi wadah, seperti cangkir, gelas, mangkuk, atau bahkan sendok. Ini juga dapat menggambarkan sesuatu yang "kenyang", seperti perut kenyang atau kapasitas teater (seperti bagaimana cangkir diisi sampai penuh!). Tergantung pada konteksnya, kata ini juga bisa berarti "banyak", karena kepenuhan menyiratkan kelimpahan. Jika menggunakan arti tersebut, Anda juga akan sering melihatnya ditulis dalam huruf kana (いっぱい) saja.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ingatlah bahwa 一 menjadi いっ, dan 杯 menjadi ぱい.', 'Satu Piala, Minuman, Penuh, Banyak')
    RETURNING id INTO v_5237_satu_piala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二杯', 'dua-piala', 29, 80, '<kanji>Dua</kanji> <kanji>cangkir cairan</kanji> sama dengan <vocabulary>dua cangkir</vocabulary> atau <vocabulary>dua minuman</vocabulary>. Ini juga bisa berarti <vocabulary>dua gelas</vocabulary>, tergantung pada isi minuman Anda!

〜杯 adalah penghitung yang digunakan untuk menghitung jumlah isi suatu wadah, seperti cangkir, gelas, mangkuk, atau bahkan sendok! Isinya tidak harus cair — Anda bisa menggunakan 二杯 untuk dua mangkuk nasi atau dua sendok gula juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dua Piala, Dua Minuman, Dua Gelas')
    RETURNING id INTO v_5238_dua_piala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三杯', 'tiga-piala', 29, 81, '<kanji>Tiga</kanji> <kanji>cangkir cairan</kanji> sama dengan <vocabulary>tiga cangkir</vocabulary> atau <vocabulary>tiga minuman</vocabulary>. Ini juga bisa berarti <vocabulary>tiga gelas</vocabulary> tergantung pada isi minuman Anda!

〜杯 adalah penghitung yang digunakan untuk menghitung jumlah isi suatu wadah, seperti cangkir, gelas, mangkuk, atau bahkan sendok! Isinya nggak harus cair, kamu bisa pakai 三杯 untuk tiga mangkok nasi atau tiga sendok gula juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Hati-hati dengan 杯, yang menjadi ばい berkat teman lama kita, rendaku.', 'Tiga Piala, Tiga Minuman, Tiga Gelas')
    RETURNING id INTO v_5239_tiga_piala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '板', 'papan', 29, 82, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

板 umumnya mengacu pada sesuatu yang tipis, datar, dan padat, seperti papan, papan, lempengan, atau piring. Dalam beberapa konteks, ini juga bisa merujuk pada papan pasar saham yang menampilkan harga perdagangan, atau papan buletin yang digunakan untuk memposting pesan di forum online.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Siapa yang dapat memanfaatkan berbagai <vocabulary>board</vocabulary> dengan baik? Seorang yang rajin <membaca>pemakan</reading> (いた)! Jika Anda seorang yang rajin makan, Anda memerlukan banyak talenan untuk menyiapkan semua makanan lezat yang akan Anda santap. Hal ini membuat papan dan pemakan menjadi pasangan yang sempurna.', 'Papan, Papan, Lempeng, Piring')
    RETURNING id INTO v_5240_papan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '看板', 'papan-nama', 29, 83, '<kanji>pengawasan</kanji> <kanji>papan</kanji> adalah papan yang dipasang dan mengawasi segalanya. Papan macam apa yang mengawasi semuanya dari atas? Salah satu yang paling banyak terlihat, mungkin adalah <vocabulary>papan nama</vocabulary> atau <vocabulary>billboard</vocabulary>.

看板 biasanya mengacu pada tanda fisik, seperti <kosakata>papan toko</vocabulary> atau papan reklame. Namun bisa juga berarti simbol atau wajah suatu bisnis, seperti dalam 看板メニュー (hidangan khas) atau 看板娘 (gadis poster atau pegawai wanita yang menarik pelanggan).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Papan nama, Papan iklan, Tanda Toko')
    RETURNING id INTO v_5241_papan_nama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見極める', 'untuk-mencapai-dasarnya', 29, 84, '極める berarti "melakukan hal yang ekstrem". Jika Anda mengambil tindakan <kanji>melihat</kanji> sesuatu secara ekstrem, Anda akan <vocabulary>memahami</vocabulary> apa pun itu. Anda akan mampu <vocabulary>mengidentifikasi sesuatu</vocabulary>, seperti kebenaran.

見極める terutama melibatkan pemeriksaan dan penegasan yang cermat terhadap aspek mendasar atau kebenaran suatu masalah. Hal ini menekankan ketelitian dan upaya yang diperlukan untuk membuat keputusan atau penilaian yang tepat, terutama ketika situasinya kompleks atau sulit untuk dipahami.', 'Bacaannya berasal dari kata 見る dan 極める yang disatukan. Pahami kata ini dan pelajarilah.', 'Untuk Mencapai Dasarnya, Untuk Mengidentifikasi Sesuatu')
    RETURNING id INTO v_5242_untuk_mencapai_dasarnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '極めて', 'sangat', 29, 85, '極める berarti "melakukan hal yang ekstrem". Jadi, 極めて adalah sesuatu yang serupa. Ini digunakan untuk merujuk pada sesuatu yang <vocabulary>sangat</vocabulary> _______.', 'Bacaannya berasal dari 極める.', 'Sangat')
    RETURNING id INTO v_5243_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欧米', 'eropa-dan-amerika', 29, 86, 'Anda memiliki <kanji>Eropa</kanji> dan <kanji>Amerika</kanji>. Kata ini mengacu pada <vocabulary>Eropa dan Amerika</vocabulary>. 

Saat orang menggunakan 欧米 di Jepang, biasanya yang mereka maksud adalah negara-negara Barat secara umum (<vocabulary>Barat</vocabulary>), termasuk Amerika Utara dan Eropa Barat. Anda akan sering melihatnya dalam laporan berita yang berkaitan dengan negara-negara Barat atau dalam topik yang membandingkan budaya, adat istiadat, atau tren Jepang dan Barat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Eropa dan Amerika, Eropa dan Amerika, Barat')
    RETURNING id INTO v_5244_eropa_dan_amerika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中欧', 'eropa-tengah', 29, 87, 'Bagian <kanji>tengah</kanji> dari <kanji>Eropa</kanji> adalah <vocabulary>Eropa Tengah</vocabulary>, di mana pun itu berada.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Eropa Tengah')
    RETURNING id INTO v_5245_eropa_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日欧', 'jepang-dan-eropa', 29, 88, '日 mengacu pada "Jepang" (Ini adalah 日 dari 日本). Jadi, Anda memiliki Jepang dan <kanji>Eropa</kanji>, yang menjadikannya <vocabulary>Jepang dan Eropa</vocabulary> atau <vocabulary>Jepang-Eropa</vocabulary>.

日欧 adalah kata yang cukup formal yang biasa ditemukan di surat kabar atau laporan resmi, yang sering digunakan untuk singkatnya ketika mengacu pada Jepang dan Eropa secara bersamaan, seperti dalam 日欧関係 (hubungan Jepang-Eropa).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jepang dan Eropa, Jepang-Eropa')
    RETURNING id INTO v_5246_jepang_dan_eropa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '江戸', 'edo', 29, 89, '<kanji>teluk</kanji> <kanji>pintu</kanji> tidak seperti yang Anda bayangkan, ini mengacu pada <vocabulary>Edo</vocabulary>, yang merupakan nama Tokyo pada masa itu. Anda masih akan melihat referensinya di mana-mana, jadi ada baiknya untuk mempelajarinya. Anda juga bisa menelepon <vocabulary>Tokyo</vocabulary> ini jika Anda mau, tapi saya lebih suka jika Anda menjawab "Edo".', 'Bacaannya adalah yang Anda pelajari dengan kanji. Hati-hati dengan rendaku di 戸, yang mengubah bacaannya menjadi ど. Tentu saja akan mudah jika Anda sudah mengetahui kata <vocabulary>Edo</vocabulary>!', 'Edo, Tokyo')
    RETURNING id INTO v_5247_edo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入り江', 'masuk', 29, 90, 'Saat Anda <kanji>memasuki</kanji> sebuah <kanji>inlet</kanji>, Anda telah masuk ke dalam <vocabulary>inlet</vocabulary>. Itu juga tempat air masuk ke dalam saluran masuk (memasuki saluran masuk dari laut, atau apa pun), jadi itu cara lain untuk memikirkannya.', 'Untuk bacaan ini, bayangkan saja ini sebagai 入り dengan 江 ditekan di bagian akhir! Perhatikan juga bahwa ini biasanya ditulis sebagai 入江, tetapi bacaannya tetap sama!', 'Masuk, Teluk kecil')
    RETURNING id INTO v_5248_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '添える', 'untuk-menambahkan-sesuatu-ke', 29, 91, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Saat <kanji>menambahkan</kanji> sesuatu, pada dasarnya Anda ingin <vocabulary>menambahkan sesuatu ke</vocabulary> sesuatu, atau <vocabulary>memasukkan sesuatu</vocabulary> ke dalamnya. 

添える berarti menambahkan sesuatu di samping hal utama, sering kali sebagai sentuhan bijaksana untuk melengkapi atau mendukungnya. Misalnya, Anda dapat mengucapkan 添える saat menyertakan surat berisi hadiah untuk menambahkan sentuhan pribadi, atau saat menghiasi hidangan dengan peterseli untuk mempercantik tampilannya. Ini juga digunakan ketika Anda merasa ingin menambahkan tangan kedua untuk memegang mangkuk dengan hati-hati.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Salah satu cara <vocabulary>untuk menambahkan sesuatu ke</vocabulary> sesuatu yang lain adalah dengan <reading>menjahit</reading> (そ) saja!', 'Untuk Menambahkan Sesuatu Ke, Untuk Memasukkan Sesuatu, Untuk Menemani, Untuk Menghias')
    RETURNING id INTO v_5249_untuk_menambahkan_sesuatu_ke;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '添付', 'lampiran', 29, 92, '<kanji>Tambahkan</kanji> dan <kanji>lampirkan</kanji> dokumen ini ke email Anda. Itu disebut <vocabulary>attachment</vocabulary>.

添付 mengacu pada <em>tindakan</em> <vocabulary>melampirkan</vocabulary> sesuatu tambahan pada dokumen lain, seperti melampirkan file ke email atau melampirkan peta ke undangan.', 'Pembacaan 添 adalah apa yang Anda harapkan. Pembacaan 付 adalah pembacaan on''yomi ふ, yang telah Anda pelajari dengan 付近. Namun untuk kata ini menjadi ぷ dari peri rendaku. Bayangkan saja sebuah <vocabulary>attachment</vocabulary> yang bukan berupa dokumen atau sesuatu, Anda mendapatkan lampiran <reading>poo</reading>p (ぷ). Sungguh keterikatan yang kotor. Temanmu yang suka mengirim lampiran kotoran itu bodoh.', 'Lampiran, Melampirkan')
    RETURNING id INTO v_5250_lampiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '強烈', 'sangat-kuat', 29, 93, 'Hal-hal yang <kanji>kuat</kanji> dan <kanji>intens</kanji> adalah <vocabulary>sangat kuat</vocabulary> dan <vocabulary>intens</vocabulary>.

強烈 mendeskripsikan sesuatu yang begitu kuat atau intens sehingga meninggalkan kesan mendalam dan sering kali <vocabulary>mengejutkan</vocabulary> atau <vocabulary>mencolok</vocabulary>. Ini bisa merujuk pada warna-warna yang sangat cerah, kilatan cahaya yang menyilaukan, panas yang ekstrim, atau komentar yang sangat berani dan berdampak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sangat Kuat, Intens, Mengejutkan, Menyolok')
    RETURNING id INTO v_5251_sangat_kuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '猛烈', 'garang', 29, 94, 'Jika Anda <kanji>galak</kanji> dan <kanji>kejam</kanji> maka Anda <vocabulary>galak</vocabulary> dan <vocabulary>kekerasan</vocabulary>.

猛烈 digunakan untuk menggambarkan hal-hal <kosakata>intens</vocabulary>, seperti badai dahsyat, atau tindakan yang dilakukan dengan intensitas tinggi, seperti bekerja sekuat tenaga. Nadanya yang kuat bisa terasa sedikit lucu dalam penggunaan biasa, sehingga orang juga menggunakannya untuk bercanda untuk membesar-besarkan hal-hal seperti betapa laparnya perasaan mereka.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Garang, Brutal, Intens')
    RETURNING id INTO v_5252_garang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '熱烈', 'kuat', 29, 95, '<kanji>demam</kanji> Anda berubah menjadi <kanji>keras</kanji> saat Anda mengungkapkan perasaan <vocabulary>bersemangat</vocabulary> Anda.

熱烈 adalah kata yang relatif formal yang menggambarkan seseorang yang sungguh-sungguh asyik dengan sesuatu atau seseorang dan menunjukkan perilaku <vocabulary>bersemangat</vocabulary> atau <vocabulary>bergairah</vocabulary>, seperti 熱烈に応援する (mendukung dengan sungguh-sungguh).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kuat, Bersemangat, Penuh semangat, Penuh semangat')
    RETURNING id INTO v_5253_kuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '猛〜', 'garang', 29, 96, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Anda dapat menggunakan kata lain untuk mengatakan bahwa itu adalah "<vocabulary>Fierce</vocabulary> ____" atau "<vocabulary>Intense</vocabulary> _____," atau sejenisnya. Jika Anda melihat ini, Anda tahu bahwa ada sesuatu yang sedang dilakukan dengan sangat ganas atau intens.

猛 digunakan dalam kata majemuk untuk menekankan keganasan atau intensitas, seperti 猛暑 (panas yang hebat) atau 猛勉強 (belajar intensif). Kata ini juga dapat digunakan dalam ekspresi seperti 猛アプローチ (tanpa henti mengejar seseorang secara romantis — sebuah "pendekatan" yang sengit). Dalam penggunaan biasa seperti ini, nada yang kuat sering kali sengaja dibuat konyol atau lucu.', 'Pembacaannya sama dengan apa yang Anda pelajari dengan kanji, mungkin karena itu melekat pada sesuatu yang menjadikannya jukugo dan semacamnya.', 'Garang, Intens')
    RETURNING id INTO v_5254_garang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '略す', 'untuk-menyingkat', 29, 97, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu bahwa kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>singkatan</kanji>, sehingga versi kosakata verbanya adalah <vocabulary>menyingkat</vocabulary> atau <vocabulary>mempersingkat</vocabulary>. Dalam beberapa kasus, ini juga bisa berarti <vocabulary>menghilangkan</vocabulary> sesuatu demi kesederhanaan.', 'Anehnya, bacaannya sama dengan bacaan yang Anda pelajari dengan kanji. <membaca>りゃく</membaca>す.', 'Untuk menyingkat, Untuk mempersingkat, Untuk Menghilangkan')
    RETURNING id INTO v_5255_untuk_menyingkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '省略', 'menghilangkan', 29, 98, '<kanji>Simpan</kanji> huruf-huruf itu dengan <kanji>singkatan</kanji> dan sekarang Anda <vocabulary>menghilangkan</vocabulary> semua hal yang tidak perlu! 

省略 adalah kata yang relatif formal yang digunakan ketika Anda dengan sengaja <vocabulary>meninggalkan</vocabulary> sesuatu demi singkatnya atau sederhananya, seperti penjelasan yang tidak diperlukan atau sapaan yang panjang lebar. Terkadang juga merujuk pada <vocabulary>singkatan</vocabulary> dari sebuah kata atau frasa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menghilangkan, Meninggalkan, Singkatan')
    RETURNING id INTO v_5256_menghilangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '略語', 'singkatan', 29, 99, '<kanji>Singkatan</kanji> dalam <kanji>bahasa</kanji> adalah <vocabulary>singkatan</vocabulary> atau <vocabulary>akronim</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Singkatan, Akronim')
    RETURNING id INTO v_5257_singkatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '略図', 'diagram-kasar', 29, 100, 'Versi <kanji>singkatan</kanji> dari <kanji>diagram</kanji> tidak mencakup semua detailnya. Ini lebih seperti <vocabulary>diagram kasar</vocabulary> yang hanya menunjukkan hal-hal penting.

Meskipun 略図 dapat digunakan untuk diagram apa pun yang disederhanakan, 略図 paling sering mengacu pada <vocabulary>peta kasar</vocabulary> yang memberikan gambaran dasar suatu area.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Diagram Kasar, Peta Kasar')
    RETURNING id INTO v_5258_diagram_kasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大略', 'garis-besar-luas', 29, 101, '<kanji>besar</kanji> <kanji>singkatan</kanji> adalah tempat Anda mengambil semuanya dan menyingkatnya untuk menampilkan gambaran besarnya. Singkatan ini adalah <vocabulary>garis besar</vocabulary> dari sesuatu yang lebih besar.

大略 adalah kata yang relatif formal yang biasa ditemukan dalam tulisan. Umumnya mengacu pada <vocabulary>outline</vocabulary> atau <vocabulary>ikhtisar</vocabulary> yang lebih luas dan kasar, bukan ringkasan yang mendetail.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Garis Besar Luas, Garis besar, Ringkasan')
    RETURNING id INTO v_5259_garis_besar_luas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '痛み', 'sakit', 29, 102, '痛い adalah "menyakitkan." Ini adalah versi kata bendanya, ini adalah <vocabulary>a pain</vocabulary> atau <vocabulary>pain</vocabulary>.', 'Bacaannya sama dengan 痛い. Tidak ada rasa sakit di sini.', 'Sakit, Nyeri')
    RETURNING id INTO v_5260_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '痛み止め', 'penawar-rasa-sakit', 29, 103, '痛み adalah "sakit." 止める berarti "berhenti". Apa yang menghentikan rasa sakit jika Anda menggunakannya? Bagaimana dengan <vocabulary>obat pereda nyeri</vocabulary>.', 'Bacaannya adalah 痛み dan 止める yang dirangkai menjadi satu kata. Tidak terlalu menyakitkan, bukan? Ingat saja rendaku di ど.', 'Penawar rasa sakit')
    RETURNING id INTO v_5261_penawar_rasa_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眠る', 'untuk-tidur', 29, 104, '眠い adalah "mengantuk." Versi kata kerjanya adalah <vocabulary>tidur</vocabulary>, atau <vocabulary>tertidur</vocabulary>. <i>menguap</i>

Meskipun 寝る bisa berarti berbaring atau pergi tidur (tidak hanya tidur), 眠る hanya mengacu pada tertidur atau berada dalam kondisi tidur.', 'Bacaannya berasal dari 眠い.', 'Untuk Tidur, Untuk Tertidur')
    RETURNING id INTO v_5263_untuk_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眠り薬', 'ramuan-tidur', 29, 105, 'Semacam <kanji>tidur</kanji>dan <kanji>obat</kanji>? Itu adalah <vocabulary>ramuan tidur</vocabulary>!

眠り薬 sering ditemukan dalam konteks bercerita untuk merujuk pada semacam ramuan pemicu tidur. Tapi itu juga bisa digunakan sebagai istilah yang kurang medis dan lebih bersifat sehari-hari untuk obat tidur yang sebenarnya.', 'Bacaannya 眠い plus 薬 dijadikan satu... zz zzzzzZZZzz
Ingatlah bahwa くすり berubah menjadi ぐすり di sini karena rendaku.', 'Ramuan Tidur, Obat Tidur')
    RETURNING id INTO v_5264_ramuan_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '積もる', 'untuk-akumulasi', 29, 106, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengumpulkan</kanji> dan versi kata kerjanya adalah <vocabulary>menumpuk</vocabulary>.

積もる digunakan untuk mendeskripsikan sesuatu yang terus menerus terkumpul atau menumpuk seiring berjalannya waktu, seperti salju di tanah atau debu di dalam ruangan. Ini juga dapat digunakan dalam cara yang lebih emosional, seperti ketika perasaan atau pikiran diam-diam menumpuk dalam diri seseorang.', 'Jika sesuatu terakumulasi, Anda dapat memulai dengan satu, tetapi Anda memerlukan setidaknya dua</reading> (つ) hal untuk mengatakan bahwa itu telah terakumulasi. Jika tidak, maka tidak ada yang terakumulasi sama sekali.', 'Untuk Akumulasi, Untuk Ditumpuk')
    RETURNING id INTO v_5266_untuk_akumulasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '面積', 'daerah', 29, 107, '<kanji>permukaan</kanji> yang <kanji>terakumulasi</kanji> menjadi satu area adalah <vocabulary>area</vocabulary> tertentu. Ini ada hubungannya dengan matematika. Saat Anda menjumlahkan semua permukaan dengan mengumpulkannya ke dalam satu perhitungan, Anda mendapatkan luasnya sendiri!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Daerah')
    RETURNING id INTO v_5267_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '体積', 'volume', 29, 108, 'Lihat berapa banyak cairan yang <kanji>tubuh</kanji> ini dapat <kanji>terakumulasi</kanji> untuk menghitung <vocabulary>volume</vocabulary>-nya. Bisa berupa badan cangkir, badan ember, atau badan badan. Apapun itu, akumulasi tubuh mewakili volumenya. (Tahukah Anda, berapa banyak ruang yang dibutuhkan. Bukankah kelas matematika menyenangkan?)', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Volume')
    RETURNING id INTO v_5268_volume;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '検索', 'pencarian', 29, 109, 'Anda <kanji>memeriksa</kanji> lalu <kanji>mencari</kanji>. Ini adalah langkah-langkah yang Anda ambil untuk melakukan semacam <vocabulary>lookup</vocabulary>. Atau, seperti yang mungkin terjadi di zaman modern, lakukan <vocabulary>pencarian di internet</vocabulary>.

検索 awalnya mengacu pada mencari informasi di buku atau menggunakan indeks dan kartu referensi, seperti di perpustakaan. Saat ini hampir selalu digunakan untuk pencarian digital dan online.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pencarian, Pencarian Internet')
    RETURNING id INTO v_5269_pencarian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '索引', 'indeks', 29, 110, 'Anda <kanji>menelusuri</kanji> lalu <kanji>menarik</kanji> item dari <vocabulary>indeks</vocabulary> — Anda tahu, daftar kata kunci itu dalam urutan abjad di akhir buku nonfiksi. Atau dalam urutan 五十音順, jika Anda cukup suka membaca bahasa Jepang!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Bayangkan saja bagian pertama dari kata <reading>di</reading>dex (いん). Di mana Anda mencari? Dalam indeks.', 'Indeks')
    RETURNING id INTO v_5270_indeks;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緊急', 'mendesak', 29, 111, 'Segalanya <kanji>tegang</kanji> dan kami harus <kanji>cepat</kanji>! Ini <vocabulary>mendesak</vocabulary> <vocabulary>darurat</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mendesak, Keadaan darurat')
    RETURNING id INTO v_5271_mendesak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '締切', 'tenggat-waktu', 29, 112, 'Segalanya 締める (mengencangkan), dan akhirnya 切る (terputus), artinya Anda telah mencapai <vocabulary>tenggat waktu</vocabulary>! Anda dapat mengasosiasikan hal ini dengan perasaan sesak di dada saat Anda mendekati <vocabulary>tanggal jatuh tempo</vocabulary> untuk sesuatu.

Perhatikan bahwa Anda akan sering menemukan ini ditulis dengan okurigana seperti 締め切り juga. Anda bahkan mungkin melihatnya dengan versi sederhana dari 締 kanji yang ditulis 〆切, yang relatif umum dalam tulisan tangan!', 'Pembacaannya adalah bentuk dasar dari kedua kata kerja tersebut, jadi 締め (しめ) dan 切り (きり), disatukan!', 'Tenggat waktu, Tenggat waktu')
    RETURNING id INTO v_5272_tenggat_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '締まる', 'untuk-mengencangkan', 29, 113, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengencangkan</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to mengencangkan</vocabulary>.', 'Apa yang dapat Anda lakukan jika Anda ingin sesuatu <vocabulary>diperketat</vocabulary> atau <vocabulary>menjadi ketat</vocabulary>? Kamu harus memeluk <reading>shee</reading>p (し) kamu erat-erat sampai...

Domba itu mengencang menjadi bola kecil. Imut-imut!', 'Untuk Mengencangkan, Menjadi Ketat, Menjadi Kencang')
    RETURNING id INTO v_5273_untuk_mengencangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大臣', 'menteri', 29, 114, '<kanji>besar</kanji> <kanji>pelayan</kanji> adalah pelayan yang sangat penting — Anda tahu, seseorang yang melayani raja atau pemimpin politik lainnya. Apa yang kita sebut sebagai pelayan besar dan sombong yang berjingkrak-jingkrak melakukan pekerjaan untuk pemimpinnya? <vocabulary>menteri</vocabulary>.

大臣 mengacu pada pejabat tinggi pemerintah yang mengawasi kementerian atau departemen, dan dapat diterjemahkan dengan berbagai cara tergantung pada negara dan sistem politiknya, seperti <vocabulary>menteri kabinet</vocabulary>, <vocabulary>menteri negara</vocabulary>, atau <vocabulary>sekretaris negara</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menteri, Menteri Kabinet, Menteri Negara, Menteri luar negeri')
    RETURNING id INTO v_5274_menteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '航法', 'navigasi', 29, 115, '<kanji>navigasi</kanji> <kanji>Metode</kanji> adalah metode yang digunakan untuk <vocabulary>navigasi</vocabulary>.

航法 adalah istilah teknis untuk navigasi, yang secara khusus mengacu pada teknik dan metode yang digunakan untuk memandu kapal, pesawat terbang, atau pesawat ruang angkasa dari satu tempat ke tempat lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Navigasi')
    RETURNING id INTO v_5275_navigasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '航空', 'penerbangan', 29, 116, '<kanji>Navigasi</kanji> di <kanji>langit</kanji> adalah <vocabulary>penerbangan</vocabulary>. Vroom vroom, langit terbang!

航空 sendiri mengacu pada penerbangan, tetapi Anda biasanya melihatnya dalam kata majemuk seperti 航空機 (pesawat) dan 航空会社 (perusahaan penerbangan).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penerbangan')
    RETURNING id INTO v_5276_penerbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直航', 'penerbangan-tanpa-henti', 29, 117, 'Ingat bagaimana 直行 adalah "nonstop"? Ya, dengan 直航 sama saja, tapi hanya digunakan untuk penerbangan dan perjalanan perahu, menjadikannya <vocabulary>penerbangan nonstop</vocabulary> atau <vocabulary>pelayaran langsung</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penerbangan Tanpa Henti, Pelayaran Langsung')
    RETURNING id INTO v_5277_penerbangan_tanpa_henti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '商店街', 'distrik-perbelanjaan', 29, 118, 'Jika ada <kanji>merchandise</kanji> <kanji>shop</kanji> yang memenuhi <kanji>jalanan</kanji>, maka Anda pasti pernah berjalan-jalan ke <vocabulary>distrik perbelanjaan</vocabulary>. Semoga Anda ingat untuk membawa dompet Anda!

商店街 umumnya mengacu pada jalan atau area ramah pejalan kaki dengan banyak toko lokal dan usaha kecil. Banyak 商店街 yang ditutupi dengan atap, sehingga menjadi <vocabulary>shopping arcade</vocabulary>s.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Distrik Perbelanjaan, Arena Perbelanjaan, Jalan Perbelanjaan')
    RETURNING id INTO v_5278_distrik_perbelanjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '診る', 'untuk-memeriksa-seorang-pasien', 29, 119, 'Untuk <kanji>mendiagnosis</kanji> seorang pasien, Anda harus pergi ke <vocabulary>memeriksa pasien</vocabulary> terlebih dahulu. Ketika Anda memeriksanya, Anda tahu apa yang salah dengan mereka dan kemudian Anda dapat mendiagnosisnya, itulah sebabnya kata kerja ini adalah <vocabulary>to check</vocabulary>.', 'Pembacaannya sama dengan 見る yang harus dilakukan saat memeriksa pasien. Jadi, Anda melihat dan melihat semua yang Anda bisa tentang pasien saat Anda memeriksanya, menjadikan bacaan ini <reading>み</reading>る juga.', 'Untuk Memeriksa Seorang Pasien, Untuk Memeriksa')
    RETURNING id INTO v_5280_untuk_memeriksa_seorang_pasien;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '診察', 'pemeriksaan-kesehatan', 29, 120, 'Saya akan <kanji>mendiagnosis</kanji> Anda dengan membuat <kanji>tebakan</kanji> yang tepat selama <vocabulary>pemeriksaan medis</vocabulary> ini. 

診察 adalah apa yang dilakukan dokter ketika mereka memeriksa Anda — <vocabulary>pemeriksaan medis</vocabulary> atau <vocabulary>konsultasi medis</vocabulary>. Ingatlah bahwa ini tidak merujuk pada tes medis spesifik yang mungkin Anda jalani untuk membantu dokter mendiagnosis Anda. (Untuk itu, Anda akan menggunakan 検査.)', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemeriksaan Kesehatan, Pemeriksaan Kesehatan, Konsultasi Medis')
    RETURNING id INTO v_5281_pemeriksaan_kesehatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '詰める', 'untuk-memasukkan', 29, 121, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>diisi</kanji>, kata ini berarti <vocabulary>to stuff in</vocabulary>, seperti Anda sedang mengisinya. Anda mengetahui hal ini karena Anda adalah operator <reading>mail</reading> (める), dan Anda selalu harus memasukkan surat ke dalam kotak surat orang yang penuh sesak. Mengapa orang-orang ini tidak memeriksa email mereka lebih sering? Sulit untuk mencoba menjejalkan semua email sampah ini!

詰める mengacu pada memasukkan sesuatu dengan rapat ke dalam ruang yang tersedia, seperti menjejalkan pakaian ke dalam koper, memasukkan selai ke dalam toples, atau bahkan berlari untuk memberi ruang, saat Anda memaksakan diri ke dalam ruang yang lebih sempit.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari membaca itu dengan kanji, jadi Anda seharusnya tidak mengalami masalah di sini.', 'Untuk Memasukkan, Untuk menjejalkan, Untuk berkemas')
    RETURNING id INTO v_5282_untuk_memasukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '請求', 'meminta', 29, 122, 'Anda <kanji>meminta</kanji> lalu <kanji>meminta</kanji> lagi… Ya, ini terdengar seperti <vocabulary>permintaan</vocabulary> bagi saya.

請求 bukan sekadar permintaan biasa — ini digunakan saat meminta sesuatu secara resmi dari pihak lain. Ini sering kali melibatkan permintaan pembayaran (seperti <vocabulary>biaya</vocabulary>), namun bisa juga merujuk pada permintaan hal-hal seperti formulir lamaran atau materi informasi. Kata ini bahkan bisa merujuk pada jenis <vocabulary>klaim</vocabulary> yang Anda ajukan ke pengadilan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Meminta, Mengenakan biaya, Mengeklaim')
    RETURNING id INTO v_5285_meminta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '請ける', 'untuk-mengambil', 29, 123, 'Seseorang <kanji>meminta</kanji> sesuatu, dan Andalah yang <vocabulary>menerima</vocabulary> permintaan mereka. Wow, betapa baiknya Anda <vocabulary>menerima</vocabulary> permintaan itu!

請ける adalah kata formal yang sering digunakan dalam konteks bisnis untuk menggambarkan seseorang yang bersedia menerima pekerjaan, tugas, atau permintaan. Misalnya, Anda mungkin menggunakan 請ける saat mengerjakan proyek baru atau menerima pesanan pelanggan.', 'Apa kata lain dari "menerima" atau "menerima"? Bagaimana dengan 受ける? Mereka berbagi bacaan!', 'Untuk Mengambil, Untuk Menerima, Untuk Melakukan')
    RETURNING id INTO v_5288_untuk_mengambil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貸し〜', 'persewaan', 29, 124, 'Meminjamkan atau menyewakan adalah 貸す. Ini adalah versi kata benda yang digunakan sebagai awalan. Itu adalah sesuatu yang telah disewa, sebuah "<vocabulary>rental</vocabulary> ____," seperti 貸しビル (rental office building) atau 貸しボート (rental boat).', 'Bacaannya sama dengan 貸す.', 'Persewaan')
    RETURNING id INTO v_5289_persewaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '道に迷う', 'tersesat', 29, 125, 'Ingat 迷う? Artinya "tersesat". Jika Anda tersesat di <kanji>jalan</kanji>, Anda tetap tersesat, berkeliaran mencari belokan yang benar. Kata ini berarti <vocabulary>hilang</vocabulary> atau <vocabulary>tersesat</vocabulary>.', 'Bacaannya berasal dari kata 道 dan 迷う.', 'Tersesat, Tersesat')
    RETURNING id INTO v_5290_tersesat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '閣僚', 'menteri-kabinet', 29, 126, '<kanji>kabinet</kanji> <kanji>rekan</kanji> adalah <vocabulary>menteri kabinet</vocabulary> atau <vocabulary>sekretaris kabinet</vocabulary>. Mereka adalah orang-orang di Kabinet yang semuanya merupakan rekan satu sama lain, sehingga menjadikan mereka <vocabulary>anggota kabinet</vocabulary>. Tergantung pada negaranya, mereka juga disebut menteri atau sekretaris.

閣僚 adalah istilah formal yang mengacu pada kelompok kolektif pejabat tinggi dalam sebuah kabinet, namun terkadang bisa merujuk pada seorang anggota kabinet juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menteri Kabinet, Sekretaris Kabinet, Anggota Kabinet')
    RETURNING id INTO v_5291_menteri_kabinet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '閣議', 'rapat-kabinet', 29, 127, 'Ketika <kanji>kabinet</kanji> bertemu untuk <kanji>musyawarah</kanji> mereka mengadakan <vocabulary>rapat kabinet</vocabulary>. Sangat pemerintahan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rapat Kabinet')
    RETURNING id INTO v_5292_rapat_kabinet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '英雄', 'pahlawan', 29, 128, 'Anda telah mempelajari 英 artinya "Inggris", namun bisa juga berarti <kanji>unggul</kanji>. Jadi orang seperti apa yang unggul dalam <kanji>berani</kanji>? <vocabulary>pahlawan</vocabulary>!

英雄 adalah kata yang relatif formal yang sering digunakan untuk menggambarkan pahlawan sejarah atau legendaris, seperti William Wallace atau Raja Arthur. Dalam konteks yang lebih santai, seperti ketika berbicara tentang pahlawan super atau menyebut ayahmu sebagai pahlawanmu, ヒーロー lebih umum digunakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pahlawan')
    RETURNING id INTO v_5293_pahlawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '韓国', 'korea-selatan', 29, 129, '<kanji>Korea</kanji> <kanji>Negara</kanji> adalah <vocabulary>Korea</vocabulary>, tentu saja... yah, <vocabulary>Korea Selatan</vocabulary> itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Korea Selatan, Korea')
    RETURNING id INTO v_5294_korea_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日韓', 'jepang-dan-korea-selatan', 29, 130, 'Ambil 日 dari 日本 (Jepang) dan 韓 dari 韓国 (Korea), dan satukan keduanya untuk mendapatkan singkatan <vocabulary>Japan and South Korea</vocabulary>.

日韓 agak formal, jadi Anda biasanya akan melihatnya di surat kabar atau laporan yang mengacu pada Jepang dan Korea Selatan secara bersamaan. Pikirkan hubungan internasional dan pertandingan sepak bola.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jepang dan Korea Selatan, Jepang dan Korea')
    RETURNING id INTO v_5295_jepang_dan_korea_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '好奇心', 'keingintahuan', 29, 131, 'Anda <kanji>menyukainya</kanji> karena memberikan perasaan <kanji>aneh</kanji> di <kanji>hati</kanji> Anda. Anda tidak begitu tahu apa yang Anda sukai, tapi itu karena <vocabulary>rasa ingin tahu</vocabulary> yang Anda miliki.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keingintahuan')
    RETURNING id INTO v_5305_keingintahuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奇数', 'nomor-ganjil', 29, 132, '<kanji>Ganjil</kanji> <kanji>angka</kanji> adalah <vocabulary>angka ganjil</vocabulary> (seperti pada 1, 3, 5, 7, meskipun agak aneh juga).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nomor Ganjil')
    RETURNING id INTO v_5306_nomor_ganjil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奇妙', 'aneh', 29, 133, 'Itu sangat <kanji>aneh</kanji> dan <kanji>aneh</kanji>, menjadikannya <vocabulary>aneh</vocabulary> dan <vocabulary>aneh</vocabulary>.

奇妙 sering digunakan dalam literatur untuk mendeskripsikan sesuatu yang terasa <vocabulary>aneh</vocabulary> atau <vocabulary>aneh</vocabulary> yang luar biasa. Ini menggambarkan sesuatu yang kualitasnya hampir seperti dunia lain, memicu rasa ingin tahu karena sangat aneh.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Aneh, Aneh, Aneh, Aneh')
    RETURNING id INTO v_5307_aneh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '織物', 'tekstil', 29, 134, 'Jika Anda <kanji>menenun</kanji> suatu <kanji>sesuatu</kanji>, Anda mendapatkan <vocabulary>tekstil</vocabulary>.

織物 pada dasarnya merujuk pada <kosakata>kain</vocabulary> tenunan. Ini sering dikaitkan dengan kerajinan tradisional, seperti tekstil kimono.', 'Bacaannya adalah bacaan kun''yomi. Dengan 織 Anda dapat mengambil bacaan dari 織る. Dengan 物 Anda mungkin sudah cukup melihatnya untuk mengetahui bahwa itu sering kali adalah もの dan bukan ぶつ. Bayangkan saja selembar kain yang <reading>mono</reading>krom.', 'Tekstil, Kain')
    RETURNING id INTO v_5391_tekstil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怒気', 'amarah', 29, 135, '<kanji>marah</kanji> <kanji>energi</kanji> keluar dari diri Anda ketika Anda memiliki <vocabulary>marah</vocabulary>.

怒気 terlihat sederhana, tetapi ini adalah istilah yang cukup canggih dan lebih umum digunakan dalam sastra, biasanya untuk menggambarkan kemarahan karakter yang diungkapkan melalui suara, ekspresi wajah, sikap, atau suasana sekitarnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Amarah')
    RETURNING id INTO v_5393_amarah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腹が減った', 'lapar', 29, 136, 'Ketika <kanji>perut</kanji> Anda <kanji>berkurang</kanji> jumlah barang di dalamnya, Anda menjadi <vocabulary>lapar</vocabulary>.

腹が減った adalah cara santai untuk mengatakan <vocabulary>Saya lapar</vocabulary> dalam bahasa Jepang, seringkali dengan nada yang sedikit kasar atau maskulin.', 'Bacaannya adalah 腹 ditambah 減る yang disatukan. Dengan gabungan keduanya, Anda memiliki はらがへった.

Dalam percakapan santai, Anda mungkin lebih sering mendengar 腹減った tanpa が. Versi dengan が lebih umum dalam ekspresi tertulis atau tetap seperti 腹が減っては戦ができぬ (kamu tidak bisa bertarung dengan perut kosong).', 'Lapar, Saya lapar')
    RETURNING id INTO v_5394_lapar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '招き猫', 'memanggil-kucing', 29, 137, '<kanji>memberi isyarat</kanji> <kanji>kucing</kanji> adalah <vocabulary>memanggil kucing</vocabulary> atau <vocabulary>maneki neko</vocabulary>. 

招き猫 adalah patung kucing yang dipercaya membawa keberuntungan dan rejeki bagi pemiliknya. Mereka sering ditempatkan di depan toko dengan satu kaki terangkat, seolah memberi isyarat dan berkata, "Hei, ayo masuk!"', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya, yang mana kalian sudah mengetahuinya!', 'Memanggil Kucing, Maneki Neko')
    RETURNING id INTO v_5395_memanggil_kucing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '構える', 'untuk-mengatur', 29, 138, 'Kanji itu sendiri artinya <kanji>mengatur</kanji>, jadi artinya <vocabulary>to set up</vocabulary>, seperti menetapkan sesuatu secara tertib.

Hal ini juga bisa berarti <kosakata>mengambil posisi</vocabulary>, seperti mengambil posisi bertarung, atau menahan diri sebagai persiapan, misalnya memegang senjata, sambil bersiap untuk terlibat dalam pertarungan.', 'Bacaannya seperti 構う, asal kalian tahu pasti kalian juga mengetahuinya.', 'Untuk Mengatur, Untuk Mengambil Posisi, Untuk Mengadakan Persiapan')
    RETURNING id INTO v_5396_untuk_mengatur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訪れる', 'untuk-mengunjungi', 29, 139, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengunjungi</kanji> dan versi kosakata kata kerjanya juga <vocabulary>mengunjungi</vocabulary>.

訪れる agak formal, jadi Anda akan lebih sering menemukannya dalam tulisan daripada percakapan sehari-hari. Ini digunakan untuk berbicara tentang mengunjungi suatu tempat, tetapi bukan tentang orang. Itu satu perbedaan besar dengan 訪ねる yang tampak serupa. Alasan lainnya adalah Anda tidak memerlukan tujuan khusus untuk jenis kunjungan yang Anda lakukan dengan 訪れる.', 'Sayangnya, bacaannya tidak sama dengan 訪ねる. Itu おとず. Ingat bagaimana ini berarti hanya mengunjungi suatu tempat? Sayangnya, Anda benar-benar lupa apa yang Anda kunjungi. Ketika kamu akhirnya ingat, itu karena kamu sedang menunduk untuk berpikir. Itu untuk melihat ujung kaki patung Buddha raksasa. "<reading>Oh Jari Kaki</reading>!" (おとず), serumu.', 'Untuk Mengunjungi')
    RETURNING id INTO v_5397_untuk_mengunjungi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地下街', 'pusat-perbelanjaan-bawah-tanah', 29, 140, 'Anda berada "bawah tanah" (地下) di <kanji>jalanan</kanji>, tapi jangan khawatir, Anda tidak berada dalam novel fiksi ilmiah pasca-apokaliptik — sebagian besar jalan dan area bawah tanah di Jepang hanyalah <vocabulary>pusat perbelanjaan bawah tanah</vocabulary>.

地下街, atau <vocabulary>pusat perbelanjaan bawah tanah</vocabulary>, umum terjadi di kota-kota besar di Jepang, terutama di dekat stasiun kereta api, di mana Anda akan menemukan banyak toko, restoran, dan jalan setapak di bawah permukaan jalan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pusat Perbelanjaan Bawah Tanah, Pusat Perbelanjaan Bawah Tanah')
    RETURNING id INTO v_5428_pusat_perbelanjaan_bawah_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '監視', 'pengawasan', 29, 141, 'Anda <kanji>mengawasi</kanji> dan <kanji>melihat</kanji> semua yang ada di domain Anda. Anda sedang melakukan <vocabulary>pengawasan</vocabulary>.

監視 adalah <vocabulary>observation</vocabulary> aktif terhadap seseorang atau sesuatu untuk memastikan keamanan atau kepatuhan, atau untuk mendeteksi aktivitas mencurigakan. Bisa juga merujuk pada orang-orang yang melakukan <vocabulary>monitoring</vocabulary> ini, baik secara langsung atau melalui penggunaan benda seperti kamera.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengawasan, Pengamatan, Pemantauan')
    RETURNING id INTO v_5430_pengawasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '監督', 'pengawasan', 29, 142, 'Orang yang <kanji>mengawasi</kanji> dan <kanji>mengarahkan</kanji> adalah orang yang memberi <vocabulary>pengawasan</vocabulary>. 

監督 mengacu pada tindakan mengawasi atau orang yang mengawasi, seperti <vocabulary>pelatih kepala</vocabulary> tim olahraga atau <vocabulary>sutradara</vocabulary> film.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengawasan, Pelatih Kepala, Direktur')
    RETURNING id INTO v_5431_pengawasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勧める', 'untuk-merekomendasikan', 29, 143, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyarankan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>recommended</vocabulary>.', 'Untuk mengingat bacaan tersebut, pikirkan tentang bagaimana Anda akan <vocabulary>merekomendasikan</vocabulary> restoran ini kepada teman Anda, <reading>Sue</reading> dan <reading>Sue</reading> (すす). Anda menyebut mereka sebagai "Sue Sue" untuk mempermudah diri Anda sendiri, dan mereka selalu mencari rekomendasi.', 'Untuk Merekomendasikan, Untuk Menyarankan, Untuk Menasihati, Untuk Menawarkan')
    RETURNING id INTO v_6295_untuk_merekomendasikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勧誘', 'permohonan', 29, 144, 'Saya <kanji>merekomendasikan</kanji> ini kepada Anda, jadi saya ingin <kanji>mengundang</kanji> Anda untuk mencobanya. Ini adalah <vocabulary>ajakan</vocabulary> atau <vocabulary>undangan</vocabulary>.

勧誘 berarti meminta seseorang untuk membeli suatu produk atau layanan atau mengundang mereka untuk bergabung dengan suatu kelompok atau aktivitas, sering kali dengan cara yang memaksa. Kata ini biasanya digunakan untuk menggambarkan apa yang dilakukan oleh para telemarketer dan penginjil dari rumah ke rumah, atau untuk siswa yang merekrut anggota baru untuk kegiatan ekstrakurikuler.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Permohonan, Undangan')
    RETURNING id INTO v_6297_permohonan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '黒板', 'papan-tulis', 29, 145, '<kanji>papan</kanji> hitam</kanji> adalah <vocabulary>papan tulis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Papan tulis')
    RETURNING id INTO v_7470_papan_tulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '研修生', 'peserta-pelatihan', 29, 146, '<vocabulary>研修</vocabulary> adalah semacam pelatihan atau pembelajaran. Jika dalam <kanji>kehidupan</kanji> (生) Anda saat ini Anda melakukan pelatihan, maka Anda adalah <vocabulary>peserta pelatihan</vocabulary>. Hal ini sangat mirip dengan bagaimana seorang siswa berada dalam status “kehidupan belajar”.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Bacaan dari 研修 juga akan membantu Anda.', 'peserta pelatihan')
    RETURNING id INTO v_7500_peserta_pelatihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迷惑メール', 'spam', 29, 147, 'Bila Anda memiliki email yang "merepotkan" (迷惑), Anda memiliki email yang tidak Anda inginkan. Ini dikenal sebagai <vocabulary>spam</vocabulary>, <vocabulary>spam mail</vocabulary>, atau <vocabulary>junk mail</vocabulary>. Pada tingkat yang lebih teknis, ini adalah <vocabulary>email yang tidak diminta</vocabulary>.', 'Bacaannya berasal dari 迷惑, jadi jika Anda tahu bahwa Anda mengetahui hal ini (dan kosakata ini juga tidak akan diminta!)', 'Spam, Surat Spam, Surat Sampah, Surat yang Tidak Diminta')
    RETURNING id INTO v_7501_spam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寄与', 'kontribusi', 29, 148, 'Saat Anda <kanji>mendekat</kanji> untuk <kanji>memberi</kanji> sesuatu, Anda mungkin memberikan <vocabulary>kontribusi</vocabulary>.

寄与 adalah kata yang sangat formal yang mengacu pada kontribusi signifikan dalam lingkungan profesional atau resmi. Ini biasanya digunakan dalam konteks akademis atau bisnis untuk menyoroti bagaimana pekerjaan seseorang berkontribusi terhadap kemajuan suatu bidang studi atau pertumbuhan suatu perusahaan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kontribusi')
    RETURNING id INTO v_7604_kontribusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '家政婦', 'pengurus-rumah-tangga', 29, 149, '<kanji>rumah</kanji> <kanji>politik</kanji> Anda berada di tangan satu <kanji>wanita</kanji>: <vocabulary>pengurus rumah</vocabulary> Anda. Pengurus rumah tangga Anda tahu lebih banyak tentang rumah Anda daripada Anda - lagipula, dia yang membersihkan rumah - jadi wajar saja jika dia mengendalikan semua politiknya juga.

Perhatikan bahwa penggunaan kehormatan sopan さん adalah hal yang umum ketika berbicara tentang 家政婦さん!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengurus rumah tangga, Pembantu')
    RETURNING id INTO v_7657_pengurus_rumah_tangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寄付', 'sumbangan', 29, 150, 'Jika kamu <kanji>mendekati</kanji> seseorang dan <kanji>melampirkan</kanji> beberapa barang padanya, kamu memberikan <vocabulary>donasi</vocabulary>. Bagaimanapun, mereka harus menyimpannya. 

寄付 berarti menyumbangkan uang, barang, atau sumber daya, biasanya untuk tujuan amal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sumbangan, Menyumbangkan')
    RETURNING id INTO v_7658_sumbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '居眠り', 'tertidur', 29, 151, 'Terkadang meskipun Anda merasa sudah sangat terjaga dan <kanji>hidup</kanji>, mau tak mau Anda akan jatuh ke dalam <kanji>tidur</kanji> dan mulai <vocabulary>tertidur</vocabulary>. Tapi kamu belum mati! Anda benar-benar hidup, jadi semoga tidak ada yang mengira Anda melakukan hal lain selain <vocabulary>terkantuk-kantuk</vocabulary>.

居眠り mengacu pada tidur ringan dan tidak disengaja. Hal ini sering terjadi ketika seseorang yang seharusnya tetap terjaga tetapi tertidur karena kelelahan atau kebosanan, seperti saat rapat, kelas, atau (amit-amit) saat mengemudi.', 'Kata ini menggabungkan bacaan kun''yomi dari 居る dan 眠る, keduanya telah Anda pelajari, jadi Anda harus bisa membacanya sendiri.', 'Tertidur, Mengangguk')
    RETURNING id INTO v_7718_tertidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怒らせる', 'untuk-membuat-marah-seseorang', 29, 152, 'Ingat bagaimana Anda mengetahui bahwa 怒る berarti "marah?" Inilah saat orang lain marah dan itu karena ANDA yang membuat mereka marah. Artinya <vocabulary>membuat marah seseorang</vocabulary>.

Kata kerja yang diakhiri dengan bunyi あせる (seperti 怒らせる) sering kali berarti Anda menyebabkan seseorang merasakan, melakukan, atau mengalami sesuatu. Jadi, 怒らせる artinya membuat seseorang marah. Kamu bisa mengingat ini karena kamu selalu membuat Russell (らせる) marah. Tidak peduli apa yang Anda katakan, Anda sepertinya membuatnya kesal… Anda terus-menerus membuat marah pria Russell ini.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika mempelajari 怒る, jadi Anda harus mengetahuinya juga!', 'Untuk Membuat Marah Seseorang, Untuk Memprovokasi, Untuk Menyinggung Seseorang')
    RETURNING id INTO v_7772_untuk_membuat_marah_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '玄関', 'pintu-masuk', 29, 153, 'Hal paling <kanji>misterius</kanji> yang <kanji>terhubung</kanji> dengan sebuah rumah adalah <vocabulary>pintu masuk</vocabulary>. Saat Anda memasukinya, Anda tidak pernah tahu apa yang akan terjadi selanjutnya. Anda cukup melepas sepatu Anda dan berharap bagian rumah lainnya tidak terlalu aneh atau semacamnya. Jika ya, <vocabulary>pintu masuk</vocabulary> adalah satu-satunya jalan keluar Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pintu masuk, Aula Masuk, Lobi, Jalan masuk')
    RETURNING id INTO v_7811_pintu_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寄る', 'untuk-mendekat', 29, 154, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanjinya sendiri berarti <kanji>mendekat</kanji>, jadi versi kata kerja ini adalah <vocabulary>mendekati</vocabulary>. Bisa juga berarti <vocabulary>berhenti</vocabulary>, karena mampir ke suatu tempat itu seperti mendekat sebentar, bukan?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Jika Anda terlalu malu untuk <vocabulary>mendekati</vocabulary> dengan orang lain, pelajari saja cara menggunakan <reading>yo</reading>-yo (よ)! Kemudian orang-orang akan mendekati ANDA untuk memuji keterampilan Anda yang sakit. Anda tidak perlu melakukannya sendiri!', 'Untuk Mendekat, Untuk Mampir')
    RETURNING id INTO v_8684_untuk_mendekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迷い', 'keraguan', 29, 155, 'Ingat bagaimana Anda mengetahui bahwa 迷う berarti "tersesat" atau "tersesat?" Nah, ketika Anda merasa tersesat atau tersesat, Anda mungkin bertindak dengan <vocabulary>ragu-ragu</vocabulary> dan <vocabulary>keragu-raguan</vocabulary>. Anda tiba-tiba <vocabulary>meragukan</vocabulary> tentang ke mana harus pergi atau apa yang harus dilakukan selanjutnya.

Meskipun 迷う bisa berarti tersesat baik secara fisik maupun mental, 迷い paling sering menyampaikan perasaan abstrak tentang konflik batin atau ketidakpastian, terutama dalam pengambilan keputusan.', 'Anda sudah mempelajari bacaan ini ketika Anda mempelajari 迷う! Tukar saja う dengan い.', 'Keraguan, Keraguan, Ragu')
    RETURNING id INTO v_8720_keraguan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捜索', 'mencari', 29, 156, '<kanji>pencarian</kanji> <kanji>pencarian</kanji> adalah <vocabulary>pencarian</vocabulary> yang lebih intens, seperti <vocabulary>investigasi</vocabulary> resmi untuk orang hilang.

捜索 adalah istilah formal yang sering digunakan oleh pihak berwenang atau dalam laporan berita. Ini mengacu pada pencarian resmi untuk orang atau benda yang hilang, dan biasanya digunakan dalam penyelidikan polisi, misi penyelamatan, atau pencarian terorganisir lainnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mencari, Penyelidikan')
    RETURNING id INTO v_8759_mencari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '任す', 'untuk-mempercayakan-sesuatu', 29, 157, 'Arti kata ini sama dengan 任せる. Kedua kata tersebut cukup umum, namun 任す sedikit kurang umum dibandingkan 任せる.

Inilah mnemoniknya lagi, kalau-kalau Anda memerlukan penyegaran:

Jika Anda memberikan <kanji>tugas</kanji> kepada seseorang, itu berarti Anda akan <vocabulary>mempercayakan sesuatu</vocabulary> kepada orang tersebut, atau Anda akan <vocabulary>mendelegasikan sesuatu</vocabulary>. Dengan kata lain, Anda akan <vocabulary>mewariskan sesuatu kepada</vocabulary> mereka, sehingga mereka melakukannya untuk Anda.', 'Ini menggunakan bacaan yang sama yang Anda pelajari dengan 任せる.', 'Untuk Mempercayakan Sesuatu, Untuk Mendelegasikan Sesuatu, Untuk Meninggalkan Sesuatu')
    RETURNING id INTO v_9045_untuk_mempercayakan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乗車券', 'tiket-penumpang', 29, 158, 'Jika Anda ingin <kanji>naik</kanji> dengan <kanji>mobil</kanji>, <kanji>tiket</kanji> yang Anda perlukan adalah <vocabulary>tiket penumpang</vocabulary>.

乗車券 pada dasarnya adalah <vocabulary>tiket</vocabulary> untuk naik kereta, jadi anggaplah "gerbong" di sini sebagai gerbong kereta. Bisa juga mengacu pada tiket wahana lain, seperti bianglala, kereta gantung, kereta gantung, atau bus tertentu yang memerlukan pembelian tiket sebelumnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tiket Penumpang, Tiket')
    RETURNING id INTO v_9048_tiket_penumpang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豚カツ', 'tonkatsu', 29, 159, '豚 berasal dari 豚肉 (babi), dan カツ berasal dari kata "potongan daging" dan artinya hanya itu. Dan <kanji>babi</kanji> カツ adalah apa yang mungkin diketahui oleh setiap penggemar makanan Jepang sebagai <vocabulary>tonkatsu</vocabulary>, alias <vocabulary>potongan daging babi yang dilapisi tepung roti</vocabulary>.

豚カツ adalah potongan daging babi Jepang yang dilapisi remah roti panko renyah dan digoreng, membuatnya ringan dan renyah. Biasanya disajikan dengan saus gurih manis yang lezat. Ini sangat bagus, Anda akan menyukainya!', 'Kata ini menggunakan on''yomi dari 豚. Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda:

Anda sangat menyukai <vocabulary>tonkatsu</vocabulary> jadi Anda hanya memakan <read>ton</reading> (とん) keseluruhannya. Bayangkan bagaimana perasaan Anda setelah makan banyak <vocabulary>potongan daging babi yang dilapisi tepung roti</vocabulary>.', 'Tonkatsu, Potongan Daging Babi Dilapisi Tepung Roti')
    RETURNING id INTO v_9090_tonkatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '激怒', 'kemarahan', 29, 160, 'Menjadi <kanji>galak</kanji> dan <kanji>marah</kanji> berarti Anda dipenuhi dengan <vocabulary>rage</vocabulary>, atau Anda <vocabulary>menjadi marah</vocabulary>.

激怒 adalah kata yang relatif formal, sering digunakan dalam literatur untuk menggambarkan seseorang yang sedang marah atau mengalami kemarahan yang hebat dan tak terkendali. Oleh karena itu, Anda akan sering menjumpai ini sebagai kata kerja suru dalam bentuk 激怒する.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemarahan, Menjadi Marah')
    RETURNING id INTO v_9094_kemarahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '相次ぐ', 'terjadi-secara-berturut-turut', 29, 161, 'Hal-hal yang terjadi <kanji>saling</kanji>tepat <kanji>bersebelahan</kanji> satu sama lain dikatakan <kosakata>terjadi berturut-turut</vocabulary>. Dengan kata lain, <vocabulary>terjadi satu demi satu</vocabulary>.

相次ぐ adalah kata yang relatif formal yang sering digunakan dalam laporan berita untuk membicarakan berbagai peristiwa atau insiden yang terjadi satu demi satu, biasanya secara berurutan.', 'Karena kata ini terdiri dari kanji dengan hiragana ditempelkan, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda telah mempelajari bacaan ini untuk 相, tetapi tidak untuk 次. Daripada memberi Anda mnemonik, kami pikir lebih mudah untuk mengingat bahwa 次ぐ yang dibaca つぐ berasal dari 次 bacaan つぎ. Tidak terlalu sulit! Secara keseluruhan, itu membuat ini あいつぐ.', 'Terjadi Secara Berturut-turut, Terjadi Satu demi Satu')
    RETURNING id INTO v_9296_terjadi_secara_berturut_turut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '申請', 'aplikasi', 29, 162, 'Saat Anda <kanji>mengatakan dengan rendah hati</kanji> bahwa Anda <kanji>meminta</kanji> sesuatu, Anda sedang mengajukan <vocabulary>aplikasi</vocabulary>.

申請 mengacu pada <em>proses</em> <kosakata>permohonan</vocabulary> resmi untuk persetujuan atau izin, seperti ビザの申請 (permohonan visa), ライセンスの申請 (permohonan izin), atau 休暇の申請 (permohonan untuk cuti/liburan).', 'Ini adalah kata jukugo yang artinya pembacaan on''yomi dari kanji. Anda sudah mengetahui bacaan ini untuk 請, tetapi tidak untuk 申, jadi inilah mnemonik untuk membantu Anda:

Hari ini Anda akhirnya mengirimkan <vocabulary>aplikasi</vocabulary> Anda untuk <reading>shin</reading> (しん) baru. Yang lama harus disingkirkan dengan susah payah setelah Anda membenturkannya ke meja. Bagaimanapun, selamat atas lamaran untuk tulang kering baru Anda!', 'Aplikasi, Melamar')
    RETURNING id INTO v_9308_aplikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夜更かし', 'begadang', 29, 163, 'Ingat bagaimana 夜更け berarti "larut malam"? Ini mirip dengan itu, tapi alih-alih mengacu pada waktu malam, ini merujuk pada tindakan <vocabulary>begadang</vocabulary>. 

夜更かし biasanya berarti begadang melewati waktu yang Anda tahu harus tidur. Hal ini sering dikaitkan dengan kesenangan yang bersalah seperti menonton acara TV atau bermain game secara berlebihan.', 'Kata ini menggunakan bacaan yang sama dengan 夜更け. Jika Anda dapat mengingatnya, Anda juga akan baik-baik saja di sini!', 'Begadang')
    RETURNING id INTO v_9376_begadang;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4387_alas_kaki, 'Alas kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4387_alas_kaki, 'Sepatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4769_untuk_ditangkap, 'Untuk Ditangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4769_untuk_ditangkap, 'Akan Ditangkap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4808_efektivitas, 'Efektivitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4808_efektivitas, 'Sedang Berlaku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4808_efektivitas, 'Kemanjuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4892_pembangunan_kembali, 'Pembangunan kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4892_pembangunan_kembali, 'Rekonstruksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5009_untuk_mendapatkan_posisi, 'Untuk Mendapatkan Posisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5009_untuk_mendapatkan_posisi, 'Untuk Mendapatkan Pekerjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5031_untuk_naik, 'Untuk Naik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5031_untuk_naik, 'Untuk Bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5074_perut, 'Perut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5074_perut, 'Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5074_perut, 'Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5076_menjadi_gila, 'Menjadi Gila', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5076_menjadi_gila, 'Menjadi Marah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5081_untuk_mengundang, 'Untuk Mengundang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5081_untuk_mengundang, 'Untuk menggoda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5081_untuk_mengundang, 'Untuk Memikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5117_kolega, 'Kolega', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5117_kolega, 'Teman sekerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5118_birokrat, 'Birokrat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5118_birokrat, 'Birokrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5118_birokrat, 'Pejabat Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5146_ibu_rumah_tangga, 'Ibu rumah tangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5146_ibu_rumah_tangga, 'Ibu rumah tangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5166_diagnosa, 'Diagnosa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5166_diagnosa, 'Mendiagnosis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5166_diagnosa, 'Penilaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5213_menjadi_kering, 'Menjadi Kering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5213_menjadi_kering, 'Menjadi Kering', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5213_menjadi_kering, 'Untuk Dikeringkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5214_musim_kemarau, 'Musim kemarau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5215_kanpai, 'Kanpai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5215_kanpai, 'Bersulang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5215_kanpai, 'Roti panggang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5216_untuk_mendesak, 'Untuk Mendesak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5216_untuk_mendesak, 'Untuk Mendorong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5216_untuk_mendesak, 'Untuk Meminta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5216_untuk_mendesak, 'Untuk Mempromosikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5217_keinginan, 'Keinginan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5217_keinginan, 'Tekan Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5217_keinginan, 'Tuntutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5218_melihat, 'Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5218_melihat, 'Memberitahukan Secara Resmi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5218_melihat, 'Pemberitahuan Resmi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5219_tuan_rumah, 'Tuan rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5219_tuan_rumah, 'Tuan rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5219_tuan_rumah, 'Sponsor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5220_untuk_menghancurkan_sesuatu, 'Untuk Menghancurkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5220_untuk_menghancurkan_sesuatu, 'Untuk Merusak Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5220_untuk_menghancurkan_sesuatu, 'Untuk Menghancurkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5221_penghancuran_lengkap, 'Penghancuran Lengkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5221_penghancuran_lengkap, 'Kehancuran Total', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5222_runtuh, 'Runtuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5222_runtuh, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5222_runtuh, 'Pengrusakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5223_anak_perempuan, 'Anak perempuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5223_anak_perempuan, 'Wanita Muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5224_putri_tunggal, 'Putri Tunggal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5225_agama, 'Agama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5226_sekte, 'Sekte', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5226_sekte, 'Denominasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5227_sekte_zen, 'Sekte Zen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5227_sekte_zen, 'Buddhisme Zen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5228_perjamuan, 'Perjamuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5228_perjamuan, 'Pesta Makan Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5229_perjamuan, 'Perjamuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5229_perjamuan, 'Berpesta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5229_perjamuan, 'Bacakanal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5230_tidak_sehat, 'Tidak sehat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5230_tidak_sehat, 'Tidak Sehat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5231_gugup, 'Gugup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5231_gugup, 'Ketegangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5232_amarah, 'Amarah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5232_amarah, 'Kemarahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5233_menakutkan, 'Menakutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5234_teror, 'Teror', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5234_teror, 'Takut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5235_fobi, 'Fobi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5236_menakutkan, 'Menakutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5236_menakutkan, 'Menakutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5236_menakutkan, 'Mengerikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5237_satu_piala, 'Satu Piala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5237_satu_piala, 'Minuman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5237_satu_piala, 'Penuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5237_satu_piala, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5238_dua_piala, 'Dua Piala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5238_dua_piala, 'Dua Minuman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5238_dua_piala, 'Dua Gelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5239_tiga_piala, 'Tiga Piala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5239_tiga_piala, 'Tiga Minuman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5239_tiga_piala, 'Tiga Gelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5240_papan, 'Papan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5240_papan, 'Papan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5240_papan, 'Lempeng', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5240_papan, 'Piring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5241_papan_nama, 'Papan nama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5241_papan_nama, 'Papan iklan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5241_papan_nama, 'Tanda Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5242_untuk_mencapai_dasarnya, 'Untuk Mencapai Dasarnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5242_untuk_mencapai_dasarnya, 'Untuk Mengidentifikasi Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5243_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5244_eropa_dan_amerika, 'Eropa dan Amerika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5244_eropa_dan_amerika, 'Eropa dan Amerika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5244_eropa_dan_amerika, 'Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5245_eropa_tengah, 'Eropa Tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5246_jepang_dan_eropa, 'Jepang dan Eropa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5246_jepang_dan_eropa, 'Jepang-Eropa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5247_edo, 'Edo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5247_edo, 'Tokyo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5248_masuk, 'Masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5248_masuk, 'Teluk kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5249_untuk_menambahkan_sesuatu_ke, 'Untuk Menambahkan Sesuatu Ke', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5249_untuk_menambahkan_sesuatu_ke, 'Untuk Memasukkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5249_untuk_menambahkan_sesuatu_ke, 'Untuk Menemani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5249_untuk_menambahkan_sesuatu_ke, 'Untuk Menghias', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5250_lampiran, 'Lampiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5250_lampiran, 'Melampirkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5251_sangat_kuat, 'Sangat Kuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5251_sangat_kuat, 'Intens', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5251_sangat_kuat, 'Mengejutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5251_sangat_kuat, 'Menyolok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5252_garang, 'Garang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5252_garang, 'Brutal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5252_garang, 'Intens', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5253_kuat, 'Kuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5253_kuat, 'Bersemangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5253_kuat, 'Penuh semangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5253_kuat, 'Penuh semangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5254_garang, 'Garang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5254_garang, 'Intens', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5255_untuk_menyingkat, 'Untuk menyingkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5255_untuk_menyingkat, 'Untuk mempersingkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5255_untuk_menyingkat, 'Untuk Menghilangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5256_menghilangkan, 'Menghilangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5256_menghilangkan, 'Meninggalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5256_menghilangkan, 'Singkatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5257_singkatan, 'Singkatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5257_singkatan, 'Akronim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5258_diagram_kasar, 'Diagram Kasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5258_diagram_kasar, 'Peta Kasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5259_garis_besar_luas, 'Garis Besar Luas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5259_garis_besar_luas, 'Garis besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5259_garis_besar_luas, 'Ringkasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5260_sakit, 'Sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5260_sakit, 'Nyeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5261_penawar_rasa_sakit, 'Penawar rasa sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5263_untuk_tidur, 'Untuk Tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5263_untuk_tidur, 'Untuk Tertidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5264_ramuan_tidur, 'Ramuan Tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5264_ramuan_tidur, 'Obat Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5266_untuk_akumulasi, 'Untuk Akumulasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5266_untuk_akumulasi, 'Untuk Ditumpuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5267_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5268_volume, 'Volume', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5269_pencarian, 'Pencarian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5269_pencarian, 'Pencarian Internet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5270_indeks, 'Indeks', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5271_mendesak, 'Mendesak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5271_mendesak, 'Keadaan darurat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5272_tenggat_waktu, 'Tenggat waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5272_tenggat_waktu, 'Tenggat waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5273_untuk_mengencangkan, 'Untuk Mengencangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5273_untuk_mengencangkan, 'Menjadi Ketat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5273_untuk_mengencangkan, 'Menjadi Kencang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5274_menteri, 'Menteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5274_menteri, 'Menteri Kabinet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5274_menteri, 'Menteri Negara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5274_menteri, 'Menteri luar negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5275_navigasi, 'Navigasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5276_penerbangan, 'Penerbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5277_penerbangan_tanpa_henti, 'Penerbangan Tanpa Henti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5277_penerbangan_tanpa_henti, 'Pelayaran Langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5278_distrik_perbelanjaan, 'Distrik Perbelanjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5278_distrik_perbelanjaan, 'Arena Perbelanjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5278_distrik_perbelanjaan, 'Jalan Perbelanjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5280_untuk_memeriksa_seorang_pasien, 'Untuk Memeriksa Seorang Pasien', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5280_untuk_memeriksa_seorang_pasien, 'Untuk Memeriksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5281_pemeriksaan_kesehatan, 'Pemeriksaan Kesehatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5281_pemeriksaan_kesehatan, 'Pemeriksaan Kesehatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5281_pemeriksaan_kesehatan, 'Konsultasi Medis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5282_untuk_memasukkan, 'Untuk Memasukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5282_untuk_memasukkan, 'Untuk menjejalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5282_untuk_memasukkan, 'Untuk berkemas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5285_meminta, 'Meminta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5285_meminta, 'Mengenakan biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5285_meminta, 'Mengeklaim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5288_untuk_mengambil, 'Untuk Mengambil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5288_untuk_mengambil, 'Untuk Menerima', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5288_untuk_mengambil, 'Untuk Melakukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5289_persewaan, 'Persewaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5290_tersesat, 'Tersesat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5290_tersesat, 'Tersesat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5291_menteri_kabinet, 'Menteri Kabinet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5291_menteri_kabinet, 'Sekretaris Kabinet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5291_menteri_kabinet, 'Anggota Kabinet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5292_rapat_kabinet, 'Rapat Kabinet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5293_pahlawan, 'Pahlawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5294_korea_selatan, 'Korea Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5294_korea_selatan, 'Korea', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5295_jepang_dan_korea_selatan, 'Jepang dan Korea Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5295_jepang_dan_korea_selatan, 'Jepang dan Korea', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5305_keingintahuan, 'Keingintahuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5306_nomor_ganjil, 'Nomor Ganjil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5307_aneh, 'Aneh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5307_aneh, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5307_aneh, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5307_aneh, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5391_tekstil, 'Tekstil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5391_tekstil, 'Kain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5393_amarah, 'Amarah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5394_lapar, 'Lapar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5394_lapar, 'Saya lapar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5395_memanggil_kucing, 'Memanggil Kucing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5395_memanggil_kucing, 'Maneki Neko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5396_untuk_mengatur, 'Untuk Mengatur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5396_untuk_mengatur, 'Untuk Mengambil Posisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5396_untuk_mengatur, 'Untuk Mengadakan Persiapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5397_untuk_mengunjungi, 'Untuk Mengunjungi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5428_pusat_perbelanjaan_bawah_tanah, 'Pusat Perbelanjaan Bawah Tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5428_pusat_perbelanjaan_bawah_tanah, 'Pusat Perbelanjaan Bawah Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5430_pengawasan, 'Pengawasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5430_pengawasan, 'Pengamatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5430_pengawasan, 'Pemantauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5431_pengawasan, 'Pengawasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5431_pengawasan, 'Pelatih Kepala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5431_pengawasan, 'Direktur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6295_untuk_merekomendasikan, 'Untuk Merekomendasikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6295_untuk_merekomendasikan, 'Untuk Menyarankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6295_untuk_merekomendasikan, 'Untuk Menasihati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6295_untuk_merekomendasikan, 'Untuk Menawarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6297_permohonan, 'Permohonan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6297_permohonan, 'Undangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7470_papan_tulis, 'Papan tulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7500_peserta_pelatihan, 'peserta pelatihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7501_spam, 'Spam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7501_spam, 'Surat Spam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7501_spam, 'Surat Sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7501_spam, 'Surat yang Tidak Diminta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7604_kontribusi, 'Kontribusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7657_pengurus_rumah_tangga, 'Pengurus rumah tangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7657_pengurus_rumah_tangga, 'Pembantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7658_sumbangan, 'Sumbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7658_sumbangan, 'Menyumbangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7718_tertidur, 'Tertidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7718_tertidur, 'Mengangguk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7772_untuk_membuat_marah_seseorang, 'Untuk Membuat Marah Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7772_untuk_membuat_marah_seseorang, 'Untuk Memprovokasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7772_untuk_membuat_marah_seseorang, 'Untuk Menyinggung Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7811_pintu_masuk, 'Pintu masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7811_pintu_masuk, 'Aula Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7811_pintu_masuk, 'Lobi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7811_pintu_masuk, 'Jalan masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8684_untuk_mendekat, 'Untuk Mendekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8684_untuk_mendekat, 'Untuk Mampir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8720_keraguan, 'Keraguan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8720_keraguan, 'Keraguan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8720_keraguan, 'Ragu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8759_mencari, 'Mencari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8759_mencari, 'Penyelidikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9045_untuk_mempercayakan_sesuatu, 'Untuk Mempercayakan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9045_untuk_mempercayakan_sesuatu, 'Untuk Mendelegasikan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9045_untuk_mempercayakan_sesuatu, 'Untuk Meninggalkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9048_tiket_penumpang, 'Tiket Penumpang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9048_tiket_penumpang, 'Tiket', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9090_tonkatsu, 'Tonkatsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9090_tonkatsu, 'Potongan Daging Babi Dilapisi Tepung Roti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9094_kemarahan, 'Kemarahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9094_kemarahan, 'Menjadi Marah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9296_terjadi_secara_berturut_turut, 'Terjadi Secara Berturut-turut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9296_terjadi_secara_berturut_turut, 'Terjadi Satu demi Satu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9308_aplikasi, 'Aplikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9308_aplikasi, 'Melamar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9376_begadang, 'Begadang', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4387_alas_kaki, 'はきもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4769_untuk_ditangkap, 'つかまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4808_efektivitas, 'こうりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4892_pembangunan_kembali, 'さいけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5009_untuk_mendapatkan_posisi, 'つく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5031_untuk_naik, 'のぼる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5074_perut, 'はら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5076_menjadi_gila, 'はらがたつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5081_untuk_mengundang, 'さそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5117_kolega, 'どうりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5118_birokrat, 'かんりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5146_ibu_rumah_tangga, 'しゅふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5166_diagnosa, 'しんだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5213_menjadi_kering, 'かわく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5214_musim_kemarau, 'かんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5215_kanpai, 'かんぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5216_untuk_mendesak, 'うながす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5217_keinginan, 'さいそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5218_melihat, 'さいこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5219_tuan_rumah, 'しゅさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5220_untuk_menghancurkan_sesuatu, 'こわす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5221_penghancuran_lengkap, 'ぜんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5222_runtuh, 'とうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5223_anak_perempuan, 'むすめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5224_putri_tunggal, 'ひとりむすめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5225_agama, 'しゅうきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5226_sekte, 'しゅうは', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5227_sekte_zen, 'ぜんしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5228_perjamuan, 'えんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5229_perjamuan, 'うたげ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5230_tidak_sehat, 'ふけんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5231_gugup, 'きんちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5232_amarah, 'いかり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5233_menakutkan, 'こわい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5234_teror, 'きょうふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5235_fobi, 'きょうふしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5236_menakutkan, 'おそろしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5237_satu_piala, 'いっぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5238_dua_piala, 'にはい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5239_tiga_piala, 'さんばい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5240_papan, 'いた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5241_papan_nama, 'かんばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5242_untuk_mencapai_dasarnya, 'みきわめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5243_sangat, 'きわめて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5244_eropa_dan_amerika, 'おうべい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5245_eropa_tengah, 'ちゅうおう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5246_jepang_dan_eropa, 'にちおう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5247_edo, 'えど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5248_masuk, 'いりえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5249_untuk_menambahkan_sesuatu_ke, 'そえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5250_lampiran, 'てんぷ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5251_sangat_kuat, 'きょうれつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5252_garang, 'もうれつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5253_kuat, 'ねつれつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5254_garang, 'もう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5255_untuk_menyingkat, 'りゃくす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5256_menghilangkan, 'しょうりゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5257_singkatan, 'りゃくご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5258_diagram_kasar, 'りゃくず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5259_garis_besar_luas, 'たいりゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5260_sakit, 'いたみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5261_penawar_rasa_sakit, 'いたみどめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5263_untuk_tidur, 'ねむる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5264_ramuan_tidur, 'ねむりぐすり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5266_untuk_akumulasi, 'つもる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5267_daerah, 'めんせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5268_volume, 'たいせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5269_pencarian, 'けんさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5270_indeks, 'さくいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5271_mendesak, 'きんきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5272_tenggat_waktu, 'しめきり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5273_untuk_mengencangkan, 'しまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5274_menteri, 'だいじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5275_navigasi, 'こうほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5276_penerbangan, 'こうくう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5277_penerbangan_tanpa_henti, 'ちょっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5278_distrik_perbelanjaan, 'しょうてんがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5280_untuk_memeriksa_seorang_pasien, 'みる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5281_pemeriksaan_kesehatan, 'しんさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5282_untuk_memasukkan, 'つめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5285_meminta, 'せいきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5288_untuk_mengambil, 'うける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5289_persewaan, 'かし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5290_tersesat, 'みちにまよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5291_menteri_kabinet, 'かくりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5292_rapat_kabinet, 'かくぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5293_pahlawan, 'えいゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5294_korea_selatan, 'かんこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5295_jepang_dan_korea_selatan, 'にっかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5305_keingintahuan, 'こうきしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5306_nomor_ganjil, 'きすう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5307_aneh, 'きみょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5391_tekstil, 'おりもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5393_amarah, 'どき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5394_lapar, 'はらがへった', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5395_memanggil_kucing, 'まねきねこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5396_untuk_mengatur, 'かまえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5397_untuk_mengunjungi, 'おとずれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5428_pusat_perbelanjaan_bawah_tanah, 'ちかがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5430_pengawasan, 'かんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5431_pengawasan, 'かんとく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6295_untuk_merekomendasikan, 'すすめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6297_permohonan, 'かんゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7470_papan_tulis, 'こくばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7500_peserta_pelatihan, 'けんしゅうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7501_spam, 'めいわくめーる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7501_spam, 'めいわくメール', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7604_kontribusi, 'きよ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7657_pengurus_rumah_tangga, 'かせいふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7658_sumbangan, 'きふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7718_tertidur, 'いねむり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7772_untuk_membuat_marah_seseorang, 'おこらせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7811_pintu_masuk, 'げんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8684_untuk_mendekat, 'よる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8720_keraguan, 'まよい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8759_mencari, 'そうさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9045_untuk_mempercayakan_sesuatu, 'まかす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9048_tiket_penumpang, 'じょうしゃけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9090_tonkatsu, 'とんかつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9090_tonkatsu, 'とんカツ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9094_kemarahan, 'げきど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9296_terjadi_secara_berturut_turut, 'あいつぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9308_aplikasi, 'しんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9376_begadang, 'よふかし', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4387_alas_kaki, 'ワニカニでレベルアップした日の履き物は、いつもより少し軽く感じる。', 'Sepatu saya selalu terasa sedikit lebih ringan pada hari-hari peningkatan level WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4387_alas_kaki, 'アマゾンから、注文より二足余計に履き物が送られてきました。', 'Amazon mengirimi saya dua pasang sepatu lebih banyak dari yang saya pesan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4387_alas_kaki, '「ここで履き物を脱いでください」と「ここでは着物を脱いでください」を平仮名で書くと全く同じになる。', 'Saat Anda menulis "Tolong lepas sepatu di sini" dan "Tolong lepas kimono di sini" dalam hiragana, keduanya terlihat persis sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4387_alas_kaki, '日本語で、屋内の履き物は「上履き」、屋外の履き物は「外履き」と呼ばれます。', 'Dalam bahasa Jepang, alas kaki di dalam ruangan disebut "uwabaki" dan alas kaki di luar ruangan disebut "sotobaki".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4769_untuk_ditangkap, 'うちの会社のアルバイトが人をなぐって捕まってしまったんだ。', 'Seorang pekerja paruh waktu di perusahaan saya ditangkap karena meninju seseorang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4769_untuk_ditangkap, 'アシュリーに何度も電話をかけているんだけど、なかなか捕まらないんだよね。', 'Aku sudah menelepon Ashley berulang kali, tapi aku tidak beruntung bisa menghubunginya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4769_untuk_ditangkap, '最初スピード違反で止められたんだけど、その後飲酒運転で捕まっちゃったんだよ。', 'Awalnya saya hanya dihentikan karena ngebut, tapi akhirnya saya ketahuan karena mengemudi dalam keadaan mabuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4769_untuk_ditangkap, 'すごくおしゃべりな友達に捕まって、帰るのが深夜になってしまった。', 'Saya ditahan oleh seorang teman yang banyak bicara dan tidak sampai di rumah hingga larut malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4808_efektivitas, 'その条約は明日で効力を失う。', 'Perjanjian itu tidak akan berlaku lagi mulai besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4808_efektivitas, 'あなたの今日のプレゼンテーションは、前回に比べて効力が少し弱いような気がしました。', 'Presentasi Anda hari ini sepertinya efektivitasnya sedikit lebih lemah dibandingkan presentasi sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4808_efektivitas, 'この薬を飲むと、あなたは空を飛べるようになります。でも、飛んでいる時に薬の効力が切れると大変なので、気をつけてくださいね。', 'Jika kamu meminum obat ini, kamu akan bisa terbang di angkasa. Namun harap berhati-hati karena jika efek obatnya hilang saat Anda terbang, bisa sangat berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4808_efektivitas, '調停が成立したときに作成される調停調書は、判決と同様の効力を有します。', 'Apabila tercapai kesepakatan mediasi, maka berita acara mediasi yang dibuat setelahnya mempunyai kekuatan hukum yang sama dengan putusan pengadilan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4892_pembangunan_kembali, 'これは国家再建をかけた一大プロジェクトです。', 'Ini adalah proyek besar yang ditujukan untuk rekonstruksi nasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4892_pembangunan_kembali, 'このビルの再建には、まずは資金を作らなくてはいけません。', 'Untuk membangun kembali gedung ini, kita perlu mendapatkan pendanaan terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4892_pembangunan_kembali, '今は被災地の再建が最優先です。', 'Membangun kembali daerah yang terkena bencana adalah prioritas utama saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4892_pembangunan_kembali, '経営が苦しくなった会社を再建するまで、彼は毎日規定よりも長い時間働いた。', 'Dia bekerja lebih lama dari yang seharusnya setiap hari sampai dia membangun kembali perusahaannya yang sedang kesulitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5009_untuk_mendapatkan_posisi, 'どうして日当で給与を支払う会社に就きたいの？', 'Mengapa Anda ingin mendapat posisi di perusahaan yang membayarkan tunjangan harian Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5009_untuk_mendapatkan_posisi, 'みんなどんな仕事に就くことになるのかな。', 'Saya bertanya-tanya pekerjaan seperti apa yang pada akhirnya akan kita dapatkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5009_untuk_mendapatkan_posisi, 'これでジョフリー王子が王位に就くのは間違いないね。', 'Hal ini pasti akan membuat Pangeran Joffrey naik takhta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5009_untuk_mendapatkan_posisi, 'コウイチの後、誰がトーフグの社長のポジションに就くと思う？', 'Menurut Anda siapa yang akan mengambil posisi presiden Tofugu setelah Koichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5031_untuk_naik, '大丈夫。日はまた昇るさ。', 'Kamu akan baik-baik saja. Matahari akan terbit kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5031_untuk_naik, '遠くの方に、細長い煙が空に昇っていくのが見えました。', 'Di kejauhan, kami melihat kepulan asap tipis dan panjang membubung ke langit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5031_untuk_naik, '私は天にも昇る気持ちで、大学からの合格通知を何度も読み直した。', 'Saya merasa seperti naik ke surga ketika saya membaca surat penerimaan perguruan tinggi saya berulang kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5074_perut, 'お前ちょっと腹が出てきたんじゃねぇか？', 'Anda mulai punya nyali, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5074_perut, '島崎さんは腹をかかえて笑っていました。', 'Nona Shimazaki memegangi perutnya sambil tertawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5074_perut, '最近ビール腹が気になって、とうとうダイエットをすることにしました。', 'Akhir-akhir ini aku merasa minder dengan perut buncitku, jadi akhirnya aku memutuskan untuk mencoba menurunkan berat badan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5074_perut, 'ここ最近、ずっと腹が痛いんだ。', 'Perutku sakit tanpa henti akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5076_menjadi_gila, '彼の発言には本当に腹が立った。', 'Apa yang dia katakan sungguh membuatku kesal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5076_menjadi_gila, '本気で腹が立つんだけど。練習のジャマだわ！', 'Itu membuatku sangat marah. Mereka menghalangi latihan kita!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5076_menjadi_gila, '彼女の話し方には、何か腹が立つものがある。', 'Ada sesuatu dalam cara dia berbicara yang membuatku marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5076_menjadi_gila, '約束を守らない人に腹が立つのは、極めて自然なことである。', 'Wajar jika merasa marah pada seseorang yang tidak menepati janjinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5081_untuk_mengundang, '私、友達を誘うのが苦手なんです。', 'Saya sulit mengajak teman jalan-jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5081_untuk_mengundang, '陽気に誘われ、ウォーキングに出かけた。', 'Saya tertarik oleh cuaca yang menyenangkan dan pergi berjalan-jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5081_untuk_mengundang, 'どうする？サオリもカラオケに誘う？', 'Apa yang harus kita lakukan? Haruskah kita juga mengundang Saori ke karaoke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5081_untuk_mengundang, '上司にラーメンを食べに行かないかと誘われたら、行くしかないっしょ。', 'Jika bosku memintaku pergi makan ramen, aku tidak punya pilihan selain pergi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5081_untuk_mengundang, 'ついにサヤコをデートに誘ったんだけど、なんとOKの返事をもらえたんだよ。だから、今夜、食事をしに出かけるんだ。', 'Saya akhirnya mengajak Sayako berkencan dan dia menjawab ya, jadi kami akan pergi makan malam malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5117_kolega, 'こちらは同僚の林さんです。', 'Ini rekan saya, Hayashi-san.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5117_kolega, 'オレの同僚は冷たいヤツなんだよ。', 'Rekan saya adalah pria yang berhati dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5117_kolega, '困ったときに相談できるような上司や同僚だったら良かったんだけどね。', 'Akan sangat menyenangkan jika ada atasan atau rekan kerja yang bisa dimintai nasihat ketika ada masalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5118_birokrat, '彼は官僚出身だけど、腰が低くていいやつだよ。', 'Dia berasal dari latar belakang birokrasi, tapi dia rendah hati dan orang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5118_birokrat, 'きっとアイツらみんな、我々キャリア官僚が天下りするのは当然の権利だとか思ってるんじゃない？', 'Saya yakin mereka semua berpikir seperti ini, "Merupakan hak istimewa bagi kita sebagai birokrat karir untuk mendapatkan pekerjaan yang nyaman setelah pensiun."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5118_birokrat, '大きくなった国家に必ず官僚主義がはびこるように、大きくなった組織は、みんな大企業病にかかるんです。いわゆる官僚組織ってやつですよ。', 'Sama seperti birokrasi yang menyebar di suatu negara besar, setiap organisasi besar pada akhirnya menderita apa yang kita sebut "sindrom perusahaan besar". Itulah yang mungkin Anda sebut sebagai organisasi birokrasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5146_ibu_rumah_tangga, 'その主婦は、株で三万円もうけた。', 'Ibu rumah tangga menghasilkan 30.000 yen dari saham.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5146_ibu_rumah_tangga, '浜田さんはカリスマ主婦のブログを一日三回はチェックしている。', 'Hamada-san memeriksa blog yang ditulis oleh seorang ibu rumah tangga yang karismatik setidaknya tiga kali sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5146_ibu_rumah_tangga, 'あの主婦は料理がすごく上手で、今では近所にレストランを開いています。', 'Ibu rumah tangga itu sangat pandai memasak, dan sekarang menjalankan sebuah restoran di lingkungan sekitar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5146_ibu_rumah_tangga, 'ボタンひとつでご飯とおかずが完成するお手軽さは、忙しい主婦にとってかなり有難いのである。', 'Kemudahan menyiapkan nasi dan lauk pauk hanya dengan satu sentuhan tombol cukup diapresiasi oleh ibu rumah tangga yang sibuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5166_diagnosa, 'どうしてその診断結果になったのか、診断のプロセスを説明してもらえませんか？', 'Bisakah Anda menjelaskan proses bagaimana Anda sampai pada diagnosis tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5166_diagnosa, 'MBTI診断っていう性格診断テスト、知ってる？', 'Tahukah Anda tes kepribadian yang disebut penilaian MBTI?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5166_diagnosa, '西村医師は乳がんの診断においては右に出る者はいないと言われています。', 'Dokter Nishimura dipercaya sebagai dokter terbaik dalam hal diagnosis kanker payudara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5166_diagnosa, '私の息子は四歳の時に喘息だと診断されました。', 'Putra saya didiagnosis menderita asma ketika dia berusia empat tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5213_menjadi_kering, '洗濯物はまだ乾いていません。', 'Cucian kami belum kering.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5213_menjadi_kering, 'プランターの土が乾いてきたので水をやりました。', 'Tanah di perkebunan mulai kering, jadi saya memberinya air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5213_menjadi_kering, '「足を三発撃たれたみたいだ」と、ビエトは乾いた声で言った。', '“Sepertinya kakiku tertembak tiga kali,” kata Viet dengan suara kering.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5214_musim_kemarau, 'ここは今、乾季の真っ最中です。', 'Saat ini sedang puncak musim kemarau di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5214_musim_kemarau, 'フィリピンに旅行に行くなら乾季がオススメですよ。', 'Saya merekomendasikan pergi saat musim kemarau jika Anda berencana bepergian ke Filipina.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5214_musim_kemarau, 'この地域では、乾季が5月から10月まで続きます。', 'Di wilayah ini, musim kemarau berlangsung pada bulan Mei hingga Oktober.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5214_musim_kemarau, 'いつもはこの時期は既に乾季になっているが、今年は未だ雨が降り続けている。', 'Saat ini biasanya sudah musim kemarau, namun tahun ini hujan masih terus turun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5215_kanpai, 'みんなで乾杯しましょう！', 'Mari kita bersulang bersama!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5215_kanpai, '三年ぶりの再会に、乾杯！', 'Selamat untuk reuni pertama kita setelah tiga tahun!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5215_kanpai, '少しおくれるので、先に乾杯して始めてください。', 'Aku akan sedikit terlambat, jadi silakan kanpai tanpa aku dan mulai pestanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5215_kanpai, 'さあ、乾杯、乾杯！それ、ぐいと一杯、飲み干したまえ。', 'Baiklah, bersorak bersorak! Hei, angkat bicara!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5216_untuk_mendesak, '先生は生徒にもっと質問をするよう促した。', 'Guru mendorong siswa untuk bertanya lebih banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5216_untuk_mendesak, 'そのニュースが人々に行動を促すきっかけとなったようです。', 'Nampaknya berita tersebut mendorong masyarakat untuk mengambil tindakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5216_untuk_mendesak, '医者は禁煙を促されたが、なかなか実行に移せなかった。', 'Dokter mendesak saya untuk berhenti merokok, namun saya kesulitan untuk menindaklanjutinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5216_untuk_mendesak, 'このキャンペーンは、環境に優しい行動を促すことを目的としています。', 'Kampanye ini bertujuan untuk mempromosikan tindakan ramah lingkungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5217_keinginan, '一週間経っても電話がかかってこないから、催促のメールを入れるつもりです。', 'Sudah seminggu dan saya masih belum menerima panggilan, jadi saya berencana mengirim email tindak lanjut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5217_keinginan, '金子さんにお金を返してくれと催促されましたが、借りた覚えがありません。', 'Kaneko-san mendesakku untuk mengembalikan uang itu, tapi aku tidak ingat pernah meminjamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5217_keinginan, 'うちのネコがご飯を催促してくるときの顔が可愛すぎるんで、見てください。', 'Wajah kucingku saat meminta makanan terlalu lucu—lihatlah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5217_keinginan, 'どうすれば顧客に未払分の支払手続きを丁寧かつ強く催促することができるのでしょうか。', 'Bagaimana saya bisa menekan pelanggan untuk mengambil tindakan atas keterlambatan pembayarannya dengan sopan namun juga tegas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5218_melihat, 'ついに、最終催告を送り付けられてしまいました。', 'Saya akhirnya menerima pemberitahuan terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5218_melihat, '催告に応じることが出来ず、クレジットカードが止められてしまった。', 'Karena saya tidak dapat menanggapi pemberitahuan pembayaran, kartu kredit saya ditangguhkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5218_melihat, '住宅ローンが払えなかったため、催告書がきてしまいました。', 'Saya menerima pemberitahuan permintaan karena saya tidak dapat membayar hipotek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5218_melihat, 'サラ金から、借金の返済を求める催告状が何度も何度も届いています。', 'Sebuah perusahaan kredit konsumen berulang kali mengirimkan surat pemberitahuan kepada saya, meminta saya membayar kembali utang saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5219_tuan_rumah, '芸能人主催のゴルフ大会ってどんなのなんだろう？', 'Entah seperti apa turnamen golf yang diselenggarakan oleh seorang selebriti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5219_tuan_rumah, 'このイベントは、地元の商工会が主催しています。', 'Acara ini diselenggarakan oleh kamar dagang setempat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5219_tuan_rumah, '実はこのコンサートの主催は、とある有名な音楽プロデューサーなんです。', 'Sebenarnya pembawa acara konser ini adalah produser musik ternama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5219_tuan_rumah, '競馬場の芝についてのシンポジウムが市当局の主催で開かれた。', 'Simposium rumput arena pacuan kuda dapat terlaksana karena sponsor pemerintah kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5220_untuk_menghancurkan_sesuatu, '子供が、ガラス製のワニカニの置物を壊してしまったんです。', 'Anak saya tidak sengaja memecahkan kaca hiasan WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5220_untuk_menghancurkan_sesuatu, '関係を壊したくなかったので、言葉選びには気をつけました。', 'Saya berhati-hati dengan pilihan kata-kata saya karena saya tidak ingin merusak hubungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5220_untuk_menghancurkan_sesuatu, '無理なダイエットを続けると、体を壊す可能性があります。', 'Melanjutkan diet ekstrem dapat membahayakan kesehatan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5220_untuk_menghancurkan_sesuatu, 'この河豚を自分なりに料理してみたんですが、お腹を壊してしまいました。', 'Saya memasak ikan buntal ini dengan cara saya sendiri dan itu membuat perut saya sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5221_penghancuran_lengkap, '全壊したビルの中から何か出てきました。', 'Sesuatu keluar dari gedung yang hancur total.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5221_penghancuran_lengkap, 'マイホームを持っていたんですが、台風で全壊しちゃったんですよ。', 'Saya punya rumah sendiri, tapi hancur total karena topan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5221_penghancuran_lengkap, 'トルネードで自宅はほぼ全壊ですが、家族はみんな元気です。', 'Rumah kami hampir hancur total akibat angin puting beliung, namun keluarga saya semuanya selamat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5221_penghancuran_lengkap, 'この地震で被害を受けた家のうち、全壊家屋は全部で835戸だった。', 'Di antara rumah yang terkena dampak gempa ini, jumlah rumah yang hancur total sebanyak 835 rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5222_runtuh, '今、『テロでロンドンブリッジ倒壊』のテロップが流れてきたよ！本当かな？', 'Saya baru saja melihat ticker berita yang mengatakan "Jembatan London runtuh karena serangan teror"! Mungkinkah itu benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5222_runtuh, '大地震の影響で東京タワーが倒壊するかもしれないとの報道があった。', 'Ada laporan bahwa Menara Tokyo mungkin runtuh akibat dampak gempa besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5222_runtuh, '消防隊は、倒壊したビルの中から少女を助け出した。', 'Tim pemadam kebakaran menyelamatkan seorang gadis dari gedung yang runtuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5222_runtuh, '私の祖父母の家はとても古いので、雪の重みで倒壊しかねません。	', 'Rumah kakek dan nenek saya sudah sangat tua sehingga bisa runtuh karena beban salju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5223_anak_perempuan, '私には娘が三人います。', 'Saya memiliki tiga anak perempuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5223_anak_perempuan, '松本さんのとこの娘さん、今年大学生になるんだって！', 'Saya mendengar putri Matsumoto akan menjadi mahasiswa tahun ini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5223_anak_perempuan, 'こんな時間に若い娘さんたちだけで歩いてたら危ないよ？', 'Berbahaya bagi remaja putri untuk berjalan-jalan pada malam hari seperti ini, tahu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5223_anak_perempuan, '「私の娘は人魚なんだ。」「ええっ、それってつまり、あんた魚と結婚したってことか？」', '"Putriku adalah putri duyung." "Whoa! Berarti kamu menikah dengan ikan?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5224_putri_tunggal, 'クララはゼーゼマン家の一人娘です。', 'Klara adalah putri tunggal keluarga Sesemann.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5224_putri_tunggal, '彼には一人娘がいます。', 'Dia memiliki seorang putri tunggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5224_putri_tunggal, '林さんは女手ひとつで一人娘を育てています。', 'Nona Hayashi membesarkan putri satu-satunya sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5225_agama, '彼はさまざまな宗教に関心があります。', 'Ia tertarik pada berbagai agama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5225_agama, '多くの人々にとって、宗教は生活の一部です。', 'Bagi banyak orang, agama adalah bagian dari kehidupan mereka sehari-hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5225_agama, '時々、ワニカニってカルト宗教みたいだと思うことがあります。', 'Terkadang, saya merasa WaniKani tampak seperti aliran sesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5225_agama, '彼女が、世界宗教会議の記録を取る書記を務めます。', 'Dia akan menjadi sekretaris yang mencatat transaksi pertemuan agama-agama dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5226_sekte, 'その会議には、あらゆる宗派の人々が集いました。', 'Orang-orang dari semua denominasi berkumpul pada pertemuan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5226_sekte, '仏教にはさまざまな宗派があります。', 'Ada berbagai sekte dalam agama Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5226_sekte, 'キリスト教といっても多くの宗派があって、それぞれ教義が少し違うんです。', 'Bahkan di dalam agama Kristen terdapat banyak denominasi, masing-masing denominasi dengan doktrin yang sedikit berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5227_sekte_zen, '禅宗では、心を無にして今に集中することを教えています。', 'Dalam Buddhisme Zen, mereka mengajarkan Anda untuk mengosongkan pikiran dan fokus pada saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5227_sekte_zen, '心を落ち着けるために、禅宗の寺に行って座禅をしてみました。', 'Untuk menenangkan pikiran, saya pergi ke kuil Zen dan mencoba meditasi Zen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5227_sekte_zen, '禅宗の教えに従って、彼はシンプルな生活を心がけています。', 'Mengikuti ajaran Buddha Zen, ia mencoba menjalani hidup sederhana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5228_perjamuan, '今度の宴会の幹事をすることになりました。', 'Saya akan menjadi penyelenggara perjamuan berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5228_perjamuan, '忘年会のための宴会場を予約しなくてはいけません。', 'Saya perlu memesan ruang perjamuan untuk pesta akhir tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5228_perjamuan, '仕事の締めくくりをつけてから、宴会に参加しました。', 'Saya bergabung dengan pesta makan malam setelah menyelesaikan pekerjaan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5228_perjamuan, '宴会で嫌な奴とお酒を飲むのは、会議で議事録を記録するより退屈な仕事だ。', 'Minum alkohol dengan seseorang yang tidak Anda sukai di pesta makan malam adalah tugas yang jauh lebih membosankan daripada mencatat jalannya pertemuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5229_perjamuan, '王子は、宴の最中に撃たれて死んだ。', 'Pangeran ditembak mati saat pesta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5229_perjamuan, 'こよいの宴は実に楽しいものですな。', 'Perjamuan malam ini sungguh menyenangkan bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5229_perjamuan, 'さぁ、宴じゃ宴じゃ！みんな、飲め飲め！', 'Baiklah, waktunya pesta! Semuanya, minumlah, minumlah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5230_tidak_sehat, '不健康なやり方でダイエットをするのはよした方がいい。', 'Anda sebaiknya tidak melakukan diet dengan cara yang tidak sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5230_tidak_sehat, '私も親になったから、これまでの不健康な生活を見直そうと思ってるんです。', 'Kini setelah saya menjadi orang tua, saya berpikir untuk mengevaluasi kembali gaya hidup saya yang tidak sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5230_tidak_sehat, 'この番組は暴力的で、不健康な内容が多いので子供には見せたくないんですよね。', 'Acara ini mengandung kekerasan dan berisi banyak konten yang tidak sehat, jadi saya tidak ingin anak-anak saya menontonnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5231_gugup, '社長のジョークに緊張の糸がほぐれました。', 'Lelucon presiden membantu meredakan ketegangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5231_gugup, '面接のときは、緊張で手汗が止まりませんでした。', 'Tanganku tidak berhenti berkeringat karena gugup selama wawancara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5231_gugup, '緊張感がただよう会場の中、彼女は静かに立ち上がった。', 'Di tengah ketegangan yang terlihat di ruangan itu, dia diam-diam berdiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5231_gugup, '「明日、就職の面接があるんで、ちょっと緊張してるんだよね。」「え〜そうなの？うまくいくといいね。」	', '"Aku ada wawancara kerja besok. Aku sedikit gugup." "Oh, benarkah? Baiklah, aku yakin kamu akan baik-baik saja."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5231_gugup, '仕事から来るストレスと緊張で、最近よく眠れないんです。', 'Saya mengalami kesulitan tidur akhir-akhir ini karena stres dan ketegangan pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5232_amarah, '私の怒りは三分以上続かない。', 'Kemurkaan-Ku tidak akan berlangsung lebih dari tiga menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5232_amarah, '直子は和希の言葉にとてつもない怒りを覚えた。', 'Naoko merasa sangat marah mendengar kata-kata Kazuki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5232_amarah, '怒りって、後からフツフツわいてくることが多いよね。', 'Kemarahan sering kali muncul secara perlahan setelah kejadian tersebut terjadi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5233_menakutkan, '暗い道を歩くのはちょっと怖いな。', 'Berjalan menyusuri jalan yang gelap agak menakutkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5233_menakutkan, '犬が苦手で、近づかれると怖いんです。', 'Saya tidak pandai menangani anjing, dan saya takut ketika mereka mendekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5233_menakutkan, 'あの映画、本当に怖かった！夜、一人で眠れなかったよ。', 'Film itu sangat menakutkan! Saya tidak bisa tidur sendirian di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5233_menakutkan, '火星でマグニチュード7の地震が起きたんだってさ。怖いね！', 'Tampaknya gempa berkekuatan 7 skala Richter terjadi di Mars. Menakutkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5234_teror, '彼女は恐怖のあまり、何も言えなくなった。', 'Dia tidak bisa mengatakan apa pun karena ketakutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5234_teror, 'いやー南先輩、先輩に突然呼び出されたときは、恐怖でしかなかったですよ。', 'Oh, Minami-senpai, saat kamu tiba-tiba memanggilku, aku hanya dipenuhi rasa takut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5234_teror, '高い場所が苦手なので、CNタワーに上った時は、恐怖で足がすくみました。', 'Saya takut ketinggian, jadi ketika saya naik ke Menara CN, kaki saya membeku ketakutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5234_teror, 'ヤクザにお釣りが百円足りないと言われた時に、とてつもない恐怖を感じました。', 'Ketika seorang yakuza memberi tahu saya bahwa uang kembalian yang saya berikan kepadanya hanya 100 yen, saya merasakan ketakutan yang luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5235_fobi, '私も父も高所恐怖症です。', 'Saya dan ayah sama-sama takut ketinggian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5235_fobi, '閉所恐怖症のため、エレベーターに乗るのが苦手です。', 'Saya penderita claustrofobia, jadi saya kesulitan naik lift.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5235_fobi, '上司からパワハラを受けたせいで、対人恐怖症になってしまいました。', 'Karena pelecehan kekuasaan yang saya alami dari atasan saya, saya mengalami kecemasan sosial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5235_fobi, 'ワニカニのやり過ぎで漢字を覚えたのはいいけれど、ワニとカニ恐怖症になってしまった。', 'Saya terlalu banyak mempelajari kanji di WaniKani, dan meskipun mempelajari kanji itu menyenangkan, saya akhirnya mengembangkan fobia terhadap aligator dan kepiting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5236_menakutkan, '恐ろしい夢を見て、真夜中に目が覚めた経験はありませんか？', 'Pernahkah Anda terbangun di tengah malam setelah mengalami mimpi buruk?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5236_menakutkan, 'あんなに恐ろしい目をしたビエトは見たことがありません。', 'Aku belum pernah melihat Viet dengan tatapan mata yang begitu menakutkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5236_menakutkan, '我々は、戦争の恐ろしさを忘れてはいけません。', 'Kita tidak boleh melupakan teror perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5237_satu_piala, '「ちょっと一杯飲みに行かない？」「いいね。」', '"Ayo kita minum." "Kedengarannya seperti sebuah rencana."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5237_satu_piala, '子供の時に「一杯のかけそば」という映画を一度だけ観たことがあります。', 'Ketika saya masih kecil, saya hanya menonton film berjudul "Satu Cangkir Mie Soba dalam Kaldu" sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5237_satu_piala, '次年度の予算のことで頭が一杯な状態だったので、その夜は一杯もお酒を飲む気にはなれなかった。', 'Pikiranku penuh dengan anggaran tahun berikutnya sehingga aku tidak ingin minum satu pun malam itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5238_dua_piala, '浜辺で冷たいレモネードを二杯飲んだ。', 'Saya minum dua gelas limun dingin di pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5238_dua_piala, 'このソースに小さじ二杯のオリーブオイルを混ぜると、まろやかになります。', 'Mencampurkan dua sendok teh minyak zaitun ke dalam saus ini akan membuatnya lebih halus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5238_dua_piala, 'ラーメンを二杯も食べてしまって、お腹がいっぱいです。', 'Aku makan dua mangkuk ramen, dan sekarang aku kenyang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5238_dua_piala, '電車が運行を見合わせている間に、コーヒーを二杯飲みました。	', 'Saya minum dua cangkir kopi saat pengoperasian kereta api dihentikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5239_tiga_piala, 'ここで、大さじ三杯のハチミツを入れます。', 'Sekarang, tambahkan tiga sendok makan madu di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5239_tiga_piala, 'この店のコーンポタージュが美味しすぎて、三杯も飲んでしまった。', 'Sup krim jagung di restoran ini sangat lezat sehingga saya akhirnya makan tiga mangkuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5239_tiga_piala, '私、一日にコーヒーを三杯飲むのが習慣になってるんですが、これってカフェイン中毒だと思いますか？', 'Saya punya kebiasaan minum tiga cangkir kopi sehari—apakah menurut Anda itu kecanduan kafein?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5239_tiga_piala, 'その時ちょっとへこみ気味だったもんで、ビールを三杯一気飲みしちゃったんだよね。', 'Saya sedang depresi saat itu, jadi saya menenggak tiga gelas bir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5240_papan, 'ノコギリで木の板を切りました。', 'Saya memotong papan kayu dengan gergaji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5240_papan, 'このプラスチックの板、何に使うの？', 'Untuk apa Anda menggunakan papan plastik ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5240_papan, 'この置物に合う大理石の板をさがしています。', 'Saya mencari papan marmer yang cocok dengan ornamen ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5240_papan, '2chの野球板に書き込みをしたんですが、板違いだと言われてしまいました。', 'Saya memposting beberapa komentar di forum tentang bisbol di 2chan, tapi saya diberitahu bahwa itu adalah papan yang salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5241_papan_nama, 'このレストランの看板は大きくてよく目立ちます。', 'Papan nama restoran ini besar dan sangat menarik perhatian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5241_papan_nama, '台風で看板が飛ばされてしまいました。', 'Baliho itu terhempas oleh topan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5241_papan_nama, '彼女はこの店の看板です。', 'Dia adalah wajah toko ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5241_papan_nama, '酔っぱらいの男が殴ったせいで、お店の看板がへこんでいるんです。', 'Ada penyok di papan nama toko karena ada orang mabuk yang meninjunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5242_untuk_mencapai_dasarnya, '株の買い時を見極めるのは難しい。', 'Sulit untuk mengidentifikasi waktu terbaik untuk membeli saham.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5242_untuk_mencapai_dasarnya, '自分のこの目で真実を見極めたいんです。', 'Saya ingin melihat kebenaran dengan mata kepala saya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5242_untuk_mencapai_dasarnya, '彼の能力を見極めるには、もっと仕事を任せてみるべきだ。', 'Untuk benar-benar menilai kemampuannya, Anda harus memberinya lebih banyak tugas untuk ditangani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5242_untuk_mencapai_dasarnya, 'コウイチは、辞書の表紙を見ただけで、その辞書の索引が良い索引か悪い索引かを見極めることができる。', 'Koichi dapat mengetahui apakah sebuah kamus memiliki indeks yang baik atau buruk hanya dengan melihat sampulnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5243_sangat, 'この問題は極めて重要です。', 'Masalah ini sangatlah penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5243_sangat, 'この薬は副作用が極めて少ないです。', 'Obat ini memiliki efek samping yang sangat sedikit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5243_sangat, '我々は、極めて危険な状況に直面しています。', 'Kita sedang menghadapi situasi yang sangat berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5243_sangat, '君がこの問題の解決方法について具体的には何も考えていないというのは、極めて明白な事実だ。', 'Sangat jelas sekali bahwa Anda tidak tahu bagaimana kami dapat mengatasi masalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5244_eropa_dan_amerika, '日本の食べ物は欧米でも人気があります。', 'Makanan Jepang populer bahkan di Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5244_eropa_dan_amerika, 'このホテルの主なお客様は、欧米の方々なんです。', 'Pelanggan utama hotel ini adalah orang Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5244_eropa_dan_amerika, '「欧米」に含まれる国を全部挙げることができますか。', 'Bisakah Anda menyebutkan semua negara yang termasuk dalam "Eropa dan Amerika"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5244_eropa_dan_amerika, '欧米でピンクのバラを栽培している所がないか探しているんですが。', 'Saya sedang mencari tempat di Eropa dan Amerika yang menanam mawar merah muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5245_eropa_tengah, '中欧の国だったら、チェコに行ってみたいです。', 'Di antara negara-negara Eropa Tengah, saya ingin mengunjungi Republik Ceko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5245_eropa_tengah, 'ドイツは西欧だと思っていたんですが、中欧の国の一つだったんですね。', 'Tadinya saya mengira Jerman adalah bagian dari Eropa Barat, padahal sebenarnya Jerman adalah salah satu negara Eropa Tengah, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5245_eropa_tengah, 'この夏は、中欧をひとり旅してきました。', 'Musim panas ini, saya melakukan perjalanan solo melintasi Eropa Tengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5245_eropa_tengah, '中欧を旅してみたいなと随分長い間思っていたんですよ。', 'Saya sudah lama ingin berkeliling Eropa Tengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5246_jepang_dan_eropa, '水野さんは仕事で日欧を行き来することが多い。', 'Mizuno-san sering bolak-balik dari Jepang ke Eropa untuk pekerjaannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5246_jepang_dan_eropa, '日欧間の時差があるので、会議の時間を調整するのが大変です。', 'Karena ada perbedaan waktu antara Jepang dan Eropa, sulit untuk mengoordinasikan pertemuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5246_jepang_dan_eropa, '来月、日欧文化交流フェスティバルが開催されます。', 'Festival pertukaran budaya Jepang-Eropa akan diadakan bulan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5246_jepang_dan_eropa, '日欧貿易に関する会議は、司会者の不在によって横道に逸れてしまった。', 'Pertemuan mengenai perdagangan antara Eropa dan Jepang teralihkan karena ketidakhadiran moderator.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5247_edo, '江戸時代は約260年間続きました。', 'Zaman Edo berlangsung sekitar 260 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5247_edo, '江戸前ずしの特徴を教えてください。', 'Tolong beritahu saya ciri-ciri sushi ala Edo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5247_edo, 'この博物館では江戸時代の町の様子を再現したジオラマが見ものです。', 'Hal yang paling menarik dari museum ini adalah diorama yang menggambarkan kembali seperti apa kota-kota pada zaman Edo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5247_edo, 'だらだらしてないで、さっさと二階に行って宿題をしなさい。日本の江戸時代についてレポートを書かないといけないって言ってたでしょ！', 'Berhentilah menyia-nyiakan dan naik ke atas dan kerjakan pekerjaan rumahmu. Kamu bilang kamu harus menulis esai tentang zaman Edo di Jepang, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5248_masuk, '静かな入り江で泳ぎました。', 'Kami berenang di teluk yang tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5248_masuk, 'この入り江にはイルカがよくあそびに来ると入江さんが言っていた。', 'Pak Irie menceritakan kepada saya bahwa lumba-lumba sering mengunjungi teluk ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5248_masuk, 'バルト海の北の入り江で知らない人からプロポーズされたんですが、とてもロマンチックだったのでつい承諾してしまったんです。', 'Saya dilamar oleh seseorang yang tidak saya kenal di sebuah teluk di utara Laut Baltik. Itu sangat romantis sehingga aku tidak bisa menahan diri untuk menerimanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5249_untuk_menambahkan_sesuatu_ke, 'アイスクリームにミントの葉っぱを添えると、少しオシャレな感じになりますよ。', 'Menghias es krim dengan daun mint memberikan sedikit sentuhan gaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5249_untuk_menambahkan_sesuatu_ke, 'プレゼントにメッセージカードを添えて渡しました。', 'Saya memberikan hadiah dengan kartu pesan terlampir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5249_untuk_menambahkan_sesuatu_ke, '付き合ってもないのに、腰に手を添えてくる男性ってどう思いますか？', 'Apa pendapatmu tentang pria yang meletakkan tangannya di pinggangmu meski kamu tidak sedang menjalin hubungan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5250_lampiran, 'コウイチの予定につきましては、添付のスケジュールをご確認ください。', 'Adapun rencana Koichi, silakan periksa jadwal terlampir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5250_lampiran, 'WaniKaniのメールには、よく面白いGIFが添付されています。', 'Email WaniKani sering kali disertai GIF lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5250_lampiran, 'グリーンカード申請に必要な添付書類のリストはどこにありますか。', 'Dimana daftar dokumen terlampir yang diperlukan untuk permohonan green card?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5250_lampiran, '人事部長様、 恐れ入りますが、このEメールに添付された履歴書にお目通し頂けますでしょうか。お忙しいとは存じますが、よろしくお願い申し上げます。', 'Manajer perekrutan yang terhormat, silakan lihat resume yang terlampir pada email ini. Terima kasih atas waktu Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5251_sangat_kuat, '初めて会った時の宮崎さんの印象は、とても強烈でした。', 'Kesan pertamaku terhadap Miyazaki-san saat kami bertemu sangat mencolok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5251_sangat_kuat, '真夏の日本の日差しは強烈で、ヒリヒリして痛いくらいでした。', 'Sinar matahari pertengahan musim panas di Jepang begitu terik hingga terasa perih dan nyeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5251_sangat_kuat, '彼の強烈な発言で、会場の空気が一気に凍りつきました。', 'Ucapan mengejutkannya langsung membekukan suasana di dalam ruangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5251_sangat_kuat, 'ひっさびさにタバコ吸ったら、強烈なヤニクラくらっちまったよ。', 'Saya merokok untuk pertama kalinya setelah sekian lama, dan saya sangat terpukul oleh dengungan nikotin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5252_garang, '彼は猛烈なスピードで仕事を終わらせました。', 'Dia menyelesaikan pekerjaannya dengan kecepatan tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5252_garang, '彼女は猛烈に勉強して、試験に合格しました。', 'Dia belajar dengan sungguh-sungguh dan lulus ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5252_garang, '昨日のライブ、猛烈に楽しかった！', 'Konser kemarin sangat menyenangkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5252_garang, 'このプロジェクトのリーダーを買って出たことを、今猛烈に後悔しています。', 'Saya sangat menyesal telah mengajukan diri menjadi pemimpin proyek ini sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5253_kuat, 'そのバンドの熱烈なファンが会場をいっぱいにしていた。', 'Tempat tersebut dipenuhi oleh penggemar band yang penuh semangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5253_kuat, '彼からの熱烈なラブレターに感動して、付き合うことにしたんです。', 'Saya tersentuh oleh surat cintanya yang berapi-api, dan memutuskan untuk mulai berkencan dengannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5253_kuat, '彼はその作家の作品を熱烈に支持している。', 'Dia adalah pendukung kuat karya penulis itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5253_kuat, 'その女性は、「トーフグの熱烈なファンなんです」と言って、コウイチに熱烈なキスをした。', 'Wanita itu berkata, "Saya penggemar berat Tofugu," dan memberikan ciuman penuh gairah kepada Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5254_garang, '彼は猛勉強して、大学に合格しました。', 'Dia belajar dengan giat dan lulus ujian masuk universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5254_garang, '猛ふぶきで雪が三メートル程積もりました。', 'Badai salju yang dahsyat menumpuk salju setinggi sekitar tiga meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5254_garang, 'あの犬、急に猛ダッシュしてきたからびっくりしたよ！', 'Anjing itu tiba-tiba berlari ke arahku dengan ganas, dan aku terkejut!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5254_garang, 'バイクが猛スピードで突っ込んできた。', 'Sepeda motor itu melaju ke depan dengan kecepatan sangat tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5255_untuk_menyingkat, '日本の若者はすぐ単語やフレーズを略したがる。', 'Anak muda Jepang cenderung menyingkat kata dan frasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5255_untuk_menyingkat, '略さずにフルネームを書いてください。', 'Silakan tulis nama lengkap Anda tanpa menyingkatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5255_untuk_menyingkat, '略して話されても部外者の私には何のことか全然分かりません。', 'Sebagai orang luar, saya tidak mengerti apa yang Anda bicarakan ketika Anda berbicara dalam bentuk singkatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5255_untuk_menyingkat, '恐れ入りますが、手続きを略すことはできないんです。', 'Saya minta maaf, tapi kami tidak bisa melewatkan prosedurnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5256_menghilangkan, '日本語の会話では、必要なとき以外は文法上の主語を省略するのがデフォルトです。', 'Dalam percakapan bahasa Jepang, merupakan default untuk menghilangkan subjek tata bahasa kecuali jika diperlukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5256_menghilangkan, 'ここは大切なポイントだから省略しないで全部書くように。', 'Ini adalah poin penting, jadi jangan hilangkan apapun dan tulis semuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5256_menghilangkan, '賞味期限の所に「Ma」って書いてあるんだけど、「March」の省略かな、それとも「May」の省略かな？', 'Ada tulisan "Ma" di tanggal kadaluwarsanya, tapi aku penasaran apakah ini singkatan dari "Maret" atau "Mei".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5256_menghilangkan, '時間の都合上、今は詳細については省略せざるを得ませんが、また後ほどご説明させて頂きます。', 'Saya harus menghilangkan detailnya untuk saat ini karena keterbatasan waktu, tetapi saya akan menjelaskannya kepada Anda nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5257_singkatan, '「高校」は「高等学校」の略語です。', '"Kōkō" adalah singkatan dari "kōtōgakkō (sekolah menengah atas)."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5257_singkatan, '竹下さんはクリエイティブな略語を使って話すのが大好きです。', 'Takeshita-san suka berbicara menggunakan singkatan yang kreatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5257_singkatan, '最近の若者が使う略語は、難しすぎてよく分かりません。', 'Saya tidak mengerti singkatan yang digunakan anak muda akhir-akhir ini. Itu terlalu sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5257_singkatan, '略語辞典を貸してもらえませんか？', 'Bolehkah saya meminjam kamus akronim dan singkatan Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5258_diagram_kasar, 'あなたの家からうちまでの略図をかいて、メールでお送りします。', 'Saya akan menggambar peta kasar dari rumah Anda ke rumah saya dan mengirimkannya melalui email kepada Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5258_diagram_kasar, 'あなたが作った略図をちょっと見せてもらえませんか？', 'Bisakah Anda menunjukkan diagram kasar yang Anda buat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5258_diagram_kasar, '略図だけでは不安なので、念のためGPSも使います。', 'Saya merasa tidak nyaman hanya dengan peta kasarnya, jadi saya akan menggunakan GPS juga, untuk berjaga-jaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5259_garis_besar_luas, '大略でいいので、会議の内容を教えてくれませんか？', 'Ringkasan kasarnya saja sudah cukup, jadi bisakah Anda memberi tahu saya tentang apa pertemuan itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5259_garis_besar_luas, 'まずは事件の大略を説明してくれないか？', 'Bisa dijelaskan dulu garis besar kejadiannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5259_garis_besar_luas, '彼の話の大略は理解できたけど、細かい部分はまだよく分かりません。', 'Saya memahami inti ceritanya, tetapi saya masih belum memahami detailnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5259_garis_besar_luas, 'この企画の大略は決まったので、次は詳細を詰めていきましょう。', 'Garis besar proyek ini telah diputuskan, jadi mari kita kerjakan detailnya selanjutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5260_sakit, '特に痛みはありません。', 'Tidak ada rasa sakit secara khusus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5260_sakit, '子供には人の痛みが分かるような大人に育ってほしいです。', 'Saya berharap anak saya tumbuh menjadi orang dewasa yang memahami penderitaan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5260_sakit, '胸にしこりみたいなものと痛みがあるんだけど、乳がん検査した方がいいかな？', 'Saya mempunyai titik keras dan nyeri di payudara saya. Haruskah saya memeriksakannya untuk kanker payudara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5260_sakit, '俺の伯母さん、クソしてる時に胸にするどい痛みが走って、119に電話したんだって。', 'Rupanya bibi saya merasakan sakit yang menusuk di dadanya saat buang air besar dan menelepon 119.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5261_penawar_rasa_sakit, '頭痛がひどいので、痛み止めを飲みました。', 'Saya mengalami sakit kepala yang parah, jadi saya minum obat penghilang rasa sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5261_penawar_rasa_sakit, '痛み止めが効いてきて、少し楽になりました。', 'Obat penghilang rasa sakitnya mulai bekerja, dan aku merasa sedikit lebih baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5261_penawar_rasa_sakit, '薬局で痛み止めを買ってきてもらえませんか？', 'Bisakah Anda membelikan saya obat pereda nyeri dari apotek?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5261_penawar_rasa_sakit, '彼は痛み止めを飲んで、また畑を耕し始めた。', 'Dia meminum obat penghilang rasa sakit dan terus membajak sawah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5263_untuk_tidur, '最近ストレスでよく眠れないんです。', 'Hari-hari ini, saya tidak bisa tidur nyenyak karena stres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5263_untuk_tidur, '彼女は電気をつけながら眠るのが好きです。', 'Dia suka tidur dengan lampu menyala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5263_untuk_tidur, 'もちろん、眠ろうと努力はするけど、飛行機の中ってなかなか眠れないじゃないですか？', 'Tentu saja, saya mencoba untuk tidur, tetapi sulit untuk tertidur di pesawat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5263_untuk_tidur, '「ぐっすり眠れた？」「ああ。爆睡したよ。」', '"Apakah kamu tidur nyenyak?" "Ya, aku jatuh."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5264_ramuan_tidur, '童話には、眠り薬を使って人を眠らせる話がよく出てきます。', 'Ramuan tidur seringkali ditampilkan dalam dongeng untuk membuat orang tertidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5264_ramuan_tidur, '大変！眠り薬が入ったビンを無くしてしまったわ！', 'Oh tidak! Saya kehilangan botol berisi obat tidur!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5264_ramuan_tidur, '男はニヤリと笑って、ふところから眠り薬を取り出しました。', 'Pria itu menyeringai dan mengeluarkan obat tidur dari sakunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5266_untuk_akumulasi, '雪はふるんですが、あまり積もることはないです。', 'Turun salju, tapi biasanya tidak banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5266_untuk_akumulasi, '年末に積もりに積もったホコリを全部そうじするつもりです。', 'Saya berencana untuk membersihkan semua debu yang menumpuk sepanjang tahun di akhir tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5266_untuk_akumulasi, '「ちりも積もれば山となる」って言うし、毎日コツコツ頑張るよ！', 'Mereka mengatakan "sedikit demi sedikit, debu menjadi gunung", jadi saya akan terus bekerja keras setiap hari!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5266_untuk_akumulasi, '長年積もりに積もった不満が、一気にあふれ出しちゃったんです。', 'Rasa frustrasi yang menumpuk selama bertahun-tahun tiba-tiba meluap seketika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5267_daerah, '長方形と正方形の面積を求める方法は同じですか。', 'Apakah cara menghitung luas persegi panjang dan persegi sama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5267_daerah, 'コウイチの家の庭の面積はどれくらいですか？', 'Berapakah luas pekarangan rumah Koichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5267_daerah, '彼のおでこの面積は100平方メートルある。', 'Luas keningnya 100 meter persegi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5268_volume, 'この立方体の体積を求めなさい。', 'Temukan volume kubus ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5268_volume, '水の体積は温度によって変わることがあります。', 'Volume air dapat berubah tergantung suhu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5268_volume, '直方体の体積は、「たて×横×高さ」、立方体の体積は、「１辺×１辺×１辺」で計算できます。', 'Volume prisma persegi panjang dapat dihitung sebagai "panjang × lebar × tinggi", dan volume kubus dapat dihitung sebagai "sisi × sisi × sisi".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5268_volume, '父さんにガレージの体積を測るように言われたんだけど、理由は知らないよ。何か変だよね。', 'Ayah saya menyuruh saya mengukur volume garasi kami, tapi saya tidak tahu kenapa. Sepertinya agak aneh bagiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5269_pencarian, '後でネットで検索してみるよ。	', 'Saya akan mencarinya di Internet nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5269_pencarian, '私がよく利用する検索エンジンはグーグルです。', 'Mesin pencari yang paling sering saya gunakan adalah Google.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5269_pencarian, 'この本には検索しやすいように索引がついている。', 'Buku ini memiliki indeks untuk memudahkan referensi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5269_pencarian, 'こんなにたくさんの料理本を持っているのに、結局クックパッドで検索しちゃうんですよね。', 'Saya punya banyak buku masak, tapi akhirnya saya mencari di Cookpad.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5270_indeks, '索引の見方が分かりません。', 'Saya tidak tahu cara melihat indeks.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5270_indeks, '索引を引いた方が速いんじゃない？', 'Bukankah akan lebih cepat jika mencarinya di indeks?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5270_indeks, '索引にはすべての用語がアルファベット順に並んでいます。', 'Semua istilah dalam indeks diurutkan berdasarkan abjad.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5270_indeks, '英語索引も付けた方がいいんじゃないかな。', 'Kita harus membuat indeks bahasa Inggris juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5271_mendesak, '父は緊急手術を受けることになりました。', 'Ayah saya harus menjalani operasi darurat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5271_mendesak, '緊急の用事ができたので、すぐに帰らなければならなくなってしまいました。', 'Ada masalah mendesak yang muncul, jadi saya harus segera pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5271_mendesak, '緊急連絡先として、家族以外の方の電話番号も書いていただく必要があります。', 'Kami juga ingin Anda memberikan nomor telepon untuk kontak darurat yang bukan anggota keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5271_mendesak, '緊急地震速報を携帯で受信した三秒後に、地震が起きました。', 'Tiga detik setelah menerima laporan darurat gempa di ponsel saya, gempa terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5272_tenggat_waktu, '締切はいつですか？', 'Kapan batas waktunya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5272_tenggat_waktu, '申込の締切日は三日後です。', 'Batas waktu pendaftaran adalah tiga hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5272_tenggat_waktu, 'このままじゃ締切に間に合わないかもしれない。', 'Kalau terus begini, aku mungkin tidak bisa memenuhi tenggat waktunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5272_tenggat_waktu, 'うまく締切を明日まで延ばせたの？', 'Apakah Anda beruntung karena menunda tenggat waktu hingga besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5273_untuk_mengencangkan, 'このシートベルトは自動的に締まってくれます。', 'Sabuk pengaman ini mengencang dengan sendirinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5273_untuk_mengencangkan, '大西さんの体はよく締まっていますね〜。', 'Tubuh Pak Onishi kencang sekali ya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5273_untuk_mengencangkan, '初めての管理職ということで、身の引き締まる思いをしています。', 'Ini adalah posisi manajerial pertama saya dan saya sangat tegang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5274_menteri, '大臣の発言がニュースで大きく取り上げられました。', 'Pernyataan menteri tersebut diberitakan secara luas di berita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5274_menteri, '財務大臣が来年度の予算案を発表しました。', 'Menteri Keuangan mengumumkan rencana anggaran tahun depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5274_menteri, 'お言葉ですが、大臣は、国民の声をもっとしっかりと聞くべきだと思います。', 'Dengan segala hormat, Menteri, saya yakin Anda harus mendengarkan lebih cermat suara rakyat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5274_menteri, '彼女は大臣たちに会議の前に資料を配るのを忘れてしまったために、首になっちゃったんだよ。', 'Dia dipecat karena lupa menyerahkan dokumen kepada anggota kabinet sebelum rapat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5275_navigasi, 'どこで空中航法を学んだんですか。', 'Di mana Anda belajar navigasi udara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5275_navigasi, '私のおばあちゃんは、飛行船の航法計算ができるんです。', 'Nenek saya bisa melakukan perhitungan navigasi untuk kapal udara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5275_navigasi, 'この機体の後ろのところに航法士が乗ってナビしてたんだって。', 'Saya mendengar bahwa navigator biasa duduk di belakang pesawat ini untuk melakukan navigasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5275_navigasi, '天則航法を学んでおいたおかげで迷わずに港に着くことができました。', 'Berkat pengetahuan saya tentang navigasi angkasa, saya bisa sampai di pelabuhan tanpa tersesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5276_penerbangan, '私は日本航空大学の航空工学科で、航空工学について学びました。', 'Saya belajar teknik dirgantara di Departemen Teknik Dirgantara di Universitas Penerbangan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5276_penerbangan, 'アメリカから羽田空港の航空路線が増えてより便利になりました。', 'Jumlah rute penerbangan dari Amerika ke Bandara Haneda bertambah dan membuat perjalanan menjadi lebih nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5276_penerbangan, '私はいつもこのアプリを使って格安航空券をさがしています。', 'Saya selalu menggunakan aplikasi ini untuk mencari tiket pesawat murah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5276_penerbangan, 'あの航空会社は四月に新路線を増やす予定だ。', 'Perusahaan penerbangan tersebut menambahkan rute baru pada bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5277_penerbangan_tanpa_henti, 'この船は神戸港に直航します。', 'Kapal ini sedang dalam pelayaran langsung menuju Pelabuhan Kobe.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5277_penerbangan_tanpa_henti, '子供がまだ小さいのでできれば直航の飛行機で行きたいと思っています。', 'Anak-anak saya masih kecil, jadi saya ingin mengambil penerbangan langsung jika memungkinkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5277_penerbangan_tanpa_henti, 'この便はポートランドから東京まで直航せず、途中でアラスカに寄港します。	', 'Penerbangan ini tidak berangkat langsung dari Portland ke Tokyo; itu berhenti di Alaska di sepanjang jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5278_distrik_perbelanjaan, 'この商店街には、昔ながらの小さなお店がたくさんあります。', 'Jalan perbelanjaan ini memiliki banyak toko tradisional kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5278_distrik_perbelanjaan, 'この商店街は観光客にも人気で、いつもにぎわっています。', 'Jalan perbelanjaan ini populer di kalangan wisatawan dan selalu ramai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5278_distrik_perbelanjaan, '大型店の出店で、昔ながらの商店街がどんどん姿を消しています。', 'Jalan perbelanjaan tradisional dengan cepat menghilang karena dibukanya toko-toko besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5278_distrik_perbelanjaan, 'ちょっと駅前の商店街のお肉屋さんでコロッケを３個ほど買ってきてくれない？', 'Bisakah Anda membeli sekitar tiga kroket dari toko daging di jalan perbelanjaan dekat stasiun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5280_untuk_memeriksa_seorang_pasien, '医者に診てもらったら、ただのカゼだと言われました。', 'Ketika dokter memeriksa saya, saya diberitahu bahwa itu hanya flu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5280_untuk_memeriksa_seorang_pasien, '子供がケガをしたので、すぐに診てもらいに行きました。', 'Anak saya terluka, jadi saya segera memeriksakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5280_untuk_memeriksa_seorang_pasien, 'この症状が続くなら、早めにお医者さんに診てもらったほうがいいよ。', 'Jika gejala ini terus berlanjut, sebaiknya segera periksakan ke dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5280_untuk_memeriksa_seorang_pasien, '赤ちゃんがちゃんと育っているのか、お医者さんに診てもらいたいんです。	', 'Saya ingin dokter memeriksa bayi saya untuk melihat apakah dia tumbuh dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5281_pemeriksaan_kesehatan, '今日は病院で診察を受けます。', 'Saya akan menjalani pemeriksaan kesehatan di rumah sakit hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5281_pemeriksaan_kesehatan, '診察中に、医者に色々と質問しました。', 'Saya menanyakan berbagai pertanyaan kepada dokter selama pemeriksaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5281_pemeriksaan_kesehatan, '診察代、いくらぐらいになるかな？', 'Entah berapa biaya kunjungan dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5281_pemeriksaan_kesehatan, '先生は診察の予定がみっちり詰まっています。', 'Dokter memiliki jadwal pemeriksaan kesehatan yang padat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5282_untuk_memasukkan, 'たくさんの服をスーツケースに無理やり詰めました。', 'Saya dengan paksa memasukkan banyak pakaian ke dalam koper.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5282_untuk_memasukkan, 'あんまり詰めすぎると、ファスナーが閉まらなくなるよ。', 'Jika Anda mengemasnya secara berlebihan, ritsletingnya tidak akan tertutup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5282_untuk_memasukkan, 'すいません、もう少し詰めてもらえませんか？', 'Permisi, bisakah Anda mendekat sedikit untuk memberi ruang bagi saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5282_untuk_memasukkan, 'お弁当にご飯を詰めといてくれない？', 'Bisakah kamu memasukkan nasi ke dalam kotak bento untukku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5285_meminta, 'お金に困ってヤミ金から借りたら、法外な金額が請求されて余計困りました。	', 'Saya sangat membutuhkan uang, jadi saya meminjam sebagian dari rentenir, namun kemudian mereka meminta jumlah yang sangat besar dari saya dan situasi saya menjadi lebih buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5285_meminta, '請求書の金額が間違っていると思うので、請求の取り消しをお願いしたいです。', 'Saya ingin meminta pembatalan tagihan ini karena saya yakin jumlahnya salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5285_meminta, '荷物の送料は後で請求可能だと言われています。', 'Saya diberi tahu bahwa nanti saya dapat mengklaim penggantian biaya pengiriman paket tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5288_untuk_mengambil, 'この案件を請けるのはリスクが高いですが、チャレンジしてみたいです。', 'Menjalankan proyek ini berisiko, namun saya ingin mencoba tantangan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5288_untuk_mengambil, '彼女は急な注文でも快く請けてくれることが多いので、本当に助かっています。', 'Dia sering kali bersedia menerima permintaan di saat-saat terakhir, dan ini sangat membantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5288_untuk_mengambil, 'お前の顔を立てるためだけにこのプロジェクトを請けたんだからな。', 'Saya hanya mengambil proyek ini agar Anda dapat menyelamatkan muka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5288_untuk_mengambil, '仕事を請けるときは、社員が喜んで受ける仕事かを考えて、請けるか決めるんです。売り上げは二の次にしないと、いい仕事はできませんからね。', 'Saat mengambil suatu pekerjaan, pertama-tama saya mempertimbangkan apakah karyawan akan senang melakukannya. Jika Anda tidak menempatkan keuntungan sebagai prioritas kedua, Anda tidak akan mampu menghasilkan pekerjaan yang berkualitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5289_persewaan, 'これは私のじゃなくて、貸し自転車なんです。', 'Ini bukan milikku, ini sepeda sewaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5289_persewaan, '今は貸し倉庫で寝泊まりしているんです。', 'Saya tinggal di gudang sewaan sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5289_persewaan, '今度の休暇は貸し別荘で過ごす予定です。', 'Kami berencana menghabiskan liburan mendatang di sebuah pondok sewaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5290_tersesat, '私は道に迷うのが得意です。', 'Saya pandai tersesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5290_tersesat, '初めての場所だったので、道に迷ってしまいました。', 'Ini adalah pertama kalinya saya berada di daerah tersebut, jadi saya tersesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5290_tersesat, '地図を見てたのに、結局道に迷ってしまった。', 'Saya sedang melihat peta, tetapi akhirnya saya tetap tersesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5290_tersesat, '道に迷ったけど、親切な人に助けてもらって無事に目的地に着きました。', 'Saya tersesat, tetapi orang yang baik hati membantu saya, dan saya tiba dengan selamat di tujuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5291_menteri_kabinet, '閣僚たちは、みんな反対しています。', 'Semua menteri kabinet menentang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5291_menteri_kabinet, '閣僚会議は月1回ですよ。', 'Rapat kabinet diadakan sebulan sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5291_menteri_kabinet, '内部告発者により、この件に関する閣僚間のやりとりが明るみに出ました。', 'Seorang whistleblower internal mengungkap komunikasi antar menteri kabinet terkait masalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5292_rapat_kabinet, 'これはもう閣議決定されたことです。', 'Hal ini sudah diputuskan dalam rapat kabinet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5292_rapat_kabinet, '昨日のデジタル相の閣議後の会見、見ましたか？', 'Apakah Anda menyaksikan konferensi pers Menteri Digital usai rapat kabinet kemarin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5292_rapat_kabinet, 'さっきの閣議では何が議題だったんだっけ？忘れちゃった。', 'Apa yang kita bahas pada rapat kabinet hari ini? saya lupa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5292_rapat_kabinet, '今回の閣議では閣僚のほぼ全員が反対に回った。', 'Sebagian besar anggota kabinet memberikan suara menentang pada rapat kabinet ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5293_pahlawan, '彼の行動はまさに英雄的だった。', 'Tindakannya sungguh heroik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5293_pahlawan, 'あいつは運だけで実力もないくせに英雄気取りで本当にムカつく。', 'Aku kesal pada pria yang hanya memiliki keberuntungan dan tidak memiliki kemampuan nyata, tapi berpura-pura seolah dia adalah seorang pahlawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5293_pahlawan, 'あのサッカー選手、あの試合の最後のゴールで一気に英雄あつかいされるようになったね。', 'Pemain sepak bola itu langsung diperlakukan seperti pahlawan setelah mencetak gol terakhir di pertandingan itu, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5294_korea_selatan, '私は去年、韓国を訪れました。', 'Saya mengunjungi Korea Selatan tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5294_korea_selatan, 'この韓国ドラマ、再放送されるのかな。', 'Entahlah apakah serial drama Korea ini akan ditayangkan ulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5294_korea_selatan, '韓国には日本語を学ぶ韓国人がたくさんいます。', 'Di Korea Selatan, banyak orang Korea yang belajar bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5295_jepang_dan_korea_selatan, 'この風習は日韓両国でよく見られます。', 'Kebiasaan ini sering terlihat di Jepang dan Korea.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5295_jepang_dan_korea_selatan, '日韓の歴史について学ぶことは、とても重要です。', 'Mempelajari sejarah antara Jepang dan Korea sangatlah penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5295_jepang_dan_korea_selatan, '日韓のサッカー試合はいつも熱い戦いになります。', 'Pertandingan sepak bola Jepang-Korea selalu berubah menjadi pertarungan yang intens.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5295_jepang_dan_korea_selatan, '1965年に日韓基本条約が締結されました。', 'Pada tahun 1965, Perjanjian Hubungan Dasar Jepang-Republik Korea mulai berlaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5305_keingintahuan, 'サトシ君は好奇心いっぱいですね！', 'Satoshi penuh rasa ingin tahu, bukan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5305_keingintahuan, '最近好奇心が刺激されるような経験してないなー。', 'Hari-hari ini, saya tidak mengalami apa pun yang merangsang rasa ingin tahu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5305_keingintahuan, 'ウォータースライダーでびしょびしょにぬれてしまい、他の人から好奇心に満ちた目で見られた。', 'Aku basah kuyup di seluncuran air, dan orang-orang menatapku dengan mata penasaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5305_keingintahuan, '子どもの頃、私は好奇心旺盛でした。', 'Ketika saya masih kecil, saya penuh dengan rasa ingin tahu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5306_nomor_ganjil, '奇数を3才の子どもに説明するのは難しいです。', 'Sulit menjelaskan bilangan ganjil kepada anak berusia tiga tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5306_nomor_ganjil, '何故か奇数の月はイベントが多い気がします。', 'Entah kenapa, saya merasa ada lebih banyak kejadian di bulan ganjil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5306_nomor_ganjil, '参加者の数が奇数だから、ペアになってもらうには一人足りないね。', 'Karena jumlah peserta ganjil, kami kekurangan satu orang untuk memasangkan semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5306_nomor_ganjil, '奇数とは2で割り切れない数字のことです。', 'Bilangan ganjil adalah bilangan yang tidak dapat dibagi dua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5307_aneh, '『世にも奇妙な物語』っていう番組、知ってる？', 'Tahukah Anda acara berjudul "Tales of the Unusual"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5307_aneh, '私の好きなマンガは『ジョジョの奇妙な冒険』です。', 'Manga favorit saya adalah "Petualangan Aneh JoJo".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5307_aneh, '遠くから聞こえてくる足音には、奇妙な規則性があり、それがかえって不気味だった。', 'Langkah kaki di kejauhan membawa ritme yang aneh, yang semakin menambah sifat menakutkan mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5391_tekstil, '京都で、お土産に美しい織物を買いました。', 'Di Kyoto, saya membeli sepotong kain yang indah sebagai oleh-oleh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5391_tekstil, 'この織物を使って何か作れないかな？', 'Bisakah kita membuat sesuatu dari kain tenun ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5391_tekstil, 'この地域は伝統的な織物の生産で有名です。', 'Wilayah ini terkenal dengan produksi tekstil tradisionalnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5391_tekstil, '政治学が専門なのですが、何故か織物会社に就職しました。', 'Saya mengambil jurusan politik, tapi entah bagaimana saya mulai bekerja di sebuah perusahaan kain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5393_amarah, '「よくそんな冷たいことが言えるよな！」と、コウイチは怒気をおびた声で言った。', '"Sungguh hal yang tidak berperasaan untuk dikatakan!" kata Koichi dengan nada marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5393_amarah, '相手は、こちらの怒気を感じたのか、急に静かになった。', 'Orang lain tiba-tiba terdiam, mungkin merasakan kemarahanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5393_amarah, 'なんとか怒気を隠そうとしたが、引きつった笑顔しか作れなかった。', 'Aku berusaha menyembunyikan amarahku, tapi aku hanya bisa tersenyum tegang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5393_amarah, '彼の鼻の穴は怒気を含んで膨らんでいる。', 'Lubang hidungnya membengkak karena marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5394_lapar, '腹が減ったなぁ。何か作ってよ。', 'saya lapar. Bisakah kamu membuatkan sesuatu untukku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5394_lapar, '腹が減ったよ〜！でもお弁当もう全部食べちゃった。', 'aku kelaparan! Tapi aku sudah memakan bentoku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5394_lapar, 'さっき食べたばっかなのに、もう腹が減ったの？', 'Anda baru saja makan beberapa saat yang lalu, dan Anda sudah lapar lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5394_lapar, '腹が減ったな。この件については、昼飯を食べながら話さないか？', 'saya lapar. Apakah Anda ingin melanjutkan ini saat makan siang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5395_memanggil_kucing, '電動招き猫のコンセント、	さしっぱなしにしないでね。', 'Jangan biarkan Maneki Neko listrik tersambung ke stopkontak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5395_memanggil_kucing, 'もっとワニカニが売れるように、トーフグオフィスに招き猫を買いました。', 'Kami membeli maneki neko untuk kantor Tofugu untuk meningkatkan penjualan WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5395_memanggil_kucing, 'お店によく置かれている招き猫は、左手を上げています。これは、左手が「お客さんを招く」とされているためです。', 'Maneki neko yang sering terlihat di toko-toko sedang mengangkat kaki kirinya, karena tangan kiri diyakini "mengundang pelanggan".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5395_memanggil_kucing, '一方、右手を上げている招き猫は「お金や幸運を招く」とされているので、オフィスや個人宅にかざられることが多いです。', 'Sebaliknya, maneki neko dengan kaki kanan terangkat dikatakan "mengisyaratkan uang dan nasib baik", sehingga sering dipajang di kantor atau rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5396_untuk_mengatur, '今度、銀座に店を構えることになりました。', 'Kami akan mendirikan toko di Ginza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5396_untuk_mengatur, 'こんな風に、カメラを両手で持って、ななめに構えてみてください。', 'Coba pegang kamera dengan kedua tangan dan posisikan secara diagonal seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5396_untuk_mengatur, 'ポーカーをする時は、気長に構えることが大切です。', 'Saat Anda bermain poker, penting untuk mempersiapkan diri dengan sabar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5396_untuk_mengatur, '両者が拳を胸の前に構えると、試合開始のゴングが鳴り響いた。', 'Saat kedua lawan meletakkan tinju mereka di depan dada, bel awal pertandingan pun berbunyi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5397_untuk_mengunjungi, 'ここを訪れるのは三年ぶりです。', 'Sudah tiga tahun sejak saya berkunjung ke sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5397_untuk_mengunjungi, 'これは、初めてローマを訪れた時の写真です。', 'Ini adalah foto kunjungan pertama saya ke Roma.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5397_untuk_mengunjungi, 'しかし、そんな時に転機が訪れたんです。　', 'Namun kemudian terjadi titik balik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5397_untuk_mengunjungi, 'もしあのラーメン工場に訪れたいのであれば、できるだけ早くに予約を入れる方がいいですよ。', 'Jika Anda ingin mengunjungi pabrik ramen sebaiknya melakukan reservasi sedini mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5428_pusat_perbelanjaan_bawah_tanah, '雨だし、地下街行かない？', 'Hujan, mau ke mall bawah tanah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5428_pusat_perbelanjaan_bawah_tanah, 'ちょっくら地下街に行くところだよ。', 'Saya pergi ke pusat perbelanjaan bawah tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5428_pusat_perbelanjaan_bawah_tanah, '今日は地下街のカフェでゆっくりコーヒーを飲んだ。', 'Hari ini, saya bersantai dengan minum kopi di kafe di area perbelanjaan bawah tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5428_pusat_perbelanjaan_bawah_tanah, '僕は地下街の中で一度も天井を見上げないようにしているんだ。何故だか分かるかい？', 'Saya selalu memastikan untuk tidak pernah melihat ke langit-langit di mal bawah tanah. Tahukah kamu alasannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5430_pengawasan, '彼は警察に監視されているというウワサがあります。', 'Ada rumor bahwa dia berada di bawah pengawasan polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5430_pengawasan, '監視の目をかいくぐって、彼女は静かに立ち去ったんです。', 'Dia diam-diam menyelinap pergi, menghindari tatapan mata yang jeli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5430_pengawasan, '時々、オンラインでのアクティビティが政府に監視されていると感じることはありませんか？', 'Pernahkah Anda merasa aktivitas online Anda diawasi oleh pemerintah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5430_pengawasan, '監視カメラは持ってるんですが、まだテープを確認した事はないんですよね。ちゃんと撮れてるのかな。	', 'Saya punya kamera pengintai, tapi saya belum memeriksa rekamannya. Saya ingin tahu apakah ini berfungsi dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5431_pengawasan, '今日は仕事で期末試験を監督しました。', 'Saya mengawasi ujian akhir hari ini di tempat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5431_pengawasan, '監督のリーダーシップが、チームを優勝に導きました。', 'Kepemimpinan pelatih membawa tim menuju kemenangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5431_pengawasan, 'マイケルは、宮崎はやお監督の映画を他のアニメ映画と比べています。', 'Michael membandingkan film yang disutradarai Hayao Miyazaki dengan film anime lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5431_pengawasan, 'あの映画監督の名前が思い出せないんだけど。何て名前だっけ。	', 'Saya tidak ingat nama sutradara film itu. Siapa namanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6295_untuk_merekomendasikan, '先生に勧められて、日本に留学することにしたんです。', 'Saya memutuskan untuk belajar di luar negeri di Jepang karena guru saya mendorong saya untuk melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6295_untuk_merekomendasikan, '日本語学習者のお知り合いがいたら、ぜひトーフグとワニカニを勧めてくださいね！', 'Jika Anda mengenal seseorang yang sedang belajar bahasa Jepang, mohon rekomendasikan Tofugu dan WaniKani kepada mereka!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6295_untuk_merekomendasikan, '心臓が痛いというと、同僚から医者に受診することを勧められました。', 'Saat saya menyebutkan nyeri dada, rekan kerja saya menyarankan agar saya menemui dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6297_permohonan, '勧誘の電話は迷惑だと思う。', 'Menurutku panggilan ajakan itu menjengkelkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6297_permohonan, '強引な勧誘は嫌われることが多い。', 'Ajakan yang agresif sering kali tidak disukai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6297_permohonan, '悪質な勧誘は法律で禁止されている。', 'Permintaan jahat dilarang oleh hukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6297_permohonan, 'この証券マンは投資商品の勧誘をするのが上手だ。', 'Penjual sekuritas ini piawai menjaring nasabah untuk produk investasinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6297_permohonan, '大学生活の最初は、部活の勧誘をたくさん受けました。', 'Saya mendapat banyak undangan untuk mengikuti kegiatan klub di awal tahun kuliah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7470_papan_tulis, 'まだ黒板を消さないでください。', 'Tolong jangan hapus dulu apa yang ada di papan tulis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7470_papan_tulis, '誰ですか、黒板消しを教室のとびらの間にはさんで落としたのは？', 'Siapakah yang menjepit penghapus papan tulis di antara pintu kelas dan membuatnya terjatuh?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7470_papan_tulis, 'うちの高校では、電子黒板を使った授業を取り入れています。', 'Di sekolah menengah kami, kami menerapkan pembelajaran menggunakan papan tulis elektronik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7470_papan_tulis, '黒板が使えないので、ホワイトボードを持参しています。', 'Kami tidak bisa menggunakan papan tulis jadi saya akan membawa papan tulis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7500_peserta_pelatihan, '私は今、工場で研修生として働いています。', 'Saat ini saya bekerja sebagai trainee di pabrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7500_peserta_pelatihan, '研修生の時期に学んだことが、今の仕事にとても役立っています。', 'Apa yang saya pelajari selama menjadi trainee sangat berguna dalam pekerjaan saya saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7500_peserta_pelatihan, '新しい研修生たちが今日からオリエンテーションを受けています。', 'Para peserta pelatihan baru mengikuti orientasi mulai hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7500_peserta_pelatihan, 'こちらが、新しい研修生の三浦くんです。', 'Ini adalah peserta pelatihan baru, Miura.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7501_spam, '迷惑メールが次から次へと送られてくる。', 'Saya menerima email spam satu demi satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7501_spam, '最近、迷惑メールが増えて困っています。', 'Akhir-akhir ini, saya menerima lebih banyak email spam, dan itu sangat mengganggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7501_spam, '迷惑メールが多すぎて、受信ボックスがすぐにいっぱいになるんです。', 'Saya menerima begitu banyak surat sampah sehingga kotak masuk saya terisi dengan cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7501_spam, 'コウイチからのメールはいつも迷惑メールフォルダに入ってしまうんだけどどうしてなんだろう？', 'Email dari Koichi selalu ditemukan di folder junk mail. Kenapa ya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7604_kontribusi, '後進国の発展に寄与したとして、ノーベル賞が授与された。', 'Hadiah Nobel diberikan kepada mereka atas kontribusi mereka terhadap pembangunan negara-negara kurang berkembang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7604_kontribusi, 'トーフグが世界平和に寄与していることを知っているかい？', 'Tahukah Anda bahwa Tofugu berkontribusi terhadap perdamaian dunia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7604_kontribusi, 'フィンランドの作曲家であるジャン・シベリウス は、音楽を通じて、国民意識の形成に多大な寄与をしました。', 'Komposer Finlandia Jean Sibelius memberikan kontribusi signifikan terhadap pembentukan identitas nasional melalui musiknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7604_kontribusi, '地域への寄与度が高いビジネスの方が、助成金は下りやすいんです。', 'Bisnis yang memberikan kontribusi lebih banyak kepada masyarakat lokal cenderung lebih mudah menerima hibah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7604_kontribusi, 'プロジェクトのコスト削減への寄与と納品日数短縮をもたらした服部さんにプロジェクトマネージャー賞が贈られた。', 'Penghargaan manajer proyek diberikan kepada Ibu Hattori atas kontribusinya terhadap pengurangan biaya dan mempersingkat waktu pengiriman barang dalam proyek tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7657_pengurus_rumah_tangga, '分別のある家政婦さんで良かったよ。', 'Aku senang dia adalah pelayan yang bijaksana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7657_pengurus_rumah_tangga, 'いくつか個人面接をしてこの家政婦さんに決めました。', 'Setelah melakukan beberapa wawancara individu, saya memutuskan pengurus rumah tangga ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7657_pengurus_rumah_tangga, '私はナニーなんで、家政婦とは違います。', 'Saya seorang pengasuh, bukan pembantu rumah tangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7657_pengurus_rumah_tangga, '家政婦さんに来てもらおうかと思っているんです。', 'Aku sedang berpikir untuk meminta pembantu rumah tangga datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7658_sumbangan, 'もしよろしければワニカニに寄付をお願いできますか。', 'Jika boleh, bolehkah saya meminta sumbangan kepada WaniKani?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7658_sumbangan, '毎年少しだけ、母校へお金を寄付しています。', 'Saya menyumbangkan sedikit uang untuk almamater saya setiap tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7658_sumbangan, 'このサイトは、寄付金で運営しているものなんです。', 'Situs ini dijalankan melalui sumbangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7658_sumbangan, '金持ちが多額の寄付をするのは、節税のためだよ。', 'Orang-orang kaya memberikan sumbangan besar terutama untuk tujuan penghematan pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7718_tertidur, '授業中に居眠りして先生に怒られた。', 'Saya tertidur selama kelas dan guru marah kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7718_tertidur, '運転中に居眠りしてたみたいなんだ。', 'Sepertinya mereka tertidur saat mengemudi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7718_tertidur, '仕事中に居眠りしてしまったけど、誰にも気づかれなかった。', 'Saya tertidur selama bekerja, tetapi tidak ada yang memperhatikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7718_tertidur, '国会議員の会議中の居眠り対策について、政府は国民に意見を募っている。', 'Pemerintah sedang mencari opini publik mengenai langkah-langkah untuk mencegah anggota parlemen tertidur selama rapat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7772_untuk_membuat_marah_seseorang, '父さんを怒らせると後が面倒よ。', 'Jika kamu memprovokasi Ayah, menghadapi akibatnya akan merepotkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7772_untuk_membuat_marah_seseorang, '怒らせるつもりはなかったけど、少し言い過ぎてしまいました。', 'Aku tidak bermaksud membuatnya marah, tapi kata-kataku terlalu berlebihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7772_untuk_membuat_marah_seseorang, '怒らせないように、言葉を選んだつもりだったんだけどな…。', 'Kupikir aku telah memilih kata-kataku dengan hati-hati agar tidak menyinggung perasaannya…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7772_untuk_membuat_marah_seseorang, 'あの温厚な久保田さんを怒らせただって？一体何を言ったんだい？', 'Kamu membuat Kubota yang berwatak lembut itu marah? Apa yang kamu katakan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7811_pintu_masuk, '玄関のところで待ってますね！', 'Aku akan menunggu di pintu masuk!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7811_pintu_masuk, '玄関のドアにヒビが入ったので、修理が必要です。', 'Ada celah di pintu foyer, sehingga perlu diperbaiki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7811_pintu_masuk, '彼は玄関で傘をたたんでから、家の中に入りました。', 'Dia melipat payungnya di pintu masuk sebelum masuk ke dalam rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7811_pintu_masuk, '玄関で靴を脱いでください。', 'Silakan lepas sepatu Anda di pintu masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8684_untuk_mendekat, '学校の帰りに、図書館に寄るつもりです。', 'Saat aku pulang sekolah aku berencana mampir ke perpustakaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8684_untuk_mendekat, 'すいません、もう少し寄ってもらえませんか？', 'Permisi, bisakah Anda pindah sedikit lagi? (Diucapkan ketika Anda ingin seseorang berlari untuk memberi ruang (agar Anda bisa duduk, dll.))');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8684_untuk_mendekat, '今日は、どこにも寄らずにまっすぐ帰る積もりです。', 'Hari ini, aku berencana untuk langsung pulang tanpa singgah kemana pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8684_untuk_mendekat, '突然、一匹の猫が私に寄ってきて、ヒザの上に座りました。', 'Tiba-tiba, seekor kucing mendatangi saya dan duduk di pangkuan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8720_keraguan, '迷いがあるなら、もう少し考えたほうがいいよ。', 'Jika Anda ragu, Anda harus memikirkannya lebih jauh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8720_keraguan, '彼の言葉には、少し迷いが感じられました。', 'Saya merasakan keraguan dalam kata-katanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8720_keraguan, 'なんとか迷いを断ち切りました。', 'Saya berhasil menghilangkan keraguan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8720_keraguan, '会社を辞めることに迷いはありませんでした。', 'Saya tidak ragu-ragu untuk keluar dari perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8720_keraguan, '彼女は迷いなく、プロジェクトを引き受けた。', 'Dia menerima proyek tersebut tanpa ragu-ragu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8759_mencari, '夜になると捜索が難しくなるため、いったんストップして早朝から再開する予定です。', 'Karena pencarian menjadi sulit di malam hari, kami berencana untuk berhenti sejenak dan melanjutkannya di pagi hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8759_mencari, '最近は、山の中の捜索には、ドローンが使用されることが多くなってきました。', 'Baru-baru ini, drone semakin umum digunakan dalam operasi pencarian di pegunungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8759_mencari, '警察は行方不明者の捜索活動を続けています。', 'Polisi masih melanjutkan penyelidikan terhadap orang hilang tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8759_mencari, '近藤さんのところの娘さん、もう三日も帰ってきてなくて、警察に捜索願を出したんだって。', 'Kudengar putri Kondo-san tidak pulang selama tiga hari, dan mereka sudah melaporkan orang hilang ke polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9045_untuk_mempercayakan_sesuatu, 'この店のことは全て君の判断に任すよ。', 'Saya akan menyerahkan segalanya tentang toko ini pada penilaian Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9045_untuk_mempercayakan_sesuatu, '大きな仕事を任されて、うれしいけど少し不安でもある。', 'Aku senang dipercayakan pekerjaan besar, tapi aku juga sedikit gugup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9045_untuk_mempercayakan_sesuatu, '今回、プロジェクトマネージャーを任されることになった田中です。よろしくお願いします。', 'Saya Tanaka dan saya ditugaskan sebagai manajer proyek. Saya berharap dapat bekerja sama dengan Anda semua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9048_tiket_penumpang, 'バスの乗車券はどこで買える？', 'Dimana saya bisa membeli tiket bus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9048_tiket_penumpang, '割引乗車券はありますか。', 'Apakah Anda menawarkan tiket diskon?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9048_tiket_penumpang, '電車の乗車券を内ポケットに入れたはずなのに、見当たらないの。', 'Aku yakin aku sudah memasukkan tiket kereta ke dalam saku dalam, tapi aku tidak bisa menemukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9090_tonkatsu, 'この辺は、豚カツ屋が少ない。', 'Tidak banyak restoran tonkatsu di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9090_tonkatsu, '豚カツ定食にしようと思います。', 'Saya rasa saya akan memesan set potongan daging babi yang dilapisi tepung roti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9090_tonkatsu, 'あーーー、なんで昨日あんなに豚カツ食べちゃったんだろう。', 'Ahhh, kenapa aku makan tonkatsu banyak sekali kemarin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9094_kemarahan, 'それを見た母は、大激怒でした。', 'Ketika ibu saya melihat ini, dia sangat marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9094_kemarahan, '彼は激怒してその場を立ち去りました。', 'Dia bergegas pergi karena marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9094_kemarahan, 'この映画は、原作を改変しすぎて、ファンを激怒させました。', 'Film ini membuat perubahan signifikan pada karya aslinya, yang membuat geram para penggemarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9094_kemarahan, '土足でベンチに上がるの、海外ならいいかもしれないけど、日本では激怒ものだよ。', 'Meletakkan sepatu di bangku mungkin diperbolehkan di negara lain, namun di Jepang hal ini akan menimbulkan kemarahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9296_terjadi_secara_berturut_turut, 'あのYouTuberは、相次ぐ批判の声にも負けず、コンテンツを作り続けた。', 'Meski berulang kali dihujani kritik, YouTuber itu tetap terus membuat konten.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9296_terjadi_secara_berturut_turut, 'その年は、コロナのせいで上映中止が相次ぎました。', 'Karena virus corona, pemutaran film dibatalkan satu demi satu pada tahun itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9296_terjadi_secara_berturut_turut, '飲酒運転による事故が全国で相次いだため、警察は取り締まりを強化しました。', 'Karena serangkaian kecelakaan yang disebabkan oleh mengemudi dalam keadaan mabuk di seluruh negeri, polisi meningkatkan penegakan hukumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9308_aplikasi, 'しまった！ビザの申請を忘れてた。', 'Oh tidak! Saya lupa mengajukan visa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9308_aplikasi, '申請手続きに時間がかかってるんです。', 'Proses lamaran memakan waktu cukup lama untuk diselesaikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9308_aplikasi, 'ようやく許可申請が受理されました！', 'Akhirnya, permohonan izin telah diterima!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9376_begadang, '夜更かしやストレスがにきびの原因です。', 'Begadang dan stres menjadi penyebab munculnya jerawat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9376_begadang, 'うちの弟もついに夜更かしを覚えちゃってさ、夜が明けるまでゲームしてるよ。', 'Adik laki-laki saya akhirnya suka begadang juga — dia bermain video game sampai subuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9376_begadang, '私の父は、お盆休み中に夜更かしばかりして、おばあちゃんに怒られてました。', 'Saat liburan Obon, ayahku terus begadang dan nenekku marah padanya.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1379_mengawasi, r_323_pelayan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1379_mengawasi, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1379_mengawasi, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1379_mengawasi, id FROM items WHERE type = 'radical' AND (slug = '84' OR id = '84') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1380_secangkir_cairan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1380_secangkir_cairan, id FROM items WHERE type = 'radical' AND (slug = '96' OR id = '96') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1381_kering, id FROM items WHERE type = 'radical' AND (slug = '8793' OR id = '8793') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1381_kering, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1381_kering, r_324_hidung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1382_sponsor, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1382_sponsor, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1382_sponsor, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1383_keinginan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1383_keinginan, id FROM items WHERE type = 'radical' AND (slug = '95' OR id = '95') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1384_eropa, r_322_daerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1384_eropa, id FROM items WHERE type = 'radical' AND (slug = '142' OR id = '142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1385_masuk, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1385_masuk, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1386_meminta, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1386_meminta, id FROM items WHERE type = 'radical' AND (slug = '120' OR id = '120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1387_pria, id FROM items WHERE type = 'radical' AND (slug = '26' OR id = '26') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1387_pria, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1387_pria, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1388_korea, id FROM items WHERE type = 'radical' AND (slug = '8793' OR id = '8793') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1388_korea, id FROM items WHERE type = 'radical' AND (slug = '294' OR id = '294') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1389_merusak, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1389_merusak, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1389_merusak, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1389_merusak, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1390_diagnosis, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1390_diagnosis, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1390_diagnosis, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1391_kabinet, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1391_kabinet, id FROM items WHERE type = 'radical' AND (slug = '180' OR id = '180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1392_kolega, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1392_kolega, r_319_arang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1393_mengumpulkan, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1393_mengumpulkan, id FROM items WHERE type = 'radical' AND (slug = '321' OR id = '321') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1394_langsung, r_325_di_atas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1394_langsung, id FROM items WHERE type = 'radical' AND (slug = '35' OR id = '35') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1394_langsung, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1394_langsung, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1395_pelayan, r_323_pelayan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1396_singkatan, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1396_singkatan, id FROM items WHERE type = 'radical' AND (slug = '180' OR id = '180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1397_navigasi, id FROM items WHERE type = 'radical' AND (slug = '149' OR id = '149') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1397_navigasi, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1397_navigasi, id FROM items WHERE type = 'radical' AND (slug = '177' OR id = '177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1398_mendekatlah, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1398_mendekatlah, id FROM items WHERE type = 'radical' AND (slug = '326' OR id = '326') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1399_papan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1399_papan, id FROM items WHERE type = 'radical' AND (slug = '218' OR id = '218') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1400_jalanan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1400_jalanan, id FROM items WHERE type = 'radical' AND (slug = '111' OR id = '111') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1401_agama, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1401_agama, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1402_tegang, r_323_pelayan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1402_tegang, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1402_tegang, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1403_anak_perempuan, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1403_anak_perempuan, id FROM items WHERE type = 'radical' AND (slug = '8822' OR id = '8822') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1404_perjamuan, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1404_perjamuan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1404_perjamuan, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1405_menakutkan, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1405_menakutkan, id FROM items WHERE type = 'radical' AND (slug = '26' OR id = '26') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1405_menakutkan, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1406_takut, id FROM items WHERE type = 'radical' AND (slug = '241' OR id = '241') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1406_takut, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1407_menambahkan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1407_menambahkan, id FROM items WHERE type = 'radical' AND (slug = '40' OR id = '40') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1407_menambahkan, id FROM items WHERE type = 'radical' AND (slug = '35' OR id = '35') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1407_menambahkan, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1408_garang, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1408_garang, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1408_garang, id FROM items WHERE type = 'radical' AND (slug = '84' OR id = '84') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1409_brutal, id FROM items WHERE type = 'radical' AND (slug = '132' OR id = '132') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1409_brutal, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1409_brutal, id FROM items WHERE type = 'radical' AND (slug = '131' OR id = '131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1410_mencari, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1410_mencari, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1410_mencari, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1411_diisi, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1411_diisi, id FROM items WHERE type = 'radical' AND (slug = '253' OR id = '253') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1723_menyarankan, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1723_menyarankan, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1723_menyarankan, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2145_misterius, r_403_misterius);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4387_alas_kaki, id FROM items WHERE type = 'kanji' AND (slug = '1075' OR id = '1075') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4387_alas_kaki, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4769_untuk_ditangkap, id FROM items WHERE type = 'kanji' AND (slug = '1265' OR id = '1265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4808_efektivitas, id FROM items WHERE type = 'kanji' AND (slug = '1267' OR id = '1267') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4808_efektivitas, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4892_pembangunan_kembali, id FROM items WHERE type = 'kanji' AND (slug = '1310' OR id = '1310') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4892_pembangunan_kembali, id FROM items WHERE type = 'kanji' AND (slug = '946' OR id = '946') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5009_untuk_mendapatkan_posisi, id FROM items WHERE type = 'kanji' AND (slug = '1328' OR id = '1328') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5031_untuk_naik, id FROM items WHERE type = 'kanji' AND (slug = '1331' OR id = '1331') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5074_perut, id FROM items WHERE type = 'kanji' AND (slug = '1317' OR id = '1317') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5076_menjadi_gila, id FROM items WHERE type = 'kanji' AND (slug = '1317' OR id = '1317') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5076_menjadi_gila, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5081_untuk_mengundang, id FROM items WHERE type = 'kanji' AND (slug = '1327' OR id = '1327') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5117_kolega, id FROM items WHERE type = 'kanji' AND (slug = '568' OR id = '568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5117_kolega, k_1392_kolega);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5118_birokrat, id FROM items WHERE type = 'kanji' AND (slug = '1018' OR id = '1018') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5118_birokrat, k_1392_kolega);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5146_ibu_rumah_tangga, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5146_ibu_rumah_tangga, id FROM items WHERE type = 'kanji' AND (slug = '1362' OR id = '1362') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5166_diagnosa, k_1390_diagnosis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5166_diagnosa, id FROM items WHERE type = 'kanji' AND (slug = '1139' OR id = '1139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5213_menjadi_kering, k_1381_kering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5214_musim_kemarau, k_1381_kering);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5214_musim_kemarau, id FROM items WHERE type = 'kanji' AND (slug = '903' OR id = '903') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5215_kanpai, k_1381_kering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5215_kanpai, k_1380_secangkir_cairan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5216_untuk_mendesak, k_1383_keinginan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5217_keinginan, k_1382_sponsor);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5217_keinginan, k_1383_keinginan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5218_melihat, k_1382_sponsor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5218_melihat, id FROM items WHERE type = 'kanji' AND (slug = '1031' OR id = '1031') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5219_tuan_rumah, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5219_tuan_rumah, k_1382_sponsor);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5220_untuk_menghancurkan_sesuatu, k_1389_merusak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5221_penghancuran_lengkap, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5221_penghancuran_lengkap, k_1389_merusak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5222_runtuh, id FROM items WHERE type = 'kanji' AND (slug = '1110' OR id = '1110') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5222_runtuh, k_1389_merusak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5223_anak_perempuan, k_1403_anak_perempuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5224_putri_tunggal, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5224_putri_tunggal, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5224_putri_tunggal, k_1403_anak_perempuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5225_agama, k_1401_agama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5225_agama, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5226_sekte, k_1401_agama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5226_sekte, id FROM items WHERE type = 'kanji' AND (slug = '1136' OR id = '1136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5227_sekte_zen, id FROM items WHERE type = 'kanji' AND (slug = '1047' OR id = '1047') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5227_sekte_zen, k_1401_agama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5228_perjamuan, k_1404_perjamuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5228_perjamuan, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5229_perjamuan, k_1404_perjamuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5230_tidak_sehat, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5230_tidak_sehat, id FROM items WHERE type = 'kanji' AND (slug = '1342' OR id = '1342') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5230_tidak_sehat, id FROM items WHERE type = 'kanji' AND (slug = '1343' OR id = '1343') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5231_gugup, k_1402_tegang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5231_gugup, id FROM items WHERE type = 'kanji' AND (slug = '1205' OR id = '1205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5232_amarah, id FROM items WHERE type = 'kanji' AND (slug = '1330' OR id = '1330') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5233_menakutkan, k_1405_menakutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5234_teror, k_1406_takut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5234_teror, k_1405_menakutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5235_fobi, k_1406_takut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5235_fobi, k_1405_menakutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5235_fobi, id FROM items WHERE type = 'kanji' AND (slug = '1334' OR id = '1334') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5236_menakutkan, k_1406_takut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5237_satu_piala, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5237_satu_piala, k_1380_secangkir_cairan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5238_dua_piala, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5238_dua_piala, k_1380_secangkir_cairan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5239_tiga_piala, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5239_tiga_piala, k_1380_secangkir_cairan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5240_papan, k_1399_papan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5241_papan_nama, id FROM items WHERE type = 'kanji' AND (slug = '1199' OR id = '1199') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5241_papan_nama, k_1399_papan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5242_untuk_mencapai_dasarnya, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5242_untuk_mencapai_dasarnya, id FROM items WHERE type = 'kanji' AND (slug = '1340' OR id = '1340') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5243_sangat, id FROM items WHERE type = 'kanji' AND (slug = '1340' OR id = '1340') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5244_eropa_dan_amerika, k_1384_eropa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5244_eropa_dan_amerika, id FROM items WHERE type = 'kanji' AND (slug = '574' OR id = '574') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5245_eropa_tengah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5245_eropa_tengah, k_1384_eropa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5246_jepang_dan_eropa, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5246_jepang_dan_eropa, k_1384_eropa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5247_edo, k_1385_masuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5247_edo, id FROM items WHERE type = 'kanji' AND (slug = '509' OR id = '509') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5248_masuk, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5248_masuk, k_1385_masuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5249_untuk_menambahkan_sesuatu_ke, k_1407_menambahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5250_lampiran, k_1407_menambahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5250_lampiran, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5251_sangat_kuat, id FROM items WHERE type = 'kanji' AND (slug = '667' OR id = '667') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5251_sangat_kuat, k_1409_brutal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5252_garang, k_1408_garang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5252_garang, k_1409_brutal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5253_kuat, id FROM items WHERE type = 'kanji' AND (slug = '882' OR id = '882') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5253_kuat, k_1409_brutal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5254_garang, k_1408_garang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5255_untuk_menyingkat, k_1396_singkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5256_menghilangkan, id FROM items WHERE type = 'kanji' AND (slug = '1147' OR id = '1147') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5256_menghilangkan, k_1396_singkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5257_singkatan, k_1396_singkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5257_singkatan, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5258_diagram_kasar, k_1396_singkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5258_diagram_kasar, id FROM items WHERE type = 'kanji' AND (slug = '585' OR id = '585') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5259_garis_besar_luas, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5259_garis_besar_luas, k_1396_singkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5260_sakit, id FROM items WHERE type = 'kanji' AND (slug = '1318' OR id = '1318') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5261_penawar_rasa_sakit, id FROM items WHERE type = 'kanji' AND (slug = '1318' OR id = '1318') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5261_penawar_rasa_sakit, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5263_untuk_tidur, id FROM items WHERE type = 'kanji' AND (slug = '1332' OR id = '1332') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5264_ramuan_tidur, id FROM items WHERE type = 'kanji' AND (slug = '1332' OR id = '1332') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5264_ramuan_tidur, id FROM items WHERE type = 'kanji' AND (slug = '997' OR id = '997') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5266_untuk_akumulasi, k_1393_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5267_daerah, id FROM items WHERE type = 'kanji' AND (slug = '974' OR id = '974') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5267_daerah, k_1393_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5268_volume, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5268_volume, k_1393_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5269_pencarian, id FROM items WHERE type = 'kanji' AND (slug = '1143' OR id = '1143') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5269_pencarian, k_1410_mencari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5270_indeks, k_1410_mencari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5270_indeks, id FROM items WHERE type = 'kanji' AND (slug = '507' OR id = '507') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5271_mendesak, k_1402_tegang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5271_mendesak, id FROM items WHERE type = 'kanji' AND (slug = '970' OR id = '970') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5272_tenggat_waktu, id FROM items WHERE type = 'kanji' AND (slug = '1335' OR id = '1335') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5272_tenggat_waktu, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5273_untuk_mengencangkan, id FROM items WHERE type = 'kanji' AND (slug = '1335' OR id = '1335') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5274_menteri, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5274_menteri, k_1395_pelayan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5275_navigasi, k_1397_navigasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5275_navigasi, id FROM items WHERE type = 'kanji' AND (slug = '949' OR id = '949') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5276_penerbangan, k_1397_navigasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5276_penerbangan, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5277_penerbangan_tanpa_henti, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5277_penerbangan_tanpa_henti, k_1397_navigasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5278_distrik_perbelanjaan, id FROM items WHERE type = 'kanji' AND (slug = '828' OR id = '828') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5278_distrik_perbelanjaan, id FROM items WHERE type = 'kanji' AND (slug = '625' OR id = '625') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5278_distrik_perbelanjaan, k_1400_jalanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5280_untuk_memeriksa_seorang_pasien, k_1390_diagnosis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5281_pemeriksaan_kesehatan, k_1390_diagnosis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5281_pemeriksaan_kesehatan, id FROM items WHERE type = 'kanji' AND (slug = '1019' OR id = '1019') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5282_untuk_memasukkan, k_1411_diisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5285_meminta, k_1386_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5285_meminta, id FROM items WHERE type = 'kanji' AND (slug = '913' OR id = '913') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5288_untuk_mengambil, k_1386_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5289_persewaan, id FROM items WHERE type = 'kanji' AND (slug = '1324' OR id = '1324') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5290_tersesat, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5290_tersesat, id FROM items WHERE type = 'kanji' AND (slug = '1325' OR id = '1325') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5291_menteri_kabinet, k_1391_kabinet);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5291_menteri_kabinet, k_1392_kolega);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5292_rapat_kabinet, k_1391_kabinet);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5292_rapat_kabinet, id FROM items WHERE type = 'kanji' AND (slug = '1114' OR id = '1114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5293_pahlawan, id FROM items WHERE type = 'kanji' AND (slug = '953' OR id = '953') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5293_pahlawan, k_1387_pria);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5294_korea_selatan, k_1388_korea);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5294_korea_selatan, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5295_jepang_dan_korea_selatan, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5295_jepang_dan_korea_selatan, k_1388_korea);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5305_keingintahuan, id FROM items WHERE type = 'kanji' AND (slug = '779' OR id = '779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5305_keingintahuan, id FROM items WHERE type = 'kanji' AND (slug = '1363' OR id = '1363') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5305_keingintahuan, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5306_nomor_ganjil, id FROM items WHERE type = 'kanji' AND (slug = '1363' OR id = '1363') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5306_nomor_ganjil, id FROM items WHERE type = 'kanji' AND (slug = '703' OR id = '703') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5307_aneh, id FROM items WHERE type = 'kanji' AND (slug = '1363' OR id = '1363') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5307_aneh, id FROM items WHERE type = 'kanji' AND (slug = '1364' OR id = '1364') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5391_tekstil, id FROM items WHERE type = 'kanji' AND (slug = '1323' OR id = '1323') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5391_tekstil, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5393_amarah, id FROM items WHERE type = 'kanji' AND (slug = '1330' OR id = '1330') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5393_amarah, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5394_lapar, id FROM items WHERE type = 'kanji' AND (slug = '1317' OR id = '1317') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5394_lapar, id FROM items WHERE type = 'kanji' AND (slug = '1059' OR id = '1059') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5395_memanggil_kucing, id FROM items WHERE type = 'kanji' AND (slug = '1314' OR id = '1314') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5395_memanggil_kucing, id FROM items WHERE type = 'kanji' AND (slug = '959' OR id = '959') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5396_untuk_mengatur, id FROM items WHERE type = 'kanji' AND (slug = '1263' OR id = '1263') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5397_untuk_mengunjungi, id FROM items WHERE type = 'kanji' AND (slug = '1329' OR id = '1329') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5428_pusat_perbelanjaan_bawah_tanah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5428_pusat_perbelanjaan_bawah_tanah, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5428_pusat_perbelanjaan_bawah_tanah, k_1400_jalanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5430_pengawasan, k_1379_mengawasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5430_pengawasan, id FROM items WHERE type = 'kanji' AND (slug = '1234' OR id = '1234') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5431_pengawasan, k_1379_mengawasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5431_pengawasan, k_1394_langsung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6295_untuk_merekomendasikan, k_1723_menyarankan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6297_permohonan, k_1723_menyarankan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6297_permohonan, id FROM items WHERE type = 'kanji' AND (slug = '1327' OR id = '1327') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7470_papan_tulis, id FROM items WHERE type = 'kanji' AND (slug = '677' OR id = '677') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7470_papan_tulis, k_1399_papan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7500_peserta_pelatihan, id FROM items WHERE type = 'kanji' AND (slug = '691' OR id = '691') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7500_peserta_pelatihan, id FROM items WHERE type = 'kanji' AND (slug = '1360' OR id = '1360') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7500_peserta_pelatihan, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7501_spam, id FROM items WHERE type = 'kanji' AND (slug = '1325' OR id = '1325') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7501_spam, id FROM items WHERE type = 'kanji' AND (slug = '1326' OR id = '1326') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7604_kontribusi, k_1398_mendekatlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7604_kontribusi, id FROM items WHERE type = 'kanji' AND (slug = '1249' OR id = '1249') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7657_pengurus_rumah_tangga, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7657_pengurus_rumah_tangga, id FROM items WHERE type = 'kanji' AND (slug = '985' OR id = '985') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7657_pengurus_rumah_tangga, id FROM items WHERE type = 'kanji' AND (slug = '1362' OR id = '1362') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7658_sumbangan, k_1398_mendekatlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7658_sumbangan, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7718_tertidur, id FROM items WHERE type = 'kanji' AND (slug = '1280' OR id = '1280') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7718_tertidur, id FROM items WHERE type = 'kanji' AND (slug = '1332' OR id = '1332') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7772_untuk_membuat_marah_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '1330' OR id = '1330') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7811_pintu_masuk, k_2145_misterius);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7811_pintu_masuk, id FROM items WHERE type = 'kanji' AND (slug = '982' OR id = '982') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8684_untuk_mendekat, k_1398_mendekatlah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8720_keraguan, id FROM items WHERE type = 'kanji' AND (slug = '1325' OR id = '1325') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8759_mencari, id FROM items WHERE type = 'kanji' AND (slug = '1274' OR id = '1274') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8759_mencari, k_1410_mencari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9045_untuk_mempercayakan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1142' OR id = '1142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9048_tiket_penumpang, id FROM items WHERE type = 'kanji' AND (slug = '722' OR id = '722') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9048_tiket_penumpang, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9048_tiket_penumpang, id FROM items WHERE type = 'kanji' AND (slug = '1361' OR id = '1361') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9090_tonkatsu, id FROM items WHERE type = 'kanji' AND (slug = '1309' OR id = '1309') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9094_kemarahan, id FROM items WHERE type = 'kanji' AND (slug = '1295' OR id = '1295') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9094_kemarahan, id FROM items WHERE type = 'kanji' AND (slug = '1330' OR id = '1330') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9296_terjadi_secara_berturut_turut, id FROM items WHERE type = 'kanji' AND (slug = '730' OR id = '730') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9296_terjadi_secara_berturut_turut, id FROM items WHERE type = 'kanji' AND (slug = '616' OR id = '616') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9308_aplikasi, id FROM items WHERE type = 'kanji' AND (slug = '538' OR id = '538') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9308_aplikasi, k_1386_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9376_begadang, id FROM items WHERE type = 'kanji' AND (slug = '622' OR id = '622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9376_begadang, id FROM items WHERE type = 'kanji' AND (slug = '1431' OR id = '1431') LIMIT 1;

END $$;
