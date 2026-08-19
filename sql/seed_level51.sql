-- ====================================================
-- KaniGani — Seed Data Level 51 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ KANJI IDs (Level 51) ============
  k_466_lagi UUID; k_2120_kebesaran UUID; k_2121_puncak UUID; k_2122_panggilan UUID; k_2123_taruh_di_antara UUID; k_2124_melayu UUID; k_2125_mendidihkan UUID; k_2126_mencuci UUID; k_2127_mengering UUID; k_2128_botol UUID; k_2129_membajak UUID; k_2130_perjanjian UUID; k_2131_gemuk UUID; k_2132_kulit UUID; k_2134_lembut UUID; k_2135_pinggiran_kota UUID; k_2136_sudut UUID; k_2137_konter_kapal UUID; k_2138_tempat_tinggal UUID; k_2139_daerah UUID; k_2140_penjelasan UUID; k_2141_gemuk UUID; k_2142_berteriak UUID; k_2143_putri UUID; k_2144_kesucian UUID; k_2146_bibit UUID; k_2147_pusaran_air UUID; k_2148_belas_kasihan UUID; k_2149_kerah UUID; k_2150_teratai UUID; k_2151_jernih UUID; k_2152_bijak UUID; k_2153_teluk UUID; k_2154_gundukan UUID;
  -- ============ VOCABULARY IDs (Level 51) ============
  v_2516_lagi UUID; v_3363_kerabat_darah UUID; v_3967_penyebab_internal UUID; v_4030_resep UUID; v_4256_sisa UUID; v_4667_hukum UUID; v_4913_terlibat_dalam_pekerjaan UUID; v_5286_permohonan UUID; v_7157_ancaman UUID; v_7494_berirama UUID; v_7783_orang_hebat UUID; v_7784_kebesaran UUID; v_7785_besar UUID; v_7786_perhitungan UUID; v_7787_untuk_menelepon UUID; v_7788_membangkitkan UUID; v_7789_berteriak UUID; v_7790_memanggil UUID; v_7791_gundukan UUID; v_7792_prefektur_ehime UUID; v_7793_kasih_sayang UUID; v_7794_kasih_sayang UUID; v_7795_amal UUID; v_7796_untuk_menempatkan_antara UUID; v_7797_mengering UUID; v_7798_menjadi_layu UUID; v_7799_untuk_merebus UUID; v_7800_titik_didih UUID; v_7801_teluk UUID; v_7802_untuk_merendam UUID; v_7803_pusaran_air UUID; v_7804_pusaran UUID; v_7805_kelembaban UUID; v_7806_mesin_cuci UUID; v_7807_deterjen UUID; v_7808_pembersih_kering UUID; v_7809_kekeringan UUID; v_7810_ketidaksabaran UUID; v_7813_botol UUID; v_7814_vas UUID; v_7815_botol_kosong UUID; v_7816_koktail_molotov UUID; v_7817_pembotolan UUID; v_7818_untuk_sampai UUID; v_7819_tanah_subur UUID; v_7820_penanaman UUID; v_7821_pertanian UUID; v_7822_cerdas UUID; v_7823_bijak UUID; v_7824_afirmasi UUID; v_7825_gemuk UUID; v_7826_damar UUID; v_7827_kulit UUID; v_7828_bibit UUID; v_7829_nama_belakang UUID; v_7830_teratai UUID; v_7831_bunga_teratai UUID; v_7832_untuk_menutupi UUID; v_7833_kesucian UUID; v_7834_kesucian UUID; v_7835_tidak_setia UUID; v_7838_fleksibel UUID; v_7839_tahanan_rumah UUID; v_7840_tempat_tinggal_pribadi UUID; v_7841_rumah_dinas UUID; v_7842_rumah_dinas UUID; v_7843_rumah_besar UUID; v_7844_alasan UUID; v_7845_pinggiran_kota UUID; v_7846_pinggiran_kota UUID; v_7847_daerah UUID; v_7848_penjelasan UUID; v_7849_catatan UUID; v_7850_mengangguk UUID; v_7851_penjelasan UUID; v_7852_sudut UUID; v_7853_sudut UUID; v_7854_empat_sudut UUID; v_7855_sudut UUID; v_7856_konter_kapal UUID; v_7857_menerima_dengan_rendah_hati UUID; v_7858_puncak UUID; v_7859_kerah UUID; v_8813_untuk_mencuci UUID; v_8891_keburu UUID; v_8893_depresi_hebat UUID; v_9001_untuk_memanggang UUID; v_9100_ryohei UUID; v_9299_keran UUID;

BEGIN

  DELETE FROM items WHERE level = 51;

  -- 1. RADICALS

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '又', 'lagi', 51, 1, 'Anda sedang duduk di <radical>bangku</radical> <kanji>lagi</kanji>!!?', 'Teman-temanmu mulai mengkhawatirkanmu, karena kamu selalu duduk di bangku itu. "Ada apa <membaca></membaca> (また) denganmu?" mereka berteriak! Anda mungkin ingin membayangkan bahwa semua teman Anda memiliki aksen Jamaika atau Inggris agar aksen ini lebih cocok!')
    RETURNING id INTO k_466_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '偉', 'kebesaran', 51, 2, '<radikal>pemimpin</radikal> <radikal>Korea</radikal> ditakdirkan untuk <kanji>kebesaran</kanji>.', '<kanji>kehebatan</kanji> terpancar dari pemimpin Korea, sedemikian rupa sehingga Anda hampir tidak dapat melihatnya. Tepat ketika Anda hendak menutup mata untuk melindungi mereka dari keagungan, sebuah <read>ea</reading>gle (い) besar membumbung di atas mereka, mengeluarkan tangisan.')
    RETURNING id INTO k_2120_kebesaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '頂', 'puncak', 51, 3, 'Ambil <radical>jalan</radical> sampai ke <radical>geoduck</radical> itu, jauh di atas sana. Ketika Anda mencapainya, Anda telah berhasil mencapai <kanji>puncak</kanji>. Anda <kanji>dengan rendah hati</kanji> menunjukkan jalan menuju geoduck dan membungkuk di depannya.', 'Anda berada di puncak, <kanji>puncak</kanji> dari segalanya! Anda <kanji>dengan rendah hati</kanji> mengamati sekeliling Anda dari atas geoduck, hanya untuk melihat seseorang di jalan, berlari ke arah Anda. Itu adalah Ny. <reading>Chou</reading> (ちょう), dan dia terlihat marah.')
    RETURNING id INTO k_2121_puncak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '召', 'panggilan', 51, 4, 'Radikal <radikal>panggilan</radikal> dan kanji <kanji>panggilan</kanji> adalah sama. Kanji ini juga bisa berarti <kanji>makan</kanji>, karena untuk apa kamu menelepon seseorang jika tidak mengajaknya makan bersamamu?!', 'Anda <kanji>dipanggil</kanji>untuk datang <kanji>makan</kanji> dengan <reading>Shou</reading>gun (しょう). Dia sangat terkesan denganmu akhir-akhir ini dan dia ingin ngobrol sambil minum, katanya di telepon.')
    RETURNING id INTO k_2122_panggilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '挟', 'taruh-di-antara', 51, 5, 'Anda menjalankan <radical>jari</radical> Anda melalui <radical>tanduk</radical> suami Anda. Tanduknya adalah sesuatu yang Anda suka <kanji>taruh di antara</kanji> jari Anda.', 'Mengapa tanduk suami Anda selalu <kanji>diletakkan di antara</kanji> jari Anda? Karena dia adalah seorang <reading>ho</reading>t <reading>ser</reading>geant (はさ)!')
    RETURNING id INTO k_2123_taruh_di_antara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '枯', 'melayu', 51, 6, 'Ketika <radical>pohon</radical> menjadi <radical>tua</radical>, ia akan <kanji>layu</kanji>.', 'Sahabat terbaik pohon <kanji>layu</kanji> ini adalah <reading>子</reading> manusia (こ). Bayangkan seorang anak sedang memeluk pohon.')
    RETURNING id INTO k_2124_melayu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '沸', 'mendidihkan', 51, 7, 'Jika <radical>tsunami</radical> mencapai <radical>dolar</radical> air akan langsung mulai <kanji>mendidih</kanji>!', 'Air <kanji>mendidih</kanji> jatuh ke tanah dan Anda menyadari bahwa kaki Anda ada di dalamnya! Tidak, bukan satu kaki, kedua <reading>kaki</reading> Anda (ふつ)! Sangat menyakitkan sehingga Anda bahkan tidak dapat mengingat kata untuk dua kaki.')
    RETURNING id INTO k_2125_mendidihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '濯', 'mencuci', 51, 8, '<radikal>tsunami</radikal> akan datang, jadi Anda meminta dua <radikal>Wolverine</radikal> untuk membantu Anda membawa <radikal>kalkun</radikal> Anda keluar untuk <kanji>mencuci</kanji>. Meskipun terdapat bahaya yang jelas, gelombang raksasa adalah satu-satunya hal yang akan menghanyutkan kalkun raksasa, jadi Anda tidak punya pilihan.', 'Untuk memastikan kalkun Anda tidak terbawa tsunami saat Anda <kanji>mencuci</kanji>, tempelkan dengan <reading>paku</reading> (たく) raksasa. Jika Anda mencuci kalkun raksasa di dalam ombak raksasa, hanya paku payung raksasa yang dapat menjamin kalkun tersebut tidak hanyut.')
    RETURNING id INTO k_2126_mencuci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '燥', 'mengering', 51, 9, 'Ada <radical>api</radikal> di sebelahnya Anda meninggalkan <radikal>sirup</radikal>, dan semuanya <kanji>mengering</kanji>! Taruh cairan apa pun di dekat api dan itu akan benar-benar kering, terutama sirup. Mulai dari yang lengket, lengket, dan enak hingga menjadi tumpukan gula yang keras dan kering. Tidak terlalu enak.', 'Jika Anda <kanji>mengeringkan</kanji> sirup seperti ini, Anda menghilangkan <reading>sou</reading>l (そう)-nya. Pernahkah Anda melihat sirup kering sebelumnya? Tidak ada jiwa di dalamnya. Faktanya, Anda mungkin tidak punya jiwa jika bisa mengeringkan sirup seperti ini tanpa merasa bersalah.')
    RETURNING id INTO k_2127_mengering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '瓶', 'botol', 51, 10, 'Anda melihat <radical>tanduk</radical> pada <radical>lentera</radical> yang dapat menampung <radical>sepuluh ribu</radical> <radical>tetesan</radical> air yang berada di <radical>tanah</radical>. Anda mendekat dan menyadari bahwa itu bukanlah sebuah lentera, melainkan sebuah <kanji>botol</kanji>. Tanduknya seperti pegangan yang aneh, tapi yang pasti itu adalah botol berisi air.', 'Meskipun bukan Anda yang meninggalkan <kanji>botol</kanji> ini di sini, Anda memutuskan untuk melakukan hal yang benar dan membuangnya ke <read>bin</reading> sampah (びん). Tidak benar membiarkan botol tergeletak begitu saja di tanah, lho.')
    RETURNING id INTO k_2128_botol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '耕', 'membajak', 51, 11, 'Anda memiliki <radikal>bajak</radikal> dan <radikal>sumur</radikal> (air). Ini adalah dua hal yang Anda perlukan untuk <kanji>membajak</kanji>.', '<kanji>Membajak</kanji>semua ladang adalah <read>こう</reading>いちs. Bukan Kaisar こういち. Ini adalah klon こういち yang dibuat pemerintah, dan sekarang mulai digunakan.')
    RETURNING id INTO k_2129_membajak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肯', 'perjanjian', 51, 12, 'Kita harus <radical>menghentikan</radical> <radical>bulan</radical>. Setidaknya, kita bisa mencapai <kanji>kesepakatan</kanji>.', '"Kami memiliki <kanji>kesepakatan</kanji>," kata semua pemimpin dunia. "Kami akan bekerja sama untuk menghentikan bulan, dan kami memiliki <kanji>kesepakatan</kanji> tentang siapa yang akan kami ikuti, Kaisar <reading>こう</reading>いち.')
    RETURNING id INTO k_2130_perjanjian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '脂', 'gemuk', 51, 13, 'Anda memakan <radical>bulan</radical> dengan <radical>sendok</radical>, dan kemudian <radical>matahari</radical> juga, tapi ternyata <kanji>lemak</kanji>nya tinggi! Sebenarnya, Anda ingin memakannya dengan sumpit, tetapi makanan tersebut sangat berminyak sehingga sendok adalah satu-satunya pilihan Anda.', 'Tanpa Anda sadari, bulan dan matahari mengandung <kanji>lemak</kanji> sebanyak <reading>shee</reading>p (し) dewasa! Mengapa Anda tidak memeriksa fakta nutrisinya terlebih dahulu???')
    RETURNING id INTO k_2131_gemuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '膚', 'kulit', 51, 14, 'Jika Anda melihat <radical>perut</radikal> <radical>harimau</radical> Anda akan menemukan sekumpulan <kanji>kulit</kanji>. Ini benar-benar menjijikkan, tetapi menurut Anda apa lagi yang akan Anda temukan? Semua orang tahu harimau tidak bisa mencerna kulit makanan yang mereka makan.', 'Satu-satunya orang yang mencoba mengambil <kanji>kulit</kanji> dari perut harimau adalah <reading>foo</reading>l (ふ). Kepala Anda mungkin akan tergigit saat mencari kulit seperti itu.')
    RETURNING id INTO k_2132_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '軟', 'lembut', 51, 15, 'Sebuah <radikal>mobil</radikal> yang <radikal>kekurangan</radikal> benar-benar <kanji>lembut</kanji>. Mobil harus keras agar serangga dan mobil lain tidak melukai orang di dalamnya saat Anda menabraknya. Namun jika mobil Anda kurang memiliki kekerasan yang dibutuhkan, Anda akan mendapatkan mobil yang sangat lunak dan tidak berguna.', 'Mobil ini mungkin sangat <kanji>lembut</kanji> karena seluruhnya terbuat dari <reading>naan</reading> (なん). Naan mungkin enak, tapi ternyata mobilnya jelek sekali. Tidak heran rasanya begitu lembut (dan enak).')
    RETURNING id INTO k_2134_lembut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '郊', 'pinggiran-kota', 51, 16, 'Jika Anda <radical>menggabungkan</radical> sekumpulan <radical>bangunan</radical> menjadi satu, Anda akan mendapatkan <kanji>pinggiran kota</kanji>.', '"<kanji>Pinggiran kota</kanji> adalah apa yang kita butuhkan!" kata Kaisar <membaca>こう</membaca>いち.')
    RETURNING id INTO k_2135_pinggiran_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隅', 'sudut', 51, 17, 'Jadi <radical>gedung</radical> saya mempunyai <radical>serpihan</radical> yang besar, tepat di <kanji>sudut</kanji>. Jadi apa?', '<kanji>Sudut</kanji> itu berbahaya, tapi apa yang akan kamu lakukan, <reading>menuntutku</reading> (すみ)?')
    RETURNING id INTO k_2136_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隻', 'konter-kapal', 51, 18, '<radikal>kalkun</radikal> yang duduk di <radikal>bangku</radikal> adalah sesuatu yang dimiliki setiap kapal di sarangnya. Itu sebabnya <kanji>penghitung kapal</kanji> universal adalah kalkun di atas bangku. Bukan burung gagak.', 'Setelah Anda menjadi <kanji>penghitung kapal</kanji> terbaik di dunia, semua orang akan menganggap Anda super <reading>seksi</reading> (せき)! Tidak ada yang lebih seksi daripada kemampuan berhitung, dan menghitung kapal adalah hal terseksi yang dapat Anda hitung.')
    RETURNING id INTO k_2137_konter_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '邸', 'tempat-tinggal', 51, 19, '<radical>Klan</radical> Anda sedang melakukan terobosan <radical>tanah</radical> dan <radical>membangun</radical> <kanji>tempat tinggal</kanji> baru Anda. Anda semua bekerja sama untuk menjadikan Anda rumah baru!', '<kanji>tempat tinggal</kanji> baru Anda telah selesai! Anda melangkah lebih dekat dan aroma <reading>ta</reading>ter (てい) tots menusuk hidung Anda. Seseorang membuatmu tater tots di tempat tinggal barumu. Tunggu, tidak. Tempat tinggal Anda TERBUAT dari tater tots! Terima kasih, klan!')
    RETURNING id INTO k_2138_tempat_tinggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '郡', 'daerah', 51, 20, '<radical>buddy</radical> <radical>gedung</radical> berada di <kanji>kabupaten</kanji> berikutnya. Jika itu terjadi di daerah Anda, maka itu bukan teman, melainkan tetangga. Anda mengetahui gedung ini, tetapi jaraknya tidak terlalu dekat, jadi mereka hanya seorang teman.', '<kanji>daerah</kanji> Anda adalah segalanya yang dapat Anda jangkau saat menembakkan <reading>senjata</reading> (ぐん). Kalau pelurunya tidak bisa mencapai gedung lho, itu gedung teman di daerah lain.')
    RETURNING id INTO k_2139_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '釈', 'penjelasan', 51, 21, 'Jika Anda menggunakan <radical>sabit</radical> untuk membunuh <radical>udang</radical> Anda memerlukan <kanji>penjelasan</kanji> yang sangat bagus untuk Anda sendiri. Apa yang udang itu lakukan padamu? Mengapa menggunakan sabit? Dengan baik? Apa penjelasanmu?', 'Dalam <kanji>penjelasan</kanji> Anda menyalahkan semuanya pada <reading>Shaq</reading> (しゃく). Dia menyuruhmu melakukannya! Itu semua salah Shaq, jelasmu.')
    RETURNING id INTO k_2140_penjelasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肪', 'gemuk', 51, 22, 'Ketika <radical>bulan</radical> menghadap ke <radical>arah</radical> yang tepat, <kanji>lemak</kanji> di tubuh manusia dan hewan semuanya tertarik ke permukaan dan kita semua terlihat sangat berminyak untuk beberapa saat. Anda mungkin tahu bahwa bulan menarik air, tapi saya yakin Anda tidak tahu bahwa bulan juga menarik lemak!', 'Selama tubuhmu dipenuhi <kanji>lemak</kanji>, sebaiknya kamu <reading>membungkuk</reading>ling (ぼう). Bayangkan betapa mulusnya bola bowling itu menggelinding setelah Anda mengolesnya dengan lemak ini!')
    RETURNING id INTO k_2141_gemuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '喚', 'berteriak', 51, 23, 'Apa yang akan dilakukan <radical>mulut</radical> Anda jika Anda terjebak dalam <radical>penjara</radical> karena <radical>kaki</radical>? Ini mungkin akan menjadi sangat <radikal>besar</radikal> — dengan kata lain, ia akan <kanji>menjerit</kanji>.', 'Anda <kanji>menjerit</kanji> dan menjerit dan menjerit sampai sebuah pintu terbuka. Itu Jenghis <reading>Khan</reading> (かん) dan dia terlihat gila. Rupanya teriakanmu mengganggunya dan sekarang dia akan memberimu alasan sebenarnya untuk berteriak.')
    RETURNING id INTO k_2142_berteriak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '媛', 'putri', 51, 24, 'Semua orang tahu bahwa ketika seorang <radikal>wanita</radikal> bermain <radikal>sepak bola</radikal> dia menjadi <kanji>putri</kanji>. Begitulah cara putri dibuat.', 'Ingat kata 姫? Artinya <kanji>putri</kanji> juga. Jika Anda mengingat ひめ dari 姫, Anda juga akan dapat mengingat yang ini.')
    RETURNING id INTO k_2143_putri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貞', 'kesucian', 51, 25, 'Anda mencoba memasukkan <radical>jari kaki</radikal> Anda ke dalam <radikal>kerang</radikal>, namun cangkangnya tidak bisa dibuka. Itu karena kerang ini telah bersumpah <kanji>kesucian</kanji>.', '"<kanji>Kesucian</kanji> sangat penting bagi saya," kata kerang. "Tapi, mungkin jika kamu memberiku <reading>ta</reading>ter (てい) tot, aku akan berubah pikiran."')
    RETURNING id INTO k_2144_kesucian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '苗', 'bibit', 51, 26, '<radical>Bunga</radical> yang tumbuh di <radical>sawah</radical> hanya hidup sebagai <kanji>bibit</kanji>. Begitu bertunas, mereka dipetik untuk memberi ruang bagi lebih banyak beras. Bibit kecil yang malang.', '<kanji>bibit</kanji> mencoba yang terbaik untuk berbaur dengan menyebut diri mereka sebagai <reading>myou</reading> (みょう), Anda tahu, saya dan Anda digabungkan. Itu kamu.')
    RETURNING id INTO k_2146_bibit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '渦', 'pusaran-air', 51, 27, 'Jika Anda meletakkan dua <radical>kumis</radical> di kedua sisi <radical>tsunami</radical> ia tidak akan tahu ke mana harus pergi dan berputar maju mundur hingga menjadi <kanji>pusaran air</kanji>. Kumisnya cukup kotor, jadi saya tidak menyalahkan tsunami karena menghindarinya.', '<kanji>pusaran air</kanji> sangat besar, dan mulai menarik segala sesuatu ke dalam dirinya sendiri. Oh tidak, apakah itu <reading>ca</reading>r (か) saya? Hei, tunggu! Whirlpool kembalikan mobilku!')
    RETURNING id INTO k_2147_pusaran_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慈', 'belas-kasihan', 51, 28, 'Seseorang dengan <radical>tanduk</radical> membuat Anda berada di <radical>tanah</radical> dan melepaskan dua <radical>kotoran</radical> di <radical>jantung</radical> Anda. "<kanji>Kasihan</kanji>! Kasihan!" Kamu menangis, tapi pria bertanduk itu tidak berhenti sampai ada dua kotoran kotor di hatimu. "M-kasihan..." adalah satu-satunya hal yang terpikir untuk Anda ucapkan.', 'Saat Anda berteriak "<kanji>Mercy</kanji>!" sekali lagi, tiba-tiba <reading>Je</reading>sus (じ) muncul entah dari mana dan meninju pria bertanduk itu ke stratosfer. Yesus menjentikkan jarinya dan kotorannya hilang dan Anda pun terjatuh. Hatimu aman.')
    RETURNING id INTO k_2148_belas_kasihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '襟', 'kerah', 51, 29, '<radical>pakaian</radical> apa yang Anda kenakan saat menebang <radical>pohon</radical> dengan <radical>jackhammer</radical>? Sebuah <kanji>kerah</kanji>. Yup, cuma kerah… ditambah beberapa manset kemeja dan celana panjang tentunya. Anda tahu, tampilan klasik Chippendales.', '<kanji>kerah</kanji> Anda memiliki tulisan "<reading>Eri</reading>c" (えり) dalam huruf kursif, karena ini adalah nama panggung yang Anda gunakan saat melakukan aksi penebang pohon. Eric bukan nama asli Anda, tentu saja - Anda hanya berpikir itu terdengar keren dan terlihat bagus di kerah.')
    RETURNING id INTO k_2149_kerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蓮', 'teratai', 51, 30, 'Anda menaruh <radical>bunga</radical> di <radical>mobil</radical> dan <radical>skuter</radical> Anda. Bunga yang Anda letakkan di atasnya adalah bunga <kanji>lotus</kanji>.', 'Anda memasang <kanji>teratai</kanji> pada skuter dan mobil Anda karena keduanya adalah <read>ren</reading>tals (れん).')
    RETURNING id INTO k_2150_teratai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '亮', 'jernih', 51, 31, 'Ada jenis meditasi khusus yang mana Anda memasang <radical>tutup</radikal> pada <radikal>mulut</radikal> Anda dan menyentuhkan <radikal>dahi</radikal> hingga ke <radikal>kaki</radikal> Anda. Jika Anda bisa melakukan pose ini, segala sesuatu dalam hidup akan menjadi <kanji>jelas</kanji> sepenuhnya. Semuanya akan hilang dari pikiran Anda juga. Anda harus mencobanya.', 'Pikiran Anda <kanji>sejernih</kanji> seperti kolam jernih yang berkilauan. Di kolam ini Anda melihat diri Anda berada di perahu <reading>row</reading> (りょう). Satu baris perahu di atas kolam jernih itulah yang kini menjadi pikiran Anda.')
    RETURNING id INTO k_2151_jernih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '聡', 'bijak', 51, 32, 'Jika Anda memiliki <radical>telinga</radikal> untuk <radikal>hati</radikal> publik</radikal>, Anda harus sangat <kanji>bijaksana</kanji>. Anda dapat memahami semua yang diinginkan orang, dan Anda tahu bagaimana memberikannya kepada mereka karena Anda mendengarkan hati mereka dengan baik.', 'Semua hal <kanji>bijaksana</kanji> ini disimpan dalam <reading>sou</reading>l (そう) Anda, bukan otak Anda. Di situlah semua perasaan intuitif ini hidup.')
    RETURNING id INTO k_2152_bijak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '浦', 'teluk', 51, 33, 'Jika Anda ingin mengadakan <radical>tsunami</radical> di <radical>pernikahan</radical> Anda, Anda perlu memastikan Anda mengadakannya di <kanji>teluk</kanji>. Ke mana saja yang lebih ke daratan, dan tsunami tidak akan mencapainya tepat pada waktunya.', 'Bagaimana Anda bisa menyebabkan tsunami muncul di <kanji>teluk</kanji>? Tentu saja dengan melemparkan sekumpulan <read>ura</reading>nium (うら) ke sana! Sifatnya yang sangat tidak stabil dapat menyebabkan perairan mana pun, terutama teluk yang tenang, berubah menjadi ganas.')
    RETURNING id INTO k_2153_teluk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '塚', 'gundukan', 51, 34, '<radical>kotoran</radikal> di <radikal>dahi</radikal> <radikal>babi</radikal> membuat <kanji>gundukan</kanji> kecil. Bayangkan saja, jika Anda mau. Seekor babi sedang menggali tanah. Ia mengangkat kepalanya dan ada gundukan tanah tepat di keningnya.', '<kanji>gundukan</kanji> tanah di dahi babi itu semakin besar hingga seukuran <reading>dua mobil</reading> (つか)! Babi itu besar, tapi Anda tidak menyangka seseorang bisa menyeimbangkan gundukan seukuran dua mobil di keningnya dan tidak terjatuh.')
    RETURNING id INTO k_2154_gundukan;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_466_lagi, 'Lagi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_466_lagi, 'また', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2120_kebesaran, 'Kebesaran', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2120_kebesaran, 'い', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2120_kebesaran, 'えら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2121_puncak, 'Puncak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2121_puncak, 'Dengan rendah hati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2121_puncak, 'ちょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2121_puncak, 'いただき', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2121_puncak, 'いただ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2122_panggilan, 'Panggilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2122_panggilan, 'Makan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2122_panggilan, 'しょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2122_panggilan, 'め', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2123_taruh_di_antara, 'Taruh di Antara', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2123_taruh_di_antara, 'はさ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2123_taruh_di_antara, 'きょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2123_taruh_di_antara, 'しょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2124_melayu, 'Melayu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2124_melayu, 'こ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2124_melayu, 'か', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2125_mendidihkan, 'Mendidihkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2125_mendidihkan, 'ふつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2125_mendidihkan, 'わ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2126_mencuci, 'Mencuci', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2126_mencuci, 'たく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2126_mencuci, 'すす', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2126_mencuci, 'ゆす', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2126_mencuci, 'そそぐ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2127_mengering, 'Mengering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2127_mengering, 'Memanggang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2127_mengering, 'そう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2127_mengering, 'はしゃ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2128_botol, 'Botol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2128_botol, 'Stoples', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2128_botol, 'びん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2128_botol, 'かめ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2129_membajak, 'Membajak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2129_membajak, 'こう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2129_membajak, 'たがや', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2130_perjanjian, 'Perjanjian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2130_perjanjian, 'Izin', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2130_perjanjian, 'こう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2130_perjanjian, 'がえんじ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2131_gemuk, 'Gemuk', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2131_gemuk, 'し', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2131_gemuk, 'あぶら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2132_kulit, 'Kulit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2132_kulit, 'ふ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2132_kulit, 'はだ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2134_lembut, 'Lembut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2134_lembut, 'なん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2134_lembut, 'やわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2135_pinggiran_kota, 'Pinggiran kota', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2135_pinggiran_kota, 'こう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2136_sudut, 'Sudut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2136_sudut, 'すみ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2136_sudut, 'ぐう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2137_konter_kapal, 'Konter Kapal', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2137_konter_kapal, 'せき', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2138_tempat_tinggal, 'Tempat tinggal', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2138_tempat_tinggal, 'てい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2138_tempat_tinggal, 'やしき', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2139_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2139_daerah, 'Daerah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2139_daerah, 'ぐん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2139_daerah, 'こおり', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2140_penjelasan, 'Penjelasan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2140_penjelasan, 'しゃく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2140_penjelasan, 'せき', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2140_penjelasan, 'す', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2140_penjelasan, 'とく', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2140_penjelasan, 'ゆる', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2141_gemuk, 'Gemuk', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2141_gemuk, 'ぼう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2142_berteriak, 'Berteriak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2142_berteriak, 'Berteriak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2142_berteriak, 'かん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2142_berteriak, 'わめ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2143_putri, 'Putri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2143_putri, 'Wanita Cantik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2143_putri, 'ひめ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2143_putri, 'えん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2144_kesucian, 'Kesucian', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2144_kesucian, 'てい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2144_kesucian, 'さだ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2146_bibit, 'Bibit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2146_bibit, 'Pohon muda', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2146_bibit, 'みょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2146_bibit, 'びょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2146_bibit, 'なえ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2146_bibit, 'なわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2147_pusaran_air, 'Pusaran air', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2147_pusaran_air, 'か', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2147_pusaran_air, 'うず', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2148_belas_kasihan, 'Belas kasihan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2148_belas_kasihan, 'じ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2148_belas_kasihan, 'いつく', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2149_kerah, 'Kerah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2149_kerah, 'えり', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2149_kerah, 'きん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2150_teratai, 'Teratai', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2150_teratai, 'れん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2150_teratai, 'はす', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2150_teratai, 'はちす', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2151_jernih, 'Jernih', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2151_jernih, 'りょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2151_jernih, 'あきらか', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2152_bijak, 'Bijak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2152_bijak, 'そう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2152_bijak, 'さと', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2152_bijak, 'みみざと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2153_teluk, 'Teluk', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2153_teluk, 'うら', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2153_teluk, 'ほ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2154_gundukan, 'Gundukan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2154_gundukan, 'つか', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2154_gundukan, 'ちょう', false, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '又', 'lagi', 51, 35, 'Arti kata ini dan arti kanjinya sama: <vocabulary>Lagi</vocabulary>!

Ini adalah kata yang sangat umum, tetapi hampir selalu ditulis dalam kana dalam situasi biasa. Namun, sering kali ditulis dalam kanji dalam konteks formal, seperti dokumen resmi dan dokumen hukum. Anda juga akan melihatnya di beberapa literatur, khususnya yang ditulis pada masa Miyazawa Kenji dan Natsume Soseki.', 'Pembacaan kanji yang Anda pelajari sama dengan pembacaan kata ini. Mudah-mudahan Anda tidak perlu mempelajarinya... lagi.')
    RETURNING id INTO v_2516_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '血族', 'kerabat-darah', 51, 36, 'Mereka yang berbagi <kanji>darah</kanji> dalam suatu <kanji>suku</kanji> adalah <vocabulary>saudara sedarah</vocabulary>.

Ini adalah istilah formal yang sering digunakan dalam urusan hukum yang berkaitan dengan warisan atau klaim asuransi. Dalam fiksi, istilah ini terkadang diterapkan pada garis keturunan vampir dan keluarga supernatural lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_3363_kerabat_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '内因', 'penyebab-internal', 51, 37, '<kanji>di dalam</kanji> <kanji>penyebab</kanji> adalah <vocabulary>penyebab internal</vocabulary>. Penyebab internal biasanya merupakan penyebab yang paling buruk, jika Anda bertanya kepada saya.

Kata ini banyak digunakan dalam bidang kedokteran dan psikologi. Anda akan sering melihatnya sebagai 内因性, yang merupakan istilah teknis yang digunakan untuk membicarakan faktor-faktor yang berasal dari dalam diri seseorang atau suatu organisme.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_3967_penyebab_internal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '薬方', 'resep', 51, 38, 'Ketika <kanji>obat</kanji> dikirim ke <kanji>arah</kanji> Anda, obat itu akan sampai ke Anda. Itulah <vocabulary> resep</vocabulary> Anda.

Perhatikan bahwa 薬方 tidak umum digunakan dalam bahasa Jepang modern. Anda mungkin menemukannya dalam latar sejarah atau fiksi, yang dapat menambah cita rasa berbeda pada narasinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_4030_resep;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '残余', 'sisa', 51, 39, '<kanji>sisa</kanji> <kanji>surplus</kanji> adalah <vocabulary>sisa</vocabulary> atau <vocabulary>sisa</vocabulary> yang tersisa.

Ingatlah bahwa ini adalah kata teknis yang sering Anda lihat dalam konteks hukum dan keuangan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_4256_sisa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '法規', 'hukum', 51, 40, '<kanji>Hukum</kanji> adalah <kanji>standar</kanji> dalam masyarakat. Anda harus memiliki <vocabulary>undang-undang</vocabulary> dan <vocabulary>peraturan</vocabulary> di masyarakat.

法規 adalah istilah formal yang umum digunakan dalam konteks hukum dan birokrasi. Dalam percakapan sehari-hari, orang lebih cenderung menggunakan istilah yang lebih sederhana, seperti 法律 untuk undang-undang atau 規則 untuk peraturan dan perundang-undangan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_4667_hukum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '従業', 'terlibat-dalam-pekerjaan', 51, 41, 'Anda harus <kanji>mematuhi</kanji> <kanji>bisnis</kanji> Anda. Saat Anda berada dalam situasi ini, Anda sedang <vocabulary>sedang bekerja</vocabulary>.

Ini paling sering digunakan dalam kata majemuk 従業員 (karyawan) dan 従業者 (pekerja). Anda mungkin juga menemukan bentuk lain, seperti 従業する, tetapi bentuk ini umumnya ditemukan dalam tulisan formal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_4913_terlibat_dalam_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '請願', 'permohonan', 51, 42, 'Saya <kanji>meminta</kanji> dan kemudian saya <kanji>meminta</kanji> lagi. Begitu banyak permintaan, tapi tidak ada yang mau mendengarkanku. Harapan terakhir saya adalah mengumpulkan sekelompok orang yang memiliki ide yang sama dan membuat <vocabulary>petisi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_5286_permohonan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脅し', 'ancaman', 51, 43, 'Kanjinya adalah <kanji>ancaman</kanji> dan versi kata bendanya (di sini) adalah <vocabulary>ancaman</vocabulary> atau <vocabulary>ancaman</vocabulary>.

Penasaran perbedaan antara 脅し dan 脅迫? Keduanya melibatkan ancaman atau intimidasi, namun perbedaan utamanya terletak pada tingkat keparahannya. 脅し umumnya dikaitkan dengan bentuk intimidasi dan pemaksaan yang lebih ringan, sedangkan 脅迫 mengandung ancaman yang lebih langsung dan serius yang bahkan dapat melanggar hukum.', 'Pikirkan tentang <vocabulary>ancaman</vocabulary> yang dikirimkan kepada Anda. Bentuknya <reading>odo</reading>r (おど) yang buruk. Yuck, cara yang buruk untuk mengirimkan ancaman.')
    RETURNING id INTO v_7157_ancaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '律動的', 'berirama', 51, 44, 'Iramanya adalah 律動, tetapi dengan menambahkan 的 di sana kita mendapatkan versi kata sifat dari kata tersebut, menjadikannya <vocabulary>ritmis</vocabulary> atau <vocabulary>ritmik</vocabulary>.

Perhatikan bahwa リズミカル dan テンポのいい adalah kata yang lebih umum digunakan untuk "ritmik" dan "ritmik", namun terkadang Anda mungkin melihat 律動的 dalam tulisan formal.', 'Bacaannya sama dengan 律動. Bagian 的 yang seharusnya sudah bisa kamu baca sekarang.')
    RETURNING id INTO v_7494_berirama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偉人', 'orang-hebat', 51, 45, '<kanji>orang</kanji> yang memiliki banyak <kanji>kehebatan</kanji> adalah <vocabulary>orang hebat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7783_orang_hebat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偉大', 'kebesaran', 51, 46, '<kanji>Besar</kanji> <kanji>kehebatan</kanji> tetaplah <vocabulary>kehebatan</vocabulary>, hanya sebagian saja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7784_kebesaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偉い', 'besar', 51, 47, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>kebesaran</kanji>? <vocabulary>Hebat</vocabulary>!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Satu-satunya hal yang tidak dilakukan oleh orang <vocabulary>hebat</vocabulary> adalah membuat <reading>error</reading>s (えら). Itulah yang membuat mereka begitu hebat. Mereka selalu dapat merasakan ketika kesalahan akan terjadi dan mereka memperbaikinya bahkan sebelum kesalahan itu terjadi!')
    RETURNING id INTO v_7785_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '勘定', 'perhitungan', 51, 48, 'Saat kamu menggunakan <kanji>intuisi</kanji> untuk <kanji>menentukan</kanji> jumlah sesuatu, pada akhirnya kamu akan melakukan <vocabulary>perhitungan</vocabulary> di kepalamu. Anda juga melakukan hal yang sama ketika tiba waktunya membayar <vocabulary>tagihan</vocabulary> saat makan malam: tentukan saja jumlahnya di kepala Anda, ikuti intuisi Anda, dan semuanya akan baik-baik saja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Namun, 定 menggunakan bacaan yang belum Anda pelajari, jadi inilah mnemonik yang dapat membantu Anda:

Jika kamu kesulitan dengan <vocabulary>perhitungan</vocabulary> <vocabulary>tagihan</vocabulary> kamu, panggil saja <reading>Joe</reading> (じょう)! Dia sangat pandai dalam hal angka, jadi kapan pun Anda tersesat di meja restoran, telepon saja dia sebentar.')
    RETURNING id INTO v_7786_perhitungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '召す', 'untuk-menelepon', 51, 49, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memanggil</kanji>, jadi versi kata kerjanya adalah <vocabulary>to call</vocabulary>, seperti memanggil seseorang.

召す ​​adalah kata kerja kehormatan, jadi digunakan untuk berbicara tentang tindakan petinggi sosial. 召す ​​menyiratkan gambaran atasan yang memanggil seseorang atau sesuatu kepada dirinya sendiri, oleh karena itu arti utamanya adalah memanggil. Namun ini juga bisa menjadi cara yang sopan untuk mengatakan <vocabulary>to take</vocabulary>, seperti saat mereka makan atau minum, dan <vocabulary>to wear</vocabulary> saat membicarakan tentang pakaian mereka.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Jika seorang bangsawan memutuskan <vocabulary>untuk memanggil</vocabulary> Anda, jangan lihat mereka di <reading>目</reading> (め). Itu sangat kasar! Untuk menunjukkan rasa hormat ketika Anda dipanggil, jauhkan 目 Anda.')
    RETURNING id INTO v_7787_untuk_menelepon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '喚起', 'membangkitkan', 51, 50, 'Jika kamu <kanji>berteriak</kanji> <kanji>bangun</kanji>! pada seseorang, Anda yakin mereka akan <vocabulary>terbangun</vocabulary>. Meneriakkan apa pun pada orang yang sedang tidur mungkin akan <vocabulary>membangunkan</vocabulary> mereka. Namun, mereka mungkin akan marah padamu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7788_membangkitkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '喚く', 'berteriak', 51, 51, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berteriak</kanji>, jadi versi kata kerjanya adalah <vocabulary>menjerit</vocabulary> atau <vocabulary>berteriak</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika Anda ingin <vocabulary>berteriak</vocabulary> pada seseorang, Anda harus memilih kata yang benar-benar menyentuh hati mereka. Berikan <read>pukulan</read> (わめ) yang besar kepada mereka! Hei, kata itu berhasil. Teriakkan WHAMMY!')
    RETURNING id INTO v_7789_berteriak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '召喚', 'memanggil', 51, 52, 'Jika kamu mencoba <kanji>memanggil</kanji> seseorang dengan <kanji>berteriak</kanji> memanggil mereka, kamu mungkin mencoba <vocabulary>memanggil</vocabulary> mereka. Ini sedikit lebih serius daripada sekadar menelepon mereka dengan santai. Mungkin Anda memanggil seseorang ke pengadilan, atau memanggil makhluk ajaib dalam video game. Hal yang cukup serius.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7790_memanggil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '塚', 'gundukan', 51, 53, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Biasanya <vocabulary>gundukan</vocabulary> jenis ini adalah <vocabulary>gundukan kuburan</vocabulary>. (Ada mayat di bawah sana!)', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7791_gundukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '愛媛県', 'prefektur-ehime', 51, 54, '<kanji>Prefektur</kanji> di Jepang tempat mereka <kanji>mencintai</kanji> <kanji>putri</kanji>es adalah <vocabulary>Prefektur Ehime</vocabulary>.', 'Bacaan ini agak berantakan. Pembacaan 愛 ini merupakan pengecualian, 媛 menggunakan bacaan kun''yomi ひめ, dan 県 menggunakan bacaan on''yomi けん. Berikut ini mnemonik untuk membantu Anda mengingat bacaan untuk 愛 ini:

Jika kamu bertanya kepada siapa pun di luar <vocabulary>Prefektur Ehime</vocabulary> apa pendapat mereka tentang putri, mereka akan menjawab, "<reading>Eh</reading>" (え). Mereka juga tidak terlalu peduli. Jika seseorang dari Ehime mendengarnya, mereka akan berkata, "EH? EH?! Putri adalah yang TERBAIK!"')
    RETURNING id INTO v_7792_prefektur_ehime;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慈悲', 'kasih-sayang', 51, 55, 'Jika Anda memiliki <kanji>belas kasihan</kanji> untuk orang yang <kanji>sedih</kanji> Anda memiliki banyak <vocabulary>kasih sayang</vocabulary>. Mau tidak mau, Anda harus bersikap lunak terhadap orang-orang yang sedih.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7793_kasih_sayang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慈愛', 'kasih-sayang', 51, 56, 'Ketika Anda memiliki <kanji>kemurahan</kanji> kepada orang yang Anda <kanji>cintai</kanji>, itu disebut <vocabulary>kasih sayang</vocabulary>. Anda akhirnya melakukan sesuatu berdasarkan <vocabulary>kebaikan</vocabulary> hati Anda karena hal itu sangat berarti bagi Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7794_kasih_sayang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慈善', 'amal', 51, 57, 'Orang <kanji>baik secara moral</kanji> yang memiliki <kanji>belas kasihan</kanji> terhadap orang lain memberikan <vocabulary>amal</vocabulary>. Orang-orang ini membuktikan bahwa mereka baik dengan memberikan seluruh uang mereka kepada orang miskin dan membutuhkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7795_amal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '挟む', 'untuk-menempatkan-antara', 51, 58, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>diletakkan di antara</kanji>, jadi versi kata kerjanya adalah <vocabulary>to put between</vocabulary> atau <vocabulary>to sandwich</vocabulary>.

挟む artinya meletakkan sesuatu di antara dua benda, seperti meletakkan ham di antara roti atau jari terjepit di pintu (aduh). Anda juga akan melihatnya dalam frasa seperti 口を挟む (untuk menyampaikan pendapat Anda) atau 耳に挟む (untuk menangkap rumor yang "menyelinap" ke telinga Anda).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!')
    RETURNING id INTO v_7796_untuk_menempatkan_antara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '枯渇', 'mengering', 51, 59, 'Sesuatu yang akan <kanji>layu</kanji> dan <kanji>mengering</kanji> akan menghasilkan hal yang sama, <vocabulary>mengering</vocabulary>. Dan saat mengering, jumlahnya semakin berkurang hingga tidak ada lagi yang tersisa. Ini disebut <vocabulary>deplesi</vocabulary>!

Kata ini sering digunakan untuk menggambarkan situasi di mana sumber daya alam semakin habis dan habis.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 渇, jadi inilah mnemonik untuk membantu Anda:

Jika semua tanamanmu <vocabulary>mengering</vocabulary> sebaiknya berikan saja pada <reading>kucing</reading> (かつ). Kucing suka bermain dengan tanaman kering. Setidaknya mereka tidak akan sia-sia.')
    RETURNING id INTO v_7797_mengering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '枯れる', 'menjadi-layu', 51, 60, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>layu</kanji>, jadi versi kata kerjanya adalah <vocabulary>to layu</vocabulary> atau <vocabulary>to die</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Bagaimana cara membuat tanaman <vocabulary>melayu</vocabulary>? Anda memukul mereka dengan <reading>ca</reading>r (か). Ini juga tidak baik untuk mobil Anda, tapi tanamannya pasti akan mati, jadi masalahnya teratasi!')
    RETURNING id INTO v_7798_menjadi_layu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '沸く', 'untuk-merebus', 51, 61, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendidih</kanji>, jadi versi kata kerjanya adalah <vocabulary>mendidih</vocabulary>. Ini juga dapat digunakan untuk mengartikan <vocabulary>menjadi bersemangat</vocabulary>, karena Anda dipenuhi dengan kegembiraan itu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Apa yang ingin Anda <vocabulary>rebus</vocabulary> untuk makan malam malam ini? <read>Wa</reading>lrus (わ). Walrus rebus adalah makanan lezat di tempat asal Anda, dan satu-satunya cara untuk bisa memakan daging walrus yang lezat adalah dengan merebusnya dalam waktu lama hingga lembut. Mmm wanginya enak.')
    RETURNING id INTO v_7799_untuk_merebus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '沸点', 'titik-didih', 51, 62, '<kanji>titik</kanji> di mana sesuatu mulai <kanji>mendidih</kanji> adalah <vocabulary>titik didih</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7800_titik_didih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浦', 'teluk', 51, 63, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Meskipun demikian, kata ini sebagian besar digunakan sebagai kata mandiri yang berarti "teluk" dalam literatur klasik. Saat ini, nama tersebut paling banyak muncul dalam nama tempat, seperti pelabuhan Tagonoura (田子の浦) dan kota Urayasu (浦安市).', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7801_teluk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浸す', 'untuk-merendam', 51, 64, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>dicelupkan</kanji>, jadi versi verbanya adalah apa yang terjadi saat kamu membenamkan sesuatu ke dalam cairan. Itu <vocabulary>merendam</vocabulary> atau <vocabulary>mencelupkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 浸る, jadi Anda harus mengetahuinya juga.')
    RETURNING id INTO v_7802_untuk_merendam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '渦', 'pusaran-air', 51, 65, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari arti ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Ada banyak <vocabulary>pusaran air</vocabulary> di <reading>u</reading>ni <reading>kebun binatang</reading> (うず). Unis sangat suka diputar-putar di pusaran air, jadi ketika Anda pergi ke kebun binatang untuk melihatnya, perhatikanlah tangki yang penuh dengan mereka!')
    RETURNING id INTO v_7803_pusaran_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '渦中', 'pusaran', 51, 66, 'Di <kanji>tengah</kanji> <kanji>pusaran air</kanji> Anda akan menemukan <vocabulary>vortex</vocabulary> air yang berputar. Anda benar-benar tidak ingin terjebak di sana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7804_pusaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '潤い', 'kelembaban', 51, 67, 'Ini mungkin terlihat seperti kata sifat, tapi sebenarnya ini adalah versi kata benda dari kanji <kanji>diairi</kanji>. Benda yang diairi, seperti tanaman, menyimpan banyak <vocabulary>kelembaban</vocabulary> di dalamnya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 潤う, jadi Anda harus mengetahuinya juga.')
    RETURNING id INTO v_7805_kelembaban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '洗濯機', 'mesin-cuci', 51, 68, '<kanji>mesin</kanji> <kanji>cuci</kanji> <kanji>mesin</kanji> hanyalah cara lain untuk mengatakan <vocabulary>mesin cuci</vocabulary>. Ini melakukan pencucian ekstra yang tidak dapat Anda lakukan dengan tangan, jadi ada dua kali pencucian di sini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.

Perhatikan bahwa meskipun せんたくき adalah bacaan resmi, kata ini biasanya diucapkan せんたっき saat diucapkan.')
    RETURNING id INTO v_7806_mesin_cuci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '洗濯粉', 'deterjen', 51, 69, '<kanji>Cuci</kanji> <kanji>cuci</kanji> <kanji>bubuk</kanji> adalah <vocabulary>deterjen</vocabulary> yang Anda masukkan ke dalam mesin cuci, pastikan pakaian Anda dicuci dengan baik. Dahulu deterjen hanya tersedia dalam bentuk bubuk, dan masih bisa tersedia, jadi ini untuk bahan bubuk yang bagus.

Perhatikan bahwa kata ini terdengar agak kuno. Berbicara tentang deterjen secara umum, 洗濯洗剤 lebih umum saat ini.', 'Ini adalah gabungan bacaan on''yomi untuk 洗濯 dan bacaan kun''yomi untuk 粉. Anda sudah mempelajari bacaan ini untuk 粉 ketika Anda mempelajari kata 小麦粉. Jika Anda dapat mengingatnya, Anda harus mengetahui bacaan yang satu ini juga!')
    RETURNING id INTO v_7807_deterjen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '洗濯屋', 'pembersih-kering', 51, 70, '<kanji>cuci</kanji> <kanji>cuci</kanji> <kanji>toko</kanji> adalah tempat Anda pergi untuk mencuci pakaian dengan sangat baik. Itulah <vocabulary>pembersih kering</vocabulary>! Mereka mencuci pakaian Anda jauh lebih baik daripada Anda karena mereka mencucinya dua kali.', 'Ini adalah gabungan bacaan on''yomi untuk 洗濯 dan bacaan kun''yomi untuk 屋. Anda sudah mempelajari semua bacaan ini sekarang, jadi Anda seharusnya bisa membaca kata ini juga!')
    RETURNING id INTO v_7808_pembersih_kering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '乾燥', 'kekeringan', 51, 71, 'Jika Anda mengambil sesuatu <kanji>kering</kanji> dan mendorongnya hingga <kanji>mengering</kanji> lebih lanjut, Anda mendapatkan 乾燥. Itu adalah kata untuk <vocabulary>kekeringan</vocabulary>, baik itu bibir pecah-pecah, udara kering, atau benda yang kering. Kata ini juga mendeskripsikan tindakan <vocabulary>mengeringkan</vocabulary>, seperti saat Anda mengeringkan makanan atau menjemur pakaian.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7809_kekeringan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '焦燥', 'ketidaksabaran', 51, 72, 'Jika Anda ingin <kanji>char</kanji> ikan untuk makan malam, ikan itu akan <kanji>mengering</kanji> karena <vocabulary>ketidaksabaran</vocabulary> Anda sendiri. Menghanguskan ikan membutuhkan waktu dan jika Anda terlalu <vocabulary>gelisah</vocabulary> dan memasukkannya terlalu jauh ke dalam api, ikan akan mengering, gosong, dan menjadi kotor.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7810_ketidaksabaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瓶', 'botol', 51, 73, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7813_botol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '花瓶', 'vas', 51, 74, '<kanji>botol</kanji> untuk <kanji>bunga</kanji> adalah <vocabulary>vas</vocabulary>. Anda harus mendapatkan beberapa bunga dan menaruhnya di vas untuk seseorang yang spesial sekarang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7814_vas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '空き瓶', 'botol-kosong', 51, 75, '<kanji>langit</kanji> <kanji>botol</kanji> adalah botol yang hanya berisi langit. Ini adalah <vocabulary>botol kosong</vocabulary>.', 'Bacaannya merupakan gabungan bacaan kun''yomi dan on''yomi. Anda mempelajari bacaan ini untuk 空 ketika Anda mempelajari 空き缶. Jika Anda dapat mengingatnya, Anda juga dapat mengingatnya!')
    RETURNING id INTO v_7815_botol_kosong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '火炎瓶', 'koktail-molotov', 51, 76, '<kanji>api</kanji> di dalam <kanji>botol</kanji> yang menghasilkan <kanji>api besar</kanji> ketika dilempar disebut <vocabulary>Molotov Cocktail</vocabulary>. Tolong jangan membuangnya ke dalam rumah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7816_koktail_molotov;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '瓶詰', 'pembotolan', 51, 77, 'Apa yang <kanji>diisi</kanji> di dalam <kanji>botol</kanji>? Selai yang Anda <vocabulary>botolkan</vocabulary> untuk nanti! Bagaimana kamu bisa lupa?', 'Kata ini terdiri dari bacaan on''yomi untuk 瓶 dan bacaan kun''yomi untuk 詰 yang kamu pelajari saat mempelajari 詰める. Kamu sudah mempelajari keduanya, jadi asal kamu ingat rendaku, kamu pasti bisa membaca kata ini juga! Ingatlah bahwa 詰 juga mengambil め dari 詰める dalam kata ini. Anda tidak dapat melihatnya, tetapi itu ada.')
    RETURNING id INTO v_7817_pembotolan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '耕す', 'untuk-sampai', 51, 78, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membajak</kanji>, jadi versi kata kerjanya adalah <vocabulary>to plow</vocabulary> atau <vocabulary>to menggarap</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda perlu <vocabulary>menggarap</vocabulary> tanah Anda karena Anda ingin memiliki <reading>harimau</reading>r <reading>ya</reading>rd (たがや). Itu bisa terjadi ketika Anda memiliki halaman yang penuh dengan harimau hidup, atau Anda menanam semak dan membentuknya menjadi harimau. Saya harap ini adalah pekarangan harimau jenis kedua. Apa pun yang terjadi, Anda harus membajak tanah untuk menyiapkannya.')
    RETURNING id INTO v_7818_untuk_sampai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '耕地', 'tanah-subur', 51, 79, '<kanji>Bajak</kanji><kanji>tanah</kanji> disebut <vocabulary>tanah subur</vocabulary>. Ini adalah jenis tanah yang Anda gunakan untuk bercocok tanam atau padang rumput.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7819_tanah_subur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '耕作', 'penanaman', 51, 80, '<kanji>Membajak</kanji> bumi untuk <kanji>membuat</kanji> siap untuk <vocabulary>budidaya</vocabulary> dan <vocabulary>bertani</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7820_penanaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '農耕', 'pertanian', 51, 81, '<kanji>Bertani</kanji> dengan <kanji>bajak</kanji> tetaplah <vocabulary>bertani</vocabulary>.

農耕 adalah kata yang relatif formal untuk pertanian atau budidaya pertanian, yang berfokus pada aktivitas seperti membajak, menanam, dan bercocok tanam. Kata ini sering digunakan untuk menggambarkan praktik pertanian dan gaya hidup pertanian menetap, bukan berburu dan meramu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7821_pertanian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '聡い', 'cerdas', 51, 82, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa cara lain untuk mengatakan <kanji>bijaksana</kanji>? <vocabulary>Cerdas</vocabulary> atau <vocabulary>cerdas</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Apa yang Anda lakukan hingga menjadi <vocabulary>pintar</vocabulary>? Anda <reading>duduk</reading> (さと) di kelas sepanjang hari. Anda bahkan tidak bangun setelah kelas selesai. Anda duduk tegak dan duduk di meja Anda sampai kelas dimulai lagi keesokan paginya. Kamu menyerap ilmu melalui punggungmu, jadi selama kamu duduk seharian, kamu menyedot semua ilmu yang ada di dunia!')
    RETURNING id INTO v_7822_cerdas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '聡明', 'bijak', 51, 83, 'Orang yang <kanji>bijaksana</kanji> dan <kanji>cerdas</kanji> adalah <vocabulary>bijaksana</vocabulary> dan <vocabulary>cerdas</vocabulary>. Faktanya, mereka memiliki begitu banyak <kosakata>kebijaksanaan</vocabulary> yang terlihat dari kecerahan kulit mereka. Sparkle Sparkle pergi ke wanita tua yang bijaksana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7823_bijak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '肯定', 'afirmasi', 51, 84, 'Sebuah <kanji>perjanjian</kanji> <kanji>ditentukan</kanji>d melalui <vocabulary>penegasan</vocabulary>. Jika kedua belah pihak <vocabulary>menegaskan</vocabulary> posisi masing-masing, maka dapat dikatakan bahwa mereka mungkin sepakat dalam beberapa hal.

肯定 adalah kata yang relatif formal yang digunakan untuk menegaskan sesuatu sebagai benar atau valid. Kata ini dapat mendeskripsikan persetujuan aktif terhadap suatu opini atau pendirian, namun lebih sering digunakan untuk mendeskripsikan respons <vocabulary>positif</vocabulary> yang jelas terhadap pertanyaan atau klaim. Ini juga biasanya muncul dalam konteks introspektif, seperti 自己肯定感 (perasaan penerimaan diri), ketika berbicara tentang mengenali diri sendiri atau kehidupan Anda sendiri dengan cara yang positif.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7824_afirmasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脂肪', 'gemuk', 51, 85, 'Jika Anda menambahkan <kanji>lemak</kanji> ke <kanji>lemak</kanji>, apa yang Anda dapatkan? Anda tentu saja menjadi <vocabulary>gemuk</vocabulary>. Ayolah, ini bukan ilmu roket.

脂肪 secara khusus mengacu pada lemak padat yang ditemukan di dalam tumbuhan dan hewan. Dalam percakapan santai, kata ini sering digunakan saat membicarakan kelebihan lemak tubuh seseorang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7825_gemuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '樹脂', 'damar', 51, 86, '<kanji>lemak</kanji> yang keluar dari <kanji>kayu</kanji> dari pepohonan digunakan untuk membuat <vocabulary>resin</vocabulary>. Pohon tidak mempunyai lemak, katamu? Ya, Anda salah, lihatlah. Pohon sangat gemuk dan kami menggunakan resin dari pohon tersebut untuk melakukan segala macam hal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7826_damar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '皮膚', 'kulit', 51, 87, '<kanji>skin</kanji> di bawah <kanji>skin</kanji> Anda tetaplah <vocabulary>skin</vocabulary>. Lapisan tambahan ada untuk memastikan ketika Anda mendapat luka kecil, luka tersebut tidak luntur di mana-mana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7827_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '苗', 'bibit', 51, 88, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Waktu terbaik untuk menanam <vocabulary>bibit</vocabulary> adalah pada <reading>hampir</reading>t (なえ). Jika Anda menanamnya di malam hari, mereka akan tidur selama seluruh proses pemindahan dan mereka akan bangun dengan perasaan bahagia dan siap untuk tumbuh.')
    RETURNING id INTO v_7828_bibit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '苗字', 'nama-belakang', 51, 89, '<kanji>bibit</kanji> <kanji>huruf</kanji> adalah huruf pertama yang Anda pelajari ketika Anda masih kecil. Apa hal pertama yang kamu pelajari mengeja ketika kamu masih kecil? <vocabulary>nama belakang</vocabulary> Anda! Anda perlu mengetahui siapa keluarga Anda, jika tidak, jika Anda tersesat atau terjadi sesuatu, Anda tidak akan tahu cara pulang! Atau bahkan siapa Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7829_nama_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蓮', 'teratai', 51, 90, '<kanji>lotus</kanji> adalah <vocabulary>lotus</vocabulary>. Namun, dalam kitab Buddha, sering kali disebut sebagai <kosakata>teratai suci</vocabulary>. Jika Anda melihat satu yang tumbuh di kolam acak di suatu tempat, mungkin itu adalah yang pertama, tetapi jika terlihat sangat halus dan ada Buddha yang duduk di atasnya, mungkin itu adalah yang terakhir, jadi gunakan penilaian Anda!', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Setiap kali kamu melihat <vocabulary>teratai</vocabulary>, panggil hewan peliharaan kepercayaanmu <reading>hus</reading>ky (はす). Teratai tumbuh di tengah kolam, tetapi Anda telah melatih husky Anda untuk berenang dan menangkapnya. Bayangkan husky Anda berenang kembali dengan bunga teratai di mulutnya, terengah-engah gembira: "hus, hus, hus!" Husky Anda adalah anak yang paling baik.')
    RETURNING id INTO v_7830_teratai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蓮花', 'bunga-teratai', 51, 91, '<kanji>lotus</kanji> <kanji>bunga</kanji> aslinya berarti <vocabulary>bunga teratai</vocabulary>, namun belakangan ini 蓮花 sering mengacu pada bunga kecil yang bentuknya seperti teratai, yang disebut <vocabulary>Chinese milk vetch</vocabulary>. Bisa juga berarti <vocabulary>sendok ramen</vocabulary>, karena sendok yang Anda dapatkan pada ramen tersebut memiliki bentuk yang unik menyerupai kelopak bunga teratai.

Ingatlah bahwa Anda mungkin juga melihatnya ditulis sebagai 蓮華, atau hanya dalam kana sebagai れんげ atau レンゲ.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 花, jadi inilah mnemonik untuk membantu Anda:

Ada sesuatu pada <vocabulary>bunga teratai</vocabulary>... sesuatu yang kecil dan agak berkilau. Ini sedikit <read>ge</reading>cko (げ). Ia bersembunyi di dalam teratai dan mencoba menangkap lalat. Lucu sekali!')
    RETURNING id INTO v_7831_bunga_teratai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '覆う', 'untuk-menutupi', 51, 92, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menutupi</kanji>, jadi versi kata kerjanya adalah <vocabulary>to cover</vocabulary> atau <vocabulary>to hide</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda memutuskan <vocabulary>untuk menutupi</vocabulary> diri Anda dengan selimut karena Anda ingin berpura-pura menjadi hantu. Namun menutupi diri sendiri saja tidak cukup. Jika Anda benar-benar ingin orang lain memercayai penyamaran Anda, Anda harus mengatakan, "<reading>おお</reading>!" Jika tidak, mereka akan mengira Anda adalah kursi tertutup atau semak. Jika Anda おお pada mereka, mereka pasti akan tahu bahwa Anda adalah hantu yang ditutupi selimut itu.')
    RETURNING id INTO v_7832_untuk_menutupi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貞節', 'kesucian', 51, 93, '<kanji>Kesucian</kanji> selalu ada dalam <kanji>musim</kanji> jadi selalu menyenangkan untuk mencoba menjaga <vocabulary>kesucian</vocabulary> Anda. Musim semi, musim panas? Tidak masalah. Keputusan Anda untuk tetap seperti itu baik-baik saja, tidak peduli jam berapa sekarang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7833_kesucian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貞操', 'kesucian', 51, 94, 'Kamu adalah orang yang kuat, mandiri, dan kamu adalah satu-satunya orang yang bisa <kanji>memanipulasi</kanji> <kanji>kesucian</kanji>mu. Tidak ada orang lain yang bisa. Jadi jika Anda ingin menjaga <vocabulary>kesucian</vocabulary> Anda, itu sepenuhnya terserah Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7834_kesucian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不貞', 'tidak-setia', 51, 95, 'Bila kamu <kanji>tidak</kanji> memiliki <kanji>kesucian</kanji>, itu mungkin karena kamu <vocabulary>tidak setia</vocabulary> terhadap janjimu kepada siapa pun yang kamu suruh untuk tetap suci.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7835_tidak_setia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '柔軟', 'fleksibel', 51, 96, 'Sesuatu yang <kanji>lembut</kanji> dan <kanji>lembut</kanji> akan benar-benar <vocabulary>fleksibel</vocabulary> dan <vocabulary>lentur</vocabulary>. Benda lunak sangat mudah ditekuk, seperti handuk dan kelopak bunga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7838_fleksibel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '軟禁', 'tahanan-rumah', 51, 97, '<kanji>Lembut</kanji> <kanji>larangan</kanji> tidak akan seburuk penjara atau penjara. Mereka bersikap lunak terhadap Anda, jadi Anda hanya berada di bawah <vocabulary>tahanan rumah</vocabulary>. Itu tidak terlalu buruk, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7839_tahanan_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '私邸', 'tempat-tinggal-pribadi', 51, 98, '<kanji>pribadi</kanji> <kanji>tempat tinggal</kanji> adalah <vocabulary>tempat tinggal pribadi</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7840_tempat_tinggal_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '官邸', 'rumah-dinas', 51, 99, '<kanji>pemerintahan</kanji> <kanji>tempat tinggal</kanji> adalah tempat yang ditugaskan kepada pejabat pemerintah. Artinya, ini adalah <vocabulary>kediaman resmi</vocabulary> mereka, dan itu digunakan untuk semua dokumen resmi mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7841_rumah_dinas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '公邸', 'rumah-dinas', 51, 100, '<kanji>umum</kanji> <kanji>kediaman</kanji> adalah tempat tinggal pejabat publik, yang menjadikannya <vocabulary>tempat tinggal resmi</vocabulary> mereka.

公邸 adalah kata untuk kediaman resmi pejabat publik besar, seperti perdana menteri, presiden, atau kaisar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7842_rumah_dinas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '邸宅', 'rumah-besar', 51, 101, 'Jika Anda memiliki <kanji>tempat tinggal</kanji> yang juga merupakan <kanji>rumah</kanji> Anda, itu tetap menjadi <vocabulary>tempat tinggal</vocabulary> Anda. Namun Anda mungkin mempunyai banyak uang jika Anda bisa memiliki rumah sendiri, jadi mungkin itu adalah <vocabulary>rumah</vocabulary> yang bagus dan besar juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7843_rumah_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '邸内', 'alasan', 51, 102, 'Tanah <kanji>di dalam</kanji> dari <kanji>tempat tinggal</kanji> disebut <vocabulary>ground</vocabulary> atau <vocabulary>premises</vocabulary>. Hanya tempat tinggal yang sangat besar yang memiliki lahan di dalamnya yang cukup besar untuk disebut sebagai "pekarangan".', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7844_alasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '郊外', 'pinggiran-kota', 51, 103, '<kanji>Pinggiran kota</kanji> di <kanji>luar</kanji> kota tetaplah <vocabulary>pinggiran kota</vocabulary>. Kadang-kadang mereka juga disebut <vocabulary>pinggiran</vocabulary> kota.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7845_pinggiran_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '近郊', 'pinggiran-kota', 51, 104, '<kanji>Pinggiran kota</kanji> <kanji>dekat</kanji> Anda masih <vocabulary>pinggiran kota</vocabulary>. Semuanya hampir sama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7846_pinggiran_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '郡', 'daerah', 51, 105, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7847_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '釈明', 'penjelasan', 51, 106, '<kanji>penjelasan</kanji> yang <kanji>cerah</kanji> hanyalah <vocabulary>penjelasan</vocabulary> yang sangat jelas dan dikembangkan dengan baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7848_penjelasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '注釈', 'catatan', 51, 107, 'Jika otak Anda tidak bisa berhenti <kanji>menuangkan</kanji>mengatakan semua <kanji>penjelasan</kanji> yang diberikan guru, Anda perlu membuat <vocabulary>catatan</vocabulary>. Dengan begitu ketika informasi tersebut keluar dari kepala Anda, Anda masih memiliki <vocabulary>komentar</vocabulary> dan <vocabulary>anotasi</vocabulary> untuk membantu Anda mengingat penjelasan guru nanti.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7849_catatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '会釈', 'mengangguk', 51, 108, 'Sebelum kamu bisa memberikan <kanji>penjelasan</kanji> tentang siapa dirimu kepada seseorang yang akan <kanji>temui</kanji>, kamu harus <vocabulary>mengangguk</vocabulary> atau <vocabulary>membungkuk</vocabulary> sebagai <vocabulary>sapaan</vocabulary> terlebih dahulu. Tidak sopan untuk mulai menjelaskan siapa Anda sebelum menyapa mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 会, jadi inilah mnemonik untuk membantu Anda:

Ketika seseorang <vocabulary>membungkuk</vocabulary> kepada Anda, Anda selalu merasa sedikit tidak nyaman, jadi Anda berkata, "<reading>Eh</reading>" (え) dan mencoba menghentikannya. Anda merasa sangat tidak nyaman sehingga Anda tidak bisa memikirkan kata-kata dan hanya "eh" yang bisa Anda keluarkan.')
    RETURNING id INTO v_7850_mengangguk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '解釈', 'penjelasan', 51, 109, 'Meskipun Anda <kanji>melepaskan</kanji> sebuah <kanji>penjelasan</kanji>, itu tetap merupakan <vocabulary>penjelasan</vocabulary> yang cukup bagus.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7851_penjelasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隅', 'sudut', 51, 110, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7852_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '片隅', 'sudut', 51, 111, '<kanji>satu sisi</kanji> <kanji>sudut</kanji> tetaplah <vocabulary>sudut</vocabulary>, hanya saja sangat kecil.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_7853_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '四隅', 'empat-sudut', 51, 112, '<kanji>Empat</kanji> <kanji>sudut</kanji> adalah <vocabulary>empat sudut</vocabulary>!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari keduanya sekarang, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_7854_empat_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隅々', 'sudut', 51, 113, '<kanji>Sudut</kanji> <kanji>sudut</kanji> tetaplah <vocabulary>sudut</vocabulary>. Kadang-kadang letaknya dari sudut KE sudut, jadi itu adalah <vocabulary>sudut</vocabulary> kecil dan celah yang sulit dijangkau.', 'Kata ini menggunakan pembacaan kun''yomi dari kanji yang Anda pelajari, dua kali, dengan rendaku yang kedua. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7855_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '〜隻', 'konter-kapal', 51, 114, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa 隻 umumnya digunakan untuk menghitung kapal yang relatif besar, seperti kapal laut atau bahkan seluruh armada.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7856_konter_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '頂く', 'menerima-dengan-rendah-hati', 51, 115, 'Jika Anda <kanji>dengan rendah hati</kanji> melakukan sesuatu, Anda akan <vocabulary>menerimanya dengan rendah hati</vocabulary>, <vocabulary>dengan rendah hati menerima</vocabulary>, atau memakan atau meminumnya. Pada dasarnya Anda dengan rendah hati melakukan banyak hal. Dan Anda dapat menggunakan kata ini untuk semuanya!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda secara teknis sudah mengetahui bacaan ini! Kamu tahu bagaimana orang bilang いただきます? Ya, itu sama saja dengan ini! Anda dengan rendah hati menerima makanan Anda. Jadi <vocabulary>menerima dengan rendah hati</vocabulary> adalah <reading>いただ</reading>く!')
    RETURNING id INTO v_7857_menerima_dengan_rendah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '山頂', 'puncak', 51, 116, '<kanji>gunung</kanji> <kanji>puncak</kanji> masih disebut <vocabulary>puncak</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7858_puncak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '襟', 'kerah', 51, 117, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7859_kerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '洗濯する', 'untuk-mencuci', 51, 118, '<kanji>Cuci</kanji> <kanji>cuci</kanji> <vocabulary>untuk mencuci</vocabulary> pakaian Anda. Anda mencuci mencuci cucian Anda. Hmm cucian cuci terdengar seperti suara mesin laundryku saat sedang mencuci celana dalamku.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8813_untuk_mencuci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慌ただしい', 'keburu', 51, 119, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. <kanji>Bingung</kanji> sudah menjadi kata sifat dan kata ini sedikit berbeda. Biasanya kalau kamu bingung itu karena kamu sudah <vocabulary>tergesa-gesa</vocabulary>, <vocabulary>sibuk</vocabulary>, dan keadaan sedang <vocabulary>sibuk</vocabulary>. Jadi kata sifat inilah yang menyebabkan kebingungan Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda telah mempelajari bacaan ini, jadi Anda seharusnya sudah bisa membaca ini!')
    RETURNING id INTO v_8891_keburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '世界恐慌', 'depresi-hebat', 51, 120, '世界 berarti "dunia" dan 恐慌 berarti "panik" atau "ketakutan", jadi ketika Anda menggabungkannya, Anda akan mendapatkan ketakutan yang membuat seluruh dunia panik. Inilah cara kami merujuk pada <vocabulary>Depresi Hebat</vocabulary>. Hal ini disebabkan oleh dan kemudian mengakibatkan semua orang di seluruh dunia menjadi panik mengenai uang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!')
    RETURNING id INTO v_8893_depresi_hebat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '煎る', 'untuk-memanggang', 51, 121, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memanggang</kanji>, dan versi kata kerjanya adalah <vocabulary>to roast</vocabulary> atau <vocabulary>toast</vocabulary>. Kata kerja ini paling sering digunakan ketika mengacu pada pemanggangan kering seperti kopi, teh, atau kacang-kacangan.', 'Tahukah Anda hewan apa yang suka <vocabulary>memanggang</vocabulary> dan <vocabulary>memanggang roti</vocabulary> sesuatu? <read>Ea</reading>gles (い)! Mereka selalu memanggang biji kopi dan sejenisnya. Begitulah cara mereka tetap waspada.')
    RETURNING id INTO v_9001_untuk_memanggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '亮平', 'ryohei', 51, 122, '<kanji>Jelas</kanji> <kanji>datar</kanji> adalah salah satu cara untuk menulis nama pemberian Jepang <vocabulary>Ryohei</vocabulary>. 

Beberapa orang terkenal dengan nama tersebut antara lain pematung logam Miyada Ryohei (宮田 亮平), aktor Suzuki Ryohei (鈴木 亮平), dan model dan aktor Ōtani Ryohei (大谷 亮平), yang berakting dalam film dan drama Jepang dan Korea.', 'Berbeda dengan kebanyakan nama Jepang, nama ini sebenarnya menggunakan on''yomi dari kedua kanji. Anda seharusnya bisa membaca ini sendiri. Hore untuk nama yang mudah!')
    RETURNING id INTO v_9100_ryohei;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蛇口', 'keran', 51, 123, 'Ini bukan <kanji>mulut</kanji> <kanji>ular</kanji> secara harafiah, melainkan <vocabulary>keran</vocabulary>. Memang ada kemiripannya, coba bayangkan bentuk keran yang mirip dengan ular, dengan air yang keluar dari mulutnya.', 'Yang ini sedikit unik, karena menggunakan on''yomi untuk 蛇, dan kun''yomi (yang diberi rendaku) untuk 口. Anda tidak mempelajari bacaan ini untuk 蛇, jadi inilah mnemonik untuk membantu Anda:

Setiap kali kamu mencoba minum dari <vocabulary>keran</vocabulary>, kamu akan diserang dengan kejam oleh <reading>ja</reading>guar (じゃ). Mencoba minum dari keran telah menjadi pertarungan hidup dan mati. Anda baru tahu jaguar bersembunyi di balik keran, menjaganya.')
    RETURNING id INTO v_9299_keran;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2516_lagi, 'Lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2516_lagi, 'Dan Juga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2516_lagi, 'Atau', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_2516_lagi, 'また', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2516_lagi, '別れを告げ、それから又数年が過ぎた。', 'Mereka mengucapkan selamat tinggal, dan beberapa tahun berlalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2516_lagi, 'この書類は、必ず黒のペン又はボールペンで記入してください。', 'Formulir ini harus diisi dengan pulpen hitam atau pulpen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2516_lagi, '「僕又来ますね 」と言って、猫はそそくさと帰って行った。', '"Aku akan kembali," katanya, dan kucing itu bergegas pergi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3363_kerabat_darah, 'Kerabat Darah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_3363_kerabat_darah, 'けつぞく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3363_kerabat_darah, '「直系血族」とは、直上下の関係にある血族のことで、自分と血の繋がった祖父母や父母、子や孫との関係のことを指します。', '“Kerabat sedarah langsung” mengacu pada saudara sedarah dalam garis keturunan langsung Anda, seperti kakek-nenek, orang tua, anak-anak atau cucu-cucu yang mempunyai hubungan darah dengan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3363_kerabat_darah, '法定血族関係が生じるのは養子縁組をした場合のみです。', 'Hubungan darah yang sah hanya timbul apabila terjadi pengangkatan anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3363_kerabat_darah, '直系血族からの住宅取得等資金の贈与には、 特例制度で最高１５００万円までの非課税枠があります。', 'Ada pengecualian khusus untuk hadiah dana perolehan perumahan dari kerabat sedarah, yang memungkinkan hingga 15 juta yen bebas pajak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3967_penyebab_internal, 'Penyebab Internal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3967_penyebab_internal, 'Faktor Dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3967_penyebab_internal, 'Faktor Endogen', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_3967_penyebab_internal, 'ないいん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3967_penyebab_internal, '内因性ぜんそくだと診断されました。', 'Saya didiagnosis menderita asma intrinsik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3967_penyebab_internal, '私は内因性のうつ病で長い間苦しんできました。', 'Saya telah lama menderita depresi endogen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3967_penyebab_internal, 'トラウマになる出来事が起きると、その苦しみを和らげるために、内因性オピオイドという脳内麻薬が分ぴつされます。', 'Ketika peristiwa traumatis terjadi, opioid endogen – narkotika alami otak – dikeluarkan untuk meringankan penderitaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4030_resep, 'Resep', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4030_resep, 'やくほう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4030_resep, '私は、漢方薬方の研究をしています。', 'Saya sedang melakukan penelitian tentang resep obat herbal tradisional Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4030_resep, 'これは中国の古い医書に記された薬方です。', 'Resep-resep ini didokumentasikan dalam teks pengobatan Tiongkok kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4030_resep, '古い薬方の中には、危険であるということで現代医療からは除かれているものもある。', 'Beberapa resep lama dianggap berbahaya dan tidak lagi digunakan dalam pengobatan modern.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4256_sisa, 'Sisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4256_sisa, 'Sisa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4256_sisa, 'ざんよ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4256_sisa, '倒産後、残余財産が残れば分配されます。', 'Setelah bangkrut, sisa harta kekayaan akan dibagikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4256_sisa, '「残余リスクについてもちゃんと議論したんですか？」「まだです。みんな残余リスクの計算式を忘れてしまって、議論にならないんです。」', '"Apakah kalian juga sudah membahas risiko yang tersisa?" "Belum. Kita semua lupa rumus menghitung sisa risiko, jadi tidak bisa berdiskusi."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4256_sisa, '今月の差額残余額は現時点でいくらになっていますか。', 'Berapa sisa saldo bulan ini sampai sekarang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4667_hukum, 'Hukum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4667_hukum, 'Peraturan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4667_hukum, 'ほうき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4667_hukum, '下記に、関連法規を全て列挙しています。', 'Di bawah ini, kami telah mencantumkan semua undang-undang dan peraturan terkait.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4667_hukum, '残念ですが、法規上はこれで問題ありません。', 'Sayangnya, hal ini tidak ada permasalahan hukumnya sesuai peraturan perundang-undangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4667_hukum, '海戦に関する国際法規について書かれた本は、この図書館にありますか。', 'Apakah ada buku tentang hukum internasional mengenai permusuhan laut di perpustakaan ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4913_terlibat_dalam_pekerjaan, 'Terlibat Dalam Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4913_terlibat_dalam_pekerjaan, 'Bekerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4913_terlibat_dalam_pekerjaan, 'Pekerjaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4913_terlibat_dalam_pekerjaan, 'じゅうぎょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4913_terlibat_dalam_pekerjaan, 'ここの従業員たちは、大阪支店の従業員たちより楽観的なようだ。', 'Karyawan di sini tampaknya lebih optimis dibandingkan rekan-rekan mereka di cabang Osaka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4913_terlibat_dalam_pekerjaan, 'この会社に従業している従業者数は約百人です。', 'Jumlah karyawan yang bekerja di perusahaan ini kurang lebih seratus orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4913_terlibat_dalam_pekerjaan, '従業する業務内容は会社と相談の上、決定します。', 'Isi pekerjaan yang akan dilakukan akan ditentukan melalui konsultasi dengan perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4913_terlibat_dalam_pekerjaan, '休日などを含め、雇われていた全期間のことを「従業期間」と言います。', 'Termasuk hari libur dan sejenisnya, seluruh masa kerja disebut sebagai “masa kerja”.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5286_permohonan, 'Permohonan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_5286_permohonan, 'せいがん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5286_permohonan, 'こちらの請願のリンクをクリックして署名してください。', 'Silakan klik tautan petisi ini dan tandatangani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5286_permohonan, '請願するご本人に来ていただかないといけないんですよ。', 'Orang yang mengajukan petisi harus hadir sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5286_permohonan, 'もしご迷惑でなければ請願書に署名して頂けませんでしょうか。', 'Jika Anda tidak keberatan, maukah Anda menandatangani petisi ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7157_ancaman, 'Ancaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7157_ancaman, 'Sebuah Ancaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7157_ancaman, 'おどし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7157_ancaman, '寿司屋に行く途中、寿司に醤油をかけたら殺すぞ、という脅しを受けた。', 'Dalam perjalanan ke bar sushi saya mendapat ancaman yang mengatakan saya akan dibunuh jika saya menaruh kecap asin di sushi saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7494_berirama, 'Berirama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7494_berirama, 'Berirama', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7494_berirama, 'りつどうてき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7494_berirama, 'この音楽はとても律動的ですね。', 'Musik ini sangat berirama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7494_berirama, 'トーフグチームの中で、一番律動的にラジオ体操をしていたのは、カナエです。', 'Di luar tim Tofugu, Kanae melakukan senam radio paling berirama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7494_berirama, '今朝、たくさんの兎が庭で律動的に飛び跳ねているのを見ました。', 'Pagi ini, aku melihat banyak sekali kelinci yang melompat-lompat seirama di kebunku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7783_orang_hebat, 'Orang Hebat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7783_orang_hebat, 'Pria Hebat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7783_orang_hebat, 'Pahlawan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7783_orang_hebat, 'いじん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7783_orang_hebat, '世界の偉人たちの名言を集めました。', 'Saya telah mengumpulkan kata-kata bijak dari orang-orang hebat dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7783_orang_hebat, '昨日は空腹で眠れなかったので、偉人の本を読んでしのいだ。', 'Aku sangat lapar tadi malam hingga tidak bisa tidur, maka aku melewati malam itu dengan membaca buku tentang tokoh sejarah yang hebat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7784_kebesaran, 'Kebesaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7784_kebesaran, 'Agung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7784_kebesaran, 'Luar biasa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7784_kebesaran, 'いだい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7784_kebesaran, '人類史上最も偉大な発明は何ですか。', 'Apa penemuan terbesar sepanjang sejarah manusia?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7785_besar, 'Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7785_besar, 'Bagus sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7785_besar, 'Terpuji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7785_besar, 'Luar biasa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7785_besar, 'えらい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7785_besar, '社長がそんなに偉いんですか？', 'Apa yang membuat presiden perusahaan begitu hebat?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7786_perhitungan, 'Perhitungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7786_perhitungan, 'Perhitungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7786_perhitungan, 'Uang saku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7786_perhitungan, 'Pembayaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7786_perhitungan, 'Tagihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7786_perhitungan, 'Memeriksa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7786_perhitungan, 'かんじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7786_perhitungan, 'お勘定をお願いします。', 'Bisakah saya minta ceknya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7787_untuk_menelepon, 'Untuk Menelepon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7787_untuk_menelepon, 'Untuk Mengambil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7787_untuk_menelepon, 'Untuk Dipakai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7787_untuk_menelepon, 'めす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7787_untuk_menelepon, 'あなたのお姉さまは神に召されたのですよ。', 'Kakak perempuanmu dipanggil oleh para dewa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7788_membangkitkan, 'Membangkitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7788_membangkitkan, 'Membangkitkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7788_membangkitkan, 'Membangkitkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7788_membangkitkan, 'Merangsang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7788_membangkitkan, 'かんき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7788_membangkitkan, 'あの政治家は、世論を喚起するのが巧い。', 'Politisi itu mahir menggugah opini publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7788_membangkitkan, '大学の入学式で、学生たちに飲酒やカルト宗教についての注意喚起が行われました。', 'Pada upacara penerimaan universitas, para mahasiswa diperingatkan akan bahaya alkohol dan aliran sesat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7789_berteriak, 'Berteriak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7789_berteriak, 'Berteriak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7789_berteriak, 'わめく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7789_berteriak, '酔っぱらいが喚いているんだよ。', 'Seorang pria mabuk berteriak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7790_memanggil, 'Memanggil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7790_memanggil, 'Panggilan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7790_memanggil, 'しょうかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7790_memanggil, '魔法使いを召喚しました。', 'Saya memanggil seorang pesulap.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7791_gundukan, 'Gundukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7791_gundukan, 'Gundukan Pemakaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7791_gundukan, 'つか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7791_gundukan, '塚を見下ろすことのは失礼です。', 'Tidak sopan melihat ke bawah pada gundukan kuburan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7792_prefektur_ehime, 'Prefektur Ehime', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7792_prefektur_ehime, 'えひめけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7792_prefektur_ehime, '私は愛媛県の出身です。', 'Saya dari Prefektur Ehime.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7792_prefektur_ehime, '愛媛県でゾンビに追われながらも仲間を助けるために全力を尽くす映画を作りたいんです。', 'Saya ingin membuat film berlatar di Prefektur Ehime tentang orang-orang yang melakukan apa saja untuk membantu teman mereka saat dikejar zombie.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7793_kasih_sayang, 'Kasih sayang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7793_kasih_sayang, 'Kebajikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7793_kasih_sayang, 'Amal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7793_kasih_sayang, 'Belas kasihan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7793_kasih_sayang, 'じひ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7793_kasih_sayang, '祖母は本当に慈悲深い人だった。', 'Nenek saya adalah orang yang sangat penyayang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7794_kasih_sayang, 'Kasih sayang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7794_kasih_sayang, 'Kebaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7794_kasih_sayang, 'Cinta', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7794_kasih_sayang, 'じあい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7794_kasih_sayang, '彼女は慈愛に満ちた微笑を僕に向けた。', 'Dia mengarahkan senyum penuh kasih sayang ke arahku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7795_amal, 'Amal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7795_amal, 'Kedermawanan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7795_amal, 'じぜん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7795_amal, 'この本は慈善事業支援の目的で出版されました。', 'Buku ini diterbitkan dengan tujuan mendukung proyek amal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7796_untuk_menempatkan_antara, 'Untuk Menempatkan Antara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7796_untuk_menempatkan_antara, 'Ke Sandwich', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7796_untuk_menempatkan_antara, 'Untuk Menyisipkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7796_untuk_menempatkan_antara, 'はさむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7796_untuk_menempatkan_antara, 'パンにハムと卵を挟みました。', 'Saya menaruh telur dan ham di antara roti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7797_mengering, 'Mengering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7797_mengering, 'Penipisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7797_mengering, 'Kelelahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7797_mengering, 'こかつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7797_mengering, 'もうすぐ石油は枯渇する。', 'Minyak bumi akan segera habis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7798_menjadi_layu, 'Menjadi layu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7798_menjadi_layu, 'Untuk Mati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7798_menjadi_layu, 'かれる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7798_menjadi_layu, 'せっかく植えた木が枯れてしまいました。', 'Pohon yang saya susah payah tumbuhkan menjadi layu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7799_untuk_merebus, 'Untuk Merebus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7799_untuk_merebus, 'Menjadi Panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7799_untuk_merebus, 'Agar Bersemangat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7799_untuk_merebus, 'わく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7799_untuk_merebus, '私はお湯が沸くのを待っている。', 'Saya menunggu airnya mendidih.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7800_titik_didih, 'Titik didih', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7800_titik_didih, 'ふってん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7800_titik_didih, '沸点は何度ですか。', 'Berapa derajat titik didihnya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7801_teluk, 'Teluk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7801_teluk, 'Masuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7801_teluk, 'うら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7801_teluk, '駿河湾西沿岸は田子ノ浦と呼ばれます。', 'Pesisir barat Teluk Suruga disebut Teluk Takono.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7802_untuk_merendam, 'Untuk Merendam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7802_untuk_merendam, 'Untuk Mendalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7802_untuk_merendam, 'Untuk mencelupkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7802_untuk_merendam, 'ひたす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7802_untuk_merendam, 'どうして野菜を水に浸しているの？', 'Mengapa Anda merendam sayuran dalam air?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7803_pusaran_air, 'Pusaran air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7803_pusaran_air, 'Eddy', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7803_pusaran_air, 'Pusaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7803_pusaran_air, 'うず', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7803_pusaran_air, '海に渦が発生するのはどうして？', 'Mengapa pusaran air muncul di lautan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7804_pusaran, 'Pusaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7804_pusaran, 'pusaran air', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7804_pusaran, 'かちゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7804_pusaran, '彼は離婚騒動で渦中の人だよ。', 'Dia berada dalam pusaran kekacauan perceraian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7805_kelembaban, 'kelembaban', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7805_kelembaban, 'Kekayaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7805_kelembaban, 'Kebasahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7805_kelembaban, 'うるおい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7805_kelembaban, 'この化粧水が、あなたのお肌の潤いを保ちます。', 'Lotion ini akan membantu menjaga kelembapan kulit Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7806_mesin_cuci, 'Mesin cuci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7806_mesin_cuci, 'Mesin Binatu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7806_mesin_cuci, 'せんたくき', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7806_mesin_cuci, 'せんたっき', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7806_mesin_cuci, '洗濯機が壊れたみたい。', 'Mesin cuci sepertinya rusak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7807_deterjen, 'Deterjen', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7807_deterjen, 'せんたくこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7807_deterjen, '洗濯粉がきれちゃった。', 'Kami kehabisan deterjen.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7808_pembersih_kering, 'Pembersih Kering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7808_pembersih_kering, 'Binatu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7808_pembersih_kering, 'せんたくや', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7808_pembersih_kering, '洗濯屋にワイシャツを取りに行ってきます。', 'Aku akan mengambil bajuku dari binatu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7809_kekeringan, 'Kekeringan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7809_kekeringan, 'Pengeringan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7809_kekeringan, 'かんそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7809_kekeringan, '乾燥対策でマスクをつけています。', 'Saya memakai masker untuk mengatasi kekeringan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7810_ketidaksabaran, 'Ketidaksabaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7810_ketidaksabaran, 'Gelisah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7810_ketidaksabaran, 'Gangguan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7810_ketidaksabaran, 'しょうそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7810_ketidaksabaran, '度重なる事業の失敗で、すっかり焦燥しきっているんだ。', 'Saya sangat kesal dengan proyek yang berulang kali gagal ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7813_botol, 'Botol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7813_botol, 'Stoples', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7813_botol, 'びん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7813_botol, '瓶ビールを一本ください。', 'Tolong, satu botol bir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7814_vas, 'Vas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7814_vas, 'Vas Bunga', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7814_vas, 'かびん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7814_vas, 'これは素敵な花瓶ですね。', 'Ini adalah vas yang indah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7815_botol_kosong, 'Botol Kosong', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7815_botol_kosong, 'あきびん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7815_botol_kosong, '空き瓶はこちらに捨ててください。', 'Tolong buang botol kosong di sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7816_koktail_molotov, 'Koktail Molotov', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7816_koktail_molotov, 'かえんびん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7816_koktail_molotov, '男は火炎瓶を投げつけた。', 'Pria itu melemparkan bom molotov.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7817_pembotolan, 'Pembotolan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7817_pembotolan, 'dalam botol', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7817_pembotolan, 'びんづめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7817_pembotolan, 'メープルシロップを瓶詰しています。', 'Saya sedang membotolkan sirup maple.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7818_untuk_sampai, 'Untuk Sampai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7818_untuk_sampai, 'Untuk membajak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7818_untuk_sampai, 'Untuk Berkultivasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7818_untuk_sampai, 'たがやす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7818_untuk_sampai, 'この機械で畑を耕すんですよ。', 'Saya akan membajak sawah dengan mesin ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7819_tanah_subur, 'Tanah subur', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7819_tanah_subur, 'こうち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7819_tanah_subur, 'この辺りには耕地が広がっています。', 'Lahan garapan tersebar di kawasan ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7820_penanaman, 'Penanaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7820_penanaman, 'Pertanian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7820_penanaman, 'こうさく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7820_penanaman, 'この土地を耕作するには許可がいります。', 'Anda memerlukan persetujuan untuk mengolah sebidang tanah ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7821_pertanian, 'Pertanian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7821_pertanian, 'Pertanian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7821_pertanian, 'のうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7821_pertanian, '僕のおじいさんは農耕をしています。', 'Kakek saya bertani.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7822_cerdas, 'Cerdas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7822_cerdas, 'Cerdas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7822_cerdas, 'Tajam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7822_cerdas, 'さとい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7822_cerdas, 'この子は本当に聡い子だよ。', 'Ini adalah anak yang sangat pintar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7823_bijak, 'Bijak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7823_bijak, 'Cerdas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7823_bijak, 'Kebijaksanaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7823_bijak, 'そうめい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7823_bijak, '聡明な子供達に恵まれてとても幸せです。', 'Saya sangat beruntung mempunyai anak yang cerdas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7823_bijak, 'こんなに聡明さと経験を兼ね備えた人材いないって。', 'Saya rasa tidak ada orang lain yang memiliki kombinasi kebijaksanaan dan pengalaman seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7823_bijak, '三村崇は非常に聡明な少年だった。', 'Takashi Mimura adalah anak yang sangat bijaksana.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7824_afirmasi, 'Afirmasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7824_afirmasi, 'Menegaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7824_afirmasi, 'Positif', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7824_afirmasi, 'こうてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7824_afirmasi, 'どうして肯定も否定もしないんですか。', 'Mengapa Anda tidak mengonfirmasi atau menyangkalnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7824_afirmasi, 'まずは自分を肯定してみてください。', 'Pertama-tama, cobalah untuk menegaskan diri Anda sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7824_afirmasi, 'その肯定の気持ち、これからも大切にしてね。', 'Pertahankan rasa penegasan itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7825_gemuk, 'Gemuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7825_gemuk, 'Gemuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7825_gemuk, 'Lapisan lemak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7825_gemuk, 'しぼう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7825_gemuk, '太ももの脂肪を落としたいんです。', 'Saya ingin menghilangkan lemak di paha saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7826_damar, 'Damar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7826_damar, 'じゅし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7826_damar, 'これを透明の樹脂で固めました。', 'Ini dikeraskan dengan resin transparan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7827_kulit, 'Kulit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7827_kulit, 'ひふ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7827_kulit, 'ギターを弾くので指先の皮膚が厚いんです。', 'Kulit di ujung jari saya tebal karena saya bermain gitar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7828_bibit, 'Bibit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7828_bibit, 'なえ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7828_bibit, '四月に苗を植えました。', 'Saya menanam bibit pada bulan April.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7829_nama_belakang, 'Nama belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7829_nama_belakang, 'Nama keluarga', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7829_nama_belakang, 'みょうじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7829_nama_belakang, 'その苗字、初めて聞きました。', 'Itulah pertama kalinya aku mendengar nama keluarga itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7830_teratai, 'Teratai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7830_teratai, 'Teratai Suci', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7830_teratai, 'はす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7830_teratai, '蓮の花の花言葉は何ですか。', 'Apa arti teratai suci dalam bahasa bunga?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7831_bunga_teratai, 'Bunga Teratai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7831_bunga_teratai, 'Vetch Susu Cina', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7831_bunga_teratai, 'sendok ramen', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7831_bunga_teratai, 'れんげ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7831_bunga_teratai, 'この池にはいつから蓮花があるのですか。', 'Sudah berapa lama bunga teratai berada di kolam ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7832_untuk_menutupi, 'Untuk Menutupi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7832_untuk_menutupi, 'Untuk Menyembunyikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7832_untuk_menutupi, 'Untuk Menyembunyikan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7832_untuk_menutupi, 'おおう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7832_untuk_menutupi, '私の庭は落ち葉に覆われています。', 'Kebunku dipenuhi dedaunan yang berguguran.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7833_kesucian, 'Kesucian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7833_kesucian, 'Kebajikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7833_kesucian, 'Kesetiaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7833_kesucian, 'ていせつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7833_kesucian, '彼女は最後まで貞節を守ったんだ。', 'Dia melindungi kesuciannya sampai akhir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7834_kesucian, 'Kesucian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7834_kesucian, 'Kebajikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7834_kesucian, 'Kesetiaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7834_kesucian, 'ていそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7834_kesucian, 'あの男が彼女の貞操を奪ったのよ。', 'Pria itu merampas kebajikannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7835_tidak_setia, 'Tidak setia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7835_tidak_setia, 'Ketidaksetiaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7835_tidak_setia, 'ふてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7835_tidak_setia, '妻が不貞をはたらいたので、離婚しました。', 'Istri saya tidak setia sehingga kami bercerai.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7838_fleksibel, 'Fleksibel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7838_fleksibel, 'Lembut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7838_fleksibel, 'じゅうなん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7838_fleksibel, 'このホテルは色々な要望に柔軟に対応してくれます。', 'Hotel ini secara fleksibel menangani berbagai permintaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7839_tahanan_rumah, 'Tahanan rumah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7839_tahanan_rumah, 'なんきん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7839_tahanan_rumah, '彼女は自宅軟禁下に置かれました。', 'Dia ditempatkan di bawah tahanan rumah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7840_tempat_tinggal_pribadi, 'Tempat Tinggal Pribadi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7840_tempat_tinggal_pribadi, 'してい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7840_tempat_tinggal_pribadi, 'この豪華な建物は、大統領の私邸です。', 'Bangunan cantik ini adalah kediaman pribadi presiden.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7841_rumah_dinas, 'Rumah dinas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7841_rumah_dinas, 'かんてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7841_rumah_dinas, '首相官邸ツアーに参加しました。', 'Saya berpartisipasi dalam tur ke kediaman resmi Perdana Menteri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7842_rumah_dinas, 'Rumah dinas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7842_rumah_dinas, 'こうてい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7842_rumah_dinas, '大統領公邸が何者かに襲撃されました。', 'Rumah dinas Presiden digerebek seseorang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7843_rumah_besar, 'Rumah besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7843_rumah_besar, 'Tempat tinggal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7843_rumah_besar, 'ていたく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7843_rumah_besar, 'この邸宅は、幽霊が出ることで有名です。', 'Rumah besar ini terkenal dengan hantu yang muncul di dalamnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7844_alasan, 'Alasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7844_alasan, 'Tempat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7844_alasan, 'ていない', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7844_alasan, 'これは、邸内の写真です。', 'Ini adalah gambar halamannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7845_pinggiran_kota, 'Pinggiran kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7845_pinggiran_kota, 'Pinggiran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7845_pinggiran_kota, 'こうがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7845_pinggiran_kota, '都心と郊外、どちらに住みたいですか。', 'Apakah Anda lebih suka tinggal di pusat kota atau pinggiran kota?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7846_pinggiran_kota, 'Pinggiran kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7846_pinggiran_kota, 'Pinggiran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7846_pinggiran_kota, 'きんこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7846_pinggiran_kota, '私は東京近郊に住んでいます。', 'Saya tinggal di pinggiran kota Tokyo.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7847_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7847_daerah, 'Daerah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7847_daerah, 'ぐん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7847_daerah, '現在、郡は地名に使われることが多い。', 'Kata "kabupaten" kini sering digunakan dalam nama tempat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7848_penjelasan, 'Penjelasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7848_penjelasan, 'Pemulihan nama baik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7848_penjelasan, 'しゃくめい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7848_penjelasan, 'これについて、正式に釈明をする必要がある。', 'Anda perlu menjelaskan hal ini secara formal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7849_catatan, 'Catatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7849_catatan, 'Komentar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7849_catatan, 'Komentar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7849_catatan, 'Anotasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7849_catatan, 'ちゅうしゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7849_catatan, 'その場合は、注釈を付けてください。', 'Jika demikian, harap tambahkan catatan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7850_mengangguk, 'Mengangguk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7850_mengangguk, 'Salam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7850_mengangguk, 'Busur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7850_mengangguk, 'えしゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7850_mengangguk, '会釈をしたら会釈を返すのが礼儀でしょう。', 'Anda mungkin memiliki kesopanan untuk membalas anggukan saya dengan anggukan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7851_penjelasan, 'Penjelasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7851_penjelasan, 'Interpretasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7851_penjelasan, 'かいしゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7851_penjelasan, 'その解釈は間違っていると思います。', 'Menurut saya penjelasan itu salah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7852_sudut, 'Sudut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7852_sudut, 'Sudut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7852_sudut, 'Reses', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7852_sudut, 'すみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7852_sudut, 'この部屋の隅に、少女の霊がいます。', 'Ada hantu seorang gadis di sudut ruangan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7853_sudut, 'Sudut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7853_sudut, 'Sudut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7853_sudut, 'かたすみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7853_sudut, 'そのことが心の片隅にずっと引っかかっていたんです。', 'Hal itu selalu melekat di sudut pikiran saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7854_empat_sudut, 'Empat Sudut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7854_empat_sudut, 'よすみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7854_empat_sudut, '写真の四隅を暗く加工するにはどうすればいいのか教えてください。', 'Bisakah Anda mengajari saya proses terbaik untuk membuat keempat sudut gambar menjadi gelap?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7855_sudut, 'sudut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7855_sudut, 'Sudut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7855_sudut, 'すみずみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7855_sudut, '今日は部屋を隅々まで掃除しました。', 'Hari ini aku membersihkan setiap sudut dan celah kamarku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7856_konter_kapal, 'Konter Kapal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7856_konter_kapal, 'Konter Untuk Kapal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7856_konter_kapal, 'せき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7856_konter_kapal, '港には、七隻の船が止まっています。', 'Tujuh kapal berhenti di pelabuhan ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7857_menerima_dengan_rendah_hati, 'Menerima dengan Rendah Hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7857_menerima_dengan_rendah_hati, 'Menerima Dengan Rendah Hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7857_menerima_dengan_rendah_hati, 'Untuk Makan dengan Rendah Hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7857_menerima_dengan_rendah_hati, 'Untuk Minum dengan Rendah Hati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7857_menerima_dengan_rendah_hati, 'いただく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7857_menerima_dengan_rendah_hati, 'お祝いを頂き、本当に有難うございます。', 'Terima kasih banyak atas ucapan selamat Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7858_puncak, 'Puncak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7858_puncak, 'さんちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7858_puncak, '富士山の山頂には住所がありません。', 'Tidak ada alamat untuk puncak Gunung Fuji.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7859_kerah, 'Kerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7859_kerah, 'Kelapak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7859_kerah, 'Leher', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7859_kerah, 'えり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7859_kerah, '襟が曲がっていますよ。', 'Kerahmu terpelintir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8813_untuk_mencuci, 'Untuk mencuci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8813_untuk_mencuci, 'Untuk Mencuci', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8813_untuk_mencuci, 'せんたくする', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8813_untuk_mencuci, 'セーターをお湯で洗濯したら縮んでしまった。', 'Saya mencuci sweter saya dengan air panas dan sweter itu menyusut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8813_untuk_mencuci, '洗濯が好きだと言っていたから結婚したのに、今まで一度も洗濯をしてくれたことがありません。', 'Aku menikah dengannya karena dia bilang dia suka mencuci pakaian, tapi dia masih belum melakukannya sekali pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8813_untuk_mencuci, '「俺のワイシャツ、今洗濯してる？」「ああ、それなら口紅が付いていたので洗濯屋さんに出しておいたわよ。」', '"Apakah baju putihku sedang dicuci?" "Oh, yang itu ada lipstiknya, jadi aku membawanya ke binatu."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8891_keburu, 'Keburu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8891_keburu, 'Gegabah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8891_keburu, 'Sibuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8891_keburu, 'Sibuk sekali', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8891_keburu, 'あわただしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8891_keburu, '十二月はレストランにとって慌ただしい時期だ。', 'Desember adalah musim sibuk bagi restoran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8891_keburu, '本当、カツオくんのお姉さんって慌ただしい性格ね。', 'Serius, kakak perempuanmu orang yang sangat panik, Katsuo-kun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8891_keburu, '出発が慌ただしく、コーヒーも飲めなかった。', 'Itu adalah keberangkatan yang tergesa-gesa. Aku bahkan tidak sempat minum secangkir kopi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8893_depresi_hebat, 'Depresi Hebat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8893_depresi_hebat, 'せかいきょうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8893_depresi_hebat, '私の祖父は世界恐慌が起きた年に生まれました。', 'Kakek saya lahir pada tahun terjadinya Depresi Hebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8893_depresi_hebat, '世界恐慌は様々な国に影響を与えた。', 'Depresi Hebat mempengaruhi banyak negara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8893_depresi_hebat, '世界恐慌は失業率と共に自殺率までも上げた。', 'Depresi Hebat meningkatkan angka pengangguran dan bahkan angka bunuh diri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9001_untuk_memanggang, 'Untuk Memanggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9001_untuk_memanggang, 'Untuk bersulang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9001_untuk_memanggang, 'いる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9001_untuk_memanggang, 'どうやってコーヒー豆を煎るんですか？', 'Bagaimana cara memanggang biji kopi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9001_untuk_memanggang, 'フライパンでピーナッツを煎りました。', 'Saya memanggang kacang dalam wajan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9001_untuk_memanggang, 'ココナッツを煎ると食感がよくなります。', 'Jika Anda memanggang kelapa, teksturnya menjadi lebih baik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9100_ryohei, 'Ryohei', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9100_ryohei, 'りょうへい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9100_ryohei, '亮平は人気のある男の子の名前です。', 'Ryohei adalah nama populer untuk anak laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9100_ryohei, 'この間、日本の有名な俳優の鈴木亮平を間近で見たよ。', 'Saya melihat aktor terkenal Jepang Suzuki Ryohei dari dekat beberapa hari yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9100_ryohei, '亮平君は漫画が好きで、東京に出て絵の勉強をしたいと思っています。', 'Ryohei-kun menyukai manga dan dia ingin pergi ke Tokyo untuk belajar menggambar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9299_keran, 'Keran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9299_keran, 'Mengetuk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9299_keran, 'じゃぐち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9299_keran, '蛇口がちゃんと閉まってなかったよ！', 'Keran tidak ditutup dengan benar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9299_keran, 'ホースの蛇口が壊れて水が止まらなくなってるんだ。', 'Keran selangnya rusak dan airnya tidak mau berhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9299_keran, 'ちょっと、蛇口から直接飲むのはやめてって言ってるじゃん！', 'Hei, aku sudah bilang padamu untuk berhenti minum langsung dari keran!');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_466_lagi, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2120_kebesaran, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2120_kebesaran, id FROM items WHERE character = '韋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2121_puncak, id FROM items WHERE character = '丁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2121_puncak, id FROM items WHERE character = '頁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2122_panggilan, id FROM items WHERE character = '召' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2123_taruh_di_antara, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2123_taruh_di_antara, id FROM items WHERE character = '夫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2123_taruh_di_antara, id FROM items WHERE character = '丷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2124_melayu, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2124_melayu, id FROM items WHERE character = '古' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2125_mendidihkan, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2125_mendidihkan, id FROM items WHERE character = '弗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2126_mencuci, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2126_mencuci, id FROM items WHERE character = 'ヨ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2126_mencuci, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2127_mengering, id FROM items WHERE character = '火' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2127_mengering, id FROM items WHERE character = '喿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2128_botol, id FROM items WHERE character = '丷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2128_botol, id FROM items WHERE character = '开' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2128_botol, id FROM items WHERE character = '万' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2128_botol, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2128_botol, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2129_membajak, id FROM items WHERE character = '耒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2129_membajak, id FROM items WHERE character = '井' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2130_perjanjian, id FROM items WHERE character = '止' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2130_perjanjian, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2131_gemuk, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2131_gemuk, id FROM items WHERE character = '匕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2131_gemuk, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2132_kulit, id FROM items WHERE character = '虍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2132_kulit, id FROM items WHERE character = '胃' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2134_lembut, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2134_lembut, id FROM items WHERE character = '欠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2135_pinggiran_kota, id FROM items WHERE character = '交' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2135_pinggiran_kota, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2136_sudut, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2136_sudut, id FROM items WHERE character = '禺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2137_konter_kapal, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2137_konter_kapal, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2138_tempat_tinggal, id FROM items WHERE character = '氏' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2138_tempat_tinggal, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2138_tempat_tinggal, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2139_daerah, id FROM items WHERE character = '君' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2139_daerah, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2140_penjelasan, id FROM items WHERE character = '釆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2140_penjelasan, id FROM items WHERE character = '尺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2141_gemuk, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2141_gemuk, id FROM items WHERE character = '方' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2142_berteriak, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2142_berteriak, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2142_berteriak, id FROM items WHERE character = '儿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2142_berteriak, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2143_putri, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2143_putri, id FROM items WHERE character = '爰' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2144_kesucian, id FROM items WHERE character = 'ト' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2144_kesucian, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2146_bibit, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2146_bibit, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2147_pusaran_air, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2147_pusaran_air, id FROM items WHERE character = '冋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2148_belas_kasihan, id FROM items WHERE character = '丷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2148_belas_kasihan, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2148_belas_kasihan, id FROM items WHERE character = '幺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2148_belas_kasihan, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2149_kerah, id FROM items WHERE character = '衤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2149_kerah, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2149_kerah, id FROM items WHERE character = '示' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2150_teratai, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2150_teratai, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2150_teratai, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2151_jernih, id FROM items WHERE character = '亠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2151_jernih, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2151_jernih, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2151_jernih, id FROM items WHERE character = '儿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2152_bijak, id FROM items WHERE character = '耳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2152_bijak, id FROM items WHERE character = '公' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2152_bijak, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2153_teluk, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2153_teluk, id FROM items WHERE character = '甫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2154_gundukan, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2154_gundukan, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2154_gundukan, id FROM items WHERE character = '豕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2516_lagi, k_466_lagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3363_kerabat_darah, id FROM items WHERE character = '血' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3363_kerabat_darah, id FROM items WHERE character = '族' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3967_penyebab_internal, id FROM items WHERE character = '内' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3967_penyebab_internal, id FROM items WHERE character = '因' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4030_resep, id FROM items WHERE character = '薬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4030_resep, id FROM items WHERE character = '方' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4256_sisa, id FROM items WHERE character = '残' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4256_sisa, id FROM items WHERE character = '余' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4667_hukum, id FROM items WHERE character = '法' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4667_hukum, id FROM items WHERE character = '規' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4913_terlibat_dalam_pekerjaan, id FROM items WHERE character = '従' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4913_terlibat_dalam_pekerjaan, id FROM items WHERE character = '業' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_5286_permohonan, id FROM items WHERE character = '請' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_5286_permohonan, id FROM items WHERE character = '願' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7157_ancaman, id FROM items WHERE character = '脅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7494_berirama, id FROM items WHERE character = '律' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7494_berirama, id FROM items WHERE character = '動' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7494_berirama, id FROM items WHERE character = '的' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7783_orang_hebat, k_2120_kebesaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7783_orang_hebat, id FROM items WHERE character = '人' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7784_kebesaran, k_2120_kebesaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7784_kebesaran, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7785_besar, k_2120_kebesaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7786_perhitungan, id FROM items WHERE character = '勘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7786_perhitungan, id FROM items WHERE character = '定' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7787_untuk_menelepon, k_2122_panggilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7788_membangkitkan, k_2142_berteriak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7788_membangkitkan, id FROM items WHERE character = '起' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7789_berteriak, k_2142_berteriak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7790_memanggil, k_2122_panggilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7790_memanggil, k_2142_berteriak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7791_gundukan, k_2154_gundukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7792_prefektur_ehime, id FROM items WHERE character = '愛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7792_prefektur_ehime, k_2143_putri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7792_prefektur_ehime, id FROM items WHERE character = '県' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7793_kasih_sayang, k_2148_belas_kasihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7793_kasih_sayang, id FROM items WHERE character = '悲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7794_kasih_sayang, k_2148_belas_kasihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7794_kasih_sayang, id FROM items WHERE character = '愛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7795_amal, k_2148_belas_kasihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7795_amal, id FROM items WHERE character = '善' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7796_untuk_menempatkan_antara, k_2123_taruh_di_antara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7797_mengering, k_2124_melayu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7797_mengering, id FROM items WHERE character = '渇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7798_menjadi_layu, k_2124_melayu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7799_untuk_merebus, k_2125_mendidihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7800_titik_didih, k_2125_mendidihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7800_titik_didih, id FROM items WHERE character = '点' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7801_teluk, k_2153_teluk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7802_untuk_merendam, id FROM items WHERE character = '浸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7803_pusaran_air, k_2147_pusaran_air);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7804_pusaran, k_2147_pusaran_air);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7804_pusaran, id FROM items WHERE character = '中' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7805_kelembaban, id FROM items WHERE character = '潤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7806_mesin_cuci, id FROM items WHERE character = '洗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7806_mesin_cuci, k_2126_mencuci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7806_mesin_cuci, id FROM items WHERE character = '機' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7807_deterjen, id FROM items WHERE character = '洗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7807_deterjen, k_2126_mencuci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7807_deterjen, id FROM items WHERE character = '粉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7808_pembersih_kering, id FROM items WHERE character = '洗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7808_pembersih_kering, k_2126_mencuci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7808_pembersih_kering, id FROM items WHERE character = '屋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7809_kekeringan, id FROM items WHERE character = '乾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7809_kekeringan, k_2127_mengering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7810_ketidaksabaran, id FROM items WHERE character = '焦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7810_ketidaksabaran, k_2127_mengering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7813_botol, k_2128_botol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7814_vas, id FROM items WHERE character = '花' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7814_vas, k_2128_botol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7815_botol_kosong, id FROM items WHERE character = '空' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7815_botol_kosong, k_2128_botol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7816_koktail_molotov, id FROM items WHERE character = '火' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7816_koktail_molotov, id FROM items WHERE character = '炎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7816_koktail_molotov, k_2128_botol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7817_pembotolan, k_2128_botol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7817_pembotolan, id FROM items WHERE character = '詰' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7818_untuk_sampai, k_2129_membajak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7819_tanah_subur, k_2129_membajak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7819_tanah_subur, id FROM items WHERE character = '地' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7820_penanaman, k_2129_membajak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7820_penanaman, id FROM items WHERE character = '作' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7821_pertanian, id FROM items WHERE character = '農' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7821_pertanian, k_2129_membajak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7822_cerdas, k_2152_bijak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7823_bijak, k_2152_bijak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7823_bijak, id FROM items WHERE character = '明' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7824_afirmasi, k_2130_perjanjian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7824_afirmasi, id FROM items WHERE character = '定' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7825_gemuk, k_2131_gemuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7825_gemuk, k_2141_gemuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7826_damar, id FROM items WHERE character = '樹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7826_damar, k_2131_gemuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7827_kulit, id FROM items WHERE character = '皮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7827_kulit, k_2132_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7828_bibit, k_2146_bibit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7829_nama_belakang, k_2146_bibit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7829_nama_belakang, id FROM items WHERE character = '字' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7830_teratai, k_2150_teratai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7831_bunga_teratai, k_2150_teratai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7831_bunga_teratai, id FROM items WHERE character = '花' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7832_untuk_menutupi, id FROM items WHERE character = '覆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7833_kesucian, k_2144_kesucian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7833_kesucian, id FROM items WHERE character = '節' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7834_kesucian, k_2144_kesucian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7834_kesucian, id FROM items WHERE character = '操' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7835_tidak_setia, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7835_tidak_setia, k_2144_kesucian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7838_fleksibel, id FROM items WHERE character = '柔' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7838_fleksibel, k_2134_lembut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7839_tahanan_rumah, k_2134_lembut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7839_tahanan_rumah, id FROM items WHERE character = '禁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7840_tempat_tinggal_pribadi, id FROM items WHERE character = '私' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7840_tempat_tinggal_pribadi, k_2138_tempat_tinggal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7841_rumah_dinas, id FROM items WHERE character = '官' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7841_rumah_dinas, k_2138_tempat_tinggal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7842_rumah_dinas, id FROM items WHERE character = '公' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7842_rumah_dinas, k_2138_tempat_tinggal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7843_rumah_besar, k_2138_tempat_tinggal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7843_rumah_besar, id FROM items WHERE character = '宅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7844_alasan, k_2138_tempat_tinggal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7844_alasan, id FROM items WHERE character = '内' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7845_pinggiran_kota, k_2135_pinggiran_kota);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7845_pinggiran_kota, id FROM items WHERE character = '外' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7846_pinggiran_kota, id FROM items WHERE character = '近' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7846_pinggiran_kota, k_2135_pinggiran_kota);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7847_daerah, k_2139_daerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7848_penjelasan, k_2140_penjelasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7848_penjelasan, id FROM items WHERE character = '明' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7849_catatan, id FROM items WHERE character = '注' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7849_catatan, k_2140_penjelasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7850_mengangguk, id FROM items WHERE character = '会' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7850_mengangguk, k_2140_penjelasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7851_penjelasan, id FROM items WHERE character = '解' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7851_penjelasan, k_2140_penjelasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7852_sudut, k_2136_sudut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7853_sudut, id FROM items WHERE character = '片' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7853_sudut, k_2136_sudut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7854_empat_sudut, id FROM items WHERE character = '四' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7854_empat_sudut, k_2136_sudut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7855_sudut, k_2136_sudut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7855_sudut, id FROM items WHERE character = '々' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7856_konter_kapal, k_2137_konter_kapal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7857_menerima_dengan_rendah_hati, k_2121_puncak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7858_puncak, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7858_puncak, k_2121_puncak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7859_kerah, k_2149_kerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8813_untuk_mencuci, id FROM items WHERE character = '洗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8813_untuk_mencuci, k_2126_mencuci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8891_keburu, id FROM items WHERE character = '慌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8893_depresi_hebat, id FROM items WHERE character = '世' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8893_depresi_hebat, id FROM items WHERE character = '界' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8893_depresi_hebat, id FROM items WHERE character = '恐' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8893_depresi_hebat, id FROM items WHERE character = '慌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9001_untuk_memanggang, id FROM items WHERE character = '煎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9100_ryohei, k_2151_jernih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9100_ryohei, id FROM items WHERE character = '平' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9299_keran, id FROM items WHERE character = '蛇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9299_keran, id FROM items WHERE character = '口' LIMIT 1;

END $$;