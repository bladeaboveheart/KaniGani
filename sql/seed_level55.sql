-- ====================================================
-- KaniGani — Seed Data Level 55 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 55) ============
  r_423_merasa UUID; r_8832_ragu UUID;
  -- ============ KANJI IDs (Level 55) ============
  k_2260_busur UUID; k_2261_menenangkan UUID; k_2262_mempersembahkan UUID; k_2263_duka UUID; k_2264_sederhana UUID; k_2265_kastanye_kuda UUID; k_2266_hemat UUID; k_2267_bagus_sekali UUID; k_2268_bersedih UUID; k_2269_yang_di_atas UUID; k_2270_melanjutkan UUID; k_2271_sumsum UUID; k_2272_di_dekat_sini UUID; k_2273_mengumpulkan UUID; k_2274_penyembuhan UUID; k_2275_lampiran UUID; k_2276_air_seni UUID; k_2277_vip UUID; k_2278_tawanan UUID; k_2279_rasa_bersalah UUID; k_2280_meningkat UUID; k_2281_kasar UUID; k_2282_sirkulasi UUID; k_2283_mengentalkan UUID; k_2285_makmur UUID; k_2286_fajar UUID; k_2287_menyenangkan UUID; k_2288_menghapus UUID; k_2289_gabus UUID; k_2290_ini UUID; k_2291_imperial UUID; k_2292_jauh UUID; k_2293_kristal UUID; k_2294_apa UUID; k_9095_tidak_harus UUID;
  -- ============ VOCABULARY IDs (Level 55) ============
  v_3969_kejahatan_menghasilkan_kejahatan UUID; v_4134_ketidaksamaan UUID; v_6000_ayah_tiri UUID; v_7094_digambarkan_dengan_jelas UUID; v_7962_kejujuran UUID; v_8141_serius UUID; v_8177_ini UUID; v_8178_gerak_mengombak UUID; v_8179_untuk_menutupi UUID; v_8180_menyerah UUID; v_8181_menutupi UUID; v_8182_bayangan UUID; v_8183_penyergapan UUID; v_8184_kerja_bagus UUID; v_8185_di_dekat UUID; v_8186_lihat UUID; v_8187_pemantauan UUID; v_8188_mengeras UUID; v_8189_menatap UUID; v_8190_menjadi_bergairah_tentang UUID; v_8191_kehadiran UUID; v_8192_keyakinan UUID; v_8193_melayani UUID; v_8194_dedikasi UUID; v_8195_air_seni UUID; v_8196_periode_yayoi UUID; v_8197_sirkulasi UUID; v_8198_belasungkawa UUID; v_8199_duka UUID; v_8200_menjadi_hemat UUID; v_8201_kalah_dalam_pertandingan_jarak_dekat UUID; v_8202_menyenangkan UUID; v_8203_depresi UUID; v_8204_kepedulian_patriotik UUID; v_8205_kecemasan UUID; v_8206_menjadi_cemas UUID; v_8207_sangat_disesalkan UUID; v_8208_resepsi_pernikahan UUID; v_8209_sedikit UUID; v_8210_penghapusan UUID; v_8211_cocok UUID; v_8212_menghapus UUID; v_8213_untuk_menginstal UUID; v_8214_sekali UUID; v_8215_hari_tahun_baru UUID; v_8216_kemakmuran UUID; v_8217_sederhana UUID; v_8218_prefektur_tochigi UUID; v_8219_gabus UUID; v_8220_pembuka_botol UUID; v_8221_deterjen UUID; v_8222_labu_kuning UUID; v_8223_wajah_oval UUID; v_8224_penyembuhan UUID; v_8225_adhesi UUID; v_8226_pedesaan UUID; v_8227_kasar UUID; v_8228_kasar UUID; v_8229_jumlah_kumulatif UUID; v_8230_promosi_berturut_turut UUID; v_8231_akumulasi UUID; v_8232_toko_tua UUID; v_8233_wasabi UUID; v_8234_tawanan_perang UUID; v_8235_tawanan UUID; v_8236_sesuai UUID; v_8237_pengunjung_mulia UUID; v_8238_tamu_negara UUID; v_8239_tamu UUID; v_8240_tamu_kehormatan UUID; v_8241_pindah_untuk_pekerjaan_berbeda UUID; v_8242_menguasai UUID; v_8243_garis_besar UUID; v_8244_penekanan UUID; v_8245_ketenangan_jiwa UUID; v_8246_untuk_menenangkan UUID; v_8247_pemimpin UUID; v_8248_penawar_rasa_sakit UUID; v_8249_sumsum_tulang UUID; v_8250_esensi UUID; v_9096_tentu_saja UUID; v_9098_ya_ampun UUID; v_9099_ryota UUID; v_9311_ayam_goreng UUID;

BEGIN

  DELETE FROM items WHERE level = 55;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '感', 'merasa', 55, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>perasaan</radikal>.')
    RETURNING id INTO r_423_merasa;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '疑', 'ragu', 55, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>keraguan</radikal>.')
    RETURNING id INTO r_8832_ragu;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_423_merasa, 'Merasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8832_ragu, 'Ragu', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '伏', 'busur', 55, 3, 'Saat Anda bertemu dengan <radical>pemimpin</radikal> <radikal>anjing</radikal> Anda harus <kanji>membungkuk</kanji> untuk menunjukkan rasa hormat Anda. Anjing itu sangat hebat, jadi pemimpin dari semua anjing pastilah yang terhebat! Anda harus tunduk sangat dalam pada yang satu ini.', 'Anda <kanji>membungkuk</kanji> serendah mungkin, namun Anda kehilangan keseimbangan dan terjatuh. "<reading>F**k</reading> kamu (ふく)!" anjing pemimpin menggonggong. Oh tidak. Anda membuat kesalahan dan sekarang anjing pemimpinnya sangat marah. Mengatakan f**k you agak kasar untuk membuat Anda terjatuh, menurut Anda.')
    RETURNING id INTO k_2260_busur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鎮', 'menenangkan', 55, 4, '<radikal>realitas</radikal> dari <radikal>emas</radikal> adalah bahwa ia memiliki kekuatan untuk <kanji>menenangkan</kanji> siapa pun yang mendapatkannya. Emas mungkin tampak keren untuk ditampilkan dalam film dan lagu, namun kenyataannya, ia memiliki kekuatan untuk mengacaukan Anda!', 'Kamu sudah <kanji>ditenangkan</kanji>dan sekarang air liur mengalir di <reading>dagu</reading> (ちん) kamu. Ini sebenarnya sangat menjijikkan. Tapi Anda tidak peduli, lihat semua emas ini! Tidak ada yang akan peduli dengan dagu Anda saat Anda kaya!')
    RETURNING id INTO k_2261_menenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奉', 'mempersembahkan', 55, 5, 'Saat <radical>musim semi</radical> <radical>kering</radical> Anda perlu <kanji>mendedikasikan</kanji> waktu dan tenaga Anda di tempat lain. Anda tidak bisa menanam bunga atau sayuran, karena terlalu kering. Anda tidak bisa bermain di luar, kulit Anda akan terkelupas. Jadi, Anda perlu mendedikasikan diri Anda pada sesuatu di dalam.', 'Anda memutuskan untuk <kanji>mendedikasikan</kanji> diri Anda kepada <reading>ho</reading>saya (ほう). Anda tentu tidak ingin berada di luar ruangan di tengah udara musim semi yang kering, sehingga Anda fokus pada aktivitas di rumah. Anda dapat membersihkan dapur, membuat rak, atau mendedikasikan waktu Anda untuk sistem internet rumah.')
    RETURNING id INTO k_2262_mempersembahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '憂', 'duka', 55, 6, '<radical>seratus</radical> <radical>dahi</radical> merendahkan diri mereka ke <radical>hati</radical> mereka di <radical>musim dingin</radical> dalam <kanji>kesedihan</kanji>. Dahulu ada banyak dari jenis mereka, suku dahi, tapi sekarang hanya tersisa seratus setelah musim dingin yang keras ini merenggut sisanya. Duka mereka sungguh luar biasa.', '<kanji>kesedihan</kanji> mereka bertambah karena semua dahi yang hilang adalah milik <read>kamu</reading>mereka (ゆう). Pemuda mati dimana-mana. Sekarang tidak ada lagi yang tersisa untuk mengisi kembali dunia.')
    RETURNING id INTO k_2263_duka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '朴', 'sederhana', 55, 7, 'Anda memutuskan untuk mengukir <radical>pohon</radical> menjadi replika raksasa <radical>jari kaki</radical> Anda karena menurut Anda itu akan sangat <kanji>sederhana</kanji>. Namun setelah Anda selesai, sepertinya ini adalah upaya yang <kanji>kasar</kanji> pada gumpalan yang gemuk dan menggumpal. Mungkin mengukir tidak sesederhana yang Anda bayangkan.', 'Anda sedang mengagumi pohon ujung kaki Anda yang terlihat <kanji>sederhana</kanji> ketika seorang penebang pohon berlari dan bertanya siapa yang menciptakannya. <membaca>ぼく</reading>, katamu. Seperti dalam kata "Aku", dengan cara yang jantan. Dia sepertinya tidak mempercayaimu, jadi kamu mengatakannya beberapa kali lagi. ぼく ぼく ぼく!')
    RETURNING id INTO k_2264_sederhana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '栃', 'kastanye-kuda', 55, 8, 'Anda melihat <radical>pohon</radical> tumbuh di <radical>tebing</radical> dan <radical>sepuluh ribu</radical> <kanji>berangan kuda</kanji> tumbuh di atasnya. Pohon-pohon ini langka, hanya tumbuh di tebing, dan selalu ada sepuluh ribu buah berangan kuda di setiap pohonnya.', 'Anda memutuskan untuk mencicipi <kanji>berangan kuda</kanji> karena kelihatannya enak, dan jumlahnya sepuluh ribu, jadi sepertinya tidak akan ada yang menyadarinya. Anda membukanya dan menggigitnya untuk mengetahui bahwa rasanya seperti <reading>toe chee</reading>se (とち)! UHG! Itu hal terburuk yang pernah Anda rasakan. Seperti keju kaki yang panas dan berjamur! Aduh!')
    RETURNING id INTO k_2265_kastanye_kuda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '惜', 'hemat', 55, 9, '<radical>Jiwa</radical> <radical>dulu</radical> Anda sangat <kanji>hemat</kanji>, itulah sebabnya Anda bisa memiliki terlalu banyak hal dalam hidup ini!', 'Anda tahu apa itu <kanji>hemat</kanji>? <reading>Seksi</reading> (せき). Anda menghemat uang, menggunakan lebih sedikit sumber daya, itulah hal paling seksi yang dapat saya pikirkan.')
    RETURNING id INTO k_2266_hemat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '佳', 'bagus-sekali', 55, 10, 'Seorang <radikal>pemimpin</radikal> mendapat dua kali lipat <radikal>kotoran</radikal> untuk dikembangkan jika dia adalah pemimpin yang paling <kanji>sangat baik</kanji> dan paling <kanji>terampil</kanji>. Menurutmu kotoran tidak begitu bagus? Lalu bagaimana jika aku mengambil kotoran milikmu darimu? Rumahmu ada di atas tanah itu. Itu milikku sekarang. Keluar dari sini.', 'Pemimpin <kanji>yang luar biasa</kanji> ini akan menggunakan semua kotoran ini untuk menyimpan <membaca>ca</reading>r (か) yang luar biasa! Orang-orang yang unggul harus memiliki mobil yang kualitasnya setara atau lebih baik dari diri mereka sendiri.')
    RETURNING id INTO k_2267_bagus_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '悼', 'bersedih', 55, 11, '<radical>jiwa</radikal> di <radical>jari kaki</radikal> Anda berangkat <radikal>awal</radikal>. Anda <kanji>berduka</kanji> dan <kanji>berduka</kanji> atas jari kaki Anda yang kini telah mati.', 'Anda memutuskan untuk <kanji>berduka</kanji> di <reading>とう</reading>きょう. Jari kakimu selalu ingin berjalan masuk, dan sekarang kamu setidaknya bisa memenuhi keinginan terakhirnya.')
    RETURNING id INTO k_2268_bersedih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '該', 'yang-di-atas', 55, 12, 'Anda ingin <radical>membagi</radical> apa yang Anda <radical>ucapkan</radical> menjadi dua sehingga orang fokus pada teks <kanji>di atas</kanji> terlebih dahulu. Hal di atas adalah apa yang Anda ingin mereka lihat! Jadi potonglah apa yang Anda katakan!', 'Saat Anda fokus pada kata-kata <kanji>di atas</kanji>, Anda menyadari bahwa seorang <reading>pria</reading> (がい) sedang mencoba untuk mendorong sisa ucapan Anda kembali ke kata-kata lainnya. TIDAK! Teks di atas adalah yang terpenting! Pergilah kawan!')
    RETURNING id INTO k_2269_yang_di_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '赴', 'melanjutkan', 55, 13, 'Anda harus <radical>berlari</radikal> dengan <radical>jari kaki</radikal> Anda jika ingin <kanji>melanjutkan</kanji> di jalan ini. Jika Anda tidak bisa berlari dengan cepat, berarti Anda kurang beruntung, dan Anda tidak akan bisa <kanji>move on</kanji> sama sekali. Saya tidak membuat aturan ini, saya hanya menegakkannya. Sekarang lari!', 'Jika ternyata Anda tidak dapat <kanji>melanjutkan</kanji>, Anda adalah <reading>foo</reading>l (ふ). Setiap orang dapat berlari dengan kakinya. Apakah kamu tidak tahu itu? TIDAK? Maka kamu bahkan lebih bodoh lagi, sekarang pergi dari sini!')
    RETURNING id INTO k_2270_melanjutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '髄', 'sumsum', 55, 14, '<radical>tulang</radical> Anda <radical>memiliki</radical> sebuah <radical>skuter</radical> yang bergerak melalui <kanji>sumsum tulang</kanji> di dalamnya.', 'Jika kamu mendekatkan telingamu ke tulang yang masih ada <kanji>sumsum</kanji> di dalamnya, kamu akan mendengar suara skuter <reading>zuwee</reading> (ずい) saat mereka menggerakkan darah di dalam sana.')
    RETURNING id INTO k_2271_sumsum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '傍', 'di-dekat-sini', 55, 15, '<radical>pemimpin</radikal> sedang <radikal>berdiri</radikal>dengan lucu, menghadap ke <radikal>arah</radikal> <kanji>di dekatnya</kanji>. Dia tidak bisa pergi jauh karena jelas ada yang salah dengan kakinya. Dia terjebak di dekatnya, sangat dekat dengan sisi Anda.', 'Anda memutuskan untuk membawa pemimpin ke gang <kanji>terdekat</kanji> <reading>busur</reading>ling (ぼう). Jaraknya sangat dekat dan Anda bisa tetap berada di sisinya saat dia melempar bola bowling dan melampiaskan amarahnya.')
    RETURNING id INTO k_2272_di_dekat_sini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '累', 'mengumpulkan', 55, 16, 'Anda mulai menanam <radical>benang</radikal> di <radical>sawah</radikal> Anda untuk <kanji>terakumulasi</kanji> lebih banyak. Anda tidak ingin membelinya, jadi Anda hanya mencoba menanam benang dengan beras Anda. Sepertinya itu cara yang bagus untuk mengumpulkan lebih banyak uang untuk Anda.', 'Sayangnya, ini adalah cara yang buruk untuk <kanji>mengumpulkan</kanji> segala sesuatu yang terkait dengan thread dan Anda akhirnya <reading>rui</reading>ning (るい) di sawah Anda juga. Saya kira jika Anda ingin mengumpulkan utas, ini bukan cara untuk melakukannya.')
    RETURNING id INTO k_2273_mengumpulkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '癒', 'penyembuhan', 55, 17, '<radical>yang sakit</radikal> <radikal>Bintang Kematian</radikal> membutuhkan <radikal>jantung</radikal> <kanji>penyembuhan</kanji>d. Jika tidak segera <kanji>sembuh</kanji>, ia akan mati.', 'Anda menyadari bahwa satu-satunya cara untuk <kanji>menyembuhkan</kanji> Death Star adalah dengan mengubahnya kembali menjadi <read>yu</reading>rt (ゆ). Dengan demikian, ia tidak akan dapat melakukan kerusakan lagi, dan bagian luarnya akan mencerminkan sisi menyenangkannya di dalam!')
    RETURNING id INTO k_2274_penyembuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '郭', 'lampiran', 55, 18, 'Anda baru saja <radical>menerima <radical>bangunan</radical>, jadi Anda ingin mengelilinginya dengan <kanji>penutup</kanji>.', '<kanji>kandang</kanji> terasa agak sepi dan sepi, jadi kamu memutuskan untuk memelihara <read>ayam</reading> peliharaan (かく).')
    RETURNING id INTO k_2275_lampiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尿', 'air-seni', 55, 19, 'Saat Anda pergi ke kolam atau danau untuk berenang, Anda akan melihat <radical>bendera</radical> tertancap di suatu tempat di <radical>air</radical>. Bendera itu ada di sana sehingga Anda tahu bahwa tidak apa-apa untuk <kanji>buang air kecil</kanji> di area kolam tersebut. Semua orang tahu <kanji>urine</kanji> encer dalam air, dan jika semua orang hanya buang air kecil di satu tempat, itu tidak akan menjijikkan. Jadi, kencinglah di dekat bendera itu ketika Anda harus pergi. Jangan repot-repot keluar dari air.', 'Tepat saat Anda mulai <kanji>kencing</kanji>, Anda mendengar penjaga pantai mulai berteriak, "<reading>NYOOOOOO</reading>! (にょう)" dan dia menunjuk ke arah Anda! Anda baru saja kencing di dekat bendera kencing! Kenapa dia marah?')
    RETURNING id INTO k_2276_air_seni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賓', 'vip', 55, 20, 'Di antara <radical>atap</radikal> dan <radikal>tanah</radikal> terdapat <radikal>beberapa</radikal> <radikal>kerang</radikal>. Ini karena kami mengundang beberapa <kanji>VIP</kanji> <kanji>tamu</kanji> ke rumah kami dan mereka memakan semua kerang kami.', '<kanji>VIP</kanji> <kanji>tamu</kanji> ini adalah bagian dari utusan <reading>Hin</reading>du (ひん).')
    RETURNING id INTO k_2277_vip;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '虜', 'tawanan', 55, 21, 'Ketika <radical>harimau</radical> bertemu dengan <radical>manusia</radical>, ia menjadi <kanji>tawanan</kanji> pria tersebut. Pria bisa menjadi sangat jahat seperti itu. Mereka melihat seekor harimau dan ingin memasukkannya ke dalam sangkar, sehingga harimau malang itu menjadi tawanan pria tersebut.', 'Pria itu membawa <kanji>tawanan</kanji> harimau barunya ke <reading>Rio</reading> (りょ). Mengapa Rio de Janeiro? Ternyata Anda diperbolehkan memelihara harimau di Rio.')
    RETURNING id INTO k_2278_tawanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '憾', 'rasa-bersalah', 55, 22, 'Satu-satunya <radikal>perasaan</radikal> yang akan dimiliki oleh <radikal>jiwa</radikal> yang mati adalah <kanji>penyesalan</kanji>. Penyesalan bagi orang-orang yang ditinggalkannya. <kanji>Penyesalan</kanji> atas hal-hal yang dilakukan dan tidak dilakukan.', 'Jiwa yang paling <kanji>menyesal</kanji> adalah Jenghis <reading>Khan</reading> (かん). Semua orang tahu untuk menjauh darinya di dunia roh karena dia sangat sedih. Bukan karena perbuatannya sendiri, tapi karena keadaan bangsanya sekarang.')
    RETURNING id INTO k_2279_rasa_bersalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弥', 'meningkat', 55, 23, 'Beralih dari <radical>busur</radikal> ke <radikal>kecil</radikal> <radikal>senjata</radikal> dan kekuatan tembakan Anda <kanji>meningkat</kanji>! Meskipun senjatanya kecil, namun masih selangkah lebih maju dari busur.', 'Anda terus menukar senjata untuk mendapatkan perlengkapan yang <kanji>semakin</kanji>lebih kuat, ketika Anda menyadari bahwa di daftar teratas adalah... tongkat baseball <reading>Ya</reading>Nkee (や)? Hah. Saya akan memilih tank atau bazoka. Tapi saya rasa jika ini akan meningkatkan level kekuatan Anda, Anda harus melakukannya.')
    RETURNING id INTO k_2280_meningkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '粗', 'kasar', 55, 24, 'Jika Anda menemukan <radical>nasi</radical> di dalam <radical>topi</radical>, rasanya akan sangat <kanji>kasar</kanji> dan <kanji>kasar</kanji>. Mungkin karena itu bukan jenis yang dimaksudkan untuk dimakan.', 'Anda mengambil beras <kanji>kasar</kanji> dan mencoba mencucinya dengan <reading>jadi</reading>ap (そ).')
    RETURNING id INTO k_2281_kasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '循', 'sirkulasi', 55, 25, 'Jika Anda ingin <radical>berkeliaran</radikal> di <radical>tebing</radikal> bersama <radikal>paus</radikal> Anda sebaiknya bersiap untuk bergerak dalam <kanji>sirkulasi</kanji> yang sempurna bersamanya. Paus mengenakan jubah yang sangat tebal dan panas di atas tebing ini, jadi Anda berdua harus berjalan berputar-putar agar tetap sejuk.', '<kanji>sirkulasi</kanji> ini tidak akan terjadi jika bukan <reading>Juni</reading> (じゅん). Tebingnya sangat panas di bulan Juni, dan di bulan lainnya kalian berdua hanya akan duduk dan ngobrol. Namun di bulan Juni Anda harus melakukan tarian sirkulasi yang aneh ini.')
    RETURNING id INTO k_2282_sirkulasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '凝', 'mengentalkan', 55, 26, 'Jika Anda mencoba mengubah sesuatu menjadi <radical>es</radical> sambil memiliki <radical>keraguan</radikal>, hal itu justru akan <kanji>mengental</kanji>. Ini akan <kanji>membeku</kanji>, tapi akan menjadi agak menjijikkan juga. Keraguan Anda akan mempengaruhi proses pembuatan es, jadi cobalah untuk tidak terlalu khawatir dan tidak yakin jika lain kali Anda menginginkan es yang normal.', 'Anda selalu <kanji>mengental</kanji>pada <reading>gyo</reading>za (ぎょう) Anda dengan cara ini. Anda ingin <kanji>membekukan</kanji> sisa gyoza agar Anda dapat menikmatinya nanti, namun Anda ragu gyoza tersebut akan baik-baik saja dan gyoza tersebut selalu membeku dalam bentuk blok gyoza yang kotor dan setengah beku. sial!')
    RETURNING id INTO k_2283_mengentalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '昌', 'makmur', 55, 27, '<radikal>matahari</radikal> adalah alasan mengapa tanaman tumbuh dan orang dapat bangun dari tempat tidur di pagi hari. Namun di planet yang memiliki dua <radikal>matahari</radikal>, mereka dapat menyelesaikan lebih banyak hal dan membuat mereka jauh lebih <kanji>makmur</kanji> dibandingkan kita. Mereka bekerja sepanjang hari, lalu saat matahari pertama terbenam, matahari kedua terbit dan mereka mendapat semburan energi baru. Seluruh planet hidup dalam keadaan <kanji>makmur</kanji> karena adanya dua matahari.', 'Orang di planet dengan dua matahari yang paling diuntungkan dari kemakmuran adalah <reading>Shou</reading>gun (しょう). Ya, planet ini masih memiliki shogun sebagai pemimpinnya, tapi semuanya berjalan dengan baik sehingga mereka tidak melihat perlunya perubahan. Shogun akan bertanggung jawab atas dunia yang makmur ini selamanya. Tidak ada seorang pun yang berpikir untuk memberontak ketika setiap orang memiliki semua yang mereka butuhkan.')
    RETURNING id INTO k_2285_makmur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '旦', 'fajar', 55, 28, 'Kanji <radikal>fajar</radikal> dan kanji <kanji>fajar</kanji> adalah sama!', '<kanji>Fajar</kanji> adalah <reading>fajar</reading> (だん)! Ini juga saat yang tepat untuk berjemur</reading> (たん). Matahari bersinar cerah saat fajar, namun tidak terlalu terang sehingga dapat mengirimkan sinar kanker kulit ke tubuh Anda.')
    RETURNING id INTO k_2286_fajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '愉', 'menyenangkan', 55, 29, '<radikal>jiwa</radikal> dari <radikal>Bintang Kematian</radikal> sebenarnya cukup <kanji>menyenangkan</kanji>. Dan jika dipikir-pikir, orang-orang yang mengendalikan Death Star-lah yang jahat dan membunuh.', 'Jiwa <kanji>menyenangkan</kanji> di dalam Death Star sebenarnya tampak seperti <reading>yu</reading>rt (ゆ), bukan bola logam besar yang penuh amarah.')
    RETURNING id INTO k_2287_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '抹', 'menghapus', 55, 30, 'Masukkan <radical>jari</radical> Anda ke dalam <radical>jet</radical> jika Anda ingin <kanji>menghapus</kanji> dari keberadaannya. Anda tidak hanya memotong atau membakarnya. Sepertinya tidak ada jejak sama sekali. Orang tuamu bahkan tidak ingat apakah kamu dilahirkan dengan jari atau tidak. Jet sangat kuat.', 'Kamu hampir selesai <kanji>menghapus</kanji>jari-jarimu ketika aliran udara mulai menyedot kalian semua. Kamu akan mencoba meraih benda terdekat, tapi jari-jarimu sudah tidak ada lagi, jadi kamu berpegangan pada <reading>matras</reading> (まつ) di kakimu dengan jari kaki. Matrasnya sangat kuat (bagaimanapun juga, memang dibuat untuk jet) dan Anda berhasil menyelamatkan diri!')
    RETURNING id INTO k_2288_menghapus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '栓', 'gabus', 55, 31, '<radical>raja</radikal> memiliki <radikal>topi</radikal> yang terbuat dari <radikal>pohon</radikal> namun semakin sering dilihat, semakin terlihat seperti <kanji>gabus</kanji> besar. Itu adalah <kanji>colokan</kanji> kayu besar yang baru saja dia pasang di kepalanya. Ini hampir tidak bisa disebut topi.', 'Ternyata topi <kanji>gabus</kanji> ini diberikan kepadanya oleh seorang <reading>cen</reading>taur (せん). Anda memeriksanya dan ternyata itu adalah gabus yang sangat besar yang digunakan centaur pada tong anggur besar mereka. Namun raja tidak mengerti, dan mengira itu adalah topi. Para centaur mungkin masih tertawa.')
    RETURNING id INTO k_2289_gabus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '之', 'ini', 55, 32, 'Bagaimana cara membuat mnemonik untuk kata ini? Anda tidak melakukannya. Tapi, kita bisa mencobanya. Anda mendaki banyak <radikal>bukit</radikal>. Di atas salah satu bukit terdapat <radikal>tetesan</radikal> kecil air. Anda mengambilnya dan berkata “<kanji>INI</kanji>… INILAH YANG SAYA CARI!”', 'Anda <read>mengumpulkan</reading>ct (これ) <kanji>ini</kanji> dengan sangat hati-hati. Anda akan menambahkan ini ke koleksi drop Anda.')
    RETURNING id INTO k_2290_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '龍', 'imperial', 55, 33, 'Kanji <radikal>imperial</radikal> dan kanji <kanji>imperial</kanji> sama persis! Wah!', 'Siapa <kanji>imperial</kanji> paling keren yang kamu kenal? <read>Ryu</reading> (りゅう) dari Street Fighter. Tunggu apa? Maksudmu dia MELAWAN imperial? Oh baiklah. Sepertinya Ryu adalah Imperial FIGHTER yang paling keren lho!')
    RETURNING id INTO k_2291_imperial;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遼', 'jauh', 55, 34, 'Anda turun dari <radical>skuter</radikal> untuk memuat <radical>arang</radikal> ke dalamnya, ketika tiba-tiba skuter itu lepas landas ke tempat yang <kanji>jauh</kanji>! Itu adalah arang yang sangat kuat.', 'Anda mengejar skuter tersebut ke tempat yang <kanji>jauh</kanji>, namun kemudian Anda melihatnya menuju ke danau. Oh bagus, itu harus dihentikan di dekat air. Tapi tunggu! Di kejauhan Anda melihat skuter Anda melaju ke perahu <reading>row</reading> (りょう) dan... mendayung sendiri di air?! TIDAK!!')
    RETURNING id INTO k_2292_jauh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '瑛', 'kristal', 55, 35, '<radikal>raja</radikal> dari <radikal>bunga</radikal> di <radikal>pusat</radikal> (Inggris, jika Anda ingat) memiliki <kanji>kristal</kanji> khusus. Kristal raja.', 'Raja mengira semua orang menginginkan <kanji>kristal</kanji> miliknya, jadi dia menyembunyikannya di dalam <read>sebuah</reading>jagung (えい) raksasa di tengah-tengah bunga di Inggris. Ada lubang kecil di dasar biji pohon ek, dan di sanalah kristal ini tersembunyi.')
    RETURNING id INTO k_2293_kristal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '那', 'apa', 55, 36, 'Anda sedang memegang <radical>pedang</radical> di depan <radical>dua</radical> <radical>gedung</radical>. <kanji>Apa</kanji> yang akan kamu lakukan?

A. Tusuk bangunan di sebelah kiri.

B. Tusuk bangunan di sebelah kanan.

Apa yang kamu pilih?', 'A. <kanji>Apa</kanji> itu, menusuk bangunan di sebelah kiri? Anda menusuk bangunan di sebelah kiri dengan pedang Anda dan yang keluar adalah... sepiring <read>na</reading>chos (な) yang lezat!

B. <kanji>Apa</kanji> itu, menusuk bangunan sebelah kanan? Anda menusuk bangunan di sebelah kanan dengan pedang Anda dan yang keluar adalah... sepiring <read>na</reading>chos (な) yang lezat!')
    RETURNING id INTO k_2294_apa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '勿', 'tidak-harus', 55, 37, '<radikal>Sayap</radikal> adalah sesuatu yang <kanji>tidak boleh</kanji> Anda gunakan untuk melakukan apa pun. Sayap itu rapuh (bayangkan sayap burung dan sayap kupu-kupu) dan terkadang berbahaya (seperti sayap pesawat terbang) dan Anda tidak boleh menyentuhnya, atau bahkan mendekatinya! Anda TIDAK HARUS. Anda. HARUS. BUKAN.', 'Selain menghindari sayap, hal lain yang <kanji>tidak boleh</kanji> lakukan adalah makan <reading>mochi</reading> (もち). Oke, mereka tidak rapuh atau berbahaya, tapi saya suka mochi dan saya tidak ingin Anda memakannya.')
    RETURNING id INTO k_9095_tidak_harus;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2260_busur, 'Busur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2260_busur, 'Berbaring', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2260_busur, 'ふく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2260_busur, 'ふ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2261_menenangkan, 'Menenangkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2261_menenangkan, 'ちん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2261_menenangkan, 'おさえ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2261_menenangkan, 'しず', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2262_mempersembahkan, 'Mempersembahkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2262_mempersembahkan, 'ほう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2262_mempersembahkan, 'ぶ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2262_mempersembahkan, 'たてまつ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2262_mempersembahkan, 'まつ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2263_duka, 'Duka', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2263_duka, 'ゆう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2263_duka, 'う', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2263_duka, 'うれ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2264_sederhana, 'Sederhana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2264_sederhana, 'Mentah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2264_sederhana, 'ぼく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2264_sederhana, 'えのき', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2264_sederhana, 'ほう', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2264_sederhana, 'ほお', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2265_kastanye_kuda, 'Kastanye Kuda', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2265_kastanye_kuda, 'とち', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2266_hemat, 'Hemat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2266_hemat, 'せき', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2266_hemat, 'お', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2267_bagus_sekali, 'Bagus sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2267_bagus_sekali, 'Terampil', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2267_bagus_sekali, 'か', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2268_bersedih, 'Bersedih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2268_bersedih, 'Meratapi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2268_bersedih, 'とう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2268_bersedih, 'いた', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2269_yang_di_atas, 'Yang Di Atas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2269_yang_di_atas, 'Itu Secara Khusus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2269_yang_di_atas, 'がい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2270_melanjutkan, 'Melanjutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2270_melanjutkan, 'Pindah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2270_melanjutkan, 'ふ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2270_melanjutkan, 'おもむ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2271_sumsum, 'Sumsum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2271_sumsum, 'Sumsum Tulang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2271_sumsum, 'ずい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2272_di_dekat_sini, 'Di dekat sini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2272_di_dekat_sini, 'Samping', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2272_di_dekat_sini, 'ぼう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2272_di_dekat_sini, 'かたわ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2272_di_dekat_sini, 'わき', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2272_di_dekat_sini, 'おか', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2272_di_dekat_sini, 'はた', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2272_di_dekat_sini, 'そば', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2273_mengumpulkan, 'Mengumpulkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2273_mengumpulkan, 'るい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2274_penyembuhan, 'Penyembuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2274_penyembuhan, 'Menyembuhkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2274_penyembuhan, 'ゆ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2274_penyembuhan, 'い', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2274_penyembuhan, 'いや', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2275_lampiran, 'Lampiran', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2275_lampiran, 'かく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2275_lampiran, 'くるわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2276_air_seni, 'Air seni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2276_air_seni, 'Kencing', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2276_air_seni, 'にょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2277_vip, 'VIP', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2277_vip, 'Tamu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2277_vip, 'ひん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2278_tawanan, 'Tawanan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2278_tawanan, 'りょ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2278_tawanan, 'ろ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2278_tawanan, 'とりく', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2278_tawanan, 'とりこ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2279_rasa_bersalah, 'Rasa bersalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2279_rasa_bersalah, 'Menyesali', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2279_rasa_bersalah, 'かん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2279_rasa_bersalah, 'うら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2280_meningkat, 'Meningkat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2280_meningkat, 'や', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2280_meningkat, 'び', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2280_meningkat, 'み', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2281_kasar, 'Kasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2281_kasar, 'Kasar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2281_kasar, 'そ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2281_kasar, 'あら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2282_sirkulasi, 'Sirkulasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2282_sirkulasi, 'Berurutan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2282_sirkulasi, 'じゅん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2283_mengentalkan, 'Mengentalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2283_mengentalkan, 'Membekukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2283_mengentalkan, 'Diserap Dalam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2283_mengentalkan, 'ぎょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2283_mengentalkan, 'こ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2283_mengentalkan, 'こご', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2285_makmur, 'Makmur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2285_makmur, 'Kemakmuran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2285_makmur, 'しょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2285_makmur, 'さかん', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2286_fajar, 'Fajar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2286_fajar, 'たん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2286_fajar, 'だん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2286_fajar, 'あきら', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2286_fajar, 'あき', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2286_fajar, 'あさ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2286_fajar, 'あした', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2286_fajar, 'ただし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2287_menyenangkan, 'Menyenangkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2287_menyenangkan, 'ゆ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2287_menyenangkan, 'たの', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2288_menghapus, 'Menghapus', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2288_menghapus, 'まつ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2289_gabus, 'Gabus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2289_gabus, 'Steker', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2289_gabus, 'せん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2290_ini, 'Ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2290_ini, 'Yang ini', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2290_ini, 'これ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2290_ini, 'の', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2290_ini, 'し', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2291_imperial, 'Imperial', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2291_imperial, 'Naga', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2291_imperial, 'りゅう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2291_imperial, 'りょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2291_imperial, 'ろう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2291_imperial, 'たつ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2292_jauh, 'Jauh', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2292_jauh, 'りょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2293_kristal, 'Kristal', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2293_kristal, 'えい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2293_kristal, 'あき', false, 'nanori');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2293_kristal, 'あきら', false, 'nanori');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2294_apa, 'Apa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2294_apa, 'な', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2294_apa, 'だ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2294_apa, 'いかん', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2294_apa, 'なに', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2294_apa, 'なんぞ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9095_tidak_harus, 'Tidak Harus', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9095_tidak_harus, 'もち', true, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悪因悪果', 'kejahatan-menghasilkan-kejahatan', 55, 38, '<kanji>kejahatan</kanji> <kanji>penyebab</kanji> menghasilkan <kanji>kejahatan</kanji> <kanji>buah</kanji>, atau lebih sederhananya, <vocabulary>kejahatan melahirkan kejahatan</vocabulary>.

Ini adalah istilah Buddhis, sering digunakan bersama dengan 善因善果 (kebajikan melahirkan kebajikan) untuk menggambarkan konsep karma. Meskipun bukan ungkapan yang dikenal luas, ini adalah ungkapan yang bagus untuk mengingatkan kita akan pentingnya tindakan kita.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.悪果 terakhir memperpendek 悪 sedikit.')
    RETURNING id INTO v_3969_kejahatan_menghasilkan_kejahatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不等', 'ketidaksamaan', 55, 39, 'Ketika sesuatu <kanji>tidak</kanji> <kanji>sama</kanji> tentu saja <vocabulary>tidak setara</vocabulary>. Ini adalah <vocabulary>ketidaksetaraan</vocabulary>. Anda biasanya akan melihat kata ini dalam konteks teknis seperti matematika dan teknik, tetapi kata ini juga muncul dalam tulisan formal yang lebih umum.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_4134_ketidaksamaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '継父', 'ayah-tiri', 55, 40, '<kanji>ayah</kanji> yang Anda <kanji>wariskan</kanji> bukanlah ayah asli Anda, dia adalah <vocabulary>ayah tiri</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.

Kata ini juga dapat dibaca sebagai ままちち, karena 継 mempunyai bacaan khusus まま jika digunakan sebagai awalan "langkah", seperti dalam "ayah tiri".')
    RETURNING id INTO v_6000_ayah_tiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '躍如', 'digambarkan-dengan-jelas', 55, 41, '<kanji>lompatan</kanji> dari <kanji>kemiripan</kanji> adalah ketika sesuatu yang tidak nyata melakukan lompatan besar menuju kemiripan dengan kenyataan. Hal ini terjadi ketika sesuatu <vocabulary>digambarkan dengan jelas</vocabulary> atau <vocabulary>diungkapkan dengan jelas</vocabulary>.

Kata ini umumnya digunakan dalam frasa 面目躍如たる yang berfungsi sebagai kata sifat untuk menunjukkan kehormatan seseorang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7094_digambarkan_dengan_jelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '丹誠', 'kejujuran', 55, 42, '<kanji>Berwarna karat</kanji> <kanji>ketulusan</kanji> adalah <vocabulary>ketulusan</vocabulary> yang telah terhantam oleh berbagai cuaca dan bertahan dari kesulitan hidup. Dengan kata lain, itu adalah ketulusan <em>benar</em>, dan fakta bahwa itu sedikit usang dan berkarat hanyalah bukti dari <vocabulary>kesungguhan</vocabulary> Anda.

丹誠 mirip dengan 丹精, yang Anda pelajari beberapa level yang lalu. Perbedaan utamanya adalah 丹精 (bekerja sungguh-sungguh) adalah tentang bagaimana Anda mendekati suatu aktivitas atau usaha tertentu, sedangkan 丹誠 (kata ini) lebih mengacu pada ketulusan atau kesungguhan sebagai kualitas pribadi. Bahkan penutur asli pun kesulitan membedakan kata-kata ini, sehingga sering kali digunakan secara bergantian, namun Anda dapat mengesankan semua teman Jepang Anda dengan mengingat perbedaannya… mungkin.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7962_kejujuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '荘厳', 'serius', 55, 43, 'Sebuah <kanji>villa</kanji> harus <kanji>ketat</kanji> dengan peraturannya untuk menjaga suasana <vocabulary>khusyuk</vocabulary>, <vocabulary>megah</vocabulary>, dan <vocabulary>bermartabat</vocabulary>. Vila yang longgar dan longgar tidak akan membuat siapa pun terkesan.

荘厳 adalah kata yang relatif formal yang sering digunakan secara tertulis untuk menggambarkan sesuatu yang agung dan bermartabat. Anda akan melihatnya digunakan untuk hal-hal seperti katedral bersejarah yang suasananya terasa khusyuk dan penuh hormat, serta upacara formal seperti acara kerajaan. Dalam musik, kata ini dapat menggambarkan simfoni atau karya orkestra yang terdengar kuat, megah, dan menakjubkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 厳, jadi inilah mnemonik untuk membantu Anda:

Jika Anda ingin menciptakan suasana <vocabulary>khusyuk</vocabulary>, cukup tekan <reading>gong</reading> (ごん) yang besar beberapa kali. Dengarkan gema <vocabulary>megah</vocabulary> gong di seluruh ruangan, lalu nikmati keheningan yang terjadi setelahnya. Saya yakin Anda merasa sangat serius dan <vocabulary>bermartabat</vocabulary> saat ini, ya?')
    RETURNING id INTO v_8141_serius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '之', 'ini', 55, 44, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa ini hampir selalu ditulis dalam kana dalam bahasa Jepang modern.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8177_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '起伏', 'gerak-mengombak', 55, 45, '<kanji>Bangun</kanji>, sekarang <kanji>berbaring</kanji>, sekarang bangun lagi, oke sekarang berbaring lagi. Apa yang Anda lakukan disebut <vocabulary>undulasi</vocabulary>. Kalau emosi Anda yang melakukannya, itu yang disebut <vocabulary>naik turun</vocabulary>. Setiap orang terkadang mengalami hal seperti ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8178_gerak_mengombak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '伏せる', 'untuk-menutupi', 55, 46, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>membungkuk</kanji> atau <kanji>berbaring</kanji>, jadi versi kata kerjanya adalah ketika Anda mencoba <vocabulary>untuk menutupi</vocabulary> atau <vocabulary>menyembunyikan</vocabulary> sesuatu. Anda sedang melakukan tindakan terhadap sesuatu, bukan Anda yang bersembunyi.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Siapa yang Anda coba <vocabulary>tutupi</vocabulary>? Itu <reading>foo</reading>l (ふ) saudaramu. Dia terus melakukan hal-hal yang memalukan dan berusaha membuat Anda mendapat masalah. Jadi Anda mencoba <vocabulary>menyembunyikan</vocabulary> dia dengan jaket Anda. Kami melihatnya, kami tahu dia bodoh, jadi Anda bisa berhenti sekarang.')
    RETURNING id INTO v_8179_untuk_menutupi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '降伏', 'menyerah', 55, 47, '<kanji>Membungkuk</kanji> saat Anda <kanji>turun</kanji> ke wilayah musuh. Beginilah caranya Anda harus <vocabulary>menyerah</vocabulary> jika Anda ingin hidup. Jaga agar kepala Anda tetap tenang dan rendahkan diri dan turunlah ke barisan mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8180_menyerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '潜伏', 'menutupi', 55, 48, '<kanji>Tundukkan kepala</kanji> Anda untuk <kanji>menyembunyikan</kanji> diri Anda lebih baik daripada <vocabulary>menyembunyikan</vocabulary> diri Anda sebelumnya. Jika kamu ingin <vocabulary>bersembunyi</vocabulary> kamu harus tahu cara bersembunyi!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8181_menutupi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '伏線', 'bayangan', 55, 49, 'Hubungkan banyak hal yang <kanji>terletak</kanji>dalam satu <kanji>baris</kanji>. Sesuatu sedang terjadi di sini. Anda tidak bisa menebaknya, tapi Anda cukup yakin ini adalah <vocabulary>pertanda</vocabulary> untuk hal lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8182_bayangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '伏兵', 'penyergapan', 55, 50, 'Seorang <kanji>prajurit</kanji> hanya <kanji>berbaring</kanji> ketika dia hendak <vocabulary>menyergap</vocabulary> musuh! Jika Anda melihat beberapa tentara tergeletak di sana-sini, itu bukan karena mereka malas, melainkan karena mereka bersiap menerkam!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8183_penyergapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '佳作', 'kerja-bagus', 55, 51, '<kanji>Buatlah</kanji> sesuatu yang <kanji>luar biasa</kanji> dan semua orang akan menyebutnya <vocabulary>pekerjaan bagus</vocabulary>. Atau membuat sesuatu yang jelek dan mengecewakan semua orang. Itu panggilanmu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8184_kerja_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '傍', 'di-dekat', 55, 52, 'Sesuatu yang <kanji>didekat</kanji> <vocabulary>dekat</vocabulary> bagi Anda. Sangat <vocabulary>dekat</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Ada sebuah restoran <vocabulary>dekat</vocabulary> rumah Anda yang hanya menjual masakan dengan mie <reading>soba</reading> (そば) di dalamnya. Memang lezat, namun letaknya <vocabulary>dekat</vocabulary> dengan rumah Anda sehingga Anda dapat mencium baunya setiap saat. Terkadang rasanya hanya itu yang bisa Anda cium lagi.')
    RETURNING id INTO v_8185_di_dekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '傍観', 'lihat', 55, 53, '<kanji>Di dekatnya</kanji> terdapat <kanji>pemandangan</kanji> yang indah. <vocabulary>Lihatlah</vocabulary> saat matahari terbenam dan langit berubah warna. Anda akan mengorbankan segalanya untuk bisa <vocabulary>menyaksikan</vocabulary> hal semacam ini sepanjang waktu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8186_lihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '傍受', 'pemantauan', 55, 54, 'Hanya <kanji>terima</kanji> orang baru yang pindah ke <kanji>terdekat</kanji> setelah Anda selesai <vocabulary>memantau</vocabulary> mereka dengan benar! <vocabulary>Mengetuk</vocabulary> ke ponsel mereka mungkin juga akan membantu, tapi jangan beri tahu siapa pun yang saya suruh melakukan itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8187_pemantauan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凝固', 'mengeras', 55, 55, 'Puding Anda <kanji>mengental</kanji>dan semuanya <kanji>keras</kanji>. Bagaimana caranya <vocabulary>memperkuat</vocabulary> seperti ini? Seharusnya tidak <vocabulary>beku</vocabulary> kecuali Anda memasukkannya ke dalam freezer. Kecuali, bukan? Oh...', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8188_mengeras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凝視', 'menatap', 55, 56, '<kanji>Diam</kanji> dan <kanji>lihat</kanji> aku. <vocabulary>tatapan</vocabulary>mu membuatku merinding! Anda bisa pindah sekarang. Hai. Anda bisa pindah sekarang. Berhenti, kataku!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8189_menatap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凝る', 'menjadi-bergairah-tentang', 55, 57, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengental</kanji> atau <kanji>membekukan</kanji>, jadi versi kata kerjanya adalah <vocabulary>to Grow rigid</vocabulary>. Ingat 肩こり (kekakuan bahu)? Dari sinilah bagian こり itu berasal.

凝る juga berarti <vocabulary>berhasrat terhadap</vocabulary> sesuatu. Anggap saja seperti ini: minat Anda <kanji>membeku</kanji> pada satu hal, jadi Anda akan <vocabulary>menyukai</vocabulary> hal itu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Apa yang membuat semua teman Anda <vocabulary>bergairah</vocabulary>? <read>子</reading> mereka (こ). Mereka semua terus memiliki anak dan sekarang hanya itu yang mereka pedulikan. Anak-anak sialan.')
    RETURNING id INTO v_8190_menjadi_bergairah_tentang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '奉仕', 'kehadiran', 55, 58, '<kanji>Dedikasikan</kanji> diri Anda untuk <kanji>melakukan</kanji> yang terbaik di sekolah dengan memiliki <vocabulary>kehadiran</vocabulary> yang sempurna! Begitulah cara Anda menunjukkan bahwa Anda benar-benar berdedikasi untuk belajar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8191_kehadiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '信奉', 'keyakinan', 55, 59, '<kanji>Dedikasikan</kanji> hidupmu pada apa yang <kanji>yakini</kanji> dan kamu akan memiliki <vocabulary>keyakinan</vocabulary> dan <vocabulary>iman</vocabulary> yang sangat kuat pada apa pun itu. Cobalah untuk mendedikasikan diri Anda pada sesuatu yang baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8192_keyakinan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '奉公', 'melayani', 55, 60, '<kanji>Dedikasikan</kanji> diri Anda kepada <kanji>publik</kanji> dengan melakukan <vocabulary>layanan</vocabulary> komunitas!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8193_melayani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '奉納', 'dedikasi', 55, 61, 'Jika kamu <kanji>mempersembahkan</kanji> seluruh <kanji>persediaan</kanji> makananmu kepada para dewa, itu disebut <vocabulary>persembahan</vocabulary>, dan dibutuhkan <vocabulary>dedikasi</vocabulary> yang nyata untuk melakukan hal seperti itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8194_dedikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尿', 'air-seni', 55, 62, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8195_air_seni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弥生', 'periode-yayoi', 55, 63, '<kanji>Kehidupan</kanji> di Jepang <kanji>meningkat</kanji> pada tingkat tercepat selama <vocabulary>Periode Yayoi</vocabulary>. Ini adalah salah satu periode paling awal dalam sejarah Jepang yang kita ketahui! Anda harus mencarinya, jika Anda belum mengetahuinya.', 'Pembacaan untuk kata ini merupakan pengecualian tetapi dalam bahasa Jepang sama dengan dalam bahasa Inggris. Jadi jika Anda hanya mengingat <reading>Yayoi</reading> (やよい) dalam bahasa Inggris, Anda juga akan mengingat bahasa Jepangnya!')
    RETURNING id INTO v_8196_periode_yayoi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '循環', 'sirkulasi', 55, 64, '<kanji>Sirkulasi</kanji> dalam <kanji>loop</kanji> tetaplah <vocabulary>sirkulasi</vocabulary>. Atau <vocabulary>rotasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8197_sirkulasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '哀悼', 'belasungkawa', 55, 65, '<kanji>Berduka</kanji> atas situasi yang <kanji>menyedihkan</kanji> dengan menyampaikan <vocabulary>belasungkawa</vocabulary> Anda. Menampilkan <vocabulary>penyesalan</vocabulary> adalah cara terbaik untuk mengatasinya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8198_belasungkawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '追悼', 'duka', 55, 66, '<kanji>Ikuti</kanji> orang-orang yang <kanji>berduka</kanji> dengan <vocabulary>berduka</vocabulary> bersama mereka. Anda tentu tidak ingin menjadi satu-satunya orang yang tidak tampak sedih.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajari bacaan ini dengan kata 追随, tapi inilah mnemonik untuk membantu Anda berjaga-jaga:

Anda <vocabulary>berduka</vocabulary> atas kehilangan burung peliharaan Anda. Mau tidak mau kamu berteriak <read>TWEE</reading>T (つい) ke langit, berharap dia hidup kembali. Itu tidak akan berhasil jika Anda terus-menerus berada dalam keadaan berduka seumur hidup Anda. Bagaimanapun, dia adalah sahabat burung terbaikmu.')
    RETURNING id INTO v_8199_duka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '惜しむ', 'menjadi-hemat', 55, 67, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>hemat</kanji>, jadi versi kata kerjanya adalah <vocabulary>to be frugal</vocabulary> atau <vocabulary>to be sparing</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Kamu harus mencoba <vocabulary>berhemat</vocabulary> ketika kamu pergi ke <reading>lautan</reading>n (おし). Ada banyak barang yang bisa dibeli, seperti makanan lezat, topi matahari, dan boneka tahu, tapi Anda sebaiknya tidak menghabiskan seluruh uang Anda di sana. Cobalah untuk merencanakan pengeluaran lebih sedikit saat Anda pergi ke laut lain kali, oke?')
    RETURNING id INTO v_8200_menjadi_hemat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '惜敗', 'kalah-dalam-pertandingan-jarak-dekat', 55, 68, 'Tim Anda hampir memenangkan permainan, namun Anda memutuskan untuk <kanji>hemat</kanji> dengan tembakan Anda menjelang akhir dan hal ini menghasilkan <kanji>kekalahan</kanji>, menjadikannya <vocabulary>kekalahan dalam pertandingan jarak dekat</vocabulary>. Jika Anda baru saja mengambil gambar itu, tim Anda mungkin akan menang. Benar-benar <vocabulary>kekalahan yang disesalkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8201_kalah_dalam_pertandingan_jarak_dekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '愉快', 'menyenangkan', 55, 69, 'Orang yang <kanji>menyenangkan</kanji> <kanji>menyenangkan</kanji> adalah <vocabulary>menyenangkan</vocabulary> yang super! Mereka <vocabulary>bahagia</vocabulary> dan baik kepada semua orang sepanjang waktu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8202_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憂鬱', 'depresi', 55, 70, 'Dengan banyaknya <kanji>kesedihan</kanji> dan <kanji>kesuraman</kanji> dalam hidup Anda, Anda mungkin akan berakhir dalam spiral <vocabulary>depresi</vocabulary>. Jangan khawatir, kamu akan baik-baik saja. Segalanya menjadi lebih baik seiring berjalannya waktu, jadi jangan menyerah pada <vocabulary>kesuraman</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8203_depresi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憂国', 'kepedulian-patriotik', 55, 71, 'Setiap kali sesuatu yang buruk terjadi pada <kanji>negara</kanji> Anda, Anda merasakan <kanji>kesedihan</kanji> yang luar biasa terhadap sesama warga negara Anda. Ini adalah <vocabulary>kekhawatiran patriotik</vocabulary> serius yang Anda alami. Semoga saja Anda memanfaatkan kekhawatiran tersebut untuk sesuatu yang baik dan jangan terlalu terbawa suasana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8204_kepedulian_patriotik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憂慮', 'kecemasan', 55, 72, 'Yang bisa Anda lakukan hanyalah <kanji>mempertimbangkan</kanji> <kanji>kesedihan</kanji> Anda dan bagaimana hal itu menghancurkan hidup Anda. Itu disebut <vocabulary>kecemasan</vocabulary>, dan ini bisa menjadi masalah yang nyata. Anda akhirnya menjadi <vocabulary>concern</vocabulary> tentang segala hal, tapi jangan khawatir. Ada cara untuk melawannya. Anda akan baik-baik saja!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8205_kecemasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憂える', 'menjadi-cemas', 55, 73, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berduka</kanji>, jadi versi kata kerjanya adalah <vocabulary>berduka</vocabulary> atau <vocabulary>menjadi cemas</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Bibimu mulai <vocabulary>berduka</vocabulary> dengan sangat keras di pemakaman Paman Raymu. "<reading>Ooh, Ray</reading> (うれ)! OOoh, Ray kenapa kamu harus meninggalkanku!" Sungguh menyedihkan. Anda bahkan mendengarnya di kepala Anda setelah Anda pergi dan pulang. Anda belum pernah melihat seseorang mulai <vocabulary>menjadi tertekan</vocabulary> seperti itu di depan umum.')
    RETURNING id INTO v_8206_menjadi_cemas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遺憾', 'sangat-disesalkan', 55, 74, 'Jika Anda <kanji>meninggalkan</kanji> sesuatu dan itu membuat Anda merasa <kanji>penyesalan</kanji>, itu adalah situasi yang <vocabulary>disesalkan</vocabulary>. Anda mungkin harus kembali ke masa lalu agar Anda tidak menjalani kehidupan yang <vocabulary>tidak memuaskan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8207_sangat_disesalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '披露宴', 'resepsi-pernikahan', 55, 75, 'Anda sudah mengetahui bahwa 披露 berarti "pengumuman" atau "pameran", jadi tambahkan <kanji>perjamuan</kanji> ke dalamnya dan Anda akan berada di <vocabulary>resepsi pernikahan</vocabulary>! Atau jika tidak ada yang menikah tetapi mereka memamerkan sesuatu di tempat besar dengan makanan dan barang-barang lainnya, itu hanyalah <kosakata>resepsi</vocabulary> biasa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8208_resepsi_pernikahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '一抹', 'sedikit', 55, 76, '<kanji>Hapus</kanji> <kanji>satu</kanji> bagian dari perasaan Anda dan Anda hanya akan merasakan <vocabulary>sedikit</vocabulary> sedikit saja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8209_sedikit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '抹殺', 'penghapusan', 55, 77, '<kanji>menghapus</kanji> atau <kanji>membunuh</kanji> sesuatu menghasilkan <vocabulary>pemusnahan</vocabulary> total. Kata ini mengacu pada <vocabulary>penghapusan</vocabulary>, <vocabulary>penyangkalan</vocabulary>, <vocabulary>mengabaikan</vocabulary>, atau <vocabulary>pembunuhan</vocabulary> terhadap keberadaan sesuatu. Bahkan dalam beberapa kasus bisa berarti <vocabulary>pembunuhan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8210_penghapusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '抹茶', 'cocok', 55, 78, '<kanji>Hilangkan</kanji> kebutuhan Anda akan <kanji>teh</kanji> biasa dengan meminum <vocabulary>matcha</vocabulary>. Ini jauh lebih unggul dari yang lainnya dan Anda tidak akan pernah kembali lagi setelah Anda mencicipinya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8211_cocok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '抹消', 'menghapus', 55, 79, 'Jika Anda ingin <kanji>menghapus</kanji> dan <kanji>memadamkan</kanji> setiap lampu dan setiap gambar lampu di dunia, cukup <vocabulary>hapus</vocabulary> semuanya. Sesederhana itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8212_menghapus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '据え付ける', 'untuk-menginstal', 55, 80, 'Ini adalah kombinasi dari kata 据える yang berarti "memasang" dan 付ける yang berarti "melampirkan". Gabungkan semuanya dan Anda masih akan <vocabulary>memasang</vocabulary> sesuatu atau <vocabulary>melengkapi</vocabulary> sesuatu. Ada lebih banyak pekerjaan yang sedang dilakukan.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8213_untuk_menginstal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '一旦', 'sekali', 55, 81, 'Anda hanya punya waktu untuk melakukan <kanji>satu</kanji> hal saat <kanji>fajar</kanji> <vocabulary>sekali</vocabulary>. Fajar sangat singkat sehingga Anda dapat melakukan apa pun <vocabulary>untuk sesaat</vocabulary>, tapi hanya itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8214_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '元旦', 'hari-tahun-baru', 55, 82, '<kanji>asal usul</kanji> <kanji>fajar</kanji> dapat ditemukan pada <vocabulary>Hari Tahun Baru</vocabulary>. Saat itulah matahari baru lahir dan terbit di atas bumi selama setahun penuh hingga mati. Dan itulah asal mula fajar, anak-anak. Jangan biarkan gurumu mengatakan sebaliknya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 元, jadi inilah mnemonik untuk membantu Anda:

Siapa yang selalu ada di subuh <vocabulary>Tahun Baru</vocabulary> menyambut matahari baru? <read>Gan</reading>dhi (がん). Dia duduk di ujung bumi dan memastikan matahari terasa diterima. Pria yang baik.')
    RETURNING id INTO v_8215_hari_tahun_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '繁昌', 'kemakmuran', 55, 83, '<kanji>Ditumbuhi terlalu banyak</kanji> <kanji>kemakmuran</kanji> tetaplah <vocabulary>kemakmuran</vocabulary>. Wah, bahkan <vocabulary>berkembang</vocabulary>. Bagus!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku yang berubah しょう menjadi じょう!')
    RETURNING id INTO v_8216_kemakmuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '素朴', 'sederhana', 55, 84, 'Orang yang terbuat dari <kanji>sederhana</kanji> <kanji>elemen</kanji> juga cukup <vocabulary>sederhana</vocabulary>. Dan mereka juga bisa menjadi <vocabulary>naif</vocabulary>. Tapi begitulah cara mereka dibangun.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8217_sederhana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '栃木県', 'prefektur-tochigi', 55, 85, '<kanji>Prefektur</kanji> dengan banyak <kanji>pohon berangan kuda</kanji> <kanji></kanji> adalah <vocabulary>Prefektur Tochigi</vocabulary>.', 'Kata ini terdiri dari bacaan kun''yomi untuk 栃 dan 木 dan on''yomi untuk 県, seperti kebanyakan prefektur. Asalkan kamu ingat き diubah menjadi ぎ di sini, kamu pasti bisa mengingat bacaan ini dengan mudah!')
    RETURNING id INTO v_8218_prefektur_tochigi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '栓', 'gabus', 55, 86, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8219_gabus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '栓抜き', 'pembuka-botol', 55, 87, 'Apa yang Anda gunakan untuk <kanji>mencabut</kanji> sebuah <kanji>gabus</kanji>? <vocabulary>pembuka botol</vocabulary>! Atau <vocabulary>pembuka botol</vocabulary> jika Anda suka bertualang.', 'Kata ini terdiri dari bacaan on''yomi untuk 栓 dan bacaan kun''yomi untuk 抜, yang kamu pelajari dengan 抜く. Jika Anda dapat mengingatnya, Anda juga akan dapat mengingatnya!')
    RETURNING id INTO v_8220_pembuka_botol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '洗浄剤', 'deterjen', 55, 88, 'Anda telah mengetahui bahwa kata 洗浄 berarti "mencuci". Jadi saat Anda mencuci cucian, Anda harus menggunakan <kanji>takaran</kanji> <vocabulary>deterjen</vocabulary> yang tepat untuk memastikan cucian dicuci dengan benar. Jika Anda menggunakan terlalu sedikit deterjen, baunya masih akan tetap ada, tetapi jika Anda menggunakan terlalu banyak deterjen, mesin cuci akan meledak dengan gelembung-gelembung! Berhati-hatilah ya, jangan berakhir seperti saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8221_deterjen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '南瓜', 'labu-kuning', 55, 89, 'Di <kanji>selatan</kanji>, <kanji>melon</kanji> tumbuh menggumpal dan berwarna oranye karena terik matahari, atau terkadang berwarna oranye dan hijau. Tunggu, itu bukan melon, itu <vocabulary>labu</vocabulary> atau <vocabulary>squash</vocabulary>! 

南瓜 sering merujuk pada segala jenis labu, termasuk labu Halloween. Namun dalam bahasa Jepang sehari-hari, biasanya berarti sejenis labu Jepang yang bagian luarnya berwarna hijau dan bagian dalamnya berwarna oranye, yang disebut <vocabulary>kabocha</vocabulary>.', 'Pembacaan untuk ini merupakan pengecualian, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>labu</vocabulary> Jepang tidak terasa seperti labu Amerika. Rasanya lebih seperti <reading>can</reading>ned <reading>bo</reading>iled <reading>cho</reading>colate (かぼちゃ). Oh, kamu tidak asing dengan rasa itu? Nah, cobalah labu Jepang dan Anda akan tahu seperti apa rasanya. 

Kata ini juga terkadang dibaca なんきん, terutama di Jepang bagian timur.')
    RETURNING id INTO v_8222_labu_kuning;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瓜実顔', 'wajah-oval', 55, 90, 'Jika kamu memintaku untuk mengatakan <kanji>kebenaran</kanji>, aku akan mengatakan <kanji>wajah</kanji>mu berbentuk seperti <kanji>melon</kanji>. Tidak tidak, itu bukan hal yang buruk! Anda benar-benar memiliki <vocabulary>wajah oval</vocabulary>!

瓜実顔 adalah kata kuno yang mungkin masih digunakan dalam literatur untuk menggambarkan wajah ramping berbentuk oval, yang secara tradisional dianggap cantik dan anggun. Gambar tersebut berasal dari biji 瓜 (melon atau labu) yang berbentuk oval dan agak memanjang.', 'Kata ini terdiri dari bacaan kun''yomi untuk 瓜 dan 顔, namun di tengah-tengahnya, 実 memiliki sedikit bacaan yang luar biasa. Anda tentu belum pernah mempelajari keanehan ini sebelumnya, jadi berikut ini mnemonik untuk membantu Anda:

Tahukah Anda siapa yang memiliki <vocabulary>wajah oval</vocabulary>? <read>Zayn</reading> (ざね), mantan anggota One Direction. Ketika Anda memikirkan wajah oval yang tampan, bayangkan wajah Zayn.')
    RETURNING id INTO v_8223_wajah_oval;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '治癒', 'penyembuhan', 55, 91, '<kanji>penyembuhan</kanji> <kanji>penyembuhan</kanji> akan sangat berguna untuk <vocabulary>penyembuhan</vocabulary> orang sakit.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8224_penyembuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '癒着', 'adhesi', 55, 92, 'Apa yang Anda <kanji>pakai</kanji> untuk <kanji>menyembuhkan</kanji> cedera yang sangat serius? Sebuah <vocabulary>adhesi</vocabulary>. Oke, jadi Anda sebenarnya tidak memakai ini, tapi tubuh Anda membuatnya untuk dipakai di dalam tubuh Anda sehingga Anda bisa sembuh. Kerja bagus di dalam!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8225_adhesi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粗野', 'pedesaan', 55, 93, 'Rumah Anda berada di tengah-tengah <kanji>lapangan</kanji> yang terlihat <kanji>kasar</kanji>. Setiap kali Anda mengajak teman-teman, satu-satunya kata yang mereka ucapkan untuk menggambarkan rumah Anda yang kotor dan berumput adalah <vocabulary>rustic</vocabulary>. Itu cukup <vocabulary>kasar</vocabulary> di antara mereka, Anda menyukai rumah kotor Anda! Meskipun itu agak kecil dan bau dan berada di ladang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8226_pedesaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粗い', 'kasar', 55, 94, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>kasar</kanji>? <vocabulary>Kasar</vocabulary> atau <vocabulary>kasar</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Hal paling <vocabulary>kasar</vocabulary> yang dapat Anda pikirkan adalah <reading>a ro</reading>ck (あら). Anda menggosokkannya ke wajah Anda dan itu benar-benar <vocabulary>kasar</vocabulary> dan agak menyakitkan. Sebenarnya, Anda mungkin tidak seharusnya menggosokkan batu ke wajah Anda.')
    RETURNING id INTO v_8227_kasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粗悪', 'kasar', 55, 95, 'Jika <kanji>kasar</kanji> dalam arti <kanji>buruk</kanji>, ia tetap <vocabulary>kasar</vocabulary> tetapi juga <vocabulary>kasar</vocabulary> atau <vocabulary>inferior</vocabulary>. Anda tidak ingin sweter berbulu halus menjadi kasar, bukan? Atau karpet? Kalau ya, mereka kasar sekali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8228_kasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '累計', 'jumlah-kumulatif', 55, 96, '<kanji>Ukur</kanji> berapa banyak yang telah <kanji>akumulasikan</kanji> dan Anda akan mendapatkan <vocabulary>total kumulatif</vocabulary>. Jumlah itu mencakup semua barang yang telah Anda beli sejak awal waktu. Mungkin.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8229_jumlah_kumulatif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '累進', 'promosi-berturut-turut', 55, 97, '<kanji>Akumulasi</kanji> reputasi baik yang cukup di perusahaan Anda <kanji>di muka</kanji> dan Anda akan dapat mendapatkan <vocabulary>promosi yang berturut-turut</vocabulary>. Anda akan menjadi bos dalam waktu singkat!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8230_promosi_berturut_turut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '累積', 'akumulasi', 55, 98, '<kanji>Akumulasi</kanji> dan <kanji>akumulasi</kanji> membuat <vocabulary>akumulasi</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8231_akumulasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '老舗', 'toko-tua', 55, 99, '<kanji>lansia</kanji> <kanji>toko</kanji> adalah <vocabulary>toko tua</vocabulary>.', 'Bacaan ini merupakan pengecualian, jadi inilah mnemoniknya:

Anda pergi ke <vocabulary>toko lama</vocabulary> dan menemukan <reading>shee</reading>p <reading>knee</reading> <reading>sa</reading>le (しにせ). Saat Anda bertanya apa itu obral lutut domba, petugasnya menjawab tanpa basa-basi bahwa itu adalah obral semua lutut domba. Anda belum pernah melihat ini di toko-toko baru, jadi membeli dan menjual lutut domba pasti merupakan praktik lama.')
    RETURNING id INTO v_8232_toko_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '山葵', 'wasabi', 55, 100, 'Jika kamu menggali <kanji>hollyhock</kanji> di <kanji>gunung</kanji>, dan menggiling akarnya, kamu akan mendapatkan <vocabulary>wasabi</vocabulary>! Jangan makan terlalu banyak, nanti lidahmu terbakar.', 'Bacaan ini merupakan pengecualian, tapi saya yakin (setidaknya saya berharap) Anda pernah mendengar kata wasabi sebelumnya. Sama halnya dalam bahasa Jepang, jadi ingat saja artinya dan Anda akan tahu bacaannya juga!')
    RETURNING id INTO v_8233_wasabi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '捕虜', 'tawanan-perang', 55, 101, '<kanji>Tangkap</kanji> seorang <kanji>tawanan</kanji> dan dia akan menjadi <vocabulary>tawanan perang</vocabulary>. Atau, jika Anda tidak sedang berperang, hanya <vocabulary>tawanan</vocabulary> biasa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8234_tawanan_perang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '虜', 'tawanan', 55, 102, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Hal terburuk yang dilihat sebagai <vocabulary>tawanan</vocabulary> adalah <reading>鳥子</reading> (とりこ), anak burung. Bayangkan melihat seekor bayi burung dikurung di dalam sangkar. Sedih sekali!')
    RETURNING id INTO v_8235_tawanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '該当', 'sesuai', 55, 103, 'Jika <kanji>di atas</kanji> adalah <kanji>benar</kanji> maka silakan tanda tangani baris <vocabulary>yang sesuai</vocabulary>ing untuk menyetujuinya. Dan pastikan Anda berkorespondensi tepat waktu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8236_sesuai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貴賓', 'pengunjung-mulia', 55, 104, '<kanji>berharga</kanji> <kanji>VIP</kanji> adalah <vocabulary>pengunjung mulia</vocabulary>. Mereka mungkin seorang ratu atau diplomat atau semacamnya. Jadi sebaiknya Anda memperlakukan mereka dengan sangat baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8237_pengunjung_mulia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '国賓', 'tamu-negara', 55, 105, '<kanji>VIP</kanji> dari <kanji>negara</kanji> lain adalah <vocabulary>tamu negara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8238_tamu_negara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '来賓', 'tamu', 55, 106, '<kanji>VIP</kanji> <kanji>datang</kanji> ke rumah Anda. Mereka adalah <vocabulary>tamu</vocabulary> Anda! Saya harap Anda tidak membuat mereka tidur di sofa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8239_tamu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '賓客', 'tamu-kehormatan', 55, 107, '<kanji>VIP</kanji> <kanji>tamu</kanji> adalah <vocabulary>tamu kehormatan</vocabulary>. Mereka bahkan lebih penting daripada tamu biasa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8240_tamu_kehormatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '赴任', 'pindah-untuk-pekerjaan-berbeda', 55, 108, '<kanji>Lanjutkan</kanji> ke tempat baru untuk melakukan <kanji>tugas</kanji> Anda. Itu hanyalah cara yang bagus untuk mengatakan bahwa Anda akan <vocabulary>pindah ke pekerjaan lain</vocabulary>. Ini biasanya merupakan pekerjaan di perusahaan yang sama dengan tempat Anda berada, hanya saja posisi Anda berbeda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8241_pindah_untuk_pekerjaan_berbeda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '旦那', 'menguasai', 55, 109, 'Saat <kanji>fajar</kanji> <kanji>apa</kanji> hal pertama yang harus Anda lihat? <vocabulary>master</vocabulary> Anda. Dia ingin Anda membangunkannya dan membawakan sandalnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8242_menguasai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '輪郭', 'garis-besar', 55, 110, 'Jiplak <kanji>penutup</kanji> dari <kanji>roda</kanji> di atas kertas dan Anda akan menggambar <vocabulary>garis besar</vocabulary>-nya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8243_garis_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鎮圧', 'penekanan', 55, 111, '<kanji>Tenangkan</kanji> <kanji>tekanan</kanji> dengan obat yang membantu <vocabulary>penekanannya</vocabulary>. Maka Anda tidak perlu merasakannya lagi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8244_penekanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鎮魂', 'ketenangan-jiwa', 55, 112, 'Untuk <kanji>menenangkan</kanji> <kanji>jiwa</kanji> Anda harus memiliki <vocabulary>ketenangan jiwa</vocabulary> secara massal. Kemudian jiwa mereka akan berpindah ke kehidupan selanjutnya dan berhenti berkeliaran di sini, menghantui payung.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8245_ketenangan_jiwa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鎮める', 'untuk-menenangkan', 55, 113, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menenangkan</kanji>, jadi versi kata kerjanya adalah apa yang terjadi ketika Anda sudah bisa menenangkan seseorang. Itu adalah <vocabulary>untuk menenangkan</vocabulary> atau <vocabulary>untuk menekan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda ingin <vocabulary>menenangkan</vocabulary> dia karena <reading>dia</reading> (しず) SANGAT marah. Dia kesal dan marah dan dia akan memukuli Anda jika Anda tidak tahu cara <vocabulary>menenangkan</vocabulary> dia!')
    RETURNING id INTO v_8246_untuk_menenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '重鎮', 'pemimpin', 55, 114, 'Anda memerlukan dosis <kanji>berat</kanji> untuk <kanji>menenangkan</kanji> agar Anda bisa menjadi <vocabulary>pemimpin</vocabulary>. Menjadi seorang pemimpin bisa sangat menegangkan sehingga kebanyakan dari mereka dibius. Tenangkan diri Anda juga dan Anda akan menjadi seperti mereka!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8247_pemimpin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鎮痛剤', 'penawar-rasa-sakit', 55, 115, '<kanji>Tenangkan</kanji> <kanji>rasa sakit</kanji> Anda dengan <kanji>dosis</kanji> <vocabulary>pereda nyeri</vocabulary> yang kuat! Nyam nyam. Namun, jangan mengambil terlalu banyak!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8248_penawar_rasa_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '骨髄', 'sumsum-tulang', 55, 116, '<kanji>Tulang</kanji> <kanji>sumsum</kanji> adalah <vocabulary>sumsum tulang</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8249_sumsum_tulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '真髄', 'esensi', 55, 117, 'Periksa <kanji>realitas</kanji> dan ekstrak <kanji>sumsum</kanji> - ini akan membuat Anda memahami <vocabulary>esensi</vocabulary> dan <vocabulary>jiwa</vocabulary>. Renungkan hal-hal ini dengan sungguh-sungguh, dan Anda bahkan mungkin menemukan <kosa kata>makna sebenarnya</vocabulary> dari kehidupan, alam semesta, dan segalanya.

真髄 adalah kata formal yang digunakan untuk menggambarkan esensi atau inti sebenarnya dari sesuatu — seringkali dengan sedikit bakat sastra. Ini digunakan ketika berbicara tentang makna terdalam atau bagian terpenting dari sebuah ide, keterampilan, atau filosofi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8250_esensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '勿論', 'tentu-saja', 55, 118, 'Anda <kanji>tidak boleh</kanji> menganggap ini sebagai <kanji>teori</kanji>, karena <vocabulary>tentu saja</vocabulary> itu adalah fakta. <vocabulary>Tak perlu dikatakan lagi</vocabulary>, memang begitulah adanya.

Kata ini sering kali ditulis dalam huruf kana, namun ada baiknya mengetahui versi kanjinya juga.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji. <vocabulary>Tak perlu dikatakan lagi</vocabulary>, Anda seharusnya bisa membaca ini sendiri!')
    RETURNING id INTO v_9096_tentu_saja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瑛斗', 'ya-ampun', 55, 119, '<kanji>kristal</kanji> <kanji>sendok</kanji> adalah nama pemberian <vocabulary>Eito</vocabulary> dalam bahasa Jepang. Jika Anda mengenal penyanyi-penulis lagu Eito, bayangkan dia memegang sendok kristal. Jika tidak, Eito mana pun bisa melakukannya! Tokoh masyarakat lain yang memiliki nama tersebut termasuk pemain bisbol profesional Tanaka Eito (田中 瑛斗) dan aktor Takarazuka Namiki Eito (波輝 瑛斗).', 'Nama ini menggunakan on''yomi untuk kedua kanji, dan Anda mempelajari kedua bacaan ini dengan kanji. Dapatkan sendiri sendok kristal untuk merayakannya!

Catatan: Nama ini terkadang juga bisa dibaca あきと, seperti halnya pemain bisbol profesional Takabe Akito (髙部 瑛斗).')
    RETURNING id INTO v_9098_ya_ampun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遼太', 'ryota', 55, 120, '<kanji>Jauh</kanji> <kanji>gemuk</kanji> merupakan nama pemberian dalam bahasa Jepang <vocabulary>Ryota</vocabulary>. Bayangkan pemain sepak bola Noguchi Ryota (野口 遼太) menendang bola gemuk ke kejauhan sementara pengisi suara Asari Ryota (浅利 遼太) berkomentar.', 'Nama ini menggunakan on''yomi untuk kedua kanji. Anda belum mempelajari on''yomi khusus ini untuk 太, jadi inilah mnemonik untuk membantu Anda:

Makanan <vocabulary>Ryota</vocabulary> hanya terdiri dari <reading>ta</reading>cos (た). Taco, taco, taco untuk sarapan, makan siang dan makan malam. enak!')
    RETURNING id INTO v_9099_ryota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '唐揚げ', 'ayam-goreng', 55, 121, 'Anda mendapatkan kombinasi <kanji>China</kanji> dan 揚げ, yang berarti "goreng". Itulah sebabnya <vocabulary>Ayam Goreng</vocabulary> ala Cina, atau mungkin Anda juga sudah mengetahuinya, <vocabulary>karaage</vocabulary>.

Meskipun 唐揚げ paling sering merujuk pada ayam goreng, secara teknis kata ini juga merujuk pada daging, ikan, atau sayuran goreng lainnya. Karena ini adalah arti yang paling umum, mengingat ini sebagai "ayam goreng" tidak masalah.', 'Anda tahu cara membaca bagian 揚げ, tapi ini menggunakan bacaan kun''yomi untuk 唐, yang merupakan hal baru. Anda mungkin dapat mengingat bacaan ini dengan mengasosiasikan ayam goreng dengan karaage Jepang, namun jika Anda belum mengetahuinya, berikut ini mnemonik untuk membantu Anda:

Untuk membuat <vocabulary>ayam goreng</vocabulary> seperti ini, pertama-tama Anda harus memotongnya satu <read>から</reading>て yang kuat. Jika Anda menggorengnya tanpa potongan からて itu, apa pun yang Anda lakukan, hasilnya akan buruk. Jadi ingatlah itu lain kali kamu membuatkannya untukku, oke?')
    RETURNING id INTO v_9311_ayam_goreng;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3969_kejahatan_menghasilkan_kejahatan, 'Kejahatan Menghasilkan Kejahatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3969_kejahatan_menghasilkan_kejahatan, 'Kejahatan Menghasilkan Kejahatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_3969_kejahatan_menghasilkan_kejahatan, 'あくいんあっか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3969_kejahatan_menghasilkan_kejahatan, '悪因悪果って言うだろ？当然のむくいだよ。', 'Mereka mengatakan “kejahatan menghasilkan kejahatan” bukan? Jadi mereka mendapat hukuman yang pantas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3969_kejahatan_menghasilkan_kejahatan, '悪いことをしたら、悪因悪果で後々ひどい目にあうよ。', 'Jika Anda melakukan sesuatu yang buruk, Anda akan mendapat masalah di kemudian hari karena kejahatan menghasilkan kejahatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3969_kejahatan_menghasilkan_kejahatan, '聖書には、業について何て書いてあるんだっけ？悪因悪果とかだっけか？', 'Apa yang Alkitab katakan tentang karma? Apakah itu seperti “kejahatan menghasilkan kejahatan” atau semacamnya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4134_ketidaksamaan, 'Ketidaksamaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4134_ketidaksamaan, 'Tidak setara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4134_ketidaksamaan, 'ふとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4134_ketidaksamaan, 'これは上から見ると不等辺三角形になるようにデザインされています。', 'Ini dirancang untuk membentuk segitiga tak sama panjang jika dilihat dari atas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4134_ketidaksamaan, 'この時、以下の不等式が成り立ちます。', 'Pada saat ini, ketimpangan berikut terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4134_ketidaksamaan, 'この車は、トルクが前41：後59で不等配分されるようになっています。', 'Mobil dirancang untuk mendistribusikan torsi secara tidak merata pada 41:59 antara depan dan belakang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6000_ayah_tiri, 'Ayah tiri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6000_ayah_tiri, 'けいふ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6000_ayah_tiri, 'ままちち', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6000_ayah_tiri, '小さい頃、継父にいつもおんぶをしてもらっていました。', 'Ayah tiriku selalu memberiku tumpangan ketika aku masih kecil.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7094_digambarkan_dengan_jelas, 'Digambarkan dengan Jelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7094_digambarkan_dengan_jelas, 'Dinyatakan dengan Jelas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7094_digambarkan_dengan_jelas, 'やくじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7094_digambarkan_dengan_jelas, 'そいつにチャンピオンの面目躍如たるところを見せつけてやれ！', 'Tunjukkan padanya kamu adalah juara seperti apa!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7962_kejujuran, 'Kejujuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7962_kejujuran, 'Kesungguhan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7962_kejujuran, 'たんせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7962_kejujuran, 'お婆ちゃんが丹誠込めて育てたトマトだよ。', 'Ini adalah tomat yang nenek tanam dengan sungguh-sungguh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7962_kejujuran, 'この時計は、一つひとつ丹誠に仕上げられています。', 'Masing-masing jam tangan ini dibuat dengan perawatan yang sungguh-sungguh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7962_kejujuran, '医師たちは患者のために丹誠を尽くした。', 'Para dokter dengan sepenuh hati mengabdikan diri untuk pasiennya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7962_kejujuran, '彼女は丹誠を込めて料理を作り、親戚一同を出迎えた。', 'Dia menyiapkan makanan dengan perhatian yang tulus dan menyambut semua kerabatnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8141_serius, 'Serius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8141_serius, 'Megah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8141_serius, 'Bermartabat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8141_serius, 'そうごん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8141_serius, 'その儀式は荘厳に行われました。', 'Upacara diadakan dengan khidmat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8141_serius, '寺院は荘厳な空気に包まれていた。', 'Kuil itu diselimuti suasana bermartabat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8141_serius, '荘厳な光が、神殿の奥から差し込んでいた。', 'Cahaya agung mengalir dari dalam kuil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8141_serius, '山の頂には、荘厳な静けさがあった。', 'Di puncak gunung, ada keheningan yang khusyuk.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8177_ini, 'Ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8177_ini, 'Yang ini', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8177_ini, 'これ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8177_ini, 'よかったら之も持って行きなさい。', 'Ambil ini juga, jika kamu mau.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8178_gerak_mengombak, 'Gerak mengombak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8178_gerak_mengombak, 'Naik Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8178_gerak_mengombak, 'Tertinggi dan Terendah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8178_gerak_mengombak, 'きふく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8178_gerak_mengombak, '生理前はどうしても感情の起伏が激しくなってしまう。', 'Menjelang haid saya selalu mengalami naik turunnya emosi yang hebat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8179_untuk_menutupi, 'Untuk Menutupi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8179_untuk_menutupi, 'Untuk Menyembunyikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8179_untuk_menutupi, 'Untuk Berbaring Terbalik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8179_untuk_menutupi, 'Untuk Menyerahkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8179_untuk_menutupi, 'ふせる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8179_untuk_menutupi, 'どうして弟が犯罪者であることを伏せていたんだ。', 'Mengapa kamu tidak memberi tahu kami bahwa saudaramu adalah seorang penjahat?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8180_menyerah, 'Menyerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8180_menyerah, 'Penyerahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8180_menyerah, 'こうふく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8180_menyerah, '絶対にあいつらを降伏させてみせる。', 'Saya pasti akan membuat mereka menyerah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8181_menutupi, 'Menutupi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8181_menutupi, 'Persembunyian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8181_menutupi, 'Penyergapan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8181_menutupi, 'せんぷく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8181_menutupi, '我々はマフィアの潜伏捜査をすることになった。', 'Kami melakukan penyelidikan rahasia terhadap mafia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8182_bayangan, 'Bayangan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8182_bayangan, 'ふくせん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8182_bayangan, '伏線の張り方がすごい。', 'Metode bayangan ini luar biasa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8183_penyergapan, 'Penyergapan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8183_penyergapan, 'ふくへい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8183_penyergapan, '伏兵に襲われたんだ。', 'Mereka diserang oleh penyergapan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8184_kerja_bagus, 'Kerja Bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8184_kerja_bagus, 'Karya yang Bagus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8184_kerja_bagus, 'かさく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8184_kerja_bagus, '私の描いた絵が佳作で入選しました。', 'Gambar yang saya buat terpilih sebagai karya bagus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8185_di_dekat, 'Di dekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8185_di_dekat, 'Menutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8185_di_dekat, 'Di samping', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8185_di_dekat, 'Di Sisi Seseorang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8185_di_dekat, 'そば', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8185_di_dekat, 'はた', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8185_di_dekat, 'いつまでも君の傍にいるよ。', 'Aku akan selalu berada di sisimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8185_di_dekat, '傍から見ていても全然わからなかった。', 'Saya tidak dapat memahaminya bahkan ketika saya melihatnya dari dekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8185_di_dekat, '旦那なら、今京王百貨店の傍の居酒屋に飲みに行っているよ。', 'Jika yang kamu cari adalah suamiku, dia sedang keluar minum di izakaya dekat Toserba Keio sekarang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8186_lihat, 'Lihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8186_lihat, 'Duduk Dan Tonton', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8186_lihat, 'Tonton', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8186_lihat, 'ぼうかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8186_lihat, '私はイジメをただ傍観していました。', 'Saya hanya melihat pada intimidasi tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8187_pemantauan, 'Pemantauan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8187_pemantauan, 'Penangkapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8187_pemantauan, 'Penyadapan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8187_pemantauan, 'ぼうじゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8187_pemantauan, '警察は、犯罪捜査のために、通信の傍受を行うことがあります。', 'Polisi dapat melakukan pemantauan korespondensi untuk kepentingan penyelidikan kriminal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8188_mengeras, 'Mengeras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8188_mengeras, 'Mengental', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8188_mengeras, 'Membekukan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8188_mengeras, 'ぎょうこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8188_mengeras, '煮詰めたジャムは、冷めてくると粘性が強まり、ゼリー状に凝固します。', 'Selai yang saya rebus setelah dingin akan menjadi kental dan mengeras menjadi agar-agar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8189_menatap, 'Menatap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8189_menatap, 'Tatapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8189_menatap, 'Fiksasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8189_menatap, 'ぎょうし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8189_menatap, 'タイプの女性がいたので、思わず凝視してしまいました。', 'Dia adalah tipe wanitaku jadi aku menatap tanpa sengaja.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8190_menjadi_bergairah_tentang, 'Menjadi Bergairah Tentang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8190_menjadi_bergairah_tentang, 'Untuk Menjadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8190_menjadi_bergairah_tentang, 'Untuk Tumbuh Kaku', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8190_menjadi_bergairah_tentang, 'こる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8190_menjadi_bergairah_tentang, 'デスクワークのせいで肩や首が凝るのは仕方がない。', 'Bahu dan leher Anda menjadi kaku akibat pekerjaan di meja tidak dapat dihindari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8190_menjadi_bergairah_tentang, '最近、俳句に凝っているんですよ。', 'Saya telah menyukai haiku akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8190_menjadi_bergairah_tentang, '妻の料理の盛り付けは、いつも凝っています。', 'Penyajian makanan istri saya selalu rumit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8191_kehadiran, 'Kehadiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8191_kehadiran, 'Melayani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8191_kehadiran, 'Kementerian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8191_kehadiran, 'ほうし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8191_kehadiran, '今年の夏休みは、老人ホームで奉仕活動をしました。', 'Liburan musim panas ini saya menjadi sukarelawan di rumah warga lanjut usia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8192_keyakinan, 'Keyakinan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8192_keyakinan, 'Keyakinan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8192_keyakinan, 'しんぽう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8192_keyakinan, '私は日本国民全員が神道を信奉すべきだと思います。', 'Saya pikir semua warga negara Jepang harus percaya pada Shinto.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8193_melayani, 'Melayani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8193_melayani, 'Magang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8193_melayani, 'Tugas Umum', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8193_melayani, 'ほうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8193_melayani, 'お礼奉公とは看護婦が、看護学生時代に借りた奨学金の返済制度の一つです。', 'Oreiboukou, yang berarti "layanan gratis setelah menyelesaikan masa magang", adalah sistem bagi perawat untuk membayar kembali pinjaman siswa yang mereka ambil saat masih di sekolah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8194_dedikasi, 'Dedikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8194_dedikasi, 'Menawarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8194_dedikasi, 'Presentasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8194_dedikasi, 'ほうのう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8194_dedikasi, 'どうして首相が靖国神社に玉串料を奉納することが批判されるのですか。', 'Mengapa Perdana Menteri mendapat kritik karena memberikan persembahan di Kuil Yasukuni?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8195_air_seni, 'Air seni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8195_air_seni, 'Kencing', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8195_air_seni, 'にょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8195_air_seni, '病院で尿検査をして、妊娠していると言われました。', 'Saya tes urinalisis di rumah sakit dan katanya saya hamil.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8196_periode_yayoi, 'Periode Yayoi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8196_periode_yayoi, 'Yayoi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8196_periode_yayoi, 'やよい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8196_periode_yayoi, '弥生時代のはじまりは紀元前300年頃です。', 'Awal Periode Yayoi kira-kira pada tahun 300 SM.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8197_sirkulasi, 'Sirkulasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8197_sirkulasi, 'Rotasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8197_sirkulasi, 'Siklus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8197_sirkulasi, 'じゅんかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8197_sirkulasi, '血液の循環には二種類の経路があります。', 'Ada dua jenis jalur peredaran darah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8198_belasungkawa, 'Belasungkawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8198_belasungkawa, 'Menyesali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8198_belasungkawa, 'Simpati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8198_belasungkawa, 'Meratapi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8198_belasungkawa, 'あいとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8198_belasungkawa, '哀悼の意を表して、黙祷しました。', 'Saya menyampaikan belasungkawa dan berdoa dalam hati.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8199_duka, 'Duka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8199_duka, 'Peringatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8199_duka, 'ついとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8199_duka, 'みんなで奴の追悼コンサートを開かないか？', 'Bagaimana kalau kita mengadakan konser peringatan untuknya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8200_menjadi_hemat, 'Menjadi Hemat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8200_menjadi_hemat, 'Untuk Menghemat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8200_menjadi_hemat, 'おしむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8200_menjadi_hemat, 'お前がちょっとした手間を惜しんだために、全ての計画がおじゃんになったんだぞ！', 'Anda tidak akan meluangkan waktu sedikit pun sehingga semua rencana Anda gagal!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8201_kalah_dalam_pertandingan_jarak_dekat, 'Kalah Dalam Pertandingan Jarak Dekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8201_kalah_dalam_pertandingan_jarak_dekat, 'Kekalahan yang Sangat Disesalkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8201_kalah_dalam_pertandingan_jarak_dekat, 'せきはい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8201_kalah_dalam_pertandingan_jarak_dekat, 'わが校は、惜敗でベスト8入りを逃しました。', 'Sekolah kami gagal masuk ke delapan besar karena kalah dalam pertandingan yang ketat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8202_menyenangkan, 'Menyenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8202_menyenangkan, 'Senang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8202_menyenangkan, 'ゆかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8202_menyenangkan, '昔、「僕は殺しが愉快でたまらない」と言った少年殺人犯がいました。', 'Dahulu kala, seorang pembunuh muda berkata, "Saya tidak bisa tidak menganggap pembunuhan itu menyenangkan."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8203_depresi, 'Depresi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8203_depresi, 'Kemurungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8203_depresi, 'Kekesalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8203_depresi, 'Kesuraman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8203_depresi, 'ゆううつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8203_depresi, '会社へ出勤するのが憂鬱です。', 'Bekerja di sebuah perusahaan memang menyedihkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8203_depresi, '長靴をはいた瞬間、雨の日が憂鬱じゃなくなる。水たまり？むしろ入るためにある。そんな気分になる。', 'Saat Anda mengenakan sepatu bot hujan, hari-hari hujan tidak lagi terasa menyedihkan. genangan air? Mereka praktis ada untuk dimasuki. Suasana hati seperti itulah yang mereka berikan kepada Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8204_kepedulian_patriotik, 'Kepedulian Patriotik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8204_kepedulian_patriotik, 'Patriotisme', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8204_kepedulian_patriotik, 'ゆうこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8204_kepedulian_patriotik, '憂国の若きサムライたちよ、今こそ立ち上がれ！', 'Pejuang muda patriotisme, sekaranglah saatnya untuk bangkit!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8205_kecemasan, 'Kecemasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8205_kecemasan, 'Kekhawatiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8205_kecemasan, 'Takut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8205_kecemasan, 'ゆうりょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8205_kecemasan, 'ズバリ、社長が現在抱える憂慮とは何ですか。', 'Apa yang menjadi perhatian presiden perusahaan saat ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8206_menjadi_cemas, 'Menjadi Cemas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8206_menjadi_cemas, 'Untuk Khawatir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8206_menjadi_cemas, 'Untuk meratap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8206_menjadi_cemas, 'Untuk berduka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8206_menjadi_cemas, 'Menjadi Tertekan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8206_menjadi_cemas, 'うれえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8206_menjadi_cemas, '親が子供の将来を憂えるのは当然のことだ。', 'Wajar jika orang tua merasa cemas terhadap masa depan anaknya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8207_sangat_disesalkan, 'Sangat disesalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8207_sangat_disesalkan, 'Tidak memuaskan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8207_sangat_disesalkan, 'いかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8207_sangat_disesalkan, '裁判は誠に遺憾な結果に終わりました。', 'Uji coba berakhir dengan hasil yang benar-benar tidak memuaskan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8208_resepsi_pernikahan, 'Resepsi Pernikahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8208_resepsi_pernikahan, 'Penerimaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8208_resepsi_pernikahan, 'ひろうえん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8208_resepsi_pernikahan, '友人の披露宴に出席する際のマナーを教えてください。', 'Tolong ajari aku sopan santun saat menghadiri resepsi pernikahan temanku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8209_sedikit, 'Sedikit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8209_sedikit, 'Sebuah Sentuhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8209_sedikit, 'Agak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8209_sedikit, 'いちまつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8209_sedikit, '一抹の不安が胸をよぎった。', 'Sejenak aku merasa sedikit cemas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8210_penghapusan, 'Penghapusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8210_penghapusan, 'Pembunuhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8210_penghapusan, 'Penyangkalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8210_penghapusan, 'Penghapusan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8210_penghapusan, 'Mengabaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8210_penghapusan, 'Pembunuhan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8210_penghapusan, 'まっさつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8210_penghapusan, 'この日大臣がしていたことは、陳情の抹殺ばかりだった。', 'Yang dilakukan menteri pada hari itu hanyalah mematikan petisi tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8210_penghapusan, '村民の抹殺が我々の目標だ。', 'Pemusnahan penduduk desa adalah tujuan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8210_penghapusan, 'あの男は、組織に歯向かったため、社会から抹殺されたんだよ。', 'Orang itu bangkit melawan sistem dan terhapus dari masyarakat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8211_cocok, 'cocok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8211_cocok, 'Teh Hijau Bubuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8211_cocok, 'まっちゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8211_cocok, '毎朝抹茶ラテを飲んでいます。', 'Saya minum matcha latte setiap pagi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8212_menghapus, 'Menghapus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8212_menghapus, 'Menghapus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8212_menghapus, 'まっしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8212_menghapus, '彼は怪我で一軍登録を抹消されたんだ。', 'Pendaftaran tentaranya dihapus karena cederanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8213_untuk_menginstal, 'Untuk Menginstal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8213_untuk_menginstal, 'Untuk Melengkapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8213_untuk_menginstal, 'Untuk Memasang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8213_untuk_menginstal, 'すえつける', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8213_untuk_menginstal, 'ここに戸棚を据え付けるつもりだよ。', 'Saya berencana memasang lemari di sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8214_sekali, 'Sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8214_sekali, 'Untuk Sesaat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8214_sekali, 'Untuk sementara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8214_sekali, 'いったん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8214_sekali, 'この話は一旦なかったことにしてもらえませんか。', 'Maukah Anda melupakan percakapan itu sejenak?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8215_hari_tahun_baru, 'Hari Tahun Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8215_hari_tahun_baru, 'Pagi Tahun Baru', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8215_hari_tahun_baru, 'がんたん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8215_hari_tahun_baru, '元旦には家族で初詣に行きます。', 'Saya akan mengunjungi kuil bersama keluarga saya pada Hari Tahun Baru.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8216_kemakmuran, 'Kemakmuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8216_kemakmuran, 'Maju', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8216_kemakmuran, 'Berkembang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8216_kemakmuran, 'はんじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8216_kemakmuran, '商売が繁昌するように、神社でお祈りをしてきました。', 'Saya pergi berdoa di kuil Shinto agar perusahaan menjadi makmur.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8217_sederhana, 'Sederhana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8217_sederhana, 'Naif', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8217_sederhana, 'そぼく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8217_sederhana, 'みなさんの素朴な疑問にお答えします。', 'Saya akan menjawab pertanyaan sederhana semua orang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8218_prefektur_tochigi, 'Prefektur Tochigi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8218_prefektur_tochigi, 'とちぎけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8218_prefektur_tochigi, '栃木県の出身なんですか？', 'Apakah Anda dari Prefektur Tochigi?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8219_gabus, 'Gabus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8219_gabus, 'Sumbat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8219_gabus, 'Steker', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8219_gabus, 'せん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8219_gabus, '栓抜きが無くても瓶ビールの栓を抜く裏ワザを知っています。', 'Jika Anda tidak memiliki pembuka botol, saya tahu trik membuka botol bir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8220_pembuka_botol, 'Pembuka Botol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8220_pembuka_botol, 'Kotrek', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8220_pembuka_botol, 'せんぬき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8220_pembuka_botol, '栓抜きはそこの引き出しに入ってます。', 'Pembuka botol ada di laci itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8221_deterjen, 'Deterjen', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8221_deterjen, 'せんじょうざい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8221_deterjen, '洗浄剤なら、シンクの下にあります。', 'Jika Anda mencari deterjen, ada di bawah wastafel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8221_deterjen, '果たしてこの洗浄剤に本当に効果はあるのだろうか。', 'Saya ingin tahu apakah deterjen ini benar-benar efektif.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8222_labu_kuning, 'Labu kuning', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8222_labu_kuning, 'Labu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8222_labu_kuning, 'Kabocha', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8222_labu_kuning, 'かぼちゃ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8222_labu_kuning, 'なんきん', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8222_labu_kuning, 'お母さんが作る南瓜パイは絶品なんだ！', 'Ibu membuat pai labu paling enak!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8222_labu_kuning, '今日は冬至だから晩御飯は南瓜を使った料理にしよう。', 'Hari ini adalah titik balik matahari musim dingin, jadi mari kita makan kabocha untuk makan malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8222_labu_kuning, '南瓜の煮物を炊きました。', 'Saya memasak hidangan labu rebus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8223_wajah_oval, 'Wajah Oval', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8223_wajah_oval, 'うりざねがお', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8223_wajah_oval, '瓜実顔で雰囲気のある女優を探しています。', 'Saya mencari aktris dengan wajah oval dan penampilan yang khas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8223_wajah_oval, '彼女は典型的な瓜実顔だ。', 'Dia memiliki wajah oval klasik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8223_wajah_oval, '瓜実顔の姫は、すだれの奥から静かにこちらを見ていた。', 'Putri berwajah oval itu menatap kami dengan tenang dari balik tirai bambu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8223_wajah_oval, '瓜実顔と切れ長の目が、凛とした印象を与えていた。', 'Wajahnya yang lonjong dan matanya yang panjang dan sipit memberinya kesan bermartabat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8224_penyembuhan, 'Penyembuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8224_penyembuhan, 'Menyembuhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8224_penyembuhan, 'Pemulihan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8224_penyembuhan, 'ちゆ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8224_penyembuhan, '虫歯が自然治癒することはありません。', 'Gigi berlubang tidak sembuh begitu saja.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8225_adhesi, 'Adhesi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8225_adhesi, 'Kolusi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8225_adhesi, 'ゆちゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8225_adhesi, '手術後の癒着リスクについて、きちんと説明はなされましたか。', 'Apakah risiko perlengketan setelah operasi dijelaskan secara akurat kepada Anda?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8226_pedesaan, 'Pedesaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8226_pedesaan, 'Kasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8226_pedesaan, 'Kasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8226_pedesaan, 'Vulgar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8226_pedesaan, 'そや', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8226_pedesaan, '彼女は、決して他人に対して粗野に振る舞うことがなかった。', 'Dia tidak pernah memperlakukan orang lain dengan kasar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8227_kasar, 'Kasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8227_kasar, 'Kasar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8227_kasar, 'あらい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8227_kasar, '私はいつも、トウモロコシ、麦、豆などをひき割って粗い粉にしたものをスムージーに入れます。', 'Saya selalu menggunakan tepung kasar dari jagung, gandum, atau kacang-kacangan dalam smoothie saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8228_kasar, 'Kasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8228_kasar, 'Mentah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8228_kasar, 'Lebih rendah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8228_kasar, 'そあく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8228_kasar, '粗悪なガソリンは、車の寿命を早める。', 'Bensin mentah akan memperpendek umur mobil.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8229_jumlah_kumulatif, 'Jumlah Kumulatif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8229_jumlah_kumulatif, 'Jumlah Akumulasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8229_jumlah_kumulatif, 'るいけい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8229_jumlah_kumulatif, 'このサイトでは、人気アプリの累計ダウンロードランキングを毎日更新しています。', 'Saya memperbarui total peringkat unduhan untuk aplikasi populer setiap hari di situs ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8230_promosi_berturut_turut, 'Promosi Berturut-turut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8230_promosi_berturut_turut, 'Promosi Bertahap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8230_promosi_berturut_turut, 'Lulus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8230_promosi_berturut_turut, 'るいしん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8230_promosi_berturut_turut, '彼は若くして部長に累進した。', 'Dia dipromosikan menjadi kepala bagian pada usia yang sangat muda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8231_akumulasi, 'Akumulasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8231_akumulasi, 'るいせき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8231_akumulasi, '日本政府が巨額の国債を累積していることについて、あなたはどのようにお考えですか。', 'Menurut Anda bagaimana pemerintah Jepang mengumpulkan utang negara dalam jumlah besar?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8232_toko_tua, 'Toko Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8232_toko_tua, 'Toko Lama', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8232_toko_tua, 'しにせ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8232_toko_tua, '彼らは、まさに老舗の意地を見せたんだ。', 'Mereka secara alami menunjukkan semangat toko tua.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8233_wasabi, 'Wasabi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8233_wasabi, 'Lobak Jepang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8233_wasabi, 'わさび', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8233_wasabi, 'やはり、すりたての山葵は美味しいね。', 'Tentu saja wasabi yang baru dicukur itu enak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8234_tawanan_perang, 'Tawanan perang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8234_tawanan_perang, 'Tawanan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8234_tawanan_perang, 'ほりょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8234_tawanan_perang, '大変だ。捕虜が脱走したぞ！', 'Kami dalam masalah. Seorang tawanan perang telah melarikan diri!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8234_tawanan_perang, '太平洋戦争では、 約13万人もの米兵が日本の捕虜となった。', 'Dalam Perang Pasifik, sekitar 130.000 tentara Amerika dijadikan tawanan perang di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8234_tawanan_perang, '我が国の兵と引き換えに、敵国の捕虜１０人を解放した。', 'Sebagai imbalan atas tentara kami, kami membebaskan 10 tawanan perang musuh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8235_tawanan, 'Tawanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8235_tawanan, 'Tawanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8235_tawanan, 'Korban Cinta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8235_tawanan, 'Budak Nafsu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8235_tawanan, 'とりこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8235_tawanan, '彼女は、毎日ブログで男を虜にするテクニックについて書いています。', 'Dia menulis di blognya setiap hari tentang teknik memikat pria.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8236_sesuai, 'Sesuai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8236_sesuai, 'Memenuhi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8236_sesuai, 'Berlaku Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8236_sesuai, 'Kualifikasi Sebagai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8236_sesuai, 'がいとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8236_sesuai, 'この商品も、キャンペーンの対象に該当しますか？', 'Apakah merchandise ini sesuai dengan target kampanye?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8236_sesuai, 'スクリーンショットの中の該当コメントを赤い枠で縁取って、目立たせた。', 'Saya menguraikan komentar yang relevan di tangkapan layar dengan kotak merah untuk membuatnya menonjol.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8237_pengunjung_mulia, 'Pengunjung Mulia', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8237_pengunjung_mulia, 'きひん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8237_pengunjung_mulia, '社長が外国の貴賓を接待する際に、通訳として同行しました。', 'Ketika presiden perusahaan pergi untuk menyambut pengunjung asing yang terhormat, saya hadir sebagai penerjemah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8238_tamu_negara, 'Tamu Negara', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8238_tamu_negara, 'こくひん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8238_tamu_negara, 'アメリカ大統領が国賓として来日しました。', 'Presiden Amerika mengunjungi Jepang sebagai tamu negara.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8239_tamu, 'Tamu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8239_tamu, 'Pengunjung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8239_tamu, 'らいひん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8239_tamu, '来賓の方々をはじめ、皆様にはお忙しい中、ご臨席を賜り誠にありがとうございます。', 'Kami ingin mengucapkan terima kasih kepada semua orang, termasuk para tamu, yang telah menghormati kami dengan kehadiran Anda saat Anda semua sibuk.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8240_tamu_kehormatan, 'Tamu Kehormatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8240_tamu_kehormatan, 'Tamu Istimewa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8240_tamu_kehormatan, 'ひんきゃく', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8240_tamu_kehormatan, 'ひんかく', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8240_tamu_kehormatan, '海外の賓客を一流の和食でもてなしました。', 'Kami menyambut tamu kehormatan asing dengan masakan Jepang kelas satu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8241_pindah_untuk_pekerjaan_berbeda, 'Pindah Untuk Pekerjaan Berbeda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8241_pindah_untuk_pekerjaan_berbeda, 'Pindah Untuk Pekerjaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8241_pindah_untuk_pekerjaan_berbeda, 'ふにん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8241_pindah_untuk_pekerjaan_berbeda, '今度、中国に赴任することになりました。', 'Saya akan dikirim ke China.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8242_menguasai, 'Menguasai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8242_menguasai, 'Suami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8242_menguasai, 'Pelindung Pria', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8242_menguasai, 'だんな', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8242_menguasai, '旦那は出張で今週ずっと留守にしています。', 'Tuannya akan pergi sepanjang minggu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8243_garis_besar, 'Garis besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8243_garis_besar, 'Berbatasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8243_garis_besar, 'Bayangan hitam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8243_garis_besar, 'Ringkasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8243_garis_besar, 'Fitur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8243_garis_besar, 'Penampilan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8243_garis_besar, 'りんかく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8243_garis_besar, '涙で輪郭が霞んで見えました。', 'Garis besarnya menjadi kabur karena air mataku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8244_penekanan, 'Penekanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8244_penekanan, 'Penaklukan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8244_penekanan, 'ちんあつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8244_penekanan, '警察が三日がかりでデモ隊を鎮圧しました。', 'Polisi membubarkan para demonstran pada hari ketiga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8245_ketenangan_jiwa, 'Ketenangan Jiwa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8245_ketenangan_jiwa, 'ちんこん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8245_ketenangan_jiwa, '星祭りは、平和を祈り、戦死者を鎮魂する儀式です。', 'Festival Bintang merupakan ritual berdoa bagi perdamaian dan memberikan ketenangan kepada orang-orang yang tewas dalam perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8245_ketenangan_jiwa, 'これは死者の鎮魂のために特別に設けられた台座です。', 'Ini adalah alas yang khusus dipasang untuk peristirahatan jiwa orang mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8245_ketenangan_jiwa, 'さあ、みんなで鎮魂歌を歌いましょう。', 'Ayo, kita menyanyikan requiem bersama.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8246_untuk_menenangkan, 'Untuk Menenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8246_untuk_menenangkan, 'Untuk Menekan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8246_untuk_menenangkan, 'Untuk Menenangkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8246_untuk_menenangkan, 'しずめる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8246_untuk_menenangkan, '神の怒りを鎮めるには、生贄を捧げる必要があります。', 'Untuk meredakan kemarahan dewa, kita perlu mempersembahkan korban.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8247_pemimpin, 'Pemimpin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8247_pemimpin, 'Otoritas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8247_pemimpin, 'じゅうちん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8247_pemimpin, '彼の会社は、業界の重鎮達を次々と役員に迎え入れた。', 'Perusahaan itu mengantarkan para pemimpin industri satu demi satu ke stafnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8248_penawar_rasa_sakit, 'Penawar rasa sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8248_penawar_rasa_sakit, 'Pereda Sakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8248_penawar_rasa_sakit, 'Obat penenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8248_penawar_rasa_sakit, 'Obat penenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8248_penawar_rasa_sakit, 'Obat penenang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8248_penawar_rasa_sakit, 'ちんつうざい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8248_penawar_rasa_sakit, '医者に鎮痛剤を注射してもらいました。', 'Saya menerima suntikan obat penghilang rasa sakit dari dokter.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8249_sumsum_tulang, 'Sumsum Tulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8249_sumsum_tulang, 'Sumsum', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8249_sumsum_tulang, 'こつずい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8249_sumsum_tulang, '骨髄バンクに登録しました。', 'Saya mendaftar di bank sumsum tulang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8250_esensi, 'Esensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8250_esensi, 'Jiwa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8250_esensi, 'Arti Sebenarnya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8250_esensi, 'しんずい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8250_esensi, '京料理の真髄はハモ料理だと思います。', 'Menurut saya inti masakan Kyoto ada pada masakan belut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8250_esensi, '無駄を省くと、真髄が見えてきますよ。', 'Buang kelebihannya dan esensinya akan terungkap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8250_esensi, '真髄をつかむには、時間がかかるものです。', 'Memahami esensi biasanya membutuhkan waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8250_esensi, '真髄は、誰にでもすぐ見えるものではありません。', 'Esensinya bukanlah sesuatu yang dapat dilihat dengan mudah oleh semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8250_esensi, 'この演奏には、ジャズの真髄が詰まっています。', 'Pertunjukan ini sarat dengan esensi jazz.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9096_tentu_saja, 'Tentu saja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9096_tentu_saja, 'Tidak perlu dikatakan lagi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9096_tentu_saja, 'もちろん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9096_tentu_saja, 'その商品なら、うちの店にも勿論ありますよ。', 'Tentu saja kami memiliki produk itu di toko kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9096_tentu_saja, '日本語も勿論ですが、フランス語も喋れるようになりたいです。', 'Tentu saja saya ingin bisa berbahasa Jepang, tetapi saya juga ingin bisa berbahasa Prancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9096_tentu_saja, '勿論、子育ての合間に勉強が出来る人もいるだろうけど、私には難しいです。', 'Tentu saja, ada orang yang bisa belajar sambil mengasuh anak, tapi itu sulit bagi saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9098_ya_ampun, 'Ya ampun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9098_ya_ampun, 'Akito', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9098_ya_ampun, 'えいと', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9098_ya_ampun, 'あきと', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9098_ya_ampun, '頑張れよ、瑛斗。', 'Lakukan yang terbaik, Eito.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9098_ya_ampun, 'あそこに田中瑛斗選手がいるよ！', 'Atlet profesional Eito Tanaka ada di sana!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9098_ya_ampun, 'シンガーソングライターの瑛斗は、ソーシャルメディアで有名になりました。', 'Penyanyi-penulis lagu Eito menjadi terkenal di media sosial.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9099_ryota, 'Ryota', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9099_ryota, 'りょうた', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9099_ryota, '今朝、夢に遼太君が現れた。', 'Pagi ini, Ryota-kun muncul dalam mimpiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9099_ryota, '遼太と綾乃ちゃん、付き合ってるらしいよ。', 'Kudengar Ryota dan Ayano berpacaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9099_ryota, '遼太、早く起きないと遅刻するよ！', 'Ryota, cepat bangun atau kamu akan terlambat!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9311_ayam_goreng, 'Ayam goreng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9311_ayam_goreng, 'Karaage', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9311_ayam_goreng, 'からあげ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9311_ayam_goreng, '私の大好物はフグの唐揚げです。', 'Favorit mutlak saya adalah karaage ikan buntal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9311_ayam_goreng, '唐揚げを三人前頼みました。', 'Saya memesan tiga porsi karaage.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9311_ayam_goreng, '唐揚げが無性に食べたい時は、カリウム不足なので、バナナを食べるといいですよ。', 'Jika Anda mengidam karaage yang tidak terkendali, itu karena Anda mungkin kekurangan potasium, jadi makan pisang adalah ide yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9311_ayam_goreng, '天ぷら、唐揚げ、竜田揚げは、どれも食材に衣をつけて揚げる料理です。', 'Tempura, karaage, dan tatsutaage adalah hidangan yang bahan-bahannya dilapisi adonan dan digoreng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9311_ayam_goreng, '天ぷらの衣には小麦粉、唐揚げには小麦粉と片栗粉、竜田揚げには片栗粉が使われます。', 'Tempura menggunakan tepung terigu dalam adonannya, karaage menggunakan tepung terigu dan tepung kentang, dan tatsutaage menggunakan tepung kentang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9311_ayam_goreng, '唐揚げの味付けと粉の比率は自由ですが、竜田揚げには醤油ベースの下味と片栗粉がマストです。', 'Meskipun perbandingan bumbu dan tepung fleksibel untuk karaage, tatsutaage membutuhkan bumbu marinasi berbahan dasar kecap dan tepung kentang untuk adonannya.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2260_busur, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2260_busur, id FROM items WHERE character = '犬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2261_menenangkan, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2261_menenangkan, id FROM items WHERE character = '真' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2262_mempersembahkan, id FROM items WHERE character = '𡗗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2262_mempersembahkan, id FROM items WHERE character = '干' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2263_duka, id FROM items WHERE character = '百' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2263_duka, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2263_duka, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2263_duka, id FROM items WHERE character = '夂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2264_sederhana, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2264_sederhana, id FROM items WHERE character = 'ト' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2265_kastanye_kuda, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2265_kastanye_kuda, id FROM items WHERE character = '厂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2265_kastanye_kuda, id FROM items WHERE character = '万' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2266_hemat, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2266_hemat, id FROM items WHERE character = '昔' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2267_bagus_sekali, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2267_bagus_sekali, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2268_bersedih, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2268_bersedih, id FROM items WHERE character = 'ト' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2268_bersedih, id FROM items WHERE character = '早' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2269_yang_di_atas, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2269_yang_di_atas, id FROM items WHERE character = '亥' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2270_melanjutkan, id FROM items WHERE character = '走' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2270_melanjutkan, id FROM items WHERE character = 'ト' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2271_sumsum, id FROM items WHERE character = '骨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2271_sumsum, id FROM items WHERE character = '有' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2271_sumsum, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2272_di_dekat_sini, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2272_di_dekat_sini, id FROM items WHERE character = '立' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2272_di_dekat_sini, id FROM items WHERE character = '方' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2273_mengumpulkan, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2273_mengumpulkan, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2274_penyembuhan, id FROM items WHERE character = '疒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2274_penyembuhan, id FROM items WHERE character = '/radicals/death-star.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2274_penyembuhan, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2275_lampiran, id FROM items WHERE character = '享' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2275_lampiran, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2276_air_seni, id FROM items WHERE character = '尸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2276_air_seni, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2277_vip, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2277_vip, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2277_vip, id FROM items WHERE character = '少' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2277_vip, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2278_tawanan, id FROM items WHERE character = '虍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2278_tawanan, id FROM items WHERE character = '男' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2279_rasa_bersalah, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2279_rasa_bersalah, r_423_merasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2280_meningkat, id FROM items WHERE character = '弓' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2280_meningkat, id FROM items WHERE character = '𠂉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2280_meningkat, id FROM items WHERE character = '小' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2281_kasar, id FROM items WHERE character = '米' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2281_kasar, id FROM items WHERE character = '且' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2282_sirkulasi, id FROM items WHERE character = '彳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2282_sirkulasi, id FROM items WHERE character = '厂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2282_sirkulasi, id FROM items WHERE character = '/radicals/pope.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2283_mengentalkan, id FROM items WHERE character = '冫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2283_mengentalkan, r_8832_ragu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2285_makmur, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2286_fajar, id FROM items WHERE character = '旦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2287_menyenangkan, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2287_menyenangkan, id FROM items WHERE character = '/radicals/death-star.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2288_menghapus, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2288_menghapus, id FROM items WHERE character = '未' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2289_gabus, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2289_gabus, id FROM items WHERE character = '𠆢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2289_gabus, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2290_ini, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2290_ini, id FROM items WHERE character = '/radicals/hills.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2291_imperial, id FROM items WHERE character = '龍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2292_jauh, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2292_jauh, id FROM items WHERE character = '尞' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2293_kristal, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2293_kristal, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2293_kristal, id FROM items WHERE character = '央' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2294_apa, id FROM items WHERE character = '刀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2294_apa, id FROM items WHERE character = '二' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2294_apa, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9095_tidak_harus, id FROM items WHERE character = '勿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3969_kejahatan_menghasilkan_kejahatan, id FROM items WHERE character = '悪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3969_kejahatan_menghasilkan_kejahatan, id FROM items WHERE character = '因' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3969_kejahatan_menghasilkan_kejahatan, id FROM items WHERE character = '果' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4134_ketidaksamaan, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4134_ketidaksamaan, id FROM items WHERE character = '等' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6000_ayah_tiri, id FROM items WHERE character = '継' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6000_ayah_tiri, id FROM items WHERE character = '父' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7094_digambarkan_dengan_jelas, id FROM items WHERE character = '躍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7094_digambarkan_dengan_jelas, id FROM items WHERE character = '如' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7962_kejujuran, id FROM items WHERE character = '丹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7962_kejujuran, id FROM items WHERE character = '誠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8141_serius, id FROM items WHERE character = '荘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8141_serius, id FROM items WHERE character = '厳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8177_ini, k_2290_ini);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8178_gerak_mengombak, id FROM items WHERE character = '起' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8178_gerak_mengombak, k_2260_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8179_untuk_menutupi, k_2260_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8180_menyerah, id FROM items WHERE character = '降' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8180_menyerah, k_2260_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8181_menutupi, id FROM items WHERE character = '潜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8181_menutupi, k_2260_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8182_bayangan, k_2260_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8182_bayangan, id FROM items WHERE character = '線' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8183_penyergapan, k_2260_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8183_penyergapan, id FROM items WHERE character = '兵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8184_kerja_bagus, k_2267_bagus_sekali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8184_kerja_bagus, id FROM items WHERE character = '作' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8185_di_dekat, k_2272_di_dekat_sini);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8186_lihat, k_2272_di_dekat_sini);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8186_lihat, id FROM items WHERE character = '観' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8187_pemantauan, k_2272_di_dekat_sini);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8187_pemantauan, id FROM items WHERE character = '受' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8188_mengeras, k_2283_mengentalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8188_mengeras, id FROM items WHERE character = '固' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8189_menatap, k_2283_mengentalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8189_menatap, id FROM items WHERE character = '視' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8190_menjadi_bergairah_tentang, k_2283_mengentalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8191_kehadiran, k_2262_mempersembahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8191_kehadiran, id FROM items WHERE character = '仕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8192_keyakinan, id FROM items WHERE character = '信' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8192_keyakinan, k_2262_mempersembahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8193_melayani, k_2262_mempersembahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8193_melayani, id FROM items WHERE character = '公' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8194_dedikasi, k_2262_mempersembahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8194_dedikasi, id FROM items WHERE character = '納' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8195_air_seni, k_2276_air_seni);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8196_periode_yayoi, k_2280_meningkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8196_periode_yayoi, id FROM items WHERE character = '生' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8197_sirkulasi, k_2282_sirkulasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8197_sirkulasi, id FROM items WHERE character = '環' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8198_belasungkawa, id FROM items WHERE character = '哀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8198_belasungkawa, k_2268_bersedih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8199_duka, id FROM items WHERE character = '追' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8199_duka, k_2268_bersedih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8200_menjadi_hemat, k_2266_hemat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8201_kalah_dalam_pertandingan_jarak_dekat, k_2266_hemat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8201_kalah_dalam_pertandingan_jarak_dekat, id FROM items WHERE character = '敗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8202_menyenangkan, k_2287_menyenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8202_menyenangkan, id FROM items WHERE character = '快' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8203_depresi, k_2263_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8203_depresi, id FROM items WHERE character = '鬱' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8204_kepedulian_patriotik, k_2263_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8204_kepedulian_patriotik, id FROM items WHERE character = '国' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8205_kecemasan, k_2263_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8205_kecemasan, id FROM items WHERE character = '慮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8206_menjadi_cemas, k_2263_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8207_sangat_disesalkan, id FROM items WHERE character = '遺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8207_sangat_disesalkan, k_2279_rasa_bersalah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8208_resepsi_pernikahan, id FROM items WHERE character = '披' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8208_resepsi_pernikahan, id FROM items WHERE character = '露' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8208_resepsi_pernikahan, id FROM items WHERE character = '宴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8209_sedikit, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8209_sedikit, k_2288_menghapus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8210_penghapusan, k_2288_menghapus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8210_penghapusan, id FROM items WHERE character = '殺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8211_cocok, k_2288_menghapus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8211_cocok, id FROM items WHERE character = '茶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8212_menghapus, k_2288_menghapus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8212_menghapus, id FROM items WHERE character = '消' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8213_untuk_menginstal, id FROM items WHERE character = '据' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8213_untuk_menginstal, id FROM items WHERE character = '付' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8214_sekali, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8214_sekali, k_2286_fajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8215_hari_tahun_baru, id FROM items WHERE character = '元' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8215_hari_tahun_baru, k_2286_fajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8216_kemakmuran, id FROM items WHERE character = '繁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8216_kemakmuran, k_2285_makmur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8217_sederhana, id FROM items WHERE character = '素' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8217_sederhana, k_2264_sederhana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8218_prefektur_tochigi, k_2265_kastanye_kuda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8218_prefektur_tochigi, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8218_prefektur_tochigi, id FROM items WHERE character = '県' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8219_gabus, k_2289_gabus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8220_pembuka_botol, k_2289_gabus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8220_pembuka_botol, id FROM items WHERE character = '抜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8221_deterjen, id FROM items WHERE character = '洗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8221_deterjen, id FROM items WHERE character = '浄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8221_deterjen, id FROM items WHERE character = '剤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8222_labu_kuning, id FROM items WHERE character = '南' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8222_labu_kuning, id FROM items WHERE character = '瓜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8223_wajah_oval, id FROM items WHERE character = '瓜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8223_wajah_oval, id FROM items WHERE character = '実' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8223_wajah_oval, id FROM items WHERE character = '顔' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8224_penyembuhan, id FROM items WHERE character = '治' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8224_penyembuhan, k_2274_penyembuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8225_adhesi, k_2274_penyembuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8225_adhesi, id FROM items WHERE character = '着' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8226_pedesaan, k_2281_kasar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8226_pedesaan, id FROM items WHERE character = '野' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8227_kasar, k_2281_kasar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8228_kasar, k_2281_kasar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8228_kasar, id FROM items WHERE character = '悪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8229_jumlah_kumulatif, k_2273_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8229_jumlah_kumulatif, id FROM items WHERE character = '計' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8230_promosi_berturut_turut, k_2273_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8230_promosi_berturut_turut, id FROM items WHERE character = '進' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8231_akumulasi, k_2273_mengumpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8231_akumulasi, id FROM items WHERE character = '積' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8232_toko_tua, id FROM items WHERE character = '老' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8232_toko_tua, id FROM items WHERE character = '舗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8233_wasabi, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8233_wasabi, id FROM items WHERE character = '葵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8234_tawanan_perang, id FROM items WHERE character = '捕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8234_tawanan_perang, k_2278_tawanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8235_tawanan, k_2278_tawanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8236_sesuai, k_2269_yang_di_atas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8236_sesuai, id FROM items WHERE character = '当' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8237_pengunjung_mulia, id FROM items WHERE character = '貴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8237_pengunjung_mulia, k_2277_vip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8238_tamu_negara, id FROM items WHERE character = '国' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8238_tamu_negara, k_2277_vip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8239_tamu, id FROM items WHERE character = '来' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8239_tamu, k_2277_vip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8240_tamu_kehormatan, k_2277_vip);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8240_tamu_kehormatan, id FROM items WHERE character = '客' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8241_pindah_untuk_pekerjaan_berbeda, k_2270_melanjutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8241_pindah_untuk_pekerjaan_berbeda, id FROM items WHERE character = '任' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8242_menguasai, k_2286_fajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8242_menguasai, k_2294_apa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8243_garis_besar, id FROM items WHERE character = '輪' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8243_garis_besar, k_2275_lampiran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8244_penekanan, k_2261_menenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8244_penekanan, id FROM items WHERE character = '圧' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8245_ketenangan_jiwa, k_2261_menenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8245_ketenangan_jiwa, id FROM items WHERE character = '魂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8246_untuk_menenangkan, k_2261_menenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8247_pemimpin, id FROM items WHERE character = '重' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8247_pemimpin, k_2261_menenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8248_penawar_rasa_sakit, k_2261_menenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8248_penawar_rasa_sakit, id FROM items WHERE character = '痛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8248_penawar_rasa_sakit, id FROM items WHERE character = '剤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8249_sumsum_tulang, id FROM items WHERE character = '骨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8249_sumsum_tulang, k_2271_sumsum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8250_esensi, id FROM items WHERE character = '真' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8250_esensi, k_2271_sumsum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9096_tentu_saja, k_9095_tidak_harus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9096_tentu_saja, id FROM items WHERE character = '論' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9098_ya_ampun, k_2293_kristal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9098_ya_ampun, id FROM items WHERE character = '斗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9099_ryota, k_2292_jauh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9099_ryota, id FROM items WHERE character = '太' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9311_ayam_goreng, id FROM items WHERE character = '唐' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9311_ayam_goreng, id FROM items WHERE character = '揚' LIMIT 1;

END $$;