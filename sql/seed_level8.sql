-- ====================================================
-- KaniGani — Seed Data Level 8 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 8) ============
  r_157_kait UUID; r_158_ular UUID; r_159_awan UUID; r_160_senjata UUID; r_161_membandingkan UUID; r_163_bersih UUID; r_164_sabit UUID; r_165_kuda UUID; r_172_mudah UUID; r_203_seseorang UUID; r_216_setelan UUID; r_217_kurungan UUID; r_299_modal UUID; r_8780_tanjung UUID;

  -- ============ KANJI IDs (Level 8) ============
  k_573_kolam UUID; k_616_berikutnya UUID; k_620_modal UUID; k_678_mendukung UUID; k_679_tinggal UUID; k_680_membantu UUID; k_681_obat UUID; k_682_sobat UUID; k_683_melawan UUID; k_684_biro UUID; k_685_melayani UUID; k_686_melemparkan UUID; k_687_memutuskan UUID; k_688_riset UUID; k_689_tubuh UUID; k_690_seseorang UUID; k_691_mengasah UUID; k_692_kuda UUID; k_693_hutan UUID; k_694_lokasi UUID; k_695_pagi UUID; k_696_nomor_dalam_seri_a UUID; k_697_menjawab UUID; k_698_gambar UUID; k_699_membeli UUID; k_700_jalan UUID; k_701_selang UUID; k_702_awan UUID; k_703_menghitung UUID; k_704_kenyamanan UUID; k_705_bicara UUID; k_706_listrik UUID; k_707_tempat UUID; k_855_anti UUID;

  -- ============ VOCABULARY IDs (Level 8) ============
  v_2534_bulat UUID; v_2700_untuk_membedakan UUID; v_2761_kolam UUID; v_2871_lain_kali UUID; v_2899_timur_tengah UUID; v_2935_daerah UUID; v_2966_untuk_melewati UUID; v_2990_kuda UUID; v_2991_daya_kuda UUID; v_2992_untuk_mendukung UUID; v_2993_kantor_cabang UUID; v_2994_untuk_hidup UUID; v_2995_penduduk UUID; v_2997_untuk_membantu UUID; v_3000_nasihat UUID; v_3001_universitas_kedokteran UUID; v_3002_ilmu_kedokteran UUID; v_3003_dokter UUID; v_3004_kerajaan UUID; v_3005_anda UUID; v_3006_nama_anak_laki_laki_ender UUID; v_3007_untuk_menghadapi UUID; v_3010_di_depan UUID; v_3011_biro UUID; v_3012_kantor_cabang UUID; v_3013_peran UUID; v_3014_pejabat_publik UUID; v_3015_agar_bermanfaat UUID; v_3016_tugas_penting UUID; v_3023_riset UUID; v_3025_untuk_melempar UUID; v_3026_pikiran_dan_tubuh UUID; v_3027_tubuh UUID; v_3028_seluruh_tubuh UUID; v_3029_hutan UUID; v_3030_kedua_orang UUID; v_3031_pengarang UUID; v_3032_sarjana UUID; v_3033_insinyur UUID; v_3035_tempat UUID; v_3036_pintu_masuk UUID; v_3037_pabrik UUID; v_3038_tempat UUID; v_3041_tempat_lain UUID; v_3042_tempat_terkenal UUID; v_3043_alamat UUID; v_3044_pagi UUID; v_3045_sarapan UUID; v_3046_matahari_pagi UUID; v_3047_nomor UUID; v_3048_nomor_satu UUID; v_3049_nomor_dua UUID; v_3050_kotak_polisi UUID; v_3051_menjawab UUID; v_3052_untuk_menjawab UUID; v_3053_gambar UUID; v_3054_untuk_membeli UUID; v_3055_jalan UUID; v_3056_trotoar UUID; v_3057_metode UUID; v_3058_selang UUID; v_3059_waktu UUID; v_3060_jumlah_waktu UUID; v_3061_manusia UUID; v_3062_segera UUID; v_3063_ruang_angkasa UUID; v_3064_awan UUID; v_3065_untuk_menghitung UUID; v_3066_nomor UUID; v_3067_angka UUID; v_3068_matematika UUID; v_3069_jumlah_orang UUID; v_3070_poin UUID; v_3071_seru UUID; v_3072_musik UUID; v_3073_kenyamanan UUID; v_3074_untuk_berbicara UUID; v_3075_telepon UUID; v_3076_percakapan UUID; v_3077_kereta UUID; v_3078_listrik UUID; v_3079_baterai UUID; v_3080_elektron UUID; v_3081_tenaga_listrik UUID; v_3405_mengikat UUID; v_3423_tokyo UUID; v_3428_di_sana UUID; v_3431_seluruh_amerika UUID; v_3433_sebuah_memori UUID; v_3434_untuk_mendekat UUID; v_3435_untuk_diingat UUID; v_3443_pengganti UUID; v_3454_sama_sekali UUID; v_3455_panjang UUID; v_3457_suatu_hari_nanti UUID; v_3459_melihat UUID; v_3460_nama UUID; v_3461_akan_selesai UUID; v_3462_untuk_membungkuk UUID; v_3463_untuk_dicampur UUID; v_3464_untuk_berlari UUID; v_3465_menebak UUID; v_3467_untuk_mengubah_bentuk UUID; v_3468_untuk_mengubah_sesuatu UUID; v_3864_sendiri UUID; v_3918_perguruan_tinggi_swasta UUID; v_4848_terakhir_kali UUID; v_5503_tubuh UUID; v_7459_di_atas_tanah UUID; v_7530_untuk_mengubah_sesuatu_menuju UUID; v_7531_anda UUID; v_7569_laut_tengah UUID; v_7570_setiap_pagi UUID; v_7623_alami UUID; v_7624_persediaan_air UUID; v_7681_untuk_menghidupkan_sesuatu UUID; v_7737_tugas UUID; v_7738_bahan UUID; v_8664_program UUID; v_8699_subjek UUID; v_8739_beberapa_tahun UUID; v_8740_emoji UUID; v_8814_kendi UUID; v_9349_pertikaian UUID; v_9352_afrika_selatan UUID; v_9355_angin_utara UUID; v_9372_fajar UUID;

BEGIN

  DELETE FROM items WHERE level = 8;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ユ', 'kait', 8, 1, 'Ini terlihat seperti <radical>kail</radical>, seperti yang biasa dipakai bajak laut. Garis datar menunjukkan di mana tangan terpotong, dan pengait berada tepat di atas, siap untuk menggantikannya. Yarrrr.')
    RETURNING id INTO r_157_kait;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '巳', 'ular', 8, 2, 'Inilah radikal <radikal>ular</radikal>. Lihat kepala di atas dengan tubuh kurus panjang yang membentang ke bawah?

Jangan bingung dengan 己 (diri sendiri) — ular memiliki garis tambahan di belakang kepalanya untuk menghubungkan ke seluruh tubuhnya.')
    RETURNING id INTO r_158_ular;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '云', 'awan', 8, 3, 'Ini adalah radikal untuk <radical>cloud</radical>. Lihat bagaimana awannya menggembung di bagian bawah tetapi memiliki dua garis di bagian atas? Itu karena ada pesawat yang terbang melewatinya.

Awan yang menyenangkan untuk nongkrong secara pribadi, sampai pesawat sialan itu datang dan menghancurkannya. Begitu banyak untuk cloud pribadi Anda!')
    RETURNING id INTO r_159_awan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '殳', 'senjata', 8, 4, 'Tempelkan meja di atas bangku dan Anda akan mendapatkan <radikal>senjata</radikal> yang sangat berbahaya. Bayangkan memukul seseorang dengan benda ini! Atau, lebih baik lagi, bayangkan seseorang duduk di atasnya. Mereka akan hancur secara mental dan emosional dan yang lainnya. Itu senjata yang menakutkan.')
    RETURNING id INTO r_160_senjata;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '比', 'membandingkan', 8, 5, 'Radikal ini terdiri dari dua versi radikal sendok yang sedikit berbeda. Perhatikan baik-baik kedua sendok ini. <radical>Bandingkan</radikal> perbedaannya, seperti perbedaan sudut pada lekukan sendok. Ini seperti salah satu permainan "mencari perbedaan" di mana Anda membandingkan dua gambar serupa. Tapi kali ini dengan sendok.')
    RETURNING id INTO r_161_membandingkan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '罒', 'bersih', 8, 6, 'Ini adalah <radical>jaring</radikal>, yang dibentangkan di atas air. Bayangkan semua ikan yang bisa Anda tangkap di jaring ini!')
    RETURNING id INTO r_163_bersih;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '釆', 'sabit', 8, 7, 'Sebagian besar dari radikal ini hanyalah radikal beras, tetapi bagian atasnya adalah sesuatu yang datang untuk memotong beras dari tangkainya. Itu sobat, itulah <radikal>sabit</radikal>. Lihat bagaimana nasinya masih ada di sana? Itu karena ia sedang bergerak. Sabit itu benar-benar sedang memotong SEKARANG! (Dan jangan bingung membedakannya dengan butiran 禾 radikal!)')
    RETURNING id INTO r_164_sabit;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '馬', 'kuda', 8, 8, 'Radikal ini terlihat seperti <radikal>kuda</radikal>. Lihat lehernya yang panjang dan tebal dengan surai menjuntai ke kanan? Yang tampak seperti sayap sebenarnya adalah keempat kaki kuda dan ekornya yang menjuntai ke bawah.

Jangan bingung membedakan radikal ini dengan radikal burung (鳥). Mereka terlihat mirip, tapi yang satu ini tidak memiliki bulu kecil yang mencuat dari atas kepalanya!')
    RETURNING id INTO r_165_kuda;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '易', 'mudah', 8, 9, 'Terbang menuju matahari dengan sayap itu <radikal>mudah</radikal>! Atau begitulah yang dipikirkan Icarus. Seseorang mungkin harus memberitahunya…')
    RETURNING id INTO r_172_mudah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '者', 'seseorang', 8, 10, 'Anda menemukan peti mati di bawah sinar matahari. Itu gosong karena panas, tapi pasti ada <radikal>seseorang</radikal> di sana. Anda bertanya-tanya siapakah orang misterius ini. Siapa pun mereka, mereka mendapat pemakaman matahari yang mewah, jadi mereka pasti seseorang (atau haruskah kita katakan, <em>sun-one</em>?).')
    RETURNING id INTO r_203_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '合', 'setelan', 8, 11, 'Ini adalah kata radikal untuk <radical>setelan</radikal>, seperti ketika ada sesuatu yang cocok untuk Anda. Anda menemukan topi di tanah, dan ketika Anda mengambilnya, ada mulut di bawahnya. "Itu cocok untukmu! Itu cocok untukmu!" kata mulut itu. Anda mencoba topinya, dan ya — itu sangat cocok! Aneh rasanya mendapat saran fesyen dari mulut sembarangan, tapi hei, itu tidak salah.')
    RETURNING id INTO r_216_setelan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '匚', 'kurungan', 8, 12, 'Radikal ini disebut <radikal>kandang</radikal> karena seluruh sisinya tertutup kecuali satu sisi (sisi yang terbuka adalah tempat pintu atau gerbang kandang berada). Tidak ada apa pun di dalam sangkar ini karena tidak ada gerbangnya, dan apa pun yang ada di dalamnya sudah keluar. Saya harap itu tidak gila...')
    RETURNING id INTO r_217_kurungan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '京', 'modal', 8, 13, 'Ini terlihat seperti jenis bangunan yang Anda temukan di <radical>ibu kota</radikal> Jepang. Lihat atap berornamen dan fondasi batu yang melebar di bawahnya, seperti kastil? Kaisar tinggal di sana. Dan dimanapun kaisar tinggal otomatis menjadi ibu kota. Makanya radikal ini adalah modal.

Sebagai alternatif, Anda dapat menggunakan bagian radikal dan membayangkan tutup panci raksasa yang akan memberi makan mulut semua orang kecil di ibu kota.')
    RETURNING id INTO r_299_modal;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '𠃌', 'tanjung', 8, 14, 'Ini adalah <radikal>jubah</radikal>, seperti yang biasa dikenakan pahlawan super. Gunakan imajinasi Anda untuk membayangkan seorang pahlawan menghadap ke kiri, dengan jubah diikatkan di leher dan digantung di punggung. Dengan mengenakan jubah itu, mereka siap menyelamatkan dunia!')
    RETURNING id INTO r_8780_tanjung;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_157_kait, 'Kait', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_158_ular, 'Ular', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_159_awan, 'Awan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_160_senjata, 'Senjata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_161_membandingkan, 'Membandingkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_163_bersih, 'Bersih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_164_sabit, 'Sabit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_165_kuda, 'Kuda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_172_mudah, 'Mudah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_203_seseorang, 'Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_216_setelan, 'Setelan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_217_kurungan, 'Kurungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_299_modal, 'Modal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8780_tanjung, 'Tanjung', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '池', 'kolam', 8, 15, '<radikal>buaya</radikal> yang malang itu terbawa jauh ke daratan akibat <radikal>tsunami</radikal>. Sekarang satu-satunya sumber airnya hanyalah <kanji>kolam</kanji> kecil yang hampir tidak muat untuk tubuhnya, dan bahkan tidak menyediakan banyak makanan.', 'Bagian terburuk dari <kanji>kolam</kanji> ini adalah satu-satunya yang dimakan aligator hanyalah <reading>chee</reading>se (ち). Keju mungkin enak bagi manusia, tapi aligator membencinya. Mereka lebih suka memakan sapi asal keju tersebut. Sayangnya, kolam ini penuh dengan keju.')
    RETURNING id INTO k_573_kolam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '次', 'berikutnya', 8, 16, '<radical>Es</radical> adalah apa yang <radical>kekurangan</radical>ing, jadi hal <kanji>berikutnya</kanji> yang perlu Anda lakukan adalah pergi ke toko dan melihat apakah mereka punya. Tidak, tidak ada es. Jadi, sekarang Anda pergi ke toko berikutnya. Apakah ada es di sini? Tidak. Berikutnya!', 'Untuk mengingat bacaan じ, kami menggunakan kata "Yesus" - Akhirnya, ketika Anda berada di toko terakhir yang ada, Anda memutuskan sudah waktunya untuk berdoa kepada <membaca>Je</reading>sus (じ), meminta keajaiban. Dia turun dari surga dengan es di tangannya.')
    RETURNING id INTO k_616_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '京', 'modal', 8, 17, 'Sama seperti kata radikal, kanji berarti <kanji>ibu kota</kanji>.', 'Untuk mengingat bacaan きょう kami menggunakan <kanji>ibu kota</kanji> lama Jepang, Kyoto, yang dieja <reading>きょう</reading>と. Itu adalah ibu kota Jepang sebelum Tokyo!')
    RETURNING id INTO k_620_modal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '支', 'mendukung', 8, 18, 'Radikal <radikal>cabang</radikal> dan kanji <kanji>cabang</kanji> adalah sama! Kanji ini juga berarti <kanji>dukungan</kanji>. Untuk mengingatnya, bayangkanlah sebuah pohon yang mempunyai banyak cabang. Cabang-cabangnya saling menopang dan batang pohon. Jika Anda memanjat pohon, dahannya juga akan mampu menopang berat badan Anda!', 'Anda dengan senang hati duduk di <kanji>cabang</kanji> ini, membiarkannya <kanji>menopang</kanji> semua beban ini, ketika <reading>shee</reading>p (し) mulai memanjat pohon. Seekor domba yang sangat, sangat besar. Uh oh... tidak tidak, domba. Jika Anda naik ke cabang ini, ia tidak akan mampu menopang semua beban ini!!!')
    RETURNING id INTO k_678_mendukung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '住', 'tinggal', 8, 19, '<radical>pemimpin</radikal> dari <radical>master</radical> dapat memilih tempat <kanji>tinggal</kanji> mereka. Jadi mereka <kanji>tinggal</kanji> di sebuah rumah besar di puncak gunung, dikelilingi oleh semua tuan lainnya di tempat tinggal mereka yang lebih kecil.', 'Dia membutuhkan tempat sebesar ini untuk <kanji>tinggal</kanji> sehingga dia memiliki tempat untuk menyimpan semua <reading>Yahudi</reading>elnya (じゅう). Tuan selalu punya banyak barang mewah dan mahal, dan dia punya perhiasan.')
    RETURNING id INTO k_679_tinggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '助', 'membantu', 8, 20, 'Dengan <radical>top hat</radical> <radical>power</radical>, Anda dapat <kanji>membantu</kanji> siapa pun.', 'Orang yang Anda <kanji>bantu</kanji> dengan kekuatan topi tertinggi Anda? Itu <read>Jo</reading>-Anne (じょ).')
    RETURNING id INTO k_680_membantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '医', 'obat', 8, 21, 'Anda berada di dalam <radical>kandang</radikal> dan Anda telah tertembak oleh <radikal>panah</radikal>. Jelas segalanya terlihat sangat buruk. Anda memerlukan <kanji>obat</kanji> jika Anda ingin hidup.', 'Saat kita perlu mengingat bunyi い kita menggunakan kata "Elang".

Anda sangat membutuhkan <kanji>obat</kanji> Anda. Lalu, Anda melihat ke atas. Ada <read>ea</reading>gle (い) terbang di atas. Dia punya paket. Itu obat! Anda terselamatkan!')
    RETURNING id INTO k_681_obat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '君', 'sobat', 8, 22, '<radical>Wolverine</radical> sedang menuruni <radical>slide</radical> dan dari <radical>mulut</radical> Anda berteriak, "Hei, <kanji>sobat</kanji>! Tonton dengan slide itu, sangat cepat dan Anda mungkin melukai diri sendiri, sobat!" 

Anda adalah teman yang sangat baik bagi Wolverine. Dia juga merupakan penguasa lokal di negeri-negeri ini. Kamu biasakan berteman dengan orang-orang kuat setempat, untuk berjaga-jaga… Pantas saja kamu begitu berteman dengan semua penguasa di sekitar sini.', 'Keuntungan terbesar memiliki Wolverine sebagai <kanji>teman</kanji> Anda adalah dia mengajari Anda <read>kun</reading>g fu (くん). Wolverine ingin Anda, teman baiknya, mengetahui cara membela diri. Itu sebabnya dia menggunakan pengetahuan seni bela dirinya untuk melatih kung fu Anda setiap hari setelah dia selesai bermain perosotan.')
    RETURNING id INTO k_682_sobat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '対', 'melawan', 8, 23, '<radical>Penulisan</radikal> dan <radikal>pengukuran</radikal> berdiri <kanji>berlawanan</kanji> satu sama lain. Menulis adalah tentang perasaan dan ekspresi. Pengukuran adalah tentang bilangan keras yang dingin. Yap, di dunia ini orang yang menulis pada dasarnya adalah <kanji>kebalikan</kanji> dari orang yang mengukur. Kamu berada di pihak yang mana?', 'Kapan pun Anda <kanji>melawan</kanji> orang lain, Anda mengenakan <reading>dasi</reading> (たい). Tentu saja, warna dasi Anda selalu <kanji>berlawanan</kanji> dengan warna dasi lawan Anda. Mirip seperti lawan politik yang memakai dasi dengan warna berbeda saat berdebat. Ini cukup konyol, tapi setidaknya dasi Anda memperjelas bahwa Andalah yang versus mereka.')
    RETURNING id INTO k_683_melawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '局', 'biro', 8, 24, '<radical>bendera</radical> negara Anda terletak di atas <radical>jubah</radical>d <radical>mulut</radical>. Ini adalah simbol dari "<kanji>Biro</kanji> Hal-Hal Rahasia". Ini adalah <kanji>departemen</kanji> khusus di pemerintahan Anda yang dibuat untuk menyembunyikan segala sesuatunya.', 'Rahasia terbaik <kanji>biro</kanji> adalah menyelubungi perangkat yang <reading>menyelubungi Anda</reading> (きょく) hanya dengan menekan sebuah tombol.')
    RETURNING id INTO k_684_biro;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '役', 'melayani', 8, 25, 'Anda <radical>berkeliaran</radikal> dengan <radical>senjata</radikal> karena Anda sedang melakukan <kanji>layanan</kanji> dan <kanji>tugas</kanji> Anda untuk negara Anda. Anda berjaga di luar, menunggu kalau-kalau terjadi sesuatu.', 'Anda sudah setengah jalan dalam <kanji>layanan</kanji> Anda, ketika <reading>yak</reading> (やく) lewat. Ia berhenti tepat di depan Anda dan mendengus. "Maaf, Tuan Yak, tapi itu adalah <kanji>tugas</kanji> saya untuk mengantar Anda keluar dari negara saya."')
    RETURNING id INTO k_685_melayani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '投', 'melemparkan', 8, 26, 'Di <radical>jari</radical> Anda ada <radical>senjata</radical>, jadi Anda <kanji>melempar</kanji> itu. Mungkin Anda sedang marah dan melemparkan senjata ke arah orang yang tidak Anda sukai. Mungkin Anda seorang pasifis dan Anda membuangnya sehingga tidak ada orang lain yang bisa menggunakannya. Apa pun yang terjadi, saat Anda memegang senjata di jari, Anda harus melemparkannya.', 'Kamu <kanji>membuang</kanji> senjatamu karena kamu akan memasuki <reading>とう</reading>きょう dan tidak ada senjata yang diperbolehkan di sana. Namun, ada setumpuk besar senjata yang dibuang di perbatasan, di situlah Anda membuang senjata Anda sekarang.')
    RETURNING id INTO k_686_melemparkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '決', 'memutuskan', 8, 27, 'Anda mempunyai <radikal>tsunami</radikal> untuk membunuh <radikal>orang</radikal> ini, atau <radikal>kail</radikal>. Metode mana yang akan Anda pilih? <kanji>Putuskan</kanji> sekarang!', 'Untuk mengingat bacaan けつ, kami selalu menggunakan kata "ketsup". Ini adalah campuran spesial dari saus tomat dan saus tomat (yum):

Anda akhirnya <kanji>memutuskan</kanji>. Anda akan mengalami tsunami... tapi bukan sembarang tsunami. Anda akan membunuhnya dengan tsunami <reading>ketsu</reading>p (けつ).')
    RETURNING id INTO k_687_memutuskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '究', 'riset', 8, 28, 'Anda menggali <radical>lubang</radical> <radical>sembilan</radical> kali untuk <kanji>penelitian</kanji> Anda. Anda harus selalu melakukan penelitian dengan sembilan variabel sehingga Anda dapat membandingkannya, sehingga jumlahnya tidak merata.', '<kanji>penelitian</kanji> Anda ada di <reading>cu</reading>cumbers (きゅう)!')
    RETURNING id INTO k_688_riset;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '身', 'tubuh', 8, 29, 'Ketika <radical>diri</radical> Anda terjatuh <radical>slide</radical> dan mengenai <radical>duri</radical>, itu adalah pengingat yang menyakitkan bahwa Anda memiliki <kanji>tubuh</kanji>. Kadang-kadang orang mengira dirinya hanyalah semacam kesadaran yang mengambang dan tidak berwujud, namun menusukkan duri ke dalam <kanji>dirinya</kanji> saat menuruni perosotan akan dengan cepat mengingatkan seseorang akan keberadaan tubuhnya.', 'Di bagian <kanji>tubuh</kanji> manakah duri itu tertancap? <reading>tulang kering</reading> Anda (しん). Duri kecil runcing itu menusuk jauh ke dalam tulang keringmu dan membuatmu sadar akan fakta bahwa <kanji>diri sendiri</kanji> dan tubuh seseorang tidak dapat dipisahkan.')
    RETURNING id INTO k_689_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '者', 'seseorang', 8, 30, 'Radikal dan kanjinya sama persis, jadi ini artinya <kanji>seseorang</kanji>.', 'Jika Anda tidak tahu siapa <kanji>seseorang</kanji>, kemungkinan besar dia adalah <reading>sha</reading>man (しゃ). Hanya seorang dukun yang memiliki kekuatan mistik untuk mengaburkan identitas mereka sendiri dan menyamar sebagai "seseorang" yang misterius dan tidak dikenal.')
    RETURNING id INTO k_690_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '研', 'mengasah', 8, 31, '<radical>batu</radical> <radical>lentera</radical> adalah cara terbaik untuk <kanji>menajamkan</kanji> apa pun, bahkan dalam kegelapan. Pisaumu, garpumu, sendokmu, dan bahkan pedangmu.', 'Mengapa kamu <kanji>menajamkan</kanji> pedangmu? Karena Anda akan bertempur dengan <reading>Ken</reading> (けん), prajurit samurai terkenal.')
    RETURNING id INTO k_691_mengasah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '馬', 'kuda', 8, 32, 'Kanji <radikal>kuda</radikal> dan kanji <kanji>kuda</kanji> sama persis! Sabas!', 'Anda sedang melihat seekor kuda. Itu melihatmu. Anda mencoba membuat suara kuda, untuk mendapatkan reaksi. Alih-alih bereaksi dengan suara kuda biasa, ia malah mengeluarkan suara domba: "<reading>Baaa</reading>," (ば) katanya. "Baaaaa."')
    RETURNING id INTO k_692_kuda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '森', 'hutan', 8, 33, 'Kanji ini hanyalah akar <radikal>pohon</radikal> sebanyak tiga kali. Hanya berdasarkan ini, Anda seharusnya bisa mengetahuinya. Kanji ini berarti "<kanji>hutan</kanji>."', 'Satu pohon? Tidak. Dua pohon? Tidak cukup. Saya ingin <membaca>lebih banyak</reading> (もり) pohon!')
    RETURNING id INTO k_693_hutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '場', 'lokasi', 8, 34, '<radical>Kotoran</radical> memudahkan <radical>mudah</radical> mengidentifikasi <kanji>lokasi</kanji> Anda. Meskipun Anda menambahkan garis ekstra untuk menandai tanah, itu tetap mudah. Ingatlah hal itu dan Anda dapat berpindah dari <kanji>tempat</kanji> ke tempat lain.', 'Mengetahui <kanji>lokasi</kanji> Anda dari tanah adalah suatu prestasi yang luar biasa! Siapa yang mengajarimu itu? Itu adalah <read>Joe</reading> (じょう), buruh tani lokal yang besar. Meski agak aneh, dia bisa mengidentifikasi <kanji>tempat</kanji> mana pun hanya dari tanahnya!')
    RETURNING id INTO k_694_lokasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '朝', 'pagi', 8, 35, 'Ada <radical>salib</radikal> yang menonjol di bagian atas <radikal>matahari</radikal> dan satu lagi <radikal>salib</radikal> yang menonjol di bagian bawah. <radikal>bulan</radikal> berada di sebelah kanan. Itu karena ini adalah <kanji>pagi</kanji>, yaitu saat matahari dan bulan berganti posisi. Salib tersebut memastikan matahari tetap tinggi di langit sepanjang hari.', 'Setiap <kanji>pagi</kanji> Anda minum bir <reading>Asa</reading>hi (あさ) untuk sarapan.')
    RETURNING id INTO k_695_pagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '番', 'nomor-dalam-seri-a', 8, 36, 'Anda harus <radical>mengabit</radical> <radical>sawah</radical> hari ini karena inilah <kanji>giliran</kanji> Anda. Kanji ini juga berarti <kanji>angka dalam suatu rangkaian</kanji>, yang sangat mirip dengan putaran. Misal anda nomor 3, maka giliran anda menjadi nomor 3.', 'Sistem sabit beras berbasis <kanji>giliran</kanji> ini juga merupakan sebuah kontes! Namun, Anda kecewa saat mengetahui bahwa Anda telah <read>ban</reading>ned (ばん) dari game ini karena steroid peningkat performa yang Anda gunakan.')
    RETURNING id INTO k_696_nomor_dalam_seri_a;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '答', 'menjawab', 8, 37, '"Apakah kemeja <radikal>bambu</radikal> <radikal>cocok</radikal> untukku?" Anda bertanya... tapi tak seorang pun akan <kanji>menjawab</kanji>.', 'Anda mengeluarkan <reading>seperempat</reading> (こた) dan menawarkannya kepada siapa pun yang akan memberi Anda <kanji>jawaban</kanji>.')
    RETURNING id INTO k_697_menjawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '絵', 'gambar', 8, 38, 'Ketika sekumpulan <radical>benang</radikal> <radikal>bertemu</radikal> di atas kertas (misalnya, setelah Anda mencelupkannya ke dalam cat), mereka dapat menciptakan sebuah mahakarya berupa <kanji>gambar</kanji> (atau <kanji>lukisan</kanji>).', 'Anda memberi tahu seseorang bahwa Anda melukis karya <kanji>gambar</kanji> ini. Tanggapan mereka? "<membaca>EH</membaca> (え)?!"')
    RETURNING id INTO k_698_gambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '買', 'membeli', 8, 39, 'Inilah <radical>net</radical> yang berisi <radical>kerang</radical> yang bisa Anda <kanji>beli</kanji>. Anda tidak bisa begitu saja membeli kerang yang lepas. Anda hanya dapat membeli yang ada di jaring, dikantongi, dan siap untuk uang Anda.', 'Anda memutuskan untuk <kanji>membeli</kanji> kerang sebanyak yang Anda bisa muat di <reading>ca</reading>r (か) Anda. Anda terus membeli sampai mobil Anda penuh dengan kerang sebelum Anda berhenti. Mobil benar-benar merupakan satuan ukuran yang realistis.')
    RETURNING id INTO k_699_membeli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '道', 'jalan', 8, 40, 'Arahkan <radical>leher</radical> <radical>skuter</radical> ke <kanji>jalan</kanji>! Skuter hanya dimaksudkan untuk berkendara di <kanji>jalan</kanji> dan <kanji>jalur</kanji>, dan jika Anda salah <kanji>jalan</kanji>, Anda mungkin akan patah leher sendiri!', 'Untuk mengingat bacaan どう kita menggunakan kata "donat".

Anda menyusuri <kanji>jalan</kanji> ini dengan sangat cepat sehingga Anda tidak melihat <reading>dou</reading>ghnut (どう) raksasa yang meluncur ke arah Anda hingga menit terakhir. Anda menabraknya, dan Anda serta donatnya terjatuh. Ah, lehermu!')
    RETURNING id INTO k_700_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '間', 'selang', 8, 41, 'Ada <radical>gerbang</radical> yang dilalui <radical>matahari</radical> dengan <kanji>interval</kanji> yang teratur. Ada <kanji>interval waktu</kanji> dalam artian matahari melewatinya pada waktu yang sama setiap hari. Dan terdapat <kanji>jeda ruang</kanji> dalam artian harus melewati ruang antar tiang gerbang.', 'Metode mencatat <kanji>interval</kanji> waktu ini ditemukan oleh para Khan besar di Mongolia, khususnya Khan yang paling terkenal: Jenghis <reading>Khan</reading> (かん).

Jenghis Khan telah memberikan pengaruh yang sangat besar terhadap dunia yang kita kenal, khususnya benua Eurasia di masa lalu, jadi dia akan banyak tampil mulai sekarang. Bersiaplah untuk mengenal dia dan teman-temannya!')
    RETURNING id INTO k_701_selang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雲', 'awan', 8, 42, '<radical>hujan</radical> <radical>awan</radical> tetaplah <kanji>awan</kanji>! Mungkin sebentar lagi akan turun hujan, jadi kuharap kamu punya jaket atau payung.', 'Anda berbaring dan mencoba mencari tahu seperti apa bentuk <kanji>awan</kanji>. Awan pertama berbentuk... seperti <reading>coo</reading>l <reading>mo</reading>m (くも). Dia mengenakan celana tinggi, dan menggendong anak di setiap pinggulnya, tapi dia juga mendengarkan musik terbaru dan menggunakan bahasa gaul. Hah. Anda melihat ke awan berikutnya dan melihat... tunggu, ibu keren lainnya?')
    RETURNING id INTO k_702_awan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '数', 'menghitung', 8, 43, 'Berikan <radical>beras</radical> kepada <radical>wanita</radical> di <radical>musim dingin</radical> agar dia dapat <kanji>menghitung</kanji>. Wanita tersebut akan menghitung setiap butir beras, lalu memberi tahu Anda <kanji>jumlah</kanji> atau <kanji>jumlah</kanji> butir tersebut.', 'Kenapa kamu harus <kanji>menghitung</kanji> nasimu seperti ini? Itu karena seseorang <reading>menuntut</reading>d (すう) peternakanmu dan merampas semua milikmu. Sejak digugat, Anda hanya mempunyai <kanji>sejumlah</kanji> beras yang cukup untuk bertahan di musim dingin.')
    RETURNING id INTO k_703_menghitung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '楽', 'kenyamanan', 8, 44, '<radical>putih</radikal> <radikal>es</radikal> <radikal>pohon</radikal> adalah pohon ajaib yang memancarkan aura <kanji>kenyamanan</kanji>, <kanji>kemudahan</kanji>, dan <kanji>kesenangan</kanji>, dengan dedaunannya yang sedingin es berdenting seperti <kanji>musik</kanji> yang indah setiap kali bergoyang tertiup angin.', 'Anda menginginkan lebih banyak aura <kanji>kenyamanan</kanji> ini, jadi Anda menebang pohon ajaib dan membuat <read>rak</reading> pakaian (らく) dari pohon tersebut. Kemudian, Anda meletakkan rak di rumah Anda sehingga Anda dapat menikmati perasaan nyaman dan santai setiap kali Anda ingin menggantung sesuatu.')
    RETURNING id INTO k_704_kenyamanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '話', 'bicara', 8, 45, '<radical>Ucapkan</radical> dengan <radical>lidah</radical> Anda. Jika ya, Anda akan dapat <kanji>berbicara</kanji>. Anda akan dapat <kanji>berbicara</kanji>.', 'Jika sesuatu menggunakan lidahnya, ia akan dapat <kanji>berbicara</kanji> dan <kanji>berbicara</kanji>. Untuk membuktikannya, Anda mengajari <membaca>wa</reading>lrus (わ) untuk menggunakan lidahnya, dan lihatlah, ia berbicara kepada Anda!')
    RETURNING id INTO k_705_bicara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '電', 'listrik', 8, 46, 'Anda berada di tengah <radical>hujan</radical>, di <radical>sawah</radical>, memegang <radical>payung</radical>. Anda di sini karena tidak ada hal lain yang sangat tinggi di sekitar Anda. Anda ingin terkena <kanji>listrik</kanji> (alias petir), untuk membuktikan keberadaannya.', 'Setelah <kanji>listrik</kanji> menghantam Anda, Anda merasakan wajah Anda. Di dalamnya ada <read>sarang</reading>t (でん) yang sangat besar.')
    RETURNING id INTO k_706_listrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '所', 'tempat', 8, 47, 'Anda merobohkan <radical>pintu</radical> ini dengan <radical>kapak</radikal>. Kamu benar-benar gila. "AKU BENCI <kanji>TEMPAT</kanji> INI!!" kamu terus berteriak sambil mendobrak pintu.', 'Anda mendobrak pintu dan akhirnya masuk ke dalam <kanji>tempat</kanji>, hanya untuk menemukan semacam <read>sho</reading>w (しょ) sedang terjadi. Ini adalah pertunjukan sirkus — gajah, pejalan kaki di atas tali, beruang dengan sepeda roda satu! Pertunjukan terhebat di dunia, tapi mengapa diadakan di tempat ini?')
    RETURNING id INTO k_707_tempat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '反', 'anti', 8, 48, 'Di bawah <radical>tebing</radical> ada <radical>bangku</radical>. Jika seseorang memiliki bangku jauh di dalam tebing, kemungkinan besar mereka adalah <kanji>anti</kanji>-masyarakat, bersembunyi seperti itu.', 'Ternyata, saat kamu menemui pria ini dan mencabut janggutnya, dialah <kanji>anti</kanji>-hero dari Star Wars, <reading>Han</reading> (はん) Solo! Apa yang Han lakukan di sini, begitu tersembunyi? Dia jelas bersembunyi dari Jabba karena dia tidak ingin dibekukan lagi dalam karbonit.')
    RETURNING id INTO k_855_anti;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_573_kolam, 'Kolam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_616_berikutnya, 'Berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_620_modal, 'Modal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_678_mendukung, 'Mendukung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_678_mendukung, 'Cabang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_679_tinggal, 'Tinggal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_679_tinggal, 'Tinggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_679_tinggal, 'Tempat tinggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_680_membantu, 'Membantu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_681_obat, 'Obat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_682_sobat, 'Sobat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_682_sobat, 'Penggaris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_683_melawan, 'Melawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_683_melawan, 'Di depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_684_biro, 'Biro', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_684_biro, 'Departemen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_685_melayani, 'Melayani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_685_melayani, 'Tugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_686_melemparkan, 'Melemparkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_687_memutuskan, 'Memutuskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_687_memutuskan, 'Keputusan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_688_riset, 'Riset', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_689_tubuh, 'Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_689_tubuh, 'Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_690_seseorang, 'Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_690_seseorang, 'Orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_690_seseorang, 'Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_691_mengasah, 'Mengasah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_692_kuda, 'Kuda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_693_hutan, 'Hutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_693_hutan, 'Hutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_694_lokasi, 'Lokasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_694_lokasi, 'Tempat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_695_pagi, 'Pagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_696_nomor_dalam_seri_a, 'Nomor Dalam Seri A', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_696_nomor_dalam_seri_a, 'Berbelok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_697_menjawab, 'Menjawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_697_menjawab, 'Tanggapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_697_menjawab, 'Membalas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_698_gambar, 'Gambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_698_gambar, 'Lukisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_699_membeli, 'Membeli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_700_jalan, 'Jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_700_jalan, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_700_jalan, 'Jalur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_700_jalan, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_701_selang, 'Selang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_701_selang, 'Interval Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_701_selang, 'Interval Ruang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_702_awan, 'Awan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_703_menghitung, 'Menghitung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_703_menghitung, 'Jumlah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_703_menghitung, 'Nomor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_704_kenyamanan, 'Kenyamanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_704_kenyamanan, 'Kemudahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_704_kenyamanan, 'Kesenangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_704_kenyamanan, 'Musik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_705_bicara, 'Bicara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_705_bicara, 'Berbicara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_706_listrik, 'Listrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_707_tempat, 'Tempat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_707_tempat, 'Fasilitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_855_anti, 'Anti', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_573_kolam, 'ち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_573_kolam, 'いけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_616_berikutnya, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_616_berikutnya, 'し', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_616_berikutnya, 'つぎ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_616_berikutnya, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_620_modal, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_620_modal, 'みやこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_678_mendukung, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_678_mendukung, 'ささ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_679_tinggal, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_679_tinggal, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_680_membantu, 'じょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_680_membantu, 'たす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_680_membantu, 'すけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_681_obat, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_682_sobat, 'くん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_682_sobat, 'きみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_683_melawan, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_684_biro, 'きょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_685_melayani, 'やく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_685_melayani, 'えき', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_686_melemparkan, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_686_melemparkan, 'な', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_687_memutuskan, 'けつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_687_memutuskan, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_688_riset, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_688_riset, 'きわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_689_tubuh, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_689_tubuh, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_690_seseorang, 'しゃ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_690_seseorang, 'もの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_691_mengasah, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_691_mengasah, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_692_kuda, 'ば', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_692_kuda, 'め', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_692_kuda, 'うま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_692_kuda, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_693_hutan, 'もり', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_693_hutan, 'しん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_694_lokasi, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_694_lokasi, 'ば', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_695_pagi, 'あさ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_695_pagi, 'ちょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_696_nomor_dalam_seri_a, 'ばん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_696_nomor_dalam_seri_a, 'つが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_696_nomor_dalam_seri_a, 'つがい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_697_menjawab, 'こた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_697_menjawab, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_698_gambar, 'え', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_699_membeli, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_699_membeli, 'ばい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_700_jalan, 'どう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_700_jalan, 'みち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_701_selang, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_701_selang, 'けん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_701_selang, 'あいだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_701_selang, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_702_awan, 'くも', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_702_awan, 'うん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_703_menghitung, 'すう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_703_menghitung, 'かぞ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_703_menghitung, 'かず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_704_kenyamanan, 'らく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_704_kenyamanan, 'がく', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_704_kenyamanan, 'たの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_705_bicara, 'わ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_705_bicara, 'はな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_705_bicara, 'はなし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_706_listrik, 'でん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_707_tempat, 'しょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_707_tempat, 'ところ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_855_anti, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_855_anti, 'そ', 'kunyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '円い', 'bulat', 8, 49, 'Kata ini terdiri dari satu kanji dengan hiragana yang melekat padanya. Hiragana itu diakhiri dengan い yang artinya kata sifat. Jadi, apa bentuk kata sifat kanji yang ada pada kata ini? 円 berarti "yen" dan "bulat" tetapi dalam kasus ini kita melihat yang bulat (karena ada sesuatu yang tidak akan menjadi "yenny"). Versi kata sifat dari round adalah <vocabulary>round</vocabulary> atau <vocabulary>circular</vocabulary>. Sama seperti koin yen, "putaran" ini adalah putaran datar. Misalnya, jika Anda menggambar lingkaran di selembar kertas, Anda bisa menggunakan kata ini. Sama halnya dengan yen, itulah sebabnya "yen" dan "round" menggunakan kanji yang sama.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Pembacaan bagian 円 dari kata ini sama dengan kanji yang Anda pelajari di level 2: 丸. Kanji itu artinya sangat mirip dengan kanji ini. Dan coba tebak? Mereka juga berbagi bacaan. Jadi, jika kamu mengetahui bahwa bacaan 丸 adalah まる maka kamu juga akan mengetahui bahwa bacaan untuk kata ini adalah <reading>まる</reading>!', 'Bulat, Bundar')
    RETURNING id INTO v_2534_bulat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見分ける', 'untuk-membedakan', 8, 50, 'Anda <kanji>melihat</kanji> sesuatu, lalu Anda "memisahkan" (分ける) itu. Ini sama saja dengan <vocabulary>untuk membedakan</vocabulary>, <vocabulary>untuk membedakan</vocabulary>, atau <vocabulary>untuk mengenali</vocabulary>. Kata kerja ini bersifat transitif, jadi Anda sedang melakukan tindakan terhadap sesuatu. Anda membedakan antara benda atau orang.', 'Anda seharusnya sudah mengetahui pembacaan 見. Bagian kedua, 分ける adalah kata yang seharusnya sudah Anda pelajari di level sebelumnya. Gabungkan pengetahuan itu bersama-sama dan Anda akan memahami kata ini.', 'Untuk Membedakan, Untuk Membedakannya, Untuk Mengenali')
    RETURNING id INTO v_2700_untuk_membedakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '池', 'kolam', 8, 51, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Jika Anda jatuh ke dalam <vocabulary>kolam</vocabulary>, suara apa yang Anda keluarkan? <membaca>EEEEK</membaca> (いけ)! Atau mungkin Anda hanya takut dengan kolam (saya tidak menyalahkan Anda, mungkin ada ular atau lintah atau aligator di sana) dan Anda EEEEK ketika seseorang menyebutkannya.', 'Kolam')
    RETURNING id INTO v_2761_kolam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '次回', 'lain-kali', 8, 52, '<kanji>berikutnya</kanji> <kanji>waktu</kanji> Anda melihat kanji ini, Anda harus tahu bahwa itu artinya <vocabulary>next time</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lain kali')
    RETURNING id INTO v_2871_lain_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中東', 'timur-tengah', 8, 53, '<kanji>tengah</kanji> dari <kanji>timur</kanji> lebih dikenal sebagai <vocabulary>timur tengah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan dua bacaan on''yomi. Anda tidak mempelajari on''yomi untuk 東 (とう) dengan kanji, jadi berikut ini mnemonik untuk membantu:

Jika Anda berada di Jepang tetapi ingin mencicipi <vocabulary>Timur Tengah</vocabulary>, Anda harus mengunjungi <reading>とう</reading>きょう. とうきょう adalah kota yang sangat internasional, sehingga penuh dengan tempat bagus untuk menikmati makanan dari Timur Tengah. Masakan Turki, masakan Lebanon, masakan Persia — sebut saja, とうきょう punya semuanya.', 'Timur Tengah')
    RETURNING id INTO v_2899_timur_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辺り', 'daerah', 8, 54, 'Ini adalah versi kata benda dari kanji untuk <kanji>area</kanji>. Hal ini membuatnya memiliki arti yang sama dengan kanji: <vocabulary>area</vocabulary>, <vocabulary>visinity</vocabulary>, atau <vocabulary>neighborhood</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika Anda memikirkan tentang <vocabulary>area</vocabulary> di mana Anda berada, itulah tempat Anda <read>di</reading> (あた).', 'Daerah, Sekitarnya, Lingkungan')
    RETURNING id INTO v_2935_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通る', 'untuk-melewati', 8, 55, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>melewati</kanji> sehingga versi kosakata kata kerjanya memiliki arti seperti <vocabulary>melewati</vocabulary>, <vocabulary>melewati</vocabulary>, dan <vocabulary>to travel bersama</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Saat Anda mencoba <vocabulary>melewati</vocabulary> ruang sempit, jari kaki Anda terantuk sesuatu dan berteriak "<reading>TOE! OH</reading> (とお)!" Karena tergesa-gesa <vocabulary>melewati</vocabulary>, kamu tidak memeriksa sekelilingmu dengan benar, dan kamu membenturkan jari kakimu yang malang ke sesuatu yang sangat keras. Sakit sekali, dan Anda menghabiskan sisa hari Anda dengan tertatih-tatih, merintih, "jari kaki… oh…”', 'Untuk Melewati, Untuk Melewati, Untuk Bepergian Bersama')
    RETURNING id INTO v_2966_untuk_melewati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '馬', 'kuda', 8, 56, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Bayangkan seseorang sedang menunggang kuda. Siapa orang itu? Itu <read>Uma</reading> (うま) Thurman, aktris terkenal.', 'Kuda')
    RETURNING id INTO v_2990_kuda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '馬力', 'daya-kuda', 8, 57, 'Kata ini mungkin dibuat baru-baru ini. Kekuatan <kanji>kuda</kanji>? Itulah <vocabulary>tenaga kuda</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 力 memiliki dua pembacaan on''yomi yang umum, berikut adalah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Mobil dengan <vocabulary>horsepower</vocabulary> tinggi biasanya dikendarai oleh <reading>Ricky</reading> (りき). Ricky terkenal menyukai semua mobil dengan tenaga kuda yang besar, sehingga dia sering terlihat berkeliling dengan mobil sport mewah. Vroom vroom Ricky!', 'Daya kuda')
    RETURNING id INTO v_2991_daya_kuda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '支える', 'untuk-mendukung', 8, 58, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendukung</kanji> sehingga versi kata kerjanya adalah <vocabulary>to support</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda memerlukan <vocabulary>untuk mendukung</vocabulary> seseorang. Untuk mendukung mereka, Anda mengambil dua gergaji. Satu gergaji dan satu lagi gergaji. Ini adalah kombinasi <reading>saw saw</reading> (ささ) yang cukup baik untuk melakukan semua dukungan yang Anda perlukan - dan mungkin memotong beberapa dukungan juga.', 'Untuk Mendukung')
    RETURNING id INTO v_2992_untuk_mendukung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '支店', 'kantor-cabang', 8, 59, '<kanji>dukungan</kanji> <kanji>toko</kanji> adalah <vocabulary>kantor cabang</vocabulary>. Agaknya hal ini karena "toko" yang biasa adalah "toko" dan segala sesuatu yang mendukungnya adalah kantor (cabang) setempat.

Jika membantu, kata ini memiliki arti yang sama dengan 支局 yang juga akan Anda pelajari di level ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kantor Cabang, Toko Cabang')
    RETURNING id INTO v_2993_kantor_cabang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '住む', 'untuk-hidup', 8, 60, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tinggal</kanji>, jadi versi verbanya berarti <vocabulary>hidup</vocabulary>, <vocabulary>bertempat tinggal</vocabulary>, atau tentu saja <vocabulary>tinggal</vocabulary>. Pada dasarnya, seseorang tinggal di suatu tempat. Kamu tinggal di mana?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda punya tempat tinggal... tapi tidak lama. Anda <reading>dituntut</reading>d (す) keluar dari rumah dan rumah Anda sehingga Anda tidak punya <kosakata>tempat tinggal</vocabulary>.', 'Untuk Hidup, Untuk Tinggal, Untuk Tinggal')
    RETURNING id INTO v_2994_untuk_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '住人', 'penduduk', 8, 61, 'Jika Anda <kanji>tinggal</kanji> di suatu tempat dan Anda adalah <kanji>seseorang</kanji>, itu menjadikan Anda <vocabulary>penduduk</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Yang dipedulikan <reading>jew</reading>el dan <reading>Nin</reading>tendo (じゅうにん) di daerah saya adalah <reading>jew</reading>els. Rumah mereka penuh dengan perhiasan dan barang-barang Nintendo. Bagaimana dengan penduduk di kotamu? Saya yakin mereka semua menyukai perhiasan dan Nintendo juga.', 'Penduduk, Penduduk, Penghuni')
    RETURNING id INTO v_2995_penduduk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '助ける', 'untuk-membantu', 8, 62, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membantu</kanji> jadi versi kata kerjanya adalah <vocabulary>to help</vocabulary>. Jangan bingung membedakannya dengan 助かる yang artinya "dibantu". Anda tahu bahwa 助ける berarti "membantu" karena Andalah yang membantu. Anda tahu bahwa Anda membantu karena Anda <reading>peduli</reading> (ける).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda memerlukan <vocabulary>untuk membantu</vocabulary> seseorang. Seseorang tergantung di tebing dan di luar jangkauan. Mereka meminta Anda, orang yang berdiri di atas mereka, untuk <read>melempar</read> (たす) mereka seutas tali, namun Anda menolak. "BUANG ITU!" mereka berteriak. "AKU TIDAK AKAN MEMBUATNYA," jawabmu. Kamu brengsek.', 'Untuk Membantu, Untuk Menyimpan, Untuk Menyelamatkan')
    RETURNING id INTO v_2997_untuk_membantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '助言', 'nasihat', 8, 63, 'Saat Anda <kanji>membantu</kanji> dengan apa yang Anda <kanji>katakan</kanji>, Anda memberikan <vocabulary>nasihat</vocabulary>.

Kata ini umumnya ditemukan dalam konteks formal atau profesional. Dalam suasana santai, Anda bisa menggunakan アドバイス (saran) saja.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nasihat')
    RETURNING id INTO v_3000_nasihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '医大', 'universitas-kedokteran', 8, 64, 'Anda pernah melihat 大学 berarti "perguruan tinggi". Jadi ambil 大 dan masukkan ke dalam <kanji>kedokteran</kanji> untuk menciptakan "perguruan tinggi kedokteran", atau <vocabulary>universitas kedokteran</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<kosakata>universitas kedokteran</vocabulary> lokal Anda sangat bangga dengan <read>ea</reading>gle <reading>pewarna</reading> (いだい) miliknya. Ini satu-satunya pewarna di dunia yang dibuat langsung dari elang. Agak aneh untuk sebuah universitas kedokteran, namun tetap mengesankan!', 'Universitas Kedokteran, Sekolah kedokteran, Sekolah Kedokteran')
    RETURNING id INTO v_3001_universitas_kedokteran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '医学', 'ilmu-kedokteran', 8, 65, '<kanji>studi</kanji> tentang <kanji>kedokteran</kanji> adalah <vocabulary>ilmu kedokteran</vocabulary>. Ini juga bisa disebut <vocabulary>medicine</vocabulary>, tapi pastikan untuk menganggapnya sebagai "obat" yang ada hubungannya dengan "ilmu kedokteran".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ilmu kedokteran, Obat')
    RETURNING id INTO v_3002_ilmu_kedokteran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '医者', 'dokter', 8, 66, '<kanji>Seseorang</kanji> yang bekerja di bidang <kanji>kedokteran</kanji> adalah <vocabulary>dokter</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dokter, Dokter')
    RETURNING id INTO v_3003_dokter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '君主国', 'kerajaan', 8, 67, 'Satu <kanji>penguasa</kanji> adalah <kanji>penguasa</kanji> seluruh <kanji>negara</kanji> ini. Wah, bagi saya ini terdengar seperti <vocabulary>monarchy</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kerajaan')
    RETURNING id INTO v_3004_kerajaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '君', 'anda', 8, 68, 'Oke, jadi kanji itu sendiri berarti <kanji>teman</kanji> dan begitu juga dengan kata itu, tapi kanji itu juga berarti <vocabulary>kamu</vocabulary>. Ini adalah salah satu dari beberapa cara untuk mengatakan "kamu" dalam bahasa Jepang, dan ini adalah semacam "sayang" terhadap Anda. Mungkin Anda akan mengatakannya dengan seseorang yang dekat dengan Anda. Mungkin Anda akan mengatakannya dengan pacar. Namun, Anda tidak ingin menggunakannya dengan atasan atau guru Anda. Pastikan untuk mengingatnya. Ini seperti mengatakan "hai sobat" atau "hai kamu".', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Siapa <vocabulary>teman</vocabulary> Anda? Itu <read>Kimmy</reading> (きみ)! Jika Anda mengenal Kimmy, bayangkan dia. Jika tidak, carilah Kimmy yang terkenal atau buatlah Kimmy untuk dibayangkan. Anda bertanya... apakah itu Anda?? Tunggu, kamu temanku?', 'Anda, Sobat')
    RETURNING id INTO v_3005_anda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜君', 'nama-anak-laki-laki-ender', 8, 69, 'Tambahkan ini di akhir nama seseorang, seperti mengucapkan ______<kanji>sobat</kanji>. Biasanya digunakan sebagai nama ender (seperti さん) untuk anak laki-laki dan laki-laki muda. Jangan gunakan ini pada orang yang peringkatnya lebih tinggi dari Anda (secara sosial atau harfiah). Seperti halnya, Anda tidak akan menggunakannya pada atasan Anda. Gunakan pada bawahan laki-laki Anda yang lebih muda serta anak laki-laki yang belum dewasa.', 'Cara membacanya sama dengan yang Anda pelajari dengan kanji (on''yomi), mungkin karena biasanya dilekatkan dengan kata lain (alias nama, seperti こういち君) membuatnya lebih mirip dengan kata-kata jukugo.', 'Nama Anak Laki-Laki Ender, Nama Laki-Laki Ender, Kun')
    RETURNING id INTO v_3006_nama_anak_laki_laki_ender;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対する', 'untuk-menghadapi', 8, 70, 'Saat Anda melakukan (する) <kanji>versus</kanji>, Anda memilih <vocabulary>untuk menghadapi</vocabulary> lawan. Di sinilah perhatian dan upaya Anda akan <vocabulary>diarahkan</vocabulary>. Alternatifnya, Anda dapat menggunakan kata <vocabulary>untuk membedakan</vocabulary> satu hal dengan hal lainnya.

Kata ini digunakan untuk membantu menunjukkan hubungan antara dua hal dalam sebuah kalimat, dimana satu hal terfokus pada hal lain. Ini semua agak kabur dan mungkin membingungkan, jadi periksalah kolokasi dan konteks kalimatnya untuk lebih memahami kata ini!', 'Bacaannya sama dengan yang kamu pelajari dengan kanji, jadi kamu seharusnya bisa membaca kata ini tanpa masalah.', 'Untuk Menghadapi, Untuk Diarahkan, Untuk Membandingkan')
    RETURNING id INTO v_3007_untuk_menghadapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '反対', 'di-depan', 8, 71, '<kanji>anti</kanji> <kanji>versus</kanji>... Anda akan berpikir ini akan menjadi negatif ganda, tapi ini seperti banyak kata lain di mana Anda memiliki dua kata yang mirip digabungkan... artinya sama saja dengan dua kata itu. Dalam hal ini, anti-versus dari sesuatu adalah <vocabulary>kebalikan</vocabulary>. 

反対 mengacu pada sesuatu yang berlawanan arah, posisi, atau sifatnya. Dalam beberapa kasus, ini juga bisa berarti <vocabulary>oposisi</vocabulary> karena tidak setuju atau menolak sesuatu berarti seseorang mengambil pihak yang berlawanan dalam suatu masalah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Di depan, Oposisi')
    RETURNING id INTO v_3010_di_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '局', 'biro', 8, 72, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kanji dan kosakatanya sama persis, bahkan bacaannya pun sama. Yang ini menggunakan on''yomi mungkin karena sering dikaitkan dengan kata lain (misalnya biro), jadi itulah mengapa ia mengikuti konvensi jukugo meskipun sendirian.', 'Biro, Departemen, Stasiun, Kantor')
    RETURNING id INTO v_3011_biro;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '支局', 'kantor-cabang', 8, 73, '<kanji>pendukung</kanji> <kanji>biro</kanji> adalah kelompok yang mendukung suatu bisnis. Ini adalah <vocabulary>kantor cabang</vocabulary>. 

Jika membantu, kata ini memiliki arti yang sama dengan <vocabulary>支店</vocabulary> yang juga akan Anda pelajari di level ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kantor Cabang')
    RETURNING id INTO v_3012_kantor_cabang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '役', 'peran', 8, 74, 'Jika Anda mempunyai <kanji>tugas</kanji> tertentu maka tugas Anda adalah memainkan <vocabulary>peran</vocabulary> tersebut. Anda harus memainkan <vocabulary>bagian</vocabulary>. Seperti dalam sebuah drama!', 'Bacaannya sama dengan kanji yang kamu pelajari, artinya kamu juga harus bisa membaca yang ini.', 'Peran, Bagian, Tugas, Melayani')
    RETURNING id INTO v_3013_peran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '役人', 'pejabat-publik', 8, 75, '<kanji>tugas</kanji> yang dimiliki <kanji>orang</kanji> ini? Itu urusan pemerintah, yang menjadikan mereka <vocabulary>pejabat publik</vocabulary> atau <vocabulary>pejabat pemerintah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Seorang <vocabulary>pejabat publik</vocabulary> baru-baru ini menyatakan bahwa semua <reading>yak</reading> di <reading>Nin</reading>tendo (やくにん) akan dikeluarkan. Anda tidak tahu bahwa Nintendo memiliki yak penduduk? Memang benar, tapi tidak untuk waktu yang lama. Tapi siapa yang akan mengurus semua yak Nintendo sekarang?! Mungkin Anda bisa mengambilnya!', 'Pejabat Publik, Pejabat Pemerintah, Pegawai Negeri')
    RETURNING id INTO v_3014_pejabat_publik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '役に立つ', 'agar-bermanfaat', 8, 76, 'Ketika tugas (役) tiba, mereka yang bersedia berdiri (立つ) dan menerimanya adalah orang-orang yang akan <vocabulary>berguna</vocabulary> bagi masyarakat. Jangan lari dari tugas Anda — berdirilah, hadapi tugas tersebut, dan buktikan diri Anda sebagai anggota umat manusia yang berguna!', 'Pembacaan 役 adalah yang Anda pelajari dengan kanji. Pembacaan 立つ merupakan kosakata 立つ yang sudah Anda ketahui sekarang.', 'Agar Bermanfaat')
    RETURNING id INTO v_3015_agar_bermanfaat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大役', 'tugas-penting', 8, 77, '<kanji>Tugas</kanji> besar</kanji> adalah <kosakata>tugas besar</vocabulary>. Ini juga bisa menjadi <vocabulary>tugas penting</vocabulary>. Pikirkan tentang tugas besar yang Anda miliki. Kemudian, pikirkan betapa pentingnya tugas itu juga. Banggalah dengan tugas penting Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Anda telah diberi <vocabulary>tugas penting</vocabulary> untuk mengurus <reading>dasi</reading> <reading>yak</reading> (たいやく) lokal. Di tempat asal Anda, mengenakan yak dengan dasi sangatlah penting, jadi jangan anggap enteng tugas besar ini!', 'Tugas Penting, Tugas Besar, Peran Penting')
    RETURNING id INTO v_3016_tugas_penting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '研究', 'riset', 8, 78, 'Saat Anda <kanji>mempertajam</kanji> <kanji>penelitian</kanji> Anda hanya melakukan <vocabulary>studi</vocabulary> atau <vocabulary>investigasi</vocabulary>. Atau dengan kata lain, Anda sedang melakukan <vocabulary>riset</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Riset, Penyelidikan, Belajar')
    RETURNING id INTO v_3023_riset;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '投げる', 'untuk-melempar', 8, 79, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melempar</kanji> jadi versi verbanya berarti <vocabulary>to throw</vocabulary>.', 'Kata ini terdiri dari kanji yang dibubuhi hiragana, jadi bisa dipastikan menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Anda berada di pertandingan bisbol dan menyaksikan orang-orang <vocabulary>melempar</vocabulary> bola ke sana kemari. Tapi Anda lapar sehingga Anda meminta makanan ringan dari penjual. Anda mengangkat tangan dan mereka melemparkan beberapa <read>na</reading>chos (な) ke arah Anda. Oh tidak! Aduh! Nachonya panas dan mengenai wajah Anda. Penjualnya baru saja melemparkan seikat nacho pedas ke arah Anda! MENGAPA?!', 'Untuk Melempar, Untuk Melempar Sesuatu')
    RETURNING id INTO v_3025_untuk_melempar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心身', 'pikiran-dan-tubuh', 8, 80, 'Ini terlihat seperti <kanji>hati</kanji> dan <kanji>tubuh</kanji> Anda. Namun "hati" di sini bukanlah hati yang sebenarnya, melainkan bentuk kiasan yang diasosiasikan dengan kondisi emosi dan mental Anda. Itu menjadikan kata ini sebagai <kosakata>pikiran dan tubuh</vocabulary> Anda.

心身 adalah kata yang agak formal yang sering muncul dalam konteks kesehatan dan kebugaran untuk menekankan kesejahteraan total. Namun kata ini juga bisa digunakan dalam pembicaraan santai tentang perawatan diri, seperti menggambarkan bagaimana pemandian air panas menyegarkan Anda secara mental dan fisik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pikiran dan Tubuh, Tubuh Dan Pikiran')
    RETURNING id INTO v_3026_pikiran_dan_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '身体', 'tubuh', 8, 81, '<kanji>tubuh</kanji> dari <kanji>tubuh</kanji> adalah… <vocabulary>tubuh</vocabulary>! 

身体 terdengar lebih teknis daripada 体. Anda mungkin menemukannya dalam konteks yang berkaitan dengan pemeriksaan fisik, misalnya, atau dalam diskusi tentang kemampuan fisik seseorang dalam konteks atletik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.

Kata ini juga bisa dibaca からだ, yang tidak beraturan namun tidak terlalu sulit untuk diingat karena sama dengan bacaan yang sudah kamu pelajari untuk 体! Anda biasanya menggunakan bacaan ini dalam konteks santai, dan ketika kata tersebut berdiri sendiri, bukan dalam kata majemuk. Dalam situasi formal dan majemuk, Anda sebaiknya tetap berpegang pada bacaan on''yomi lama yang biasa.', 'Tubuh')
    RETURNING id INTO v_3027_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全身', 'seluruh-tubuh', 8, 82, '<kanji>Seluruh</kanji> dari <kanji>tubuh</kanji> seseorang adalah <vocabulary>keseluruhan tubuh</vocabulary> atau <vocabulary>keseluruhan tubuh</vocabulary> mereka.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seluruh Tubuh, Seluruh Tubuh')
    RETURNING id INTO v_3028_seluruh_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '森', 'hutan', 8, 83, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan kun''yomi, tapi itu bacaan yang kamu pelajari dengan kanji jadi kamu harus bisa membaca yang ini juga.', 'Hutan, Hutan')
    RETURNING id INTO v_3029_hutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '両者', 'kedua-orang', 8, 84, 'Saat Anda memiliki <kanji>keduanya</kanji> <kanji>seseorang</kanji>, Anda memiliki <vocabulary>keduanya</vocabulary>. Seiring berjalannya waktu, Anda akan menyadari bahwa 者 sering kali digunakan untuk menunjukkan seseorang atau tipe seseorang, jadi ingatlah hal itu juga untuk kata-kata berikutnya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kedua Orang')
    RETURNING id INTO v_3030_kedua_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '作者', 'pengarang', 8, 85, '<kanji>Seseorang</kanji> yang <kanji>membuat</kanji> adalah seseorang yang menciptakan sesuatu. Dulu, pencipta seperti ini mungkin dikenal dengan banyak hal, namun yang paling menonjol adalah <vocabulary>penulis</vocabulary>.

Ingin tahu tentang perbedaan antara 作者 dan 作家? Pada dasarnya, 作者 hanya mengacu pada pencipta suatu karya kreatif tertentu, seperti buku, artikel, karya seni, karya musik, dll., sedangkan 作家 mengacu pada seseorang yang menciptakan hal-hal tersebut sebagai pekerjaan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 作 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>penulis</vocabulary> favoritmu juga seorang <reading>sack</reading> <reading>sha</reading>man (さくしゃ). Mereka melakukan segala macam keajaiban aneh yang melibatkan karung, dan Anda suka membacanya. Mungkin suatu hari nanti, Anda sendiri bisa menjadi dukun karung dan <vocabulary>penulis</vocabulary>.', 'Pengarang, Penulis')
    RETURNING id INTO v_3031_pengarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '学者', 'sarjana', 8, 86, '<kanji>Seseorang</kanji> yang <kanji>belajar</kanji> untuk mencari nafkah. Itu adalah <vocabulary>sarjana</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sarjana')
    RETURNING id INTO v_3032_sarjana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '工学者', 'insinyur', 8, 87, 'Apakah Anda ingat 工学 dari beberapa level yang lalu? Ini adalah <kanji>seseorang</kanji> yang ada di 工学. Jika 工学 adalah "rekayasa" maka 工学者 adalah <vocabulary>engineer</vocabulary>.', 'Pembacaannya hanyalah pembacaan on''yomi pada kanji. Semua hal yang harus Anda ketahui sekarang.', 'Insinyur')
    RETURNING id INTO v_3033_insinyur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '場所', 'tempat', 8, 88, '<kanji>lokasi</kanji> <kanji>tempat</kanji> bisa berupa <vocabulary>tempat</vocabulary> atau <vocabulary>lokasi</vocabulary>, sama seperti kanji tempat pembuatannya.', 'Kata ini menggunakan bacaan kun''yomi untuk kanji pertama dan bacaan on''yomi untuk kanji kedua. Anda belum mempelajari bacaan ini untuk 場, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>tempat</vocabulary> Anda berada di apa? Anda melihat sekeliling dan mendengarkan. Anda mendengar, "<reading>Baa</reading> (ば) baa baa!" Anda pasti berada di <read>ba</reading>rn!', 'Tempat, Lokasi, Titik')
    RETURNING id INTO v_3035_tempat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入場', 'pintu-masuk', 8, 89, 'Saat Anda <kanji>memasuki</kanji> suatu <kanji>lokasi</kanji>, itulah <vocabulary>pintu masuk</vocabulary> Anda.

Ini adalah kata umum untuk masuk ke acara atau tempat umum, seperti gedung konser, stadion olahraga, atau taman hiburan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pintu masuk, Penerimaan, Masuk')
    RETURNING id INTO v_3036_pintu_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '工場', 'pabrik', 8, 90, '<kanji>konstruksi</kanji> <kanji>lokasi</kanji> adalah <vocabulary>pabrik</vocabulary>. Pabrik adalah tempat di mana Anda atau mesin melakukan banyak konstruksi!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pabrik')
    RETURNING id INTO v_3037_pabrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '所', 'tempat', 8, 91, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Ingin tahu apa perbedaan 所 dengan 場所? Meskipun 場所 hanya mengacu pada lokasi fisik, 所 bisa lebih abstrak dan merujuk pada suatu tempat, suatu titik waktu, atau situasi atau kondisi tertentu. Inilah sebabnya mengapa 所 biasanya memerlukan konteks tambahan untuk memperjelas "tempat" seperti apa yang Anda maksud.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji, jadi inilah mnemoniknya:

Anda menemukan diri Anda berada di <vocabulary>tempat</vocabulary> aneh yang penuh dengan <reading>toe colo</reading>gne (ところ). Botol dan botol cologne kaki. Cologne untuk jari kaki Anda, atau cologne beraroma jari kaki? Apa pun itu, bayangkan baunya yang menyengat. Anda tidak tahu mengapa tempat seperti ini ada, dan Anda ingin keluar secepatnya. Tempat cologne kaki ini benar-benar bukan tempat yang Anda sukai.

Catatan: Ini bisa disingkat menjadi とこ dalam percakapan biasa, jadi jangan heran jika Anda melihatnya dalam bentuk seperti itu juga.', 'Tempat, Titik, Pemandangan')
    RETURNING id INTO v_3038_tempat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '他所', 'tempat-lain', 8, 92, 'Saat Anda membicarakan <kanji>tempat</kanji> lain</kanji>, Anda sedang membicarakan <vocabulary>tempat lain</vocabulary>.', 'Ini adalah kata jukugo, yang biasanya Anda harapkan menggunakan pembacaan on''yomi dari kanji. Namun dengan kata ini, bacaan on''yomi sekarang sudah jarang digunakan, sehingga terdengar agak ketinggalan jaman. Berikut adalah mnemonik untuk membantu Anda mengingat bacaan yang lebih umum dalam bahasa Jepang kontemporer:

Tempat lain <reading>yang Anda lihat</reading> (よそ) selalu tampak lebih baik. Dengan kata lain, rumput lebih hijau di tempat lain yang Anda lihat!', 'Tempat Lain, Di tempat lain, Tempat Lain, Di tempat lain')
    RETURNING id INTO v_3041_tempat_lain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名所', 'tempat-terkenal', 8, 93, '<kanji>terkenal</kanji> <kanji>tempat</kanji> adalah <vocabulary>tempat terkenal</vocabulary>. Saat bepergian keliling Jepang, Anda harus bertanya tentang 名所 jika bisa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tempat Terkenal')
    RETURNING id INTO v_3042_tempat_terkenal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '住所', 'alamat', 8, 94, 'Jika Anda <kanji>tinggal</kanji> di suatu <kanji>tempat</kanji>, tempat itu adalah <vocabulary>alamat</vocabulary> Anda.', 'Kata ini terdiri dari pembacaan on''yomi yang telah Anda pelajari dengan kanji. Lakukanlah!', 'Alamat')
    RETURNING id INTO v_3043_alamat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朝', 'pagi', 8, 95, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Mudah-mudahan ini berarti Anda tidak perlu bangun terlalu pagi untuk mempelajari kanji sekarang.', 'Pagi')
    RETURNING id INTO v_3044_pagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朝ごはん', 'sarapan', 8, 96, 'ごはん adalah makanan atau santapan (mungkin nanti Anda akan mempelajari kanjinya, tetapi biasanya tidak digunakan, jadi Anda mempelajarinya dengan cara ini sekarang). Apa makanan <kanji>pagi</kanji> Anda? Itulah <vocabulary>sarapan</vocabulary> (jangan bingung dengan sarapan kedua, hobbit).', 'Pembacaan 朝 sama dengan yang Anda pelajari dengan kanji, artinya Anda harus bisa membaca semuanya di sini.', 'Sarapan')
    RETURNING id INTO v_3045_sarapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朝日', 'matahari-pagi', 8, 97, '<kanji>pagi</kanji> <kanji>matahari</kanji> bukan hanya <vocabulary>matahari pagi</vocabulary>, tapi juga <vocabulary>matahari terbit</vocabulary> (karena pada saat itulah matahari terbit, bukan?).', 'Kata ini menggunakan pembacaan kun''yomi untuk kedua kanji, yang berguna karena Anda sudah mempelajari keduanya dengan kata 朝 (あさ) dan 日 (ひ). Gabungkan semuanya dan apa yang Anda dapatkan? あさひ!', 'Matahari Pagi, Matahari Terbit')
    RETURNING id INTO v_3046_matahari_pagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '番号', 'nomor', 8, 98, '<kanji>angka dalam suatu rangkaian</kanji> ditambah <kanji>angka</kanji>. Anda tahu apa yang terjadi jika dua kanji dengan arti yang pada dasarnya sama digabungkan menjadi satu, bukan? Ternyata pada dasarnya memiliki arti yang sama. Kata ini berarti <vocabulary>number</vocabulary>, dan digunakan dalam konteks seperti nomor telepon, nomor ujian, dan nomor seri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nomor, Rangkaian Digit')
    RETURNING id INTO v_3047_nomor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一番', 'nomor-satu', 8, 99, 'Saat kamu menjadi nomor <kanji>satu</kanji> dalam <kanji>angka dalam sebuah rangkaian</kanji>, kamu <vocabulary>nomor satu</vocabulary> sayang!

Kata ini bisa merujuk pada sesuatu yang menduduki peringkat <vocabulary>pertama</vocabulary> atau <vocabulary>terbaik</vocabulary> dibandingkan dengan hal-hal lain, atau secara khusus dapat merujuk pada sesuatu yang ditandai dengan nomor satu, seperti seorang atlet dengan nomor satu di seragamnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nomor Satu, Yang Pertama, Pertama, Terbaik, Terbaik, Yang Paling Banyak, Paling')
    RETURNING id INTO v_3048_nomor_satu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二番', 'nomor-dua', 8, 100, 'Saat Anda menjadi <kanji>dua</kanji> dalam <kanji>angka dalam sebuah rangkaian</kanji>, Anda <vocabulary>nomor dua</vocabulary>. Tidak sebaik menjadi 一番, tapi ambillah apa yang bisa kamu dapatkan, lho?

Kata ini bisa merujuk pada sesuatu yang berada di peringkat <vocabulary>kedua</vocabulary> dibandingkan dengan benda lain, atau bisa juga secara spesifik merujuk pada sesuatu yang ditandai dengan angka dua, seperti seorang atlet dengan nomor dua di seragamnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nomor Dua, Kedua')
    RETURNING id INTO v_3049_nomor_dua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交番', 'kotak-polisi', 8, 101, 'Kata ini sedikit rumit — pada awalnya, kombinasi <kanji>campuran</kanji> dan <kanji>angka dalam sebuah rangkaian</kanji> sepertinya tidak cocok dengan <vocabulary>kotak polisi</vocabulary>, namun ada batasannya. Kata ini sebenarnya merupakan kombinasi singkat dari dua kata lain: 交 berasal dari 交替 (berputar) dan 番 berasal dari 立番 (berdiri berjaga).

<vocabulary>kotak polisi</vocabulary> pada dasarnya adalah sebuah kantor polisi komunitas kecil yang dikelola oleh satu atau dua petugas. Ini adalah sesuatu yang tidak umum di banyak negara Barat, namun cukup banyak terjadi di seluruh Jepang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kotak Polisi, Koban')
    RETURNING id INTO v_3050_kotak_polisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '答え', 'menjawab', 8, 102, 'Anda dapat menebak ini adalah versi kata benda dari kanji tersebut karena hiragana yang menonjol di dalamnya bukanlah bunyi yang berhubungan dengan う atau bunyi yang berhubungan dengan い. Jadi, apa versi kata benda dari <kanji>jawaban</kanji>? Itu juga <vocabulary>jawaban</vocabulary>.', 'Bacaannya adalah kun''yomi, tapi ini juga bacaan yang kamu pelajari dengan kanji jadi kamu harus bisa membaca ini dan kemudian memberikan 答え dengan benar.', 'Menjawab, Membalas, Tanggapan')
    RETURNING id INTO v_3051_menjawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '答える', 'untuk-menjawab', 8, 103, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menjawab</kanji> jadi versi verbanya berarti <vocabulary>menjawab</vocabulary>.', 'Bacaannya adalah bacaan kun''yomi seperti yang Anda harapkan dengan semua hiragana, tapi untungnya itulah bacaan yang Anda pelajari dengan kanji jadi Anda seharusnya bisa membaca ini.', 'Untuk Menjawab, Untuk Membalas, Untuk Menanggapi')
    RETURNING id INTO v_3052_untuk_menjawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絵', 'gambar', 8, 104, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

絵 mengacu pada <vocabulary>gambar</vocabulary>, seperti <vocabulary>lukisan</vocabulary>s, <vocabulary>drawing</vocabulary>s, atau <vocabulary>ilustration</vocabulary>s.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Gambar, Lukisan, Menggambar, Ilustrasi')
    RETURNING id INTO v_3053_gambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '買う', 'untuk-membeli', 8, 105, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membeli</kanji> jadi bentuk kata kerjanya adalah <vocabulary>to buy</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Jika Anda ingat pembacaan kanji Anda, Anda akan baik-baik saja.', 'Untuk Membeli')
    RETURNING id INTO v_3054_untuk_membeli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '道', 'jalan', 8, 106, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

Namun, jangan bingung membedakannya dengan kata 〜道. Yang ini tidak ada tanda 〜 di awal, artinya tidak melekat pada kata lain. Kata ini hanyalah jalan lama. Itu punya arti tersendiri!', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda sedang berjalan di jalan. Di <vocabulary>jalan</vocabulary>, kamu bertemu dengan temanmu, <reading>Mitch</reading> (みち). Bayangkan menyapa, lalu melanjutkan perjalanan. Yang aneh adalah Anda berdua berjalan di jalan beraspal dengan banyak mobil di atasnya. Kelihatannya berbahaya, tapi kamu dan Mitch, kamu tahu apa yang kamu lakukan. 

Jika Anda tidak mengenal siapa pun yang bernama Mitch, pikirkan tentang Mitch terkenal atau Mitch yang Anda buat.', 'Jalan, Jalan, Jalur, Jalan')
    RETURNING id INTO v_3055_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歩道', 'trotoar', 8, 107, '<kanji>jalan</kanji> yang Anda <kanji>jalani</kanji> adalah <vocabulary>trotoar</vocabulary>... setidaknya saya berharap di situlah Anda berjalan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Trotoar, Trotoar, Trotoar')
    RETURNING id INTO v_3056_trotoar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜道', 'metode', 8, 108, 'Ini adalah kata yang ditempelkan di akhir berbagai kata lainnya. Bayangkan "jalan" sebagai <vocabulary>cara</vocabulary> atau <vocabulary>metode</vocabulary> sesuatu. Misalnya, どう dalam Judo adalah "cara" yang lembut. Ada banyak kata yang diakhiri dengan 道, dan Anda akan melihatnya nanti. Untuk saat ini, ketahuilah bahwa ini berarti <vocabulary>metode</vocabulary> atau <vocabulary>cara</vocabulary>.', 'Kata ini ditambahkan di akhir banyak kata berbeda, artinya kata ini diperlakukan seperti kebanyakan jukugo (dan menggunakan bacaan on''yomi). Anda tahu bacaan on''yomi, jadi Anda harus bisa membaca kata ini. Namun, pastikan untuk menghilangkan 〜 saat menulis dalam bacaan ujian. Itu hanya untuk menunjukkan bahwa itu ditambahkan ke sesuatu dan bukan bagian dari jawaban yang benar.', 'Metode, Jalan, Gaya, Cara')
    RETURNING id INTO v_3057_metode;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '間', 'selang', 8, 109, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

Jangan bingung dengan 〜間 yang memiliki arti serupa tetapi berbeda dalam cara membacanya. 〜間 artinya melekat pada sesuatu. Ini adalah kata yang berdiri sendiri.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. 間 memiliki dua bacaan kun''yomi yang umum, あいだ dan ま. Bacaan-bacaan tersebut belum Anda pelajari, berikut penjelasan masing-masing bacaan dan mnemoniknya untuk membantu Anda mengingatnya:

間 biasanya dibaca sebagai あいだ untuk interval waktu yang lebih lama atau jarak umum antar benda. Ini dibaca sebagai ま untuk jangka waktu singkat atau ketika mendefinisikan area tertentu, seperti 茶の間 (nama lama untuk ruang tamu Jepang).

Anda dapat mengingat ini karena waktu terasa lebih lama di <reading>Ida</reading>ho (あいだ). Interval waktu apa pun yang Anda habiskan di sana terasa begitu lama, karena kehidupan di Idaho bergerak sangat lambat. Segera setelah Anda melintasi perbatasan dan memasuki negara bagian baru, Anda menelepon <reading>ma</reading> (ま) Anda untuk memberi tahu dia bahwa Anda akhirnya keluar dari keadaan lambat itu, dan interval waktunya terasa lebih pendek.', 'Selang, Interval Waktu, Interval Ruang')
    RETURNING id INTO v_3058_selang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時間', 'waktu', 8, 110, '<kanji>waktu</kanji> <kanji>interval waktu</kanji> hanyalah <vocabulary>waktu</vocabulary>. Seperti yang sering terjadi, jika dua kanji yang memiliki arti serupa digabungkan menjadi satu kata, cenderung menghasilkan kata yang memiliki arti serupa. Permisi kawan, apa itu 時間?

Perhatikan bahwa 時間 juga dapat digunakan sebagai satuan pengukuran waktu yang berarti <kosakata>jam</vocabulary>(s). Dalam hal ini, selalu digunakan sebagai sufiks — biasanya setelah angka atau kata tanya 何 (なん).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Waktu, Jam')
    RETURNING id INTO v_3059_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜間', 'jumlah-waktu', 8, 111, 'Saat Anda menempelkan ini di akhir kata lain yang berbicara tentang <kanji>interval waktu</kanji> dengan cara tertentu, Anda menunjukkan <vocabulary>jumlah waktu</vocabulary> yang telah berlalu. Misalnya, 二年間 berarti "dua tahun". 一時間 adalah "satu jam". Berapa pun jumlah waktu + 〜間 akan menjadikannya "jumlah waktu" dan bukan hanya waktu tertentu.

Perhatikan bahwa 〜間 dapat dihilangkan, terutama dalam percakapan, jika sudah jelas bahwa Anda berbicara tentang durasi waktu dari konteksnya. Namun, pengecualiannya adalah 時. Anda selalu mengucapkan 〜時間 untuk merujuk pada jumlah jam, untuk membedakan dari 〜時 (〜jam).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Ini akan menyelamatkan Anda setidaknya 二分間.', 'Jumlah Waktu, Interval Waktu, Interval Waktu, Periode Waktu')
    RETURNING id INTO v_3060_jumlah_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人間', 'manusia', 8, 112, '<kanji>orang</kanji> <kanji>interval</kanji>. Bayangkan saja interval yang berbeda untuk masing-masing jenis spesies yang berbeda. Interval rakun... interval anjing... interval orang... mereka adalah <vocabulary>manusia</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua pembacaan on''yomi, dan pembacaan 間 agak aneh, berikut ini mnemonik untuk membantu Anda:

Tahukah kamu kalau <vocabulary>manusia</vocabulary> yang bekerja untuk <reading>Nin</reading>tendo semuanya disebut <reading>Gen</reading>ji (にんげん)? Yap benar sekali, setiap manusia yang pernah dipekerjakan oleh Nintendo disebut Genji, tanpa terkecuali.', 'Manusia, Manusia')
    RETURNING id INTO v_3061_manusia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '間もなく', 'segera', 8, 113, 'Bagian もなく seperti mengatakan "bahkan tidak ada." Jadi, ketika "bahkan tidak ada <kanji>interval waktu</kanji>", segala sesuatunya akan terjadi <vocabulary>segera</vocabulary> atau <vocabulary>tidak lama lagi</vocabulary>.

Anda mungkin akan sering mendengar hal ini dalam pengumuman kereta api yang memberi tahu Anda bahwa kereta Anda <vocabulary>segera</vocabulary> akan tiba di Tokyo atau di mana pun.', 'Tapi bacaannya aneh. Itu bacaan kun''yomi kedua (ada juga あいだ), dibaca ま. Jadi apa yang terjadi <vocabulary>segera</vocabulary>? <reading>Ma</reading> Anda akan berada di sini <vocabulary>tidak lama lagi</vocabulary>. Sebaiknya kamu bergegas dan bersiap, karena ruanganmu terlihat buruk... 

"間もなく, ibumu akan segera muncul!"', 'Segera, Tak lama kemudian, Segera')
    RETURNING id INTO v_3062_segera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空間', 'ruang-angkasa', 8, 114, '<kanji>langit</kanji> <kanji>interval</kanji> adalah area langit. Di tempat yang hanya berupa langit kosong, yang ada hanyalah <vocabulary>ruang</vocabulary>. Tentu saja, tidak secara teknis... ada sesuatu di sana, tapi dulu ketika kanji dibuat, tidak ada yang tahu itu. Kata ini dapat berarti ruang dalam kaitannya dengan ruang luar maupun ruang di sekitar Anda di dalam kamar Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ruang angkasa')
    RETURNING id INTO v_3063_ruang_angkasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雲', 'awan', 8, 115, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kata ini menggunakan bacaan kun''yomi karena merupakan satu kanji tersendiri. Untungnya, bacaan tersebut sudah Anda pelajari dengan kanji, jadi Anda seharusnya bisa membaca ini.', 'Awan')
    RETURNING id INTO v_3064_awan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '数える', 'untuk-menghitung', 8, 116, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menghitung</kanji>, jadi jelas versi kata kerjanya adalah <vocabulary>to count</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda mulai <vocabulary>menghitung</vocabulary> kosakata. Anda di luar kendali dan Anda tidak bisa berhenti. Satu demi satu. Para ilmuwan harus datang, tetapi mereka tidak dapat mengetahui <reading>penyebab</reading> (かぞ) penghitungan Anda. Mereka menyeret Anda ke sel empuk di mana mereka terus menguji Anda untuk mencoba mencari tahu penyebab kegilaan Anda.', 'Untuk Menghitung')
    RETURNING id INTO v_3065_untuk_menghitung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '数', 'nomor', 8, 117, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Kata ini digunakan untuk mengatakan hal-hal seperti "jumlah yang banyak" dan "jumlah siswa".', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Bayangkan diri Anda <vocabulary>count</vocabulary>ing dengan memainkan <reading>kazoo</reading> (かず). Setiap angka yang Anda hitung, Anda membunyikan kazoo Anda. Menyenangkan sekali!', 'Nomor, Menghitung, Jumlah')
    RETURNING id INTO v_3066_nomor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '数字', 'angka', 8, 118, '<kanji>angka</kanji> <kanji>huruf</kanji> bukanlah huruf seperti yang sedang Anda baca sekarang, melainkan lebih seperti <vocabulary>angka</vocabulary>, seperti 1, 2, 3, 4, 5, dst.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Angka, Angka, Nomor')
    RETURNING id INTO v_3067_angka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '数学', 'matematika', 8, 119, '<kanji>studi</kanji> tentang <kanji>angka</kanji> adalah <vocabulary>matematika</vocabulary> (atau <vocabulary>math</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Matematika, Matematika, Matematika')
    RETURNING id INTO v_3068_matematika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人数', 'jumlah-orang', 8, 120, '<kanji>orang</kanji> <kanji>hitungan</kanji> adalah <vocabulary>jumlah orang</vocabulary>. Namun, jangan bingung membedakan ini dengan "populasi" atau semacamnya. Ini lebih seperti "berapa banyak orang yang hadir di acara ini?" Apa itu 人数, kamu tahu?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Perhatikan bahwa rendaku mengubah すう menjadi ずう, dan karena 人 memiliki dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Tahukah kamu <vocabulary>jumlah orang</vocabulary> di <reading>Nin</reading>tendo (にん)? Ini adalah misteri besar, itulah sebabnya mereka mempekerjakan Anda untuk menghitung semuanya. Semoga beruntung!', 'Jumlah Orang, Jumlah Orang')
    RETURNING id INTO v_3069_jumlah_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '点数', 'poin', 8, 121, '<kanji>jumlah</kanji> dari <kanji>poin</kanji> adalah berapa banyak <vocabulary>poin</vocabulary> yang ada (alias <vocabulary>skor</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Poin, Skor')
    RETURNING id INTO v_3070_poin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '楽しい', 'seru', 8, 122, 'Diakhiri dengan い memberitahu Anda bahwa kata ini adalah kata sifat い. Apa bentuk kata sifat dari <kanji>kesenangan</kanji>? Ya, bisa dibilang itu "menyenangkan", tapi sayangnya bukan itu tujuan kita di sini. Dalam hal ini, kata ini sedikit lebih polos. Artinya <vocabulary>menyenangkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Berapa banyak <vocabulary>kesenangan</vocabulary> yang Anda alami? Anda baru saja bersenang-senang <read>ton o''</reading> (たの)!', 'Seru')
    RETURNING id INTO v_3071_seru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '音楽', 'musik', 8, 123, 'Apa <kanji>suara</kanji> dari <kanji>kesenangan</kanji>? <kanji>suara</kanji> apa yang membuat Anda <kanji>nyaman</kanji>? Bagi kebanyakan orang, itu adalah <vocabulary>musik</vocabulary> yang bagus. Pastikan Anda tidak memakai Bieber... itu akan seperti 不音楽 atau semacamnya... nak, nak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum mempelajari bacaan ini selama 楽, jadi inilah mnemonik untuk membantu Anda:

Jika Anda memainkan <vocabulary>musik</vocabulary> terlalu keras, orang-orang akan datang dan <reading>melongo</reading> (がく) ke arah Anda. Namun jika Anda mencoba mematikannya dan berkata, "OH, SAYA TIDAK SUKA MUSIK!" mereka akan semakin melongo melihatmu. Pelajari etiket musik yang benar dan orang-orang tidak akan terlalu memandangmu, oke?

Ingatlah bacaan がく ini untuk masa depan, karena 楽 selalu dibaca dalam kata-kata yang berhubungan dengan musik. Entah itu indah atau sekadar keras, musik selalu membuat orang berhenti dan melongo!', 'Musik')
    RETURNING id INTO v_3072_musik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '楽', 'kenyamanan', 8, 124, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya juga sama dengan kanji yang Anda pelajari, sehingga <vocabulary>mudah</vocabulary> dipelajari!', 'Kenyamanan, Kemudahan, Kesenangan')
    RETURNING id INTO v_3073_kenyamanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '話す', 'untuk-berbicara', 8, 125, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>berbicara</kanji> jadi versi kata kerjanya adalah <vocabulary>to talk</vocabulary> atau <vocabulary>to speak</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Setiap kali Anda mulai <vocabulary>berbicara</vocabulary>, kata-kata <reading>花</reading> keluar dari mulut Anda dan memenuhi ruangan. Anda benar-benar pembicara yang baik, dan Anda menggunakan bahasa yang begitu indah dan berbunga-bunga sehingga kata-kata literal keluar dari mulut Anda saat Anda berbicara. Napasmu pasti berbau harum.', 'Untuk Berbicara, Untuk Berbicara')
    RETURNING id INTO v_3074_untuk_berbicara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電話', 'telepon', 8, 126, 'Sebuah <kanji>listrik</kanji> <kanji>pembicaraan</kanji>. Apa sihir ini? Satu-satunya cara untuk berbicara melalui listrik adalah dengan <vocabulary>telepon</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Telepon, Telepon')
    RETURNING id INTO v_3075_telepon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '会話', 'percakapan', 8, 127, 'Saat Anda <kanji>bertemu</kanji> dan <kanji>berbicara</kanji> dengan orang lain, Anda sedang melakukan <vocabulary>percakapan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Percakapan, Dialog')
    RETURNING id INTO v_3076_percakapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電車', 'kereta', 8, 128, 'Anda mungkin berpikir bahwa <kanji>listrik</kanji> <kanji>mobil</kanji> adalah mobil listrik, namun kata ini sebenarnya mengacu pada jenis kendaraan lain yang sering kali digerakkan oleh listrik: <vocabulary>kereta api</vocabulary>.

Secara harfiah, 電車 mengacu pada <kosakata>kereta listrik</vocabulary> dan bukan lokomotif diesel atau uap. Namun dalam bahasa Jepang sehari-hari, orang sering kali hanya menggunakannya sebagai kata umum untuk "kereta api", karena sebagian besar kereta modern di Jepang tetap menggunakan listrik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kereta, Kereta Listrik')
    RETURNING id INTO v_3077_kereta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電気', 'listrik', 8, 129, '<kanji>Listrik</kanji> <kanji>energi</kanji> hanyalah cara yang bagus untuk mengatakan <vocabulary>listrik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Listrik, Lampu')
    RETURNING id INTO v_3078_listrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電池', 'baterai', 8, 130, 'Sebuah <kanji>kolam</kanji> untuk <kanji>listrik</kanji>? Mungkin tampak aneh pada awalnya, tapi jika Anda memikirkan sesuatu yang mengumpulkan semua listrik ke dalam satu kolam... benda itu seperti <vocabulary>baterai</vocabulary> (dan merupakan baterai).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Baterai')
    RETURNING id INTO v_3079_baterai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電子', 'elektron', 8, 131, '<kanji>listrik</kanji> <kanji>anak</kanji>. Apa yang dimaksud dengan bagian kecil dari listrik? Apa yang menyusun listrik? Itu akan menjadi <vocabulary>elektron</vocabulary>. Kata ini juga bisa merujuk pada hal-hal yang bersifat <vocabulary>elektronik</vocabulary> juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Elektron, Elektronik')
    RETURNING id INTO v_3080_elektron;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電力', 'tenaga-listrik', 8, 132, '<kanji>listrik</kanji> <kanji>kekuatan</kanji> sesuatu adalah <vocabulary>tenaga listrik</vocabulary>-nya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 力 memiliki dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Seluruh <vocabulary>tenaga listrik</vocabulary> di dunia disimpan di balik <reading>gembok</reading> ini (りょく). Teruskan. Bukalah. Apa yang mungkin salah?', 'Tenaga Listrik, Listrik')
    RETURNING id INTO v_3081_tenaga_listrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '引き分け', 'mengikat', 8, 133, 'Saat Anda <kanji>menarik</kanji> sesuatu dan "memisahkan" (分ける), Anda membuat semuanya menjadi rata. Dalam sebuah pertandingan, ini akan menjadi <vocabulary>seri</vocabulary> atau <vocabulary>seri</vocabulary>.', 'Lihat hiragana tersangkut di sana? Itu mengisyaratkan bahwa ini menggunakan pembacaan kun''yomi. Anda mempelajari pembacaan kun''yomi dari kedua kanji ini secara terpisah di level sebelumnya, jadi jika Anda mengetahuinya, Anda harus mengetahui pembacaan kata ini juga.', 'Mengikat, Menggambar')
    RETURNING id INTO v_3405_mengikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東京', 'tokyo', 8, 134, '<kanji>Timur</kanji> <kanji>ibu kota</kanji> di Jepang adalah <vocabulary>Tokyo</vocabulary>. Jika Anda melihat peta dan membandingkannya dengan Kyoto (ibukota lama), Anda akan melihat letaknya di sebelah timur. Itu sebabnya ini adalah ibu kota timur, Tokyo.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi untuk 東 (とう) dengan kanji, jadi berikut ini mnemonik untuk membantu:

Bagaimana Anda tahu bahwa Anda telah berhasil mencapai <vocabulary>Tokyo</vocabulary>? Tanda peron stasiun bertuliskan 東京 — <reading>とう</reading>きょう — Tokyo. Cari saja tanda とうきょう jika Anda menuju ibu kota timur.', 'Tokyo')
    RETURNING id INTO v_3423_tokyo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '向こう', 'di-sana', 8, 135, 'Anda tahu bahwa 向 berarti <kanji>di sana</kanji>, dan ini adalah versi kata bendanya, yang berarti <vocabulary>di sana</vocabulary>.

向こう digunakan ketika berbicara secara umum tentang sesuatu yang jauh dari diri Anda, apakah itu sebuah tempat, seperti dalam 向こうの山 (gunung <vocabulary>di atas sana</vocabulary>), atau seseorang, seperti dalam 向こうの人 (orang di <vocabulary>sisi lain</vocabulary>). Kadang-kadang, bahkan dapat digunakan untuk waktu, seperti 向こう一週間 (minggu depan).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajarinya dengan 向く, tapi inilah mnemonik untuk Anda jika Anda lupa:

<vocabulary>Di sana</vocabulary>, seekor sapi berkata <reading>moo</reading> (む). Tapi letaknya jauh di sana, jadi Anda tidak bisa melihat atau mendengarnya. Agak membuat Anda bertanya-tanya: jika seekor sapi melenguh di sana dan tidak ada orang di sekitar yang mendengarkan, apakah ia benar-benar melenguh?', 'Di sana, Lewat sana, Sisi Lain')
    RETURNING id INTO v_3428_di_sana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全米', 'seluruh-amerika', 8, 136, 'Apakah Anda ingat bagaimana 米国 bisa berarti "Amerika?" Itu 米 kadang-kadang berarti Amerika. Jadi, ketika Anda melihat <kanji>semua</kanji> <kanji>beras</kanji> (maksud saya, <kanji>Amerika</kanji>), Anda dapat menganggap kata ini memiliki arti <vocabulary>Seluruh Amerika</vocabulary> (seperti bagaimana 全日本 berarti "Seluruh Jepang".).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seluruh Amerika')
    RETURNING id INTO v_3431_seluruh_amerika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '思い出', 'sebuah-memori', 8, 137, 'Apakah Anda ingat kata 思う? Artinya "berpikir". Apa yang <kanji>pikirkan</kanji>ing adalah <kanji>keluar</kanji>—itu keluar dari pikiran Anda! Anda mengingat <vocabulary>sebuah kenangan</vocabulary> atau beberapa <vocabulary>kenangan</vocabulary>.', 'Bacaannya sama-sama kun''yomi, namun berdasarkan pengalaman sebelumnya dengan dua kata terpisah yang membentuk kata ini, Anda seharusnya bisa membacanya. Ingatlah bahwa itu kun''yomi. Salah satu petunjuknya adalah hiragana yang menonjol dari 思.', 'Sebuah Memori, Memori, Ingatan')
    RETURNING id INTO v_3433_sebuah_memori;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近づく', 'untuk-mendekat', 8, 138, 'Karena kata ini diakhiri dengan bunyi う, Anda dapat mengetahui kemungkinan itu adalah kata kerja. Bagian kanji berarti <kanji>dekat</kanji>. Versi kata kerjanya adalah <vocabulary>mendekati</vocabulary>, <vocabulary>mendekati</vocabulary> atau <vocabulary>mendekati</vocabulary>. Pada dasarnya, gagasan umumnya adalah Anda semakin dekat dengan sesuatu. Anda menjadi lebih dekat. Anda mendekat.', 'Ada hiragana yang melekat pada kanji ini, yang artinya mungkin bacaan kun''yomi (dan memang demikian). Anda pernah melihat kun''yomi membaca melalui kata 近い. Jadi, asal kamu tahu kata itu, kamu pasti bisa membacanya juga.', 'Untuk Mendekat, Untuk Mendekati, Untuk Mendekat, Ke Dekat, Untuk Mendekatkan')
    RETURNING id INTO v_3434_untuk_mendekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '思い出す', 'untuk-diingat', 8, 139, 'Anda tahu bahwa 思う berarti "berpikir" dan 出す berarti "mengeluarkan". Jadi inilah yang terjadi ketika otak Anda mengambil waktu sejenak untuk berpikir dan mengeluarkan memori dari penyimpanannya. Artinya <vocabulary>mengingat</vocabulary>!

Anda dapat berteriak 思い出した！ ketika Anda ingat kunci Anda ada di lemari es. (Lagi?!) Kamu juga bisa mengucapkan 母を思い出します ketika ada sesuatu yang mengingatkanmu pada ibumu. Dalam bahasa Jepang, Anda biasanya menghilangkan hal-hal yang mengingatkan Anda akan sebuah kenangan karena yang penting adalah kenangan itu sendiri, yang mengisi hati Anda dengan perasaan-perasaan yang sensitif. Oh ibu!', 'Bacaan kata ini adalah bacaan kun''yomi. Kamu seharusnya mengetahui kata 思う dan 出す serta bacaannya, jadi kamu harus bisa membaca kata ini jika kamu mengetahui kata-kata tersebut.', 'Untuk Diingat, Untuk Mengingat, Untuk Diingatkan')
    RETURNING id INTO v_3435_untuk_diingat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '代わり', 'pengganti', 8, 140, 'Anda pernah melihat bahwa 代わる berarti "menggantikan" atau "menggantikan". Ini adalah versi kata benda itu (tidak ada bunyi う di akhir). Jadi, apa versi kata benda dari kata kerja tersebut? Itu akan menjadi <vocabulary>pengganti</vocabulary> atau <vocabulary>pengganti</vocabulary>.', 'Anda harus bisa memahami bacaan dari pembelajaran 代わる di level sebelumnya.', 'Pengganti, Penggantian')
    RETURNING id INTO v_3443_pengganti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全く', 'sama-sekali', 8, 141, 'Ini adalah versi kata keterangan dari kanji <kanji>semua</kanji>. Jadi, itu seperti Anda menambahkan ''ly'' ke dalamnya. Tapi, itu tidak berhasil (aduh? ayolah). Jadi, anggap saja kata ini sebagai <vocabulary>sepenuhnya</vocabulary>, <vocabulary>seluruhnya</vocabulary>, atau <vocabulary>truly</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Orang yang <vocabulary>sepenuhnya</vocabulary> tidak memahami kosakata ini adalah <reading>Matt</reading> (まった). Pastikan untuk memperhatikan っ yang kecil juga.', 'Sama sekali, Sepenuhnya, Sungguh-sungguh, Benar-benar, Sepenuhnya')
    RETURNING id INTO v_3454_sama_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '長さ', 'panjang', 8, 142, 'Anda tahu kata 長い dari beberapa tingkat yang lalu. Ini seperti kata 大きい versus 大きさ, dimana 大きさ berarti "ukuran" dan 大きい berarti "besar". Jadi, 長い adalah "panjang" dan 長さ adalah <vocabulary>panjang</vocabulary>.', 'Jika Anda mengetahui bacaan kata 長い dari level 6, Anda juga akan mengetahui bacaan kata ini. Satu-satunya perbedaan adalah さ di akhir, yaitu hiragana sehingga mudah dibaca.', 'Panjang')
    RETURNING id INTO v_3455_panjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'この前', 'suatu-hari-nanti', 8, 143, 'この berarti "ini", dan Anda tahu apa arti kata 前 (depan/sebelum). Kombinasi kata-kata ini, "ini sebelumnya" jika Anda mau, dapat memiliki arti yang berbeda. Jika kita berbicara tentang kapan sesuatu terjadi, arti "sebelum" akan lebih tepat digunakan, dan artinya <vocabulary>suatu hari nanti</vocabulary> atau <vocabulary>baru-baru ini</vocabulary>. Jika kita berbicara tentang lokasi, maka arti "depan" lebih tepat, dan artinya <vocabulary>di depan ini</vocabulary>.', 'Pembacaan 前 adalah kun''yomi, seperti halnya pembacaan kosakata 前. Selama Anda tahu kata itu, Anda pasti bisa membacanya juga. Alasannya bukan on''yomi adalah karena ini seperti dua kata yang disatukan. Kata この dan kata 前.', 'Suatu hari nanti, Baru-baru ini, Di Depan Ini')
    RETURNING id INTO v_3457_suatu_hari_nanti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お知らせ', 'melihat', 8, 144, 'Ini adalah kata yang aneh, jadi Anda harus bersabar. Anda tahu bahwa 知 berarti <kanji>tahu</kanji>. Namun dalam kasus kata ini, apa yang Anda ketahui? Lihatlah babak kedua. らせ terdengar seperti "balapan". Jadi, Anda tahu tentang "perlombaan". Bagaimana Anda tahu tentang perlombaan ini? Anda mendapat <vocabulary>notice</vocabulary> atau <vocabulary>notification</vocabulary> tentang hal itu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini dengan kanji, jadi Anda seharusnya sudah siap. Beruntungnya kamu!', 'Melihat, Pemberitahuan, Pilot')
    RETURNING id INTO v_3459_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名前', 'nama', 8, 145, '<kanji>Nama</kanji> Anda ada di <kanji>depan</kanji>. Itu bukan nama belakang Anda, itu adalah <vocabulary>nama</vocabulary> biasa atau <vocabulary>nama depan</vocabulary> Anda.', 'Kata ini menggunakan kedua bacaan kun''yomi (oh sial!). Meskipun demikian, Anda telah melihat pembacaan kun''yomi untuk kedua kanji yang membentuk kata ini. Kata 名 (な) dan kata 前 (まえ) keduanya adalah kun''yomi, jadi gunakan kata tersebut dan Voltron menjadi satu kata, なまえ.', 'Nama, Nama depan, Nama Lengkap, Nama Pemberian')
    RETURNING id INTO v_3460_nama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出来上がる', 'akan-selesai', 8, 146, 'Anda pernah melihat kata 出来る (mampu melakukan), yang merupakan bagian pertama. Kemudian bagian kedua, 上がる berarti “bangkit”. Jadi, pikirkan seperti ini: begitu Anda mampu melakukan sesuatu, Anda bangkit karena Anda sudah selesai. Itu sebabnya kata kerja ini berarti <kosa kata>selesai</vocabulary>.', 'Bacaannya merupakan gabungan bacaan dari 出来る dan 上がる. Selama Anda memperhatikan pelajaran sebelumnya, Anda seharusnya bisa membaca kata ini juga hanya dengan menggabungkan kata-kata lainnya.', 'Akan Selesai, Akan Selesai')
    RETURNING id INTO v_3461_akan_selesai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '曲げる', 'untuk-membungkuk', 8, 147, 'Ini adalah kata kerja karena diakhiri dengan bunyi う. Apa arti kanjinya? Itu adalah <kanji>musik</kanji> dan <kanji>tikungan</kanji>. Dalam kasus kata ini, kita akan menggunakan versi "tikungan". Kata kerjanya adalah <vocabulary>membungkuk</vocabulary>. Ini adalah saat Anda melakukan pembengkokan. Anda dapat mengingat ini karena げ terlihat seperti <reading>ge</reading>cko yang Anda tekuk. Tokek itu tampak bagus sebelum Anda membengkokkannya menjadi dua.', 'Bagaimana Anda bisa <vocabulary>membengkokkan</vocabulary> tokek ini? Upaya tunggal? Mustahil! Sebenarnya Anda dan ibu <reading>ma</reading>ma ​​(ま) Anda membutuhkan waktu untuk mewujudkannya! Bayangkan saja Anda dan ibu Anda yang perkasa, bekerja sama untuk membengkokkan tokek menjadi dua!', 'Untuk Membungkuk, Untuk Membengkokkan Sesuatu')
    RETURNING id INTO v_3462_untuk_membungkuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交じる', 'untuk-dicampur', 8, 148, 'Anda tahu bahwa 交ぜる berarti <vocabulary>mencampur</vocabulary> dan kanji juga berarti <kanji>mix</kanji>. Jadi, ini mungkin ada hubungannya dengan pencampuran sesuatu. Kata ini berarti <vocabulary>bercampur</vocabulary>. Ini adalah saat ada sesuatu yang tercampur tetapi tidak tercampur oleh Anda. Itu hanya dicampur. Anggap saja seperti ini - じ dalam 交じる adalah Yesus, yang hanya menggunakan sihir Yesus untuk mencampurkan sesuatu. Jadi, Anda tidak mencampurkannya. Itu hanya ketika ada sesuatu yang <vocabulary>harus dicampur</vocabulary>.', 'Bacaannya sama dengan 交ぜる. Selama Anda mengetahui bagian ま dari bacaan kata tersebut, Anda akan dapat membaca kata tersebut juga.', 'Untuk Dicampur, Untuk Dicampur Dengan, Untuk Bergabung')
    RETURNING id INTO v_3463_untuk_dicampur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '走り回る', 'untuk-berlari', 8, 149, 'Anda pernah melihat kata 走る (berlari) dan 回る (berputar). Jadi, saat Anda berlari dan berputar saat melakukannya, Anda berlari berputar-putar. Jadi, bentuk kata kerjanya adalah <vocabulary>berlari keliling</vocabulary>.', 'Bacaannya seperti kata 走る dan 回る. Pastikan Anda mengetahui kata-kata tersebut sebelumnya dan terapkan pengetahuan tersebut untuk membaca kata ini juga.', 'Untuk Berlari')
    RETURNING id INTO v_3464_untuk_berlari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '当てる', 'menebak', 8, 150, 'Anda tahu bahwa kanji 当 berarti <kanji>benar</kanji> atau <kanji>sukses</kanji>. Jadi karena ini adalah kata kerja, Anda melakukan hal yang benar dan sukses (yang tidak masuk akal). Sebaliknya, Anda menebak sesuatu dan melakukannya dengan benar. Jadi, kata ini berarti <vocabulary>menebak</vocabulary> sesuatu. Semoga Anda juga tidak perlu menebak-nebak arti kata ini terlalu keras.', 'Bacaan tersebut dapat diingat melalui kata 当たる yang telah Anda pelajari beberapa level yang lalu. Gunakan pengetahuan itu untuk mengingat bahwa kata ini dibaca あてる. Bagian yang penting adalah あ.', 'Menebak, Untuk Memukul, Untuk Menempatkan')
    RETURNING id INTO v_3465_menebak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '化ける', 'untuk-mengubah-bentuk', 8, 151, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>berubah</kanji> jadi Anda mungkin mengira versi kata kerjanya adalah "berubah", namun ini lebih spesifik. Kata ini berarti <vocabulary>berubah bentuk</vocabulary> atau <vocabulary>mentransformasi</vocabulary>.

化ける artinya berubah menjadi sesuatu yang lain, biasanya dengan cara yang mengejutkan dan ajaib. Ini sering digunakan dalam cerita di mana hewan atau roh mengambil bentuk manusia. Ini juga dapat menggambarkan transformasi dalam kehidupan nyata yang begitu dramatis hingga terasa tidak nyata.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda mencoba untuk berubah. Anda ingin berubah menjadi sesuatu yang mengagumkan, seperti dinosaurus, tetapi kemudian *poof* Anda berubah menjadi domba. "<reading>Ba</reading>aaa," katamu. "Baaa."', 'Untuk Mengubah Bentuk, Untuk Berubah')
    RETURNING id INTO v_3467_untuk_mengubah_bentuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回す', 'untuk-mengubah-sesuatu', 8, 152, 'Anda telah mempelajari 回る, yang artinya "berputar" atau "berputar", dan ini adalah versi transitifnya. Anda melakukan tindakan memutar/memutar sesuatu yang lain, jadi ini berarti <vocabulary>memutar sesuatu</vocabulary>, <vocabulary>memutar sesuatu</vocabulary>, atau <vocabulary>memutar sesuatu</vocabulary>.

Untuk mengingat perbedaannya, coba pikirkan bagaimana Anda bisa <reading>menuntut</reading>d (す) jika Anda mulai secara agresif memutar salah satu pemintal taman bermain tersebut sementara anak-anak orang lain sedang bermain di sana. Perilaku yang cukup teduh.', 'Bacaannya sama dengan kata 回る (まわ). Selama Anda tahu kata itu, Anda pasti bisa membacanya juga. Gunakan kedua kata ini bersama-sama untuk mengingat bacaannya.', 'Untuk Mengubah Sesuatu, Untuk Memutar Sesuatu, Untuk Memutar Sesuatu')
    RETURNING id INTO v_3468_untuk_mengubah_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '私自身', 'sendiri', 8, 153, '<kanji>Saya</kanji> berbicara tentang <kanji>diri</kanji> saya, <kanji>tubuh</kanji> saya sendiri… Dengan kata lain, ini tentang saya <vocabulary>secara pribadi</vocabulary> atau apa yang telah <vocabulary>diri</vocabulary> saya lakukan.

私自身 secara harfiah berarti "Saya sendiri", dan digunakan untuk menekankan keterlibatan pribadi Anda dalam sesuatu. Misalnya, Anda bisa mengucapkan 私自身の考え untuk menekankan bahwa sesuatu itu adalah pemikiran Anda sendiri, atau 私自身から言う, untuk menekankan bahwa Anda sendirilah yang akan mengatakan sesuatu kepada seseorang, tanpa melalui perantara apa pun.', 'Pembacaannya agak aneh di sini.私nya adalah わたし, tetapi 自 dan 身 menggunakan bacaan yang Anda pelajari dengan kanji. Bayangkan saja 私 berkata kepada dua orang lainnya, "Saya sendiri akan menggunakan pembacaan kosakata saya, tetapi kalian berdua harus menggunakan pembacaan kanji Anda — mengerti?"', 'Sendiri, Saya sendiri')
    RETURNING id INTO v_3864_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '私立大学', 'perguruan-tinggi-swasta', 8, 154, 'Anda pernah melihat 私立, yang berarti "swasta", dan Anda pernah melihat 大学, yang berarti "perguruan tinggi" atau "universitas". Jadi, gabungkan keduanya dan Anda memiliki <vocabulary>perguruan tinggi swasta</vocabulary> / <vocabulary>universitas swasta</vocabulary>.', 'Jika Anda mengetahui bacaan kata 私立 dan 大学 Anda pasti bisa membaca ini. Itu juga semua bacaan jukugo on''yomi, jadi Anda bisa membacanya seperti itu.', 'Perguruan Tinggi Swasta, Universitas Swasta')
    RETURNING id INTO v_3918_perguruan_tinggi_swasta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '前回', 'terakhir-kali', 8, 155, '<kanji>sebelum</kanji> <kanji>waktu</kanji> adalah <vocabulary>terakhir kali</vocabulary> atau <vocabulary>waktu sebelumnya</vocabulary>', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terakhir kali, Waktu Sebelumnya')
    RETURNING id INTO v_4848_terakhir_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '身', 'tubuh', 8, 156, 'Kanji dan kosakatanya sama, jadi ini berarti <vocabulary>tubuh</vocabulary> atau <vocabulary>self</vocabulary>. Kadang-kadang kata ini juga mengacu pada <vocabulary>daging hewan</vocabulary>, artinya bagian hewan yang tidak dapat dimakan tanpa tulang, termasuk makanan laut. Itu adalah "mi" dalam sashimi!

Ingin tahu tentang perbedaan antara 体 dan 身? Pada dasarnya, 体 mengacu pada tubuh fisik manusia (atau hewan) secara keseluruhan, dan sering digunakan dalam kaitannya dengan kondisi atau penampilannya. 身 juga dapat merujuk pada tubuh fisik manusia, tetapi tidak seperti 体, kata ini juga digunakan untuk merujuk pada diri sebagai seorang individu dan, lebih luas lagi, pada kedudukan atau keadaan sosial seseorang.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Milik siapakah <vocabulary>body</vocabulary> ini? Kepada <read>saya</reading> (み)!', 'Tubuh, Diri, Daging Hewan')
    RETURNING id INTO v_5503_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地上', 'di-atas-tanah', 8, 157, 'Ingat 地下, yang artinya "di bawah tanah". Ya, ini adalah <kanji>tanah</kanji> dan <kanji>di atas</kanji> digabungkan menjadi satu, jadi saya yakin Anda bisa menebak bahwa ini artinya <vocabulary>di atas tanah</vocabulary>. Namun biasanya benda di atas tanah tidak mengapung (kecuali jika Anda berada di luar angkasa), sehingga benda tersebut benar-benar <vocabulary>di atas tanah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Di atas tanah, Di Tanah, Permukaan Bumi')
    RETURNING id INTO v_7459_di_atas_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '向ける', 'untuk-mengubah-sesuatu-menuju', 8, 158, 'Anda tahu bahwa 向く berarti "menghadapi" atau "berpaling ke arah", dan kata kerja ini ada kaitannya. Ini merupakan kata kerja transitif, artinya mengambil objek langsung. Itu terjadi ketika seseorang membalikkan atau menunjuk sesuatu. Sesuatu itu tidak menyala dengan sendirinya. Jadi kata kerja ini berarti <vocabulary>mengarahkan sesuatu ke arah</vocabulary> atau <vocabulary>menunjukkan sesuatu ke</vocabulary>.

Untuk mengingat bahwa kata ini berarti "mengarahkan sesuatu", fokuslah pada け. Anda memiliki sebotol saus tomat di tangan Anda dan Anda mengarahkannya ke musuh terburuk Anda untuk menyemprotkannya. Bayangkan diri Anda mengarahkan saus tomat ke arah mereka.', 'Pembacaan kali ini sama dengan 向く yang telah dipelajari pada level sebelumnya. Selama Anda mengetahuinya, Anda harus bisa mempelajari bacaan yang satu ini juga.', 'Untuk Mengubah Sesuatu Menuju, Untuk Menunjuk Sesuatu')
    RETURNING id INTO v_7530_untuk_mengubah_sesuatu_menuju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お前', 'anda', 8, 159, 'お ditambahkan untuk meninggikan seseorang di <kanji>depan</kanji> Anda. Apa yang Anda sebut seseorang di depan Anda? Benar sekali, <vocabulary>Anda</vocabulary>. Seiring berjalannya waktu, kata ini kehilangan rasa kesopanannya, dan saat ini terdengar sangat kasar dan seringkali kasar. Kata "kamu" ini adalah cara yang baik untuk menunjukkan kemarahan, dan beberapa orang juga menggunakannya dalam situasi yang sangat santai untuk menunjukkan kasih sayang.', 'Pembacaan 前 adalah kun''yomi, seperti halnya pembacaan kosakata 前. Selama Anda tahu kata itu, Anda pasti bisa membacanya juga.', 'Anda')
    RETURNING id INTO v_7531_anda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地中海', 'laut-tengah', 8, 160, '<kanji>Laut</kanji> <kanji>tengah</kanji> bumi adalah <vocabulary>Laut Mediterania</vocabulary>. Maklum, karena dikelilingi daratan. Itu adalah lautan di tengah-tengah seluruh bumi.

Sebenarnya, nama Jepang 地中海 juga cocok dengan akar bahasa Latin dari nama Inggris: medius untuk “tengah” dan terra untuk “bumi.” Wah, apa kami baru saja mengajarimu bahasa Latin? Saya merasakan usaha bisnis baru di sini. Wanius Kanius, siapa saja?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Laut Tengah')
    RETURNING id INTO v_7569_laut_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毎朝', 'setiap-pagi', 8, 161, '<kanji>Setiap</kanji> <kanji>pagi</kanji> adalah <vocabulary>setiap pagi</vocabulary>!', 'Bacaannya merupakan gabungan on''yomi dan kun''yomi. Meskipun demikian, kedua bacaan untuk kedua kanji tersebut adalah bacaan yang Anda pelajari dengan kanji tersebut sehingga Anda harus bisa membaca ini.', 'Setiap Pagi')
    RETURNING id INTO v_7570_setiap_pagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '当たり前', 'alami', 8, 162, 'Anda telah melihat bagaimana 当たり berarti kesuksesan. Jika Anda pernah mengalami kesuksesan <kanji>sebelum</kanji>, segala sesuatu setelahnya tampaknya cukup <vocabulary>jelas</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Alami, Wajar, Jelas, Biasa, Umum')
    RETURNING id INTO v_7623_alami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水道', 'persediaan-air', 8, 163, '<kanji>air</kanji> <kanji>jalan</kanji> membawa <vocabulary>persediaan air</vocabulary> Anda. Di masa lalu, saluran ini disebut <vocabulary>aqueduct</vocabulary>s.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Persediaan air, Layanan Air, Bangunan air, Terowongan air, Saluran, Jalur Air')
    RETURNING id INTO v_7624_persediaan_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '点ける', 'untuk-menghidupkan-sesuatu', 8, 164, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

Kanji itu sendiri berarti <kanji>titik</kanji> jadi versi kata kerjanya adalah sesuatu yang perlu Anda tunjuk untuk melakukannya. Bayangkan mengarahkan jari Anda dan menekan tombol lampu <vocabulary>untuk menyalakan sesuatu</vocabulary>, dalam hal ini lampu. Anda tidak akan bisa <vocabulary>mengaktifkan sesuatu</vocabulary> jika Anda tidak bisa mengarahkan jari Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda tidak bisa <vocabulary>menyalakan</vocabulary> lampu hanya dengan satu jari, Anda perlu menggunakan <reading>dua</reading> (つ). Entah jari Anda sangat lemah, atau saklar lampunya sangat kuat. Apa pun yang terjadi, Anda memerlukan dua jari untuk menyalakan lampu.', 'Untuk Menghidupkan Sesuatu, Untuk Mengaktifkan Sesuatu, Untuk Menyalakan Sesuatu')
    RETURNING id INTO v_7681_untuk_menghidupkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '役目', 'tugas', 8, 165, 'Jika Anda <kanji>mata</kanji> pada <kanji>layanan</kanji>, maka Anda akan selalu berpikir membantu orang lain adalah <vocabulary>tugas</vocabulary> Anda! Jika Anda melihat seseorang membutuhkan layanan, Anda akan selalu menawarkan bantuan Anda, karena itu adalah tugas Anda.', 'Kata ini terdiri dari bacaan on''yomi untuk 役 dan bacaan kun''yomi untuk 目. Anda telah mempelajari keduanya sehingga Anda seharusnya bisa membaca kata ini juga!', 'Tugas, Bisnis, Peran')
    RETURNING id INTO v_7737_tugas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生地', 'bahan', 8, 166, '<kanji>Kehidupan</kanji> yang keluar dari <kanji>bumi</kanji> terdiri dari berbagai jenis <vocabulary>material</vocabulary>. Terkadang <vocabulary>kain</vocabulary>, terkadang <vocabulary>adonan</vocabulary>, tapi semuanya harus dibuat dari sesuatu.', 'Kata ini menggunakan bacaan kun''yomi baru untuk 生 dan bacaan on''yomi baru untuk 地. Anda belum mempelajari salah satu bacaan ini, maaf! Berikut beberapa mnemonik untuk membantu Anda:

Jika kamu menginginkan <vocabulary>bahan</vocabulary> terbaik untuk membuat pakaian atau pai, <reading>key</reading> (き) adalah menanyakan <reading>Je</reading>sus (じ)! Dia tahu segalanya, termasuk di mana menemukan bahan untuk benda aneh apa pun yang Anda buat. Ingat saja: Siapa kuncinya? Yesus!', 'Bahan, Kain, Kain, Adonan, Adonan')
    RETURNING id INTO v_7738_bahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '番組', 'program', 8, 167, 'Gunakan <kanji>angka dalam rangkaian</kanji> untuk <kanji>mengelompokkan</kanji> hal-hal yang Anda tonton dan dengarkan. Hal ini menjadikannya <vocabulary>program</vocabulary> Anda. Program TV dan radio Anda, khususnya. Jika Anda menonton TV, Anda akan sering mendengarnya!', 'Kata ini terdiri dari bacaan on''yomi untuk 番 dan bacaan kun''yomi untuk 組. Kamu sudah mempelajari keduanya, jadi asal kamu ingat rendaku, kamu pasti bisa membaca kata ini juga!', 'Program, Program')
    RETURNING id INTO v_8664_program;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '科目', 'subjek', 8, 168, 'Jika Anda memiliki <kanji>mata</kanji> pada <kanji>kursus</kanji> tertentu, itu adalah <kosakata>mata pelajaran</vocabulary> yang benar-benar ingin Anda ambil. Mungkin Anda masih bersekolah dan itu berarti Anda akan mengambil banyak <vocabulary>kursus</vocabulary>. Mungkin Anda seorang guru dan sedang merencanakan <vocabulary>kurikulum</vocabulary> Anda. Apa pun yang terjadi, Anda tetap memperhatikan hadiah kursusnya.', 'Bacaannya adalah bacaan on''yomi, tetapi Anda telah mempelajari bacaan kun''yomi untuk 目 sebelumnya. Jadi, kamu harus ingat bahwa kata ini menggunakan もく, bukan め. Untuk melakukan itu, bayangkan melihat bahwa <kosakata>mata pelajaran</vocabulary> yang boleh Anda ambil pada semester berikutnya berbeda dari mata pelajaran orang lain. Anak-anak lain memperhatikan, dan mulai <read>mengejek</reading>ing (もく) Anda karenanya. Pikirkan tentang mata pelajaran tersebut dan bagaimana Anda diejek karena harus mengambilnya.', 'Subjek, Kursus, Kurikulum')
    RETURNING id INTO v_8699_subjek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '数年', 'beberapa-tahun', 8, 169, 'Ketika <kanji>beberapa</kanji> <kanji>tahun</kanji> telah berlalu, Anda mengatakan bahwa <vocabulary>beberapa tahun</vocabulary> telah berlalu! Anda tidak ingin mengatakan berapa tahun, jadi katakan saja beberapa tahun.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Beberapa Tahun')
    RETURNING id INTO v_8739_beberapa_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絵文字', 'emoji', 8, 170, 'Ingat bagaimana 文字 berarti "surat"? Nah, inilah <kanji>gambar</kanji> kecil yang digunakan orang-orang untuk berkomunikasi akhir-akhir ini, alias <vocabulary>emoji</vocabulary>. Anda tahu, wajah, hati, dan api yang Anda kirimkan saat mengirim pesan teks atau email — emoji!', 'Ini adalah kombinasi kata 絵 dan 文字, yang sudah Anda pelajari. Jika Anda bisa membacanya, Anda juga harus bisa membaca ini.', 'emoji')
    RETURNING id INTO v_8740_emoji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '投手', 'kendi', 8, 171, 'Anda sudah tahu bahwa 手 berarti "tangan", tetapi bisa juga berarti "pelaku", seperti seseorang yang melakukan tindakan atau tugas tertentu. Mengapa? Karena kita menggunakan tangan kita untuk melakukan sesuatu. Dan dalam hal <kanji>melempar</kanji>, <kanji>pelaku</kanji> adalah <vocabulary>pitcher</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 手, jadi inilah mnemonik untuk membantu Anda:

Untuk menjadi <vocabulary>pitcher</vocabulary> yang baik, yang harus Anda lakukan hanyalah memasukkan bola ke dalam <reading>chute</reading> (しゅ). Pitcher sebenarnya tidak melempar bola. Ada saluran pelemparan yang tidak terlihat tepat di atas gundukan itu. Anda memasukkan bola ke dalam saluran dan lepas!', 'Kendi')
    RETURNING id INTO v_8814_kendi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対決', 'pertikaian', 8, 172, 'Ketika Anda <kanji>melawan</kanji> orang lain yang <kanji>memutuskan</kanji> semuanya, Anda tahu ini adalah <vocabulary>pertarungan</vocabulary>. Ini adalah <vocabulary>konfrontasi</vocabulary> yang menentukan!

対決 adalah saat dua pihak saling berhadapan dalam pertandingan atau pertarungan serius. Bayangkan rival <vocabulary>berhadapan</vocabulary> dalam pertandingan besar atau pertarungan terakhir di anime. Ini menegangkan dan dramatis, tetapi juga mengasyikkan - seperti, "Baiklah, ini dia. Saatnya menyelesaikan masalah. Siapa yang akan menjadi pemenang?"', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pertikaian, Konfrontasi, Menghadapi')
    RETURNING id INTO v_9349_pertikaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '南アフリカ', 'afrika-selatan', 8, 173, 'Ini menggabungkan <kanji>selatan</kanji> dan アフリカ, kata untuk "Afrika". Satukan semuanya untuk mendapatkan <vocabulary>Afrika Selatan</vocabulary>. 

南アフリカ hampir selalu berarti negara Afrika Selatan, namun dalam beberapa konteks kadang-kadang mengacu pada wilayah <vocabulary>Afrika Selatan</vocabulary> yang lebih luas.', 'Pembacaannya menggunakan kun''yomi untuk 南, yang telah Anda pelajari. Hore untuk geografi! Sekarang Afrika Selatan berada di benua manakah lagi…?', 'Afrika Selatan, Afrika Selatan')
    RETURNING id INTO v_9352_afrika_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '北風', 'angin-utara', 8, 174, 'Dari <kanji>utara</kanji> datanglah <kanji>angin</kanji>. Tentu saja, itu adalah <vocabulary>angin utara</vocabulary>.

北風 bertiup dari utara, dan di Jepang sering dikaitkan dengan suhu dingin yang ditimbulkannya.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Hampir seperti dua kosakata independen, 北 dan 風, yang digabungkan menjadi satu. Anda telah mempelajari bacaan ini, namun bacaan かぜ masih cukup baru, jadi inilah mnemonik untuk berjaga-jaga:

Bayangkan <vocabulary>angin utara</vocabulary> meniup kami<reading>kaze</reading> (かぜ) keluar jalur. Pilot kamikaze mencoba menyelesaikan misinya, tapi dia tidak bisa mengatasi angin yang bertiup dari utara. Dengarkan kamikaze berseru, "Terkutuklah kamu, angin utara!" Namun, di satu sisi, hal itu menyelamatkan hidupnya.', 'Angin Utara')
    RETURNING id INTO v_9355_angin_utara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夜明け', 'fajar', 8, 175, 'Kita punya <kanji>malam</kanji> dan versi kata benda "to fajar" (明ける). Apa yang terjadi ketika malam berakhir dan hari baru tiba? <vocabulary>fajar</vocabulary>, tentu saja.

夜明け mengacu pada fajar atau <vocabulary>fajar</vocabulary> dalam arti harafiah, namun dapat juga digunakan secara metaforis yang berarti <vocabulary>awal</vocabulary> dari sesuatu yang baru, seperti dalam 時代の夜明け (fajar suatu era).', 'Kata ini menggunakan pembacaan kanji kun''yomi. Kamu tahu 明け karena menggunakan bacaan yang sama dengan 明ける, tapi 夜 agak aneh karena よる disingkat menjadi よ. Berikut ini mnemonik untuk membantu Anda mengingat perubahan ini:

Apa yang kamu lakukan saat <vocabulary>fajar</vocabulary> datang setiap pagi? Tentu saja bermain dengan <reading>yo</reading>-yo (よ) Anda. Anda ingin menjadi yo-yo terbaik yang pernah ada, jadi Anda bangun setiap pagi, melatih keterampilan yo-yo Anda saat kompetisi tertidur.

Perhatikan bahwa dalam frasa terkait 夜が明ける, 夜 juga sering dibaca sebagai よ.', 'Fajar, Fajar, Awal')
    RETURNING id INTO v_9372_fajar;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2534_bulat, 'Bulat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2534_bulat, 'Bundar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2700_untuk_membedakan, 'Untuk Membedakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2700_untuk_membedakan, 'Untuk Membedakannya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2700_untuk_membedakan, 'Untuk Mengenali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2761_kolam, 'Kolam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2871_lain_kali, 'Lain kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2899_timur_tengah, 'Timur Tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2935_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2935_daerah, 'Sekitarnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2935_daerah, 'Lingkungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2966_untuk_melewati, 'Untuk Melewati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2966_untuk_melewati, 'Untuk Melewati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2966_untuk_melewati, 'Untuk Bepergian Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2990_kuda, 'Kuda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2991_daya_kuda, 'Daya kuda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2992_untuk_mendukung, 'Untuk Mendukung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2993_kantor_cabang, 'Kantor Cabang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2993_kantor_cabang, 'Toko Cabang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2994_untuk_hidup, 'Untuk Hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2994_untuk_hidup, 'Untuk Tinggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2994_untuk_hidup, 'Untuk Tinggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2995_penduduk, 'Penduduk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2995_penduduk, 'Penduduk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2995_penduduk, 'Penghuni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2997_untuk_membantu, 'Untuk Membantu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2997_untuk_membantu, 'Untuk Menyimpan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2997_untuk_membantu, 'Untuk Menyelamatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3000_nasihat, 'Nasihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3001_universitas_kedokteran, 'Universitas Kedokteran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3001_universitas_kedokteran, 'Sekolah kedokteran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3001_universitas_kedokteran, 'Sekolah Kedokteran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3002_ilmu_kedokteran, 'Ilmu kedokteran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3002_ilmu_kedokteran, 'Obat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3003_dokter, 'Dokter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3003_dokter, 'Dokter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3004_kerajaan, 'Kerajaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3005_anda, 'Anda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3005_anda, 'Sobat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3006_nama_anak_laki_laki_ender, 'Nama Anak Laki-Laki Ender', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3006_nama_anak_laki_laki_ender, 'Nama Laki-Laki Ender', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3006_nama_anak_laki_laki_ender, 'Kun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3007_untuk_menghadapi, 'Untuk Menghadapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3007_untuk_menghadapi, 'Untuk Diarahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3007_untuk_menghadapi, 'Untuk Membandingkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3010_di_depan, 'Di depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3010_di_depan, 'Oposisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3011_biro, 'Biro', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3011_biro, 'Departemen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3011_biro, 'Stasiun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3011_biro, 'Kantor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3012_kantor_cabang, 'Kantor Cabang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3013_peran, 'Peran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3013_peran, 'Bagian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3013_peran, 'Tugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3013_peran, 'Melayani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3014_pejabat_publik, 'Pejabat Publik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3014_pejabat_publik, 'Pejabat Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3014_pejabat_publik, 'Pegawai Negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3015_agar_bermanfaat, 'Agar Bermanfaat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3016_tugas_penting, 'Tugas Penting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3016_tugas_penting, 'Tugas Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3016_tugas_penting, 'Peran Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3023_riset, 'Riset', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3023_riset, 'Penyelidikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3023_riset, 'Belajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3025_untuk_melempar, 'Untuk Melempar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3025_untuk_melempar, 'Untuk Melempar Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3026_pikiran_dan_tubuh, 'Pikiran dan Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3026_pikiran_dan_tubuh, 'Tubuh Dan Pikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3027_tubuh, 'Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3028_seluruh_tubuh, 'Seluruh Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3028_seluruh_tubuh, 'Seluruh Tubuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3029_hutan, 'Hutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3029_hutan, 'Hutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3030_kedua_orang, 'Kedua Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3031_pengarang, 'Pengarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3031_pengarang, 'Penulis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3032_sarjana, 'Sarjana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3033_insinyur, 'Insinyur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3035_tempat, 'Tempat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3035_tempat, 'Lokasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3035_tempat, 'Titik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3036_pintu_masuk, 'Pintu masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3036_pintu_masuk, 'Penerimaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3036_pintu_masuk, 'Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3037_pabrik, 'Pabrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3038_tempat, 'Tempat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3038_tempat, 'Titik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3038_tempat, 'Pemandangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3041_tempat_lain, 'Tempat Lain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3041_tempat_lain, 'Di tempat lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3041_tempat_lain, 'Tempat Lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3041_tempat_lain, 'Di tempat lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3042_tempat_terkenal, 'Tempat Terkenal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3043_alamat, 'Alamat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3044_pagi, 'Pagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3045_sarapan, 'Sarapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3046_matahari_pagi, 'Matahari Pagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3046_matahari_pagi, 'Matahari Terbit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3047_nomor, 'Nomor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3047_nomor, 'Rangkaian Digit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3048_nomor_satu, 'Nomor Satu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3048_nomor_satu, 'Yang Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3048_nomor_satu, 'Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3048_nomor_satu, 'Terbaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3048_nomor_satu, 'Terbaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3048_nomor_satu, 'Yang Paling Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3048_nomor_satu, 'Paling', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3049_nomor_dua, 'Nomor Dua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3049_nomor_dua, 'Kedua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3050_kotak_polisi, 'Kotak Polisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3050_kotak_polisi, 'Koban', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3051_menjawab, 'Menjawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3051_menjawab, 'Membalas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3051_menjawab, 'Tanggapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3052_untuk_menjawab, 'Untuk Menjawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3052_untuk_menjawab, 'Untuk Membalas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3052_untuk_menjawab, 'Untuk Menanggapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3053_gambar, 'Gambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3053_gambar, 'Lukisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3053_gambar, 'Menggambar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3053_gambar, 'Ilustrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3054_untuk_membeli, 'Untuk Membeli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3055_jalan, 'Jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3055_jalan, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3055_jalan, 'Jalur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3055_jalan, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3056_trotoar, 'Trotoar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3056_trotoar, 'Trotoar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3056_trotoar, 'Trotoar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3057_metode, 'Metode', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3057_metode, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3057_metode, 'Gaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3057_metode, 'Cara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3058_selang, 'Selang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3058_selang, 'Interval Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3058_selang, 'Interval Ruang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3059_waktu, 'Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3059_waktu, 'Jam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3060_jumlah_waktu, 'Jumlah Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3060_jumlah_waktu, 'Interval Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3060_jumlah_waktu, 'Interval Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3060_jumlah_waktu, 'Periode Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3061_manusia, 'Manusia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3061_manusia, 'Manusia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3062_segera, 'Segera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3062_segera, 'Tak lama kemudian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3062_segera, 'Segera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3063_ruang_angkasa, 'Ruang angkasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3064_awan, 'Awan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3065_untuk_menghitung, 'Untuk Menghitung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3066_nomor, 'Nomor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3066_nomor, 'Menghitung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3066_nomor, 'Jumlah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3067_angka, 'Angka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3067_angka, 'Angka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3067_angka, 'Nomor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3068_matematika, 'Matematika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3068_matematika, 'Matematika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3068_matematika, 'Matematika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3069_jumlah_orang, 'Jumlah Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3069_jumlah_orang, 'Jumlah Orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3070_poin, 'Poin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3070_poin, 'Skor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3071_seru, 'Seru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3072_musik, 'Musik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3073_kenyamanan, 'Kenyamanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3073_kenyamanan, 'Kemudahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3073_kenyamanan, 'Kesenangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3074_untuk_berbicara, 'Untuk Berbicara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3074_untuk_berbicara, 'Untuk Berbicara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3075_telepon, 'Telepon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3075_telepon, 'Telepon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3076_percakapan, 'Percakapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3076_percakapan, 'Dialog', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3077_kereta, 'Kereta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3077_kereta, 'Kereta Listrik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3078_listrik, 'Listrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3078_listrik, 'Lampu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3079_baterai, 'Baterai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3080_elektron, 'Elektron', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3080_elektron, 'Elektronik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3081_tenaga_listrik, 'Tenaga Listrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3081_tenaga_listrik, 'Listrik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3405_mengikat, 'Mengikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3405_mengikat, 'Menggambar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3423_tokyo, 'Tokyo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3428_di_sana, 'Di sana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3428_di_sana, 'Lewat sana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3428_di_sana, 'Sisi Lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3431_seluruh_amerika, 'Seluruh Amerika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3433_sebuah_memori, 'Sebuah Memori', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3433_sebuah_memori, 'Memori', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3433_sebuah_memori, 'Ingatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3434_untuk_mendekat, 'Untuk Mendekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3434_untuk_mendekat, 'Untuk Mendekati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3434_untuk_mendekat, 'Untuk Mendekat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3434_untuk_mendekat, 'Ke Dekat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3434_untuk_mendekat, 'Untuk Mendekatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3435_untuk_diingat, 'Untuk Diingat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3435_untuk_diingat, 'Untuk Mengingat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3435_untuk_diingat, 'Untuk Diingatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3443_pengganti, 'Pengganti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3443_pengganti, 'Penggantian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3454_sama_sekali, 'Sama sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3454_sama_sekali, 'Sepenuhnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3454_sama_sekali, 'Sungguh-sungguh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3454_sama_sekali, 'Benar-benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3454_sama_sekali, 'Sepenuhnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3455_panjang, 'Panjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3457_suatu_hari_nanti, 'Suatu hari nanti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3457_suatu_hari_nanti, 'Baru-baru ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3457_suatu_hari_nanti, 'Di Depan Ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3459_melihat, 'Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3459_melihat, 'Pemberitahuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3459_melihat, 'Pilot', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3460_nama, 'Nama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3460_nama, 'Nama depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3460_nama, 'Nama Lengkap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3460_nama, 'Nama Pemberian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3461_akan_selesai, 'Akan Selesai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3461_akan_selesai, 'Akan Selesai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3462_untuk_membungkuk, 'Untuk Membungkuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3462_untuk_membungkuk, 'Untuk Membengkokkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3463_untuk_dicampur, 'Untuk Dicampur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3463_untuk_dicampur, 'Untuk Dicampur Dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3463_untuk_dicampur, 'Untuk Bergabung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3464_untuk_berlari, 'Untuk Berlari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3465_menebak, 'Menebak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3465_menebak, 'Untuk Memukul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3465_menebak, 'Untuk Menempatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3467_untuk_mengubah_bentuk, 'Untuk Mengubah Bentuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3467_untuk_mengubah_bentuk, 'Untuk Berubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3468_untuk_mengubah_sesuatu, 'Untuk Mengubah Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3468_untuk_mengubah_sesuatu, 'Untuk Memutar Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3468_untuk_mengubah_sesuatu, 'Untuk Memutar Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3864_sendiri, 'Sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3864_sendiri, 'Saya sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3918_perguruan_tinggi_swasta, 'Perguruan Tinggi Swasta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3918_perguruan_tinggi_swasta, 'Universitas Swasta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4848_terakhir_kali, 'Terakhir kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4848_terakhir_kali, 'Waktu Sebelumnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5503_tubuh, 'Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5503_tubuh, 'Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5503_tubuh, 'Daging Hewan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7459_di_atas_tanah, 'Di atas tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7459_di_atas_tanah, 'Di Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7459_di_atas_tanah, 'Permukaan Bumi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7530_untuk_mengubah_sesuatu_menuju, 'Untuk Mengubah Sesuatu Menuju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7530_untuk_mengubah_sesuatu_menuju, 'Untuk Menunjuk Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7531_anda, 'Anda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7569_laut_tengah, 'Laut Tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7570_setiap_pagi, 'Setiap Pagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7623_alami, 'Alami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7623_alami, 'Wajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7623_alami, 'Jelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7623_alami, 'Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7623_alami, 'Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7624_persediaan_air, 'Persediaan air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7624_persediaan_air, 'Layanan Air', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7624_persediaan_air, 'Bangunan air', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7624_persediaan_air, 'Terowongan air', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7624_persediaan_air, 'Saluran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7624_persediaan_air, 'Jalur Air', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7681_untuk_menghidupkan_sesuatu, 'Untuk Menghidupkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7681_untuk_menghidupkan_sesuatu, 'Untuk Mengaktifkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7681_untuk_menghidupkan_sesuatu, 'Untuk Menyalakan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7737_tugas, 'Tugas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7737_tugas, 'Bisnis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7737_tugas, 'Peran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7738_bahan, 'Bahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7738_bahan, 'Kain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7738_bahan, 'Kain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7738_bahan, 'Adonan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7738_bahan, 'Adonan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8664_program, 'Program', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8664_program, 'Program', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8699_subjek, 'Subjek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8699_subjek, 'Kursus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8699_subjek, 'Kurikulum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8739_beberapa_tahun, 'Beberapa Tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8740_emoji, 'emoji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8814_kendi, 'Kendi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9349_pertikaian, 'Pertikaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9349_pertikaian, 'Konfrontasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9349_pertikaian, 'Menghadapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9352_afrika_selatan, 'Afrika Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9352_afrika_selatan, 'Afrika Selatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9355_angin_utara, 'Angin Utara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9372_fajar, 'Fajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9372_fajar, 'Fajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9372_fajar, 'Awal', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2534_bulat, 'まるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2700_untuk_membedakan, 'みわける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2761_kolam, 'いけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2871_lain_kali, 'じかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2899_timur_tengah, 'ちゅうとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2935_daerah, 'あたり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2966_untuk_melewati, 'とおる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2990_kuda, 'うま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2991_daya_kuda, 'ばりき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2992_untuk_mendukung, 'ささえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2993_kantor_cabang, 'してん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2994_untuk_hidup, 'すむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2995_penduduk, 'じゅうにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2997_untuk_membantu, 'たすける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3000_nasihat, 'じょげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3001_universitas_kedokteran, 'いだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3002_ilmu_kedokteran, 'いがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3003_dokter, 'いしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3004_kerajaan, 'くんしゅこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3005_anda, 'きみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3006_nama_anak_laki_laki_ender, 'くん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3007_untuk_menghadapi, 'たいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3010_di_depan, 'はんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3011_biro, 'きょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3012_kantor_cabang, 'しきょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3013_peran, 'やく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3014_pejabat_publik, 'やくにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3015_agar_bermanfaat, 'やくにたつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3016_tugas_penting, 'たいやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3023_riset, 'けんきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3025_untuk_melempar, 'なげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3026_pikiran_dan_tubuh, 'しんしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3027_tubuh, 'しんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3027_tubuh, 'からだ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3028_seluruh_tubuh, 'ぜんしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3029_hutan, 'もり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3030_kedua_orang, 'りょうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3031_pengarang, 'さくしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3032_sarjana, 'がくしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3033_insinyur, 'こうがくしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3035_tempat, 'ばしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3036_pintu_masuk, 'にゅうじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3037_pabrik, 'こうじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3037_pabrik, 'こうば', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3038_tempat, 'ところ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3041_tempat_lain, 'よそ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3042_tempat_terkenal, 'めいしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3043_alamat, 'じゅうしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3044_pagi, 'あさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3045_sarapan, 'あさごはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3046_matahari_pagi, 'あさひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3047_nomor, 'ばんごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3048_nomor_satu, 'いちばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3049_nomor_dua, 'にばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3050_kotak_polisi, 'こうばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3051_menjawab, 'こたえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3052_untuk_menjawab, 'こたえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3053_gambar, 'え', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3054_untuk_membeli, 'かう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3055_jalan, 'みち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3056_trotoar, 'ほどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3057_metode, 'どう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3058_selang, 'あいだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3058_selang, 'ま', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3059_waktu, 'じかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3060_jumlah_waktu, 'かん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3061_manusia, 'にんげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3062_segera, 'まもなく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3063_ruang_angkasa, 'くうかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3064_awan, 'くも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3065_untuk_menghitung, 'かぞえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3066_nomor, 'かず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3067_angka, 'すうじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3068_matematika, 'すうがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3069_jumlah_orang, 'にんずう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3070_poin, 'てんすう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3071_seru, 'たのしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3072_musik, 'おんがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3073_kenyamanan, 'らく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3074_untuk_berbicara, 'はなす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3075_telepon, 'でんわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3076_percakapan, 'かいわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3077_kereta, 'でんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3078_listrik, 'でんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3079_baterai, 'でんち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3080_elektron, 'でんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3081_tenaga_listrik, 'でんりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3405_mengikat, 'ひきわけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3423_tokyo, 'とうきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3428_di_sana, 'むこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3431_seluruh_amerika, 'ぜんべい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3433_sebuah_memori, 'おもいで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3434_untuk_mendekat, 'ちかづく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3435_untuk_diingat, 'おもいだす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3443_pengganti, 'かわり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3454_sama_sekali, 'まったく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3455_panjang, 'ながさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3457_suatu_hari_nanti, 'このまえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3459_melihat, 'おしらせ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3460_nama, 'なまえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3461_akan_selesai, 'できあがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3462_untuk_membungkuk, 'まげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3463_untuk_dicampur, 'まじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3464_untuk_berlari, 'はしりまわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3465_menebak, 'あてる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3467_untuk_mengubah_bentuk, 'ばける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3468_untuk_mengubah_sesuatu, 'まわす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3864_sendiri, 'わたしじしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3864_sendiri, 'わたくしじしん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3918_perguruan_tinggi_swasta, 'しりつだいがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4848_terakhir_kali, 'ぜんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5503_tubuh, 'み', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7459_di_atas_tanah, 'ちじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7530_untuk_mengubah_sesuatu_menuju, 'むける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7531_anda, 'おまえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7569_laut_tengah, 'ちちゅうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7570_setiap_pagi, 'まいあさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7623_alami, 'あたりまえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7624_persediaan_air, 'すいどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7681_untuk_menghidupkan_sesuatu, 'つける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7737_tugas, 'やくめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7738_bahan, 'きじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8664_program, 'ばんぐみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8699_subjek, 'かもく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8739_beberapa_tahun, 'すうねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8740_emoji, 'えもじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8814_kendi, 'とうしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9349_pertikaian, 'たいけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9352_afrika_selatan, 'みなみあふりか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9352_afrika_selatan, 'みなみアフリカ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9355_angin_utara, 'きたかぜ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9372_fajar, 'よあけ', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2534_bulat, '円いフリスビーを子犬にプレゼントした。', 'Saya memberikan frisbee bundar kepada anak anjing sebagai hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2534_bulat, 'あそこの円いのはUFOかな？', 'Apakah benda melingkar di sana itu UFO?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2534_bulat, 'フルムーンの月は、円いです。', 'Bulan purnama berbentuk lingkaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2700_untuk_membedakan, '兄弟を目の色で見分ける。', 'Saya membedakan saudara-saudara dari warna mata mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2700_untuk_membedakan, 'あの男が言ったことが本当かどうか見分けるなんてムリだよ。', 'Tidak mungkin untuk mengetahui apakah yang dikatakan pria itu benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2700_untuk_membedakan, 'ダイヤモンドと石ころを見分けることは出来ますか？', 'Apakah Anda dapat membedakan antara berlian dan batu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2761_kolam, 'この池の中には、大きなワニがいます。', 'Ada buaya besar di kolam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2761_kolam, '雨のせいで、池の金魚を全て失った。', 'Kami kehilangan semua ikan mas di kolam karena hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2761_kolam, '池の近くには、大きくて古い石や竹林があります。', 'Ada beberapa batu besar tua dan rerimbunan bambu di dekat kolam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2871_lain_kali, '次回は、いつですか？', 'Kapan waktu berikutnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2871_lain_kali, '次回のミーティングには、たくさんの人が来ますよ。', 'Banyak orang yang datang ke pertemuan berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2871_lain_kali, '次回なんてないんだよ。人生は一回しかないんだから。', 'Tidak ada waktu berikutnya. Kita hanya hidup sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2899_timur_tengah, 'さっきテレビで中東のニュースを見ました。', 'Saya baru saja melihat berita tentang Timur Tengah di TV.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2899_timur_tengah, 'ファラフェルは中東生まれのコロッケです。', 'Falafel merupakan salah satu jenis kroket yang lahir di Timur Tengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2899_timur_tengah, '中東の水タバコの文化は、外国でも人気です。', 'Budaya tembakau pipa air di Timur Tengah juga populer di mancanegara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2935_daerah, '日が出て、辺りが明るくなってきました。', 'Matahari terbit dan semakin terang di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2935_daerah, '足首の辺りが、少し赤いです。', 'Di sekitar pergelangan kaki saya agak merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2935_daerah, '辺りには、まだ雪がたくさん有ります。', 'Masih banyak salju di sekitar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2966_untuk_melewati, 'たくさんの車が通る。', 'Banyak mobil lewat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2966_untuk_melewati, '竹の林を通って、会社に行きます。', 'Saya melewati hutan bambu dalam perjalanan ke tempat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2966_untuk_melewati, '三丁目のコンビニの前は、毎日通りますよ。', 'Saya melewati toko serba ada di 3-chome setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2990_kuda, 'あの馬に、ニンジンやリンゴをあげてもいいですか？', 'Bolehkah aku memberikan wortel dan apel pada kuda itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2990_kuda, '草地には、白い馬がたくさんいます。', 'Ada banyak kuda putih di padang rumput.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2990_kuda, '馬が全力で走るのを見るのは楽しいです。', 'Sangat menyenangkan melihat kuda berlari dengan kekuatan penuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2991_daya_kuda, 'スポーツカーは、高い馬力を持っています。', 'Mobil sport memiliki tenaga kuda yang tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2991_daya_kuda, '会社用に馬力があるエアコンを買った。', 'Saya membeli AC yang memiliki tenaga kuda untuk perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2991_daya_kuda, '一馬力の力の大きさは一体どのくらいですか？', 'Berapa sebenarnya tenaga yang ada dalam satu tenaga kuda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2992_untuk_mendukung, 'スタッフは、これからも社長を支える考えだ。', 'Pikiran para staf adalah terus mendukung presiden.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2992_untuk_mendukung, '父は母や私を支えるために毎日仕事へ行った。', 'Ayah saya pergi bekerja setiap hari untuk menghidupi ibu dan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2992_untuk_mendukung, 'この石に、これ以上大きな木を支える力はありません。', 'Batuan ini tidak mempunyai kekuatan untuk menopang pohon yang lebih besar dari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2993_kantor_cabang, '私は毎日、その町の支店に通っています。', 'Saya pergi ke cabang di kota itu setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2993_kantor_cabang, '兄は、その支店で中古の車を買いました。', 'Adikku membeli mobil bekas di cabang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2993_kantor_cabang, '私の主人は、ニューヨーク支店の支店長です。', 'Suami saya adalah manajer cabang di cabang New York.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2994_untuk_hidup, '来年から、東京に住むつもりです。', 'Saya berencana untuk tinggal di Tokyo tahun depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2994_untuk_hidup, '海外に住んでいる人でも、日本のクレジットカードは作れますか？', 'Bisakah orang yang tinggal di luar negeri membuat kartu kredit Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2994_untuk_hidup, '中国に住んでいる時に、末の妹が生まれました。', 'Ketika saya tinggal di Tiongkok, adik perempuan bungsu saya lahir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2995_penduduk, 'このアパートには、たくさんの住人がいます。', 'Ada banyak penghuni di apartemen ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2995_penduduk, '町内の住人たちは、毎年四月に花見パーティーをします。', 'Penduduk kota mengadakan pesta melihat bunga sakura setiap bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2995_penduduk, '２０２号室の住人、有名なマンガ作家らしいよ。', 'Rupanya, penghuni Kamar 202 adalah seorang seniman manga terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2997_untuk_membantu, '私は、その馬を助けるために川に入りました。', 'Saya pergi ke sungai untuk membantu kuda itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2997_untuk_membantu, 'お金が一円足りないんです。助けてもらえませんか？', 'Saya kekurangan satu yen. Bisakah Anda membantu saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2997_untuk_membantu, 'あなたが、あの雨の日に助けてくれたおかげで、今の私がいます。', 'Terima kasih telah menyelamatkanku di hari hujan itu, aku adalah diriku yang sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3000_nasihat, 'これは、お父さんからの助言です。', 'Ini nasihat dari ayahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3000_nasihat, '社長は全てのスタッフに役に立つ助言をしました。', 'Presiden memberikan nasihat yang bermanfaat kepada seluruh staf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3000_nasihat, '母は私に自立するための助言をしてくれました。', 'Ibu saya menasehati saya untuk mandiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3000_nasihat, 'そのチョコレートをくれたら、助言をあげるわ。', 'Aku akan memberimu saran, jika kamu memberiku coklat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3001_universitas_kedokteran, '医大に入るにはお金がかかります。', 'Dibutuhkan uang untuk masuk universitas kedokteran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3001_universitas_kedokteran, '元パートナーは医大の先生でした。', 'Mantan pasangan saya adalah seorang guru di sekolah kedokteran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3001_universitas_kedokteran, '医大の学生がみんな医者になるわけではないですよ。', 'Tidak semua mahasiswa kedokteran menjadi dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3002_ilmu_kedokteran, '大学では医学を学びます。', 'Saya belajar kedokteran di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3002_ilmu_kedokteran, '医学のテクノロジーのおかげで、私の母は今日も元気に生きています。', 'Berkat teknologi medis, ibu saya masih hidup dan sehat hingga saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3002_ilmu_kedokteran, '医学にくわしい先生の見方としては、どう思いますか？', 'Dari sudut pandang Anda sebagai seorang guru yang mengetahui banyak tentang kedokteran, bagaimana menurut Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3003_dokter, '今日は医者に行かなくちゃいけない。', 'Saya harus pergi ke dokter hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3003_dokter, '私の医者としてのミッションは人々を元気にすることです。', 'Sebagai seorang dokter, misi saya adalah membuat orang sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3003_dokter, '私は血を見るのがきらいですが、医者にはなれますか？', 'Saya tidak suka melihat darah, tapi apakah saya masih bisa menjadi dokter?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3004_kerajaan, 'この町はかつて君主国だったそうです。', 'Kota ini dulunya merupakan sebuah monarki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3004_kerajaan, '君主国は王や女王がリーダーの国のことです。', 'Monarki adalah negara yang pemimpinnya adalah seorang raja atau ratu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3004_kerajaan, 'デンマークは君主国です。', 'Denmark adalah negara monarki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3005_anda, '君、もしかしてコウイチの妹？', 'Apakah kamu mungkin adik perempuan Koichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3005_anda, '君の作るカレーが日本一だよ。', 'Kari yang Anda buat adalah yang terbaik di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3005_anda, '君は私に毎日シャワーをあびる大切さを教えてくれたじゃないか。', 'Anda mengajari saya pentingnya mandi setiap hari, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3006_nama_anak_laki_laki_ender, 'マイケル君には兄弟がいません。', 'Michael tidak memiliki saudara laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3006_nama_anak_laki_laki_ender, '田中君、今日も元気そうだね。', 'Tanaka-kun, kamu terlihat sehat hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3006_nama_anak_laki_laki_ender, '山下先生は、男女両方の学生に「〜君」を付けます。', 'Yamashita-sensei memanggil siswa laki-laki dan perempuan dengan "-kun."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3007_untuk_menghadapi, 'ドルに対する円のレートは、今いくらですか？', 'Berapa nilai yen dibandingkan dolar sekarang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3007_untuk_menghadapi, '以上が、米国との外交に対する見方です。', 'Di atas adalah pandangan saya mengenai diplomasi dengan Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3007_untuk_menghadapi, '先生のロボット工学に対する考えを教えて下さい。', 'Tolong beritahu saya pendapat Anda tentang rekayasa robot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3007_untuk_menghadapi, 'あいつらの関係が修復不可能だってことは明らかだね。だって、スタートレックに対する意見が全く違っているんだから。', 'Sekarang jelas bahwa hubungan mereka tidak akan berhasil karena pendapat mereka tentang Star Trek adalah kebalikannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3010_di_depan, 'その考えには反対です。', 'Saya menentang gagasan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3010_di_depan, 'あの、そのサンダル、右と左が反対ですよ。', 'Um, sandal kanan dan kirimu berseberangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3010_di_depan, '父は、私がウォルマートでプロポーズすることを反対した。', 'Ayah saya menentang saya melamar di Walmart.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3011_biro, 'この局のニュースをよく見ます。', 'Saya sering melihat berita di stasiun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3011_biro, 'ゆうびん局では海外に手紙を出すことが出来ます。', 'Anda dapat mengirimkan surat ke luar negeri melalui kantor pos.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3011_biro, '北米局では、主にアメリカとカナダとの外交をします。', 'Biro Amerika Utara terutama melakukan diplomasi dengan Amerika Serikat dan Kanada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3012_kantor_cabang, '東京支局からポートランドの本社にもどって下さい。', 'Silakan kembali dari cabang Tokyo ke kantor pusat di Portland.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3012_kantor_cabang, '去年、パスポートセンターの東京支局へ行きました。', 'Tahun lalu, saya pergi ke pusat paspor cabang Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3012_kantor_cabang, 'テレビ東京には、海外支局はありますか？', 'Apakah TV Tokyo memiliki biro di luar negeri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3013_peran, '役のためにダイエットします。', 'Saya akan melakukan diet untuk mendapatkan peran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3013_peran, 'ロミオ役はレオナルド・ディカプリオです。', 'Peran Romeo adalah Leonardo DiCaprio.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3013_peran, 'コンビニのアルバイトは、日本社会にとって、あなたが思ってるよりも大切な役です。', 'Pekerja paruh waktu di toko serba ada memainkan peran yang lebih penting dalam masyarakat Jepang daripada yang Anda kira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3014_pejabat_publik, '今日、役人が来ましたよ。', 'Seorang pejabat publik datang hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3014_pejabat_publik, '大学を出て、全てのテストに通れば、役人になれます。', 'Jika Anda lulus perguruan tinggi dan lulus semua tes, Anda bisa menjadi pejabat pemerintah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3014_pejabat_publik, '役人だって、心のある一人の人間なんですよ。', 'Bahkan pejabatnya adalah manusia yang berhati hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3015_agar_bermanfaat, 'マスキングテープは、色々なことの役に立つ。', 'Masking tape berguna untuk berbagai hal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3015_agar_bermanfaat, '山下先生の助言は、人生の役に立つ。', 'Nasihat Yamashita-sensei bermanfaat bagi kehidupan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3015_agar_bermanfaat, 'あまりお役に立てず、すみませんでした。', 'Saya minta maaf karena saya tidak bisa banyak membantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3016_tugas_penting, 'この学校の先生になることは、大役ですよ。', 'Menjadi guru di sekolah ini merupakan suatu tugas yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3016_tugas_penting, 'ドラマの大役になったおかげで、全国で人気になりました。', 'Berkat mendapatkan peran besar dalam serial drama, aku menjadi populer secara nasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3016_tugas_penting, '中東局でリーダーになるなんて、大役ですよ！', 'Menjadi pemimpin di biro Timur Tengah adalah peran yang penting!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3023_riset, 'これは、心理学の研究です。', 'Ini adalah penelitian psikologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3023_riset, '研究によると、お茶は人を元気にします。', 'Menurut penelitian, teh membuat orang sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3023_riset, '今回の研究では答えが出ませんでした。', 'Tidak ada jawaban dalam penyelidikan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3025_untuk_melempar, 'これは、ボールを投げるエクササイズです。', 'Ini adalah latihan melempar bola.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3025_untuk_melempar, 'フリスビーがどこまで行くかは、投げる人の力によります。', 'Seberapa jauh Frisbee melaju tergantung pada kekuatan orang yang melemparnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3025_untuk_melempar, '人に向かってお金を投げるのは失礼ですよ。', 'Tidak sopan membuang uang kepada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3026_pikiran_dan_tubuh, '心身のために毎日ヨガをしましょう。', 'Ayo lakukan yoga setiap hari untuk pikiran dan tubuh Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3026_pikiran_dan_tubuh, '心身のバランスが大切です。', 'Keseimbangan pikiran dan tubuh itu penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3026_pikiran_dan_tubuh, '心身が元気でなくなってしまい、休学することにしました。', 'Pikiran dan tubuhku sedang tidak sehat sehingga aku memutuskan untuk mengambil cuti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3027_tubuh, '身体は元気ですが、心はボロボロですよ。', 'Tubuhku baik-baik saja, tapi hatiku compang-camping.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3027_tubuh, '母は生まれた時から身体が弱いんです。', 'Ibu saya memiliki konstitusi yang lemah sejak dia lahir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3027_tubuh, 'スポーツも大切ですが、身体を休めることはそれ以上に大切です。', 'Berolahraga memang penting, namun mengistirahatkan tubuh jauh lebih penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3028_seluruh_tubuh, '一日に一回、全身にスプレーして下さい。', 'Silakan semprotkan ke seluruh tubuh Anda sekali sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3028_seluruh_tubuh, '毎日、全身ビジネススーツで会社に行きます。', 'Setiap hari, saya pergi bekerja dengan setelan bisnis dari ujung kepala hingga ujung kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3028_seluruh_tubuh, 'カニのアレルギーで全身にたくさんの赤い点が出てしまった。', 'Saya memiliki banyak titik merah di sekujur tubuh saya karena alergi kepiting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3029_hutan, 'この森には大きい木がたくさん有ります。', 'Ada banyak pohon besar di hutan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3029_hutan, '森の中を歩くのは、とても楽しいです。', 'Berjalan-jalan di hutan memang sangat menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3029_hutan, '森が見える場所に家を作りたいと思っています。', 'Saya ingin membangun rumah di mana Anda dapat melihat hutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3030_kedua_orang, '両者の考えが同じじゃない。', 'Pemikiran kedua orang tersebut tidak sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3030_kedua_orang, '両者の力で、正しい答えが出せると思うんです。', 'Dengan kekuatan kedua orang tersebut, saya rasa Anda dapat mencapai jawaban yang tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3030_kedua_orang, 'そのゲームは、両者同点の引き分けでした。', 'Pertandingan berakhir seri, dengan kedua belah pihak mencetak skor yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3030_kedua_orang, '一年半後にようやく両者の間で取引が行われた。', 'Satu setengah tahun kemudian, kesepakatan akhirnya tercapai antara kedua pihak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3031_pengarang, 'この本の作者に会いたいです。', 'Saya ingin bertemu dengan penulis buku ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3031_pengarang, 'その曲には作者の思いがこもっています。 ', 'Lagu itu penuh dengan perasaan penciptanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3031_pengarang, 'あの作者はアートの大学を出て、マクラメ作家になったそうです。', 'Saya mendengar bahwa artis tersebut lulus dari universitas seni dan menjadi seniman macramé.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3032_sarjana, '父は心理学の学者です。', 'Ayah saya adalah seorang sarjana psikologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3032_sarjana, 'この本の作家は有名な学者です。', 'Penulis buku ini adalah seorang ulama terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3032_sarjana, '学者たちは毎日ハローキティについて研究しています。', 'Para sarjana melakukan penelitian tentang Hello Kitty setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3033_insinyur, 'あの男の人は有名な工学者です。', 'Pria itu adalah seorang insinyur terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3033_insinyur, '「ルンバ」を作ったロボット工学者は一体だれですか？', 'Siapa insinyur robotika yang menciptakan Roomba?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3033_insinyur, '大学に行かなくても、工学者になれますか？', 'Bisakah saya menjadi insinyur tanpa kuliah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3035_tempat, '土の中から死体が見えたのが、この場所です。', 'Di sinilah tempat jenazah terlihat dari dalam tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3035_tempat, 'すみません。近くのATMの場所を教えてくれませんか。', 'Permisi. Bisakah Anda memberi tahu saya lokasi ATM terdekat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3035_tempat, 'ファーストキスの場所はどこですか？', 'Dimana lokasi ciuman pertamamu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3036_pintu_masuk, '入場する前にチケットを買って下さい。', 'Silakan beli tiket sebelum Anda masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3036_pintu_masuk, '今日の入場は、午前十時から午後八時までです。', 'Penerimaan hari ini adalah dari jam 10 pagi sampai jam 8 malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3036_pintu_masuk, '入場には千円かかります。', 'Biaya masuknya 1000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3037_pabrik, 'この町には大きな工場があります。', 'Kota ini memiliki pabrik besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3037_pabrik, '工場のスタッフは毎日午前六時に出社します。', 'Staf pabrik datang bekerja setiap hari pada jam 6 pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3037_pabrik, 'ワインの工場でケガをしたため、出血に気がつくのが一日後になりました。', 'Karena saya terluka di pabrik anggur, saya baru menyadari pendarahannya sehari kemudian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3038_tempat, '分からない所があれば、手を上げてください。', 'Jika ada bagian yang tidak Anda mengerti, silakan angkat tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3038_tempat, '前回と同じ所で会いましょう。', 'Sampai jumpa di tempat yang sama seperti terakhir kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3038_tempat, 'お母さんがスクワットをしている所に、友人が来てしまった。', 'Teman saya datang tepat ketika ibu saya sedang melakukan squat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3041_tempat_lain, 'ここじゃなくて、どこか他所の店に行こうよ。', 'Jangan di sini, ayo pergi ke toko lain di tempat lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3041_tempat_lain, '他所は他所、家は家！', 'Rumah mereka, aturan mereka. Rumah kami, aturan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3041_tempat_lain, '私の母はこの辺の生まれです。他所の人間だなんて言わないで下さい。', 'Ibuku berasal dari sekitar sini. Jangan bilang dia orang dari tempat lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3042_tempat_terkenal, '東京タワーは、日本の名所の一つです。', 'Menara Tokyo adalah salah satu tempat terkenal di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3042_tempat_terkenal, 'この辺に、おすすめの名所は有りますか？', 'Apakah ada tempat terkenal yang Anda rekomendasikan di sekitar sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3042_tempat_terkenal, 'この町は、花見の名所です。', 'Kota ini merupakan tempat yang terkenal untuk melihat bunga sakura.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3043_alamat, '次に、住所を入力して下さい。', 'Selanjutnya silakan masukkan alamat Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3043_alamat, '手紙を出したいんですが、家の住所を教えてもらえませんか？', 'Saya ingin mengirimkan surat, tetapi bisakah Anda memberi tahu saya alamat rumahnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3043_alamat, '会社の住所は三丁目です。', 'Alamat perusahaan adalah 3-chome.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3044_pagi, 'もう朝ですよ。', 'Ini sudah pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3044_pagi, '朝、出社する前にコーヒーとお茶をのみます。', 'Pagi hari sebelum berangkat kerja, kami minum kopi dan teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3044_pagi, '人気のベーカリーに朝早く行きました。', 'Saya pergi ke toko roti populer pagi-pagi sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3045_sarapan, '毎日の朝ごはんはベーコンとパンです。', 'Sarapan saya setiap hari adalah bacon dan roti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3045_sarapan, '私はいつも朝ごはんを食べずに出社します。', 'Saya selalu berangkat kerja tanpa sarapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3045_sarapan, '朝ごはんの後、ランニングをします。', 'Setelah sarapan, saya lari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3046_matahari_pagi, '明るい朝日の中、ヨガをします。', 'Saya melakukan yoga di bawah sinar matahari pagi yang cerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3046_matahari_pagi, '山の上から見る朝日は、とてもキレイです。', 'Matahari terbit yang dilihat dari atas gunung sungguh indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3046_matahari_pagi, '朝日と鳥の声では目がさめないので、ベッドに行く前にアラームは必ずセットします。', 'Sinar matahari pagi dan kicau burung tidak membangunkan saya, jadi saya pastikan menyetel alarm sebelum tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3047_nomor, 'チケット番号を教えて下さい。', 'Tolong beritahu saya nomor tiketnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3047_nomor, '私の学生番号は４８９０です。', 'Nomor siswa saya adalah 4890.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3047_nomor, '田中さんの電話番号はスマホに入ってます。', 'Nomor telepon Tanaka-san ada di ponsel pintarku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3048_nomor_satu, '私にとって一番大切なのはお金です。', 'Yang paling penting bagi saya adalah uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3048_nomor_satu, '今週のテストで一番高い点数をとりたいです。', 'Saya ingin mendapatkan nilai tertinggi pada ujian minggu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3048_nomor_satu, 'これが、今全米で一番人気の曲ですよ。', 'Ini adalah lagu paling populer di seluruh Amerika saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3049_nomor_dua, '私はエントリーナンバー二番です。', 'Saya entri nomor dua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3049_nomor_dua, '今日は一年の中で二番に長い日です。', 'Hari ini adalah hari terpanjang kedua dalam setahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3049_nomor_dua, '高校のボートレースで二番になりました。', 'Kami memenangkan tempat kedua di lomba layar sekolah menengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3050_kotak_polisi, '交番の前に、たくさんのジャーマンシェパードがいました。', 'Ada banyak anjing gembala Jerman di depan boks polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3050_kotak_polisi, 'いつも家までの道が分からなくなってしまうおばあちゃんは、交番のヘビーユーザーです。', 'Nenek, yang selalu tersesat dalam perjalanan pulang, adalah pengguna berat kotak polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3050_kotak_polisi, '皮肉なことに、家から交番が近すぎると、反対に不安です。', 'Ironisnya, saya merasa resah jika ada pos polisi terlalu dekat dengan rumah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3051_menjawab, '「三足す四」の正しい答えは「七」です。', 'Jawaban yang benar untuk "tiga tambah empat" adalah "tujuh".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3051_menjawab, '答えは、A・B・C・Dの中から、えらんで下さい。', 'Silakan pilih jawaban dari A, B, C atau D.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3051_menjawab, '答えが分からないので、先生に助言をもらいます。', 'Saya tidak tahu jawabannya, jadi saya akan meminta nasihat dari guru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3052_untuk_menjawab, '「はい」と答えるのに少し時間がかかった。', 'Butuh sedikit waktu untuk menjawab "ya".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3052_untuk_menjawab, 'アンケートに答えた代わりに、アイスクリームをもらいました。', 'Sebagai imbalan menjawab kuesioner, saya mendapat es krim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3052_untuk_menjawab, '私は電話に出る時、先ず「もしもし」と答えて、自分の名前を言います。', 'Ketika saya menjawab telepon, pertama-tama saya menjawab "halo" dan menyebutkan nama saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3053_gambar, 'これは有名なピカソの絵です。', 'Ini adalah lukisan Picasso yang terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3053_gambar, '私は休日に道で絵をかいてます。', 'Saya melukis gambar di jalan pada hari libur saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3053_gambar, '家に絵が一つもないなんて、あなたはシリアルキラーか何かですか？', 'Karena tidak ada satupun gambar di rumahmu, apakah kamu seperti seorang pembunuh berantai atau semacamnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3054_untuk_membeli, '今日も朝、コンビニでコーヒーを買う。', 'Saya membeli kopi di toko serba ada di pagi hari hari ini juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3054_untuk_membeli, 'トイレットペーパーは平日に切れないよう、いつも多めに買います。', 'Saya selalu membeli tisu toilet tambahan agar kami tidak kehabisan di hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3054_untuk_membeli, '車も家も中古で買いました。', 'Saya membeli mobil dan rumah saya bekas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3055_jalan, '父は毎朝、この道でジョギングをします。', 'Ayah saya jogging di jalan ini setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3055_jalan, '必死に長い道を歩いて東京に来たんです。', 'Saya berjalan mati-matian di jalan yang panjang dan sampai di Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3055_jalan, 'ハリウッドには、多くの有名人の名前が入った道があります。', 'Hollywood memiliki jalan dengan banyak nama selebriti di atasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3056_trotoar, 'この歩道は広くて歩きやすいです。', 'Trotoar ini lebar dan mudah untuk dilalui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3056_trotoar, '車は決して歩道を走らないで下さい。', 'Mobil tidak boleh berjalan di trotoar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3056_trotoar, 'セグウェイは歩道を走ってもいいんですか？', 'Bisakah Segway berjalan di trotoar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3057_metode, '休みの日は、茶道の教室に行きます。', 'Pada hari liburku, aku mengikuti pelajaran upacara minum teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3057_metode, 'じゅう道は日本生まれのマーシャルアーツです。', 'Judo adalah seni bela diri dari Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3057_metode, '剣道の刀は竹で出来ています。', 'Pedang kendo terbuat dari bambu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3058_selang, '学校にいる間は、スマホを切っています。', 'Saat aku di sekolah, aku mematikan ponsel pintarku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3058_selang, '父がコンビニでコーヒーを買っている間、私は車内にいました。', 'Ketika ayah saya sedang membeli kopi di toko serba ada, saya berada di dalam mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3058_selang, '休学の間、人生についてよく考えたいと思っています。', 'Saya ingin memikirkan tentang hidup saya selama cuti saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3058_selang, '友人とお茶の間で話していると、あっという間に６時になっていました。', 'Saya sedang mengobrol dengan seorang teman di ruang tamu, dan sebelum saya menyadarinya, waktu sudah menunjukkan pukul enam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3059_waktu, 'JLPTまで、あと一日。時間が足りません。', 'Satu hari lagi menuju JLPT. Saya tidak punya cukup waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3059_waktu, '今回の休みは、ゲームをする時間がたくさんあります。', 'Di liburan ini, saya punya banyak waktu untuk bermain game.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3059_waktu, '平日は毎日仕事ですが、週末には友人と楽しい時間をすごします。', 'Saya bekerja setiap hari pada hari kerja, tetapi saya bersenang-senang dengan teman-teman di akhir pekan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3059_waktu, 'ディズニーランドまで、バスで３時間もかかった。', 'Butuh tiga jam penuh dengan bus untuk sampai ke Disneyland.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3060_jumlah_waktu, 'コンビニは２４時間いつでも行くことが出来ます。', 'Anda bisa pergi ke toko serba ada kapan saja, dua puluh empat jam sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3060_jumlah_waktu, '一年間でドルが三十円も上がりました。', 'Dolar meningkat tiga puluh yen dalam satu tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3060_jumlah_waktu, '三分間だけ、トイレにいさせてくれませんか？', 'Bolehkah aku berada di kamar mandi selama tiga menit saja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3061_manusia, '人間は主に水で出来ています。', 'Manusia pada dasarnya terbuat dari air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3061_manusia, 'これは人間用のヘアドライヤーですよね？', 'Ini pengering rambut untuk manusia kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3061_manusia, '人間社会で自立して上手くやっていくのに不安が有ります。', 'Saya mempunyai kekhawatiran apakah saya bisa mandiri dan berhasil dalam masyarakat manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3062_segera, '間もなくオープンです！', 'Ini akan segera dibuka!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3062_segera, '教室のドアの音がしたので、間もなく先生が入ってくるかと思った。', 'Saya mendengar pintu kelas, jadi saya pikir guru akan segera masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3062_segera, '間もなく朝ごはんが出来ますから、テーブルの上にスプーンとフォークを出して下さい。', 'Sarapan akan segera siap, jadi harap letakkan sendok dan garpu di atas meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3063_ruang_angkasa, '自分の家は安心できる空間の一つです。', 'Rumah Anda sendiri adalah tempat yang aman di mana Anda dapat bersantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3063_ruang_angkasa, 'アレルギーなので犬と同じ空間にいることが出来ません。', 'Saya tidak bisa berada di ruangan yang sama dengan anjing karena saya alergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3063_ruang_angkasa, '大学では、空間デザインを学びました。', 'Di universitas, saya belajar desain tata ruang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3064_awan, '雲は、白くてコットンみたいですよね。', 'Awan berwarna putih dan seperti kapas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3064_awan, '今日は、雲のせいで日光がありませんでした。', 'Hari ini, tidak ada sinar matahari karena awan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3064_awan, '夏の青空には、雲一つありませんでした。', 'Tidak ada awan di langit biru musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3065_untuk_menghitung, '父は毎日夜になるとベッドの中で羊を数える。', 'Ayah saya menghitung domba di tempat tidur setiap malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3065_untuk_menghitung, '前回のデートでは、二人で青空に見える風船を数えた。', 'Pada kencan terakhir kami, kami menghitung bersama-sama balon yang bisa kami lihat di langit biru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3065_untuk_menghitung, '先生はその時教室にいた学生の数を数えました。', 'Guru menghitung jumlah siswa di kelas pada saat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3066_nomor, 'このスープに入ってるトマトの数は？', 'Berapa jumlah tomat dalam sup ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3066_nomor, '今回、死亡した人の数は前回と同じでした。', 'Kali ini, jumlah kematian sama dengan sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3066_nomor, '日本では、生まれる赤ちゃんの数が下がっている。', 'Di Jepang, jumlah bayi yang dilahirkan mengalami penurunan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3067_angka, '数字を入力するのが下手です。', 'Saya tidak pandai memasukkan angka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3067_angka, 'その数字を見て、答えを思い出しました。', 'Melihat angkanya, saya baru ingat jawabannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3067_angka, 'アラビア数字の８の形が、一番すきです。', 'Bentuk angka arab 8 favorit saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3068_matematika, '母は高校の数学の先生でした。', 'Ibu saya adalah seorang guru matematika sekolah menengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3068_matematika, '明日の数学のテスト、すごく不安なんですよ。', 'Saya sangat khawatir dengan ulangan matematika besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3068_matematika, 'その数学の答えは正しいですか？', 'Apakah jawaban matematikanya benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3069_jumlah_orang, 'この会社のスタッフの人数は二十人です。', 'Jumlah staf di perusahaan ini adalah dua puluh orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3069_jumlah_orang, '今週の出社人数は少し下がった。', 'Jumlah orang yang masuk kerja sedikit menurun pada minggu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3069_jumlah_orang, '去年のイベントではスタッフの人数が足りなかったのに、今年は多すぎるくらいです。', 'Jumlah staf pada acara tahun lalu tidak mencukupi, namun tahun ini jumlah staf terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3070_poin, '今回の点数は百点でした。', 'Skor kali ini adalah 100 poin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3070_poin, '弟はテストの点数を教えてくれなかった。', 'Adik laki-laki saya tidak memberi tahu saya nilai ujiannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3070_poin, '姉には、数学の点数を上げるために、先生にドーナッツをあげたら？と助言された。', 'Kakak perempuan saya menyarankan agar saya memberikan donat kepada guru saya untuk meningkatkan nilai matematika saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3071_seru, '犬と歩くのは楽しい。', 'Berjalan-jalan dengan seekor anjing memang menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3071_seru, '大学生の時、友人と花火を見たのが楽しかったです。', 'Sangat menyenangkan melihat kembang api bersama teman-teman saya ketika saya masih mahasiswa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3071_seru, '朝ごはんは、テレビを見ながら食べる方が、人と話しながら食べるより楽しいよ。', 'Lebih menyenangkan sarapan sambil menonton TV daripada makan sambil ngobrol dengan seseorang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3072_musik, '明日、大きな音楽のイベントがあります。', 'Besok akan ada acara musik besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3072_musik, 'もう少し音楽のボリュームを上げてもらえませんか？', 'Bisakah Anda menaikkan volume musiknya sedikit lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3072_musik, '竹内まりやと山下タツロウの音楽が気に入っています。', 'Saya suka musik Takeuchi Mariya dan Yamashita Tatsurō.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3073_kenyamanan, 'このソファは本当に楽ですね。', 'Sofa ini sungguh nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3073_kenyamanan, '車を買ってから、会社に行くのが楽になりました。', 'Setelah membeli mobil, pergi ke perusahaan menjadi mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3073_kenyamanan, 'テストの後は休みだと思うと気が楽です。', 'Saya merasa nyaman memikirkan bahwa tidak akan ada sekolah setelah ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3074_untuk_berbicara, '道で他人と話すことは、ほぼありません。', 'Saya jarang berbicara dengan orang lain di jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3074_untuk_berbicara, '今回のミーティングでは、主に米国の牛肉のことを話しました。', 'Pada pertemuan ini, kami terutama membicarakan tentang daging sapi Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3074_untuk_berbicara, '毎日、ディナーの後に電話で友人と話します。', 'Setiap hari, saya berbicara dengan seorang teman melalui telepon setelah makan malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3075_telepon, '山下先生から電話です。', 'Itu panggilan telepon dari Yamashita-sensei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3075_telepon, '電話で「ありがとう」とお母さんに言いました。', 'Saya mengatakan kepada ibu saya "terima kasih" di telepon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3075_telepon, 'それ、正しい電話番号ではないよ。', 'Itu bukan nomor telepon yang tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3076_percakapan, 'これはニコラス・ケイジ氏との会話のレコーディングです。', 'Ini adalah rekaman percakapan dengan Nicolas Cage.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3076_percakapan, '多くの人々との会話の中で心理学を学びました。', 'Saya belajar psikologi dalam percakapan saya dengan banyak orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3076_percakapan, '友人との会話で、失礼なことを言ってしまったときは、すぐに「ごめん」と言うことが大切です。', 'Jika Anda mengatakan sesuatu yang tidak sopan dalam percakapan dengan teman, penting untuk segera mengatakan "maaf".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3077_kereta, 'あの赤い電車は、東京まで行きますか？', 'Apakah kereta merah itu menuju Tokyo?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3077_kereta, '電車を写す用のカメラは、中々高いですよ。', 'Kamera untuk memotret kereta api harganya cukup mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3077_kereta, '朝の電車の時間のスケジュールは、この紙を見て下さい。', 'Silakan lihat tulisan ini untuk jadwal waktu kereta pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3078_listrik, '電気を点けて下さい。', 'Tolong nyalakan lampunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3078_listrik, '会社の電気が明るい時は、スタッフが出社しているサインです。', 'Jika lampu menyala, itu tandanya ada staf di kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3078_listrik, '冬は、電気のストーブを用います。', 'Di musim dingin, kami menggunakan pemanas listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3079_baterai, 'スマホの電池が切れた。', 'Baterai smartphone telah habis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3079_baterai, 'このラジオ、電池が入ってないよ。', 'Tidak ada baterai di radio ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3079_baterai, 'この電池は大きすぎます。', 'Baterai ini terlalu besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3080_elektron, 'カレーを電子レンジに入れました。', 'Saya memasukkan kari ke dalam microwave.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3080_elektron, 'その電子ピアノはいくらですか。', 'Berapa harga piano elektronik itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3080_elektron, '一年前から、紙の本ではなく、Kindleで電子ブックをよむようになりました。', 'Setahun yang lalu, saya mulai membaca e-book di Kindle saya, bukan di buku kertas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3080_elektron, '電子は目で見ることができません。', 'Anda tidak dapat melihat elektron dengan mata Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3081_tenaga_listrik, '全国で今、電力が不足しています。', 'Saat ini terjadi kekurangan listrik secara nasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3081_tenaga_listrik, '電力が切れて、電気が止まってしまった。', 'Listrik padam dan listrik padam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3081_tenaga_listrik, 'この辺の電力会社と言えば、東京電力ですよ。', 'Adapun perusahaan listrik di sekitar sini adalah Tokyo Electric Power Company.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3405_mengikat, '今日のゲームは引き分けだった。', 'Pertandingan hari ini seri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3405_mengikat, '本当は引き分けでも、私の心の中では、あなたが日本一です。', 'Meski sebenarnya seri, dalam hatiku kamulah yang terbaik di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3405_mengikat, '引き分けとは、両方のチームが同じ点だったということです。', 'Hasil imbang berarti kedua tim memiliki skor yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3423_tokyo, '東京は大きい町です。', 'Tokyo adalah kota besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3423_tokyo, '私の会社から東京タワーは見えますよ。', 'Anda dapat melihat Menara Tokyo dari kantor saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3423_tokyo, 'ハワイから東京に行きます。', 'Saya akan pergi dari Hawaii ke Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3428_di_sana, '山の向こうには何が見えますか？', 'Apa yang bisa Anda lihat di sisi lain pegunungan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3428_di_sana, '道の向こうのベーカリーでパンを二斤買いましょう。', 'Ayo beli dua potong roti di toko roti seberang jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3428_di_sana, '海外に行くと、毎回向こうの文化にインスパイアされるんですよ。', 'Ketika saya pergi ke luar negeri, saya selalu terinspirasi oleh budaya di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3431_seluruh_amerika, 'これは、全米で人気の大作です。', 'Ini adalah blockbuster populer di seluruh Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3431_seluruh_amerika, '今、全米ヒットチャートでナンバーワンの曲は何ですか？', 'Apa lagu nomor satu di chart hit AS saat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3431_seluruh_amerika, '全米のテレビ局から、インタビューのオファーが来た。', 'Tawaran wawancara datang dari stasiun televisi nasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3433_sebuah_memori, '夏の思い出を作文にしました。', 'Saya menulis esai dari kenangan musim panas saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3433_sebuah_memori, '小さかった時の思い出は、今でも大切です。', 'Kenangan masa kecilku masih sangat berharga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3433_sebuah_memori, '元パートナーとの思い出に「さようなら」を言いたいと思います。', 'Saya akan mengucapkan "selamat tinggal" pada kenangan bersama mantan pasangan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3434_untuk_mendekat, 'それ以上、川に近づくな！', 'Jangan mendekat ke sungai!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3434_untuk_mendekat, 'この犬は、大人の男が近づくと、立ち上って「ワン！」と言います。', 'Anjing ini bangkit dan berkata "guk!" jika seorang pria dewasa mendekatinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3434_untuk_mendekat, '来週、九州に台風が近づきます。', 'Minggu depan, topan akan mendekati Kyushu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3435_untuk_diingat, 'たまにプロポーズされた日のことを思い出す。', 'Saya terkadang ingat hari ketika saya dilamar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3435_untuk_diingat, 'やっと心理学の先生の名前を思い出した。', 'Saya akhirnya teringat nama guru psikologi itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3435_untuk_diingat, 'この辺りに来ると、小さかった時を思い出します。', 'Datang ke daerah ini mengingatkanku pada saat aku masih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3443_pengganti, '田中先生はお休みなので、代わりの先生が来ます。', 'Pak Tanaka sedang libur, jadi guru pengganti akan datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3443_pengganti, 'トマトをあげた代わりに玉ねぎをもらった。', 'Saya mendapat bawang sebagai imbalan memberi tomat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3443_pengganti, '代わりの人は中々見つからなかった。', 'Saya kesulitan menemukan orang pengganti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3454_sama_sekali, 'あなたと全く同じ考えです。', 'Saya memiliki ide yang sama persis dengan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3454_sama_sekali, '平日は全く休みが有りません。', 'Tidak ada hari libur sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3454_sama_sekali, '全力でレバーを引いたが、水は全く出なかった。', 'Aku menarik tuasnya sekuat tenaga, tapi tidak ada air yang keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3455_panjang, 'この竹の長さは三メートルです。', 'Panjang bambu ini tiga meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3455_panjang, '一回のミーティングの長さは大体どのくらいですか？', 'Berapa lama satu pertemuan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3455_panjang, 'このバナナの長さは、二十センチです。', 'Panjang pisang ini dua puluh sentimeter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3457_suatu_hari_nanti, 'この前、木の上に毛虫がいたんです。', 'Suatu hari, ada seekor ulat di pohon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3457_suatu_hari_nanti, 'この前までは、ここには花や草やシイタケが生えてたんです。', 'Sampai saat ini, bunga, tanaman, dan jamur shiitake tumbuh di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3457_suatu_hari_nanti, 'この前のテレビ番組に、あの女の人が出てました。', 'Wanita itu ada di acara TV beberapa hari yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3459_melihat, 'お知らせの紙がポストに入ってました。', 'Ada brosur di kotak surat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3459_melihat, 'お知らせがあります。今すぐ本社に来てください。', 'Ada pemberitahuan. Silakan datang ke kantor pusat segera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3459_melihat, 'ここでスポンサーからのお知らせです。', 'Dan sekarang sepatah kata dari sponsor kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3459_melihat, '雨で花火が中止になったというお知らせがありました。', 'Diumumkan bahwa kembang api telah dibatalkan karena hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3460_nama, '次に、名前を教えて下さい。', 'Selanjutnya, tolong beri tahu saya nama Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3460_nama, '私の名前は山田です。', 'Namaku Yamada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3460_nama, 'トーフグは、ワニカニを作っている会社の名前です。', 'Tofugu adalah nama perusahaan pembuat WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3461_akan_selesai, '工作が出来上がるのに、三日かかりました。', 'Butuh waktu tiga hari untuk menyelesaikan kerajinan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3461_akan_selesai, 'お茶は大体五分で出来上がります。', 'Teh akan siap dalam waktu sekitar lima menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3461_akan_selesai, '家は月末に出来上がります。', 'Rumah tersebut akan selesai pada akhir bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3462_untuk_membungkuk, '次は、足首を曲げるストレッチです。', 'Berikutnya adalah peregangan di mana Anda menekuk pergelangan kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3462_untuk_membungkuk, '父の大切な刀を曲げてしまった。', 'Saya tidak sengaja membengkokkan pedang berharga ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3462_untuk_membungkuk, 'このYouTubeビデオでは、コウイチがスプーンを百本ひたすら曲げつづけます。', 'Dalam video YouTube ini, Koichi terus membengkokkan seratus sendok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3463_untuk_dicampur, '白い毛の中に黒い毛が交じる。', 'Rambut hitam bercampur dengan rambut putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3463_untuk_dicampur, 'コンビニで買ったサンドイッチに毛糸が交じっていた。', 'Beberapa benang wol dicampur dengan sandwich yang saya beli di toko serba ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3463_untuk_dicampur, 'たくさんの日本人の中に交じって今日も生きています。', 'Saat ini saya tinggal di antara banyak orang Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3464_untuk_berlari, 'うちの犬は、雪を見ると走り回る。', 'Anjing saya berlarian ketika dia melihat salju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3464_untuk_berlari, '夏休みは小さい子も大人も、ビーチで走り回る人が多いです。', 'Saat liburan musim panas, banyak anak kecil hingga orang dewasa berlarian di tepi pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3464_untuk_berlari, '社長は今日も会社の中で走り回っています。', 'Presiden berlarian di perusahaan hari ini seperti biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3465_menebak, '父は安いお茶と高いお茶を当てるのが上手です。', 'Ayah saya pandai menebak teh itu murah atau mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3465_menebak, '大谷氏は、バットにボールを当てる天才です。', 'Pak Ohtani sangat jenius dalam memukul bola dengan tongkat pemukulnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3465_menebak, '私には電話番号で、その人の未来のことを当てる力があります。', 'Saya memiliki kekuatan untuk menebak masa depan seseorang melalui nomor teleponnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3467_untuk_mengubah_bentuk, '女も男もメイクで化けることが出来る。', 'Baik wanita maupun pria bisa bertransformasi dengan riasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3467_untuk_mengubah_bentuk, 'タヌキは人間に化けるのが上手です。', 'Anjing rakun pandai bertransformasi menjadi manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3467_untuk_mengubah_bentuk, '中古のポルシェが三年後に一千万円に化けたって本当ですか？', 'Benarkah Porsche bekas berubah menjadi sepuluh juta yen setelah tiga tahun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3467_untuk_mengubah_bentuk, '私の家は一年間のリノベーションで国宝レベルの家に化けた。', 'Rumah saya diubah menjadi rumah tingkat harta nasional dengan renovasi selama satu tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3468_untuk_mengubah_sesuatu, 'ノックの音の後、ドアノブを回す音がした。', 'Setelah terdengar suara ketukan, terdengar suara kenop pintu diputar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3468_untuk_mengubah_sesuatu, 'ぼくの兄はピザの生地を回す天才です。', 'Adikku jenius dalam memintal adonan pizza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3468_untuk_mengubah_sesuatu, 'もっとサーモンのおすしを回して下さい。', 'Tolong bagikan lebih banyak sushi salmon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3864_sendiri, '私自身はコーヒーもお茶も両方のみます。', 'Secara pribadi saya minum kopi dan teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3864_sendiri, '私自身で魚を切ったことはありません。', 'Saya sendiri belum pernah memotong ikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3864_sendiri, '私自身は考古学を学びたいという思いが強いですが、他の人にはあまり分かってもらえません。', 'Saya pribadi mempunyai keinginan yang kuat untuk belajar arkeologi, tetapi orang lain tidak memahami saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3918_perguruan_tinggi_swasta, '私立大学に入学したいです。', 'Saya ingin masuk universitas swasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3918_perguruan_tinggi_swasta, '有名私立大学を出れば、きっと上手く生きていけると思ったんです。', 'Saya pikir saya akan bisa mendapatkan penghidupan yang baik jika saya lulus dari universitas swasta terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3918_perguruan_tinggi_swasta, '私立大学の学生は外国人も多いです。', 'Universitas swasta juga memiliki banyak mahasiswa asing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4848_terakhir_kali, 'その活用形は、前回のクラスで学びました。', 'Saya mempelajari bentuk konjugasi di kelas sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4848_terakhir_kali, '前回のプレゼンはダメでしたが、今回は平気だと思います。', 'Presentasi terakhir tidak berjalan dengan baik, tapi menurut saya kali ini akan baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4848_terakhir_kali, '前回のイベントでは、作家のサインはもらえなかった。', 'Pada acara terakhir, saya tidak mendapatkan tanda tangan penulis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5503_tubuh, '会社を首にされ、身も心もズタズタです。', 'Karena PHK saya, fisik dan mental saya terkoyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5503_tubuh, 'フグは白身の魚です。', 'Blowfish adalah ikan berdaging putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5503_tubuh, 'その時、母は金のブレスレットを身につけてました。', 'Saat itu, ibuku memakai gelang emas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7459_di_atas_tanah, 'ここは、地上のフロアです。', 'Ini adalah lantai di atas tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7459_di_atas_tanah, 'ロケットは今、地上三千メートルにいる。', 'Roket tersebut kini berada 3.000 meter di atas tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7459_di_atas_tanah, '東京タワーは、地上から見上げると、大きさがよく分かりますね。', 'Anda dapat melihat ukuran Menara Tokyo jika melihat dari bawah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7530_untuk_mengubah_sesuatu_menuju, 'もう少し後ろに向けることは出来ますか？', 'Bisakah kamu memutarnya ke belakang sedikit lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7530_untuk_mengubah_sesuatu_menuju, 'スマホじゃなくて子どもに、目を向けてあげて下さい。', 'Silakan lihat anak Anda, bukan ponsel cerdas Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7530_untuk_mengubah_sesuatu_menuju, '来年の夏のJLPTに向けて活用形を学んでいます。', 'Saya sedang mempelajari bentuk konjugasi untuk JLPT musim panas mendatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7531_anda, 'お前は一体ここで何してるんだ？', 'Apa yang kamu lakukan di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7531_anda, '他人のことを「お前」と言うのは失礼ですよ。', 'Tidak sopan memanggil orang lain dengan sebutan "omae".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7531_anda, 'これからもずっとお前と生きていきたいんだよ！', 'Aku ingin menghabiskan hidupku bersamamu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7569_laut_tengah, '地中海にはキレイなビーチが広がっています。', 'Pantai yang indah terbentang di sepanjang Laut Mediterania.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7569_laut_tengah, '地中海の魚のカルパッチョが、このレストランのオススメです。', 'Carpaccio dengan ikan dari Mediterania menjadi rekomendasi restoran ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7569_laut_tengah, '夏休みは地中海でクルーズをしました。', 'Selama liburan musim panas, saya berlayar di Laut Mediterania.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7570_setiap_pagi, '毎朝、私はコンビニでコーヒーを買います。', 'Setiap pagi, saya membeli kopi di minimarket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7570_setiap_pagi, '早く学校に行くのが、毎朝のルーティーンです。', 'Berangkat ke sekolah lebih awal adalah rutinitasku setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7570_setiap_pagi, '毎朝、父はベーコンを切って朝食を作ります。', 'Setiap pagi, ayahku memotong daging asap dan membuatkan sarapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7623_alami, 'こんな当たり前のこと、どうして分からないの？', 'Ini adalah hal yang normal, mengapa Anda tidak bisa mendapatkannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7623_alami, '当たり前のことだけど、毎日シャワーをあびることは大切です。', 'Sudah jelas, tapi penting untuk mandi setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7623_alami, '他人にしてもらったことを当たり前のことだと思わずに毎回「ありがとう」と言いましょう。', 'Ucapkan terima kasih setiap kali seseorang melakukan sesuatu untuk Anda, tanpa menganggapnya remeh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7624_persediaan_air, '一日も早く水道から水が出るようにしたいんです。', 'Saya ingin air mengalir secepat mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7624_persediaan_air, 'この辺の水道の水は、人が口にして平気ですか？', 'Bolehkah orang meminum air keran di area ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7624_persediaan_air, 'プールの中の水は、水道の水と雨水が大体半分半分です。', 'Air di kolam itu sekitar setengah air keran dan setengah air hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7681_untuk_menghidupkan_sesuatu, '夜は車のヘッドライトを点ける。', 'Saya menyalakan lampu mobil di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7681_untuk_menghidupkan_sesuatu, '今すぐテレビを点けてください。	', 'Silakan segera nyalakan TV.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7681_untuk_menghidupkan_sesuatu, 'ニュースをチェックするために、ラジオを点けました。', 'Saya menyalakan radio untuk memeriksa berita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7737_tugas, '毎日、ディナーを作るのは、お父さんの役目です。', 'Membuat makan malam setiap hari adalah tugas Ayah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7737_tugas, '私のドッグモデルという役目は、ペットの犬という役目よりも、大切なんです。', 'Peran saya sebagai model anjing lebih penting daripada peran saya sebagai anjing peliharaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7737_tugas, '今の兄の役目は父の代わりに家に金を入れることです。', 'Tugas kakakku sekarang adalah mencari uang untuk keluarga menggantikan ayahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7738_bahan, 'このシャツはコットン生地で出来ています。', 'Kemeja ini terbuat dari bahan katun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7738_bahan, '生地を広げてから、切って、形を作ります。', 'Ratakan adonan, lalu potong dan bentuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7738_bahan, 'パイ生地はスーパーのものですが、他は手作りです。', 'Adonan pienya dari supermarket, tapi sisanya buatan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8664_program, '夜は、いつも同じ番組を見ます。', 'Saya selalu menonton program yang sama di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8664_program, 'あの人気番組は、ホストがスキャンダルのせいで、休止になってしまいました。', 'Program populer itu ditangguhkan karena skandal pembawa acara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8664_program, '今日の番組では、十五人の大ファミリーのドキュメンタリーをやっていました。', 'Pada program hari ini, mereka membuat film dokumenter tentang sebuah keluarga besar yang terdiri dari lima belas orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8699_subjek, '中学では九科目学びます。', 'Di sekolah menengah pertama, Anda akan mempelajari sembilan mata pelajaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8699_subjek, 'どの科目のテストも全て八十点でした。', 'Saya mendapat nilai delapan puluh pada tes untuk semua mata pelajaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8699_subjek, 'お母さんは科学や数学などの科目の先生です。', 'Ibu adalah guru mata pelajaran seperti sains dan matematika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8739_beberapa_tahun, '日本に来てから、数年です。', 'Sudah beberapa tahun sejak saya datang ke Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8739_beberapa_tahun, '数年ぶりに、元パートナーに会いました。', 'Saya bertemu mantan pasangan untuk pertama kalinya dalam beberapa tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8739_beberapa_tahun, 'あ、思い出しました？数年前に一回、コスプレのイベントでお会いしたことがあります。', 'Oh, apakah kamu baru ingat? Kami bertemu sekali di acara cosplay beberapa tahun yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8740_emoji, 'この絵文字、かわいくない？', 'Bukankah emoji ini lucu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8740_emoji, '絵文字を交ぜて、メッセージを入力しましょう。', 'Ketik pesan dengan beberapa emoji tercampur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8740_emoji, 'その大学生の青年は絵文字でコミュニケーションをすることが上手です。', 'Mahasiswa muda itu pandai berkomunikasi dengan emoji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8814_kendi, '父は、プロの投手です。', 'Ayah saya adalah seorang pitcher profesional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8814_kendi, '大谷氏は投手の名人でありバッターの名人でもあります。', 'Ohtani adalah ahli pelempar dan pemukul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8814_kendi, 'メキシコのチームの投手はとても強いです。', 'Pelempar di tim Meksiko sangat kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9349_pertikaian, '二人のライバルがついに対決することになった。', 'Kedua rival itu akhirnya bersiap untuk berhadapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9349_pertikaian, 'いつかあのシェフと1対1で対決してみたいな。', 'Suatu hari nanti, saya ingin berhadapan langsung dengan koki itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9349_pertikaian, 'よし、これでボスキャラとの対決にいるアイテムがそろったぞ！', 'Baiklah, sekarang saya memiliki semua item yang saya perlukan untuk pertarungan dengan bos!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9352_afrika_selatan, '南アフリカではラグビーがとても人気です。', 'Rugbi sangat populer di Afrika Selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9352_afrika_selatan, '南アフリカに行ったら、ライオンが見たいです。', 'Jika saya pergi ke Afrika Selatan, saya ingin melihat singa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9352_afrika_selatan, 'イーロン・マスクは南アフリカのプレトリアで生まれました。', 'Elon Musk lahir di Pretoria, Afrika Selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9352_afrika_selatan, 'バックパッカーをしていた時、ヒッチハイクで南アフリカの国々をまわりました。', 'Ketika saya sedang backpacking, saya berkeliling negara-negara Afrika Selatan dengan menumpang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9355_angin_utara, 'つめたい北風がふいています。', 'Angin utara yang dingin bertiup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9355_angin_utara, 'その日は、北風がふくさむい日でした。', 'Saat itu hari yang dingin dengan angin utara bertiup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9355_angin_utara, '北風の中を、子犬たちは元気に走りまわっていました。', 'Anak-anak anjing itu berlarian mengikuti angin utara dengan energi yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9355_angin_utara, 'これからデートなのに、北風が強すぎて、ウィッグがライオンみたいになってしまった。', 'Aku ada kencan sebentar lagi, tapi angin utara begitu kencang sehingga wigku terlihat seperti singa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9372_fajar, '今日の夜明けの空はピンクでした。', 'Langit saat fajar hari ini berwarna merah muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9372_fajar, '今はつらいけど、いつか夜明けが来るよ。', 'Segalanya sulit saat ini, namun fajar baru akan datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9372_fajar, '私の両親は、インターネット時代の夜明けを経験した世代です。', 'Orang tua saya adalah generasi yang mengalami awal era internet.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_573_kolam, id FROM items WHERE type = 'radical' AND (slug = '77' OR id = '77') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_573_kolam, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_616_berikutnya, id FROM items WHERE type = 'radical' AND (slug = '123' OR id = '123') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_616_berikutnya, id FROM items WHERE type = 'radical' AND (slug = '142' OR id = '142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_620_modal, r_299_modal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_678_mendukung, id FROM items WHERE type = 'radical' AND (slug = '81' OR id = '81') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_679_tinggal, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_679_tinggal, id FROM items WHERE type = 'radical' AND (slug = '154' OR id = '154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_680_membantu, id FROM items WHERE type = 'radical' AND (slug = '419' OR id = '419') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_680_membantu, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_681_obat, r_217_kurungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_681_obat, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_682_sobat, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_682_sobat, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_682_sobat, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_683_melawan, id FROM items WHERE type = 'radical' AND (slug = '42' OR id = '42') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_683_melawan, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_684_biro, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_684_biro, r_8780_tanjung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_684_biro, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_685_melayani, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_685_melayani, r_160_senjata);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_686_melemparkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_686_melemparkan, r_160_senjata);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_687_memutuskan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_687_memutuskan, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_687_memutuskan, r_157_kait);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_688_riset, id FROM items WHERE type = 'radical' AND (slug = '170' OR id = '170') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_688_riset, id FROM items WHERE type = 'radical' AND (slug = '11' OR id = '11') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_689_tubuh, id FROM items WHERE type = 'radical' AND (slug = '109' OR id = '109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_689_tubuh, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_689_tubuh, id FROM items WHERE type = 'radical' AND (slug = '6' OR id = '6') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_690_seseorang, r_203_seseorang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_691_mengasah, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_691_mengasah, id FROM items WHERE type = 'radical' AND (slug = '171' OR id = '171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_692_kuda, r_165_kuda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_693_hutan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_694_lokasi, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_694_lokasi, r_172_mudah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_695_pagi, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_695_pagi, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_695_pagi, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_696_nomor_dalam_seri_a, r_164_sabit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_696_nomor_dalam_seri_a, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_697_menjawab, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_697_menjawab, r_216_setelan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_698_gambar, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_698_gambar, id FROM items WHERE type = 'radical' AND (slug = '155' OR id = '155') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_699_membeli, r_163_bersih);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_699_membeli, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_700_jalan, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_700_jalan, id FROM items WHERE type = 'radical' AND (slug = '156' OR id = '156') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_701_selang, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_701_selang, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_702_awan, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_702_awan, r_159_awan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_703_menghitung, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_703_menghitung, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_703_menghitung, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_704_kenyamanan, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_704_kenyamanan, id FROM items WHERE type = 'radical' AND (slug = '123' OR id = '123') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_704_kenyamanan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_705_bicara, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_705_bicara, id FROM items WHERE type = 'radical' AND (slug = '174' OR id = '174') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_706_listrik, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_706_listrik, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_706_listrik, id FROM items WHERE type = 'radical' AND (slug = '211' OR id = '211') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_707_tempat, id FROM items WHERE type = 'radical' AND (slug = '73' OR id = '73') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_707_tempat, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_855_anti, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_855_anti, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2534_bulat, id FROM items WHERE type = 'kanji' AND (slug = '472' OR id = '472') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2700_untuk_membedakan, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2700_untuk_membedakan, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2761_kolam, k_573_kolam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2871_lain_kali, k_616_berikutnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2871_lain_kali, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2899_timur_tengah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2899_timur_tengah, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2935_daerah, id FROM items WHERE type = 'kanji' AND (slug = '651' OR id = '651') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2966_untuk_melewati, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2990_kuda, k_692_kuda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2991_daya_kuda, k_692_kuda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2991_daya_kuda, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2992_untuk_mendukung, k_678_mendukung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2993_kantor_cabang, k_678_mendukung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2993_kantor_cabang, id FROM items WHERE type = 'kanji' AND (slug = '625' OR id = '625') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2994_untuk_hidup, k_679_tinggal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2995_penduduk, k_679_tinggal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2995_penduduk, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2997_untuk_membantu, k_680_membantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3000_nasihat, k_680_membantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3000_nasihat, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3001_universitas_kedokteran, k_681_obat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3001_universitas_kedokteran, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3002_ilmu_kedokteran, k_681_obat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3002_ilmu_kedokteran, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3003_dokter, k_681_obat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3003_dokter, k_690_seseorang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3004_kerajaan, k_682_sobat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3004_kerajaan, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3004_kerajaan, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3005_anda, k_682_sobat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3006_nama_anak_laki_laki_ender, k_682_sobat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3007_untuk_menghadapi, k_683_melawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3010_di_depan, k_855_anti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3010_di_depan, k_683_melawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3011_biro, k_684_biro);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3012_kantor_cabang, k_678_mendukung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3012_kantor_cabang, k_684_biro);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3013_peran, k_685_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3014_pejabat_publik, k_685_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3014_pejabat_publik, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3015_agar_bermanfaat, k_685_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3015_agar_bermanfaat, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3016_tugas_penting, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3016_tugas_penting, k_685_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3023_riset, k_691_mengasah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3023_riset, k_688_riset);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3025_untuk_melempar, k_686_melemparkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3026_pikiran_dan_tubuh, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3026_pikiran_dan_tubuh, k_689_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3027_tubuh, k_689_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3027_tubuh, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3028_seluruh_tubuh, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3028_seluruh_tubuh, k_689_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3029_hutan, k_693_hutan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3030_kedua_orang, id FROM items WHERE type = 'kanji' AND (slug = '609' OR id = '609') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3030_kedua_orang, k_690_seseorang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3031_pengarang, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3031_pengarang, k_690_seseorang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3032_sarjana, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3032_sarjana, k_690_seseorang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3033_insinyur, id FROM items WHERE type = 'kanji' AND (slug = '457' OR id = '457') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3033_insinyur, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3033_insinyur, k_690_seseorang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3035_tempat, k_694_lokasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3035_tempat, k_707_tempat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3036_pintu_masuk, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3036_pintu_masuk, k_694_lokasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3037_pabrik, id FROM items WHERE type = 'kanji' AND (slug = '457' OR id = '457') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3037_pabrik, k_694_lokasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3038_tempat, k_707_tempat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3041_tempat_lain, id FROM items WHERE type = 'kanji' AND (slug = '529' OR id = '529') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3041_tempat_lain, k_707_tempat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3042_tempat_terkenal, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3042_tempat_terkenal, k_707_tempat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3043_alamat, k_679_tinggal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3043_alamat, k_707_tempat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3044_pagi, k_695_pagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3045_sarapan, k_695_pagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3046_matahari_pagi, k_695_pagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3046_matahari_pagi, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3047_nomor, k_696_nomor_dalam_seri_a);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3047_nomor, id FROM items WHERE type = 'kanji' AND (slug = '533' OR id = '533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3048_nomor_satu, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3048_nomor_satu, k_696_nomor_dalam_seri_a);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3049_nomor_dua, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3049_nomor_dua, k_696_nomor_dalam_seri_a);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3050_kotak_polisi, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3050_kotak_polisi, k_696_nomor_dalam_seri_a);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3051_menjawab, k_697_menjawab);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3052_untuk_menjawab, k_697_menjawab);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3053_gambar, k_698_gambar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3054_untuk_membeli, k_699_membeli);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3055_jalan, k_700_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3056_trotoar, id FROM items WHERE type = 'kanji' AND (slug = '628' OR id = '628') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3056_trotoar, k_700_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3057_metode, k_700_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3058_selang, k_701_selang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3059_waktu, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3059_waktu, k_701_selang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3060_jumlah_waktu, k_701_selang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3061_manusia, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3061_manusia, k_701_selang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3062_segera, k_701_selang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3063_ruang_angkasa, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3063_ruang_angkasa, k_701_selang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3064_awan, k_702_awan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3065_untuk_menghitung, k_703_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3066_nomor, k_703_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3067_angka, k_703_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3067_angka, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3068_matematika, k_703_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3068_matematika, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3069_jumlah_orang, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3069_jumlah_orang, k_703_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3070_poin, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3070_poin, k_703_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3071_seru, k_704_kenyamanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3072_musik, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3072_musik, k_704_kenyamanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3073_kenyamanan, k_704_kenyamanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3074_untuk_berbicara, k_705_bicara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3075_telepon, k_706_listrik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3075_telepon, k_705_bicara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3076_percakapan, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3076_percakapan, k_705_bicara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3077_kereta, k_706_listrik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3077_kereta, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3078_listrik, k_706_listrik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3078_listrik, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3079_baterai, k_706_listrik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3079_baterai, k_573_kolam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3080_elektron, k_706_listrik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3080_elektron, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3081_tenaga_listrik, k_706_listrik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3081_tenaga_listrik, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3405_mengikat, id FROM items WHERE type = 'kanji' AND (slug = '507' OR id = '507') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3405_mengikat, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3423_tokyo, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3423_tokyo, k_620_modal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3428_di_sana, id FROM items WHERE type = 'kanji' AND (slug = '611' OR id = '611') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3431_seluruh_amerika, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3431_seluruh_amerika, id FROM items WHERE type = 'kanji' AND (slug = '574' OR id = '574') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3433_sebuah_memori, id FROM items WHERE type = 'kanji' AND (slug = '637' OR id = '637') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3433_sebuah_memori, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3434_untuk_mendekat, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3435_untuk_diingat, id FROM items WHERE type = 'kanji' AND (slug = '637' OR id = '637') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3435_untuk_diingat, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3443_pengganti, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3454_sama_sekali, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3455_panjang, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3457_suatu_hari_nanti, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3459_melihat, id FROM items WHERE type = 'kanji' AND (slug = '631' OR id = '631') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3460_nama, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3460_nama, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3461_akan_selesai, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3461_akan_selesai, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3461_akan_selesai, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3462_untuk_membungkuk, id FROM items WHERE type = 'kanji' AND (slug = '614' OR id = '614') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3463_untuk_dicampur, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3464_untuk_berlari, id FROM items WHERE type = 'kanji' AND (slug = '595' OR id = '595') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3464_untuk_berlari, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3465_menebak, id FROM items WHERE type = 'kanji' AND (slug = '571' OR id = '571') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3467_untuk_mengubah_bentuk, id FROM items WHERE type = 'kanji' AND (slug = '607' OR id = '607') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3468_untuk_mengubah_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3864_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '923' OR id = '923') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3864_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3864_sendiri, k_689_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3918_perguruan_tinggi_swasta, id FROM items WHERE type = 'kanji' AND (slug = '923' OR id = '923') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3918_perguruan_tinggi_swasta, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3918_perguruan_tinggi_swasta, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3918_perguruan_tinggi_swasta, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4848_terakhir_kali, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4848_terakhir_kali, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5503_tubuh, k_689_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7459_di_atas_tanah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7459_di_atas_tanah, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7530_untuk_mengubah_sesuatu_menuju, id FROM items WHERE type = 'kanji' AND (slug = '611' OR id = '611') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7531_anda, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7569_laut_tengah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7569_laut_tengah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7569_laut_tengah, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7570_setiap_pagi, id FROM items WHERE type = 'kanji' AND (slug = '572' OR id = '572') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7570_setiap_pagi, k_695_pagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7623_alami, id FROM items WHERE type = 'kanji' AND (slug = '571' OR id = '571') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7623_alami, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7624_persediaan_air, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7624_persediaan_air, k_700_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7681_untuk_menghidupkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7737_tugas, k_685_melayani);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7737_tugas, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7738_bahan, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7738_bahan, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8664_program, k_696_nomor_dalam_seri_a);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8664_program, id FROM items WHERE type = 'kanji' AND (slug = '670' OR id = '670') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8699_subjek, id FROM items WHERE type = 'kanji' AND (slug = '642' OR id = '642') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8699_subjek, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8739_beberapa_tahun, k_703_menghitung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8739_beberapa_tahun, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8740_emoji, k_698_gambar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8740_emoji, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8740_emoji, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8814_kendi, k_686_melemparkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8814_kendi, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9349_pertikaian, k_683_melawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9349_pertikaian, k_687_memutuskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9352_afrika_selatan, id FROM items WHERE type = 'kanji' AND (slug = '634' OR id = '634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9355_angin_utara, id FROM items WHERE type = 'kanji' AND (slug = '517' OR id = '517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9355_angin_utara, id FROM items WHERE type = 'kanji' AND (slug = '853' OR id = '853') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9372_fajar, id FROM items WHERE type = 'kanji' AND (slug = '622' OR id = '622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9372_fajar, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;

END $$;
