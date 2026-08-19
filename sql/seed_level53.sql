-- ====================================================
-- KaniGani — Seed Data Level 53 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 53) ============
  r_438_tinggi UUID;
  -- ============ KANJI IDs (Level 53) ============
  k_2190_toleransi UUID; k_2191_sel UUID; k_2192_membersihkan UUID; k_2193_semua UUID; k_2194_draf UUID; k_2195_berwarna_karat UUID; k_2196_tanah UUID; k_2197_toko UUID; k_2198_inflasi UUID; k_2199_lintang UUID; k_2200_perahu_dayung UUID; k_2201_membuka UUID; k_2202_brokat UUID; k_2204_kelebihan UUID; k_2205_serat UUID; k_2206_menegur UUID; k_2207_bencana UUID; k_2208_menindas UUID; k_2209_memasang UUID; k_2210_dengan_lembut UUID; k_2211_papan UUID; k_2212_kegelapan UUID; k_2213_karper UUID; k_2214_menerima UUID; k_2215_kirmizi UUID; k_2216_fajar UUID; k_2217_barbar UUID; k_2218_melon UUID; k_2219_komandan UUID; k_2220_mencerahkan UUID; k_2221_semacam_tumbuhan UUID; k_2222_kecepatan UUID; k_2223_memahami UUID; k_2224_melati UUID;
  -- ============ VOCABULARY IDs (Level 53) ============
  v_7958_dermatologi UUID; v_7959_penyakit_kulit UUID; v_7960_kerah UUID; v_7961_syal UUID; v_7963_rajin UUID; v_7964_ratifikasi UUID; v_7965_kelebihan UUID; v_7966_berulang UUID; v_7967_kelebihan UUID; v_7968_untuk_makan UUID; v_7969_wahyu UUID; v_7970_pencerahan UUID; v_7971_pencerahan UUID; v_7972_tanah UUID; v_7973_pyongyang UUID; v_7974_toleransi UUID; v_7975_toleransi UUID; v_7976_untuk_bersantai UUID; v_7977_jenderal_angkatan_darat UUID; v_7978_komandan UUID; v_7979_komando_tertinggi UUID; v_7980_berjalan_perlahan UUID; v_7981_perlahan_lahan UUID; v_7982_bencana UUID; v_7983_bencana UUID; v_7984_menderita UUID; v_7985_kegagalan_penghancuran UUID; v_7986_adegan_bencana UUID; v_7987_pengumuman UUID; v_7988_untuk_mendapatkan_antara UUID; v_7989_untuk_menginstal UUID; v_7990_dibangun_di UUID; v_7991_asrama UUID; v_7992_fajar UUID; v_7993_pohon_mati UUID; v_7994_membiarkan_layu UUID; v_7995_untuk_merebus UUID; v_7996_mendidih UUID; v_7997_pemurnian_diri UUID; v_7998_pemurnian UUID; v_7999_tanah_suci UUID; v_8000_kenajisan UUID; v_8001_air_bersih UUID; v_8002_murni UUID; v_8003_pencucian UUID; v_8004_pusaran_air UUID; v_8005_pakar UUID; v_8006_melon UUID; v_8007_semangka UUID; v_8008_naskah UUID; v_8009_catatan UUID; v_8010_penyerahan UUID; v_8011_biaya_naskah UUID; v_8012_lintang UUID; v_8013_lintang_selatan UUID; v_8014_lintang_utara UUID; v_8015_detail UUID; v_8016_paralel UUID; v_8017_serat_sintetis UUID; v_8018_serat UUID; v_8019_serat_sintetis UUID; v_8020_halus UUID; v_8021_untuk_mengangguk UUID; v_8022_spora UUID; v_8023_sel UUID; v_8024_saudara_saudara UUID; v_8025_duduk_bersila UUID; v_8026_timun UUID; v_8027_daging_gemuk UUID; v_8028_toko UUID; v_8029_toko UUID; v_8030_trotoar UUID; v_8031_kantor_pusat UUID; v_8032_kapal_militer UUID; v_8033_lomba_perahu UUID; v_8034_bibit UUID; v_8035_pembibitan UUID; v_8036_semacam_tumbuhan UUID; v_8037_mongolia UUID; v_8038_akar_teratai UUID; v_8039_kekejaman UUID; v_8040_melecehkan UUID; v_8041_kekejaman UUID; v_8042_kezaliman UUID; v_8043_untuk_menindas UUID; v_8044_untuk_menegur UUID; v_8045_guru UUID; v_8047_brokat UUID; v_8048_ikan_mas_berwarna UUID; v_8049_kapan_saja UUID; v_8050_di_mana_pun UUID; v_8051_esai UUID; v_8052_sangat UUID; v_8053_mengikuti UUID; v_8054_puncak UUID; v_8055_menerima_dengan_rendah_hati UUID; v_8056_lonjakan_harga_tiba_tiba UUID; v_8057_kenaikan_tiba_tiba UUID; v_8058_kenaikan_tiba_tiba UUID; v_8059_karper UUID; v_8060_ikan_mas_merah UUID; v_8061_ikan_mas_hitam UUID; v_9103_ryoichiro UUID; v_9104_riko UUID; v_9105_kuda_cepat UUID; v_9316_shiso UUID; v_9400_permaisuri_kerajaan UUID; v_9406_lembut UUID; v_9461_pria_jantan UUID; v_9481_bekerja_dengan_sungguh_sungguh UUID;

BEGIN

  DELETE FROM items WHERE level = 53;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '高', 'tinggi', 53, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>tinggi</radikal>.')
    RETURNING id INTO r_438_tinggi;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_438_tinggi, 'Tinggi', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寛', 'toleransi', 53, 2, '<radical>atap</radikal> <radikal>bunga</radikal> <radikal>melihat</radikal> segalanya. Tapi, mereka hanya melihat. Itu karena mereka mempelajari seni <kanji>toleransi</kanji>.', '<kanji>Toleransi</kanji> adalah satu hal yang sangat mengejutkan Jenghis <reading>Khan</reading> (かん).')
    RETURNING id INTO k_2190_toleransi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '胞', 'sel', 53, 3, 'Ambil <radical>bulan</radical> dan <radical>bungkus</radical> di dalam tas dan itu akan terlihat seperti <kanji>sel</kanji>. Itu adalah lingkaran dalam lingkaran yang lebih besar. Bulan adalah intinya. Ya! Sains sedang terjadi!', 'Saat Anda mempelajari tentang <kanji>sel</kanji>, Anda menyadari bahwa sel itu ada di seluruh <read>ho</reading>saya (ほう). Tanpa Anda sadari, rumah Anda perlahan-lahan dipenuhi sel-sel kulit mati. Dan sekarang setelah Anda mengetahui seperti apa bentuknya (bulan dengan kantong plastik di sekelilingnya), Anda dapat melihatnya di mana-mana.')
    RETURNING id INTO k_2191_sel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '浄', 'membersihkan', 53, 4, '<radikal>tsunami</radikal> <radikal>konflik</radikal> akan <kanji>membersihkan</kanji> dan <kanji>memurnikan</kanji> tanah manusia, rumah, dan budaya.', 'Siapa yang bisa menghentikan <kanji>pembersihan</kanji> ini?! Satu-satunya orang yang mampu melakukan hal ini tentu saja adalah <reading>Joe</reading> (じょう), seorang buruh tani setempat. Dia sangat tinggi dan kekar sehingga dia bisa menghentikan tsunami terbesar sekalipun… bukan?')
    RETURNING id INTO k_2192_membersihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '随', 'semua', 53, 5, 'Berapa banyak <radical>bangunan</radical> yang <radical>memiliki</radical> <radical>skuter</radical>? <kanji>Semuanya</kanji>!', '<kanji>Semua</kanji> skuter ini memiliki suara khusus yang mereka keluarkan saat keluar dari gedung: <reading>zuwee</reading> (ずい).')
    RETURNING id INTO k_2193_semua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '稿', 'draf', 53, 6, 'When what you''re writing is as <radical>tall</radical> as the <radical>grain</radical>s growing outside, you know you''re done with your first <kanji>draft</kanji>. Some teachers want papers to be a certain number of words or pages, but that''s silly. You should measure your draft in grains!', 'Siapa yang memintamu menulis <kanji>draf</kanji> yang begitu tinggi? Kaisar <reading>こう</reading>いち, yang ingin Anda menyusun buku terbesar di dunia tentang betapa hebatnya seorang kaisar.')
    RETURNING id INTO k_2194_draf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '丹', 'berwarna-karat', 53, 7, 'Ini adalah <radical>perahu</radikal>, tetapi ada beberapa bagian yang hilang. Itu karena sangat berkarat, sehingga ada bagian yang terlepas dan terlihat <kanji>berwarna karat</kanji>. Dalam pemikiran Tao dan literatur Tiongkok kuno, warna merah berkarat ini, juga dikenal sebagai <kanji>cinnabar</kanji>, mewakili <kanji>ketulusan</kanji>, dan Anda akan sering melihat kanji ini memiliki arti seperti itu dalam kata-kata jukugo.', 'Perahu <kanji>berwarna karat</kanji> telah menginspirasi Anda, jadi Anda berbaring di deknya dan berjemur <reading>tan</reading> (たん). Jika Anda bisa berjemur sampai warna <kanji>cinnabar</kanji> Anda sama dengan perahu, Anda mengira sebagian dari <kanji>ketulusan</kanji>nya mungkin akan menular ke Anda.')
    RETURNING id INTO k_2195_berwarna_karat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '壌', 'tanah', 53, 8, '<radical>kotoran</radikal> <radikal>perawat</radikal> adalah seseorang yang merawat kotoran. Saat dirawat, kotoran menjadi <kanji>tanah</kanji>.', '<kanji>Tanah</kanji> adalah sesuatu yang <reading>Joe</reading> (じょう), seorang buruh tani besar, sedang berusaha memperbaikinya. Jika dia membuat tanah menjadi lebih baik, pertaniannya akan menghasilkan lebih banyak hasil panen.')
    RETURNING id INTO k_2196_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '舗', 'toko', 53, 9, 'Anda ingin mengadakan <radical>cottage</radical> <radical>wedding</radical> yang unik, jadi Anda harus pergi ke <radical>cottage</radical> <radical>wedding</radical>, jadi Anda harus pergi ke <radical>cottage</radical> untuk mendapatkan semua yang Anda butuhkan.

Sayangnya, tidak ada jalan menuju toko tersebut, jadi… Anda hanya perlu <kanji>membuat</kanji> sendiri! Setiap toko membutuhkan jalan, jadi bersiaplah untuk mengaspal.', 'Anda menjelajahi segala sesuatu di <kanji>toko</kanji> ketika <reading>cangkul</reading> (ほ) taman menarik perhatian Anda. Ya. Ini akan membuat pernikahan pondok Anda menjadi yang terbaik. Cangkul itu akan memberikanmu pada pernikahanmu.')
    RETURNING id INTO k_2197_toko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '騰', 'inflasi', 53, 10, 'Saat <radical>bulan</radical> muncul, seorang <radical>gladiator</radical> sedang menunggangi <radical>kuda</radical> sambil berteriak tentang <kanji>inflasi</kanji>. Tidak ada seorang pun yang mau mendengarkannya pada siang hari, jadi dia menunggu bulan terbit agar dia bisa mengeluh tentang harga yang melakukan hal yang sama.', '<kanji>Inflasi</kanji> meningkat paling tinggi di <reading>とう</reading>きょう, dan para gladiator mengetahuinya karena di sanalah sebagian besar dari mereka hidup dan bertarung (dan mati).')
    RETURNING id INTO k_2198_inflasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '緯', 'lintang', 53, 11, '<radical>utas</radikal> yang melewati <radical>Korea</radical> adalah garis <kanji>garis lintang</kanji> yang memisahkan Korea Utara dan Selatan.', 'Satu-satunya cara agar Anda dapat melihat garis <kanji>lintang</kanji> ini adalah dengan menaiki <reading>ea</reading>gle (い) di atasnya. Garisnya tidak terlihat dari mobil, terlalu dekat, dan pesawat terlalu tinggi. Anda harus melihatnya dari sudut pandang elang.')
    RETURNING id INTO k_2199_lintang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '艇', 'perahu-dayung', 53, 12, '<radical>Perahu</radical> yang dimiliki oleh <radical>Yoga</radical> <radical>King</radical> harus dapat membiarkan dia terus melakukan latihan selagi dia berada di dalamnya. Itu sebabnya perahunya adalah <kanji>perahu dayung</kanji>, jadi dia bisa melatih lengan yoganya saat berkeliling.', 'Saat dia mendayung <kanji>perahu dayung</kanji> dengan pantatnya, Anda melihat Raja Yoga sedang memakan sesuatu dengan jari kakinya. Mereka <read>ta</reading>ter tots (てい). Tater tots adalah camilan yang sempurna untuk perahu dayung. Bentuknya kecil, enak, dan mengapung jika dijatuhkan ke dalam air.')
    RETURNING id INTO k_2200_perahu_dayung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '披', 'membuka', 53, 13, 'Tekan <radical>jari</radical> Anda pada <radical>kulit</radical> seseorang untuk <kanji>mengekspos</kanji> apa yang ada di bawahnya. Hal ini cukup menjijikkan, namun terkadang lebih penting bagi Anda untuk mengungkap penyebab masalahnya, daripada menghindari sesuatu yang tidak nyaman.', 'Anda <kanji>membuka</kanji> lubang kecil di bawah kulitnya dan <reading>dia</reading>di (ひ) keluar. Ya! Anda tahu ada sesuatu yang salah di bawah sini. Rupanya ada sesuatu di bawah kulit orang ini yang mengeluarkan terlalu banyak panas.')
    RETURNING id INTO k_2201_membuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '錦', 'brokat', 53, 14, 'Anda menenun pola <radical>emas</radikal> dan <radikal>putih</radikal> ke dalam <radikal>handuk</radikal> ini, mengubahnya menjadi <kanji>brokat</kanji>. Itu indah, anggun, dan jauh lebih berharga dibandingkan jika hanya berupa handuk biasa.', 'Anda ingin menjaga keamanan kain <kanji>brokat</kanji> Anda, jadi Anda menguncinya dan menyegelnya dengan <reading>kunci khusus</reading> (にしき). Ini ceruk karena brokat adalah jenis yang sangat khusus.')
    RETURNING id INTO k_2202_brokat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '剰', 'kelebihan', 53, 15, 'Ada begitu banyak <radical>biji-bijian</radikal> di <radical>mulut</radikal> Anda sehingga Anda perlu menggunakan <radical>pisau</radikal> untuk menghilangkannya. Hanya jika ada <kanji>kelebihan</kanji> barulah Anda bisa memasukkan biji-bijian sebanyak itu ke dalam mulut Anda.', '<kanji>Surplus</kanji> ini berkat kerja keras orang-orang seperti <reading>Joe</reading> (じょう), si buruh tani besar. Dia bekerja keras untuk memastikan ada surplus gandum tahun ini.')
    RETURNING id INTO k_2204_kelebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '繊', 'serat', 53, 16, '<radical>pemabuk</radikal> <radikal>silang</radikal>adalah <radikal>benang</radikal> melintasi <radikal>paku</radikal> khusus untuk memisahkan <kanji>serat</kanji>. Cara terbaik untuk memisahkan serat-serat benang adalah dengan meminta seorang pemabuk melakukannya. Jika Anda terlalu teliti, itu akan patah begitu saja. Anda harus lepas kendali! Letakkan saja di atas paku dan seratnya akan terlepas dengan sendirinya!', 'Anda menatap <kanji>serat</kanji> yang mudah terlepas ketika Anda menyadari bahwa pemabuk ini tampaknya memiliki beberapa kaki tambahan... dan rambut serta ekor? Ini bukan hanya pria mabuk, ini adalah <reading>cen</reading>taur (せん). Mungkin memisahkan serat memang merupakan trik centaur, dan itulah mengapa orang normal tidak bisa melakukannya...')
    RETURNING id INTO k_2205_serat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '諭', 'menegur', 53, 17, 'Jika Anda mencoba <radical>mengatakan</radical> sesuatu kepada <radical>Death Star</radical>, itu hanya akan <kanji>menegur</kanji> Anda. Lagi pula, itu dibuat untuk menghancurkan planet-planet, jadi saya tidak tahu mengapa Anda berharap ada sesuatu yang baik untuk dikatakan di dalamnya. Itu hanya memperingatkanmu tentang segala kesalahan yang pernah kamu lakukan hingga kamu tidak bisa berhenti menangis.', 'Saat ini kamu sedang <kanji>diperingatkan</kanji> tentang tinggal di <reading>yu</reading>rt (ゆ). Death Star berseru, "Apa, apa aku terlalu besar dan aman untukmu? Aku juga mudah bergerak lho. Kamu memalukan! Seharusnya kamu malu!"')
    RETURNING id INTO k_2206_menegur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '惨', 'bencana', 53, 18, '<radical>Jiwa</radical> Anda memiliki area <radical>pribadi</radical> dengan <radical>besar</radical> <radical>rambut</radical> tumbuh di atasnya, dan itu akan menjadi <kanji>bencana</kanji> jika ada yang mengetahuinya. Nah, kabar buruknya — seseorang memposting fotonya secara online. Apa yang akan kamu lakukan?! Ini benar-benar BENCANA!', 'Ternyata orang yang menyebabkan <kanji>bencana</kanji> ini adalah <reading>San</reading>ta-san (さん) — dialah yang membocorkan foto-foto bencana jiwamu dan rambutnya yang besar dan memalukan. Kenapa Santa-san melakukan ini padamu? Apakah kamu nakal tahun ini?')
    RETURNING id INTO k_2207_bencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '虐', 'menindas', 53, 19, 'Entah Anda seorang <radikal>harimau</radikal> atau <radikal>Wolverine</radikal>, rezim anti-cakar pasti ingin <kanji>menindas</kanji> Anda. Terlalu takut terhadap potensi pemberontakan yang disertai kekerasan, rezim yang menindas ini akan memenjarakan dan menyatakan setiap makhluk yang dicakar akan dipenjarakan.', 'Harimau dan makhluk cakar lainnya seperti Wolverine sangat <kanji>tertindas</kanji>, mereka terpaksa menutupi cakar mereka dengan <reading>Gak</reading> (ぎゃく). Anda tahu, dempul konyol aneh yang mereka buat untuk kita mainkan saat masih kecil? Nah, sekarang ini menjadi instrumen anti-Wolverine, anti-penindasan harimau.')
    RETURNING id INTO k_2208_menindas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '据', 'memasang', 53, 20, 'Anda menggunakan <radical>jari</radical> Anda untuk menghapus <radical>panji</radikal> <radikal>yang lama</radikal> dan <kanji>memasang</kanji> yang baru. Bendera menjadi tua, sama seperti komputer, furnitur, dan manusia. Jadi ketika ada yang sudah terlalu tua, Anda harus naik ke sana dan memasang yang baru sebagai gantinya.', 'Anda telah memutuskan untuk <kanji>memasang</kanji> sebuah <reading>su</reading>it (す) di tempat bendera lama dulu berada. Maksudku, jas mungkin lebih tahan lama dibandingkan bendera, bukan? Dengan cara ini Anda tidak perlu terlalu sering memasang flag.')
    RETURNING id INTO k_2209_memasang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '徐', 'dengan-lembut', 53, 21, 'Jika Anda <radical>berkeliaran</radical> di sekitar <radical>kelebihan</radical> apa pun, Anda harus <kanji>lembut</kanji> dan menyentuh semuanya <kanji>dengan lembut</kanji>.', 'Anda harus <kanji>lembut</kanji> dan menangani hal-hal ini <kanji>dengan lembut</kanji> karena itu milik <reading>Jo</reading>-Anne (じょ). Anda berkeliaran di sekitar kelebihannya (apa pun yang Anda bayangkan).')
    RETURNING id INTO k_2210_dengan_lembut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '搭', 'papan', 53, 22, 'Di <radical>jari</radical> Anda terdapat <radical>bunga</radical> yang benar-benar <radical>cocok</radical> untuk Anda. Namun Anda melemparkannya ke orang-orang yang melambai kepada Anda dari bawah, saat Anda <kanji>naik</kanji> ke kapal Anda. Bunganya gugur, tidak dibutuhkan. Anda <kanji>memulai</kanji>kehidupan baru, perjalanan baru. Akan ada lebih banyak bunga di tempat yang Anda tuju.', 'Anda <kanji>naik</kanji> kapal ke <reading>とう</reading>きょう, tentu saja menuju kehidupan baru Anda!')
    RETURNING id INTO k_2211_papan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蒙', 'kegelapan', 53, 23, '<radical>Bunga</radical> tumbuh di <radical>tanah</radical> dan di atas <radical>dahi</radical> <radical>babi</radical> peliharaanmu dan hal ini menyebabkan makhluk malang itu hidup dalam <kanji>kegelapan</kanji> total. Bunganya menggantung menutupi matanya dan tidak membiarkan cahaya masuk sama sekali. Dan beberapa bunga tampaknya juga tumbuh langsung dari dahi babi. Babi itu baru saja berkeliaran dan menabrak sesuatu sepanjang hari karenanya.', 'Untuk mengakhiri <kanji>kegelapan</kanji> kamu <reading>memotong</reading> (もう) bunganya. Anda juga harus menggerakkan mesin pemotong rumput melewati kepalanya, karena mesin pemotong rumput tersebut juga tumbuh dari dahinya. Namun mereka akan segera tumbuh kembali dan menutupi dunia babi Anda dalam kegelapan sekali lagi dan Anda harus melakukannya lagi.')
    RETURNING id INTO k_2212_kegelapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鯉', 'karper', 53, 24, 'Jika Anda berada di Jepang, <radical>ikan</radical> di <radical>desa</radical> Anda adalah <kanji>ikan mas</kanji>. Anda mungkin juga mengenalnya sebagai <kanji>koi</kanji>.', '<kanji>ikan mas</kanji> disebut <reading>koi</reading> (こい) dalam bahasa Jepang. Kami telah menggunakan kata itu sebelumnya, jadi saya harap Anda sudah mengetahuinya sekarang. Koi adalah koi, tahu?')
    RETURNING id INTO k_2213_karper;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '戴', 'menerima', 53, 25, '<radical>cross</radical> yang membawa <radical>drunkard</radical> ingin Anda pergi ke <radical>sawah</radical> <radical>bersama</radical> sehingga Anda dapat <kanji>menerima</kanji> sesuatu dari mereka.', 'Bertentangan dengan penilaian Anda yang lebih baik, Anda memutuskan untuk pergi dan <kanji>menerima</kanji> barang itu. Anda memejamkan mata, mengulurkan tangan, dan merasakan <reading>dasi</reading> (たい) yang halus dan ringan dipasang di dalamnya.')
    RETURNING id INTO k_2214_menerima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '緋', 'kirmizi', 53, 26, '<radical>benang</radikal> yang dipakai oleh <radikal>penjahat</radikal> akan selalu berwarna <kanji>merah</kanji>. Merah tua adalah warna darah yang baru tumpah, itulah sebabnya orang jahat sering memakainya.', 'Warna <kanji>merah</kanji> ini menyimpan banyak <membaca>dia</reading>at (ひ). Merah tua adalah warna api, dan juga memiliki panas api.')
    RETURNING id INTO k_2215_kirmizi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '曙', 'fajar', 53, 27, '<radical>matahari</radikal> sedang terbit dan ada <radikal>jaring</radikal> yang menutupi <radikal>seseorang</radikal>, yang dipaksa untuk menyaksikan <kanji>fajar</kanji> muncul. Mereka belum pernah melihat fajar sebelumnya, dan mereka tidak menginginkannya, tapi Anda yang membuatnya.', 'Seseorang yang melihat <kanji>fajar</kanji> untuk pertama kalinya kemudian menjadi juara gulat sumo <reading>Akebono</reading> Taro (あけぼの). Dia selalu menatap matahari terbit saat fajar sebelum dia bergulat dan itu memberinya kekuatan.')
    RETURNING id INTO k_2216_fajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '胡', 'barbar', 53, 28, '<radical>lama</radikal> <radikal>bulan</radikal> (bulan yang kita miliki sebelum bulan saat ini) sebenarnya hanyalah <kanji>barbar</kanji> besar yang melayang di langit.', 'Setidaknya, ini adalah jenis cerita yang Anda ceritakan pada <reading>子</reading> (こ) Anda ketika mereka bertanya dari mana datangnya bulan.')
    RETURNING id INTO k_2217_barbar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '瓜', 'melon', 53, 29, 'Radikal <radikal>melon</radikal> dan kanji <kanji>melon</kanji> sama persis! Wah!', 'Apa kegunaan terbaik <kanji>melon</kanji>? Bukan memakannya, tapi menabraknya di <reading>ca</reading>r (か) Anda! Melon mengeluarkan suara percikan besar yang bagus saat Anda melewatinya, dan itulah yang Anda rencanakan untuk dilakukan pada setiap melon yang Anda lihat.')
    RETURNING id INTO k_2218_melon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '帥', 'komandan', 53, 30, 'Ada <radical>setetes</radical> <radical>beruang</radical> di <radical>handuk</radical> ini. Seorang <kanji>komandan</kanji> sejati dapat memperhatikan hal-hal kecil seperti ini.', 'Anda menyaksikan <kanji>komandan</kanji> dengan segala kemegahannya... bolak-balik dalam <reading>swi</reading>ng (すい).')
    RETURNING id INTO k_2219_komandan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '啓', 'mencerahkan', 53, 31, 'Jika Anda dapat menemukan <radical>pintu</radical> di <radical>musim dingin</radical> berbentuk seperti <radical>mulut</radical> itu akan <kanji>mencerahkan</kanji> Anda.', 'Pintu <kanji>menerangi</kanji>mencerahkan Anda dengan membuka dan memperlihatkan <reading>ca</reading>ke (けい) di mulut pintunya. “Kue adalah kunci pencerahan, anakku. Sekarang makanlah dari mulutku.”')
    RETURNING id INTO k_2220_mencerahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '葵', 'semacam-tumbuhan', 53, 32, '<radical>Bunga</radical> yang dianggap sebagai <radical>tenda</radical> kecil yang dikirim dari <radical>surga</radical> adalah <kanji>hollyhock</kanji>. Bentuknya hampir seperti teepee kecil dan bisa menjadi tenda yang sempurna untuk peri atau yokai kecil!', '<kanji>Hollyhock</kanji> sebagian besar <reading>あおい</reading> (biru) karena meniru warna langit, tempat asalnya.')
    RETURNING id INTO k_2221_semacam_tumbuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '駿', 'kecepatan', 53, 33, 'Ketika <radical>kuda</radical> melihat <radical>laba-laba</radical> ia akan mulai berlari dengan <kanji>kecepatan</kanji> yang tak seorang pun mengira seekor kuda bisa melaju! Soalnya, kuda sangat takut pada laba-laba, jadi jika mereka melihatnya, mereka akan lari dan mencapai kecepatan tertinggi! Sebenarnya itulah satu-satunya cara agar kuda bisa berlari secepat itu.', 'Begitu orang menyadari bahwa mereka dapat meningkatkan <kanji>kecepatan</kanji> kudanya, <reading>segera</reading> (しゅん) semua orang akan membawa laba-laba untuk menakut-nakuti kudanya agar berlari lebih cepat. Saya katakan segera karena belum cukup populer. Namun jika Anda membantu menyebarkan berita ini, hal ini bisa terjadi lebih cepat.')
    RETURNING id INTO k_2222_kecepatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '諒', 'memahami', 53, 34, 'Jika Anda <radical>mengatakan</radical> sesuatu dengan cara yang sama seperti yang mereka katakan di <radical>ibu kota</radical>, semua orang di seluruh negeri akan dapat <kanji>memahami</kanji> apa yang ingin Anda katakan. Jika Anda mencoba berbicara dalam dialek kampung halaman Anda, tidak ada yang mau. Tapi semua orang bisa memahami apa yang Anda inginkan jika Anda menggunakan dialek ibu kota untuk mengucapkannya.', 'Sekarang penduduk kota akhirnya <kanji>memahami</kanji> apa yang ingin Anda katakan, mereka menjual perahu <reading>baris</reading> (りょう) yang ingin Anda beli. Anda menggunakan kata yang salah, tetapi りょう adalah kata yang perlu mereka dengar untuk memahami Anda, dan sekarang Anda dapat mendayung untuk pulang.')
    RETURNING id INTO k_2223_memahami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '莉', 'melati', 53, 35, 'Anda memotong <radical>bunga</radical> dari <radical>biji-bijian</radical> dengan <radical>pisau</radical> Anda. Bunga yang rontok adalah bunga <kanji>melati</kanji>.', '<kanji>melati</kanji> tumbuh dari segalanya, bukan hanya biji-bijian! Ini juga berkembang dari <read>ree</reading>ds (り)!')
    RETURNING id INTO k_2224_melati;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2190_toleransi, 'Toleransi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2190_toleransi, 'かん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2190_toleransi, 'くつろ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2191_sel, 'Sel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2191_sel, 'Plasenta', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2191_sel, 'ほう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2192_membersihkan, 'Membersihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2192_membersihkan, 'Memurnikan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2192_membersihkan, 'じょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2192_membersihkan, 'せい', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2192_membersihkan, 'きよ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2193_semua, 'Semua', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2193_semua, 'ずい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2193_semua, 'したが', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2193_semua, 'まにま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2194_draf, 'Draf', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2194_draf, 'こう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2194_draf, 'したがき', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2194_draf, 'わら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2195_berwarna_karat, 'Berwarna Karat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2195_berwarna_karat, 'Cinnabar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2195_berwarna_karat, 'Kejujuran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2195_berwarna_karat, 'たん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2195_berwarna_karat, 'に', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2196_tanah, 'Tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2196_tanah, 'Bumi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2196_tanah, 'じょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2196_tanah, 'つち', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2197_toko, 'Toko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2197_toko, 'Mengaspal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2197_toko, 'ほ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2198_inflasi, 'Inflasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2198_inflasi, 'とう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2198_inflasi, 'あが', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2198_inflasi, 'のぼ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2199_lintang, 'Lintang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2199_lintang, 'い', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2199_lintang, 'ぬき', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2199_lintang, 'よこいと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2200_perahu_dayung, 'Perahu dayung', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2200_perahu_dayung, 'てい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2201_membuka, 'Membuka', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2201_membuka, 'ひ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2202_brokat, 'Brokat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2202_brokat, 'にしき', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2202_brokat, 'きん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2204_kelebihan, 'Kelebihan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2204_kelebihan, 'じょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2204_kelebihan, 'あまつさえ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2204_kelebihan, 'あま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2205_serat, 'Serat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2205_serat, 'Ramping', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2205_serat, 'せん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2206_menegur, 'Menegur', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2206_menegur, 'ゆ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2206_menegur, 'さと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2207_bencana, 'Bencana', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2207_bencana, 'さん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2207_bencana, 'ざん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2207_bencana, 'みじ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2207_bencana, 'いた', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2207_bencana, 'むご', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2208_menindas, 'Menindas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2208_menindas, 'ぎゃく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2208_menindas, 'しいた', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2209_memasang, 'Memasang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2209_memasang, 'す', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2209_memasang, 'きょ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2210_dengan_lembut, 'Dengan lembut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2210_dengan_lembut, 'Lembut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2210_dengan_lembut, 'じょ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2210_dengan_lembut, 'おもむ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2211_papan, 'Papan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2211_papan, 'Memulai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2211_papan, 'とう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2212_kegelapan, 'Kegelapan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2212_kegelapan, 'もう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2212_kegelapan, 'ぼう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2212_kegelapan, 'おお', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2212_kegelapan, 'くら', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2212_kegelapan, 'こうむ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2213_karper, 'Karper', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2213_karper, 'Koi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2213_karper, 'こい', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2213_karper, 'り', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2214_menerima, 'Menerima', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2214_menerima, 'たい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2214_menerima, 'いただ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2215_kirmizi, 'Kirmizi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2215_kirmizi, 'ひ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2215_kirmizi, 'あか', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2215_kirmizi, 'あけ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2216_fajar, 'Fajar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2216_fajar, 'あけぼの', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2216_fajar, 'しょ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2217_barbar, 'Barbar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2217_barbar, 'こ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2217_barbar, 'う', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2217_barbar, 'ご', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2217_barbar, 'なんぞ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2217_barbar, 'きゅう', false, 'nanori');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2218_melon, 'Melon', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2218_melon, 'か', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2218_melon, 'け', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2218_melon, 'うり', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2219_komandan, 'Komandan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2219_komandan, 'すい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2220_mencerahkan, 'Mencerahkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2220_mencerahkan, 'けい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2220_mencerahkan, 'さと', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2220_mencerahkan, 'ひら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2221_semacam_tumbuhan, 'Semacam tumbuhan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2221_semacam_tumbuhan, 'あおい', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2221_semacam_tumbuhan, 'き', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2222_kecepatan, 'Kecepatan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2222_kecepatan, 'しゅん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2222_kecepatan, 'すん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2222_kecepatan, 'すぐ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2222_kecepatan, 'はやお', false, 'nanori');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2223_memahami, 'Memahami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2223_memahami, 'Realitas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2223_memahami, 'りょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2223_memahami, 'あきら', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2223_memahami, 'まことに', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2224_melati, 'Melati', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2224_melati, 'り', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2224_melati, 'れい', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2224_melati, 'らい', false, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '皮膚科', 'dermatologi', 53, 36, 'Ingat bagaimana Anda mengetahui bahwa 皮膚 adalah "kulit?" <kanji>ilmu</kanji> kulit adalah <vocabulary>dermatologi</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7958_dermatologi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '皮膚病', 'penyakit-kulit', 53, 37, 'Ingat bagaimana Anda mengetahui bahwa 皮膚 adalah "kulit?" Nah, ketika kulit Anda <kanji>sakit</kanji>, Anda terkena <vocabulary>penyakit kulit</vocabulary>. Anda mungkin harus segera pergi ke dokter kulit.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7959_penyakit_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '襟元', 'kerah', 53, 38, '<kanji>asal</kanji> dari <kanji>kerah</kanji> Anda adalah <vocabulary>kerah</vocabulary> Anda! Dan <vocabulary>tengkuk leher</vocabulary> karena di situlah letak kerah.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_7960_kerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '襟巻き', 'syal', 53, 39, 'Ingat bagaimana Anda mengetahui bahwa 巻く berarti "berguling?" Benda yang kamu gulung di <kanji>kerah</kanji>mu adalah <vocabulary>syal</vocabulary>!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_7961_syal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '丹念', 'rajin', 53, 40, 'Kamu mempunyai <kanji>berwarna karat</kanji> <kanji>pikiran</kanji> karena kamu sangat <vocabulary>rajin</vocabulary>. Cara berpikirmu sangat kuno - sangat kuno hingga pikiranmu mulai berkarat - dan itulah sebabnya kamu bisa <vocabulary>berhati-hati</vocabulary> dan <vocabulary>teliti</vocabulary> bahkan di dunia modern yang serba cepat ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7963_rajin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '批准', 'ratifikasi', 53, 41, 'Jika hanya ada <kanji>semi</kanji> <kanji>kritik</kanji> terhadap suatu undang-undang, <vocabulary>ratifikasi</vocabulary> masih mungkin dilakukan. Hanya jika semua orang mengkritik maka perjanjian tersebut tidak akan diratifikasi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7964_ratifikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '過剰', 'kelebihan', 53, 42, 'Jika Anda <kanji>melampaui</kanji> <kanji>kelebihan</kanji> Anda maka Anda memiliki banyak <vocabulary>kelebihan</vocabulary> barang.

過剰 adalah kata yang relatif formal yang mengacu pada sesuatu yang <vocabulary>berlebihan</vocabulary>. Kata ini juga bisa berarti <vocabulary>over</vocabulary> — seperti konsumsi berlebihan, reaksi berlebihan, atau produksi berlebihan — dalam berbagai konteks yang berkaitan dengan perilaku, emosi, atau kuantitas fisik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7965_kelebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '余剰', 'berulang', 53, 43, 'Jika Anda memiliki <kanji>surplus</kanji> <kanji>surplus</kanji> itu sedikit <vocabulary>berlebihan</vocabulary> dan Anda akhirnya mendapatkan <vocabulary>surplus</vocabulary> surplus!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7966_berulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '剰余金', 'kelebihan', 53, 44, '<kanji>Surplus</kanji> dari <kanji>surplus</kanji> <kanji>uang</kanji> masih merupakan <vocabulary>surplus</vocabulary>. Terlalu banyak uang di mana-mana!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7967_kelebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '召し上がる', 'untuk-makan', 53, 45, 'Anda telah mempelajari bahwa 召す dapat berarti "mengambil" ketika petinggi sosial sedang makan atau minum. Sekarang Anda menambahkan 上がる (untuk naik), sehingga Anda mendapatkan gambaran tambahan tentang makanan atau minuman yang naik ke mulut mereka. Dengan kata lain, ini adalah cara yang terhormat untuk mengucapkan <vocabulary>makan</vocabulary> atau <vocabulary>to drink</vocabulary>.', 'Ini adalah kombinasi kata 召す dan 上がる yang telah Anda pelajari.召す menjadi 召し dan kemudian Anda menambahkan 上がる ke dalamnya. Cukup mudah, bukan?')
    RETURNING id INTO v_7968_untuk_makan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '啓示', 'wahyu', 53, 46, 'Apa yang <kanji>menunjukkan</kanji> bahwa Anda telah <kanji>cukup tercerahkan</kanji> untuk mencapai pencerahan? Sebuah <vocabulary>wahyu</vocabulary>! Itulah satu-satunya cara agar Anda tahu bahwa Anda sudah cukup tercerahkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7969_wahyu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '啓発', 'pencerahan', 53, 47, 'Ketika Anda <kanji>cukup tercerahkan</kanji>, Anda harus melakukan <kanji>keberangkatan</kanji> dari dunia ini menuju <vocabulary>pencerahan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7970_pencerahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '啓蒙', 'pencerahan', 53, 48, '<kanji>Terangi</kanji> <kanji>kegelapan</kanji> pikiran orang-orang dengan <vocabulary>instruksi</vocabulary> dan mereka akan mencapai <vocabulary>pencerahan</vocabulary> seperti Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7971_pencerahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '土壌', 'tanah', 53, 49, '<kanji>Tanah</kanji> <kanji>tanah</kanji> tetaplah <kanji>tanah</kanji>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7972_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '平壌', 'pyongyang', 53, 50, 'Apa yang dimaksud dengan kota <kanji>datar</kanji> <kanji>tanah</kanji>? <vocabulary>Pyongyang</vocabulary> di Korea Utara. Hal ini cukup menyesatkan, memang terdapat lebih dari sekadar tumpukan tanah datar, namun di masa lalu sebelum barisan Kim Jong yang termasyhur membangunnya, hanya itu saja yang ada di sana.', 'Pembacaan standar untuk kata ini sebenarnya hanyalah perkiraan pengucapan bahasa Korea dalam bahasa Jepang: ぴょんやん. Jadi kalau bisa mengingat maknanya, cara membacanya juga cukup mudah.

Perhatikan bahwa ini juga dapat dibaca menggunakan pembacaan kanji on''yomi sebagai へいじょう, tetapi pengucapan ini terdengar agak kuno dan tidak terlalu umum dalam bahasa Jepang modern.')
    RETURNING id INTO v_7973_pyongyang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寛大', 'toleransi', 53, 51, 'Tidak peduli seberapa <kanji>besar</kanji> <kanji>toleransi</kanji> Anda karena itu masih <vocabulary>toleransi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7974_toleransi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寛容', 'toleransi', 53, 52, 'Semua <kanji>bentuk</kanji> dari <kanji>toleransi</kanji> tetaplah <vocabulary>toleransi</vocabulary>. Biasanya orang seperti ini <vocabulary>berpikiran terbuka</vocabulary> dan <vocabulary>murah hati</vocabulary> juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7975_toleransi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寛ぐ', 'untuk-bersantai', 53, 53, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>toleransi</kanji>, jadi versi kata kerjanya adalah apa yang terjadi jika Anda adalah orang yang benar-benar toleran. Anda dapat <vocabulary>bersantai</vocabulary> dan <vocabulary>merasa seperti di rumah sendiri</vocabulary> karena tidak ada yang benar-benar mengganggu Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda ingin <vocabulary>bersantai</vocabulary> sehingga Anda beralih ke <reading>coots ro</reading>ad (くつろ) yang lama. Ini adalah jalan dengan sekelompok orang tua yang tidak mengganggu siapa pun. Mereka hanya duduk-duduk dan mengeluh. Di situlah Anda ingin bersantai. Sesuatu tentang dikelilingi oleh sekelompok orang bodoh tua di jalan tua membuat Anda merasa seperti di rumah sendiri.')
    RETURNING id INTO v_7976_untuk_bersantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '元帥', 'jenderal-angkatan-darat', 53, 54, '<kanji>komandan</kanji> <kanji>asal</kanji> adalah sebagai <vocabulary>jenderal tentara</vocabulary>. Dia mengundurkan diri, tapi di situlah dia memulai. Mungkin dia sedang mengerjakan sistemnya secara terbalik...', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7977_jenderal_angkatan_darat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '総帥', 'komandan', 53, 55, '<kanji>komandan</kanji> dari <kanji>seluruh</kanji> pasukan disebut " <vocabulary>commander</vocabulary>." Tidak ada yang tahu nama aslinya dan semua orang terlalu takut untuk bertanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7978_komandan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '統帥', 'komando-tertinggi', 53, 56, '<kanji>komandan</kanji> yang <kanji>menyatukan</kanji> dan <kanji>memerintah</kanji> dunia adalah seseorang yang memiliki <vocabulary>perintah tertinggi</vocabulary>. Dia lebih baik dari semua komandan lainnya yang tidak bisa menyatukan semua orang dan sekarang dia memerintah semua orang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7979_komando_tertinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '徐行', 'berjalan-perlahan', 53, 57, 'Jika Anda <kanji>berjalan</kanji> <kanji>dengan lembut</kanji> Anda sebenarnya <vocabulary>berjalan perlahan</vocabulary>. Anda tidak bisa bersikap lembut jika Anda tidak bergerak perlahan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7980_berjalan_perlahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '徐々', 'perlahan-lahan', 53, 58, 'Jika Anda melakukannya <kanji>dengan lembut</kanji> <kanji>dengan lembut</kanji> maka Anda hanya melakukannya <vocabulary>secara bertahap</vocabulary>. Anda harus melakukannya <vocabulary>pelan-pelan</vocabulary> jika Anda ingin bersikap selembut mungkin.', 'Pembacaannya hanyalah pembacaan on''yomi (yang dipelajari dengan kanji) dua kali berturut-turut.')
    RETURNING id INTO v_7981_perlahan_lahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '惨事', 'bencana', 53, 59, '<kanji>bencana</kanji> <kanji>kejadian</kanji> hanyalah sebuah <vocabulary>bencana</vocabulary> atau <vocabulary>tragedi</vocabulary>. Melihat ke arah lain!

惨事 adalah kata formal untuk <vocabulary>peristiwa mengerikan</vocabulary> yang tragis atau <vocabulary>mengerikan</vocabulary> — jenis yang sangat menyusahkan sehingga membuat Anda ingin mengalihkan pandangan. Ini menekankan kengerian dan penderitaan emosional dari peristiwa tersebut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7982_bencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悲惨', 'bencana', 53, 60, '<kanji>menyedihkan</kanji> <kanji>bencana</kanji> adalah bencana yang khususnya <vocabulary>bencana</vocabulary> dan <vocabulary>tragis</vocabulary>. Ini adalah jenis terburuk yang dapat Anda bayangkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7983_bencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '惨め', 'menderita', 53, 61, 'Jika kamu menghadapi banyak <kanji>bencana</kanji> dalam hidupmu, kamu akan benar-benar <vocabulary>sengsara</vocabulary>. Sayang sekali, tapi sulit untuk menjadi <vocabulary>celaka</vocabulary> dan <vocabulary>menyedihkan</vocabulary> ketika hidup Anda penuh dengan hal-hal yang membawa malapetaka.

惨め menggambarkan seseorang atau sesuatu sebagai orang yang menyedihkan, biasanya menekankan kesedihan atau kegagalan dalam situasi emosional atau sosial. Saat Anda menggambarkan diri Anda sebagai 惨め, itu mengungkapkan perasaan tidak berdaya dan terhina yang kuat.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Kamu akan benar-benar <vocabulary>sengsara</vocabulary> jika kamu mengetahui bahwa kamu akan memiliki kehidupan yang benar-benar 短い (みじ).')
    RETURNING id INTO v_7984_menderita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '惨敗', 'kegagalan-penghancuran', 53, 62, '<kanji>Kegagalan</kanji> yang menyebabkan <kanji>bencana</kanji> adalah <vocabulary>kegagalan telak</vocabulary> dan Anda <vocabulary>dipukul habis-habisan</vocabulary> oleh lawan Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajari cara membaca on''yomi yang sedikit berbeda untuk 惨 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingat cara membacanya di sini:

<vocabulary>kegagalan telak</vocabulary> Anda terjadi di <reading>Zan</reading>zibar (ざん), di mana Anda <vocabulary>kalah habis-habisan</vocabulary> dalam permainan voli pantai yang intens. Betapa bodohnya Anda berpikir bahwa seorang amatir seperti Anda bisa menaklukkan dunia voli pantai yang kejam di Zanzibar.')
    RETURNING id INTO v_7985_kegagalan_penghancuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '惨状', 'adegan-bencana', 53, 63, '<kanji>Bencana</kanji> <kanji>Kondisi</kanji>dalam cuaca menyebabkan Anda melihat <vocabulary>pemandangan bencana</vocabulary>. Hanya saja, jangan melihat ke luar dan Anda tidak akan melihat hal-hal mengerikan di luar jendela Anda saat ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7986_adegan_bencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '披露', 'pengumuman', 53, 64, '<kanji>Ekspos</kanji> apa yang ingin Anda <kanji>ekspos</kanji> dengan membuat <vocabulary>pengumuman</vocabulary>. Lalu <vocabulary>tunjukkan</vocabulary> pada dunia!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 露, jadi inilah mnemonik untuk membantu Anda:

Anda membuat <vocabulary>pengumuman</vocabulary> dari perahu <reading>baris</reading> (ろう). Orang-orang akan lebih memperhatikan saat Anda berada di perahu dayung karena ini agak aneh. Apalagi saat Anda berada di perahu dayung di atas panggung.')
    RETURNING id INTO v_7987_pengumuman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '挟まる', 'untuk-mendapatkan-antara', 53, 65, 'Anda sudah mempelajari kata 挟む yang berarti meletakkan sesuatu di antara dua hal. 挟まる adalah versi intransitif — digunakan untuk menggambarkan ketika sesuatu terjebak di antara dua hal tanpa objek langsung. Jadi artinya <vocabulary>berada di antara</vocabulary> atau <vocabulary>terjebak</vocabulary>.

Anda menggunakan 挟まる untuk situasi seperti jaket Anda tersangkut di pintu mobil, makanan tersangkut di sela-sela gigi, atau memo terselip di antara halaman.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 挟む, jadi Anda seharusnya bisa membaca kata ini juga.')
    RETURNING id INTO v_7988_untuk_mendapatkan_antara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '据える', 'untuk-menginstal', 53, 66, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memasang</kanji>, jadi versi kata kerjanya adalah <vocabulary>to install</vocabulary> atau <vocabulary>to fix</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!')
    RETURNING id INTO v_7989_untuk_menginstal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '搭載', 'dibangun-di', 53, 67, 'Ketika sesuatu sudah <kanji>dipapan</kanji>dan <kanji>dipasang</kanji>pada sesuatu, maka hal itu akan menjadi <vocabulary>bawaan</vocabulary>.

搭載 mengacu pada sesuatu yang dibangun di dalam atau di atas objek lain, yang umumnya berupa kendaraan atau mesin.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7990_dibangun_di;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '搭乗', 'asrama', 53, 68, 'Saat Anda <kanji>menaiki</kanji> pesawat atau mobil untuk melakukan <kanji>naik</kanji>, hal itu disebut <vocabulary>boarding</vocabulary> atau <vocabulary>embarkasi</vocabulary>. Anda harus mengambil jalan yang benar atau Anda tidak bisa berkendara.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya sudah mengetahui pembacaan kedua kanji ini sekarang, jadi sebaiknya Anda melanjutkan.')
    RETURNING id INTO v_7991_asrama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '曙', 'fajar', 53, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7992_fajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '枯れ木', 'pohon-mati', 53, 70, '<kanji>pohon</kanji>yang layu</kanji> adalah <vocabulary>pohon mati</vocabulary> dan <vocabulary>kayunya kering</vocabulary>. Sempurna untuk api unggun!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri. Terkadang Anda akan melihatnya dieja 枯木 tanpa kana juga. Buka mata Anda untuk itu!')
    RETURNING id INTO v_7993_pohon_mati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '枯らす', 'membiarkan-layu', 53, 71, 'Kamu belajar 枯れる (melayu), tapi ini adalah saat kamulah yang membuat tanaman layu, jadi artinya <vocabulary>membiarkan layu</vocabulary> atau <vocabulary>mematikan tanaman</vocabulary>.

枯らす secara harafiah berarti <kosa kata>membiarkan sesuatu mengering</vocabulary>, biasanya karena kelalaian atau kekurangan air (walaupun terlalu banyak air juga dapat merusak tanaman). Kata ini sering digunakan ketika seseorang secara tidak sengaja membiarkan tanaman mati, tetapi kata ini juga dapat menggambarkan pembunuhan tanaman secara sengaja dengan herbisida. Anda juga akan melihatnya digunakan secara kiasan, seperti 声を枯らす (kehilangan suara).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 枯れる, jadi Anda seharusnya bisa membaca kata ini juga.')
    RETURNING id INTO v_7994_membiarkan_layu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '沸かす', 'untuk-merebus', 53, 72, 'Anda sudah mempelajari kata 沸く yang berarti "mendidih" atau "menjadi panas" tetapi ini adalah saat Andalah yang memanaskan air. Itu tetap berarti <vocabulary>merebus</vocabulary> atau <vocabulary>memanaskan</vocabulary>. Namun ingatlah bahwa Andalah yang melakukan pemanasan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 沸く, jadi Anda seharusnya bisa membaca kata ini juga.')
    RETURNING id INTO v_7995_untuk_merebus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '沸騰', 'mendidih', 53, 73, '<kanji>inflasi</kanji> pada air <kanji>mendidih</kanji> berarti gelembung-gelembung menggembung di sana dan menggelembung ke atas. Ini disebut <vocabulary>mendidih</vocabulary>, atau jika terjadi pada seseorang disebut <vocabulary>mendidih</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7996_mendidih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '自浄', 'pemurnian-diri', 53, 74, 'Jika Anda <kanji>memurnikan</kanji> <kanji>diri</kanji> Anda, Anda sedang melakukan <vocabulary>pemurnian diri</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7997_pemurnian_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浄化', 'pemurnian', 53, 75, '<kanji>Memurnikan</kanji> air untuk <kanji>mengubah</kanji> agar tidak kotor. Ini disebut <vocabulary>pemurnian</vocabulary>. Penting untuk memurnikan air sebelum Anda meminumnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7998_pemurnian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浄土', 'tanah-suci', 53, 76, 'Tanah di mana semua orang telah <kanji>dibersihkan</kanji> dan <kanji>disucikan</kanji> adalah <vocabulary>Tanah Suci</vocabulary> agama Buddha.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7999_tanah_suci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不浄', 'kenajisan', 53, 77, 'Jika Anda <kanji>tidak</kanji> <kanji>membersihkan</kanji> diri Anda, Anda akan dipenuhi dengan <vocabulary>kenajisan</vocabulary> dan <vocabulary>kekotoran</vocabulary>. eh.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8000_kenajisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浄水', 'air-bersih', 53, 78, 'Saat Anda <kanji>membersihkan</kanji> <kanji>air</kanji> itu menjadi <vocabulary>air bersih</vocabulary> yang dapat Anda minum.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8001_air_bersih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '清浄', 'murni', 53, 79, '<kanji>Murni</kanji> <kanji>bersih</kanji>hal-hal adalah <vocabulary>murni</vocabulary> dan <vocabulary>clean</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8002_murni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '洗浄', 'pencucian', 53, 80, 'Anda <kanji>mencuci</kanji> sesuatu untuk <kanji>membersihkan</kanji> dengan melakukan <vocabulary>mencuci</vocabulary> dan <vocabulary>membersihkan</vocabulary>. Anda harus mencuci jika Anda benar-benar ingin menghilangkan semua kotoran dan membuat barang-barang Anda bersih.

洗浄 adalah kata yang relatif formal dan teknis yang sering Anda lihat dalam manual, label produk, obat-obatan, atau konteks industri. Misalnya, larutan pembersih lensa kontak disebut コンタクトレンズの洗浄液, dan mesin pencuci piring disebut 食器洗浄機. Kata ini juga digunakan secara metaforis dalam istilah seperti 資金洗浄 (pencucian uang).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8003_pencucian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '渦巻き', 'pusaran-air', 53, 81, 'Ini merupakan kombinasi dari kata 渦 yang berarti "pusaran air" dan 巻く yang berarti "berguling". Pusaran air yang bergulung tetaplah <vocabulary>pusaran air</vocabulary>, hanya saja pusaran air yang sangat ganas.', 'Ini merupakan gabungan kata 渦 dan 巻く. 巻く menjadi 巻き dan Anda tinggal menambahkan 渦 ke dalamnya. Jadi membaca ini seharusnya cukup sederhana.')
    RETURNING id INTO v_8004_pusaran_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '玄人', 'pakar', 53, 82, '<kanji>misterius</kanji> <kanji>orang</kanji> benar-benar ahli dalam apa yang mereka lakukan. Begitu bagusnya sampai-sampai mereka tidak begitu yakin apa yang mereka lakukan, tapi Anda tahu mereka pasti <vocabulary>ahli</vocabulary> dalam apa pun itu.

玄人 adalah kata yang relatif formal yang mengacu pada <kosakata>profesional</vocabulary> yang sangat terampil dalam bidang tertentu, bukan 素人 (amatir). Dalam percakapan santai, kata-kata seperti プロ (profesional) lebih umum digunakan.', 'Pembacaan kata ini secara misterius merupakan pengecualian (maaf). Jadi, inilah mnemonik untuk membantu:

Jika Anda adalah seorang <vocabulary>pakar</vocabulary>, Anda seharusnya bisa mengetahui apa itu sesuatu jika seseorang bertanya kepada Anda. Bahkan <reading>crow toe</reading> ini (くろうと). Jari kaki gagak cukup sulit dikenali, kecuali Anda adalah seorang <vocabulary>profesional</vocabulary>. Tapi menurutku memang begitu, ya?')
    RETURNING id INTO v_8005_pakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瓜', 'melon', 53, 83, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Makanlah <vocabulary>melon</vocabulary> dan apa yang Anda rasakan? <read>Potongan Uni ree</reading>se (うり)! Tahukah kamu hal itu? Lain kali Anda makan melon, lihat apakah Anda bisa merasakan perbedaannya!')
    RETURNING id INTO v_8006_melon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '西瓜', 'semangka', 53, 84, 'Di <kanji>barat</kanji>, <kanji>melon</kanji> berbentuk bulat, bergaris, dan berwarna hijau, dan… Tunggu sebentar. Itu adalah <vocabulary>semangka</vocabulary>! Saya kira semangka berasal dari Jepang bagian barat?', 'Pembacaan 西 di sini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Semangka</vocabulary> terasa paling enak setelah Anda <reading>menyapu</reading>ng (すい) di dalamnya. Baik Anda mengikatnya dengan tali atau mengayunkannya di ayunan sungguhan, bagian dalam semangka yang lezat akan tercampur dan pada akhirnya akan terasa paling enak dengan cara ini. Jadi ingatlah selalu untuk mengayunkan semangka Anda sebelum Anda membukanya.')
    RETURNING id INTO v_8007_semangka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '原稿', 'naskah', 53, 85, '<kanji>draf</kanji> asli</kanji> Anda disebut <vocabulary>manuscript</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8008_naskah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '草稿', 'catatan', 53, 86, 'Anda akhirnya menulis <kanji>draf</kanji> kasar Anda di beberapa daun <kanji>rumput</kanji> karena Anda lupa <vocabulary>catatan</vocabulary> Anda. Rumput ini akan menjadi catatanmu sekarang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8009_catatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '投稿', 'penyerahan', 53, 87, '<kanji>Lemparkan</kanji> <kanji>draf</kanji> Anda kepada orang-orang untuk <vocabulary>diposting</vocabulary> di dinding Facebook mereka! Tunggu, bukan begitu cara kerjanya? Hush, ya, lempar saja lebih keras.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8010_penyerahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '稿料', 'biaya-naskah', 53, 88, '稿料 adalah kependekan dari 原稿料, yang merupakan kombinasi dari 原稿 (manuskrip) dan <kanji>biaya</kanji>. Tidak mengherankan, hal ini menjadikan ini sebagai <vocabulary>biaya naskah</vocabulary>. Ini adalah <vocabulary>pembayaran untuk menulis</vocabulary> yang diperoleh penulis jika menyerahkan salinannya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8011_biaya_naskah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '緯度', 'lintang', 53, 89, '<kanji>Lintang</kanji> <kanji>derajat</kanji> masih dikenal sebagai <vocabulary>lintang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8012_lintang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '南緯', 'lintang-selatan', 53, 90, '<kanji>Selatan</kanji> <kanji>lintang</kanji> adalah <vocabulary>lintang selatan</vocabulary> atau <vocabulary>lintang selatan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8013_lintang_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '北緯', 'lintang-utara', 53, 91, '<kanji>Utara</kanji> <kanji>lintang</kanji> adalah <vocabulary>lintang utara</vocabulary> atau <vocabulary>lintang utara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8014_lintang_utara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '経緯', 'detail', 53, 92, 'Jika Anda mencoba <kanji>mengelola</kanji> <kanji>lintang</kanji> Anda sebenarnya mencoba mengelola <vocabulary>detail</vocabulary> sesuatu. Mengelola garis lintang hanyalah sebuah cara yang bagus untuk mengatakannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8015_detail;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '緯線', 'paralel', 53, 93, '<kanji>lintang</kanji> <kanji>garis</kanji> juga bisa disebut <vocabulary>paralel</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8016_paralel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '化繊', 'serat-sintetis', 53, 94, '<kanji>Serat</kanji> yang telah <kanji>diubah</kanji>dari bahan lain adalah <vocabulary>serat sintetis</vocabulary>. Mereka tidak alami karena dulunya mereka adalah sesuatu yang lain. Seperti plastik, atau anak kucing.

Perhatikan bahwa ini adalah singkatan dari istilah spesialis 化学繊維, dan sebagian besar muncul dalam konteks industri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8017_serat_sintetis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '繊維', 'serat', 53, 95, '<kanji>serat</kanji> yang Anda gunakan untuk <kanji>menjaga</kanji> kesehatan Anda sendiri adalah <vocabulary>serat</vocabulary> yang Anda makan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8018_serat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '合繊', 'serat-sintetis', 53, 96, '<kanji>Serat</kanji> yang Anda <kanji>gabungkan</kanji> bersama untuk menghasilkan serat yang lebih banyak dan lebih kuat, serat tersebut berubah menjadi <vocabulary>serat sintetis</vocabulary>.

Perhatikan bahwa ini adalah singkatan dari istilah spesialis 合成繊維, dan sebagian besar muncul dalam konteks industri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8019_serat_sintetis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '繊細', 'halus', 53, 97, '<kanji>Ramping</kanji> dan <kanji>tipis</kanji> adalah sesuatu yang sangat <vocabulary>halus</vocabulary> dan <vocabulary>mungil</vocabulary>. Mereka mudah patah, jadi Anda harus berhati-hati.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8020_halus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '肯く', 'untuk-mengangguk', 53, 98, 'Jika Anda ingin menunjukkan <kanji>kesepakatan</kanji> Anda dengan seseorang, Anda perlu <vocabulary>mengangguk</vocabulary> agar mereka mengetahuinya.', 'Pembacaan kata ini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Kamu sepertinya <vocabulary>mengangguk</vocabulary> sering ketika berada di <reading>una</reading>gi <reading>kebun binatang</reading> (うなず). Kebun binatang Unagi sangat langka dan sulit untuk dimasuki. Jadi saat Anda berada di sana, teruslah mengangguk kepada semua orang karena Anda merasa sangat terhormat berada di sana!

肯く juga memiliki dua bacaan. うなずく adalah standarnya, tetapi うなづく kini semakin dapat diterima. Untungnya kedengarannya sangat mirip (jika tidak sama), jadi mudah diingat!')
    RETURNING id INTO v_8021_untuk_mengangguk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胞子', 'spora', 53, 99, '<kanji>anak</kanji> dari <kanji>sel</kanji> adalah <vocabulary>spora</vocabulary>. Mereka sama kecilnya dan mengambang di sekitar Anda saat ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8022_spora;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '細胞', 'sel', 53, 100, '<kanji>Sel</kanji> tipis</kanji> itulah yang menyusun tubuh kita. Mereka tetaplah <vocabulary>sel</vocabulary> tetapi bisa juga disebut <vocabulary>sel biologis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membacanya sendiri — berhati-hatilah dengan rendaku yang berubah ほう menjadi ぼう.')
    RETURNING id INTO v_8023_sel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '同胞', 'saudara-saudara', 53, 101, 'Orang yang memiliki <kanji>sel</kanji> yang sama dengan Anda adalah <vocabulary>saudara</vocabulary> Anda, mereka adalah <vocabulary>saudara</vocabulary> Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8024_saudara_saudara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胡座', 'duduk-bersila', 53, 102, 'Ketika <kanji>orang barbar</kanji> <kanji>duduk</kanji> mereka hanya <vocabulary>duduk bersila</vocabulary>. Duduk di kaki Anda sakit dan mereka tidak peduli bagaimana penampilannya, jadi mereka akan merasa nyaman dan menyilangkan kaki.', 'Pembacaan kata ini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Jika kamu <vocabulary>duduk bersila</vocabulary> banyak orang akan menganggap kamu <read>gro</reading>uch (あぐら). Dulu, duduk seperti ini dianggap sangat jantan, dan jika Anda seorang wanita yang melakukannya, mereka akan menyebut Anda penggerutu juga.')
    RETURNING id INTO v_8025_duduk_bersila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胡瓜', 'timun', 53, 103, '<kanji>Orang Barbar</kanji> punya <kanji>melon</kanji> juga, tapi bentuknya panjang dan terlihat lucu. Tunggu, itu bukan melon, itu <vocabulary>mentimun</vocabulary>! Orang barbar pasti mencampuradukkannya.', 'Pembacaan kata ini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Mentimun</vocabulary> memiliki <reading>cu</reading>te <reading>ri</reading>bs (きゅうり)! Maksudku, lihat saja mereka. Iga hijau kecil yang lucu. Menggemaskan!')
    RETURNING id INTO v_8026_timun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脂身', 'daging-gemuk', 53, 104, '<kanji>lemak</kanji> pada <kanji>tubuh</kanji> hewan disebut <vocabulary>daging berlemak</vocabulary>. Beberapa orang sangat suka memakannya dan yang lain sangat membencinya.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda belum mempelajari bacaan ini untuk 脂, jadi inilah mnemonik untuk membantu Anda:

Mmm, semua <vocabulary>daging berlemak</vocabulary> itu. Pikirkan tentang daging berlemak di tubuh Anda sendiri. Jika Anda memiliki banyak daging berlemak, maka Anda memerlukan cara untuk menunjang daging berlemak tersebut. Untuk melakukan itu, Anda akan menggunakan <reading>bra</reading> (あぶら).')
    RETURNING id INTO v_8027_daging_gemuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '舗', 'toko', 53, 105, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa Anda tidak akan sering melihat ini digunakan sebagai kata yang berdiri sendiri, kecuali dalam frasa 舗を構える (untuk membuka toko), tetapi itu pun cukup jarang!', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8028_toko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '店舗', 'toko', 53, 106, '<kanji>toko</kanji> <kanji>toko</kanji> tetaplah <vocabulary>toko</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8029_toko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '舗装', 'trotoar', 53, 107, 'Saat Anda <kanji>mengaspal</kanji> dan <kanji>mendandani</kanji> sesuatu, Anda akan berakhir dengan <vocabulary>trotoar</vocabulary>. Bayangkan aspal yang digunakan pada pengerasan jalan sebagai pakaiannya dan ini masuk akal!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8030_trotoar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '本舗', 'kantor-pusat', 53, 108, '<kanji>toko</kanji> utama</kanji> adalah <vocabulary>toko utama</vocabulary> atau <vocabulary>kantor pusat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8031_kantor_pusat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '艦艇', 'kapal-militer', 53, 109, 'Apa persamaan <kanji>kapal perang</kanji> dan <kanji>perahu dayung</kanji>? Di masa perang keduanya dianggap sebagai <vocabulary>kapal militer</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8032_kapal_militer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '競艇', 'lomba-perahu', 53, 110, '<kanji>bersaing</kanji> dengan <kanji>perahu dayung</kanji> berarti ikut serta dalam <vocabulary>balapan perahu</vocabulary>, yang juga dikenal sebagai <vocabulary>regatta</vocabulary>. Siapa yang akan kamu pertaruhkan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8033_lomba_perahu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '苗木', 'bibit', 53, 111, '<kanji>bibit</kanji> <kanji>pohon</kanji> tetaplah <vocabulary>bibit</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8034_bibit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '苗床', 'pembibitan', 53, 112, '<kanji>tempat tidur</kanji> khusus untuk <kanji>bibit</kanji> disebut <vocabulary>pembibitan</vocabulary>. Di situlah semua bibit kecil tumbuh sebelum dijual atau ditanam kembali di luar.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8035_pembibitan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '葵', 'semacam-tumbuhan', 53, 113, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8036_semacam_tumbuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蒙古', 'mongolia', 53, 114, 'Wilayah <kanji>kegelapan</kanji> di zaman <kanji>kuno</kanji> mengacu pada <vocabulary>Mongolia</vocabulary>. Setidaknya di Tiongkok, tempat asal kata ini. Bayangkan semua suku Mongol kuno di wilayah Tiongkok yang gelap dan tidak dikenal. Segala sesuatu di luar perbatasan diselimuti kegelapan (kiasan), menurutku. Tidak heran mereka memilih kanji ini saat itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8037_mongolia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蓮根', 'akar-teratai', 53, 115, '<kanji>Lotus</kanji> <kanji>root</kanji> adalah <vocabulary>akar teratai</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8038_akar_teratai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '虐殺', 'kekejaman', 53, 116, '<kanji>menindas</kanji> orang dan kemudian <kanji>membunuh</kanji> mereka adalah <vocabulary>kekejaman</vocabulary>. Ini juga disebut <vocabulary>pembunuhan massal</vocabulary> karena itulah yang sebenarnya Anda lakukan. Dan kamu buruk sekali, kenapa kamu melakukan itu?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8039_kekejaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '虐待', 'melecehkan', 53, 117, 'Jika Anda tidak bisa <kanji>menunggu</kanji> untuk <kanji>menindas</kanji> orang ketika Anda besar nanti, Anda adalah tipe orang yang rentan melakukan <vocabulary>pelecehan</vocabulary> pada orang lain. Anda harus mencoba memperbaikinya segera.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8040_melecehkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '残虐', 'kekejaman', 53, 118, '<kanji>sisa</kanji> dari ion <kanji>penindasan</kanji>adalah <vocabulary>kekejaman</vocabulary>. Bahkan ketika Anda sudah selesai menindas orang, <kosakata>kebrutalan</vocabulary> yang Anda sebabkan akan tetap melekat dalam pikiran dan hati mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8041_kekejaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '暴虐', 'kezaliman', 53, 119, '<kanji>Kekerasan</kanji> dan <kanji>penindasan</kanji>adalah tanda-tanda <vocabulary>tirani</vocabulary> dan seseorang benar-benar <vocabulary>kejam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8042_kezaliman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '虐げる', 'untuk-menindas', 53, 120, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menindas</kanji>, jadi versi kata kerjanya adalah <vocabulary>menindas</vocabulary> atau <vocabulary>menganiaya</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Cara terbaik <vocabulary>untuk menindas</vocabulary> seseorang adalah dengan membuatnya agar mereka tidak bisa menggunakan <reading>sh*tter</reading> (しいた). Bayangkan saja raja yang menindas dalam sejarah. Mereka tahu kelemahanmu. Mereka tahu Anda perlu buang air besar suatu saat nanti. Apa jadinya 48 jam dari sekarang jika Anda tidak punya tempat untuk buang air besar. Jika Anda tidak memiliki "sialan" Anda.

Untuk membantu Anda mengingat bahwa ada い di sana, pikirkan tentang <reading>elang</reading>, seperti yang sering kita lakukan untuk い. Elang ini melambangkan "Kebebasan Amerika". Jika Anda memiliki kebebasan ini, Anda akan buang air besar sesuka Anda dan tidak ada yang akan mengambil kotoran Anda.')
    RETURNING id INTO v_8043_untuk_menindas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '諭す', 'untuk-menegur', 53, 121, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menegur</kanji>, jadi versi kata kerjanya adalah <vocabulary>to menegur</vocabulary>.

諭す digunakan ketika seseorang (seringkali dalam posisi berkuasa) mengatakan sesuatu dalam upaya <vocabulary>untuk bertukar pikiran dengan</vocabulary> atau <vocabulary>untuk berbicara dengan akal sehat</vocabulary> seseorang yang lebih muda atau berpangkat lebih rendah. Ada rasa tidak setuju, tapi mereka tidak memarahi – mereka dengan lembut mencoba membuat mereka memahami kesalahan mereka. Bayangkan orang tua dengan sabar menceramahi anaknya atau guru dengan tenang menegur muridnya, dan Anda akan mengerti maksudnya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Ibumu mulai <vocabulary>menegur</vocabulary> kamu sehingga kamu langsung <read>duduk</reading> (さと) turun. Mungkin jika dia melihat Anda duduk tepat di depannya, tampak bersalah dan merasa menyesal, dia tidak akan berteriak sekeras itu.')
    RETURNING id INTO v_8044_untuk_menegur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '教諭', 'guru', 53, 122, 'Siapa yang <kanji>menegur</kanji>dan <kanji>mengajar</kanji>Anda? Seorang <vocabulary>Guru</vocabulary>. Tapi mungkin bukan yang terbaik...

Kata ini lebih formal dan spesifik dibandingkan 先生 atau 教師. Istilah ini mengacu pada guru berlisensi yang mempunyai posisi tetap di sekolah, bukan posisi sementara seperti guru suplai.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8045_guru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '錦', 'brokat', 53, 123, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8047_brokat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '錦鯉', 'ikan-mas-berwarna', 53, 124, '<kanji>brokat</kanji> <kanji>ikan mas</kanji> adalah cara yang bagus untuk mengatakan bahwa itu adalah ikan mas yang memiliki banyak warna cantik. Itu adalah <vocabulary>ikan mas berwarna</vocabulary> atau <vocabulary>koi berwarna</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8048_ikan_mas_berwarna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '随時', 'kapan-saja', 53, 125, 'Jika Anda memiliki <kanji>semua</kanji> <kanji>waktu</kanji> di dunia, Anda dapat melakukan apa pun <vocabulary>kapan saja</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8049_kapan_saja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '随所', 'di-mana-pun', 53, 126, '<kanji>Semua</kanji> <kanji>tempat</kanji> ada <vocabulary>di mana-mana</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8050_di_mana_pun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '随筆', 'esai', 53, 127, '<kanji>Semua</kanji> yang dihasilkan dari <kanji>kuas tulis</kanji> hanyalah <vocabulary>esai</vocabulary>. Anda tidak bisa melukis atau mencoret-coret, Anda harus menulis dengannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8051_esai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '随分', 'sangat', 53, 128, 'Jika Anda berhasil membuat <kanji>semua</kanji> <kanji>bagian</kanji> dari sesuatu bekerja sama, Anda bekerja <vocabulary>sangat</vocabulary>, <vocabulary>sangat</vocabulary>, <vocabulary>sangat</vocabulary> keras untuk melakukannya. Melakukan semua hal itu sulit sehingga banyak pekerjaan yang harus dilakukan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8052_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '追随', 'mengikuti', 53, 129, 'Meskipun Anda <kanji>mengikuti</kanji> <kanji>semua</kanji> orang yang pernah Anda temui, Anda tetap <vocabulary>mengikuti</vocabulary> mereka. Sekali menjadi pengikut, tetap menjadi pengikut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 追, jadi inilah mnemonik untuk membantu Anda:

Mereka membuat Anda <vocabulary>mengikuti</vocabulary> mereka dengan berteriak <reading>TWEE</reading>T (つい)! Burung cenderung mengikuti satu sama lain, dan mendengarkan mereka men-tweet Anda membuat Anda merasa harus mengikuti mereka.')
    RETURNING id INTO v_8053_mengikuti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '頂', 'puncak', 53, 130, 'Kanji berarti <kanji>puncak</kanji> dan kata ini berarti <vocabulary>puncak</vocabulary>, <vocabulary>puncak</vocabulary>, <vocabulary>puncak</vocabulary> dan <vocabulary>mahkota</vocabulary>, paling sering mengacu pada pegunungan.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda seharusnya sudah mengetahui bacaan ini sejak Anda mempelajari 頂く. Jika Anda dapat mengingatnya, Anda juga dapat mengingatnya!')
    RETURNING id INTO v_8054_puncak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '頂戴', 'menerima-dengan-rendah-hati', 53, 131, '<kanji>Dengan rendah hati</kanji> <kanji>menerima</kanji> sesuatu dan Anda akan <vocabulary>dengan rendah hati menerimanya</vocabulary>. Atau <vocabulary>dengan rendah hati memakannya</vocabulary> jika mereka memberi Anda makanan dan bukan anak anjing atau sesuatu yang tidak bisa dimakan. Bisa juga berarti <vocabulary>dengan rendah hati memiliki</vocabulary>. Tema di sini adalah kerendahan hati!

Ini biasanya formal ketika ditulis dalam kanji dan digunakan bersama dengan kata kerja seperti する. Itu juga dapat digunakan sendiri untuk membuat permintaan yang sangat santai. Dalam permintaan biasa, ini masih ditulis dalam kanji di novel dan tulisan kreatif lainnya, tetapi umumnya ditulis dalam hiragana di tempat lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati saja karena たい menjadi だい di sini.')
    RETURNING id INTO v_8055_menerima_dengan_rendah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '高騰', 'lonjakan-harga-tiba-tiba', 53, 132, '<kanji>Tingkat</kanji> <kanji>inflasi</kanji> berarti terjadi <vocabulary>lonjakan harga secara tiba-tiba</vocabulary> dan harganya jauh lebih mahal dari sebelumnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8056_lonjakan_harga_tiba_tiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '暴騰', 'kenaikan-tiba-tiba', 53, 133, '<kanji>Kekerasan</kanji> <kanji>inflasi</kanji> menyebabkan <vocabulary>kenaikan harga secara tiba-tiba</vocabulary>. Menyebalkan sekali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8057_kenaikan_tiba_tiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '急騰', 'kenaikan-tiba-tiba', 53, 134, '<kanji>Tiba-tiba</kanji> <kanji>inflasi</kanji> mengakibatkan <vocabulary>kenaikan harga secara tiba-tiba</vocabulary>, alias kenaikan harga yang tajam.

急騰 biasanya digunakan untuk merujuk pada kenaikan harga atau nilai yang tiba-tiba dan tidak terduga, seperti <vocabulary>lonjakan</vocabulary> harga saham.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8058_kenaikan_tiba_tiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鯉', 'karper', 53, 135, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8059_karper;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '緋鯉', 'ikan-mas-merah', 53, 136, '<kanji>ikan mas</kanji> berwarna <kanji>merah</kanji> disebut <vocabulary>ikan mas merah</vocabulary> dan terkadang <vocabulary>ikan mas emas</vocabulary> karena terkadang orang tidak memahami warna.', 'Bacaannya merupakan gabungan on''yomi dan kun''yomi. Meskipun demikian, kedua bacaan untuk kedua kanji tersebut adalah bacaan yang Anda pelajari dengan kanji tersebut sehingga Anda harus bisa membaca ini.')
    RETURNING id INTO v_8060_ikan_mas_merah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '真鯉', 'ikan-mas-hitam', 53, 137, 'Dalam <kanji>kenyataan</kanji>, <kanji>ikan mas</kanji> biasanya adalah <vocabulary>ikan mas hitam</vocabulary>. Yang berwarna tidak umum, orang hanya berharap demikian.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8061_ikan_mas_hitam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '諒一郎', 'ryoichiro', 53, 138, 'Jika kamu hanya <kanji>memahami</kanji> <kanji>satu</kanji> <kanji>pria</kanji>, buatlah pria itu <vocabulary>Ryoichiro</vocabulary>.

Nama 諒一郎 tidak terlalu umum, namun patut dipelajari karena kanji 諒 digunakan dalam banyak nama, dan baik 諒 maupun 一郎 merupakan nama tersendiri. Jadi dengan mempelajari nama ini, Anda seharusnya bisa membaca banyak nama lainnya juga.', 'Anda mempelajari semua bacaan dalam nama ini dengan kanji. Apa yang lebih mudah untuk dipahami?')
    RETURNING id INTO v_9103_ryoichiro;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '莉子', 'riko', 53, 139, '<kanji>Jasmine</kanji> <kanji>anak</kanji> adalah salah satu cara menulis nama anak perempuan <vocabulary>Riko</vocabulary>. Bayangkan membuat seorang anak dari melati, dan memanggilnya Riko. Contoh orang yang bernama Riko termasuk bintang pop dan penyanyi Fukumoto Riko (福本 莉子) dan idola dan aktris Nakayama Riko (中山 莉子).', 'Anda mempelajari bacaan 莉 ini dengan kanji, dan saya yakin Anda sudah sangat familiar dengan bacaan 子 ini sekarang. Banyak nama anak perempuan Jepang yang berakhiran 子 juga.')
    RETURNING id INTO v_9104_riko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '駿馬', 'kuda-cepat', 53, 140, '<kanji>kecepatan</kanji> <kanji>kuda</kanji> adalah <vocabulary>kuda yang cepat</vocabulary>, dan <vocabulary>kuda yang bagus</vocabulary>. Kata ini tidak terlalu umum, namun muncul dalam konteks pacuan kuda, dan penulisan kreatif.', 'Ini adalah kata jukugo yang menggunakan bacaan kanji on''yomi yang sudah anda ketahui. Namun, 馬 menggunakan sedikit bacaan khusus di sini: め. Jadi, inilah mnemonik untuk membantu Anda mengingat hal ini: 

<vocabulary>kuda cepat</vocabulary> ini begitu cepat sehingga yang dapat Anda lihat setiap kali ia melaju melewati Anda hanyalah <read>目</reading> (め) yang terang benderang. Bayangkan kuda cepat ini melaju melewati Anda berulang kali, tetapi yang Anda lihat hanyalah 目 putihnya.')
    RETURNING id INTO v_9105_kuda_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紫蘇', 'shiso', 53, 141, '<kanji>ungu</kanji> <kanji>bangkit</kanji> bisa jadi apa? Ini sebenarnya berarti <vocabulary>shiso</vocabulary> (alias <vocabulary>perilla</vocabulary>).

紫蘇 adalah sejenis ramuan dengan rasa segar dan sedikit mint. Beberapa varietas berwarna hijau, sementara yang lain memiliki daun ungu. Dalam masakan Jepang, biasanya digunakan sebagai hiasan sashimi. Ini juga sering diasamkan bersama dengan umeboshi (acar plum), atau digoreng sebagai tempura. 

Perhatikan bahwa, seperti spesies tumbuhan dan pohon lainnya, Anda juga akan sering menemukannya ditulis dalam katakana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajari bacaan on''yomi 紫 dengan 紫外線, tapi berikut ini mnemonik jika Anda lupa:

Kamu tahu apa yang enak dari <vocabulary>shiso</vocabulary>? <read>Shee</reading>p (し) daging. Bungkus beberapa daging domba dengan shiso dan goreng, atau coba campurkan daging domba giling dengan shiso cincang untuk membuat bakso yang lezat. enak!')
    RETURNING id INTO v_9316_shiso;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '妃', 'permaisuri-kerajaan', 53, 142, 'Kanji dan kosakatanya sama persis, jadi ini berarti <kosa kata>permaisuri</vocabulary>. Tergantung dengan siapa dia menikah, dia bisa menjadi <vocabulary>ratu</vocabulary>, <vocabulary>putri</vocabulary>, atau bahkan <vocabulary>permaisuri</vocabulary>. 

Arti 妃 bisa tumpang tindih dengan 后, tetapi 后 diperuntukkan bagi permaisuri berpangkat tertinggi, seperti permaisuri atau ratu, sedangkan 妃 adalah kata yang lebih umum yang mencakup permaisuri berpangkat lebih rendah dan istri anggota keluarga kerajaan lainnya. Dalam bahasa Jepang modern, versi kana きさき sering muncul dalam cerita bergaya dongeng yang menampilkan raja dan ratu. Namun mengetahui kedua kanji itu baik, terutama jika Anda membaca sesuatu yang bersejarah.', 'Bagaimana Anda tahu seseorang adalah <vocabulary>permaisuri</vocabulary>? Karena mereka <read>mencium seorang ki</reading>ng (きさき). Jika Anda mencium seorang raja, mungkin Anda bisa menjadi permaisuri juga!')
    RETURNING id INTO v_9400_permaisuri_kerajaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '軟らかい', 'lembut', 53, 143, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Kanji artinya <kanji>lembut</kanji>, jadi bentuk kata sifatnya sama persis: <vocabulary>soft</vocabulary>.

Sementara 柔らかい menggambarkan kelembutan yang menyenangkan atau kelenturan yang anggun, 軟らかい mengacu pada kelembutan atau kelenturan sebagai sifat fisik objektif. Jadi, misalnya, 柔らかいお肉 adalah steak lezat dan empuk yang Anda makan di restoran mewah, sedangkan 軟らかいお肉 hanya menggambarkan satu-satunya jenis daging yang bisa dimakan oleh nenek ompong Anda. Demikian pula, seorang pesenam atau balerina yang anggun memiliki 柔らかい体, sedangkan teman Anda yang dapat memasukkan dirinya ke dalam koper — ya, secara objektif dia memiliki 軟らかい体.', 'Karena ini adalah versi alternatif dari 柔らかい, bacaannya juga sama. Jika Anda mengingatnya, Anda pasti ingat bacaan kata ini.')
    RETURNING id INTO v_9406_lembut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漢', 'pria-jantan', 53, 144, 'Anda mempelajari kanji sebagai "Cina", tapi ingat kanji itu juga bisa berarti <kanji>manusia</kanji>? Ya, itulah arti kata ini, tapi dengan twist: ini adalah <vocabulary>pria jantan</vocabulary>. Anda tahu, <vocabulary>pria jantan</vocabulary> — <vocabulary>pria sejati</vocabulary>.

漢 adalah kata kuno yang berarti "laki-laki", tetapi dengan penekanan khusus pada sifat-sifat stereotip maskulin seperti ketangguhan, kebanggaan, dan ketabahan. Dalam bahasa Jepang modern, kata ini masih dapat digunakan sebagai pengganti 男 ketika Anda ingin menonjolkan kualitas tersebut atau memuji kejantanan seseorang yang berani dan tanpa basa-basi.', 'Kata ini terdiri dari satu kanji, sehingga menggunakan bacaan kun''yomi. Kamu tidak belajar membaca dengan kanji, tapi untungnya itu sama dengan kata lain yang kamu tahu untuk "man": <reading>男</reading> (おとこ). Pastikan Anda mengatakannya dengan suara yang sangat dalam dan jantan.')
    RETURNING id INTO v_9461_pria_jantan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '丹精', 'bekerja-dengan-sungguh-sungguh', 53, 145, 'Anda memiliki <kanji>berwarna karat</kanji> <kanji>semangat</kanji> dari semua darah, keringat, dan air mata yang Anda tumpahkan saat <vocabulary>bekerja dengan sungguh-sungguh</vocabulary>. Apa pun yang Anda lakukan, itu adalah sesuatu yang telah <vocabulary>dilakukan dengan susah payah</vocabulary> dan dengan sangat hati-hati.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9481_bekerja_dengan_sungguh_sungguh;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7958_dermatologi, 'Dermatologi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7958_dermatologi, 'ひふか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7958_dermatologi, '私は皮膚科に通院しています。', 'Saya akan pergi ke dokter kulit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7959_penyakit_kulit, 'Penyakit kulit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7959_penyakit_kulit, 'ひふびょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7959_penyakit_kulit, '息子は皮膚病を患っています。', 'Anak saya menderita penyakit kulit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7960_kerah, 'Kerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7960_kerah, 'Bagian Depan Leher', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7960_kerah, 'Tengkuk Leher', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7960_kerah, 'えりもと', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7960_kerah, '襟元にファンデーションがついていますよ。', 'Ada alas bedak di kerah Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7961_syal, 'Syal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7961_syal, 'Knalpot', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7961_syal, 'Penghibur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7961_syal, 'えりまき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7961_syal, 'ピンクの襟巻きを巻いているのが私の妹です。', 'Gadis yang terbungkus syal merah muda itu adalah adik perempuanku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7963_rajin, 'Rajin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7963_rajin, 'Hati-hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7963_rajin, 'Teliti', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7963_rajin, 'たんねん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7963_rajin, '熟練の染師が、一つ一つ丹念に染め上げました。', 'Ahli pewarnaan yang terampil dengan rajin menyelesaikan pewarnaan masing-masing.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7964_ratifikasi, 'Ratifikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7964_ratifikasi, 'Mengesahkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7964_ratifikasi, 'ひじゅん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7964_ratifikasi, '新戦略兵器削減条約の批准を最優先課題としています。', 'Ratifikasi New START merupakan isu dengan prioritas maksimum.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7965_kelebihan, 'Kelebihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7965_kelebihan, 'Berlebihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7965_kelebihan, 'Lebih', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7965_kelebihan, 'かじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7965_kelebihan, '過剰包装は紙の無駄です。', 'Membungkus secara berlebihan hanya membuang-buang kertas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7966_berulang, 'Berulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7966_berulang, 'Kelebihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7966_berulang, 'Residu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7966_berulang, 'Keseimbangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7966_berulang, 'よじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7966_berulang, '余剰資金で株を買いました。', 'Saya membeli saham dengan dana surplus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7967_kelebihan, 'Kelebihan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7967_kelebihan, 'じょうよきん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7967_kelebihan, '会社の利益剰余金を資本金に振替えるつもりです。', 'Kami bermaksud untuk mentransfer surplus yang diperoleh perusahaan menjadi modal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7968_untuk_makan, 'Untuk makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7968_untuk_makan, 'Untuk Minum', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7968_untuk_makan, 'めしあがる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7968_untuk_makan, 'もしよければお召し上がり下さい。', 'Silakan makan jika Anda mau.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7969_wahyu, 'Wahyu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7969_wahyu, 'けいじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7969_wahyu, 'それはまるで神の啓示のようだった。', 'Itu seperti wahyu ilahi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7970_pencerahan, 'Pencerahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7970_pencerahan, 'Perkembangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7970_pencerahan, 'Penerangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7970_pencerahan, 'Pendidikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7970_pencerahan, 'Inspirasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7970_pencerahan, 'けいはつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7970_pencerahan, '最近は、自己啓発本ばかり読んでいます。', 'Akhir-akhir ini saya hanya membaca buku pengembangan diri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7971_pencerahan, 'Pencerahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7971_pencerahan, 'Petunjuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7971_pencerahan, 'けいもう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7971_pencerahan, '我々が大衆を啓蒙するのです。', 'Kami mencerahkan masyarakat umum.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7972_tanah, 'Tanah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7972_tanah, 'どじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7972_tanah, '土壌が悪いので木が育たない。', 'Tanahnya buruk, sehingga pohon tidak bisa tumbuh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7973_pyongyang, 'Pyongyang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7973_pyongyang, 'ぴょんやん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7973_pyongyang, 'へいじょう', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7973_pyongyang, '平壌で英語を教えていたことがあります。', 'Saya mengajar bahasa Inggris di Pyongyang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7974_toleransi, 'Toleransi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7974_toleransi, 'Kemurahan hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7974_toleransi, 'Kelonggaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7974_toleransi, 'かんだい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7974_toleransi, 'それは寛大な処置だったと思います。', 'Saya pikir itu adalah tindakan yang toleran.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7975_toleransi, 'Toleransi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7975_toleransi, 'Berpikiran terbuka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7975_toleransi, 'Kesabaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7975_toleransi, 'Dermawan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7975_toleransi, 'かんよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7975_toleransi, '自分には厳しいけど、他人には寛容です。', 'Saya ketat pada diri sendiri tetapi toleran terhadap orang lain.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7976_untuk_bersantai, 'Untuk Bersantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7976_untuk_bersantai, 'Untuk Merasa Di Rumah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7976_untuk_bersantai, 'くつろぐ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7976_untuk_bersantai, 'まるで自分の家のように寛いでいました。', 'Aku santai seolah itu adalah rumahku sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7977_jenderal_angkatan_darat, 'Jenderal Angkatan Darat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7977_jenderal_angkatan_darat, 'Marsekal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7977_jenderal_angkatan_darat, 'Laksamana', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7977_jenderal_angkatan_darat, 'げんすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7977_jenderal_angkatan_darat, 'これが、あの有名な最高司令官のマッカ—サ—元帥です。', 'Ini adalah panglima tertinggi yang terkenal, Jenderal MacArthur.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7978_komandan, 'Komandan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7978_komandan, 'Pemimpin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7978_komandan, 'Fuhrer', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7978_komandan, 'そうすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7978_komandan, 'それは、ヒトラー総帥の指令だったのです。', 'Itu adalah perintah Fuhrer Hitler.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7979_komando_tertinggi, 'Komando Tertinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7979_komando_tertinggi, 'Komando Tinggi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7979_komando_tertinggi, 'とうすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7979_komando_tertinggi, '今日は学校で、天皇の統帥権について学びました。', 'Hari ini di sekolah kami belajar tentang otoritas komando tertinggi Kaisar Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7980_berjalan_perlahan, 'Berjalan Perlahan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7980_berjalan_perlahan, 'じょこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7980_berjalan_perlahan, '住宅地や学校の近くでは、徐行で運転してください。', 'Harap berkendara perlahan di dekat kawasan perumahan dan sekolah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7981_perlahan_lahan, 'Perlahan-lahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7981_perlahan_lahan, 'Terus menerus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7981_perlahan_lahan, 'Diam-diam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7981_perlahan_lahan, 'Perlahan-lahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7981_perlahan_lahan, 'じょじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7981_perlahan_lahan, '二学期に入って、徐々に成績が上がり始めました。', 'Semester kedua tiba dan nilaiku perlahan mulai naik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7982_bencana, 'Bencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7982_bencana, 'Tragedi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7982_bencana, 'Peristiwa Mengerikan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7982_bencana, 'さんじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7982_bencana, '惨事を招くことは避けたい。', 'Saya ingin menghindari terjadinya bencana.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7983_bencana, 'Bencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7983_bencana, 'Tragis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7983_bencana, 'Menderita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7983_bencana, 'Malang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7983_bencana, 'Menyedihkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7983_bencana, 'ひさん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7983_bencana, '残された加害者の家族の末路は、悲惨なものだった。', 'Hari-hari terakhir anggota keluarga penyerang yang tersisa sangatlah tragis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7984_menderita, 'Menderita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7984_menderita, 'Malang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7984_menderita, 'Menyedihkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7984_menderita, 'みじめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7984_menderita, 'そんなことを言われて、人がどれだけ惨めな気持ちになるのか分かる？', 'Anda mengatakan sesuatu seperti itu, tetapi apakah Anda memahami betapa sengsaranya perasaan orang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7985_kegagalan_penghancuran, 'Kegagalan Penghancuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7985_kegagalan_penghancuran, 'Benar-benar Dipukul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7985_kegagalan_penghancuran, 'Kekalahan yang Luar Biasa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7985_kegagalan_penghancuran, 'ざんぱい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7985_kegagalan_penghancuran, '日本はワールドカップで惨敗してしまった。', 'Jepang mengalami kegagalan telak di Piala Dunia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7986_adegan_bencana, 'Adegan Bencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7986_adegan_bencana, 'Tontonan yang Mengerikan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7986_adegan_bencana, 'さんじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7986_adegan_bencana, '東北大震災の惨状を忘れることができません。', 'Saya tidak bisa melupakan kejadian bencana Gempa Besar Tohoku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7987_pengumuman, 'Pengumuman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7987_pengumuman, 'Menunjukkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7987_pengumuman, 'Menampilkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7987_pengumuman, 'Perkenalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7987_pengumuman, 'Melakukan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7987_pengumuman, 'ひろう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7987_pengumuman, '誕生日会で、手品を披露しました。', 'Sulap dilakukan di pesta ulang tahun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7988_untuk_mendapatkan_antara, 'Untuk Mendapatkan Antara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7988_untuk_mendapatkan_antara, 'Untuk Tertangkap', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7988_untuk_mendapatkan_antara, 'はさまる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7988_untuk_mendapatkan_antara, 'アスパラガスが歯に挟まっています。', 'Ada asparagus yang tersangkut di gigi Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7989_untuk_menginstal, 'Untuk Menginstal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7989_untuk_menginstal, 'Ke Tempat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7989_untuk_menginstal, 'Untuk Memperbaiki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7989_untuk_menginstal, 'Untuk Mengatur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7989_untuk_menginstal, 'untuk berbaring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7989_untuk_menginstal, 'Ke Kursi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7989_untuk_menginstal, 'すえる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7989_untuk_menginstal, '今度、この機械を工場に据えようと思っているんだ。', 'Saya rasa mesin ini akan dipasang oleh pabrik kali ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7990_dibangun_di, 'Dibangun di', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7990_dibangun_di, 'Dilengkapi Dengan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7990_dibangun_di, 'とうさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7990_dibangun_di, 'モーターショーでは、各メーカーが最新鋭のエンジンを搭載した車を発表した。', 'Pada pameran motor tersebut, masing-masing pabrikan menghadirkan kendaraan yang dibekali mesin tercanggih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7990_dibangun_di, 'ETC搭載の中古車を手ごろな価格で購入したいのですが。', 'Saya ingin mendapatkan mobil bekas dengan ETC bawaan dengan harga yang wajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7990_dibangun_di, '今度の機種には、どんな新機能が搭載されるんでしょうか。', 'Fitur baru apa saja yang akan disertakan pada model mendatang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7991_asrama, 'Asrama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7991_asrama, 'Embarkasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7991_asrama, 'とうじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7991_asrama, 'ご搭乗の際は、足元にお気をつけください。', 'Harap perhatikan kaki Anda saat naik ke pesawat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7991_asrama, '乗客を全員搭乗させると、係員はドアを閉めた。', 'Setelah semua penumpang naik, petugas menutup pintu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7991_asrama, 'えっ、搭乗手続きもしてないのに、どうやって搭乗口に来たんですか？', 'Hah? Bagaimana bisa sampai di boarding gate padahal belum melalui check-in?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7992_fajar, 'Fajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7992_fajar, 'Fajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7992_fajar, 'Awal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7992_fajar, 'あけぼの', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7992_fajar, '春の曙の空はいくら見ても見飽きません。', 'Tak peduli berapa kali pun aku melihat fajar di langit musim semi, aku tak bosan-bosannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7993_pohon_mati, 'Pohon Mati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7993_pohon_mati, 'Kayu Kering', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7993_pohon_mati, 'かれき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7993_pohon_mati, '枯れ木に花を咲かせましょう。', 'Mari kita membuat pohon mati itu mekar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7994_membiarkan_layu, 'Membiarkan Layu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7994_membiarkan_layu, 'Untuk Membunuh Tanaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7994_membiarkan_layu, 'Membiarkan Sesuatu Mengering', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7994_membiarkan_layu, 'からす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7994_membiarkan_layu, '水をやりすぎて、サボテンを枯らしてしまいました。', 'Saya memberi kaktus terlalu banyak air dan membunuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7994_membiarkan_layu, 'パパが水やりを忘れて、ママの大切なお花を枯らしちゃったの。', 'Ayah lupa menyiram tanaman dan akhirnya membiarkan bunga berharga milik Ibu mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7994_membiarkan_layu, '農家は除草剤で雑草を枯らし、作業の効率化を図っています。', 'Petani membunuh gulma dengan herbisida agar pekerjaan mereka lebih efisien.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7994_membiarkan_layu, '「声を枯らして訴えた」という言葉通り、彼女は全力で訴え続けました。', 'Sesuai dengan ungkapan “berteriak serak,” dia terus memohon dengan sekuat tenaga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7995_untuk_merebus, 'Untuk Merebus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7995_untuk_merebus, 'Untuk Memanaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7995_untuk_merebus, 'Untuk Menggairahkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7995_untuk_merebus, 'わかす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7995_untuk_merebus, 'お風呂を沸かしておきましたよ。', 'Aku mandi untukmu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7996_mendidih, 'Mendidih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7996_mendidih, 'Gelora', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7996_mendidih, 'ふっとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7996_mendidih, 'スープが沸騰してグツグツいってますよ。', 'Supnya mendidih dan mendidih.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7997_pemurnian_diri, 'Pemurnian Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7997_pemurnian_diri, 'Pembersihan Diri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7997_pemurnian_diri, 'じじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7997_pemurnian_diri, 'この事件が業界の自浄を促すだろう。', 'Kejadian ini akan mendorong pemurnian diri industri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7998_pemurnian, 'Pemurnian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7998_pemurnian, 'Pembersihan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7998_pemurnian, 'じょうか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7998_pemurnian, '私は、放射能汚染水を浄化する施設を設計しています。', 'Saya sedang merancang fasilitas untuk memurnikan air radioaktif.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7999_tanah_suci, 'Tanah Suci', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7999_tanah_suci, 'じょうど', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7999_tanah_suci, 'そこはまさに極楽浄土のような所だった。', 'Tempat itu persis seperti Tanah Suci Amitabha.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8000_kenajisan, 'Kenajisan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8000_kenajisan, 'Kekotoran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8000_kenajisan, 'Kenajisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8000_kenajisan, 'Kekotoran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8000_kenajisan, 'Pencemaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8000_kenajisan, 'ふじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8000_kenajisan, 'インドでは、左手を不浄の手として、右手でご飯を食べる。', 'Di India tangan kiri dianggap najis dan tangan kanan digunakan untuk makan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8001_air_bersih, 'Air Bersih', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8001_air_bersih, 'じょうすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8001_air_bersih, '三十万円の浄水器を売りつけられそうになりました。', 'Saya hampir menjual filter air seharga tiga ratus ribu yen kepada saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8002_murni, 'Murni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8002_murni, 'Membersihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8002_murni, 'Kemurnian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8002_murni, 'せいじょう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8002_murni, 'しょうじょう', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8002_murni, '真に清浄な心を持った人間などいるのでしょうか。', 'Menurut Anda apakah ada orang yang hatinya benar-benar murni?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8003_pencucian, 'Pencucian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8003_pencucian, 'Pembersihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8003_pencucian, 'Pencucian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8003_pencucian, 'せんじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8003_pencucian, '電気ポットはどうやって洗浄してますか？', 'Bagaimana cara membersihkan dispenser air panas Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8003_pencucian, 'エアコンのフィルターは定期的に洗浄しましょう。', 'Pastikan untuk membersihkan filter AC secara teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8003_pencucian, 'その口座は資金洗浄に使われていたようです。', 'Rekening itu sepertinya digunakan untuk pencucian uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8003_pencucian, '食器洗浄機の音がうるさくて眠れません。', 'Suara mesin pencuci piring sangat keras sehingga saya tidak bisa tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8003_pencucian, '妹は二歳の時に甘い咳止めシロップを一気飲みしてしまい、鼻から管を通して胃を洗浄するはめになった。', 'Kakak perempuan saya menenggak sebotol sirup obat batuk yang manis ketika dia berusia dua tahun dan dia harus memasang selang melalui hidung dan perutnya untuk memompa keluarnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8004_pusaran_air, 'Pusaran air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8004_pusaran_air, 'Eddy', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8004_pusaran_air, 'Gulungan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8004_pusaran_air, 'うずまき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8004_pusaran_air, '蚊取り線香はどうして渦巻き状になっているんですか。', 'Mengapa obat nyamuk bakar berbentuk pusaran air?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8005_pakar, 'Pakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8005_pakar, 'Profesional', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8005_pakar, 'くろうと', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8005_pakar, '水商売の玄人と素人を見分けるのが趣味です。', 'Hobi saya adalah mencoba membedakan antara profesional dan amatir dalam "perdagangan air".');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8006_melon, 'Melon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8006_melon, 'Kundur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8006_melon, 'うり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8006_melon, 'これは瓜の漬物です。', 'Ini acar melon.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8007_semangka, 'Semangka', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8007_semangka, 'すいか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8007_semangka, '夏といえば西瓜ですよね。', 'Ketika datang ke musim panas, semangka adalah hal pertama yang terlintas dalam pikiran.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8008_naskah, 'Naskah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8008_naskah, 'Menyalin', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8008_naskah, 'げんこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8008_naskah, '原稿に珈琲を零してしまいました。', 'Saya menumpahkan kopi ke naskah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8009_catatan, 'Catatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8009_catatan, 'Draf', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8009_catatan, 'Naskah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8009_catatan, 'そうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8009_catatan, 'スピーチの草稿を作成しています。', 'Saya sedang menulis draf pidatonya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8010_penyerahan, 'Penyerahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8010_penyerahan, 'Pos', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8010_penyerahan, 'Kontribusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8010_penyerahan, 'Kirim', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8010_penyerahan, 'とうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8010_penyerahan, 'フェイスブックに犬の写真を投稿しました。', 'Saya memposting gambar anjing saya ke Facebook.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8011_biaya_naskah, 'Biaya Naskah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8011_biaya_naskah, 'Pembayaran Untuk Menulis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8011_biaya_naskah, 'こうりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8011_biaya_naskah, 'わずかですが、稿料をもらいました。', 'Memang tidak banyak, tapi saya mendapat uang muka untuk naskahnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8012_lintang, 'Lintang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8012_lintang, 'いど', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8012_lintang, 'GPSで経度や緯度が検索できます。', 'Saya dapat mencari garis lintang dan bujur di GPS saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8013_lintang_selatan, 'Lintang Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8013_lintang_selatan, 'Lintang Selatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8013_lintang_selatan, 'なんい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8013_lintang_selatan, '理論上は、南緯45度が南極点から赤道までの距離の中間地点であるとされる。', 'Secara teoritis, 45 derajat selatan dianggap sebagai titik tengah antara Kutub Selatan dan garis khatulistiwa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8014_lintang_utara, 'Lintang Utara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8014_lintang_utara, 'Lintang utara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8014_lintang_utara, 'ほくい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8014_lintang_utara, '江ノ島とギリシャのクレタ島の北緯は同じです。', 'Enoshima dan pulau Kreta di Yunani berada di garis lintang utara yang sama.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8015_detail, 'Detail', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8015_detail, 'Detailnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8015_detail, 'Keseluruhan Cerita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8015_detail, 'Bagaimana Ini Dimulai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8015_detail, 'Bujur Dan Lintang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8015_detail, 'けいい', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8015_detail, 'いきさつ', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8015_detail, '彼は、これまでの経緯を静かに語りだした。', 'Dia diam-diam memberi tahu kami tentang bagaimana semuanya dimulai.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8016_paralel, 'Paralel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8016_paralel, 'Garis Lintang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8016_paralel, 'いせん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8016_paralel, '緯度0度の緯線のことを、赤道と呼びます。', 'Paralel 0 derajat disebut ekuator.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8017_serat_sintetis, 'Serat Sintetis', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8017_serat_sintetis, 'かせん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8017_serat_sintetis, '掃除には、化繊箒を使っています。', 'Saya menggunakan sapu fiber sintetis untuk menyapu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8018_serat, 'Serat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8018_serat, 'Serat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8018_serat, 'Tekstil', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8018_serat, 'せんい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8018_serat, '毎日サラダを食べて、ちゃんと食物繊維を摂るようにしています。', 'Saya makan salad setiap hari dan mengonsumsi serat makanan dalam jumlah yang tepat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8019_serat_sintetis, 'Serat Sintetis', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8019_serat_sintetis, 'ごうせん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8019_serat_sintetis, '原油安やナフサ安を受けて、合繊の価格も下落しています。', 'Kita menerima minyak mentah yang murah dan nafta yang murah dan harga serat sintetis juga turun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8020_halus, 'Halus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8020_halus, 'Halus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8020_halus, 'Bagus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8020_halus, 'せんさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8020_halus, '上品で繊細な味の日本食が好きです。', 'Saya suka cita rasa makanan Jepang yang elegan dan halus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8021_untuk_mengangguk, 'Untuk mengangguk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8021_untuk_mengangguk, 'Untuk Menundukkan Kepala', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8021_untuk_mengangguk, 'うなずく', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8021_untuk_mengangguk, 'うなづく', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8021_untuk_mengangguk, '母は話を聞きながら、ウンウンと肯きました。', 'Ibuku mengangguk sambil berkata "uh huh" sambil mendengarkan percakapan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8022_spora, 'Spora', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8022_spora, 'ほうし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8022_spora, 'キノコの胞子はとても小さいので、肉眼で形は分かりません。', 'Karena spora jamur sangat kecil, penampakannya tidak dapat dilihat dengan mata telanjang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8023_sel, 'Sel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8023_sel, 'Sel Biologis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8023_sel, 'さいぼう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8023_sel, '私は、人工多能性幹細胞(iPS細胞)の研究をしています。', 'Saya mempelajari sel induk berpotensi majemuk yang diinduksi (sel iPS).');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8024_saudara_saudara, 'Saudara-saudara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8024_saudara_saudara, 'Saudara laki-laki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8024_saudara_saudara, 'Rekan senegaranya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8024_saudara_saudara, 'Rekan senegaranya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8024_saudara_saudara, 'どうほう', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8024_saudara_saudara, 'どうぼう', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8024_saudara_saudara, 'お前は同胞を裏切るつもりか。', 'Apakah kamu berniat mengkhianati saudaramu?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8025_duduk_bersila, 'Duduk Bersila', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8025_duduk_bersila, 'Duduk Bersila', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8025_duduk_bersila, 'あぐら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8025_duduk_bersila, 'こんなところで胡座をかいてないで、さっさと仕事にとりかかりなさい。', 'Jangan duduk bersila di sini, mulailah pekerjaan Anda dengan cepat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8026_timun, 'Timun', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8026_timun, 'きゅうり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8026_timun, 'たまに胡瓜の糠漬けが無性に食べたくなるんだ。', 'Kadang-kadang, saya sangat ingin makan acar mentimun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8027_daging_gemuk, 'Daging Gemuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8027_daging_gemuk, 'Daging Berlemak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8027_daging_gemuk, 'あぶらみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8027_daging_gemuk, 'お肉の脂身って苦手なんですよね。', 'Saya tidak suka daging berlemak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8028_toko, 'Toko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8028_toko, 'Toko', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8028_toko, 'ほ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8028_toko, 'おかげ様で自分の舗を構えることができました。', 'Berkatmu aku bisa mendirikan tokoku sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8029_toko, 'Toko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8029_toko, 'Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8029_toko, 'Konter Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8029_toko, 'Konter Toko', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8029_toko, 'てんぽ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8029_toko, '空港の近くにレンタカーの店舗はありますか？', 'Apakah ada toko persewaan mobil di dekat bandara?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8030_trotoar, 'Trotoar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8030_trotoar, 'Permukaan Jalan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8030_trotoar, 'ほそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8030_trotoar, 'この道路はまだ舗装されていない。', 'Jalan raya ini masih belum diaspal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8031_kantor_pusat, 'Kantor pusat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8031_kantor_pusat, 'Toko Utama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8031_kantor_pusat, 'Akhiran Nama Toko', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8031_kantor_pusat, 'ほんぽ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8031_kantor_pusat, 'ベビー用品は、いつも赤ちゃん本舗で買います。', 'Saya selalu membeli perlengkapan bayi di toko perlengkapan bayi utama.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8032_kapal_militer, 'Kapal Militer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8032_kapal_militer, 'Armada Perang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8032_kapal_militer, 'かんてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8032_kapal_militer, '海軍の艦艇の乗組員が不足しています。', 'Awak armada perang angkatan laut kurang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8033_lomba_perahu, 'Lomba Perahu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8033_lomba_perahu, 'Regatta', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8033_lomba_perahu, 'きょうてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8033_lomba_perahu, '競艇で大儲けしました。', 'Saya melakukan pembunuhan dalam perlombaan perahu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8034_bibit, 'Bibit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8034_bibit, 'Pohon muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8034_bibit, 'Pohon Muda', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8034_bibit, 'なえぎ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8034_bibit, 'この盆栽は苗木から育てたんです。', 'Saya menanam bonsai ini dari bibit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8035_pembibitan, 'Pembibitan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8035_pembibitan, 'Persemaian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8035_pembibitan, 'なえどこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8035_pembibitan, '今日は夫と苺の苗床を作りました。', 'Saya membuat tempat tidur stroberi bersama suami saya hari ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8036_semacam_tumbuhan, 'Semacam tumbuhan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8036_semacam_tumbuhan, 'あおい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8036_semacam_tumbuhan, '徳川氏の家紋といえば、「三つ葉葵」が一番有名だ。', 'Berbicara tentang lambang keluarga Tokugawa, "tiga daun hollyhock" adalah yang paling terkenal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8037_mongolia, 'Mongolia', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8037_mongolia, 'もうこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8037_mongolia, 'この絵には、蒙古襲来の時の様子が描かれています。', 'Gambar ini menggambarkan keadaan pada saat invasi Mongolia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8038_akar_teratai, 'Akar Teratai', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8038_akar_teratai, 'れんこん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8038_akar_teratai, '蓮根と人参のキンピラを作りました。', 'Saya membuat kinpira dengan akar teratai dan wortel.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8039_kekejaman, 'Kekejaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8039_kekejaman, 'Pembunuhan Massal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8039_kekejaman, 'Pembantaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8039_kekejaman, 'Pembantaian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8039_kekejaman, 'ぎゃくさつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8039_kekejaman, '南京大虐殺が捏造だったというなら、その証拠を説明してください。', 'Jika Anda mengatakan Pembantaian Nanking adalah rekayasa, mohon jelaskan buktinya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8040_melecehkan, 'Melecehkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8040_melecehkan, 'Penganiayaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8040_melecehkan, 'Penganiayaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8040_melecehkan, 'Kekejaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8040_melecehkan, 'ぎゃくたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8040_melecehkan, '虐待を受けた子供は、自己評価が非常に低くなることが多い。', 'Banyak anak yang menjadi korban pelecehan memiliki harga diri yang sangat rendah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8041_kekejaman, 'Kekejaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8041_kekejaman, 'Kebrutalan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8041_kekejaman, 'ざんぎゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8041_kekejaman, 'これは非常に残虐な犯行です。', 'Ini adalah kejahatan yang sangat brutal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8041_kekejaman, '私がそのような残虐行為を繰り返したのは、その度に達成感を得られることができたからです。', 'Saya mengulangi tindakan brutal itu karena saya bisa merasakan pencapaian setiap saat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8042_kezaliman, 'Kezaliman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8042_kezaliman, 'Kebiadaban', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8042_kezaliman, 'Kekejaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8042_kezaliman, 'Kejam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8042_kezaliman, 'ぼうぎゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8042_kezaliman, 'あいつらは暴虐の限りを尽くしたんだ。', 'Mereka melakukan segala macam tindakan tirani.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8043_untuk_menindas, 'Untuk Menindas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8043_untuk_menindas, 'Untuk menganiaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8043_untuk_menindas, 'Untuk melakukan Tirani', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8043_untuk_menindas, 'しいたげる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8043_untuk_menindas, 'あの男は、妻と子供をずっと虐げてきたのよ。', 'Laki-laki itu selalu menindas istri dan anak-anaknya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8044_untuk_menegur, 'Untuk menegur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8044_untuk_menegur, 'Untuk Bernalar Dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8044_untuk_menegur, 'Untuk Berbicara Akal Ke Dalam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8044_untuk_menegur, 'さとす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8044_untuk_menegur, '先生は生徒を優しく諭した。', 'Guru dengan lembut menegur siswanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8044_untuk_menegur, '彼女は子供を諭すのが上手だ。', 'Dia pandai bertukar pikiran dengan anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8044_untuk_menegur, '上司は部下の失敗を責めるより、諭すべきだ。', 'Daripada mengkritik bawahan atas kegagalan mereka, atasan harus membantu mereka memahami kesalahan mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8044_untuk_menegur, '彼はため息をついて、笑いをこらえながら諭すように話した。', 'Dia menghela nafas, berusaha untuk tidak tertawa, dan berbicara dengan nada menceramahi dengan lembut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8044_untuk_menegur, 'うちの父は俺のことを叱るけど、本当は諭すのが正解だと思う。', 'Ayahku menegurku, tapi menurutku, hal yang benar yang harus dia lakukan adalah bertukar pikiran denganku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8045_guru, 'Guru', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8045_guru, 'きょうゆ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8045_guru, 'あの教諭、昔の教え子と結婚したらしいよ。', 'Rupanya guru itu menikah dengan mantan muridnya beberapa waktu lalu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8047_brokat, 'Brokat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8047_brokat, 'Gaun Bagus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8047_brokat, 'Pakaian Bagus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8047_brokat, 'にしき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8047_brokat, '私はこうしたパーティには、控えめだけど上品な「かざり錦」の着物を着て行くことが多いです。', 'Saya sering mengenakan kimono "brokat dekoratif" yang sederhana namun elegan ke pesta semacam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8047_brokat, 'いつか故郷に錦を飾れるような、立派な大人になりたいです。', 'Suatu hari nanti aku ingin menjadi orang dewasa terhormat yang bisa menghiasi kampung halamanku dengan kejayaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8047_brokat, 'いくら「社会のため」を錦の御旗に掲げても、当事者目線が抜けてる主張なら意味がありませんよ。', 'Tidak peduli seberapa banyak Anda memproklamirkan “Demi Masyarakat” sebagai panji Anda, jika argumen Anda tidak memiliki perspektif pihak-pihak yang berkepentingan langsung, maka argumen Anda tidak ada artinya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8048_ikan_mas_berwarna, 'Ikan Mas Berwarna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8048_ikan_mas_berwarna, 'Koi berwarna', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8048_ikan_mas_berwarna, 'にしきごい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8048_ikan_mas_berwarna, '庭の池に錦鯉を放ちました。', 'Saya melepaskan ikan mas berwarna ke kolam taman.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8049_kapan_saja, 'Kapan saja', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8049_kapan_saja, 'ずいじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8049_kapan_saja, '新しい情報が入れば、随時ご連絡致します。', 'Jika informasi baru masuk, saya akan menghubungi Anda kapan saja.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8050_di_mana_pun, 'Di mana pun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8050_di_mana_pun, 'Di Setiap Kesempatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8050_di_mana_pun, 'ずいしょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8050_di_mana_pun, 'この寿司屋には、店の随所に、日本の美を感じさせるインテリアが飾られています。', 'Keindahan Jepang bisa Anda rasakan di mana-mana di restoran sushi ini dari dekorasi interiornya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8051_esai, 'Esai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8051_esai, 'Tulisan Lain-Lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8051_esai, 'Catatan Sastra', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8051_esai, 'ずいひつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8051_esai, '随筆の書き方を教えてください。', 'Tolong ajari saya cara menulis esai.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8052_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8052_sangat, 'Sangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8052_sangat, 'Heran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8052_sangat, 'Sangat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8052_sangat, 'ずいぶん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8052_sangat, '随分大胆なことをしたんですね。', 'Anda melakukan hal yang sangat berani.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8053_mengikuti, 'Mengikuti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8053_mengikuti, 'Ambil Setelahnya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8053_mengikuti, 'ついずい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8053_mengikuti, 'この会社は、圧倒的な強さで、他社の追随を許しませんでした。', 'Perusahaan ini tidak tertandingi oleh perusahaan lain dengan kekuatannya yang luar biasa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8054_puncak, 'Puncak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8054_puncak, 'Puncak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8054_puncak, 'Atas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8054_puncak, 'Mahkota', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8054_puncak, 'いただき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8054_puncak, '日曜日の早朝、アキラは富士山の頂を目指して、出発した。', 'Minggu dini hari, Akira berangkat menuju puncak Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8054_puncak, 'ピンク色のネコの一族は、山奥や山の頂に住んでいる。', 'Klan kucing merah muda tinggal jauh di pegunungan dan puncak gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8054_puncak, '目を覚ますと、眼前には険しい頂きがそびえ立ち、その頂きの上には仙人が立っていた。', 'Ketika saya bangun, saya melihat puncak terjal di depan saya, dan seorang pertapa berdiri di atasnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8055_menerima_dengan_rendah_hati, 'Menerima dengan rendah hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8055_menerima_dengan_rendah_hati, 'Makan dengan Rendah Hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8055_menerima_dengan_rendah_hati, 'Dengan Rendah Hati Memiliki', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8055_menerima_dengan_rendah_hati, 'ちょうだい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8055_menerima_dengan_rendah_hati, '先ほど、先方からお電話を頂戴しました。', 'Kami menerima telepon dari klien beberapa waktu yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8055_menerima_dengan_rendah_hati, 'では、遠慮なく頂戴します。', 'Kalau begitu, aku akan memakannya dengan penuh rasa syukur, tanpa ragu-ragu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8055_menerima_dengan_rendah_hati, 'ママのこの指輪、大きくなったら私に頂戴ね。', 'Bu, izinkan aku memiliki cincin ini saat aku besar nanti, ya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8056_lonjakan_harga_tiba_tiba, 'Lonjakan Harga Tiba-tiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8056_lonjakan_harga_tiba_tiba, 'Kenaikan Harga yang Curam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8056_lonjakan_harga_tiba_tiba, 'こうとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8056_lonjakan_harga_tiba_tiba, 'どうして株価がこんなに高騰しているんだ。', 'Kenapa harga saham tiba-tiba melonjak seperti ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8057_kenaikan_tiba_tiba, 'Kenaikan Tiba-tiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8057_kenaikan_tiba_tiba, 'Kenaikan Tajam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8057_kenaikan_tiba_tiba, 'Ledakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8057_kenaikan_tiba_tiba, 'Meroket', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8057_kenaikan_tiba_tiba, 'ぼうとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8057_kenaikan_tiba_tiba, '住宅価格が暴騰している。', 'Harga rumah meroket.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8058_kenaikan_tiba_tiba, 'Kenaikan Tiba-tiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8058_kenaikan_tiba_tiba, 'Lonjakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8058_kenaikan_tiba_tiba, 'きゅうとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8058_kenaikan_tiba_tiba, 'ドルが再び急騰しています。', 'Dolar tiba-tiba naik lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8058_kenaikan_tiba_tiba, '石油価格の急騰はこんなところにも影響がでるんですね？', 'Lonjakan harga minyak berdampak pada tempat seperti ini, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8058_kenaikan_tiba_tiba, '急騰する円高を食い止めるために、日銀は為替市場に介入を始めた。', 'Bank of Japan telah mulai melakukan intervensi di pasar valuta asing untuk membendung kenaikan tajam yen.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8059_karper, 'Karper', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8059_karper, 'Koi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8059_karper, 'こい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8059_karper, '鯉に餌をあげないでください。', 'Tolong jangan memberi makan ikan mas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8060_ikan_mas_merah, 'Ikan Mas Merah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8060_ikan_mas_merah, 'Ikan Mas Emas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8060_ikan_mas_merah, 'Koi Merah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8060_ikan_mas_merah, 'Koi Emas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8060_ikan_mas_merah, 'ひごい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8060_ikan_mas_merah, 'ニシキゴイは緋鯉をもとに改良されたものです。', 'Ikan mas berwarna merupakan penyempurnaan dari ikan mas merah dan emas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8061_ikan_mas_hitam, 'Ikan Mas Hitam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8061_ikan_mas_hitam, 'Koi Hitam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8061_ikan_mas_hitam, 'まごい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8061_ikan_mas_hitam, '真鯉の刺青を背中に彫りました。', 'Saya membuat tato ikan mas hitam di punggung saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9103_ryoichiro, 'Ryoichiro', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9103_ryoichiro, 'りょういちろう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9103_ryoichiro, '諒一郎って、あだ名とかあるの？', 'Ryoichiro, apakah kamu punya nama panggilan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9103_ryoichiro, '諒一郎君と付き合うことになったんだ。', 'Aku sudah mulai pacaran dengan Ryoichiro-kun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9103_ryoichiro, '諒一郎は今、外出中です。', 'Ryoichiro sedang keluar sekarang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9104_riko, 'Riko', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9104_riko, 'りこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9104_riko, '今度、莉子ちゃんと韓国旅行に行く予定なんだよね。', 'Aku berencana melakukan perjalanan ke Korea bersama Riko-chan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9104_riko, '莉子って、ちょっとぶりっ子じゃない？', 'Riko bertingkah seperti gadis yang baik, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9104_riko, 'うちの莉子が、ご迷惑をおかけしました。', 'Saya minta maaf atas masalah yang disebabkan oleh Riko kami kepada Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9105_kuda_cepat, 'Kuda Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9105_kuda_cepat, 'Kuda Baik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9105_kuda_cepat, 'しゅんめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9105_kuda_cepat, '王は、自慢の駿馬に乗って姿を現した。', 'Raja muncul dengan menunggangi kuda cepatnya yang berharga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9105_kuda_cepat, 'その大名には、数々の駿馬が献じられた。', 'Daimyo dihadiahi sejumlah kuda yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9105_kuda_cepat, 'とても良い毛並みの駿馬を一億円で落札した。', 'Dia berhasil mengajukan tawaran sebesar 100 juta yen untuk seekor kuda bagus dengan bulu yang sangat bagus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9316_shiso, 'Shiso', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9316_shiso, 'Bahaya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9316_shiso, 'しそ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9316_shiso, '私、紫蘇は苦手なんです。', 'Saya bukan penggemar shiso.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9316_shiso, '今年は紫蘇の種を植えてみました。', 'Saya mencoba menanam benih shiso tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9316_shiso, 'とてもいい紫蘇の香りがしますね。', 'Aroma shisonya enak banget ya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9400_permaisuri_kerajaan, 'Permaisuri Kerajaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9400_permaisuri_kerajaan, 'Ratu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9400_permaisuri_kerajaan, 'Putri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9400_permaisuri_kerajaan, 'Permaisuri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9400_permaisuri_kerajaan, 'きさき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9400_permaisuri_kerajaan, '帝が新しい妃を迎えるという噂が広まっていた。', 'Rumor menyebar bahwa kaisar akan mengambil permaisuri baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9400_permaisuri_kerajaan, '彼女は国王の妃として人々に敬愛されていました。', 'Dia dicintai oleh rakyat sebagai permaisuri raja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9400_permaisuri_kerajaan, 'お妃様は静かに本を読みながら午後をお過ごしになられました。', 'Yang Mulia menghabiskan sore itu dengan tenang membaca buku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9406_lembut, 'Lembut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9406_lembut, 'Lembek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9406_lembut, 'Lembut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9406_lembut, 'やわらかい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9406_lembut, 'このボールは軟らかいから、室内でも使える。', 'Bola ini lembut, jadi bisa digunakan di dalam ruangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9406_lembut, '何か軟らかいものを踏んだ感触がした。', 'Saya merasa seperti saya menginjak sesuatu yang lembut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9406_lembut, '雨の後、畑の土は軟らかくなっていました。', 'Setelah hujan, tanah di ladang menjadi lunak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9406_lembut, '最近、便が軟らかい日が多いんですよね。', 'Akhir-akhir ini saya mengalami tinja yang lunak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9461_pria_jantan, 'Pria Jantan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9461_pria_jantan, 'Laki-laki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9461_pria_jantan, 'Pria Sejati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9461_pria_jantan, 'おとこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9461_pria_jantan, 'いやー、漢だねぇ。しびれる！', 'Wow, itu pria sejati di sana. Membuatku merinding!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9461_pria_jantan, '漢なら、約束は守れ。いいな？', 'Jika Anda pria sejati, tepati janji Anda. Mengerti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9461_pria_jantan, '逃げない姿に、漢を感じました。', 'Aku tahu dia pria sejati dari cara dia mempertahankan pendiriannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9461_pria_jantan, '彼は黙って責任を取った。漢だと思った。', 'Dia mengambil tanggung jawab tanpa sepatah kata pun — menurutku itu adalah tindakan yang jantan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9481_bekerja_dengan_sungguh_sungguh, 'Bekerja dengan Sungguh-sungguh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9481_bekerja_dengan_sungguh_sungguh, 'Melakukannya dengan Telaten', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9481_bekerja_dengan_sungguh_sungguh, 'Melakukan Dengan Hati-hati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9481_bekerja_dengan_sungguh_sungguh, 'たんせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9481_bekerja_dengan_sungguh_sungguh, '丹精して育てた野菜は、味がまったく違う。', 'Sayuran yang ditanam dengan perawatan sungguh-sungguh rasanya sangat berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9481_bekerja_dengan_sungguh_sungguh, '彼は細部にまで丹精をこらし、作品に魂を吹き込んだ。', 'Dia memberikan perhatian yang cermat pada setiap detail, memberikan kehidupan pada karyanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9481_bekerja_dengan_sungguh_sungguh, '父は長年、丹精してその庭を手入れし、ついに見事なる景を成した。 ', 'Selama bertahun-tahun ayahku dengan susah payah merawat taman itu, dan akhirnya taman itu menjadi pemandangan yang sangat indah.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2190_toleransi, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2190_toleransi, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2190_toleransi, id FROM items WHERE character = '見' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2191_sel, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2191_sel, id FROM items WHERE character = '包' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2192_membersihkan, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2192_membersihkan, id FROM items WHERE character = '争' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2193_semua, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2193_semua, id FROM items WHERE character = '有' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2193_semua, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2194_draf, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2194_draf, r_438_tinggi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2195_berwarna_karat, id FROM items WHERE character = '舟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2196_tanah, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2196_tanah, id FROM items WHERE character = '㐮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2197_toko, id FROM items WHERE character = '舎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2197_toko, id FROM items WHERE character = '甫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2198_inflasi, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2198_inflasi, id FROM items WHERE character = '龹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2198_inflasi, id FROM items WHERE character = '馬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2199_lintang, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2199_lintang, id FROM items WHERE character = '韋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2200_perahu_dayung, id FROM items WHERE character = '舟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2200_perahu_dayung, id FROM items WHERE character = '廴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2200_perahu_dayung, id FROM items WHERE character = '王' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2201_membuka, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2201_membuka, id FROM items WHERE character = '皮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2202_brokat, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2202_brokat, id FROM items WHERE character = '白' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2202_brokat, id FROM items WHERE character = '巾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2204_kelebihan, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2204_kelebihan, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2204_kelebihan, id FROM items WHERE character = '刂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2205_serat, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2205_serat, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2205_serat, id FROM items WHERE character = '业' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2205_serat, id FROM items WHERE character = '戈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2206_menegur, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2206_menegur, id FROM items WHERE character = '/radicals/death-star.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2207_bencana, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2207_bencana, id FROM items WHERE character = 'ム' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2207_bencana, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2207_bencana, id FROM items WHERE character = '彡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2208_menindas, id FROM items WHERE character = '虍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2208_menindas, id FROM items WHERE character = 'ヨ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2209_memasang, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2209_memasang, id FROM items WHERE character = '尸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2209_memasang, id FROM items WHERE character = '古' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2210_dengan_lembut, id FROM items WHERE character = '彳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2210_dengan_lembut, id FROM items WHERE character = '余' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2211_papan, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2211_papan, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2211_papan, id FROM items WHERE character = '合' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2212_kegelapan, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2212_kegelapan, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2212_kegelapan, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2212_kegelapan, id FROM items WHERE character = '豕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2213_karper, id FROM items WHERE character = '魚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2213_karper, id FROM items WHERE character = '里' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2214_menerima, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2214_menerima, id FROM items WHERE character = '戈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2214_menerima, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2214_menerima, id FROM items WHERE character = '共' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2215_kirmizi, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2215_kirmizi, id FROM items WHERE character = '非' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2216_fajar, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2216_fajar, id FROM items WHERE character = '罒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2216_fajar, id FROM items WHERE character = '者' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2217_barbar, id FROM items WHERE character = '古' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2217_barbar, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2218_melon, id FROM items WHERE character = '瓜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2219_komandan, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2219_komandan, id FROM items WHERE character = '㠯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2219_komandan, id FROM items WHERE character = '巾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2220_mencerahkan, id FROM items WHERE character = '戸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2220_mencerahkan, id FROM items WHERE character = '夂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2220_mencerahkan, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2221_semacam_tumbuhan, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2221_semacam_tumbuhan, id FROM items WHERE character = '癶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2221_semacam_tumbuhan, id FROM items WHERE character = '天' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2222_kecepatan, id FROM items WHERE character = '馬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2222_kecepatan, id FROM items WHERE character = '夋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2223_memahami, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2223_memahami, id FROM items WHERE character = '京' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2224_melati, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2224_melati, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2224_melati, id FROM items WHERE character = '刂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7958_dermatologi, id FROM items WHERE character = '皮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7958_dermatologi, id FROM items WHERE character = '膚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7958_dermatologi, id FROM items WHERE character = '科' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7959_penyakit_kulit, id FROM items WHERE character = '皮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7959_penyakit_kulit, id FROM items WHERE character = '膚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7959_penyakit_kulit, id FROM items WHERE character = '病' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7960_kerah, id FROM items WHERE character = '襟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7960_kerah, id FROM items WHERE character = '元' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7961_syal, id FROM items WHERE character = '襟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7961_syal, id FROM items WHERE character = '巻' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7963_rajin, k_2195_berwarna_karat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7963_rajin, id FROM items WHERE character = '念' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7964_ratifikasi, id FROM items WHERE character = '批' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7964_ratifikasi, id FROM items WHERE character = '准' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7965_kelebihan, id FROM items WHERE character = '過' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7965_kelebihan, k_2204_kelebihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7966_berulang, id FROM items WHERE character = '余' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7966_berulang, k_2204_kelebihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7967_kelebihan, k_2204_kelebihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7967_kelebihan, id FROM items WHERE character = '余' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7967_kelebihan, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7968_untuk_makan, id FROM items WHERE character = '召' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7968_untuk_makan, id FROM items WHERE character = '上' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7969_wahyu, k_2220_mencerahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7969_wahyu, id FROM items WHERE character = '示' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7970_pencerahan, k_2220_mencerahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7970_pencerahan, id FROM items WHERE character = '発' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7971_pencerahan, k_2220_mencerahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7971_pencerahan, k_2212_kegelapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7972_tanah, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7972_tanah, k_2196_tanah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7973_pyongyang, id FROM items WHERE character = '平' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7973_pyongyang, k_2196_tanah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7974_toleransi, k_2190_toleransi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7974_toleransi, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7975_toleransi, k_2190_toleransi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7975_toleransi, id FROM items WHERE character = '容' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7976_untuk_bersantai, k_2190_toleransi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7977_jenderal_angkatan_darat, id FROM items WHERE character = '元' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7977_jenderal_angkatan_darat, k_2219_komandan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7978_komandan, id FROM items WHERE character = '総' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7978_komandan, k_2219_komandan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7979_komando_tertinggi, id FROM items WHERE character = '統' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7979_komando_tertinggi, k_2219_komandan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7980_berjalan_perlahan, k_2210_dengan_lembut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7980_berjalan_perlahan, id FROM items WHERE character = '行' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7981_perlahan_lahan, k_2210_dengan_lembut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7981_perlahan_lahan, id FROM items WHERE character = '々' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7982_bencana, k_2207_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7982_bencana, id FROM items WHERE character = '事' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7983_bencana, id FROM items WHERE character = '悲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7983_bencana, k_2207_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7984_menderita, k_2207_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7985_kegagalan_penghancuran, k_2207_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7985_kegagalan_penghancuran, id FROM items WHERE character = '敗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7986_adegan_bencana, k_2207_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7986_adegan_bencana, id FROM items WHERE character = '状' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7987_pengumuman, k_2201_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7987_pengumuman, id FROM items WHERE character = '露' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7988_untuk_mendapatkan_antara, id FROM items WHERE character = '挟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7989_untuk_menginstal, k_2209_memasang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7990_dibangun_di, k_2211_papan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7990_dibangun_di, id FROM items WHERE character = '載' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7991_asrama, k_2211_papan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7991_asrama, id FROM items WHERE character = '乗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7992_fajar, k_2216_fajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7993_pohon_mati, id FROM items WHERE character = '枯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7993_pohon_mati, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7994_membiarkan_layu, id FROM items WHERE character = '枯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7995_untuk_merebus, id FROM items WHERE character = '沸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7996_mendidih, id FROM items WHERE character = '沸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7996_mendidih, k_2198_inflasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7997_pemurnian_diri, id FROM items WHERE character = '自' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7997_pemurnian_diri, k_2192_membersihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7998_pemurnian, k_2192_membersihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7998_pemurnian, id FROM items WHERE character = '化' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7999_tanah_suci, k_2192_membersihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7999_tanah_suci, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8000_kenajisan, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8000_kenajisan, k_2192_membersihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8001_air_bersih, k_2192_membersihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8001_air_bersih, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8002_murni, id FROM items WHERE character = '清' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8002_murni, k_2192_membersihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8003_pencucian, id FROM items WHERE character = '洗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8003_pencucian, k_2192_membersihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8004_pusaran_air, id FROM items WHERE character = '渦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8004_pusaran_air, id FROM items WHERE character = '巻' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8005_pakar, id FROM items WHERE character = '玄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8005_pakar, id FROM items WHERE character = '人' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8006_melon, k_2218_melon);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8007_semangka, id FROM items WHERE character = '西' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8007_semangka, k_2218_melon);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8008_naskah, id FROM items WHERE character = '原' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8008_naskah, k_2194_draf);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8009_catatan, id FROM items WHERE character = '草' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8009_catatan, k_2194_draf);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8010_penyerahan, id FROM items WHERE character = '投' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8010_penyerahan, k_2194_draf);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8011_biaya_naskah, k_2194_draf);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8011_biaya_naskah, id FROM items WHERE character = '料' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8012_lintang, k_2199_lintang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8012_lintang, id FROM items WHERE character = '度' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8013_lintang_selatan, id FROM items WHERE character = '南' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8013_lintang_selatan, k_2199_lintang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8014_lintang_utara, id FROM items WHERE character = '北' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8014_lintang_utara, k_2199_lintang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8015_detail, id FROM items WHERE character = '経' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8015_detail, k_2199_lintang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8016_paralel, k_2199_lintang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8016_paralel, id FROM items WHERE character = '線' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8017_serat_sintetis, id FROM items WHERE character = '化' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8017_serat_sintetis, k_2205_serat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8018_serat, k_2205_serat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8018_serat, id FROM items WHERE character = '維' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8019_serat_sintetis, id FROM items WHERE character = '合' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8019_serat_sintetis, k_2205_serat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8020_halus, k_2205_serat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8020_halus, id FROM items WHERE character = '細' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8021_untuk_mengangguk, id FROM items WHERE character = '肯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8022_spora, k_2191_sel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8022_spora, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8023_sel, id FROM items WHERE character = '細' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8023_sel, k_2191_sel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8024_saudara_saudara, id FROM items WHERE character = '同' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8024_saudara_saudara, k_2191_sel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8025_duduk_bersila, k_2217_barbar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8025_duduk_bersila, id FROM items WHERE character = '座' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8026_timun, k_2217_barbar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8026_timun, k_2218_melon);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8027_daging_gemuk, id FROM items WHERE character = '脂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8027_daging_gemuk, id FROM items WHERE character = '身' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8028_toko, k_2197_toko);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8029_toko, id FROM items WHERE character = '店' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8029_toko, k_2197_toko);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8030_trotoar, k_2197_toko);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8030_trotoar, id FROM items WHERE character = '装' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8031_kantor_pusat, id FROM items WHERE character = '本' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8031_kantor_pusat, k_2197_toko);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8032_kapal_militer, id FROM items WHERE character = '艦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8032_kapal_militer, k_2200_perahu_dayung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8033_lomba_perahu, id FROM items WHERE character = '競' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8033_lomba_perahu, k_2200_perahu_dayung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8034_bibit, id FROM items WHERE character = '苗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8034_bibit, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8035_pembibitan, id FROM items WHERE character = '苗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8035_pembibitan, id FROM items WHERE character = '床' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8036_semacam_tumbuhan, k_2221_semacam_tumbuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8037_mongolia, k_2212_kegelapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8037_mongolia, id FROM items WHERE character = '古' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8038_akar_teratai, id FROM items WHERE character = '蓮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8038_akar_teratai, id FROM items WHERE character = '根' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8039_kekejaman, k_2208_menindas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8039_kekejaman, id FROM items WHERE character = '殺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8040_melecehkan, k_2208_menindas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8040_melecehkan, id FROM items WHERE character = '待' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8041_kekejaman, id FROM items WHERE character = '残' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8041_kekejaman, k_2208_menindas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8042_kezaliman, id FROM items WHERE character = '暴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8042_kezaliman, k_2208_menindas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8043_untuk_menindas, k_2208_menindas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8044_untuk_menegur, k_2206_menegur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8045_guru, id FROM items WHERE character = '教' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8045_guru, k_2206_menegur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8047_brokat, k_2202_brokat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8048_ikan_mas_berwarna, k_2202_brokat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8048_ikan_mas_berwarna, k_2213_karper);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8049_kapan_saja, k_2193_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8049_kapan_saja, id FROM items WHERE character = '時' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8050_di_mana_pun, k_2193_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8050_di_mana_pun, id FROM items WHERE character = '所' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8051_esai, k_2193_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8051_esai, id FROM items WHERE character = '筆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8052_sangat, k_2193_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8052_sangat, id FROM items WHERE character = '分' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8053_mengikuti, id FROM items WHERE character = '追' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8053_mengikuti, k_2193_semua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8054_puncak, id FROM items WHERE character = '頂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8055_menerima_dengan_rendah_hati, id FROM items WHERE character = '頂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8055_menerima_dengan_rendah_hati, k_2214_menerima);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8056_lonjakan_harga_tiba_tiba, id FROM items WHERE character = '高' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8056_lonjakan_harga_tiba_tiba, k_2198_inflasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8057_kenaikan_tiba_tiba, id FROM items WHERE character = '暴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8057_kenaikan_tiba_tiba, k_2198_inflasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8058_kenaikan_tiba_tiba, id FROM items WHERE character = '急' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8058_kenaikan_tiba_tiba, k_2198_inflasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8059_karper, k_2213_karper);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8060_ikan_mas_merah, k_2215_kirmizi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8060_ikan_mas_merah, k_2213_karper);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8061_ikan_mas_hitam, id FROM items WHERE character = '真' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8061_ikan_mas_hitam, k_2213_karper);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9103_ryoichiro, k_2223_memahami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9103_ryoichiro, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9103_ryoichiro, id FROM items WHERE character = '郎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9104_riko, k_2224_melati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9104_riko, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9105_kuda_cepat, k_2222_kecepatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9105_kuda_cepat, id FROM items WHERE character = '馬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9316_shiso, id FROM items WHERE character = '紫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9316_shiso, id FROM items WHERE character = '蘇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9400_permaisuri_kerajaan, id FROM items WHERE character = '妃' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9406_lembut, id FROM items WHERE character = '軟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9461_pria_jantan, id FROM items WHERE character = '漢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9481_bekerja_dengan_sungguh_sungguh, k_2195_berwarna_karat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9481_bekerja_dengan_sungguh_sungguh, id FROM items WHERE character = '精' LIMIT 1;

END $$;