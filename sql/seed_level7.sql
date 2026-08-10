-- ====================================================
-- KaniGani — Seed Data Level 7 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 7) ============
  r_127_kotak UUID; r_142_kekurangan UUID; r_145_perangko UUID; r_146_suami UUID; r_147_klan UUID; r_149_kapal UUID; r_150_ikan UUID; r_151_burung UUID; r_152_kuning UUID; r_153_hitam UUID; r_169_lingkar UUID; r_173_sayap UUID; r_177_meja UUID; r_192_kuil UUID; r_214_gerbang UUID; r_228_diri UUID; r_361_selatan UUID; r_418_guru UUID; r_419_topi_atas UUID; r_8823_gajah UUID;

  -- ============ KANJI IDs (Level 7) ============
  k_629_gambar UUID; k_634_selatan UUID; k_646_kekurangan UUID; k_647_nama_keluarga UUID; k_648_alasan UUID; k_649_tagihan UUID; k_650_masyarakat UUID; k_651_daerah UUID; k_652_menempel UUID; k_653_dari UUID; k_654_kesalahan UUID; k_655_yakin UUID; k_656_belum UUID; k_657_akhir UUID; k_658_sekolah UUID; k_659_musim_panas UUID; k_661_lemah UUID; k_662_waktu UUID; k_663_kertas UUID; k_664_tuliskan UUID; k_665_melewati UUID; k_666_tinggi UUID; k_667_kuat UUID; k_668_mengajar UUID; k_669_alasan UUID; k_670_kelompok UUID; k_671_kapal UUID; k_672_pekan UUID; k_673_salju UUID; k_674_ikan UUID; k_675_burung UUID; k_676_kuning UUID; k_677_hitam UUID; k_853_angin UUID; k_893_mencerminkan UUID; k_1237_gajah UUID; k_1810_lantai UUID;

  -- ============ VOCABULARY IDs (Level 7) ============
  v_2599_untuk_membagi_sesuatu UUID; v_2621_kakak UUID; v_2720_untuk_pengganti UUID; v_2764_pikiran UUID; v_2766_cara_berpikir UUID; v_2822_membentuk UUID; v_2910_selatan UUID; v_2927_kekurangan UUID; v_2928_tuan UUID; v_2929_nama_lengkap UUID; v_2930_kebebasan UUID; v_2931_alasan UUID; v_2932_tagihan UUID; v_2933_uang_seribu_yen UUID; v_2934_rakyat UUID; v_2936_di_sekitar_sini UUID; v_2937_untuk_melampirkan_sesuatu UUID; v_2938_selain_daripada UUID; v_2939_tidak_kurang_dari UUID; v_2940_sebelumnya UUID; v_2941_kalah UUID; v_2942_kasar UUID; v_2943_pasti UUID; v_2944_panik UUID; v_2946_masa_depan UUID; v_2947_akhir UUID; v_2948_akhir_tahun UUID; v_2949_akhir_bulan UUID; v_2950_sekolah_menengah_atas UUID; v_2951_sekolah UUID; v_2952_musim_panas UUID; v_2953_liburan_musim_panas UUID; v_2956_lemah UUID; v_2957_titik_lemah UUID; v_2958_waktu UUID; v_2959_jam_satu UUID; v_2960_dua_tiga_puluh UUID; v_2961_jam_berapa UUID; v_2962_waktu_yang_sama UUID; v_2963_kertas UUID; v_2964_surat UUID; v_2965_buku_harian UUID; v_2967_lalu_lintas UUID; v_2968_tinggi UUID; v_2969_kuat UUID; v_2970_kuat UUID; v_2971_untuk_mengajar UUID; v_2972_kelas UUID; v_2973_psikologi UUID; v_2974_geografi UUID; v_2975_kelompok UUID; v_2976_kapal UUID; v_2977_balon UUID; v_2978_minggu_lalu UUID; v_2979_minggu_ini UUID; v_2980_akhir_pekan UUID; v_2981_salju UUID; v_2982_ikan UUID; v_2983_ikan_mas UUID; v_2985_burung UUID; v_2986_angsa UUID; v_2987_kuning UUID; v_2988_hitam UUID; v_2989_orang_kulit_hitam UUID; v_3420_boneka UUID; v_3422_buatan_tangan UUID; v_3425_angin UUID; v_3432_pintu_keluar_selatan UUID; v_3436_mahasiswa_universitas UUID; v_3437_cara_mengatakan UUID; v_3438_tiba_di_depan UUID; v_3447_dalam_waktu_dekat UUID; v_3448_langit_biru UUID; v_3449_siswa_sekolah_dasar UUID; v_3450_cara_membuat UUID; v_3451_siswa_sekolah_menengah UUID; v_3452_tidak_populer UUID; v_3595_film UUID; v_3709_keadaan_mental UUID; v_4070_untuk_memotong UUID; v_4071_untuk_mengambil UUID; v_4721_gajah UUID; v_4849_periode UUID; v_4877_benar_benar UUID; v_5717_masyarakat UUID; v_5934_besok UUID; v_6237_distrik_sebuah_kota UUID; v_6579_lantai UUID; v_7461_jam UUID; v_7528_secara_besar UUID; v_7529_di_dekat UUID; v_7567_topan UUID; v_7622_lambung_kapal UUID; v_7675_nomor_kamar UUID; v_7676_langit UUID; v_7677_untuk_ditemukan UUID; v_7678_segi_tiga UUID; v_7679_bentuk_terkonjugasi UUID; v_7734_sial UUID; v_7735_suara_rendah UUID; v_8662_neptunus UUID; v_8663_tidak_lebih_dari UUID; v_8695_penduduk_kota UUID; v_8698_minggu_depan UUID; v_8738_untuk_bersinar UUID; v_8801_setelah_ini UUID; v_8896_satu_roti UUID; v_8897_dua_roti UUID; v_9010_mars UUID; v_9011_jupiter UUID; v_9042_tempat_tinggal_manusia UUID; v_9070_menit UUID; v_9159_napoleon_yang_ketiga UUID; v_9241_tahun_baru UUID; v_9278_sistem UUID; v_9333_ikan_air_asin UUID; v_9350_negara_utara UUID; v_9356_matahari_sore UUID; v_9357_asia_timur UUID; v_9375_sampai_fajar UUID; v_9497_kotamadya UUID; v_9501_lingkungan UUID;

BEGIN

  DELETE FROM items WHERE level = 7;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '凵', 'kotak', 7, 1, '<radikal>kotak</radikal> ini terbuka. Mungkin ada banyak hal di dalamnya, tetapi untuk saat ini yang perlu Anda ketahui hanyalah arti dari kata radikal ini, yaitu kotak.')
    RETURNING id INTO r_127_kotak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '欠', 'kekurangan', 7, 2, 'Radikal penjara (yang dimodifikasi) berisi orang radikal. Apa yang dialami seseorang di penjara? <radikal>Kekurangan</radikal>. Penjara adalah tentang kekurangan – kurangnya kebebasan, kurangnya kenyamanan rumah, kurangnya privasi, kurangnya percakapan. Yap, kehidupan seseorang di penjara ditentukan oleh kekurangannya.')
    RETURNING id INTO r_142_kekurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '卩', 'perangko', 7, 3, 'Ini adalah <radikal>prangko</radikal> radikal — jenis tinta, bukan jenis prangko. Mengapa? Karena bentuknya seperti stempel! Bagian atasnya lebih tebal di satu sisi sehingga Anda bisa memegangnya dengan baik. Bahkan terlihat seperti huruf P — yang kebetulan merupakan huruf terakhir dalam "stempel"!')
    RETURNING id INTO r_145_perangko;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '夫', 'suami', 7, 4, 'Kaum radikal yang mendasar dan besar membentuk radikal ini. Ada pria besar di tanah... siapa pria besar itu? Yang memalukan, itu adalah <radical>suami</radical> Anda. Rasakan rasa malu karena dia terjatuh ke tanah. Naik apa? Siapa? Bagaimana? (Tidak masalah.)

Namun, jangan bingung membedakannya dengan 未 (jet). Lihat bagaimana 未 memiliki ekor kecil di bagian akhir? Itu karena jet dan pesawat lain punya ekor, sedangkan suami tidak. Setidaknya aku berharap milikmu tidak.')
    RETURNING id INTO r_146_suami;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '氏', 'klan', 7, 5, 'Di bawah tebing, Anda melihat sebuah salib, agak miring. Salib tersebut ada untuk menandai <radikal>klan</radikal> terkenal yang pernah menguasai tanah di bawah tebing. Ini adalah salib yang cukup unik, jadi setiap kali Anda melihatnya di bawah tebing, Anda akan tahu bahwa itu menghormati klan yang tinggal di sana.')
    RETURNING id INTO r_147_klan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '舟', 'kapal', 7, 6, 'Ini terlihat seperti <radical>perahu</radical> yang datang ke arah Anda di dalam air. Lihat layar mengepul di atas dan pantulan di air? Ya, itu perahu. Perahu paling berperahu yang pernah berperahu.')
    RETURNING id INTO r_149_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '魚', 'ikan', 7, 7, 'Ini adalah <radikal>ikan</radikal>. Jenis ikan yang tampak lucu, dengan kepala aneh di atas, tubuh jongkok bersisik, dan ekor menyebar di bawahnya. Lihat ikannya? Ya, Anda melihatnya.')
    RETURNING id INTO r_150_ikan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '鳥', 'burung', 7, 8, 'Lihat sayap keren di bawah? Lihat kepala dengan bulu rapi keluar dari atasnya? Ini adalah <radikal>burung</radikal>. Tweet tweet!')
    RETURNING id INTO r_151_burung;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '黄', 'kuning', 7, 9, 'Bunga yang tumbuh dari tanah sawah setelah Anda mengubur sirip di sana akan tumbuh <radikal>kuning</radikal>. Mengapa? Karena kuning adalah warna jiwa ikan, maka menanam bunga di atas siripnya akan mengubahnya menjadi kuning yang bagus dan cantik.')
    RETURNING id INTO r_152_kuning;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '黒', 'hitam', 7, 10, 'Jika Anda merebus sebuah desa, semuanya akan menjadi <radikal>hitam</radikal>. Bayangkan saja semua jalan itu meleleh dan melapisi segala sesuatunya dengan aspal hitam. Bayangkan! Sepertinya Pompeii. (Oof, terlalu cepat?)')
    RETURNING id INTO r_153_hitam;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '周', 'lingkar', 7, 11, 'Anda mengambil kepala Anda dan mengemas tanah liat di sekitarnya hingga tepat di atas mulut Anda. Anda memerlukan <radikal>lingkar</radikal> kepala Anda untuk pembuat helm Anda, dan mengirimi mereka cetakan kepala Anda dari tanah liat sudah cukup. Dengan begitu mereka akan mengetahui lingkar kepala Anda secara pasti!')
    RETURNING id INTO r_169_lingkar;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '勿', 'sayap', 7, 12, 'Lihat <radical>sayap</radical>? Ini seperti sayap kelelawar dengan anyaman. Bagaimanapun, itu hanyalah sebuah sayap.')
    RETURNING id INTO r_173_sayap;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '几', 'meja', 7, 13, 'Apa yang terjadi jika Anda meletakkan permukaan datar di atas sepasang kaki? Anda mendapatkan <radical>tabel</radical>.')
    RETURNING id INTO r_177_meja;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '寺', 'kuil', 7, 14, 'Radikal ini terlihat seperti <radical>kuil</radikal>, bukan? Dengan semua lapisan dan sebagainya? Bayangkan saja bagian atasnya sebagai atap, dan bagian bawahnya yang terlihat seperti tetesan air sebagai lonceng kuil raksasa, dengan seorang biksu berdiri di sampingnya dan melingkarinya dengan balok kayu besar. Anda melihat hal seperti ini setiap hari di kuil.')
    RETURNING id INTO r_192_kuil;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '門', 'gerbang', 7, 15, 'Radikal ini sudah terlihat seperti <radical>gerbang</radikal>, bukan? Sebuah gerbang tinggi dengan pilar di kedua sisinya dan dua pintu gerbang kecil, naik ke atas karena suatu alasan. Gerbang terburuk yang pernah ada dalam hal keamanan, tapi yang pasti tetap sebuah gerbang.')
    RETURNING id INTO r_214_gerbang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '己', 'diri', 7, 16, 'Ini terlihat seperti kepala dengan lengan di bawahnya mengarah ke atas. Itu sebabnya radikal ini berarti <radikal>diri sendiri</radikal>. Seseorang menunjuk pada dirinya sendiri ketika ia ingin… menunjukkan dirinya…')
    RETURNING id INTO r_228_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '南', 'selatan', 7, 17, 'Ini adalah kata radikal untuk <radikal>selatan</radikal>. Lihat bagaimana arahnya mengarah ke selatan? Anda dapat membayangkan salib di atas sebagai kompas, dan panah di bawah (bagian yang tampak ¥) menunjuk ke selatan. Itu adalah kompas yang tidak menunjuk ke mana pun kecuali ke selatan!')
    RETURNING id INTO r_361_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '孝', 'guru', 7, 18, 'Siapa yang ada di peti mati di sebelah anak itu? Itu adalah <radikal>gurunya</radikal>. Guru-guru hampir meninggal sekitar jam 3 sore. setiap hari, dan anak-anak di kelaslah yang memakainya. Menjadi guru itu tidak mudah lho.')
    RETURNING id INTO r_418_guru;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '且', 'topi-atas', 7, 19, 'Radikal ini tampak seperti topi tinggi. Itulah mengapa ini <radical>top hat</radical>!')
    RETURNING id INTO r_419_topi_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '象', 'gajah', 7, 20, 'Ini adalah <radikal>gajah</radikal> — atau setidaknya, calon gajah. Perhatikan baik-baik. Ini sebenarnya adalah keluarga babi, dan sang mama memakai topeng gajah di kepalanya karena suatu alasan. Lihat telinga besar dan belalai di atasnya? Dia sangat ingin menjadi gajah sehingga dia berdandan seperti gajah.')
    RETURNING id INTO r_8823_gajah;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_127_kotak, 'Kotak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_142_kekurangan, 'Kekurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_145_perangko, 'Perangko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_146_suami, 'Suami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_147_klan, 'Klan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_149_kapal, 'Kapal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_150_ikan, 'Ikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_151_burung, 'Burung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_152_kuning, 'Kuning', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_153_hitam, 'Hitam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_169_lingkar, 'Lingkar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_173_sayap, 'Sayap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_177_meja, 'Meja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_192_kuil, 'Kuil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_214_gerbang, 'Gerbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_228_diri, 'Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_361_selatan, 'Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_418_guru, 'Guru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_419_topi_atas, 'Topi Atas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8823_gajah, 'Gajah', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '画', 'gambar', 7, 21, 'Anda menyusuri <radical>jalan</radical> yang membelah <radical>sawah</radical> dan mengarah ke <radical>kotak</radical>. Saat Anda membuka kotak di ujung jalan, Anda melihat kotak itu penuh dengan <kanji>gambar</kanji>. Gambar demi gambar. <kanji>Menggambar</kanji>, <kanji>melukis</kanji>, sebut saja. Seseorang pasti meninggalkan kotak gambar ini di sini.', 'Oke, saya tidak ingin memberi tahu Anda hal ini, tapi <kanji>gambar</kanji> semuanya adalah <kanji>gambar</kanji> dan <kanji>lukisan</kanji> dari <reading>ga</reading>rgoyles (が) dan <reading>ayam</reading> (かく). Ayam jantan, itu. Ternyata itulah yang paling ingin Anda lihat. Jangan khawatir, tidak ada yang menghakimi Anda.')
    RETURNING id INTO k_629_gambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '南', 'selatan', 7, 22, 'Anda pernah melihat ini sebagai kata radikal sebelumnya, dan kanji memiliki arti yang sama — <kanji>selatan</kanji>!', 'Pikirkan tentang <kanji>selatan</kanji>. Ada apa di bawah sana? <read>Amy yang jahat</reading> (みなみ) tinggal di bawah sana. Pikirkan tindakan kejam terakhir yang dia lakukan terhadap Anda dan bayangkan itu sambil berteriak "MAKNA AMYYYYY" ke langit.')
    RETURNING id INTO k_634_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '欠', 'kekurangan', 7, 23, 'Kanji ini sama dengan kanji radikal asalnya. <radical>Kekurangan</radikal> menjadi <kanji>Kekurangan</kanji>!', 'Untuk mengingat けつ, kami menggunakan kata "ketsup". Ini perpaduan sempurna antara saus tomat dan saus tomat!

Anda <kanji>kekurangan</kanji>sesuatu di lemari es Anda. Anda melihat sekeliling, mencoba menemukan <reading>ketsu</reading>p (けつ) yang Anda kurang. Anda tidak dapat menemukannya, karena Anda kekurangannya.')
    RETURNING id INTO k_646_kekurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '氏', 'nama-keluarga', 7, 24, '<radical>klan</radikal> Anda adalah tempat Anda mendapatkan nama Anda. Namun bukan nama asli Anda, melainkan <kanji>nama keluarga</kanji> Anda. Itu sebabnya orang mempunyai nama yang berarti "di sawah" dan "dekat penyeberangan feri". Lokasi klan Anda menentukan <kanji>nama belakang</kanji> Anda! Semoga nenek moyangmu tidak tinggal di "Danau Poo" atau semacamnya.', 'Jangan khawatir, saya akan memberi tahu Anda dari mana <kanji>nama keluarga</kanji> Anda berasal. Keluargamu biasa menggiring <reading>shee</reading>p (し). Anda tidak salah baca, keluarga Anda berasal dari klan domba karena Anda memelihara domba sepanjang hari.')
    RETURNING id INTO k_647_nama_keluarga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '由', 'alasan', 7, 25, 'Sebuah <radical>salib</radikal> raksasa dengan <radikal>mulut</radikal> berdiri di atas Anda. "Akulah <kanji>alasan</kanji>!" itu tertulis padamu. Itu adalah Salib Nalar.', '<kanji>alasan</kanji> keberadaan Cross of Reason ini adalah untuk memerangi <reading>kalian</reading>dunia, yang hanya membawa kekacauan dalam segala hal.')
    RETURNING id INTO k_648_alasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '札', 'tagihan', 7, 26, '<radical>Pohon</radical> ini memiliki <radical>payung</radical> yang dipegang di atas kepalanya. Aneh, karena pohon biasanya suka air… Ternyata, pohon ini tidak disiram air, melainkan uang <kanji>dolar</kanji>.', 'Dan orang yang memberi pohon itu payung untuk melindunginya dari semua <kanji>tagihan</kanji> itu? <read>Satsu</reading>ki (さつ), seorang gadis kecil yang terkenal karena… membagikan payung, kurasa. Masuk akal kalau Satsuki akan mengurus tagihan ini.')
    RETURNING id INTO k_649_tagihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '民', 'masyarakat', 7, 27, '<radical>mulut</radikal> <radikal>klan</radikal> adalah sekelompok <kanji>orang</kanji>. Mereka adalah <kanji>rakyat</kanji> dari sebuah <kanji>bangsa</kanji>.', '<kanji>masyarakat</kanji> klan mulut adalah <kanji>bangsa</kanji> yang terdiri dari <kanji>orang</kanji> yang menggunakan mulut mereka untuk mengatakan hal-hal yang <membaca>jahat</reading> (みん) kepada orang lain.')
    RETURNING id INTO k_650_masyarakat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '辺', 'daerah', 7, 28, 'Saat mengendarai <radical>skuter</radical>, ambil <radical>pedang</radical> dan potong <kanji>area</kanji> di tanah.  Anda dengan hati-hati memotong semua <kanji>sisi</kanji> saat melakukannya. Area ini milikmu sekarang!', 'Saat Anda melihat <kanji>area</kanji> Anda dengan <kanji>sisi</kanji> yang diukir pedang, Anda tiba-tiba menyadari ada <reading>ayam</reading> (へん) sedang mematuk tanah di sana. "Um, permisi hen, aku yakin aku bilang ini wilayahKU?!" Anda mencoba menendangnya, tetapi ia melompati kaki Anda.')
    RETURNING id INTO k_651_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '付', 'menempel', 7, 29, 'Saat Anda melakukan <radical>pengukuran</radikal> <radical>pemimpin</radikal> Anda, Anda menyadari bahwa pengukuran tersebut terlalu pendek, jadi Anda <kanji>melampirkan</kanji> sesuatu ke pengukuran tersebut untuk membuat pengukurannya lebih mengesankan. Pasangkan beberapa tumit ke sepatu, lalu tempelkan kepala lainnya di atasnya. Di sana — pengukuran sempurna berkat lampiran ini.', 'Pembacaan kun''yomi kanji ini harus kamu ingat, dan bagian yang perlu kamu ingat adalah つ. Jadi, pikirkan bagaimana Anda <kanji>melampirkan</kanji> sesuatu ke sesuatu yang lain. Apa yang Anda perlukan? Anda memerlukan <reading>dua</reading> (つ) benda untuk disatukan!')
    RETURNING id INTO k_652_menempel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '以', 'dari', 7, 30, '<radical>singa</radical> menjatuhkan <radical>setetes</radical> air liur ke <radical>orang</radical> <kanji>dari</kanji> di atas. Orang tersebut berada di tempat yang jauh lebih buruk <kanji>dibandingkan</kanji> di mana mereka sebelumnya, <kanji>karena</kanji> mereka baru saja jatuh ke dalam lubang ini.', '<kanji>Dari</kanji> di atas terdengar suara gaok yang keras, dan seekor <reading>ea</reading>gle (い) raksasa menukik ke bawah, memaksa singa itu mundur. Elang menangkap orang tersebut dengan cakarnya, membawanya ke udara! Tapi sekarang dia... di udara dibawa oleh elang raksasa, <kanji>dibandingkan dengan</kanji> di mana dia sebelumnya, apakah ini lebih baik?!')
    RETURNING id INTO k_653_dari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '失', 'kesalahan', 7, 31, '<radical>slide</radical> itu adalah satu-satunya <kanji>kesalahan</kanji> suamimu. Dia menyukai slide itu, lebih dari Anda, dan itulah satu-satunya hal yang tidak Anda sukai darinya.', 'Anda mencoba mencari <kanji>kesalahan</kanji> lainnya sehingga Anda dapat mengeluh, ketika Anda melihat <read>shih tzu</reading> (しつ) kecil lewat. Oh tidak! Sebelum Anda dapat berteriak, suami Anda telah terjatuh dari perosotan dan meremukkan benda malang itu. Anda mendengar teriakan tajam dan kemudian tidak ada apa-apa.')
    RETURNING id INTO k_654_kesalahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '必', 'yakin', 7, 32, '<radical>jantung</radical> Anda memiliki <radical>slide</radical> yang melewatinya karena Anda ingin <kanji>yakin</kanji> bahwa darah mengalir masuk dan keluar dengan lancar. Mengingat betapa pentingnya hal ini, Anda harus benar-benar <em>yakin</em>.', 'Untuk <kanji>yakin</kanji> bahwa perosotan jantung berfungsi, dokter yang memasangnya <read>memukul</reading> (ひつ) dada Anda beberapa kali sebagai tes.')
    RETURNING id INTO k_655_yakin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '未', 'belum', 7, 33, 'Anda terbang dengan <radical>jet</radical>. Meskipun ini salah satu hal tercepat di dunia, anak Anda duduk di belakang dan bertanya, "Apakah kita sudah sampai? Apakah kita sudah sampai?" Anda harus terus merespons. "<kanji>Belum</kanji>! Belum! BELUM!"', 'Anak yang egois, bukan? Yah, yang dia pikirkan hanyalah "<reading>Aku</reading> (み) aku, aku, aku, aku, aku, aku." Benci anak-anak seperti itu.')
    RETURNING id INTO k_656_belum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '末', 'akhir', 7, 34, 'Kanji ini menggunakan radikal <radical>jet</radical> yang dimodifikasi. Area depan sayap lebih lebar dibandingkan area tengah sayap. Hal ini mungkin tampak berlawanan dengan intuisi, namun dengan melakukan hal ini mereka dapat memuat lebih banyak bahan bakar jet. Jet tersebut meluncur dengan cepat dan terus melaju dalam waktu yang sangat lama, hingga mencapai <kanji>ujung</kanji> bumi.', 'Ketika Anda sampai di <kanji>ujung</kanji> dunia, Anda mendaratkan jet Anda dan meletakkan beberapa <reading>alas</reading> (まつ) untuk diduduki sehingga Anda dapat melihat pemandangan.')
    RETURNING id INTO k_657_akhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '校', 'sekolah', 7, 35, 'Di sebelah <radical>pohon</radical>, sebuah <radical>penutup</radical> diletakkan di <radical>ayah</radical> Anda. "Halo nak," sapanya. "Ini adalah <kanji>sekolah</kanji> barumu."', '<kanji>sekolah</kanji> baru Anda juga memiliki siswa lain. Tapi semuanya adalah <read>こう</reading>いちs.')
    RETURNING id INTO k_658_sekolah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '夏', 'musim-panas', 7, 36, '<radical>daun</radical> berbentuk seperti <radical>mata</radical> hanya tumbuh di <radical>musim dingin</radical>. Namun, daun lainnya akan melakukan hal sebaliknya, yaitu tumbuh di <kanji>musim panas</kanji>.', 'Sekarang musim panas! Apa yang Anda lakukan selama <kanji>musim panas</kanji>? Anda hanya duduk-duduk sambil mengikat <reading>simpul</reading> (なつ) favorit Anda berulang kali.')
    RETURNING id INTO k_659_musim_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弱', 'lemah', 7, 37, 'Anda mempunyai dua <radical>busur</radical> tetapi keduanya tertutup <radical>es</radical>. Hal ini membuat mereka sangat <kanji>lemah</kanji>.', 'Anda membawa busur ke mobil Anda, yang terjebak di tumpukan es dan salju, dan mencoba menggunakannya sebagai semacam <kanji>lemah</kanji> <reading>jack</reading> (じゃく). Anda tahu, untuk melepaskan mobil Anda dari kemacetan. Sayangnya, busur Anda terlalu lemah dan rapuh untuk digunakan sebagai dongkrak, dan busurnya patah menjadi dua.')
    RETURNING id INTO k_661_lemah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '時', 'waktu', 7, 38, '<radical>matahari</radikal> digunakan dalam <radical>kuil</radikal> untuk memberitahukan <kanji>waktu</kanji>. Mereka tidak punya jam atau ponsel, mereka punya jam matahari dan gaya kuno yang bagus untuk "melihat ke atas dan melihat di mana matahari berada saat ini".

Ini juga bisa berarti <kanji>jam</kanji>, seperti dalam "jam lima" Ini digunakan untuk mengukur waktu dalam bahasa Jepang.', '<kanji>Waktu</kanji> di kuil membuatmu teringat pada <reading>Je</reading>sus (じ). Secara khusus, Yesus mampu melakukan sihir penjelajahan waktu. Dia mengedipkan mata padamu, kembali ke zaman dinosaurus, saat dia bergulat dengan T-rex. Kemudian, dia pergi ke era Perang Dunia II dan meninju mulut Hitler.')
    RETURNING id INTO k_662_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紙', 'kertas', 7, 39, '<radical>utas</radikal> yang mengikat Anda dengan <radical>klan</radikal> Anda adalah <kanji>kertas</kanji>. Surat-suratmu, itu.', 'Anda memerlukan <kanji>kertas</kanji> khusus ini untuk membuktikan bahwa Anda bukan seorang <reading>Commi</reading> (かみ), alias seorang Komunis. Atau itu kamu. Itu sangat tergantung pada ke mana Anda ingin pergi dan pada dekade apa saat ini.')
    RETURNING id INTO k_663_kertas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '記', 'tuliskan', 7, 40, 'Apa yang Anda <radikal>katakan</radikal> kepada <radikal>diri sendiri</radikal> (diri Anda sendiri), Anda putuskan untuk <kanji>menulis</kanji>. Baik dalam bentuk jurnal, buku harian, atau blog, Anda merasa perlu <kanji>mencatat</kanji> pemikiran penting ini dengan cara tertentu.', 'Anda perlu melindungi apa yang Anda <kanji>tulis</kanji> dan <kanji>rekam</kanji> untuk diri Anda sendiri dengan <reading>key</reading> (き). Ini adalah pemikiran dan perasaan khusus Anda, Anda tidak ingin orang lain melihatnya! Kunci mereka dengan kunci!')
    RETURNING id INTO k_664_tuliskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '通', 'melewati', 7, 41, 'Ada <radical>skuter</radical> bersama <radical>mama</radical> Anda yang membawa <radical>tugas</radical> yang harus dia selesaikan. Anda melihatnya <kanji>melewati</kanji>, bergegas untuk menyelesaikan tugas itu.', 'Saat kamu melihat ibumu <kanji>melewati</kanji> rumah, dia berteriak, "KAMU HARUS MELAKUKAN TUGAS INI <membaca>TERLALU</reading> (つう)!" Juga?! Oh tidak, sekarang kamu harus melakukannya juga. Ayo cepat!')
    RETURNING id INTO k_665_melewati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '高', 'tinggi', 7, 42, 'Ada <radical>penutup</radikal> di <radikal>mulut</radikal> dan <radikal>kumis</radikal> Anda, yang menutupi semua lubang bicara Anda. Ini karena kamu terus mengatakan betapa <kanji>tinggi</kanji> dan <kanji>mahal</kanji> kamu.', '"Aku <kanji>lebih tinggi</kanji> dan lebih <kanji>mahal</kanji> darimu." 

Anda mengatakan ini karena ada beberapa <reading>こう</reading> di dalam ruangan, dan Anda ingin membuat mereka merasa rendah diri (Anda adalah pembenci こういち). Anda terus membandingkan tinggi badan Anda dengan orang-orang di ruangan itu, dan Anda terus memeriksa label harga. Lalu Anda memberi tahu mereka bahwa Anda lebih tinggi dan lebih mahal daripada mereka.')
    RETURNING id INTO k_666_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '強', 'kuat', 7, 43, 'Anda menjaga <radical>busur</radical> <radical>pribadi</radical> Anda karena terbuat dari <radical>serangga</radical>, artinya busur itu sangat <kanji>kuat</kanji>. Tubuh serangga sangat tahan lama, sehingga menghasilkan busur yang sangat kuat. Itu sebabnya Anda harus merahasiakan hal ini - ini terlalu kuat untuk diketahui orang lain.', 'Busur <kanji>kuat</kanji> ini dibuat khusus untukmu di <reading>きょう</reading>と. きょうと terkenal dengan busurnya yang kuat, jadi jika Anda menginginkan yang lain, Anda tahu ke mana harus pergi.')
    RETURNING id INTO k_667_kuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '教', 'mengajar', 7, 44, 'Seorang <radical>guru</radical> di <radical>musim dingin</radical> paling bahagia karena mereka bisa <kanji>mengajar</kanji>! Anak-anak tidak bisa keluar dan bermain karena terlalu dingin. Mereka semua harus masuk dan tetap hangat saat guru mengajar!', 'Guru dapat mengajarkan banyak hal tentang Jepang di musim dingin dengan mengunjungi <reading>きょう</reading>と. きょうと adalah tempat semua kuil tua dan sejarah Jepang berpusat. Dan sungguh indah saat turun salju.')
    RETURNING id INTO k_668_mengajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '理', 'alasan', 7, 45, '<radikal>desa</radikal> raja adalah <kanji>alasan</kanji> dia menjadi raja. Tanpa desa, tidak ada alasan untuk mempunyai raja.', 'Anda tidak dapat memiliki <kanji>alasan</kanji> tanpa <reading>re</reading> (り).')
    RETURNING id INTO k_669_alasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '組', 'kelompok', 7, 46, 'Jahit <radical>benang</radikal> melalui <radical>topi</radical> Anda dan ke topi atas orang lain yang Anda kenal dan Anda akan berubah menjadi <kanji>grup</kanji> orang-orang yang memakai topi. Kalian semua terhubung melalui thread sekarang, jadi semua orang akan menganggap kalian adalah sebuah grup, meskipun hanya itu yang kalian inginkan untuk diri kalian sendiri.', 'Semua orang di <kanji>grup</kanji> ini menyukai <reading>cumi</reading>n (くみ). Tahukah Anda, bumbu atau bijinya. Kelompok tersebut melepas topi mereka dan mengisinya dengan jintan. Anda resmi menjadi grup pecinta jinten.')
    RETURNING id INTO k_670_kelompok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '船', 'kapal', 7, 47, '<radical>Perahu</radical> Anda memiliki <radical>sirip</radical> dan <radical>mulut</radical>! Itu masih sebuah <kanji>perahu</kanji>.', '<kanji>Perahu</kanji> ini milik <reading>cen</reading>taurs (せん). Mungkin itulah sebabnya Anda belum pernah melihat perahu seperti ini sebelumnya.')
    RETURNING id INTO k_671_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '週', 'pekan', 7, 48, 'Gunakan <radical>skuter</radical> untuk melakukan perjalanan <radical>keliling</radical> dunia dan itu akan memakan waktu <kanji>seminggu</kanji> penuh. Tujuh hari penuh!', 'Jika kamu ingin berlari selama <kanji>minggu</kanji>, kamu memerlukan <reading>sepatu</reading> (しゅう). Sepatunya bagus juga, bukan sandal atau high heel atau boots. Sepatu yang kokoh dan berkualitas tinggi, sehingga Anda tidak terjatuh dari skuter dan melukai diri sendiri.')
    RETURNING id INTO k_672_pekan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雪', 'salju', 7, 49, 'Saat <radical>hujan</radical> turun di <radical>Wolverine</radical>, ia berubah menjadi <kanji>salju</kanji>. Dia begitu jauh secara emosional dan dingin sehingga hujan membeku menjadi salju begitu mendekatinya.', 'Anda mengkhawatirkan kesehatan mental Wolverine. Dia menjadi sangat dingin secara emosional sehingga dia mengubah hujan menjadi <kanji>salju</kanji> berarti <reading>kamu terus</reading>p (ゆき) menanyakan apakah dia baik-baik saja. Tapi itu hanya membuatnya ingin lebih menjaga jarak.')
    RETURNING id INTO k_673_salju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '魚', 'ikan', 7, 50, '<radikal>ikan</radikal> radikal dan <kanji>ikan</kanji> kanji sama persis!', 'Anda menangkap <kanji>ikan</kanji>. Saat Anda menariknya keluar dari air, ia mulai berteriak dan menunjuk: "<reading>PERGI</reading>!" (ぎょ). "PERGI GYO GYO GYO!" Ada kapal pesiar besar yang datang menuju perahu nelayan kecil Anda. Pantas saja ikan itu berteriak PERGI padamu.')
    RETURNING id INTO k_674_ikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鳥', 'burung', 7, 51, 'Radikal <radikal>burung</radikal> dan kanji <kanji>burung</kanji> adalah sama!', 'Bayangkan <kanji>burung</kanji> biasa, apa pun yang pertama kali terlintas dalam pikiran Anda tidak masalah. Kemudian, burung kesayanganmu membengkak. Bentuk wajah, lalu tangan, mulailah merentangkan burung hingga meledak ke luar. Berlumuran darah dan bulu adalah Ny. <reading>Chou</reading> (ちょう).')
    RETURNING id INTO k_675_burung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '黄', 'kuning', 7, 52, 'Kata radikal <radikal>kuning</radikal> dan kanji <kanji>kuning</kanji> sama persis!', 'Anda berada di sebuah ruangan, dikelilingi sepenuhnya oleh <kanji>kuning</kanji>. Anda tidak bisa keluar. Di suatu tempat di dalam ruangan terdapat kunci <reading></reading> (き) berwarna kuning tetapi Anda tidak dapat menemukannya, karena semuanya terlihat sama. Anda merangkak mencoba menemukan benda kecil ini sehingga Anda dapat melarikan diri.')
    RETURNING id INTO k_676_kuning;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '黒', 'hitam', 7, 53, 'Kata <radikal>hitam</radikal> radikal dan kanji <kanji>hitam</kanji> sama persis.', 'Anda berada di ruangan yang sepenuhnya <kanji>hitam</kanji>. Tidak ada jalan keluar, dan Anda tidak dapat melihat. Ruangan mulai terisi cairan. Itu masuk ke mulutmu. Anda mencicipinya. Ini <read>Coke</reading> (こく)! Mm, Coke yang enak.')
    RETURNING id INTO k_677_hitam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '風', 'angin', 7, 54, 'Anda melihat <radical>tabel</radical> dan melihat bahwa tabel tersebut digunakan sebagai <radical>slide</radical> oleh <radical>serangga</radical> untuk meluncurkan dirinya ke dalam <kanji>angin</kanji>.

Kanji ini juga bisa berarti <kanji>gaya</kanji>. Untuk mengingat hal ini, pertimbangkan bagaimana gaya dapat berubah dengan cepat, seperti <kanji>angin</kanji>!', 'Anda bertanya-tanya apa yang mendorong serangga ini melompat ke <kanji>angin</kanji> sedemikian rupa, dan Anda menyadari bahwa itu karena mereka terlalu banyak <reading>foo</reading>d (ふう).')
    RETURNING id INTO k_853_angin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '映', 'mencerminkan', 7, 55, '<radikal>matahari</radikal> di <radikal>pusat</radikal> langit memancarkan cahayanya, yang <kanji>memantulkan</kanji> segala sesuatu di sekitarnya.', 'Cahaya <kanji>pantulan</kanji> ini penting khususnya untuk jagung (えい). Tanpa cahaya yang memantulkan segala sesuatunya, cahaya matahari tidak akan pernah sampai ke tanah tempat mereka jatuh. Mereka tidak akan pernah tumbuh menjadi pohon. Dan kita semua akan mati lemas.')
    RETURNING id INTO k_893_mencerminkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '象', 'gajah', 7, 56, 'Kanji <radikal>gajah</radikal> dan kanji <kanji>gajah</kanji> adalah sama. Tetapi! Kanji ini memiliki arti lain: <kanji>fenomena</kanji>. Jika Anda orang pertama yang melihat gajah, Anda juga akan menyebutnya demikian.', '<kanji>Gajah</kanji> memang hebat, kecuali ketika mereka mati mereka berubah menjadi gajah <reading>zo</reading>mbies (ぞう). Tapi Anda tidak pernah melihat zombie ini karena <reading>shou</reading>gun (しょう) memiliki proyek khusus yang menghancurkan semua tubuh gajah ketika mereka mati.

Petunjuk: Bacaan dan makna kanji ini sangat cocok. ぞう selalu untuk gajah dan しょう selalu untuk fenomena. Ingat seperti ini, gajah adalah zombie dan shogun menghalangi semua orang untuk mengetahui fenomena ini.')
    RETURNING id INTO k_1237_gajah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '床', 'lantai', 7, 57, 'Di bawah <radical>kanopi</radikal>, Anda menggunakan <radical>pohon</radikal> untuk <kanji>lantai</kanji> Anda. Ini juga menjadi <kanji>tempat tidur</kanji> Anda, karena hei, apa itu lantai selain tempat tidur aslinya?', 'Memang menyenangkan memiliki <kanji>lantai</kanji> atau <kanji>tempat tidur</kanji>, tapi kapan pun Anda menggunakannya, Anda akan mengucapkan <reading>yucka</reading> (ゆか) karena akan sangat kotor. Itulah salah satu kelemahan menggunakan lantai sebagai tempat tidur. Faktanya, ini adalah lantai paling kotor yang pernah Anda lihat, karena ditutupi dedaunan <reading>yucca</reading> (ゆか). Anda sedang tidur di lantai yucca. Aduh!')
    RETURNING id INTO k_1810_lantai;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_629_gambar, 'Gambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_629_gambar, 'Menggambar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_629_gambar, 'Lukisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_634_selatan, 'Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_646_kekurangan, 'Kekurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_647_nama_keluarga, 'Nama keluarga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_647_nama_keluarga, 'Nama Belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_647_nama_keluarga, 'Nama belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_648_alasan, 'Alasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_649_tagihan, 'Tagihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_649_tagihan, 'Menandai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_649_tagihan, 'Label', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_649_tagihan, 'Catatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_650_masyarakat, 'masyarakat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_650_masyarakat, 'Rakyat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_650_masyarakat, 'Bangsa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_651_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_651_daerah, 'Samping', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_652_menempel, 'Menempel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_653_dari, 'Dari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_653_dari, 'Sejak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_653_dari, 'Dibandingkan Dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_653_dari, 'Dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_653_dari, 'Melalui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_654_kesalahan, 'Kesalahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_655_yakin, 'Yakin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_656_belum, 'Belum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_657_akhir, 'Akhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_658_sekolah, 'Sekolah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_659_musim_panas, 'Musim panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_661_lemah, 'Lemah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_662_waktu, 'Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_662_waktu, 'jam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_662_waktu, 'Jam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_663_kertas, 'Kertas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_664_tuliskan, 'Tuliskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_664_tuliskan, 'Catatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_665_melewati, 'Melewati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_666_tinggi, 'Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_666_tinggi, 'Mahal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_666_tinggi, 'Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_667_kuat, 'Kuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_667_kuat, 'Kekuatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_668_mengajar, 'Mengajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_669_alasan, 'Alasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_670_kelompok, 'Kelompok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_670_kelompok, 'Asosiasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_670_kelompok, 'Tim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_671_kapal, 'Kapal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_671_kapal, 'Mengirimkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_671_kapal, 'Kapal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_672_pekan, 'Pekan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_673_salju, 'Salju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_674_ikan, 'Ikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_675_burung, 'Burung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_676_kuning, 'Kuning', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_677_hitam, 'Hitam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_853_angin, 'Angin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_853_angin, 'Gaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_893_mencerminkan, 'Mencerminkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_893_mencerminkan, 'Cerminan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1237_gajah, 'Gajah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1237_gajah, 'Gejala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1810_lantai, 'Lantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1810_lantai, 'Tempat tidur', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_629_gambar, 'が', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_629_gambar, 'かく', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_634_selatan, 'みなみ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_634_selatan, 'なん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_646_kekurangan, 'けつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_646_kekurangan, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_647_nama_keluarga, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_647_nama_keluarga, 'うじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_648_alasan, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_648_alasan, 'ゆ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_648_alasan, 'ゆい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_648_alasan, 'よし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_648_alasan, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_649_tagihan, 'さつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_649_tagihan, 'ふだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_650_masyarakat, 'みん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_650_masyarakat, 'たみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_651_daerah, 'へん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_651_daerah, 'あた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_651_daerah, 'べ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_652_menempel, 'つ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_652_menempel, 'ふ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_653_dari, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_654_kesalahan, 'しつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_654_kesalahan, 'うしな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_655_yakin, 'ひつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_655_yakin, 'かなら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_656_belum, 'み', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_656_belum, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_656_belum, 'いま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_656_belum, 'ひつじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_657_akhir, 'まつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_657_akhir, 'すえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_658_sekolah, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_659_musim_panas, 'なつ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_659_musim_panas, 'げ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_659_musim_panas, 'か', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_659_musim_panas, 'が', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_661_lemah, 'じゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_661_lemah, 'よわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_662_waktu, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_662_waktu, 'とき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_663_kertas, 'かみ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_663_kertas, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_664_tuliskan, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_664_tuliskan, 'しる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_665_melewati, 'つう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_665_melewati, 'とお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_665_melewati, 'かよ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_666_tinggi, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_666_tinggi, 'たか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_667_kuat, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_667_kuat, 'ごう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_667_kuat, 'つよ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_668_mengajar, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_668_mengajar, 'おし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_668_mengajar, 'おそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_669_alasan, 'り', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_669_alasan, 'ことわり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_670_kelompok, 'くみ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_670_kelompok, 'そ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_671_kapal, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_671_kapal, 'ふね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_672_pekan, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_673_salju, 'ゆき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_673_salju, 'せつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_674_ikan, 'ぎょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_674_ikan, 'さかな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_674_ikan, 'うお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_675_burung, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_675_burung, 'とり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_676_kuning, 'き', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_676_kuning, 'おう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_677_hitam, 'こく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_677_hitam, 'くろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_853_angin, 'ふう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_853_angin, 'ふ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_853_angin, 'かぜ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_893_mencerminkan, 'えい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_893_mencerminkan, 'うつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_893_mencerminkan, 'は', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1237_gajah, 'ぞう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1237_gajah, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1810_lantai, 'ゆか', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1810_lantai, 'とこ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1810_lantai, 'しょう', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '分ける', 'untuk-membagi-sesuatu', 7, 58, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う (dalam hal ini る), Anda tahu bahwa kata tersebut adalah kata kerja. Salah satu arti kanji adalah <kanji>membagi</kanji>, yang merupakan <vocabulary>membagi sesuatu</vocabulary> atau <vocabulary>memisahkan sesuatu</vocabulary>. Tergantung pada konteksnya, ini juga bisa berarti <vocabulary>berbagi</vocabulary> atau <vocabulary>mengklasifikasikan</vocabulary>.

Berhati-hatilah agar tidak bingung membedakannya dengan 分かる, kata serupa namun memiliki arti berbeda. Anggap saja seperti ini: Anda "memisahkan" hal yang Anda pedulikan (ける) dari hal lainnya. Anda ingin memisahkan hal-hal khusus yang Anda pedulikan dari semua hal lain yang tidak Anda pedulikan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mengetahui bacaan ini dari 分かる, tapi berikut adalah mnemonik jika Anda lupa:

Kapanpun Anda perlu <vocabulary>untuk membagi sesuatu</vocabulary>, Anda pasti akan berteriak "<reading>WAAAAAAAAAAHHHH</reading>" (わ). Anda benci harus memecah belah sesuatu, atau orang, sehingga Anda selalu berteriak "WAAAAAAAAAAHHHH" kesakitan.', 'Untuk Membagi Sesuatu, Untuk Memisahkan Sesuatu, Untuk Berbagi, Untuk Mengklasifikasikan')
    RETURNING id INTO v_2599_untuk_membagi_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お兄さん', 'kakak', 7, 59, 'Kata ini diawali dengan お agar lebih sopan. Lalu ada kanji <kanji>兄</kanji> yang sudah Anda ketahui. Terakhir, ada さん yang merupakan suatu kehormatan untuk meninggikan orang dan bersikap sopan. Ini pada dasarnya adalah cara formal untuk mengucapkan <vocabulary>kakak</vocabulary> (dibandingkan dengan kata lama biasa 兄). Ini juga bisa digunakan untuk merujuk pada <vocabulary>pria</vocabulary> yang tidak Anda kenal yang memiliki penampilan awet muda.', 'Pembacaan untuk yang satu ini cukup rumit, dan saya menganggapnya sebagai pengecualian. Untuk mengingatnya, Anda harus mempelajari bagian 兄, dan segala sesuatu yang lain akan terjadi pada tempatnya. Berikut ini mnemonik untuk membantu Anda:

<kosakata>kakak</vocabulary> (baik hati)mu mendorongmu hingga jatuh ke tanah. Anda berdiri dan melihat <reading>lutut</reading> (にい) Anda, yang semuanya berdarah. "Kenapa kamu melakukan itu pada lututku!?" kamu bertanya. "Kamu seharusnya menjadi kakak yang baik, itu sebabnya aku memanggilmu お兄さん!"', 'Kakak, Pria')
    RETURNING id INTO v_2621_kakak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '代わる', 'untuk-pengganti', 7, 60, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>pengganti</kanji>, dan kata kerja 代わる berarti <vocabulary>menggantikan</vocabulary> atau <vocabulary>mengambil alih</vocabulary>. Gunakan ketika seorang pemain menggantikan pemain lain dalam olahraga, misalnya, atau ketika seseorang mengambil alih posisi Anda di tempat kerja. 

代わる biasanya bersifat intransitif, namun terkadang dapat bersifat transitif dan mengambil objek langsung. Seperti "mengambil alih" dalam bahasa Inggris — seseorang dapat mengambil alih giliran kerja Anda (transitif), atau hanya mengambil alih untuk Anda (intransitif).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik untuk membantu Anda mengingat bagian か:

Anda memerlukan sesuatu <vocabulary>untuk menggantikan</vocabulary> <reading>mobil</reading> Anda (か). Ini sedang diperbaiki, jadi Anda tidak dapat menggunakannya sekarang. Saya kira Anda dapat mengganti sepeda Anda dengan mobil Anda?', 'Untuk Pengganti, Untuk Mengambil Alih, Untuk Mengganti')
    RETURNING id INTO v_2720_untuk_pengganti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '考え', 'pikiran', 7, 61, 'Ini adalah versi kata benda dari <kanji>berpikir</kanji>. Apa itu "berpikir"? Itu adalah <vocabulary>pemikiran</vocabulary>.', 'Anda mempelajari bacaan ini dengan 考える, potong saja る!', 'Pikiran, Sebuah Pemikiran')
    RETURNING id INTO v_2764_pikiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '考え方', 'cara-berpikir', 7, 62, '考える berarti "berpikir", bukan? Nah, <kanji>cara</kanji> yang Anda pikirkan adalah <vocabulary>cara berpikir</vocabulary> Anda. Dengan kata lain, ini adalah <vocabulary>proses berpikir</vocabulary> Anda.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari bacaan かんが dengan 考える, namun かた bukanlah bacaan utama yang Anda pelajari untuk 方, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>cara berpikir</vocabulary> Anda seperti <reading>cata</reading>pult (かた). Anda cukup meluncurkan ide di dinding dan melihat apa yang melekat. Tentu saja ini agak tidak tepat, tapi ini adalah <vocabulary>proses berpikir</vocabulary> terbaik untuk Anda. Cara berpikir ketapel cocok untuk Anda!', 'Cara Berpikir, Proses Berpikir')
    RETURNING id INTO v_2766_cara_berpikir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '形', 'membentuk', 7, 63, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>bentuk</vocabulary> apa yang kamu <reading>potong chee</reading>se (かたち) menjadi? Bintang, segitiga, kubus kecil, hati! Apa pun kecuali hal-hal membosankan yang dilakukan orang lain. Anda seperti mozzarella Michelangelo, cara Anda memotong keju menjadi <vocabulary>form</vocabulary> yang dipahat dengan indah.', 'Membentuk, Membentuk')
    RETURNING id INTO v_2822_membentuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '南', 'selatan', 7, 64, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda mempelajarinya dengan kanji, jadi Anda mungkin mengingatnya, tapi inilah pengingat mnemonik untuk berjaga-jaga:

Pikirkan tentang <vocabulary>selatan</vocabulary>. Ada apa di bawah sana? <read>Amy yang jahat</reading> (みなみ) tinggal di bawah sana. Pikirkan tindakan kejam terakhir yang dia lakukan terhadap Anda dan bayangkan itu sambil berteriak "MAKNA AMYYYYY" ke langit.', 'Selatan')
    RETURNING id INTO v_2910_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欠点', 'kekurangan', 7, 65, 'Anda memiliki <kanji>kekurangan</kanji> <kanji>poin</kanji>. Ini adalah hal-hal tentang diri Anda yang Anda harap lebih baik. Ini adalah <vocabulary>kekurangan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah karena けつ disingkat menjadi けっ di sini!', 'Kekurangan, Kesalahan, Kekurangan')
    RETURNING id INTO v_2927_kekurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜氏', 'tuan', 7, 66, 'Kanji berarti <kanji>nama keluarga</kanji> karena muncul setelah nama keluarga dalam situasi yang sangat formal. Jadi, ini sangat erat kaitannya dengan hal itu. Karena pada masa itu hanya laki-laki yang mendapat rasa hormat, kami menamakan kosakata ini <vocabulary>mister</vocabulary>. Anda juga bisa memanggil saya Tuan Koichi jika Anda mau.', 'Bacaan kata ini sama dengan kanji.', 'Tuan, Nyonya, Merindukan, Mx')
    RETURNING id INTO v_2928_tuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '氏名', 'nama-lengkap', 7, 67, 'Kedua kanji ini ada hubungannya dengan nama. Anda memiliki <kanji>nama keluarga</kanji> dan <kanji>nama</kanji>. Kedua nama tersebut digabungkan menjadi <vocabulary>Nama Depan dan Belakang</vocabulary>... <vocabulary>nama lengkap</vocabulary> jika Anda mau.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nama Lengkap, Nama Depan Dan Belakang')
    RETURNING id INTO v_2929_nama_lengkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自由', 'kebebasan', 7, 68, 'Ketika Anda memiliki <kanji>diri</kanji> <kanji>alasan</kanji>, Anda dapat berpikir sendiri. Jika Anda bisa berpikir sendiri, Anda memiliki <vocabulary>kebebasan</vocabulary>. Sangat filosofis, kosakata ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kebebasan, Kebebasan')
    RETURNING id INTO v_2930_kebebasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '理由', 'alasan', 7, 69, '<kanji>alasan</kanji> <kanji>alasan</kanji> adalah <vocabulary>alasan</vocabulary>! Bagaimana tidak? Apakah Anda punya alasan mengapa hal itu tidak boleh terjadi? Saya pikir tidak.

Kata ini berarti "alasan" seperti alasan Anda belajar bahasa Jepang, atau alasan Anda terlambat. Itu sebabnya bisa juga berarti kata-kata serupa seperti <vocabulary>motive</vocabulary> dan <vocabulary>excuse</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Alasan, Motif, Mengizinkan')
    RETURNING id INTO v_2931_alasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜札', 'tagihan', 7, 70, 'Kanji dan kata-katanya hampir persis sama. Jika Anda melihat kata ini setelah angka, artinya adalah <vocabulary>bil</vocabulary> fisik berupa uang.', 'Ini adalah sufiks yang menggunakan bacaan on''yomi, yang telah Anda pelajari!

Anda juga akan melihat pengucapan ini ふだ, tetapi ini merupakan kata yang berdiri sendiri atau bagian dari kata majemuk, bukan sufiks. Jadi jika Anda menjawab dengan bacaan tersebut, Anda akan diminta untuk memasukkan bacaan akhiran.', 'Tagihan, Catatan')
    RETURNING id INTO v_2932_tagihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '千円札', 'uang-seribu-yen', 7, 71, 'Anda tahu apa itu 千円 (1000 yen). Jadi, jika Anda menambahkan <kanji>tagihan</kanji> ke dalamnya, Anda akan mendapatkan <vocabulary>tagihan seribu yen</vocabulary>. Itu hanyalah uang berbentuk persegi kecil yang bernilai 1000 yen.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Uang Seribu Yen, Catatan Seribu Yen')
    RETURNING id INTO v_2933_uang_seribu_yen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国民', 'rakyat', 7, 72, '<kanji>negara</kanji> <kanji>masyarakat</kanji> adalah penduduk di negara Anda. Mereka adalah <vocabulary>rakyat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rakyat, Warga negara, Nasional')
    RETURNING id INTO v_2934_rakyat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'この辺', 'di-sekitar-sini', 7, 73, 'この berarti "ini" jadi この辺 berarti <vocabulary>area ini</vocabulary>.', 'Pembacaan bagian kanji hanyalah apa yang telah Anda pelajari dengan kanji 辺 jadi ini tidak akan sulit untuk Anda baca.', 'Di Sekitar Sini, Daerah ini')
    RETURNING id INTO v_2936_di_sekitar_sini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '付ける', 'untuk-melampirkan-sesuatu', 7, 74, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melampirkan</kanji> jadi versi kata kerjanya adalah <vocabulary>melampirkan sesuatu</vocabulary>.', 'Bacaannya sebenarnya sama dengan yang Anda pelajari dengan kanji, artinya Anda harus bisa membaca yang ini dengan baik.', 'Untuk Melampirkan Sesuatu, Untuk Melampirkan')
    RETURNING id INTO v_2937_untuk_melampirkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '以外', 'selain-daripada', 7, 75, '<kanji>Dibandingkan dengan</kanji> ini, <kanji>di luar</kanji> yang Anda inginkan. Anda akan memiliki <vocabulary>selain</vocabulary> itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Selain daripada, Kecuali, Kecuali Untuk')
    RETURNING id INTO v_2938_selain_daripada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜以上', 'tidak-kurang-dari', 7, 76, 'Mulai <kanji>dari</kanji> sesuatu lalu lanjutkan <kanji>di atas</kanji> itu. Sekarang Anda memiliki "<vocabulary>tidak kurang dari</vocabulary> ___," atau, dengan kata lain, "___ <vocabulary>atau lebih</vocabulary>"! 

Jika digunakan dengan angka, 以上 selalu menyertakan nomor itu sendiri, seperti 十人以上 (10 orang atau lebih). Dalam konteks non-numerik, ini bisa berarti "lebih dari" dalam arti yang lebih longgar, seperti これ以上もてない (Saya tidak bisa membawa lebih dari ini).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak Kurang dari, Atau Lebih')
    RETURNING id INTO v_2939_tidak_kurang_dari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '以前', 'sebelumnya', 7, 77, '<kanji>Dari</kanji> <kanji>sebelum</kanji>, berarti <vocabulary>sebelumnya</vocabulary> atau <vocabulary>sebelum</vocabulary> sekarang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sebelumnya, Sebelum')
    RETURNING id INTO v_2940_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '失う', 'kalah', 7, 78, 'Bagian kanjinya berarti <kanji>kesalahan</kanji>, jadi Anda akan mengira versi kata kerjanya adalah "menyalahkan". Tapi ini sedikit berbeda. Anggap saja seperti ini, jika Anda "menyalahkan" sesuatu, Anda melakukan kesalahan. Apa cara yang bagus untuk mengacaukannya? Dengan kehilangan sesuatu. Itu sebabnya kata ini berarti <vocabulary>kalah</vocabulary>. 

Berpura-puralah seolah-olah Anda seharusnya memegang cincin kawin seseorang. Anda membuat kesalahan terbesar. Anda kehilangannya. Aduh.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jadi bagaimana Anda bisa kehilangan cincin kawinnya? Yah... itu dimakan oleh sapi. <reading>牛 sekarang</reading> (うし + なう) harus diangkat melalui pembedahan. Berantakan sekali!', 'Kalah, Untuk Berpisah, Kehilangan Sesuatu, Untuk Berpisah Dengan Sesuatu')
    RETURNING id INTO v_2941_kalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '失礼', 'kasar', 7, 79, 'Ketika Anda melakukan sesuatu yang merupakan <kanji>kesalahan</kanji> Anda dan kemudian Anda mengucapkan "<kanji>terima kasih</kanji>" setelah melakukannya, itu adalah <vocabulary>tidak sopan</vocabulary> yang super duper, bukan? Bayangkan melakukan sesuatu seperti ini dan kemudian berpikir sendiri setelah... wow, saya benar-benar kasar.

Kata ini juga sering digunakan dalam arti <vocabulary>permisi</vocabulary>, biasanya diikuti dengan ですが atau します. Kadang-kadang, kata ini juga digunakan sendiri-sendiri, biasanya ketika pembicara mempunyai status yang lebih tinggi atau setara dengan orang yang diajak bicara. Penggunaan khusus ini lebih lazim di kalangan generasi tua dan umumnya dikaitkan dengan ucapan maskulin.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kasar, Kekasaran, Ketidaksopanan, Permisi')
    RETURNING id INTO v_2942_kasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '必ず', 'pasti', 7, 80, 'Kata ini terlihat seperti kata kerja tetapi sebenarnya bukan (maaf!). Itu adalah kata keterangan. Kanji itu sendiri berarti <kanji>tertentu</kanji> dan versi kosakatanya berarti segala macam variasinya: <vocabulary>tentu saja</vocabulary>, <vocabulary>tentu saja</vocabulary>, dan <vocabulary>tanpa pengecualian</vocabulary> dan masih banyak lagi.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Ra, dewa Mesir bertanya padamu: "Bisakah kamu melakukannya? Apakah kamu <vocabulary>yakin</vocabulary> kamu bisa membangun piramida?" 

"Ya, saya <membaca>bisa ra</membaca> (かなら). Ya, saya bisa," jawab Anda.', 'Pasti, Tentu, Tanpa terkecuali, Selalu, Tentu saja')
    RETURNING id INTO v_2943_pasti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '必死', 'panik', 7, 81, 'Masa depan Anda terdiri dari <kanji>kematian</kanji> tertentu. Bagaimana perasaan Anda dalam situasi ini? Mungkin sangat <vocabulary>panik</vocabulary> dan <vocabulary>putus asa</vocabulary>. 

Terjemahan lain untuk kata ini adalah <vocabulary>kematian pasti</vocabulary>, meskipun saya lebih suka Anda mempelajari salah satu dari dua yang pertama sebelum yang ini jika Anda bisa.', 'Bacaannya adalah bacaan on''yomi, meskipun 必 (ひつ) disingkat menjadi ひっ. Dalam situasi <vocabulary>putus asa</vocabulary> bayangkan saja Anda mencoba keluar dari situ, dan untuk melakukannya Anda menggerakkan つ hanya untuk menemukan っ yang lebih kecil menghalangi jalan Anda. Itu adalah kematian yang pasti.', 'Panik, Putus asa, Kematian Tertentu, Tentu Kematian')
    RETURNING id INTO v_2944_panik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '未来', 'masa-depan', 7, 82, 'Apa yang <kanji>belum</kanji> <kanji>datang</kanji>? <vocabulary>masa depan</vocabulary>.

未来 biasanya digunakan untuk berbicara tentang masa depan yang jauh, dan ini menyiratkan bahwa masa depan tidak dapat diramalkan. Jadi, Anda dapat menggunakannya untuk berspekulasi tentang apa yang mungkin terjadi di masa depan, namun Anda mungkin tidak akan menggunakannya untuk mendiskusikan rencana, sasaran, atau prediksi yang lebih konkrit.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Masa depan, Masa Depan, Masa Depan yang Jauh, Masa Depan yang Jauh')
    RETURNING id INTO v_2946_masa_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '末', 'akhir', 7, 83, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Lemparkan "the" ke sana jika Anda mau.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda telah mencapai <vocabulary>akhir</vocabulary> alam semesta. Tidak ada apa pun di sana. Anda melangkah keluar, dan Anda terkejut karena Anda disambut oleh seorang lelaki tua Kanada. <read>Sue, ya?</reading>(すえ) dia bertanya padamu, berulang kali. Pria malang itu mencari istrinya Sue, dan dia mencarinya sampai ke ujung alam semesta. Itulah cinta sejati. Saat dia berjalan ke kejauhan, Anda mendengarnya berseru, "Sue, eh? Sue, eh? Sue, eh?"', 'Akhir, Akhir')
    RETURNING id INTO v_2947_akhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年末', 'akhir-tahun', 7, 84, '<kanji>tahun</kanji> <kanji>akhir</kanji> adalah <vocabulary>akhir tahun</vocabulary> alias <vocabulary>akhir tahun</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Akhir Tahun, Akhir Tahun, Akhir Tahun')
    RETURNING id INTO v_2948_akhir_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '月末', 'akhir-bulan', 7, 85, 'Tahukah kamu bahwa 月 juga bisa berarti <kanji>bulan</kanji>? Jika Anda menambahkan 末 di sana, Anda memiliki "akhir bulan" alias <vocabulary>akhir bulan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 月 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Saat <vocabulary>akhir bulan</vocabulary>, semua orang <reading>mendapat</reading> <reading>mats</reading> (げつまつ). Kami tidak membayar orang dalam bentuk uang di Tofugu, tapi semua orang mendapat tikar di <vocabulary>akhir bulan</vocabulary> sebagai gantinya.', 'Akhir Bulan, Akhir Bulan')
    RETURNING id INTO v_2949_akhir_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高校', 'sekolah-menengah-atas', 7, 86, '<kanji>tinggi</kanji> <kanji>sekolah</kanji> adalah ketika anak-anak Anda mencapai tinggi yang seharusnya. Itulah <vocabulary>sekolah menengah atas</vocabulary>, saat kebanyakan orang berhenti bertambah tinggi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sekolah menengah atas, Sekolah Menengah Atas')
    RETURNING id INTO v_2950_sekolah_menengah_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '学校', 'sekolah', 7, 87, '<kanji>belajar</kanji> <kanji>sekolah</kanji> jelas merupakan tempat orang belajar dan belajar. Dalam bahasa Inggris, itu hanyalah <vocabulary>school</vocabulary>.', 'Kata jukugo ini terdiri dari bacaan on''yomi, kecuali 学 (がく) disingkat dengan っ kecil menjadi <reading>がっこう</reading>.', 'Sekolah')
    RETURNING id INTO v_2951_sekolah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夏', 'musim-panas', 7, 88, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan yang dipelajari dengan kanji sama dengan pembacaan kosakata.', 'Musim panas')
    RETURNING id INTO v_2952_musim_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夏休み', 'liburan-musim-panas', 7, 89, 'Anda tahu bahwa 夏 berarti <kanji>musim panas</kanji> dan 休 berarti <kanji>istirahat</kanji>. Apa itu "istirahat musim panas"? Ini adalah <vocabulary>liburan musim panas</vocabulary> atau <vocabulary>liburan musim panas</vocabulary>.', 'Bacaannya adalah bacaan kun''yomi karena kata ini pada hakikatnya adalah dua kata terpisah yang dirangkai menjadi satu kata. Anda harus mengetahui bacaan 夏 dari kanji dan bacaan 休み dari vocab.', 'Liburan Musim Panas, Liburan Musim Panas, Liburan Musim Panas')
    RETURNING id INTO v_2953_liburan_musim_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弱い', 'lemah', 7, 90, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>lemah</kanji>? Ini juga <vocabulary>lemah</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Kamu baru saja dipukuli karena <vocabulary>lemah</vocabulary>. Kemudian si penindas bertanya padamu: "<reading>Yo! Kenapa</reading> (よわ) kamu begitu lemah?"', 'Lemah')
    RETURNING id INTO v_2956_lemah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弱点', 'titik-lemah', 7, 91, '<kanji>titik</kanji> <kanji>yang lemah</kanji> adalah <vocabulary>titik lemah</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Titik Lemah, Kelemahan')
    RETURNING id INTO v_2957_titik_lemah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時', 'waktu', 7, 92, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

<vocabulary>jam</vocabulary> jam berapa sekarang? Saatnya <reading>mengunci</reading> (とき) mobil musuhmu. Bayangkan diri Anda melihat arloji Anda, menunggu hingga waktu yang tepat untuk melakukan penguncian mobil seseorang secara tersinkronisasi. Siapa yang paling kamu benci? Mobil siapa yang ingin Anda kunci?', 'Waktu, Jam')
    RETURNING id INTO v_2958_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一時', 'jam-satu', 7, 93, 'Saat <kanji>satu</kanji> <kanji>jam</kanji> berarti <vocabulary>jam satu</vocabulary>. Saatnya makan siang, atau tidur siang, atau apalah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jam satu')
    RETURNING id INTO v_2959_jam_satu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二時半', 'dua-tiga-puluh', 7, 94, 'Jika saat ini <kanji>dua</kanji> <kanji>jam</kanji> dan <kanji>setengah</kanji> menurut Anda jam berapa sekarang? Itu berarti <vocabulary>dua tiga puluh</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dua Tiga Puluh, Jam Setengah Dua')
    RETURNING id INTO v_2960_dua_tiga_puluh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何時', 'jam-berapa', 7, 95, 'Ini adalah kata yang baik untuk diketahui untuk menanyakan waktu. <kanji>Apa</kanji> itu <kanji>waktu</kanji>? Beginilah cara Anda menanyakan <vocabulary>jam berapa</vocabulary> sekarang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jam berapa')
    RETURNING id INTO v_2961_jam_berapa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同時', 'waktu-yang-sama', 7, 96, '<kanji>yang</kanji> <kanji>waktu</kanji> yang <kanji>sama? Oke, katakanlah menurut kami arti kata ini pada <vocabulary>waktu yang sama</vocabulary>. Ups, saya baru saja mengatakannya, maaf.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Waktu yang sama')
    RETURNING id INTO v_2962_waktu_yang_sama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紙', 'kertas', 7, 97, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan kun''yomi, namun untung bagi anda bacaan tersebut dipelajari dengan kanji, artinya anda harus bisa membaca vocab ini juga.', 'Kertas')
    RETURNING id INTO v_2963_kertas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手紙', 'surat', 7, 98, '<kanji>tangan</kanji> <kanji>kertas</kanji> adalah <vocabulary>surat</vocabulary> karena huruf pada umumnya ditulis dengan tangan di atas kertas.

Jika Anda menginginkan gambar yang lebih gamblang, bayangkan menulis surat di tangan Anda, dan betapa sakitnya jika tangan Anda dipotong dan dikirimkan.', 'Bacaannya ganda kun''yomi. Anggaplah 手紙 sebagai dua kata yang disatukan — surat adalah sesuatu yang Anda tulis dengan tangan (て) di atas kertas (かみ). Anda sudah mempelajari bacaan tersebut, jadi Anda harus bisa membaca ini! Hati-hati dengan rendaku di がみ.', 'Surat')
    RETURNING id INTO v_2964_surat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日記', 'buku-harian', 7, 99, 'Saat Anda <kanji>menulis</kanji> <kanji>hari</kanji> Anda (dan melakukannya setiap hari) itulah <vocabulary>buku harian</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 日 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Saat kamu menuliskan keseharianmu di <vocabulary>diary</vocabulary>, sebenarnya kamu hanya menulis tentang <reading>Nicky</reading> (にっき). Kamu sangat mencintai Nicky, buku harianmu penuh dengan Nicky ini, Nicky itu. Ah, Nicky memang yang terbaik.', 'Buku harian, Jurnal')
    RETURNING id INTO v_2965_buku_harian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交通', 'lalu-lintas', 7, 100, 'Meskipun <kanji>tercampur</kanji>saat <kanji>melewati</kanji> itu sendiri, sistem <vocabulary>lalu lintas</vocabulary> dan <vocabulary>transportasi</vocabulary> modern sungguh menakjubkan. Kata ini mengacu pada lalu lintas dan transportasi untuk pejalan kaki, sepeda, mobil, bus, kereta api, pesawat... apa pun yang membawa kita dari A ke B.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lalu lintas, Mengangkut, Transit')
    RETURNING id INTO v_2967_lalu_lintas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高い', 'tinggi', 7, 101, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>tinggi</kanji> atau <kanji>mahal</kanji>? Sama saja: <vocabulary>tinggi</vocabulary> atau <vocabulary>mahal</vocabulary>. 

Aneh kalau kata ini berarti kedua hal ini, ya? Bayangkan saja uang yang ditumpuk menjadi sangat tinggi. Uang itu mahal karena perlu membeli sesuatu yang mahal.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Menjadi <vocabulary>tinggi</vocabulary> memang <vocabulary>mahal</vocabulary> karena harus membeli <reading>ta</reading>ll <reading>mobil</reading> (たか). Jika itu bukan mobil yang tinggi maka tubuh tinggi Anda tidak akan muat di dalamnya, dan mobil-mobil tinggi itu mahal!', 'Tinggi, Tinggi, Mahal')
    RETURNING id INTO v_2968_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '強い', 'kuat', 7, 102, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>kuat</kanji>? Bahasa ini juga <vocabulary>kuat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Jika Anda ingin menjadi <vocabulary>kuat</vocabulary>, Anda harus bisa menggunakan <reading>dua yo</reading>-yos (つよ) sekaligus. Seperti, sebagai senjata. Dan yang saya maksud bukan dengan dua tangan. Maksudku satu tangan memegang dua yo-yo. Nah, itu kuat.', 'Kuat')
    RETURNING id INTO v_2969_kuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '強力', 'kuat', 7, 103, 'Anda memiliki <kanji>kuat</kanji> <kanji>kekuatan</kanji>. Anda <vocabulary>kuat</vocabulary> dan <vocabulary>kuat</vocabulary>. Rasakan <vocabulary>kekuatan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 力 memiliki dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Tidak ada yang <vocabulary>kuat</vocabulary> dan <vocabulary>strong</vocabulary> seperti <reading>きょう</reading>と <reading>lock</reading> (りょく). Itu adalah kunci legendaris yang diproduksi di zaman kuno, dikabarkan sebagai kunci terkuat yang pernah ada. Menurut Anda, kekuatan magis apa yang ada di balik <vocabulary>kekuatan</vocabulary> kunci きょうと?', 'Kuat, Kekuatan, Kuat')
    RETURNING id INTO v_2970_kuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '教える', 'untuk-mengajar', 7, 104, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengajar</kanji> sehingga versi vocab verbanya berarti <vocabulary>to teaching</vocabulary>. Kata ini juga digunakan dalam arti <vocabulary>to tell</vocabulary> dalam pengertian yang lebih umum.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Pikirkan tentang guru favorit Anda. Sekarang bayangkan mereka mengajari Anda hal berikut: "Hari ini saya akan mengajari Anda tentang <reading>lautan</reading>n (おし)." Itu besar. Sangat besar. Di dalamnya ada kraken, alien luar angkasa, dan kota yang hilang. 

Di sinilah Anda melanjutkan pelajaran di kepala Anda, menjadikannya pelajaran paling konyol tentang lautan yang pernah Anda dengar. Fokuslah pada bagian lautan, karena itulah bacaannya, selalu kembali ke sana.', 'Untuk Mengajar, Untuk Memberitahu')
    RETURNING id INTO v_2971_untuk_mengajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '教室', 'kelas', 7, 105, '<kanji>ruang mengajar</kanji>ing <kanji></kanji> hanyalah sebuah <vocabulary>ruang kelas</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kelas')
    RETURNING id INTO v_2972_kelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心理学', 'psikologi', 7, 106, '<kanji>alasan</kanji> <kanji>hati</kanji> Anda melakukan apa yang dilakukannya, semuanya bersifat psikologis. <kanji>studi</kanji> tentang itu adalah <vocabulary>psikologi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Psikologi')
    RETURNING id INTO v_2973_psikologi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地理', 'geografi', 7, 107, '<kanji>alasan</kanji> <kanji>bumi</kanji> seperti ini adalah karena <vocabulary>geografi</vocabulary> darinya. Meskipun mungkin tampak aneh bahwa geografi membawa nalar ke bumi, jika Anda menganggap geografi sebagai sebuah studi, maka Anda juga dapat memikirkan bagaimana Anda mencoba untuk mendapatkan nalar melalui hal tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Geografi')
    RETURNING id INTO v_2974_geografi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '組', 'kelompok', 7, 108, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Itu bacaan yang kamu pelajari dengan kanji jadi kamu harusnya bisa membaca yang ini juga. Jika Anda memerlukan penyegaran, inilah mnemonik untuk membantu Anda:

Anda adalah bagian dari <vocabulary>grup</vocabulary> khusus. Itu adalah kelompok <read>cumi</reading>n, dan mereka menangani segala hal tentang jinten (bumbu atau bijinya). Cium aroma jintannya. Sentuh itu. Rasakan itu. Anda hidup dan menghirupnya, karena Anda adalah presiden grup jintan ini.

P.S. Ini juga bisa dieja 組み (bacaan yang sama: くみ) jika digunakan sebagai balasan untuk grup, seperti ひと組み atau ふた組み.', 'Kelompok, Tim, Kelas')
    RETURNING id INTO v_2975_kelompok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '船', 'kapal', 7, 109, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda sedang naik perahu. Itu bagus. Bayangkan ini adalah saat terbaik yang pernah Anda alami dalam hidup Anda. Anda memberi tahu semua orang: "Ini <reading>menyenangkan, ya</reading>?" (ふね). Anda berada di kapal Kanada, itulah sebabnya Anda menambahkan "eh" di sana. Ucapkan ini dengan lantang di mana pun Anda berada saat ini sambil membayangkan aroma laut, angin, dan keriuhan perahu.', 'Kapal, Mengirimkan')
    RETURNING id INTO v_2976_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '風船', 'balon', 7, 110, '<kanji>angin</kanji> <kanji>perahu</kanji>. Ini tentu saja merupakan hal yang aneh. Anda mungkin berasumsi ini seperti salah satu balon raksasa yang bisa Anda naiki, dan sebagian Anda benar. Sebenarnya, kata ini mencakup kata umum <vocabulary>balloon</vocabulary>, meskipun kata ini terutama berkaitan dengan balon model mainan (atau balon yang lebih kecil). Ini adalah kapal angin bulat kecil!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Balon')
    RETURNING id INTO v_2977_balon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先週', 'minggu-lalu', 7, 111, '<kanji>minggu</kanji> sebelumnya</kanji> adalah <vocabulary>minggu lalu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Minggu lalu')
    RETURNING id INTO v_2978_minggu_lalu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今週', 'minggu-ini', 7, 112, '<kanji>minggu ini</kanji> <kanji>minggu</kanji> adalah <kosakata>minggu ini</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Minggu ini')
    RETURNING id INTO v_2979_minggu_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '週末', 'akhir-pekan', 7, 113, '<kanji>akhir</kanji> dari <kanji>minggu</kanji> adalah <vocabulary>akhir pekan</vocabulary>... yaitu, kecuali Anda bekerja di akhir pekan, namun kami tidak dapat melayani semua orang di sini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Akhir pekan')
    RETURNING id INTO v_2980_akhir_pekan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雪', 'salju', 7, 114, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaan yang dipelajari dengan kanji sama dengan bacaan kosakata ini. Nikmati salju!', 'Salju')
    RETURNING id INTO v_2981_salju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '魚', 'ikan', 7, 115, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Bayangkan sebuah <vocabulary>ikan</vocabulary>. Sekarang bayangkan ikan itu bermain sepak bola sambil mengenakan pakaian biarawati. Ini adalah <reading>sepak bola nu</reading>n (さかな).', 'Ikan')
    RETURNING id INTO v_2982_ikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金魚', 'ikan-mas', 7, 116, '<kanji>emas</kanji> <kanji>ikan</kanji> sebenarnya hanya berwarna emas, namun tetap disebut <vocabulary>ikan mas</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ikan mas')
    RETURNING id INTO v_2983_ikan_mas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鳥', 'burung', 7, 117, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Saat Anda memikirkan tentang burung, burung apa yang paling umum yang terpikirkan oleh Anda? Burung apa yang paling kamu benci atau paling suka kamu makan? Salah satu dari keduanya akan berhasil. Sekarang, bayangkan diri Anda mendekati burung itu. Anda melakukan sesuatu yang buruk. Anda <read>memotong</reading> (とり) dari sayapnya dan mulai memakannya (berpura-puralah sudah matang terlebih dahulu, jika itu membuat rasa mual Anda berkurang).', 'Burung')
    RETURNING id INTO v_2985_burung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '白鳥', 'angsa', 7, 118, 'Pasti ada banyak <kanji>putih</kanji> <kanji>burung</kanji> di luar sana, tapi ada satu yang sangat menonjol jika Anda bertanya kepada saya. Burung itu adalah <vocabulary>angsa</vocabulary>. Besar, putih, dan megah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Angsa')
    RETURNING id INTO v_2986_angsa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '黄色', 'kuning', 7, 119, '<kanji>kuning</kanji> <kanji>warna</kanji> hanyalah warna <vocabulary>kuning</vocabulary>.', 'Bacaannya sama dengan bacaan yang Anda pelajari dengan kanji artinya Anda harus bisa langsung membaca kata ini.', 'Kuning, Warna Kuning, Warna Kuning')
    RETURNING id INTO v_2987_kuning;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '黒い', 'hitam', 7, 120, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>hitam</kanji>? Itu juga <vocabulary>hitam</vocabulary>. Catatan Khusus: Versi kata benda hitam juga ada dalam bahasa Jepang. Itu hanya 黒 dengan pengucapan yang sama, tetapi tanpa い yang menjadikannya kata sifat-tastic.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Pikirkan hal-hal hitam. Salah satu benda hitam yang sangat umum adalah <reading>gagak</reading> (くろ). Kaitkan keduanya.', 'Hitam')
    RETURNING id INTO v_2988_hitam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '黒人', 'orang-kulit-hitam', 7, 121, '<kanji>orang</kanji> hitam</kanji> hanyalah <vocabulary>Orang kulit hitam</vocabulary>, seperti 白人 adalah "Orang kulit putih", namun warnanya berbeda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Bayangkan <vocabulary>Orang kulit hitam</vocabulary> yang Anda kenal baik mengenakan <reading>coke</reading> <reading>jean</reading>s (こくじん). Yap, jeans seluruhnya terbuat dari botol coke. Itu sebenarnya suatu hal. Cari tahu jika Anda tidak percaya.', 'Orang Kulit Hitam, Orang Kulit Hitam')
    RETURNING id INTO v_2989_orang_kulit_hitam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人形', 'boneka', 7, 122, 'Sesuatu yang <kanji>orang</kanji> <kanji>berbentuk</kanji> yang bukan orang? Itu pasti semacam <vocabulary>boneka</vocabulary> atau <vocabulary>boneka</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua pembacaan on''yomi, dan pembacaan 形 agak aneh, berikut ini mnemonik untuk membantu Anda:

Tahukah kamu kalau semua <vocabulary>boneka</vocabulary> di <reading>Nin</reading>tendo terbuat dari <reading>gyo</reading>za dumpling (にんぎょう)? Mereka juga akan secara teratur mencoba membuatmu memakannya... Mmmm, boneka gyoza. Jangan takut untuk mencicipinya!', 'Boneka, Wayang')
    RETURNING id INTO v_3420_boneka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手作り', 'buatan-tangan', 7, 123, 'Ketika sesuatu <kanji>tangan</kanji> <kanji>buatan</kanji>, maka itu adalah <vocabulary>buatan tangan</vocabulary>!', 'Bacaan kanji ini adalah bacaan kun''yomi. Anggap saja kata ini sebagai dua kata terpisah yang disatukan (手 dan 作る).る dalam 作る diubah menjadi り karena merupakan kata sifat, dan つ dalam つくり diubah menjadi づ karena cara kata-katanya digabungkan satu sama lain. Anda harus mengetahui sebagian besar bacaan yang ada dalam kata ini, meskipun mungkin perlu sedikit pemikiran untuk memilah perubahan kecil dalam bacaan tersebut.', 'Buatan tangan, Buatan sendiri')
    RETURNING id INTO v_3422_buatan_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '風', 'angin', 7, 124, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Tahukah Anda kata "kamikaze" dari sejarah Perang Dunia II? Artinya "angin ilahi". Bagian "kaze" adalah bagian angin, dan kata ini menggunakan bacaan yang sama, menjadikannya <reading>かぜ</reading> juga.', 'Angin')
    RETURNING id INTO v_3425_angin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '南口', 'pintu-keluar-selatan', 7, 125, 'Setelah mempelajari 北口, 西口, dan 東口, saatnya putaran keempat! Ya, Anda dapat menebaknya, menambahkan <kanji>selatan</kanji> ke 口 akan menghasilkan <vocabulary>pintu keluar selatan</vocabulary> atau <vocabulary>pintu masuk selatan</vocabulary>.', 'Sama seperti 北口 dan lainnya, ini juga menggunakan bacaan kun''yomi. Dan sama seperti sebelumnya, hati-hati dengan rendaku yang berubah くち menjadi ぐち!', 'Pintu Keluar Selatan, Pintu Masuk Selatan, Gerbang Selatan')
    RETURNING id INTO v_3432_pintu_keluar_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大学生', 'mahasiswa-universitas', 7, 126, 'Anda tahu bahwa 学生 berarti "siswa" dan Anda tahu bahwa 大学 berarti universitas/perguruan tinggi. Gabungkan keduanya dan Anda memiliki <vocabulary>mahasiswa</vocabulary> / <vocabulary>mahasiswa</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mahasiswa Universitas, Mahasiswi, Mahasiswa Universitas')
    RETURNING id INTO v_3436_mahasiswa_universitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '言い方', 'cara-mengatakan', 7, 127, 'Anda tahu bahwa 言う berarti "mengatakan", jadi <kanji>cara</kanji> Anda dalam melakukan hal tersebut pastilah <vocabulary>cara Anda mengatakan</vocabulary> sesuatu. Ini mengacu pada pilihan kata dan ungkapan Anda — dengan kata lain, cara <vocabulary>Anda dalam mengungkapkan sesuatu</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari bacaan い dengan 言う, namun かた bukanlah bacaan utama yang Anda pelajari untuk 方, jadi inilah mnemonik untuk membantunya melekat:

<vocabulary>caramu mengatakan</vocabulary> sesuatu seperti <reading>cata</reading>pult (かた) — kamu suka melontarkan mulutmu dan melontarkan kata-kata ke orang seperti senjata proyektil. Cara <vocabulary>Anda yang seperti ketapel dalam menyampaikan sesuatu</vocabulary> membuat banyak orang salah paham, jadi Anda sebaiknya menguranginya. Jika tidak, ANDA mungkin akan dimasukkan ke dalam ketapel oleh teman dan keluarga Anda dan terlempar ke suatu tempat yang jauh.', 'Cara Mengatakan, Cara Menempatkan Sesuatu, Susunan kata')
    RETURNING id INTO v_3437_cara_mengatakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先回り', 'tiba-di-depan', 7, 128, 'Jika Anda sampai di sana <kanji>sebelumnya</kanji> terhadap sesuatu yang berputar (回り), Anda <vocabulary>tiba lebih dulu</vocabulary>, atau <vocabulary>melanjutkan</vocabulary> dalam <vocabulary>antisipasi</vocabulary>.', 'Ini terdiri dari beberapa bacaan kun''yomi yang disatukan. Bisa dibilang itu kun''yomi karena hiragana yang menonjol di bagian akhir. Di level sebelumnya, Anda mempelajari kata 先 dan 回る (versi kata kerja 回り). Jika Anda mengetahuinya, Anda harus bisa menggabungkannya untuk mempelajari cara membaca kata ini juga.', 'Tiba di Depan, Ke Depan, Antisipasi')
    RETURNING id INTO v_3438_tiba_di_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近々', 'dalam-waktu-dekat', 7, 129, 'Ketika sesuatu <kanji>dekat</kanji> <kanji>dekat</kanji> (karakter 々 mengulangi kanji sebelumnya) hal itu akan terjadi <vocabulary>dalam waktu dekat</vocabulary>, atau <vocabulary>segera</vocabulary>. 

Hal ini agak kabur, dan terserah pada orang yang berbicara untuk memutuskan seberapa cepat <vocabulary>segera</vocabulary> itu. Tergantung pada orang dan situasinya, secara teknis dapat digunakan untuk apa pun hingga beberapa tahun!', 'Bacaannya adalah bacaan kun''yomi sebanyak dua kali; itulah yang kamu pelajari dengan vocab kata 近い dari level sebelumnya. Namun, 近 kedua diubah menjadi ぢか, jadi perhatikan itu. Untuk menulis karakter ぢ, ketik "di" pada keyboard Anda.', 'Dalam Waktu Dekat, Segera')
    RETURNING id INTO v_3447_dalam_waktu_dekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '青空', 'langit-biru', 7, 130, 'Ini hanyalah <kanji>biru</kanji> <kanji>langit</kanji> (alias <vocabulary>langit biru</vocabulary>!).', 'Anda mungkin berpikir bahwa kata ini akan menggunakan bacaan on''yomi untuk membacanya, tetapi ternyata tidak (mengacungkan tangan marah itu pada dewa kanji!). Sebaliknya, ini adalah kun''yomi ganda, mungkin karena kata ini benar-benar seperti dua kata terpisah yang disatukan, "biru" dan "langit". Di level sebelumnya Anda membuka kunci dua kata terpisah ini, mempelajari bacaannya. Artinya, Anda juga harus bisa membaca ini. 

Satu catatan singkatnya adalah fiksi rendaku dari 空 juga. Itu menjadi ぞら.', 'Langit Biru')
    RETURNING id INTO v_3448_langit_biru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小学生', 'siswa-sekolah-dasar', 7, 131, 'Anda tahu 学生 adalah pelajar, jadi apa itu murid <kanji>kecil</kanji>? Berpikirlah muda. Itu akan menjadi <vocabulary>Siswa Sekolah Dasar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Siswa Sekolah Dasar, Siswa Sekolah Dasar')
    RETURNING id INTO v_3449_siswa_sekolah_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '作り方', 'cara-membuat', 7, 132, 'Ingat bagaimana 作る berarti "membuat"? Nah, <kanji>cara</kanji> membuat sesuatu disebut juga <vocabulary>cara membuat</vocabulary>. Kata ini dapat digunakan untuk mendeskripsikan <vocabulary>cara membuat</vocabulary> apa saja — sandwich, situs web, atau bahkan teman!', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari bacaan つく dengan 作る, namun かた bukanlah bacaan utama yang Anda pelajari untuk 方, jadi inilah mnemonik untuk membantunya melekat:

Hal terbaik yang bisa Anda ajarkan kepada seseorang <vocabulary>cara membuat</vocabulary> adalah <reading>cata</reading>pult (かた). Ini seperti pepatah lama: berikan ketapel kepada seseorang, dan dia akan mengepung kastil selama sehari; ajari seseorang cara membuat ketapel <kosa kata>, dan dia bisa mengepung kastil seumur hidup.', 'Cara Membuat, Cara Pembuatannya')
    RETURNING id INTO v_3450_cara_membuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中学生', 'siswa-sekolah-menengah', 7, 133, 'Anda pernah melihat 学生 (berarti pelajar). Sekarang mari kita lihat seorang siswa yang berada di tengah. Mungkin kita bisa menyebutnya sebagai <vocabulary>siswa SMP</vocabulary> atau <vocabulary>siswa SMP</vocabulary>, tergantung dari mana Anda berasal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Siswa Sekolah Menengah, Anak smp')
    RETURNING id INTO v_3451_siswa_sekolah_menengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不人気', 'tidak-populer', 7, 134, 'Anda sudah tahu 人気 yang artinya "populer". Dan Anda juga tahu bahwa 不 berarti "tidak". Lalu apa yang Anda dapatkan jika menggabungkan keduanya? Sesuatu yang <vocabulary>tidak populer</vocabulary> atau <vocabulary>tidak populer</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak populer, Tidak Populer')
    RETURNING id INTO v_3452_tidak_populer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '映画', 'film', 7, 135, 'Itu adalah <kanji>refleksi</kanji>ion dari <kanji>gambar</kanji> di layar, dan gambar itu bergerak! Apa ini? Ini adalah <vocabulary>film</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Film, Film')
    RETURNING id INTO v_3595_film;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心理', 'keadaan-mental', 7, 136, '<kanji>penalaran</kanji>dari <kanji>hati</kanji> Anda menentukan apa yang Anda lakukan. Mungkin saat kanji dibuat, orang mengira hatilah yang menentukan tindakan kita, bukan otak kita. Jadi, jika Anda memikirkannya seperti itu, alasan hati Anda adalah <vocabulary>keadaan mental</vocabulary> Anda. Saat ini hal itu dikenal sebagai <vocabulary>psikologi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keadaan Mental, Psikologi')
    RETURNING id INTO v_3709_keadaan_mental;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '切り取る', 'untuk-memotong', 7, 137, 'Jika Anda <kanji>memotong</kanji> dan <kanji>mengambil</kanji> sesuatu, Anda akan langsung memotongnya. Jadi, kata kerjanya adalah <vocabulary>to cut</vocabulary>.', 'Bacaannya berasal dari 切る dan 取る. Jadi, ketahuilah kata-kata itu secara terpisah dan Anda bisa menggabungkannya menjadi kata ini.', 'Untuk Memotong, Untuk Memotong, Untuk Klip')
    RETURNING id INTO v_4070_untuk_memotong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '取り出す', 'untuk-mengambil', 7, 138, 'Ingat bagaimana 取る berarti "mengambil" dan 出す berarti "mengambil"? Nah, kalau keduanya digabungkan, maknanya tetap <vocabulary>to take out</vocabulary>.

Dibandingkan dengan 出す yang mempunyai arti luas, 取り出す terbatas pada tindakan mengeluarkan sesuatu dari suatu tempat. Rasanya sedikit lebih deskriptif daripada 出す — seperti Anda merogoh tas atau laci, <em>mengambil</em> sesuatu di tangan Anda, lalu menariknya keluar.', 'Bacaannya berasal dari kata individual 取る dan 出す. Gabungkan semuanya dan Anda seharusnya bisa membaca kata ini juga.', 'Untuk Mengambil')
    RETURNING id INTO v_4071_untuk_mengambil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '象', 'gajah', 7, 139, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaannya adalah pembacaan kanji ぞう. Anda berada di acara ぞう. Menarik sekali.', 'Gajah')
    RETURNING id INTO v_4721_gajah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時代', 'periode', 7, 140, 'Anda telah mempelajari 代 yang berarti "pengganti", namun bisa juga berarti "titik". Dan <kanji>waktu</kanji> <kanji>periode</kanji> juga disebut <vocabulary>periode</vocabulary> atau <vocabulary>era</vocabulary>. Sederhana!

時代 mengacu pada rentang waktu yang lebih panjang, baik itu periode sejarah, masa sekarang, era berbeda dalam budaya pop, atau tahapan kehidupan pribadi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Periode, Era')
    RETURNING id INTO v_4849_periode;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本当に', 'benar-benar', 7, 141, '本当 adalah <kanji>realitas</kanji> atau <kanji>kebenaran</kanji> (kosa kata level 5). Jika Anda menambahkan に, ini akan mengubah kata tersebut menjadi kata keterangan, dan kita mendapatkan <vocabulary>really</vocabulary> atau <vocabulary>truly</vocabulary>. 当に!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pembacaannya sama dengan 本当 level 5 juga, tapi hanya ada partikel di bagian akhir. Benar-benar!', 'Benar-benar, Sungguh-sungguh')
    RETURNING id INTO v_4877_benar_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '社会', 'masyarakat', 7, 142, 'Jangan bingung dengan 会社, yang merupakan sebuah perusahaan, ini adalah <vocabulary>society</vocabulary>. Ketika <kanji>perusahaan</kanji> <kanji>bertemu</kanji> bersama, itu seperti sekelompok orang, yang berada dalam kelompok, yang berkumpul untuk hidup di satu dunia. Itulah <vocabulary>masyarakat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Masyarakat')
    RETURNING id INTO v_5717_masyarakat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '明日', 'besok', 7, 143, '<kanji>yang cerah</kanji> <kanji>hari</kanji> bukanlah hari ini (karena hari ini sangat buruk), melainkan <vocabulary>besok</vocabulary>, karena Anda selalu dapat menantikan hari esok sebagai hari yang lebih baik dan lebih cerah.', 'Pembacaan あした tidak teratur, meskipun Anda mungkin menganggap bagian あ berasal dari kanji 明. Berikut ini mnemonik untuk membantu Anda mengingat keseluruhan bacaan juga:

Ini akan menjadi hari yang lebih baik dan cerah <vocabulary>besok</vocabulary> karena Anda membuat <reading>ash ta</reading>cos (あした). Mmm, bayangkan rasa taco abu lezat yang akan Anda santap besok.

Catatan: あした adalah cara sehari-hari untuk mengatakan "besok", sedangkan あす adalah versi yang lebih formal yang biasa Anda dengar di laporan berita dan prakiraan cuaca, misalnya.', 'Besok')
    RETURNING id INTO v_5934_besok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜丁目', 'distrik-sebuah-kota', 7, 144, 'Sebuah <kanji>jalan</kanji> yang dapat Anda lihat dengan <kanji>mata</kanji> Anda tidak terlalu besar sehingga Anda tidak dapat melihatnya (seperti kota), namun masih cukup besar karena terdapat jalan. Bagian kota ini adalah <vocabulary>distrik suatu kota</vocabulary>, atau <vocabulary>blok kota</vocabulary> (meskipun secara khusus ukurannya tidak beraturan).', 'Pembacaannya adalah yang Anda pelajari dengan kanji, jadi gunakanlah itu dan Anda akan baik-baik saja.', 'Distrik Sebuah Kota, Blok Kota, Distrik Kota, Daerah')
    RETURNING id INTO v_6237_distrik_sebuah_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '床', 'lantai', 7, 145, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, tapi inilah mnemonik jika Anda memerlukan penyegaran:

Anda melihat ke lantai. Itu menjijikkan. Lantai paling kotor dan paling menjijikkan yang pernah Anda lihat. Anda mengucapkan <reading>yucka</reading> (ゆか) karena tercakup dalam <reading>yucca</reading> (ゆか). Ditambah lagi, semuanya busuk. Yuk!', 'Lantai')
    RETURNING id INTO v_6579_lantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜時', 'jam', 7, 146, 'Jika ada angka sebelum 時, artinya <vocabulary>jam</vocabulary>. Misalnya １時 adalah pukul 1:00, dan ２３時 adalah pukul 23:00 atau 23:00.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Jam')
    RETURNING id INTO v_7461_jam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大きく', 'secara-besar', 7, 147, 'Ini adalah versi keterangan dari kanji <kanji>besar</kanji>. Ini adalah hal kecil yang dapat Anda letakkan di depan sesuatu untuk mengatakan bahwa hal tersebut "<vocabulary>dalam skala besar</vocabulary>" atau "<vocabulary>dalam skala besar</vocabulary>."', 'Karena kamu sudah mengetahui cara membaca kosakata 大きい, kamu seharusnya bisa membaca kata ini juga.', 'Secara Besar, Dalam Skala Besar')
    RETURNING id INTO v_7528_secara_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近く', 'di-dekat', 7, 148, 'Ini adalah versi kata benda dari kanji <kanji>dekat</kanji>. Jadi itu juga berarti <vocabulary>dekat</vocabulary>, atau di <vocabulary>neighborhood</vocabulary> dari sesuatu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 近い, jadi Anda seharusnya bisa membaca kata ini juga.', 'Di dekat, Lingkungan, Sekitarnya, Hampir, Segera')
    RETURNING id INTO v_7529_di_dekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '台風', 'topan', 7, 149, '<kanji>mesin</kanji> yang memompa <kanji>angin</kanji> dapat mengalami kegagalan fungsi dan menghasilkan terlalu banyak, sehingga menyebabkan <vocabulary>topan</vocabulary>. Ini adalah mesin yang sangat kuat untuk mampu menggerakkan angin sebanyak itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Alih-alih だい untuk 台, ini menggunakan bacaan たい. Ingatlah seperti ini:

Saat <vocabulary>topan</vocabulary> datang, Anda harus <reading>mengikat</reading> (たい) semua barang Anda. Atau lho, kalau sudah tahu kata topan juga tidak masalah.', 'Topan, Badai')
    RETURNING id INTO v_7567_topan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '船体', 'lambung-kapal', 7, 150, '<kanji>Badan</kanji> <kanji>perahu</kanji> disebut <vocabulary>hull</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lambung kapal, Lambung Kapal')
    RETURNING id INTO v_7622_lambung_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜号室', 'nomor-kamar', 7, 151, 'Ini adalah penghitung yang dapat digunakan setelah angka untuk memberi tahu Anda <kanji>nomor</kanji> <kanji>ruangan</kanji> itu. Ini adalah <vocabulary>nomor kamar</vocabulary> yang Anda gunakan di apartemen dan hotel untuk mengetahui secara pasti kamar mana yang Anda cari.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nomor Kamar, Akhiran Untuk Nomor Kamar')
    RETURNING id INTO v_7675_nomor_kamar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大空', 'langit', 7, 152, '<kanji>besar</kanji> <kanji>Langit</kanji> bukan sembarang petak langit kuno. Itu adalah <vocabulary>langit</vocabulary> di atas — <vocabulary>langit terbuka</vocabulary> tempat burung terbang, <vocabulary>langit</vocabulary> tempat bintang berkelap-kelip.

Anda sudah mempelajari 空 untuk "langit", bukan? 大空 pada dasarnya memiliki arti yang sama, tetapi dengan arti keagungan dan skala yang lebih puitis. Anda tidak akan banyak mendengarnya dalam percakapan sehari-hari, tetapi Anda akan menemukannya dalam hal-hal seperti sastra, lirik lagu, dan slogan atau tagline untuk media yang berhubungan dengan penerbangan.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri. Ingatlah bahwa そら menjadi ぞら karena rendaku di sini.', 'Langit, Langit Terbuka, Surga')
    RETURNING id INTO v_7676_langit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見当たる', 'untuk-ditemukan', 7, 153, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

見当たる terdiri dari kanji untuk <kanji>lihat</kanji> dan <kanji>kanan</kanji>, jadi apa yang terjadi jika Anda melihat hal yang benar? Ia dapat <vocabulary>ditemukan</vocabulary>! 

Kata ini umumnya digunakan dalam bentuk negatif (見当たらない). Anda dapat menggunakannya sebagai ekspresi tidak langsung ketika Anda tidak dapat menemukan apa yang Anda cari.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Untuk Ditemukan, Untuk Terlihat')
    RETURNING id INTO v_7677_untuk_ditemukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三角形', 'segi-tiga', 7, 154, 'Anda telah mengetahui bahwa 三角 berarti "segitiga". Ini juga berarti <vocabulary>segitiga</vocabulary>, tapi ini istilah matematikanya. Anda harus menggunakannya di kelas matematika.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Segi tiga')
    RETURNING id INTO v_7678_segi_tiga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '活用形', 'bentuk-terkonjugasi', 7, 155, 'Anda mempelajari 活用 sebagai "memanfaatkan", tapi ingat bagaimana kata itu juga bisa berarti "konjugasi" dalam konteks tata bahasa Jepang? Nah, tambahkan itu ke 〜形 (formulir) dan Anda mendapatkan <vocabulary>bentuk terkonjugasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bentuk Terkonjugasi')
    RETURNING id INTO v_7679_bentuk_terkonjugasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一体', 'sial', 7, 156, 'Oke, jadi yang ini aneh sekali, maaf. Masing-masing dari kita hanya mendapatkan <kanji>satu</kanji> <kanji>tubuh</kanji> seumur hidup, bukan? Apa <vocabulary>apa-apaan</vocabulary> ini! Bagaimana jika saya menginginkan lebih dari satu tubuh. Mari kita semua marah tentang hal ini bersama-sama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah karena いち disingkat menjadi いっ di sini!', 'Sial, Di Dunia, Di dunia')
    RETURNING id INTO v_7734_sial;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小声', 'suara-rendah', 7, 157, '<kanji>kecil</kanji> <kanji>suara</kanji> sangat kecil sehingga Anda hampir tidak dapat mendengarnya. Itu adalah <vocabulary>suara rendah</vocabulary> atau <vocabulary>bisikan</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri. Berhati-hatilah karena, seperti di 大声, こえ menjadi ごえ berkat rendaku teman lama kita.', 'Suara Rendah, Berbisik')
    RETURNING id INTO v_7735_suara_rendah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '海王星', 'neptunus', 7, 158, 'Bintang <kanji>samudera</kanji> <kanji>raja</kanji> adalah <vocabulary>Neptunus</vocabulary>! Jika Anda mengetahui sesuatu tentang mitologi Romawi, hal ini pasti mudah diingat!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Neptunus')
    RETURNING id INTO v_8662_neptunus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜以下', 'tidak-lebih-dari', 7, 159, 'Mulailah <kanji>dari</kanji> sesuatu lalu lanjutkan <kanji>di bawah</kanji> itu. Sekarang Anda memiliki "<vocabulary>tidak lebih dari</vocabulary> ___," atau, dengan kata lain, "___ <vocabulary>atau kurang</vocabulary>!"

Bila digunakan dengan angka, 以下 selalu menyertakan nomor itu sendiri, seperti 十人以下 (sepuluh orang atau kurang). Dalam konteks non-numerik, ini bisa berarti "kurang dari" dalam arti yang lebih longgar, seperti お前は犬以下だ (Kamu lebih kecil dari seekor anjing).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tidak Lebih Dari, Atau Kurang')
    RETURNING id INTO v_8663_tidak_lebih_dari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '町民', 'penduduk-kota', 7, 160, '<kanji>Kota</kanji> <kanji>masyarakat</kanji> adalah <vocabulary>penduduk kota</vocabulary>! Ini juga bisa berbentuk tunggal, jadi <vocabulary>townsperson</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penduduk kota, Warga kota, Penduduk kota')
    RETURNING id INTO v_8695_penduduk_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '来週', 'minggu-depan', 7, 161, '<kanji>minggu</kanji> berikutnya</kanji> adalah <vocabulary>minggu depan</vocabulary>. Ini bukan minggu lalu atau minggu ini, ini minggu berikutnya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Minggu Depan')
    RETURNING id INTO v_8698_minggu_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '光る', 'untuk-bersinar', 7, 162, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>cahaya</kanji> atau <kanji>bersinar</kanji>, jadi kata kerjanya adalah <vocabulary>bersinar</vocabulary>, <vocabulary>to flash</vocabulary>, atau <vocabulary>to glitter</vocabulary>. Bayangkan saja apa yang terjadi jika sesuatu memancarkan cahaya!', 'Ingat bagaimana Anda mempelajari bacaan untuk 光? Ya, ini hampir sama. Ubah saja り menjadi る dan Anda akan mengetahui bacaan ini!', 'Untuk Bersinar, Untuk Berkedip, Untuk Berkilau')
    RETURNING id INTO v_8738_untuk_bersinar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '以後', 'setelah-ini', 7, 163, '<kanji>Dari</kanji> <kanji>sesudah</kanji>, berarti <vocabulary>setelah ini</vocabulary> atau <vocabulary>mulai sekarang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Setelah ini, Mulai Sekarang, Setelah, Sejak')
    RETURNING id INTO v_8801_setelah_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一斤', 'satu-roti', 7, 164, '<kanji>Satu</kanji> <kanji>penghitung roti</kanji> menghitung <vocabulary>satu potong roti</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Namun berhati-hatilah dengan pemendekannya!', 'Satu Roti, Satu Roti')
    RETURNING id INTO v_8896_satu_roti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二斤', 'dua-roti', 7, 165, '<kanji>Dua</kanji> <kanji>penghitung roti</kanji> sedang menghitung <vocabulary>dua potong roti</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dua Roti, Dua Roti')
    RETURNING id INTO v_8897_dua_roti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '火星', 'mars', 7, 166, '<kanji>api</kanji> <kanji>bintang</kanji> adalah <vocabulary>Mars</vocabulary>. Hal ini mudah diingat, karena Mars adalah satu-satunya planet di tata surya kita yang memiliki warna api.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mars')
    RETURNING id INTO v_9010_mars;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '木星', 'jupiter', 7, 167, '<kanji>pohon</kanji> <kanji>bintang</kanji> adalah planet <vocabulary>Jupiter</vocabulary>. Bayangkan Jupiter ditumbuhi pepohonan yang sangat aneh — sejenis pohon yang mampu berakar di dalam gas! Ini gambar yang cukup aneh, tapi semoga bisa membantu Anda mengingat kata ini. Alternatifnya, pikirkan bagaimana awan di sekitar Jupiter membuat pola yang sangat mirip dengan butiran kayu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jupiter')
    RETURNING id INTO v_9011_jupiter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人里', 'tempat-tinggal-manusia', 7, 168, '<kanji>kampung halaman</kanji> seseorang adalah <vocabulary>tempat tinggal manusia</vocabulary>, atau <vocabulary>desa</vocabulary>. Kata ini mempunyai kesan agak kuno, dan biasanya digunakan untuk desa-desa kecil di pedesaan.

Kata ini sering digabungkan dengan はなれた (terpisah) untuk menyatakan seberapa jauh suatu tempat berada dari tempat tinggal manusia terdekat.', 'Jukugo ini menggunakan kun''yomi kanji, bukan on''yomi biasa. Anda mempelajari kedua bacaan ini ketika Anda mempelajari kosakata 人 dan 里. Perhatikan saja さと menjadi ざと, karena rendaku.', 'Tempat Tinggal Manusia, Desa')
    RETURNING id INTO v_9042_tempat_tinggal_manusia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜分', 'menit', 7, 169, 'Apa yang dimaksud dengan <kanji>bagian</kanji> dari satu jam? <vocabulary>menit</vocabulary>, atau <vocabulary>menit</vocabulary>! Kata ini adalah versi akhiran dari 分, jadi kata ini diletakkan setelah angka untuk menyatakan berapa menit, dan juga digunakan untuk menunjukkan waktu.', 'Ini menggunakan on''yomi yang berbeda dari apa yang Anda pelajari dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingat bacaan ini:

Berapa <vocabulary>menit</vocabulary> <reading>kesenangan</reading> (ふん) yang akan Anda nikmati hari ini? Banyak sekali menitnya, saya harap!

Tergantung pada angka sebelum 分, pengucapannya bisa berubah menjadi ぷん, karena <a href="https://www.tofugu.com/japanese/rendaku/" target="_blank">rendaku</a>. Kami sedang mencari bacaan aslinya ふん di sini!', 'Menit, Menit')
    RETURNING id INTO v_9070_menit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ナポレオン三世', 'napoleon-yang-ketiga', 7, 170, 'Menambahkan "generasi ketiga" pada nama seseorang berarti mereka adalah generasi ketiga dari orang yang memiliki nama tersebut. Dalam hal ini, nama orang tersebut adalah ナポレオン (Napoleon), jadi ini berarti <vocabulary>Napoleon The Third</vocabulary>, juga ditulis sebagai <vocabulary>Napoleon III</vocabulary>.', 'Kanji di sini diucapkan persis sama dengan kata mandiri 三世. Artinya, itu adalah kata jukugo yang menggunakan on''yomi untuk kedua kanjinya.', 'Napoleon Yang Ketiga, Napoleon III')
    RETURNING id INTO v_9159_napoleon_yang_ketiga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '正月', 'tahun-baru', 7, 171, 'Anda <kanji>mengoreksi</kanji> <kanji>bulan</kanji> karena ini adalah <vocabulary>Tahun Baru</vocabulary>. Ini adalah awal tahun baru, jadi posisi bulan harus benar.

正月 biasanya mengacu pada beberapa hari pertama tahun baru, dan ini adalah salah satu hari libur terbesar di Jepang. Awalnya, ini berarti keseluruhan bulan pertama tahun baru, jadi Anda mungkin masih melihatnya digunakan seperti itu dalam beberapa konteks — terutama konteks sejarah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Kedua kanji ini memiliki beberapa bacaan on''yomi, jadi inilah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Di <vocabulary>Tahun Baru</vocabulary>, kamu membenci <reading>sho</reading>gunmu <reading>nyali</reading> (しょうがつ). Dia tidak merayakan Tahun Baru, jadi tidak ada di antara kalian yang mendapat waktu istirahat. Dia bahkan memulai perang pada Tahun Baru lalu dan merusak liburan semua orang. Pantas saja kamu membenci nyali shogun itu.

Catatan: Karena 正月 digunakan untuk merujuk pada seluruh bulan pertama di tahun baru, ia menggunakan bacaan がつ dari 月 — bacaan yang digunakan untuk nama bulan tertentu.', 'Tahun Baru, Liburan Tahun Baru, Tahun Baru Jepang')
    RETURNING id INTO v_9241_tahun_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仕組み', 'sistem', 7, 172, '<kanji>Melakukan</kanji> sesuatu sebagai <kanji>grup</kanji> memerlukan <vocabulary>sistem</vocabulary>. Tanpa semacam <vocabulary>struktur</vocabulary>, setiap orang melakukan hal mereka sendiri, dan Anda tidak akan pernah bisa menyelesaikan sesuatu secara berkelompok, Anda tahu?

仕組み mengacu pada konsep "mekanisme" atau "sistem". Ini mencakup struktur dasar, organisasi, atau kerangka kerja yang mengatur bagaimana sesuatu bekerja atau beroperasi, menyoroti logika, keteraturan, dan hal-hal lain yang sering kali tidak terlihat.', 'Ini adalah kata dengan kombinasi bacaan yang tidak beraturan. 仕 menggunakan bacaan on''yomi, dan 組 menggunakan bacaan kun''yomi. Berikut ini mnemonik untuk membantu Anda mengingat kombinasi yang tidak biasa ini:

Agar lebih berhasil dalam mengerjakan tugas kelompok, Anda membuat <vocabulary>sistem</vocabulary> yang disebut "<reading>shee</reading>p <reading>cumi</reading>n (しくみ). Mengapa "domba jintan"? Domba dikenal sebagai pemain tim yang baik (atau pemain kawanan, haruskah saya katakan?), jadi Anda hanya menempelkannya pada nama grup yang Anda pimpin, grup jintan, berharap semua orang dapat bekerja sama dengan lebih baik, seperti domba!', 'Sistem, Struktur, Mekanisme')
    RETURNING id INTO v_9278_sistem;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '海水魚', 'ikan-air-asin', 7, 173, 'Anda punya <kanji>laut</kanji> <kanji>air</kanji> <kanji>ikan</kanji>, atau dengan kata lain, <vocabulary>ikan air asin</vocabulary>.

海水魚 mengacu pada ikan yang hidup di laut, bukan ikan air tawar.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ikan Air Asin')
    RETURNING id INTO v_9333_ikan_air_asin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '北国', 'negara-utara', 7, 174, 'Pergilah <kanji>utara</kanji> ke <kanji>negara</kanji>. Sekarang Anda berada di <vocabulary>negara utara</vocabulary>.

北国 digunakan untuk menggambarkan wilayah utara yang cuacanya dingin dan bersalju di musim dingin, seperti Hokkaido atau Tohoku di Jepang atau sebagian Finlandia atau Kanada di luar Jepang.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Untungnya itu adalah bacaan yang sudah Anda pelajari, jadi Anda boleh pergi ke sini. Hati-hati dengan rendaku yang berubah くに menjadi ぐに.', 'Negara Utara')
    RETURNING id INTO v_9350_negara_utara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '西日', 'matahari-sore', 7, 175, '<kanji>barat</kanji> <kanji>matahari</kanji> tentu saja adalah <vocabulary>matahari sore</vocabulary>. 

西日 menggambarkan matahari ketika berada di bagian barat langit. Biasanya mengacu pada matahari sore, namun bisa juga berarti <vocabulary>matahari terbenam</vocabulary> atau <vocabulary>matahari sore</vocabulary>. Pada dasarnya, Anda bisa menggunakannya untuk berjemur atau berjemur dari sore hari hingga matahari terbenam!', 'Kata ini menggunakan bacaan kun''yomi untuk 西 (にし) dan 日 (ひ). Anda pernah melihat bacaan ini sebelumnya, jadi jika Anda ingat bahwa itu adalah kun''yomi maka Anda siap melakukannya! Hati-hati dengan rendaku yang berubah ひ menjadi び.', 'Matahari Sore, Matahari Terbenam, Matahari Sore')
    RETURNING id INTO v_9356_matahari_sore;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東アジア', 'asia-timur', 7, 176, 'Anda memiliki kanji untuk <kanji>timur</kanji> yang dipadukan dengan アジア, kata untuk "Asia" — itulah yang menjadikan <vocabulary>Asia Timur</vocabulary> ini. Bisakah kamu menyebutkan semua negara di 東アジア?', 'Ini menggunakan pembacaan kun''yomi 東, yang telah Anda pelajari, jadi sebaiknya Anda pergi ke sini!', 'Asia Timur')
    RETURNING id INTO v_9357_asia_timur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '明ける', 'sampai-fajar', 7, 177, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu bahwa kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>cerah</kanji>, tetapi versi kosakata kata kerjanya adalah <vocabulary>to fajar</vocabulary>. Cuaca menjadi cerah setiap pagi saat hari baru tiba, jadi hubungannya cukup masuk akal, bukan?

Meskipun 明ける umumnya digunakan bersama 夜 untuk membicarakan fajar menyingsing, 明ける juga sering digunakan untuk membicarakan transisi terkait waktu lainnya. Oleh karena itu, kata ini bisa berarti <vocabulary>berakhir</vocabulary> atau <vocabulary>memulai</vocabulary> tergantung situasinya, seperti dalam 冬休みが明ける (liburan musim dingin berakhir) atau 年が明ける (tahun baru dimulai). Anggap saja seperti fase baru dalam hidup Anda sedang "fajar".', 'Karena kata ini terdiri dari kanji yang dibubuhi hiragana, maka akan menggunakan bacaan kun''yomi. Dalam hal ini, itu adalah あ — sama seperti dalam 明かり — tetapi karena pembacaan kun''yomi 明 bisa jadi sedikit tidak teratur, inilah mnemonik yang dapat membantu Anda:

Saat hari mulai <vocabulary>sampai subuh</vocabulary>, Anda menatap ke langit dan berseru "<reading>ah</reading>" (あ)! Langit fajar begitu indah, dan udara fajar yang segar terasa begitu segar di paru-paru Anda, Anda hanya bisa menghela nafas kegirangan: "ah!"', 'Sampai Fajar, Untuk Mengakhiri, Untuk Memulai')
    RETURNING id INTO v_9375_sampai_fajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '市町村', 'kotamadya', 7, 178, 'Apa kesamaan <kanji>kota</kanji>, <kanji>kota</kanji>, dan <kanji>desa</kanji>? Semuanya adalah <vocabulary>kotamadya</vocabulary>.

市町村 adalah istilah administratif formal yang merujuk secara kolektif pada <kosa kata>kota, kota kecil dan desa</vocabulary>. Kata ini sering digunakan ketika kotamadya merujuk pada pengertian umum — biasanya dengan nuansa "mana saja yang berlaku bagi Anda", seperti dalam 市町村のホームページ (situs web kotamadya setempat).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda seharusnya baik-baik saja dengan 市 dan 町, tetapi Anda tidak mempelajari on''yomi 村 dengan kanji. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Kamu memutuskan untuk melakukan tur ke seluruh <vocabulary>kotamadya</vocabulary> di prefekturmu bersama <reading>putra</reading> (そん) kamu. Ini akan menjadi pengalaman belajar yang luar biasa bagi putra Anda untuk mengunjungi semua <vocabulary>kota besar, kecil dan desa</vocabulary> di area tersebut dan melihat seperti apa masing-masing kota tersebut. Selain itu, ini akan menjadi aktivitas ikatan orangtua-anak yang baik.', 'kotamadya, Kota Dan Kota Dan Desa')
    RETURNING id INTO v_9497_kotamadya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '町内', 'lingkungan', 7, 179, 'Jika Anda menemukan <kanji>kota</kanji> dan masuk <kanji>ke dalamnya</kanji>, Anda akan berakhir di <vocabulary>lingkungan</vocabulary> seseorang.

町内 mengacu pada area di dalam kota atau komunitas tertentu, sering digunakan ketika berbicara tentang kelompok atau aktivitas <vocabulary>lokal</vocabulary>, seperti 町内会 (perkumpulan lingkungan) atau 町内のイベント (acara lokal).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lingkungan, Lokal, Di Dalam Kota')
    RETURNING id INTO v_9501_lingkungan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2599_untuk_membagi_sesuatu, 'Untuk Membagi Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2599_untuk_membagi_sesuatu, 'Untuk Memisahkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2599_untuk_membagi_sesuatu, 'Untuk Berbagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2599_untuk_membagi_sesuatu, 'Untuk Mengklasifikasikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2621_kakak, 'Kakak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2621_kakak, 'Pria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2720_untuk_pengganti, 'Untuk Pengganti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2720_untuk_pengganti, 'Untuk Mengambil Alih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2720_untuk_pengganti, 'Untuk Mengganti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2764_pikiran, 'Pikiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2764_pikiran, 'Sebuah Pemikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2766_cara_berpikir, 'Cara Berpikir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2766_cara_berpikir, 'Proses Berpikir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2822_membentuk, 'Membentuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2822_membentuk, 'Membentuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2910_selatan, 'Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2927_kekurangan, 'Kekurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2927_kekurangan, 'Kesalahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2927_kekurangan, 'Kekurangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2928_tuan, 'Tuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2928_tuan, 'Nyonya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2928_tuan, 'Merindukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2928_tuan, 'Mx', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2929_nama_lengkap, 'Nama Lengkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2929_nama_lengkap, 'Nama Depan Dan Belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2930_kebebasan, 'Kebebasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2930_kebebasan, 'Kebebasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2931_alasan, 'Alasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2931_alasan, 'Motif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2931_alasan, 'Mengizinkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2932_tagihan, 'Tagihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2932_tagihan, 'Catatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2933_uang_seribu_yen, 'Uang Seribu Yen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2933_uang_seribu_yen, 'Catatan Seribu Yen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2934_rakyat, 'Rakyat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2934_rakyat, 'Warga negara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2934_rakyat, 'Nasional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2936_di_sekitar_sini, 'Di Sekitar Sini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2936_di_sekitar_sini, 'Daerah ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2937_untuk_melampirkan_sesuatu, 'Untuk Melampirkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2937_untuk_melampirkan_sesuatu, 'Untuk Melampirkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2938_selain_daripada, 'Selain daripada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2938_selain_daripada, 'Kecuali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2938_selain_daripada, 'Kecuali Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2939_tidak_kurang_dari, 'Tidak Kurang dari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2939_tidak_kurang_dari, 'Atau Lebih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2940_sebelumnya, 'Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2940_sebelumnya, 'Sebelum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2941_kalah, 'Kalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2941_kalah, 'Untuk Berpisah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2941_kalah, 'Kehilangan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2941_kalah, 'Untuk Berpisah Dengan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2942_kasar, 'Kasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2942_kasar, 'Kekasaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2942_kasar, 'Ketidaksopanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2942_kasar, 'Permisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2943_pasti, 'Pasti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2943_pasti, 'Tentu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2943_pasti, 'Tanpa terkecuali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2943_pasti, 'Selalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2943_pasti, 'Tentu saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2944_panik, 'Panik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2944_panik, 'Putus asa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2944_panik, 'Kematian Tertentu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2944_panik, 'Tentu Kematian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2946_masa_depan, 'Masa depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2946_masa_depan, 'Masa Depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2946_masa_depan, 'Masa Depan yang Jauh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2946_masa_depan, 'Masa Depan yang Jauh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2947_akhir, 'Akhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2947_akhir, 'Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2948_akhir_tahun, 'Akhir Tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2948_akhir_tahun, 'Akhir Tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2948_akhir_tahun, 'Akhir Tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2949_akhir_bulan, 'Akhir Bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2949_akhir_bulan, 'Akhir Bulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2950_sekolah_menengah_atas, 'Sekolah menengah atas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2950_sekolah_menengah_atas, 'Sekolah Menengah Atas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2951_sekolah, 'Sekolah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2952_musim_panas, 'Musim panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2953_liburan_musim_panas, 'Liburan Musim Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2953_liburan_musim_panas, 'Liburan Musim Panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2953_liburan_musim_panas, 'Liburan Musim Panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2956_lemah, 'Lemah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2957_titik_lemah, 'Titik Lemah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2957_titik_lemah, 'Kelemahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2958_waktu, 'Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2958_waktu, 'Jam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2959_jam_satu, 'Jam satu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2960_dua_tiga_puluh, 'Dua Tiga Puluh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2960_dua_tiga_puluh, 'Jam Setengah Dua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2961_jam_berapa, 'Jam berapa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2962_waktu_yang_sama, 'Waktu yang sama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2963_kertas, 'Kertas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2964_surat, 'Surat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2965_buku_harian, 'Buku harian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2965_buku_harian, 'Jurnal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2967_lalu_lintas, 'Lalu lintas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2967_lalu_lintas, 'Mengangkut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2967_lalu_lintas, 'Transit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2968_tinggi, 'Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2968_tinggi, 'Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2968_tinggi, 'Mahal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2969_kuat, 'Kuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2970_kuat, 'Kuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2970_kuat, 'Kekuatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2970_kuat, 'Kuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2971_untuk_mengajar, 'Untuk Mengajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2971_untuk_mengajar, 'Untuk Memberitahu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2972_kelas, 'Kelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2973_psikologi, 'Psikologi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2974_geografi, 'Geografi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2975_kelompok, 'Kelompok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2975_kelompok, 'Tim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2975_kelompok, 'Kelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2976_kapal, 'Kapal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2976_kapal, 'Mengirimkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2977_balon, 'Balon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2978_minggu_lalu, 'Minggu lalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2979_minggu_ini, 'Minggu ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2980_akhir_pekan, 'Akhir pekan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2981_salju, 'Salju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2982_ikan, 'Ikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2983_ikan_mas, 'Ikan mas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2985_burung, 'Burung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2986_angsa, 'Angsa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2987_kuning, 'Kuning', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2987_kuning, 'Warna Kuning', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2987_kuning, 'Warna Kuning', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2988_hitam, 'Hitam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2989_orang_kulit_hitam, 'Orang Kulit Hitam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2989_orang_kulit_hitam, 'Orang Kulit Hitam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3420_boneka, 'Boneka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3420_boneka, 'Wayang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3422_buatan_tangan, 'Buatan tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3422_buatan_tangan, 'Buatan sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3425_angin, 'Angin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3432_pintu_keluar_selatan, 'Pintu Keluar Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3432_pintu_keluar_selatan, 'Pintu Masuk Selatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3432_pintu_keluar_selatan, 'Gerbang Selatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3436_mahasiswa_universitas, 'Mahasiswa Universitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3436_mahasiswa_universitas, 'Mahasiswi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3436_mahasiswa_universitas, 'Mahasiswa Universitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3437_cara_mengatakan, 'Cara Mengatakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3437_cara_mengatakan, 'Cara Menempatkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3437_cara_mengatakan, 'Susunan kata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3438_tiba_di_depan, 'Tiba di Depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3438_tiba_di_depan, 'Ke Depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3438_tiba_di_depan, 'Antisipasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3447_dalam_waktu_dekat, 'Dalam Waktu Dekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3447_dalam_waktu_dekat, 'Segera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3448_langit_biru, 'Langit Biru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3449_siswa_sekolah_dasar, 'Siswa Sekolah Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3449_siswa_sekolah_dasar, 'Siswa Sekolah Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3450_cara_membuat, 'Cara Membuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3450_cara_membuat, 'Cara Pembuatannya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3451_siswa_sekolah_menengah, 'Siswa Sekolah Menengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3451_siswa_sekolah_menengah, 'Anak smp', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3452_tidak_populer, 'Tidak populer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3452_tidak_populer, 'Tidak Populer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3595_film, 'Film', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3595_film, 'Film', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3709_keadaan_mental, 'Keadaan Mental', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3709_keadaan_mental, 'Psikologi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4070_untuk_memotong, 'Untuk Memotong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4070_untuk_memotong, 'Untuk Memotong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4070_untuk_memotong, 'Untuk Klip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4071_untuk_mengambil, 'Untuk Mengambil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4721_gajah, 'Gajah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4849_periode, 'Periode', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4849_periode, 'Era', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4877_benar_benar, 'Benar-benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4877_benar_benar, 'Sungguh-sungguh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5717_masyarakat, 'Masyarakat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5934_besok, 'Besok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6237_distrik_sebuah_kota, 'Distrik Sebuah Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6237_distrik_sebuah_kota, 'Blok Kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6237_distrik_sebuah_kota, 'Distrik Kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6237_distrik_sebuah_kota, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6579_lantai, 'Lantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7461_jam, 'Jam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7528_secara_besar, 'Secara Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7528_secara_besar, 'Dalam Skala Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7529_di_dekat, 'Di dekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7529_di_dekat, 'Lingkungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7529_di_dekat, 'Sekitarnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7529_di_dekat, 'Hampir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7529_di_dekat, 'Segera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7567_topan, 'Topan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7567_topan, 'Badai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7622_lambung_kapal, 'Lambung kapal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7622_lambung_kapal, 'Lambung Kapal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7675_nomor_kamar, 'Nomor Kamar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7675_nomor_kamar, 'Akhiran Untuk Nomor Kamar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7676_langit, 'Langit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7676_langit, 'Langit Terbuka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7676_langit, 'Surga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7677_untuk_ditemukan, 'Untuk Ditemukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7677_untuk_ditemukan, 'Untuk Terlihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7678_segi_tiga, 'Segi tiga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7679_bentuk_terkonjugasi, 'Bentuk Terkonjugasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7734_sial, 'Sial', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7734_sial, 'Di Dunia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7734_sial, 'Di dunia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7735_suara_rendah, 'Suara Rendah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7735_suara_rendah, 'Berbisik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8662_neptunus, 'Neptunus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8663_tidak_lebih_dari, 'Tidak Lebih Dari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8663_tidak_lebih_dari, 'Atau Kurang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8695_penduduk_kota, 'Penduduk kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8695_penduduk_kota, 'Warga kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8695_penduduk_kota, 'Penduduk kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8698_minggu_depan, 'Minggu Depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8738_untuk_bersinar, 'Untuk Bersinar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8738_untuk_bersinar, 'Untuk Berkedip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8738_untuk_bersinar, 'Untuk Berkilau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8801_setelah_ini, 'Setelah ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8801_setelah_ini, 'Mulai Sekarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8801_setelah_ini, 'Setelah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8801_setelah_ini, 'Sejak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8896_satu_roti, 'Satu Roti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8896_satu_roti, 'Satu Roti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8897_dua_roti, 'Dua Roti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8897_dua_roti, 'Dua Roti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9010_mars, 'Mars', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9011_jupiter, 'Jupiter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9042_tempat_tinggal_manusia, 'Tempat Tinggal Manusia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9042_tempat_tinggal_manusia, 'Desa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9070_menit, 'Menit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9070_menit, 'Menit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9159_napoleon_yang_ketiga, 'Napoleon Yang Ketiga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9159_napoleon_yang_ketiga, 'Napoleon III', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9241_tahun_baru, 'Tahun Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9241_tahun_baru, 'Liburan Tahun Baru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9241_tahun_baru, 'Tahun Baru Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9278_sistem, 'Sistem', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9278_sistem, 'Struktur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9278_sistem, 'Mekanisme', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9333_ikan_air_asin, 'Ikan Air Asin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9350_negara_utara, 'Negara Utara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9356_matahari_sore, 'Matahari Sore', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9356_matahari_sore, 'Matahari Terbenam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9356_matahari_sore, 'Matahari Sore', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9357_asia_timur, 'Asia Timur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9375_sampai_fajar, 'Sampai Fajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9375_sampai_fajar, 'Untuk Mengakhiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9375_sampai_fajar, 'Untuk Memulai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9497_kotamadya, 'kotamadya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9497_kotamadya, 'Kota Dan Kota Dan Desa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9501_lingkungan, 'Lingkungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9501_lingkungan, 'Lokal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9501_lingkungan, 'Di Dalam Kota', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2599_untuk_membagi_sesuatu, 'わける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2621_kakak, 'おにいさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2720_untuk_pengganti, 'かわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2764_pikiran, 'かんがえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2766_cara_berpikir, 'かんがえかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2822_membentuk, 'かたち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2910_selatan, 'みなみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2927_kekurangan, 'けってん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2928_tuan, 'し', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2929_nama_lengkap, 'しめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2930_kebebasan, 'じゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2931_alasan, 'りゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2932_tagihan, 'さつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2933_uang_seribu_yen, 'せんえんさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2934_rakyat, 'こくみん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2936_di_sekitar_sini, 'このへん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2937_untuk_melampirkan_sesuatu, 'つける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2938_selain_daripada, 'いがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2939_tidak_kurang_dari, 'いじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2940_sebelumnya, 'いぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2941_kalah, 'うしなう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2942_kasar, 'しつれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2943_pasti, 'かならず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2944_panik, 'ひっし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2946_masa_depan, 'みらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2947_akhir, 'すえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2948_akhir_tahun, 'ねんまつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2949_akhir_bulan, 'げつまつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2950_sekolah_menengah_atas, 'こうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2951_sekolah, 'がっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2952_musim_panas, 'なつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2953_liburan_musim_panas, 'なつやすみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2956_lemah, 'よわい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2957_titik_lemah, 'じゃくてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2958_waktu, 'とき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2959_jam_satu, 'いちじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2960_dua_tiga_puluh, 'にじはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2961_jam_berapa, 'なんじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2962_waktu_yang_sama, 'どうじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2963_kertas, 'かみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2964_surat, 'てがみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2965_buku_harian, 'にっき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2967_lalu_lintas, 'こうつう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2968_tinggi, 'たかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2969_kuat, 'つよい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2970_kuat, 'きょうりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2971_untuk_mengajar, 'おしえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2972_kelas, 'きょうしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2973_psikologi, 'しんりがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2974_geografi, 'ちり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2975_kelompok, 'くみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2976_kapal, 'ふね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2977_balon, 'ふうせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2978_minggu_lalu, 'せんしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2979_minggu_ini, 'こんしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2980_akhir_pekan, 'しゅうまつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2981_salju, 'ゆき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2982_ikan, 'さかな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2983_ikan_mas, 'きんぎょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2985_burung, 'とり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2986_angsa, 'はくちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2987_kuning, 'きいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2988_hitam, 'くろい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2989_orang_kulit_hitam, 'こくじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3420_boneka, 'にんぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3422_buatan_tangan, 'てづくり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3425_angin, 'かぜ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3432_pintu_keluar_selatan, 'みなみぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3436_mahasiswa_universitas, 'だいがくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3437_cara_mengatakan, 'いいかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3438_tiba_di_depan, 'さきまわり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3447_dalam_waktu_dekat, 'ちかぢか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3448_langit_biru, 'あおぞら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3449_siswa_sekolah_dasar, 'しょうがくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3450_cara_membuat, 'つくりかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3451_siswa_sekolah_menengah, 'ちゅうがくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3452_tidak_populer, 'ふにんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3595_film, 'えいが', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3709_keadaan_mental, 'しんり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4070_untuk_memotong, 'きりとる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4071_untuk_mengambil, 'とりだす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4721_gajah, 'ぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4849_periode, 'じだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4877_benar_benar, 'ほんとうに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5717_masyarakat, 'しゃかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5934_besok, 'あした', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5934_besok, 'あす', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6237_distrik_sebuah_kota, 'ちょうめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6579_lantai, 'ゆか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7461_jam, 'じ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7528_secara_besar, 'おおきく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7529_di_dekat, 'ちかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7567_topan, 'たいふう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7622_lambung_kapal, 'せんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7675_nomor_kamar, 'ごうしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7676_langit, 'おおぞら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7677_untuk_ditemukan, 'みあたる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7678_segi_tiga, 'さんかくけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7678_segi_tiga, 'さんかっけい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7679_bentuk_terkonjugasi, 'かつようけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7734_sial, 'いったい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7735_suara_rendah, 'こごえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8662_neptunus, 'かいおうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8663_tidak_lebih_dari, 'いか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8695_penduduk_kota, 'ちょうみん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8698_minggu_depan, 'らいしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8738_untuk_bersinar, 'ひかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8801_setelah_ini, 'いご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8896_satu_roti, 'いっきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8897_dua_roti, 'にきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9010_mars, 'かせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9011_jupiter, 'もくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9042_tempat_tinggal_manusia, 'ひとざと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9070_menit, 'ふん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9159_napoleon_yang_ketiga, 'なぽれおんさんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9159_napoleon_yang_ketiga, 'ナポレオンさんせい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9241_tahun_baru, 'しょうがつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9278_sistem, 'しくみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9333_ikan_air_asin, 'かいすいぎょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9350_negara_utara, 'きたぐに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9356_matahari_sore, 'にしび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9357_asia_timur, 'ひがしあじあ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9357_asia_timur, 'ひがしアジア', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9375_sampai_fajar, 'あける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9497_kotamadya, 'しちょうそん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9501_lingkungan, 'ちょうない', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2599_untuk_membagi_sesuatu, 'パスタを二人で分ける。', 'Kami membagi pasta untuk dua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2599_untuk_membagi_sesuatu, '大学用のノートとプライベートのノートを分けよう。', 'Mari pisahkan buku catatan universitas dari buku catatan pribadi Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2599_untuk_membagi_sesuatu, 'ピザを半分に分けるなら、大きい方を下さい。', 'Jika kamu membagi pizzanya, bisakah kamu memberiku setengahnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2621_kakak, 'あの男の人が、山田さんのお兄さんです。', 'Pria itu adalah kakak laki-laki Yamada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2621_kakak, '私のお兄さんは体が大きくて、仕草も男の子らしいです。', 'Kakak laki-laki saya bertubuh besar dan dia juga memiliki sikap yang maskulin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2621_kakak, 'ちょっと、そこのお兄さん！シャツに血がついてますよ！', 'Hai! Bajumu berlumuran darah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2720_untuk_pengganti, 'ジェニーとシフトを代わる。', 'Aku akan bertukar shift dengan Jenny.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2720_untuk_pengganti, 'もしよければ、代わりましょうか。', 'Jika kamu tidak keberatan, bolehkah aku menggantikanmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2720_untuk_pengganti, 'この少年はスティーブ・ジョブズに代わる天才です。', 'Bocah ini jenius untuk menggantikan Steve Jobs.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2764_pikiran, '大学に入学する考えはありません。', 'Saya tidak punya pemikiran untuk melanjutkan kuliah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2764_pikiran, 'それは自分の考えですか？それともご主人の考えですか？', 'Apakah itu pemikiranmu sendiri? Atau itu pemikiran suamimu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2764_pikiran, 'あなたの考えを百円で買わせてもらえませんか？', 'Bisakah saya membeli pemikiran Anda seharga 100 yen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2766_cara_berpikir, '考え方は、人それぞれです。', 'Orang mempunyai cara berpikirnya masing-masing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2766_cara_berpikir, '元パートナーと私は、考え方が同じだった。', 'Saya dan mantan saya memiliki cara berpikir yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2766_cara_berpikir, 'その考え方で、日本社会のヒーローになれるとでも本当に思ってるんですか？', 'Apakah Anda benar-benar berpikir bahwa Anda bisa menjadi pahlawan masyarakat Jepang dengan cara berpikir seperti itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2822_membentuk, '今日のおにぎりの形は丸です。', 'Bentuk kepal nasi jaman sekarang adalah bulat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2822_membentuk, 'ふじ山の形は、左右同じで、とてもきれいです。', 'Bentuk Gunung Fuji sama di kedua sisinya dan sangat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2822_membentuk, 'この花、魚みたいな形をしていますね。', 'Bunga ini berbentuk seperti ikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2910_selatan, '南に山がある。', 'Ada sebuah gunung di selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2910_selatan, '入り口は南の方にあります。', 'Pintu masuknya ada di selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2910_selatan, '南の国に行きたいなぁ。', 'Saya ingin pergi ke negara selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2927_kekurangan, 'このテレビにも、欠点は一つだけあります。', 'TV ini juga hanya memiliki satu kekurangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2927_kekurangan, '今年、日本へ行くことについて、欠点は有りますか？', 'Apakah ada kekurangannya pergi ke Jepang tahun ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2927_kekurangan, 'あなたみたいなパーフェクトな人に、欠点なんてあるんですか？', 'Apakah ada kekurangan pada orang sempurna sepertimu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2928_tuan, 'ビル・ゲイツ氏はシアトルの生まれです。', 'Tuan Bill Gates lahir di Seattle.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2928_tuan, '田中氏は、いつまでも来ませんでした。', 'Tuan Tanaka tidak pernah datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2928_tuan, 'これがスウィフト氏からの手紙です。', 'Ini adalah surat dari Ms. Swift.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2929_nama_lengkap, '氏名を入力して下さい。', 'Silakan masukkan nama lengkap Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2929_nama_lengkap, 'これは、主人の氏名です。', 'Ini adalah nama depan dan belakang suamiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2929_nama_lengkap, 'このリストには、あなたの氏名も入ってます。', 'Daftar ini juga memiliki nama Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2930_kebebasan, '私には今日休む自由がある。', 'Saya memiliki kebebasan untuk mengambil hari libur hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2930_kebebasan, '子どもが自立し、母も父も自由を手に入れた。', 'Anak itu menjadi mandiri, dan ibu serta ayahnya memperoleh kebebasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2930_kebebasan, 'フィリピンに行くかどうかは、あなたの自由ですよ。', 'Itu adalah kebebasan Anda untuk pergi ke Filipina atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2931_alasan, '理由は有りません。', 'Tidak ada alasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2931_alasan, '休学の理由は分かりません。', 'Saya tidak tahu alasan cuti tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2931_alasan, '理由は分かりませんが、主人が今すぐ海外に行かなければいけないと言ってるんです。', 'Aku tidak tahu kenapa, tapi suamiku bilang dia harus pergi ke luar negeri sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2932_tagihan, 'おつりは、全て千円札でもらえますか？', 'Bisakah saya mendapatkan kembaliannya dalam pecahan 1.000 yen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2932_tagihan, '百ドル札でもいいですか？', 'Bolehkah menggunakan uang seratus dolar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2932_tagihan, '一万円札しかないんです。', 'Saya hanya punya uang 10.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2933_uang_seribu_yen, '千円札のおつりが不足しています。', 'Kami tidak mempunyai cukup uang ribuan yen untuk kembalian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2933_uang_seribu_yen, '千円札で宝くじを三口買いました。', 'Saya membeli tiga tiket lotre dengan uang seribu yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2933_uang_seribu_yen, 'このUFOキャッチャーは千円札が使えません。', 'Permainan derek ini tidak menerima uang ribuan yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2934_rakyat, '私は、日本の国民です。', 'Saya warga negara Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2934_rakyat, '３６５日全てを休みにするというのは、国民のアイディアでした。', 'Itu adalah ide masyarakat untuk menjadikan seluruh 365 hari libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2934_rakyat, '八月十日は山の日です。山の日は、日本の国民の休日です。', '10 Agustus adalah Hari Gunung. Mountain Day adalah hari libur bagi warga negara Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2936_di_sekitar_sini, 'この辺は、人が少ないです。', 'Tidak banyak orang di kawasan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2936_di_sekitar_sini, 'この辺に、おすすめのレストランはありますか？', 'Apakah ada restoran yang Anda rekomendasikan di area ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2936_di_sekitar_sini, 'あなたの会社は、この辺ですか？', 'Apakah perusahaan Anda ada di sekitar sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2937_untuk_melampirkan_sesuatu, 'ホットドッグにケチャップ付ける？', 'Apakah Anda ingin menambahkan saus tomat ke dalam hotdog Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2937_untuk_melampirkan_sesuatu, 'お母さんは手首に金のブレスレットを付けていました。', 'Ibuku memakai gelang emas di pergelangan tangannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2937_untuk_melampirkan_sesuatu, 'コウイチは、犬に「ニッカ」という名を付けました。', 'Koichi menamai anjing itu "Nikka".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2938_selain_daripada, 'ビール以外のアルコール下さい。', 'Tolong beri saya alkohol selain bir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2938_selain_daripada, 'マンガ以外は日本の本が有りません。', 'Tidak ada buku Jepang kecuali manga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2938_selain_daripada, '今すぐ行く以外に、私に何か出来ることがありますか？', 'Apakah ada hal lain yang bisa saya lakukan selain pergi ke sana sekarang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2939_tidak_kurang_dari, '一万円以上のホテルでもいいですよ。', 'Saya baik-baik saja dengan hotel yang harganya sepuluh ribu yen atau lebih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2939_tidak_kurang_dari, 'え、一万円以上するシャンプーなんてあるの！？', 'Apa!? Ada sampo yang harganya 10.000 yen atau lebih!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2939_tidak_kurang_dari, '車だと、ケベックまで10時間以上かかりますよ。', 'Dengan mobil, dibutuhkan sepuluh jam atau lebih untuk sampai ke Quebec.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2940_sebelumnya, 'あの男の人は、以前会ったことがある人です。', 'Pria itu adalah seseorang yang pernah kutemui sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2940_sebelumnya, '以前は、シドニーによく来ていました。', 'Sebelumnya, saya sering datang ke Sydney.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2940_sebelumnya, '２０００年以前のアクティブファンドのパフォーマンスは、今よりずっといいんですよ。', 'Kinerja dana aktif sebelum tahun 2000 jauh lebih baik dibandingkan sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2941_kalah, 'そんなにジャンプすると体力を失うよ。', 'Jika Anda melompat sebanyak itu, Anda akan kehilangan kekuatan fisik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2941_kalah, '今年は、ギャンブルでたくさんのお金を失った。', 'Tahun ini, saya kehilangan banyak uang karena berjudi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2941_kalah, '父を失った日から、よく空を見るようになりました。', 'Sejak aku kehilangan ayahku, aku mulai sering melihat ke langit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2942_kasar, 'なんて失礼な男だ。', 'Pria yang kasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2942_kasar, '失礼ですが、年はいくつですか？', 'Maaf jika ini tidak sopan, tapi berapa umurmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2942_kasar, 'では、お先に失礼します。', 'Aku permisi dulu sebelum kamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2943_pasti, '必ず毎日歩くことが大切です。', 'Penting untuk memastikan berjalan kaki setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2943_pasti, '次のクラスは、必ず来てください。', 'Harap pastikan untuk datang ke kelas berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2943_pasti, '死ぬ前に、必ずワニカニをコンプリートします。', 'Saya pasti akan menyelesaikan WaniKani sebelum saya mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2944_panik, 'お母さんは、ダイエットに必死だ。', 'Ibu sangat ingin menurunkan berat badan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2944_panik, '必死に走ったが、バスはもう出てしまった。', 'Aku berlari sekuat tenaga, tapi busnya sudah berangkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2944_panik, '必死のプロポーズだったが、ダメだった。', 'Itu adalah usulan yang putus asa, namun tidak berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2946_masa_depan, '未来のことは分かりません。', 'Saya tidak tahu masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2946_masa_depan, 'タイムスリップできるなら、未来に行きたいな。', 'Jika saya bisa melakukan perjalanan waktu, saya ingin pergi ke masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2946_masa_depan, '今の日本の子の未来は明るいといいな。', 'Saya berharap masa depan anak-anak Jepang saat ini cerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2947_akhir, '休学の末、私は九州で社長になりました。', 'Setelah cuti, saya menjadi presiden perusahaan di Kyushu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2947_akhir, 'AIがこんな文も作れるなんて、ライターの私にとっては、世も末ですよ。', 'Bagi saya, sebagai penulis, ini adalah akhir dunia bahwa AI dapat membuat kalimat seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2947_akhir, '末の妹は、まだ五才です。', 'Adik bungsuku masih berusia lima tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2948_akhir_tahun, '日本では年末にソバを食べます。', 'Di Jepang, kami makan mie soba di akhir tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2948_akhir_tahun, '年末は、町の中に活気があふれます。', 'Di penghujung tahun, kota ini penuh dengan kehidupan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2948_akhir_tahun, '年末は、一年分のクリーニングをする文化があります。', 'Di penghujung tahun, ada budaya bersih-bersih sepanjang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2949_akhir_bulan, '月末までに、このアパートを出ます。', 'Pada akhir bulan, saya akan meninggalkan apartemen ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2949_akhir_bulan, 'パーティーは月末です。', 'Pestanya di akhir bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2949_akhir_bulan, 'バイトのお金は月末に入ります。', 'Uang dari pekerjaan paruh waktu masuk pada akhir bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2950_sekolah_menengah_atas, '高校まで、車で行けば十分ですよ。', 'Hanya membutuhkan waktu 10 menit untuk sampai ke sekolah menengah jika Anda berkendara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2950_sekolah_menengah_atas, 'うちの妹は、今年高校二年生です。来年、大学の入学テストが有ります。', 'Adik perempuan saya duduk di bangku sekolah menengah pertama tahun ini. Tahun depan akan ada tes masuk universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2950_sekolah_menengah_atas, '高校の時は、地理や科学のことが、あまりよく分かりませんでした。', 'Ketika saya masih di sekolah menengah, saya tidak terlalu memahami geografi dan sains.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2951_sekolah, '平日は学校に行きます。', 'Saya pergi ke sekolah pada hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2951_sekolah, 'レイチェルは私の学校の友人です。', 'Rachel adalah teman sekolahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2951_sekolah, '私の学校は、三年生のクラスが四組あります。', 'Di sekolah saya, ada empat kelompok kelas untuk siswa kelas tiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2952_musim_panas, '夏と言えば、生ビールと花火です。', 'Yang mengingatkan saya pada musim panas adalah bir dan kembang api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2952_musim_panas, '夏は、かき氷を一日二つ食べることもあります。', 'Di musim panas, terkadang saya makan dua mangkuk es serut sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2952_musim_panas, '1900年の夏のオリンピックはパリで行われました。', 'Olimpiade Musim Panas 1900 diadakan di Paris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2953_liburan_musim_panas, '七月と八月は夏休みです。', 'Juli dan Agustus adalah liburan musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2953_liburan_musim_panas, '夏休み中に、たくさんゲームをしました。', 'Saya banyak bermain game selama liburan musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2953_liburan_musim_panas, '夏休みは、毎年四国のおばあちゃんの家に行きます。', 'Selama liburan musim panas, saya pergi ke rumah nenek saya di Shikoku setiap tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2956_lemah, '父は体が弱いんです。', 'Ayah saya lemah secara fisik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2956_lemah, '手と足の力が弱くても、バドミントン上手になれますよ。', 'Sekalipun kekuatan tangan dan kaki Anda lemah, Anda tetap bisa mahir dalam bulutangkis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2956_lemah, '弱い火の光でも、辺りが少し明るくなりました。', 'Bahkan dengan nyala api kecil, sekelilingnya menjadi sedikit lebih terang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2957_titik_lemah, '虫がキライなことが、私の弱点です。', 'Kelemahan saya adalah saya tidak tahan dengan serangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2957_titik_lemah, '弱点をなくすために、毎日エクササイズしました。', 'Saya berolahraga setiap hari untuk menghilangkan kelemahan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2957_titik_lemah, '二人は、弱点をカバーし合った。', 'Keduanya saling menutupi kelemahan masing-masing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2958_waktu, 'あの時、父は五十才だったと思います。', 'Saat itu, saya kira ayah saya berusia 50 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2958_waktu, '小さかった時、何かスポーツはしていましたか？', 'Apakah Anda melakukan olahraga apa pun ketika Anda masih kecil?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2958_waktu, '「時を止めて下さい」と天を向いて言いました。', '"Tolong hentikan waktunya," katanya ke arah surga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2959_jam_satu, 'ランチは午後一時に食べます。', 'Saya makan siang pada pukul satu siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2959_jam_satu, '一時までにメールをいただけますか？', 'Bisakah Anda mengirim email kepada saya paling lambat jam satu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2959_jam_satu, '午前一時に家に来るなんて、おかしいですよ。', 'Tidaklah normal mengunjungi rumah seseorang pada jam satu pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2960_dua_tiga_puluh, '今、もう二時半ですよ。', 'Sekarang sudah jam 2:30.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2960_dua_tiga_puluh, '今日は二時半から科学のクラスです。', 'Hari ini, saya ada kelas sains pada pukul 2:30.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2960_dua_tiga_puluh, '次の山形行きのバスは、二時半です。', 'Bus berikutnya ke Yamagata berangkat pukul 02.30.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2961_jam_berapa, 'ニューヨーク行きのフライトは何時ですか？', 'Jam berapa penerbangan ke New York?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2961_jam_berapa, '毎日、何時に学校に行きますか？', 'Jam berapa kamu pergi ke sekolah setiap hari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2961_jam_berapa, '五日のデートは、目黒で何時に会う？', 'Untuk kencan kita tanggal 5, jam berapa kita akan bertemu di Meguro?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2962_waktu_yang_sama, '二つのライトが同時に明るくなった。', 'Kedua lampu itu menjadi terang pada saat bersamaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2962_waktu_yang_sama, 'すみません。ドッグシッターとベビーシッターは同時にできません。', 'Saya minta maaf. Saya tidak bisa mengasuh anjing dan mengasuh bayi secara bersamaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2962_waktu_yang_sama, '先生が教室に入ると同時に、チャイムの音がしました。', 'Pada saat yang sama ketika guru memasuki kelas, terdengar bunyi lonceng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2963_kertas, '紙とペンをテーブルの上に出してください。', 'Letakkan kertas dan pena di atas meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2963_kertas, '日本の一万円札は紙のお金です。', 'Uang kertas 10.000 yen Jepang adalah uang yang terbuat dari kertas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2963_kertas, 'これが、紙と糸を用いた人形の作り方です。', 'Inilah cara membuat boneka menggunakan kertas dan benang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2964_surat, 'それは、父からの手紙です。', 'Itu adalah surat dari ayahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2964_surat, '切手が足りなかったのか、学校からの手紙が中々来ません。', 'Mungkin prangkonya tidak cukup. Surat dari sekolah masih belum sampai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2964_surat, '外国への手紙の出し方を教えてくれませんか？', 'Bisakah Anda mengajari saya cara mengirimkan surat ke luar negeri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2965_buku_harian, 'テーブルの上の日記は見ないで下さい。', 'Tolong jangan melihat buku harian di atas meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2965_buku_harian, '毎日、日記をかくのに三十分くらいかかります。', 'Dibutuhkan sekitar 30 menit untuk menulis jurnal setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2965_buku_harian, 'この日記のカバーは一万円でした。', 'Sampul buku harian ini seharga 10.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2967_lalu_lintas, '車の交通に十分と気をつけて下さい。', 'Harap berhati-hati dengan lalu lintas mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2967_lalu_lintas, '交通安全のためにシートベルトをしてください。', 'Harap kenakan sabuk pengaman Anda untuk keselamatan lalu lintas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2967_lalu_lintas, 'この町の交通のオプションは、バスとタクシーです。', 'Pilihan transportasi di kota ini adalah bus dan taksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2968_tinggi, 'あの高いビルの中に本社があります。', 'Ada markas besarnya di gedung tinggi di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2968_tinggi, 'この車は高いですが、デザインがいいです。', 'Mobil ini mahal, tapi desainnya bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2968_tinggi, 'ビジネススーツに百万円は、高すぎるよ。', 'Satu juta yen untuk setelan bisnis terlalu mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2969_kuat, '全日本の女子バレーチームは、中々強い', 'Semua tim voli putri Jepang kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2969_kuat, '同点だったということは、両方強いチームだったということだ。', 'Fakta bahwa skornya seri berarti kedua tim kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2969_kuat, '風が強いから、今日は外に出るのはやめた方がいい。', 'Hari ini sangat berangin, jadi lebih baik jangan keluar hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2970_kuat, 'このヘアドライヤーは、かなり強力だ。', 'Pengering rambut ini cukup bertenaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2970_kuat, '強力なスプレーで虫は全て死にました。', 'Semua serangga mati dengan semprotan yang kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2970_kuat, 'ピカチュウはレベルアップして、強力になった。', 'Pikachu naik level dan memiliki kekuatan lebih sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2971_untuk_mengajar, '私はいつも子どもに「ありがとう」と言う大切さを教える。', 'Saya selalu mengajari anak saya pentingnya mengucapkan "terima kasih".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2971_untuk_mengajar, '海外生活の仕方を教えて下さい。', 'Tolong beritahu saya bagaimana cara tinggal di luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2971_untuk_mengajar, '地理の先生が、火山の見分け方を教えてくれました。', 'Guru geografi mengajari saya cara membedakan gunung berapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2972_kelas, 'ここは、一年生の教室ですよ。', 'Ini adalah ruang kelas untuk siswa kelas satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2972_kelas, '代わりの先生が中々教室に来ません。', 'Guru pengganti masih belum datang ke kelas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2972_kelas, '今日は、マフィンを作るための教室に行きます。', 'Hari ini, saya pergi ke kelas untuk membuat muffin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2973_psikologi, '次は、心理学のクラスです。', 'Berikutnya adalah kelas psikologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2973_psikologi, '心理学では、人の心を学びます。', 'Dalam psikologi, Anda belajar tentang hati manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2973_psikologi, '心理学を活用して、人とのコミュニケーションが上手になりたいです。', 'Saya ingin memanfaatkan psikologi untuk berkomunikasi dengan orang lebih baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2974_geografi, '地理を学ぶために大学へ行きました。', 'Saya kuliah untuk belajar geografi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2974_geografi, '地理の本の中で、火山や川についても学びました。', 'Di buku geografi, saya juga belajar tentang gunung berapi dan sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2974_geografi, 'すみません、この辺の地理は分からないんです。', 'Maaf, saya tidak tahu jalan di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2975_kelompok, '九人を三組のグループに分けた。', 'Saya membagi sembilan orang menjadi tiga kelompok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2975_kelompok, 'あなた、三年二組のコウイチくん？', 'Apakah kamu Koichi dari kelas tiga kelas dua?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2975_kelompok, 'この男は、有名なヤクザの組のリーダーですよ。', 'Pria ini adalah pemimpin organisasi yakuza terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2976_kapal, 'こちらは四国に行く船です。', 'Ini adalah perahu menuju Shikoku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2976_kapal, '次の船は、何時に出ますか？', 'Jam berapa kapal selanjutnya berangkat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2976_kapal, '船の上から見る日の出はきれいです。', 'Matahari terbit yang dilihat dari atas kapal sungguh indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2977_balon, '空に、たくさんの風船が見えます。', 'Anda dapat melihat banyak balon di langit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2977_balon, 'あのピエロが、風船で犬を作ってくれたんだ。', 'Badut itu membuatkan seekor anjing dari balon untukku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2977_balon, 'バランスボールかと思って上に立ったら、ただの大きな風船だったんです。', 'Saya pikir itu adalah bola keseimbangan jadi saya berdiri di atasnya dan menyadari itu hanyalah sebuah balon besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2978_minggu_lalu, '先週は、私の会社はお休みでした。', 'Minggu lalu, perusahaan saya tutup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2978_minggu_lalu, '大きくなったねー。先週はまだあんなに小さかったのに。', 'Anda yakin telah berkembang pesat! Kamu masih kecil minggu lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2978_minggu_lalu, '先週のクラス休んじゃったから、ノート見せてくれない？', 'Bisakah Anda menunjukkan buku catatan Anda karena saya tidak masuk kelas minggu lalu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2979_minggu_ini, '今週は大きなテストがあります。', 'Ada ujian besar minggu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2979_minggu_ini, '今週は、ずっと雨のようです。', 'Sepertinya akan turun hujan sepanjang minggu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2979_minggu_ini, 'ミーティングは、今週でもいいですか？', 'Apakah boleh mengadakan pertemuan minggu ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2980_akhir_pekan, '週末は、ベッドかソファの上にいます。', 'Di akhir pekan, saya berada di tempat tidur atau sofa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2980_akhir_pekan, '週末はゆっくり休んで、体力をセーブしたいと思います。', 'Saya ingin beristirahat di akhir pekan dan menghemat energi fisik saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2980_akhir_pekan, '週末に友人と川に行きます。', 'Saya akan pergi ke sungai bersama teman-teman saya di akhir pekan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2981_salju, '雪を見たことがありますか？', 'Pernahkah Anda melihat salju?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2981_salju, '外に出ると白い雪が広がっていました。', 'Saat saya keluar, ada salju putih dimana-mana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2981_salju, '毎年十二月に雪山にスキーしに行きます。', 'Setiap tahun di bulan Desember, saya pergi ke pegunungan bersalju untuk bermain ski.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2982_ikan, 'これは、「コイ」と言う名の魚です。', 'Ini adalah ikan yang disebut "koi".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2982_ikan, '魚を切るのが下手です。', 'Saya tidak pandai memotong ikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2982_ikan, '日本では生の魚を食べます。', 'Di Jepang, orang makan ikan mentah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2983_ikan_mas, 'これは、金魚ですか？コイですか？', 'Apakah ini ikan mas? Apakah itu ikan mas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2983_ikan_mas, '赤と白の点が入ってる金魚を下さい。', 'Tolong beri saya ikan mas dengan titik-titik merah dan putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2983_ikan_mas, '川に、金魚はいますか？', 'Apakah ada ikan mas di sungai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2985_burung, 'あの鳥は、アメリカンイーグルです。', 'Burung itu adalah elang Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2985_burung, '空にいる鳥が点のように見えます。', 'Burung-burung di langit tampak seperti titik-titik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2985_burung, 'お父さん、車に鳥のフンがついてるよ。', 'Ayah, ada kotoran burung di mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2986_angsa, '白鳥の羽は、白くてきれいです。', 'Sayap angsa berwarna putih dan indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2986_angsa, '毎年、近くの川に白鳥がたくさん来ます。', 'Setiap tahun, banyak angsa datang ke sungai terdekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2986_angsa, '白鳥の他にも、アヒルがいますね。', 'Selain angsa, ada juga bebek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2987_kuning, '私のレインコートは黄色です。', 'Jas hujanku berwarna kuning.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2987_kuning, 'その草地には黄色の花がたくさん生えています。', 'Ada banyak bunga kuning yang tumbuh di padang rumput.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2987_kuning, 'お母さんが黄色いシャツを着ています。', 'Ibuku mengenakan kemeja kuning.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2988_hitam, '黒いペン、下さい。', 'Tolong, pena hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2988_hitam, 'プロムには黒いドレスで行こうと思う。', 'Aku sedang berpikir untuk pergi ke pesta prom dengan gaun hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2988_hitam, 'ペットの犬の毛が黒いので、うちには白い羊毛のセーターが有りません。', 'Karena bulu anjing peliharaan kami berwarna hitam, kami tidak memiliki sweter wol berwarna putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2989_orang_kulit_hitam, 'トロントには、大きな黒人のコミュニティがあります。', 'Toronto memiliki komunitas besar orang kulit hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2989_orang_kulit_hitam, '日本には、まだまだ黒人用のシャンプーやファンデーションが少ない。	', 'Shampo dan alas bedak untuk orang kulit hitam di Jepang masih belum banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2989_orang_kulit_hitam, '母は黒人で、父はアジア人です。	', 'Ibu saya berkulit hitam dan ayah saya orang Asia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3420_boneka, 'これは私の妹の人形です。', 'Ini boneka adik perempuanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3420_boneka, '小さい時、中古の人形をコレクションしていました。', 'Ketika saya masih kecil, saya mengoleksi boneka bekas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3420_boneka, 'その女の子は、バービー人形、メルちゃん人形、リカちゃん人形、全ての人形を自分の子のように大切にしています。', 'Gadis itu menyayangi semua bonekanya — ​​boneka Barbie, boneka Mel-chan, dan boneka Rika-chan — seolah-olah mereka adalah anaknya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3422_buatan_tangan, 'このテーブルは、林さんの手作りです。', 'Meja ini buatan tangan oleh Hayashi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3422_buatan_tangan, '友人が手作りのプレゼントをくれました。', 'Seorang teman memberi saya hadiah buatan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3422_buatan_tangan, 'このレストランでは手作りのパスタが人気です。', 'Pasta buatan tangan sangat populer di restoran ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3425_angin, '今日は、少し風がありますね。', 'Ada sedikit angin hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3425_angin, '南向きの風がふいています。', 'Angin bertiup ke arah selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3425_angin, '今日は、台風が近くに来ているせいで、風が強いです。', 'Angin kencang hari ini karena topan mendekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3432_pintu_keluar_selatan, '南口から出るとすぐにお茶の店があります。', 'Segera setelah Anda keluar dari pintu keluar selatan, ada toko teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3432_pintu_keluar_selatan, '来年の夏には南口にコンビニができるらしい。', 'Tampaknya akan ada toko serba ada di pintu keluar selatan musim panas mendatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3432_pintu_keluar_selatan, '南口のベンチは、おばあちゃんとおじいちゃんに人気のデートスポットです。', 'Bangku di pintu keluar selatan adalah tempat kencan populer bagi nenek dan kakek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3436_mahasiswa_universitas, 'ここのスタッフは大体、大学生です。', 'Sebagian besar staf di sini adalah mahasiswa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3436_mahasiswa_universitas, '大学生は休学する人が多いです。', 'Banyak mahasiswa yang mengambil cuti dari sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3436_mahasiswa_universitas, 'アメリカの大学生の生活を知ってますか？', 'Tahukah Anda kehidupan seorang mahasiswa Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3437_cara_mengatakan, '先生が「すみません」の言い方を正してくれました。', 'Guru mengoreksi cara saya mengatakan "Permisi."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3437_cara_mengatakan, 'その言い方は失礼だと思います。', 'Menurutku cara bicara seperti itu tidak sopan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3437_cara_mengatakan, '「ありがとう」の言い方で、その人の生まれが分かります。', 'Anda akan mengetahui dari mana mereka berasal dari cara mereka mengucapkan "Terima kasih".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3438_tiba_di_depan, 'パトカーは先回りして白い車に向かった。', 'Polisi melanjutkan dan menuju ke mobil putih itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3438_tiba_di_depan, '先回りして、夜ごはんは作っておいたよ。', 'Saya pergi ke depan dan membuat makan malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3438_tiba_di_depan, '社長は、先回りして色々なことを行える人です。', 'Presiden perusahaan adalah orang yang dapat melakukan berbagai hal ke depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3447_dalam_waktu_dekat, '近々、会いましょう。', 'Ayo segera bertemu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3447_dalam_waktu_dekat, '近々、赤ちゃんが生まれます。', 'Seorang bayi akan segera lahir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3447_dalam_waktu_dekat, '近々、中国に行きますよ。', 'Saya akan segera pergi ke Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3448_langit_biru, '今日は青空が広がっている。', 'Langit biru terhampar hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3448_langit_biru, '青空の下で花見をしました。', 'Kami melihat bunga sakura di bawah langit biru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3448_langit_biru, '五月は青空の日が多いですね。', 'Banyak hari di bulan Mei yang langitnya biru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3449_siswa_sekolah_dasar, 'その兄弟は、まだ二人とも小学生です。', 'Kedua kakak beradik itu masih berstatus siswa sekolah dasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3449_siswa_sekolah_dasar, '小学生の時から、ずっとバスケットボールをしています。', 'Saya telah bermain basket sejak saya masih duduk di bangku sekolah dasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3449_siswa_sekolah_dasar, '小学生の時、石ころとビー玉は、友人みたいなものでした。', 'Saat saya masih SD, batu dan kelereng sudah seperti teman saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3450_cara_membuat, 'このマカロニチーズの作り方は正しいですか？', 'Apakah ini cara membuat makaroni keju yang benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3450_cara_membuat, 'カレーの作り方を教えて下さい。', 'Tolong ajari saya cara membuat kari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3450_cara_membuat, '作り方が分からない時は、インターネットでチェックしましょう。', 'Bila Anda tidak tahu cara membuatnya, periksa di Internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3451_siswa_sekolah_menengah, '私の子は、今中学生です。', 'Anak saya sekarang sudah duduk di bangku SMP.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3451_siswa_sekolah_menengah, 'これは中学生のときの作文です。', 'Ini adalah esai yang saya tulis ketika saya masih di SMP.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3451_siswa_sekolah_menengah, '中学生向けのピアノのコンクールに出ました。', 'Saya mengikuti kompetisi piano untuk siswa SMP.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3451_siswa_sekolah_menengah, '大山先生は、中学生の時の先生です。', 'Oyama-sensei adalah guruku sejak aku masih duduk di bangku SMP.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3452_tidak_populer, '今年、不人気だったアニメは有りますか？', 'Apakah ada anime yang tidak populer tahun ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3452_tidak_populer, '日本では不人気なバンドですが、私は、あの曲は名曲だと思います。', 'Itu adalah band yang tidak populer di Jepang, tapi menurutku lagu itu adalah sebuah mahakarya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3452_tidak_populer, 'このYouTuberは、女の人から不人気なことで有名です。', 'YouTuber yang satu ini terkenal tidak populer di kalangan wanita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3595_film, 'いつもどんな映画を見ますか？', 'Jenis film apa yang biasanya Anda tonton?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3595_film, 'いっしょに映画を見に行きませんか？', 'Apakah Anda ingin pergi menonton film bersama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3595_film, 'これはホラー映画です。', 'Ini adalah film horor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3709_keadaan_mental, '母の心理が、どうしても分からない。', 'Saya tidak pernah mengerti mentalitas ibu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3709_keadaan_mental, '姉は心理カウンセラーになるために大学へ行きました。', 'Adikku kuliah untuk menjadi konselor psikologis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3709_keadaan_mental, '大体のケースは人の仕草から、その人の心理を知ることが出来るんです。', 'Dalam kebanyakan kasus, Anda dapat mengetahui kondisi mental seseorang dari gerak-geriknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4070_untuk_memotong, 'こうやってハートの形を切り取るんです。', 'Beginilah cara kami memotong bentuk hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4070_untuk_memotong, 'このクーポンを切り取っておいてもらえますか？', 'Bisakah Anda memotong kupon ini untuk saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4070_untuk_memotong, 'マスコミはきっとニュースになりそうなところだけを切り取るだろ。', 'Saya yakin media hanya akan memotong bagian-bagian yang layak diberitakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4071_untuk_mengambil, '男が、マイケルのカバンからスマホを取り出すのを見たよ。', 'Aku melihat seorang pria mengeluarkan smartphone dari tas Michael.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4071_untuk_mengambil, '女はポケットからペンを取り出した。', 'Wanita itu mengeluarkan pena dari sakunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4071_untuk_mengambil, 'オーブンからフグを取り出しておいてくれない？', 'Bisakah Anda mengeluarkan ikan buntal dari oven untuk saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4721_gajah, 'どうして象のハナは長いの？', 'Mengapa gajah mempunyai belalai yang panjang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4721_gajah, '見て、あそこに象さんがいる。', 'Lihat, ada gajah di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4721_gajah, '足がむくんで、象の足みたいになっています。', 'Kaki saya bengkak dan terlihat seperti kaki gajah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4849_periode, '今の時代でも、日本にはファックスが有ります。', 'Bahkan di era sekarang, mesin fax sudah ada di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4849_periode, 'これは、平安時代のラブストーリーの本です。', 'Ini adalah buku kisah cinta dari zaman Heian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4849_periode, '今の時代、インターネットが全てを教えてくれます。', 'Dalam periode waktu saat ini, Internet akan memberi tahu Anda segalanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4877_benar_benar, 'この石ころ、本当に大切？', 'Apakah batu ini sangat penting?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4877_benar_benar, 'この地図が本当に正しいか不安です。', 'Saya khawatir apakah peta ini benar-benar akurat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4877_benar_benar, 'この車、本当に中古なんですか？', 'Apakah mobil ini serius digunakan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5717_masyarakat, '社会のルールは大切だ。', 'Aturan sosial itu penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5717_masyarakat, '日本社会のシステムに不安があります。', 'Saya khawatir dengan sistem sosial Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5717_masyarakat, '外国人も社会のメンバーです。', 'Orang asing juga merupakan anggota masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5934_besok, '明日はバレンタインデーです。', 'Besok adalah Hari Valentine.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5934_besok, '明日は会社を休みます。', 'Saya akan mengambil cuti kerja besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5934_besok, '家のローンに対しての答えを出すのは明日でもいいですか？', 'Bisakah saya memberikan jawaban saya mengenai pinjaman rumah besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6237_distrik_sebuah_kota, '一丁目のコンビニはオープンしたばかりです。', 'Toko serba ada di 1-chome baru saja dibuka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6237_distrik_sebuah_kota, '田中さんのアパートは、三丁目です。', 'Apartemen Tanaka-san berada di 3-chome.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6237_distrik_sebuah_kota, '四丁目にはバスが来ないので、会社までは歩くしかありません。', 'Anda tidak punya pilihan selain berjalan kaki ke perusahaan karena tidak ada bus yang datang ke 4-chome.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6579_lantai, '今日は床にモップをかけます。', 'Saya akan mengepel lantai hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6579_lantai, '床にゴキブリがいる！', 'Ada kecoak di lantai!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6579_lantai, '床の上でヨガをしているのが私の兄です。', 'Itu adalah saudara laki-laki saya yang melakukan yoga di lantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7461_jam, '三日の午後三時に、ここで会いましょう。', 'Sampai jumpa di sini jam 15.00. pada tanggal 3.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7461_jam, '社長とのミーティングは何時ですか？', 'Jam berapa pertemuan dengan presiden?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7461_jam, '毎日午後三時にトイレの中でワニカニのレビューをします。', 'Saya melakukan ulasan WaniKani di kamar mandi pada pukul 15.00. setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7528_secara_besar, 'タクシーを見たら、右手を大きく上げて下さいね。', 'Jika Anda melihat taksi, harap angkat tangan kanan Anda sepenuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7528_secara_besar, 'ボリュームをもう少し大きくして下さい。', 'Tolong naikkan volumenya sedikit lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7528_secara_besar, '今年は、ドルが大きく上がった。', 'Tahun ini, dolar naik secara signifikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7529_di_dekat, 'コンビニは近くにありますか？', 'Apakah ada toko serba ada di dekat sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7529_di_dekat, 'テレビは近くの中古ショップで手に入れました。', 'Saya mendapatkan TV di toko bekas terdekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7529_di_dekat, '近くで見ると本当のダイアモンドじゃないって分かるよ。', 'Jika Anda perhatikan lebih dekat, Anda akan tahu itu bukan berlian asli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7567_topan, 'もうすぐ九州に台風が来ます。', 'Sebentar lagi, topan akan datang ke Kyushu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7567_topan, '台風が来る前に外のプランターを全て家の中に入れました。', 'Sebelum topan datang, saya menaruh semua tanaman luar di dalam rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7567_topan, '台風の日、うちの犬は一日中ベッドの下にいました。', 'Pada suatu hari topan, anjing saya berada di bawah tempat tidur sepanjang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7622_lambung_kapal, '船体は大きかった。', 'Lambungnya besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7622_lambung_kapal, 'この船体は中古です。', 'Lambung ini digunakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7622_lambung_kapal, '全ての船体ができあがるまでには、少なくとも一年かかります。', 'Diperlukan waktu setidaknya satu tahun untuk menyelesaikan semua lambung kapal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7675_nomor_kamar, 'こちらが302号室です。', 'Ini Kamar 302.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7675_nomor_kamar, '今すぐマリーナホテルの103号室に来てもらえますか？', 'Bisakah Anda datang ke Kamar 103 di Marina Hotel sekarang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7675_nomor_kamar, '本社は、あのビルの507号室にあります。', 'Kantor pusatnya terletak di Ruang 507 gedung itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7676_langit, 'こんな日は、大空を見上げよう。', 'Di hari seperti ini, mari kita memandang ke langit yang luas dan terbuka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7676_langit, 'ドローンが大空に広がっている。', 'Drone memenuhi langit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7676_langit, 'おじいちゃん、大空から私たちのこと見てくれているかな？', 'Aku ingin tahu apakah Kakek mengawasi kita dari surga?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7677_untuk_ditemukan, '雨の日はクラスを休む人が見当たる。', 'Pada hari hujan, Anda melihat beberapa orang tidak datang ke kelas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7677_untuk_ditemukan, 'コンビニに行っても、アイスが見当たらなかった。', 'Saya pergi ke toko serba ada, tetapi saya tidak dapat menemukan es krim apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7677_untuk_ditemukan, '地図をよく見ても、中々ホテルが見当たらない。', 'Meskipun saya melihat lebih dekat pada peta, saya tidak dapat menemukan hotelnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7678_segi_tiga, 'これが、三角形のおにぎりの作り方です。', 'Inilah cara membuat bola nasi berbentuk segitiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7678_segi_tiga, 'このキッチン、三角形のタイルが、かわいいですね。', 'Ubin segitiga di dapur itu lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7678_segi_tiga, 'この三角形のグラフで、何が分かるんですか？', 'Apa yang dapat kamu ketahui dari grafik segitiga ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7679_bentuk_terkonjugasi, '「立つ」の活用形が分かりません。', 'Saya tidak tahu bentuk terkonjugasi dari 立つ.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7679_bentuk_terkonjugasi, '色々な活用形を用いて、文を作って下さい。', 'Tolong buatlah sebuah kalimat dengan menggunakan berbagai bentuk konjugasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7679_bentuk_terkonjugasi, '活用形は、いつもアプリで見てダブルチェックします。', 'Saya selalu melihat aplikasi untuk memeriksa ulang formulir terkonjugasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7734_sial, '一体どうなっているんだ。', 'Apa yang sedang terjadi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7734_sial, '一体どこに行けば、このサンダルが手に入りますか？', 'Dimana saya bisa mendapatkan sandal ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7734_sial, '一体、あなたは自分をだれだと思ってるんですか？', 'Kamu pikir kamu ini siapa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7735_suara_rendah, '「ありがとう」と小声で言いました。', '"Terima kasih," bisikku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7735_suara_rendah, '男の子は小声で自分の作文をよんだ。', 'Anak laki-laki itu membaca komposisinya dengan suara rendah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7735_suara_rendah, '先生たちは小声ではなしていた。', 'Para guru berbicara dengan sangat pelan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8662_neptunus, '海王星は色が青いです。', 'Warna Neptunus adalah biru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8662_neptunus, '海王星には日の光があまり行きません。', 'Tidak banyak cahaya matahari yang mencapai Neptunus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8662_neptunus, '海王星は1846年9月23日に見つかりました。', 'Neptunus ditemukan pada tanggal 23 September 1846.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8663_tidak_lebih_dari, '五千円以下の中古のテレビはありますか？', 'Apakah ada TV bekas seharga 5.000 yen atau kurang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8663_tidak_lebih_dari, '一メートル以下のイカは小さいイカです。', 'Cumi-cumi yang panjangnya satu meter atau kurang adalah cumi-cumi kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8663_tidak_lebih_dari, '12才以下だとタダらしいよ！', 'Saya dengar ini gratis jika Anda berusia dua belas tahun ke bawah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8663_tidak_lebih_dari, 'まさかこれ以下のレベルのクオリティの作品があるとは…ビックリです。', 'Memikirkan ada karya dengan tingkat kualitas lebih rendah dari ini… Saya terkejut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8695_penduduk_kota, '町民は毎年みんなで花見に行く。', 'Penduduk kota pergi melihat bunga sakura bersama-sama setiap tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8695_penduduk_kota, 'ぜひ私と主人を町民の会に入れて下さい。', 'Tolong izinkan saya dan suami saya bergabung dengan asosiasi warga kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8695_penduduk_kota, '町民が安心して生活できるように、活気ある町にしたいです。', 'Saya ingin menjadikannya kota yang hidup sehingga warga kota dapat hidup dengan tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8698_minggu_depan, '次のクラスは来週です。', 'Kelas berikutnya adalah minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8698_minggu_depan, '来週の作文のテーマは「自分の生まれた日」です。', 'Tema komposisi minggu depan adalah "hari aku dilahirkan".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8698_minggu_depan, '来週のマラソンのために、毎日走って体力をつけています。', 'Saya membangun stamina saya dengan berlari setiap hari sebagai persiapan untuk maraton minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8738_untuk_bersinar, '日が当たると、ダイアモンドは光る。', 'Berlian itu bersinar saat matahari menerpanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8738_untuk_bersinar, 'プールの水が日の光でキラキラと光ります。', 'Air di kolam bersinar dengan sinar matahari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8738_untuk_bersinar, '今、空が赤く光ったよね？', 'Bukankah langit baru saja bersinar merah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8801_setelah_ini, '以後は、このアドレスにメールして下さい。', 'Mulai sekarang, silakan kirim email ke alamat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8801_setelah_ini, '以後、気をつけます。', 'Aku akan berhati-hati setelah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8801_setelah_ini, '四月八日以後は、学校に行かなければいけません。', 'Setelah tanggal 8 April, kamu harus pergi ke sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8896_satu_roti, '一斤のパンは6枚切りか8枚切りで売られていることが多い。', 'Roti sering kali dijual dalam potongan enam atau delapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8896_satu_roti, 'たった一斤のパンで、月末までを生きていけるかな？', 'Saya ingin tahu apakah saya bisa hidup dari satu potong roti sampai akhir bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8896_satu_roti, 'パン一斤と、ニュテラがあれば生きていけるよ。', 'Saya bisa hidup dari sepotong roti dan sedikit Nutella.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8897_dua_roti, 'このパンは、二斤で五百円です。', 'Roti ini harganya 500 yen untuk dua potong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8897_dua_roti, 'サンドイッチ用のパンは二斤作ったけど、それでも足りませんでした。', 'Saya membuat dua potong roti untuk sandwich, tapi itu masih belum cukup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8897_dua_roti, '一日で二斤は、さすがに食べることが出来ないよ。', 'Anda tidak bisa makan dua potong roti dalam sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9010_mars, '火星には水がありますか？', 'Apakah Mars memiliki air?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9010_mars, 'できれば今すぐ火星に行きたいと思っています。', 'Saya ingin pergi ke Mars sekarang jika memungkinkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9010_mars, '火星の日の入りは空が青く見えるそうです。', 'Rupanya, langit matahari terbenam di Mars tampak biru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9011_jupiter, '木星を見たことありますか？', 'Pernahkah Anda melihat Yupiter?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9011_jupiter, '火星と木星のあいだには、何がありますか。', 'Ada apa antara Mars dan Jupiter?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9011_jupiter, '木星や土星はこうして生まれたんですよ。', 'Jupiter dan Saturnus dilahirkan seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9042_tempat_tinggal_manusia, 'この町は、人里に近い。', 'Kota ini dekat dengan tempat tinggal manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9042_tempat_tinggal_manusia, '人里からはなれた山に家が有ります。', 'Ada sebuah rumah di gunung jauh dari desa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9042_tempat_tinggal_manusia, '人里にクマが出てくることがある。', 'Terkadang, beruang muncul di desa-desa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9070_menit, '大体、二分くらいかかります。', 'Biasanya diperlukan waktu sekitar dua menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9070_menit, '十五分休みましょうか。', 'Bagaimana kalau kita istirahat selama lima belas menit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9070_menit, '私のアパートからコンビニまでは歩いて大体五分くらいです。', 'Sekitar lima menit berjalan kaki dari apartemenku ke toko serba ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9159_napoleon_yang_ketiga, '今日は、ナポレオン三世について学びましょう。', 'Hari ini, kita akan belajar tentang Napoleon Yang Ketiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9159_napoleon_yang_ketiga, 'ナポレオン三世は1808年に生まれた。', 'Napoleon III lahir pada tahun 1808.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9159_napoleon_yang_ketiga, 'ナポレオン・ボナパルトはナポレオン三世より有名ですよね。', 'Napoleon Bonaparte lebih terkenal dari Napoleon III ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9241_tahun_baru, 'もうすぐ、お正月ですね。', 'Tahun Baru akan segera tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9241_tahun_baru, '正月休みは、いつからですか？', 'Kapan liburan Tahun Baru Anda dimulai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9241_tahun_baru, '今年の正月のセールでは、スーツが全て五十パーセントオフです。', 'Pada penjualan Tahun Baru tahun ini, semua pakaian akan mendapat diskon 50%.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9278_sistem, '次のビジネスの仕組みを考えています。', 'Kami mencoba mencari cara untuk menyusun bisnis kami berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9278_sistem, 'あなたは世の中の仕組みを知っていますか？', 'Tahukah Anda cara kerja dunia ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9278_sistem, 'このテレビのリモコンのボタンを三回おすと、このドアがアンロックされる仕組みになっています。', 'Jika Anda menekan tombol pada remote TV ini tiga kali, mekanisme untuk membuka kunci pintu ini akan terpicu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9333_ikan_air_asin, 'カクレクマノミは海水魚です。', 'Ikan badut adalah ikan air asin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9333_ikan_air_asin, 'このお店で一番人気のある海水魚はどれですか？', 'Ikan air asin manakah yang paling populer di toko ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9333_ikan_air_asin, 'やっぱり海水魚はニオイが気になります。', 'Lagi pula, saya khawatir dengan bau ikan air asin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9350_negara_utara, '北国のくらしはどうですか？', 'Bagaimana kehidupan di negara utara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9350_negara_utara, '北国の冬は、とても長いです。', 'Musim dingin di negara bagian utara sangat panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9350_negara_utara, '北国の子どもたちは雪あそびが上手です。', 'Anak-anak di utara pandai bermain salju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9356_matahari_sore, '西日がまぶしくて、テレビが見えません。', 'Matahari sore sangat cerah sehingga saya tidak bisa melihat TV.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9356_matahari_sore, '西日でカーテンがオレンジ色に光りました。', 'Matahari terbenam membuat tirai bersinar oranye.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9356_matahari_sore, '西日が強くて、サンルームがサウナみたいになっています。', 'Sinar matahari sore begitu terik sehingga ruang berjemurnya seperti sauna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9357_asia_timur, '東アジアにはたくさんの山があります。', 'Ada banyak gunung di Asia Timur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9357_asia_timur, '東アジアの国に行ったことはありますか？', 'Pernahkah Anda berkunjung ke negara Asia Timur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9357_asia_timur, '東アジアでは、毎日お米を食べる人が多いです。', 'Di Asia Timur, banyak orang yang makan nasi setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9357_asia_timur, '東アジアのごはんはおいしいけど、食べすぎて太っちゃいました。', 'Makanan Asia Timur memang enak, tapi berat badan saya bertambah karena makan terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9375_sampai_fajar, 'もうすぐラマダーンが明ける。', 'Ramadhan akan segera berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9375_sampai_fajar, '日本では年が明けると「明けましておめでとう」って言うんだよ。', 'Di Jepang, ketika tahun baru dimulai, orang-orang mengucapkan "akemashite omedetou".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9375_sampai_fajar, '新しくできたショッピングモール、休日は混んでるみたい。ゴールデンウィークが明けるころに行ってみない？', 'Pusat perbelanjaan baru itu sepertinya ramai dikunjungi saat hari libur. Haruskah kita memeriksanya saat Golden Week berakhir?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9497_kotamadya, 'それは市町村によってちがうんです。', 'Ini bervariasi menurut kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9497_kotamadya, '市町村名を教えてください。', 'Tolong beritahu saya nama kotamadya Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9497_kotamadya, '市町村ごとのデータをくらべてみましょう。', 'Mari kita bandingkan data untuk masing-masing kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9501_lingkungan, '町内でイベントがあるんです。', 'Ada acara yang sedang berlangsung di lingkungan sekitar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9501_lingkungan, 'あの人、うちの町内の人だよ。', 'Orang itu berasal dari lingkungan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9501_lingkungan, '町内のつながりは思ったより強かった。', 'Ikatan di lingkungan sekitar lebih kuat dari yang diharapkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9501_lingkungan, '私は毎日、町内のカフェでモーニングを食べます。', 'Saya sarapan di kafe di lingkungan saya setiap hari.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_629_gambar, id FROM items WHERE type = 'radical' AND (slug = '27' OR id = '27') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_629_gambar, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_629_gambar, r_127_kotak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_634_selatan, r_361_selatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_646_kekurangan, r_142_kekurangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_647_nama_keluarga, r_147_klan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_648_alasan, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_648_alasan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_649_tagihan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_649_tagihan, id FROM items WHERE type = 'radical' AND (slug = '211' OR id = '211') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_650_masyarakat, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_650_masyarakat, r_147_klan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_651_daerah, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_651_daerah, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_652_menempel, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_652_menempel, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_653_dari, id FROM items WHERE type = 'radical' AND (slug = '56' OR id = '56') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_653_dari, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_653_dari, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_654_kesalahan, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_654_kesalahan, r_146_suami);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_655_yakin, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_655_yakin, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_656_belum, id FROM items WHERE type = 'radical' AND (slug = '134' OR id = '134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_657_akhir, id FROM items WHERE type = 'radical' AND (slug = '134' OR id = '134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_658_sekolah, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_658_sekolah, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_658_sekolah, id FROM items WHERE type = 'radical' AND (slug = '68' OR id = '68') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_659_musim_panas, id FROM items WHERE type = 'radical' AND (slug = '8763' OR id = '8763') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_659_musim_panas, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_659_musim_panas, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_661_lemah, id FROM items WHERE type = 'radical' AND (slug = '36' OR id = '36') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_661_lemah, id FROM items WHERE type = 'radical' AND (slug = '123' OR id = '123') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_662_waktu, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_662_waktu, r_192_kuil);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_663_kertas, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_663_kertas, r_147_klan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_664_tuliskan, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_664_tuliskan, r_228_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_665_melewati, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_665_melewati, id FROM items WHERE type = 'radical' AND (slug = '141' OR id = '141') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_665_melewati, id FROM items WHERE type = 'radical' AND (slug = '71' OR id = '71') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_666_tinggi, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_666_tinggi, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_666_tinggi, id FROM items WHERE type = 'radical' AND (slug = '121' OR id = '121') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_667_kuat, id FROM items WHERE type = 'radical' AND (slug = '36' OR id = '36') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_667_kuat, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_667_kuat, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_668_mengajar, r_418_guru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_668_mengajar, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_669_alasan, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_669_alasan, id FROM items WHERE type = 'radical' AND (slug = '125' OR id = '125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_670_kelompok, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_670_kelompok, r_419_topi_atas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_671_kapal, r_149_kapal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_671_kapal, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_671_kapal, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_672_pekan, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_672_pekan, r_169_lingkar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_673_salju, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_673_salju, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_674_ikan, r_150_ikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_675_burung, r_151_burung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_676_kuning, r_152_kuning);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_677_hitam, r_153_hitam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_853_angin, r_177_meja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_853_angin, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_853_angin, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_893_mencerminkan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_893_mencerminkan, id FROM items WHERE type = 'radical' AND (slug = '231' OR id = '231') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1237_gajah, r_8823_gajah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1810_lantai, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1810_lantai, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2599_untuk_membagi_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2621_kakak, id FROM items WHERE type = 'kanji' AND (slug = '515' OR id = '515') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2720_untuk_pengganti, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2764_pikiran, id FROM items WHERE type = 'kanji' AND (slug = '576' OR id = '576') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2766_cara_berpikir, id FROM items WHERE type = 'kanji' AND (slug = '576' OR id = '576') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2766_cara_berpikir, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2822_membentuk, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2910_selatan, k_634_selatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2927_kekurangan, k_646_kekurangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2927_kekurangan, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2928_tuan, k_647_nama_keluarga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2929_nama_lengkap, k_647_nama_keluarga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2929_nama_lengkap, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2930_kebebasan, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2930_kebebasan, k_648_alasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2931_alasan, k_669_alasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2931_alasan, k_648_alasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2932_tagihan, k_649_tagihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2933_uang_seribu_yen, id FROM items WHERE type = 'kanji' AND (slug = '460' OR id = '460') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2933_uang_seribu_yen, id FROM items WHERE type = 'kanji' AND (slug = '472' OR id = '472') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2933_uang_seribu_yen, k_649_tagihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2934_rakyat, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2934_rakyat, k_650_masyarakat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2936_di_sekitar_sini, k_651_daerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2937_untuk_melampirkan_sesuatu, k_652_menempel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2938_selain_daripada, k_653_dari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2938_selain_daripada, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2939_tidak_kurang_dari, k_653_dari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2939_tidak_kurang_dari, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2940_sebelumnya, k_653_dari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2940_sebelumnya, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2941_kalah, k_654_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2942_kasar, k_654_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2942_kasar, id FROM items WHERE type = 'kanji' AND (slug = '541' OR id = '541') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2943_pasti, k_655_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2944_panik, k_655_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2944_panik, id FROM items WHERE type = 'kanji' AND (slug = '617' OR id = '617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2946_masa_depan, k_656_belum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2946_masa_depan, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2947_akhir, k_657_akhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2948_akhir_tahun, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2948_akhir_tahun, k_657_akhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2949_akhir_bulan, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2949_akhir_bulan, k_657_akhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2950_sekolah_menengah_atas, k_666_tinggi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2950_sekolah_menengah_atas, k_658_sekolah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2951_sekolah, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2951_sekolah, k_658_sekolah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2952_musim_panas, k_659_musim_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2953_liburan_musim_panas, k_659_musim_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2953_liburan_musim_panas, id FROM items WHERE type = 'kanji' AND (slug = '542' OR id = '542') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2956_lemah, k_661_lemah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2957_titik_lemah, k_661_lemah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2957_titik_lemah, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2958_waktu, k_662_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2959_jam_satu, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2959_jam_satu, k_662_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2960_dua_tiga_puluh, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2960_dua_tiga_puluh, k_662_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2960_dua_tiga_puluh, id FROM items WHERE type = 'kanji' AND (slug = '518' OR id = '518') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2961_jam_berapa, id FROM items WHERE type = 'kanji' AND (slug = '582' OR id = '582') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2961_jam_berapa, k_662_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2962_waktu_yang_sama, id FROM items WHERE type = 'kanji' AND (slug = '568' OR id = '568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2962_waktu_yang_sama, k_662_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2963_kertas, k_663_kertas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2964_surat, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2964_surat, k_663_kertas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2965_buku_harian, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2965_buku_harian, k_664_tuliskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2967_lalu_lintas, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2967_lalu_lintas, k_665_melewati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2968_tinggi, k_666_tinggi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2969_kuat, k_667_kuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2970_kuat, k_667_kuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2970_kuat, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2971_untuk_mengajar, k_668_mengajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2972_kelas, k_668_mengajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2972_kelas, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2973_psikologi, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2973_psikologi, k_669_alasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2973_psikologi, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2974_geografi, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2974_geografi, k_669_alasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2975_kelompok, k_670_kelompok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2976_kapal, k_671_kapal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2977_balon, k_853_angin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2977_balon, k_671_kapal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2978_minggu_lalu, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2978_minggu_lalu, k_672_pekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2979_minggu_ini, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2979_minggu_ini, k_672_pekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2980_akhir_pekan, k_672_pekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2980_akhir_pekan, k_657_akhir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2981_salju, k_673_salju);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2982_ikan, k_674_ikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2983_ikan_mas, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2983_ikan_mas, k_674_ikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2985_burung, k_675_burung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2986_angsa, id FROM items WHERE type = 'kanji' AND (slug = '491' OR id = '491') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2986_angsa, k_675_burung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2987_kuning, k_676_kuning);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2987_kuning, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2988_hitam, k_677_hitam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2989_orang_kulit_hitam, k_677_hitam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2989_orang_kulit_hitam, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3420_boneka, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3420_boneka, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3422_buatan_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3422_buatan_tangan, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3425_angin, k_853_angin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3432_pintu_keluar_selatan, k_634_selatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3432_pintu_keluar_selatan, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3436_mahasiswa_universitas, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3436_mahasiswa_universitas, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3436_mahasiswa_universitas, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3437_cara_mengatakan, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3437_cara_mengatakan, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3438_tiba_di_depan, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3438_tiba_di_depan, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3447_dalam_waktu_dekat, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3447_dalam_waktu_dekat, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3448_langit_biru, id FROM items WHERE type = 'kanji' AND (slug = '604' OR id = '604') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3448_langit_biru, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3449_siswa_sekolah_dasar, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3449_siswa_sekolah_dasar, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3449_siswa_sekolah_dasar, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3450_cara_membuat, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3450_cara_membuat, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3451_siswa_sekolah_menengah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3451_siswa_sekolah_menengah, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3451_siswa_sekolah_menengah, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3452_tidak_populer, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3452_tidak_populer, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3452_tidak_populer, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3595_film, k_893_mencerminkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3595_film, k_629_gambar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3709_keadaan_mental, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3709_keadaan_mental, k_669_alasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4070_untuk_memotong, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4070_untuk_memotong, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4071_untuk_mengambil, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4071_untuk_mengambil, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4721_gajah, k_1237_gajah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4849_periode, k_662_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4849_periode, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4877_benar_benar, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4877_benar_benar, id FROM items WHERE type = 'kanji' AND (slug = '571' OR id = '571') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5717_masyarakat, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5717_masyarakat, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5934_besok, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5934_besok, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6237_distrik_sebuah_kota, id FROM items WHERE type = 'kanji' AND (slug = '464' OR id = '464') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6237_distrik_sebuah_kota, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6579_lantai, k_1810_lantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7461_jam, k_662_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7528_secara_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7529_di_dekat, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7567_topan, id FROM items WHERE type = 'kanji' AND (slug = '520' OR id = '520') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7567_topan, k_853_angin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7622_lambung_kapal, k_671_kapal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7622_lambung_kapal, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7675_nomor_kamar, id FROM items WHERE type = 'kanji' AND (slug = '533' OR id = '533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7675_nomor_kamar, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7676_langit, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7676_langit, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7677_untuk_ditemukan, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7677_untuk_ditemukan, id FROM items WHERE type = 'kanji' AND (slug = '571' OR id = '571') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7678_segi_tiga, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7678_segi_tiga, id FROM items WHERE type = 'kanji' AND (slug = '592' OR id = '592') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7678_segi_tiga, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7679_bentuk_terkonjugasi, id FROM items WHERE type = 'kanji' AND (slug = '639' OR id = '639') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7679_bentuk_terkonjugasi, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7679_bentuk_terkonjugasi, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7734_sial, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7734_sial, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7735_suara_rendah, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7735_suara_rendah, id FROM items WHERE type = 'kanji' AND (slug = '586' OR id = '586') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8662_neptunus, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8662_neptunus, id FROM items WHERE type = 'kanji' AND (slug = '482' OR id = '482') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8662_neptunus, id FROM items WHERE type = 'kanji' AND (slug = '638' OR id = '638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8663_tidak_lebih_dari, k_653_dari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8663_tidak_lebih_dari, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8695_penduduk_kota, id FROM items WHERE type = 'kanji' AND (slug = '556' OR id = '556') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8695_penduduk_kota, k_650_masyarakat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8698_minggu_depan, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8698_minggu_depan, k_672_pekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8738_untuk_bersinar, id FROM items WHERE type = 'kanji' AND (slug = '567' OR id = '567') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8801_setelah_ini, k_653_dari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8801_setelah_ini, id FROM items WHERE type = 'kanji' AND (slug = '636' OR id = '636') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8896_satu_roti, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8896_satu_roti, id FROM items WHERE type = 'kanji' AND (slug = '8884' OR id = '8884') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8897_dua_roti, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8897_dua_roti, id FROM items WHERE type = 'kanji' AND (slug = '8884' OR id = '8884') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9010_mars, id FROM items WHERE type = 'kanji' AND (slug = '480' OR id = '480') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9010_mars, id FROM items WHERE type = 'kanji' AND (slug = '638' OR id = '638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9011_jupiter, id FROM items WHERE type = 'kanji' AND (slug = '478' OR id = '478') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9011_jupiter, id FROM items WHERE type = 'kanji' AND (slug = '638' OR id = '638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9042_tempat_tinggal_manusia, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9042_tempat_tinggal_manusia, id FROM items WHERE type = 'kanji' AND (slug = '597' OR id = '597') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9070_menit, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9159_napoleon_yang_ketiga, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9159_napoleon_yang_ketiga, id FROM items WHERE type = 'kanji' AND (slug = '527' OR id = '527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9241_tahun_baru, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9241_tahun_baru, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9278_sistem, id FROM items WHERE type = 'kanji' AND (slug = '564' OR id = '564') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9278_sistem, k_670_kelompok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9333_ikan_air_asin, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9333_ikan_air_asin, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9333_ikan_air_asin, k_674_ikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9350_negara_utara, id FROM items WHERE type = 'kanji' AND (slug = '517' OR id = '517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9350_negara_utara, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9356_matahari_sore, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9356_matahari_sore, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9357_asia_timur, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9375_sampai_fajar, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9497_kotamadya, id FROM items WHERE type = 'kanji' AND (slug = '522' OR id = '522') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9497_kotamadya, id FROM items WHERE type = 'kanji' AND (slug = '556' OR id = '556') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9497_kotamadya, id FROM items WHERE type = 'kanji' AND (slug = '554' OR id = '554') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9501_lingkungan, id FROM items WHERE type = 'kanji' AND (slug = '556' OR id = '556') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9501_lingkungan, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;

END $$;
