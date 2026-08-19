-- ====================================================
-- KaniGani — Seed Data Level 52 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 52) ============
  r_426_radang_dingin UUID;
  -- ============ KANJI IDs (Level 52) ============
  k_2155_menyerah UUID; k_2156_menembus UUID; k_2157_kepemimpinan UUID; k_2158_mandi UUID; k_2159_mawar_liar UUID; k_2160_merangkul UUID; k_2161_yatim_piatu UUID; k_2162_kompensasi UUID; k_2163_rantai UUID; k_2164_meletus UUID; k_2165_menguntungkan UUID; k_2166_menawarkan UUID; k_2167_memesan UUID; k_2168_menghasut UUID; k_2169_membengkak UUID; k_2170_aromatik UUID; k_2171_konstan UUID; k_2172_etika UUID; k_2173_pameran UUID; k_2174_diperlukan UUID; k_2175_bias UUID; k_2176_perlakuan UUID; k_2177_ketentuan UUID; k_2178_khususnya UUID; k_2179_terlalu_percaya_diri UUID; k_2180_mati UUID; k_2181_malas UUID; k_2182_bertemu UUID; k_2183_malas UUID; k_2184_memburu UUID; k_2185_dari UUID; k_2186_desain UUID; k_2187_cepat UUID; k_2188_elang UUID; k_2189_membantu UUID; k_9313_membangkitkan UUID;
  -- ============ VOCABULARY IDs (Level 52) ============
  v_7270_sinar_ultraviolet UUID; v_7860_wanikani UUID; v_7861_zina UUID; v_7862_etika UUID; v_7863_menjadi_bias UUID; v_7864_prasangka UUID; v_7865_berpikiran_sempit UUID; v_7866_pola_makan_tidak_seimbang UUID; v_7867_saran UUID; v_7868_letusan UUID; v_7869_asap_vulkanik UUID; v_7870_jet UUID; v_7871_air_mancur UUID; v_7872_memuntahkan UUID; v_7873_yatim_piatu UUID; v_7874_pulau_soliter UUID; v_7875_isolasi UUID; v_7876_isolasi UUID; v_7877_kemalasan UUID; v_7878_menjadi_lalai UUID; v_7879_bintang UUID; v_7880_praktek_yang_didirikan UUID; v_7881_permanen UUID; v_7882_keteguhan UUID; v_7883_kelembaman UUID; v_7884_ketahanan UUID; v_7885_kebanggaan UUID; v_7886_lambat UUID; v_7887_kelalaian UUID; v_7888_kronis UUID; v_7889_perlindungan UUID; v_7890_merangkul UUID; v_7891_dukungan UUID; v_7892_untuk_memiliki UUID; v_7893_spesial UUID; v_7894_terpuji UUID; v_7895_membuang UUID; v_7896_setelah_kematian UUID; v_7897_tewas_dalam_aksi UUID; v_7898_tenggelamnya UUID; v_7899_matahari_terbenam UUID; v_7900_membenamkan_diri UUID; v_7901_menghancurkan UUID; v_7902_penanaman UUID; v_7903_sering_muncul UUID; v_7904_kehilangan UUID; v_7905_korban UUID; v_7906_memburu UUID; v_7907_pemburu UUID; v_7908_perburuan_liar UUID; v_7909_memburu UUID; v_7910_anjing_pemburu UUID; v_7911_asal UUID; v_7912_skandal UUID; v_7913_memesan UUID; v_7914_ketentuan UUID; v_7915_sangat_besar UUID; v_7916_membengkak UUID; v_7917_ekspansi UUID; v_7918_parfum UUID; v_7919_aromatik UUID; v_7920_duri UUID; v_7921_ambisi UUID; v_7922_penaklukan UUID; v_7923_hegemoni UUID; v_7924_penguasa_tertinggi UUID; v_7925_kemenangan_beruntun UUID; v_7926_konter_sushi UUID; v_7927_satu_potong_sushi UUID; v_7928_menembus UUID; v_7929_kegigihan UUID; v_7930_untuk_melewati UUID; v_7931_bergegas UUID; v_7932_reparasi UUID; v_7933_perlakuan UUID; v_7934_bertemu UUID; v_7935_perlakuan UUID; v_7936_perlakuan_istimewa UUID; v_7937_penerimaan_dingin UUID; v_7938_lingkungan UUID; v_7939_untuk_bertemu UUID; v_7940_bencana UUID; v_7941_rantai UUID; v_7942_isolasi_nasional UUID; v_7943_blokade UUID; v_7944_penutupan UUID; v_7945_rantai UUID; v_7946_untuk_jatuh_ke UUID; v_7947_menyerah UUID; v_7948_jatuh UUID; v_7949_cacat UUID; v_7950_klise UUID; v_7951_pameran UUID; v_7952_penyataan UUID; v_7953_permohonan UUID; v_7954_elang UUID; v_7955_sangat_diperlukan UUID; v_7956_dengan_cepat UUID; v_7957_mandi UUID; v_9057_tempat_tidur_kucing UUID; v_9101_ayano UUID; v_9102_daisuke UUID; v_9315_resusitasi UUID; v_9405_permaisuri UUID;

BEGIN

  DELETE FROM items WHERE level = 52;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '夌', 'radang-dingin', 52, 1, 'Radikal ini terbuat dari tanah, kaki, dan musim dingin. Jika Anda harus mengubur kaki Anda di tanah pada musim dingin, itu mungkin karena Anda menderita <radikal>radang dingin</radikal>. Anda harus meninggalkan kaki Anda yang mati. :(')
    RETURNING id INTO r_426_radang_dingin;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_426_radang_dingin, 'Radang dingin', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陥', 'menyerah', 52, 2, '<radical>Bangunan</radikal> ini adalah <radical>bekas</radikal> <radikal>penjara</radikal> hingga <kanji>gua di</kanji>. Anda tahu, penjara tidak dibangun dengan hati-hati, mereka hanya berusaha menyelesaikannya dengan cukup cepat agar bisa menampung orang di sana. Jadi meskipun Anda dapat mengetahui bahwa ini dulunya adalah sebuah bangunan, namun sudah pasti ini bukan penjara lagi, karena semuanya sudah runtuh.', 'Anda terus membayangkan <kanji>gua di</kanji> dan Anda melihat Jenghis <reading>Khan</reading> (かん) memanjat reruntuhan. Dialah yang merobohkan penjara ini! Dan dia akan datang ke kotamu selanjutnya!')
    RETURNING id INTO k_2155_menyerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貫', 'menembus', 52, 3, 'Di bawah <radical>jendela</radical>, letakkan <radical>kerang</radical>, lalu tutup jendelanya untuk <kanji>menembus</kanji> cangkang kerasnya. Saya jamin, ini cara terbaik untuk menusuk anggota keluarga kerang.

Kanji ini juga memiliki arti kedua. Kerang yang kamu tusuk dengan jendela itu sekarang menjadi dua bagian. Anda bisa menggunakan bagiannya sebagai piring untuk sushi. Jika Anda menghitung cangkang yang pecah, Anda akan mengetahui berapa banyak sushi yang Anda miliki. Itu menjadikan mereka <kanji>penghitung sushi</kanji>!', 'Sekarang kerangmu sudah <kanji>ditembus</kanji> dengan benar dan diubah menjadi <kanji>penghitung sushi</kanji>, kamu bisa menyajikannya kepada <reading>Khan</reading> (かん) Jenghis dan anak buahnya. Saya sangat berharap Anda juga menghitungnya dengan benar, karena jumlahnya banyak.')
    RETURNING id INTO k_2156_menembus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '覇', 'kepemimpinan', 52, 4, 'Naiklah <radical>helikopter</radical> yang terbuat dari <radical>kulit</radical> ke <radical>bulan</radical> untuk membuktikan <kanji>kepemimpinan</kanji> Anda yang luar biasa. Beberapa orang menyebut Anda gila, tetapi Anda akan menunjukkannya kepada mereka, saat Anda memimpin seluruh kru pilot helikopter kulit dalam misi pertama mereka ke luar angkasa!', 'Anda telah membuktikan kualitas <kanji>kepemimpinan</kanji> Anda dengan berhasil menyelesaikan misi ke bulan. "<reading>Hah</reading> (は)!" katamu kepada semua pembencimu. "Aku tahu aku bisa melakukannya - itu akan mengajarimu! Hah!"')
    RETURNING id INTO k_2157_kepemimpinan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '呂', 'mandi', 52, 5, 'Saya harap yang Anda lakukan di <radical>bathtub</radical> hanyalah <kanji>mandi</kanji>. Maksudku, kamu bisa melakukan hal lain jika kamu mau. Tapi bak mandi dibuat hanya untuk mandi!', 'Kapan Anda paling rindu <kanji>mandi</kanji>? Saat Anda berada di iklan <read>ro</reading> (ろ). Bepergian memang menyenangkan, tetapi ketika Anda terjebak di dalam mobil, menempuh jalan tanah selama berhari-hari, yang ingin Anda lakukan hanyalah mandi dalam waktu lama.')
    RETURNING id INTO k_2158_mandi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '茨', 'mawar-liar', 52, 6, 'Jika Anda melihat <radical>bunga</radical> hal pertama yang Anda perhatikan adalah daun dan kelopaknya, maka <radical>berikutnya</radikal> hal yang Anda perhatikan adalah <kanji>briar</kanji>. Anda tidak pernah melihat <kanji>duri</kanji> pertama kali, hanya setelah Anda melihat bunganya.', 'Ketika kamu melihat <kanji>briar</kanji> kamu pasti akan berteriak, <reading>Eee! Ba riar</reading>! (いばら)! Kamu terdengar lucu karena jarimu tertusuk saat berteriak. Aduh!')
    RETURNING id INTO k_2159_mawar_liar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '擁', 'merangkul', 52, 7, '<radical>jari</radical> Anda memegang <radical>tutup</radical> ini dan ketika Anda mengangkatnya, Anda akan melihat <radical>kotoran</radikal> <radikal>kalkun</radikal> (kalkun yang dipenuhi kotoran). Anda tidak dapat menahan diri, Anda <kanji>memeluk</kanji> kalkun.', 'Saat Anda <kanji>memeluk</kanji> kalkun yang sedih, ia mengeluarkan suara lucu dan tiba-tiba mulai buang air besar <read>yo</reading>gurt (よう) di sekujur tubuh Anda. Tapi Anda tidak ingin berhenti menerimanya! Mungkin dia masih merasa takut. Namun semakin banyak Anda memeras, semakin cepat yogurt keluar!')
    RETURNING id INTO k_2160_merangkul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '孤', 'yatim-piatu', 52, 8, 'Dahulu kala ada <radical>melon</radical> <radical>child</radical>, yaitu seorang anak yang berbadan melon. Ketika dia lahir, orang tuanya tidak menginginkannya, sehingga dia menjadi <kanji>yatim piatu</kanji>.', 'Anak melon <kanji>yatim piatu</kanji> hanyalah seorang <membaca>子</reading> (こ).')
    RETURNING id INTO k_2161_yatim_piatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賠', 'kompensasi', 52, 9, 'Anda memberikan sekumpulan <radical>kerang</radical> kepada <radical>badut</radical> sebagai <kanji>kompensasi</kanji>. Badut itu membantumu, dan semua orang tahu badut hanya menerima kerang sebagai bentuk mata uang. Jadi kompensasi Anda adalah setumpuk kerang acak.', 'Setelah badut telah <kanji>memberi kompensasi</kanji> dengan benar, dia menatap mata Anda, satu tangan penuh kerang, tangan lainnya terangkat, dan melambai, "<reading>Sampai jumpa</reading> (ばい)" katanya. "Sampai jumpa."')
    RETURNING id INTO k_2162_kompensasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鎖', 'rantai', 52, 10, '<radical>emas</radikal> <radikal>triceratops</radical> <radikal>kerang</radikal> yang terkenal hanya berguna untuk satu hal, yaitu dibuat menjadi <kanji>rantai</kanji>. Mereka menghubungkan tanduk triceratop mereka bersama-sama dan membentuk rantai emas yang tidak bisa dipatahkan. Anda tidak bisa memakannya, karena itu emas. Jadi mereka hanya bagus dalam kemampuan merangkainya.', 'Namun, satu-satunya cara untuk memutus <kanji>rantai</kanji> adalah dengan memotongnya menggunakan <reading>gergaji</reading> (さ). Begitu kerang emas triceratops mulai bertahan, mereka tidak pernah melepaskannya. Jadi ketika ingin melepas rantainya, kamu harus benar-benar memotongnya dengan gergaji.')
    RETURNING id INTO k_2163_rantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '噴', 'meletus', 52, 11, 'Dari <radical>mulut</radical> Anda muncul <radical>cross</radical>, beberapa <radical>bunga</radical>, dan <radical>kerang</radical>. Semuanya <kanji>meletus</kanji> dari mulut Anda!', 'Kapan benda mati <kanji>meletus</kanji> dari mulut Anda? Biasanya ketika Anda sedang <membaca>menyenangkan</membaca> (ふん).')
    RETURNING id INTO k_2164_meletus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '祥', 'menguntungkan', 52, 12, 'Saat <radikal>roh</radikal> hidup dalam <radikal>domba</radikal> ia menjadi makhluk paling <kanji>menguntungkan</kanji> di planet ini. Cahaya bersinar darinya dan seluruh dunia menangis melihat keindahannya. Lihatlah kepala domba yang berbulu halus dan bercahaya. Tidak ada yang lebih menguntungkan dan mulia dari ini.', 'Domba roh sangat <kanji>menguntungkan</kanji> sehingga <reading>Shou</reading>gun (しょう) menyatakan hari ini sebagai hari yang paling menguntungkan sepanjang hari. Hari ketika roh domba muncul.')
    RETURNING id INTO k_2165_menguntungkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '牲', 'menawarkan', 52, 13, 'Jika Anda mengambil <radical>nyawa</radikal> sapi</radical>, Anda mengubahnya menjadi <kanji>persembahan</kanji>. Di masa lalu, nyawa sapi sering diberikan kepada para dewa sebagai persembahan.', 'Anda menyiapkan <kanji>persembahan</kanji> dengan <reading>sa</reading>ber (せい) biru suci Anda. Biasanya ini akan mengerikan, tapi pedangmu bersinar dan nyawa sapi itu melonjak ke langit tanpa kamu menyentuhnya.')
    RETURNING id INTO k_2166_menawarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '秩', 'memesan', 52, 14, 'Jika <radical>butir</radikal> memiliki <radikal>kesalahan</radikal>, ia perlu dimasukkan kembali ke dalam <kanji>urutan</kanji>. Biji-bijian harus benar-benar identik setiap saat, jika tidak maka biji-bijian tersebut akan dibuang. Itu sebabnya orang-orang khusus akan keluar dan memeriksanya untuk memastikan <kanji>keteraturan</kanji>nya. Menjaga ketertiban adalah pekerjaan yang sulit!', 'Anda selalu dapat mengetahui apakah sebuah perusahaan menepati <kanji>pesanan</kanji> atau apakah perusahaan tersebut <reading>menipu</reading> (ちつ) hanya dengan melihat butirannya.')
    RETURNING id INTO k_2167_memesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '唆', 'menghasut', 52, 15, 'Di samping <radical>mulut</radikal> Anda ada <radikal>laba-laba</radikal> jahat yang mencoba <kanji>menghasut</kanji> Anda untuk mengatakan hal-hal buruk dan memulai kerusuhan. Ini seperti dalang sutra kecil di mulut Anda atau semacamnya. Jangan biarkan hal itu menghasut Anda!', 'Anda ingin laba-laba berhenti menghasut Anda untuk mengatakan hal-hal buruk dan memulai kerusuhan. Jadi Anda mengambil <reading>gergaji</reading> (さ) dan mulai memotong benang sutra yang mengendalikan mulut Anda.')
    RETURNING id INTO k_2168_menghasut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '膨', 'membengkak', 52, 16, 'Mainkan <radical>drum</radical> Anda di bawah <radical>bulan</radical> dan <radical>rambut</radical> Anda akan <kanji>membengkak</kanji>! Semakin sering Anda bermain dan semakin lama berada di bawah bulan, rambut Anda akan semakin membengkak.', 'Dengan menggunakan metode ini, rambut Anda akan <kanji>menggembung</kanji> sedemikian rupa sehingga terlihat seperti bola <reading>busur</reading>ling (ぼう) raksasa yang berada di atas kepala Anda. Semuanya bulat, dan yah... bengkak mungkin satu-satunya kata yang cocok.')
    RETURNING id INTO k_2169_membengkak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '芳', 'aromatik', 52, 17, 'Jika Anda mengarahkan sekumpulan <radical>bunga</radical> ke <radical>arah</radical> yang sama, Anda akan dapat mencium <kanji>aromatik</kanji> <kanji>wewangian</kanji> mereka. Cara terbaik untuk menikmati keharumannya adalah dengan mengarahkan semuanya ke arah yang sama (sebaiknya lurus ke arah Anda).', 'Anda memutuskan untuk menghadirkan <kanji>aromatik</kanji> <kanji>wewangian</kanji> ini ke dalam <reading>ho</reading>saya (ほう) Anda. Untuk melakukan ini, Anda menanam bunga di sekeliling rumah Anda, semuanya menghadap ke arahnya.')
    RETURNING id INTO k_2170_aromatik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '恒', 'konstan', 52, 18, '<radical>jiwa</radikal> Anda seperti <radikal>tanah</radikal> atau <radikal>fajar</radikal>. Itu <kanji>konstan</kanji>, tidak pernah berubah.', 'Yang juga <kanji>konstan</kanji> adalah Kaisar <reading>こう</reading>いち, yang pasti akan memerintah selama seribu tahun lagi!')
    RETURNING id INTO k_2171_konstan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '倫', 'etika', 52, 19, 'Seorang <radical>pemimpin</radikal> meletakkan <radikal>topi</radikal> mereka di <radikal>tanah</radikal> di samping <radikal>rak buku</radikal>. Ini adalah ujian dalam <kanji>etika</kanji>.', 'Untuk lebih menguji <kanji>etika</kanji> Anda, pemimpin juga menuliskan <read>rin</reading>g (りん).')
    RETURNING id INTO k_2172_etika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陳', 'pameran', 52, 20, '<radical>Bangunan</radikal> di <radikal>timur</radikal> adalah sebuah <kanji>pameran</kanji>.', 'Saat ini <kanji>pameran</kanji> menampilkan banyak <reading>dagu</reading> (ちん). Dagu binatang, dagu manusia, setiap dagu yang terpikir oleh Anda ada di pameran.')
    RETURNING id INTO k_2173_pameran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '須', 'diperlukan', 52, 21, 'Mencukur <radical>rambut</radical> dari <radical>geoduck</radical> sebelum Anda mencoba memakannya sangatlah <kanji>diperlukan</kanji>. Jika tidak, rambut akan tersangkut di tenggorokan dan Anda akan tersedak. Anda perlu menghilangkan bulunya.', 'Anda juga <kanji>wajib</kanji> mengenakan <reading>su</reading>it (す) saat memakan geoduck serut. Ini adalah makanan yang sangat mewah jadi Anda memerlukan setelan jas agar Anda dapat menikmatinya dengan benar.')
    RETURNING id INTO k_2174_diperlukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '偏', 'bias', 52, 22, '<radikal>pemimpin</radikal> <radikal>perpustakaan</radikal> berpendapat bahwa semua buku di perpustakaan mereka lebih baik daripada buku orang lain. Dia orang yang sangat <kanji>bias</kanji>. Jika dia bukan pemimpin perpustakaan tertentu, dia mungkin akan merasakan hal yang berbeda.', 'Anda memutuskan untuk menyerah pada rekomendasinya yang <kanji>bias</kanji> dan melihat apa yang dia miliki di perpustakaannya. Tidak butuh waktu lama sampai Anda menyadari bahwa buku-buku ini berisi tentang <membaca>ayam</reading> (へん) dan perawatan ayam. Orang ini begitu bias terhadap buku favoritnya sehingga dia hanya memenuhi perpustakaannya dengan apa yang DIA ingin baca. Dan ternyata makhluk itu merawat ayam... aneh.')
    RETURNING id INTO k_2175_bias;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遇', 'perlakuan', 52, 23, '<radikal>skuter</radikal> kecilmu yang malang terkena <radikal>serpihan</radikal>, jadi pastikan untuk memberinya <kanji>perawatan</kanji> yang ekstra baik. 

Ini juga bisa berarti <kanji>pertemuan</kanji>. Masuk akal jika Anda memikirkan bagaimana Anda harus bertemu seseorang terlebih dahulu sebelum memutuskan bagaimana Anda akan memperlakukannya!

Selain itu, jika ini berarti "perawatan", perhatikan bahwa ini tidak mengacu pada perawatan medis, melainkan tentang cara Anda memperlakukan atau menerima orang secara pribadi.', 'Berikan <kanji>perawatan</kanji> terbaik pada skuter Anda agar skuter Anda terasa <read>goo</reading>ooood (ぐう) yang sesungguhnya.')
    RETURNING id INTO k_2176_perlakuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '糧', 'ketentuan', 52, 24, '<radical>beras</radical> yang disiapkan saat <radical>fajar</radical> oleh <radical>desa</radical> adalah <kanji>bekal</kanji> untuk tentara. Tentara dijadwalkan tiba tepat setelah fajar, jadi semua perbekalan desa untuk mereka harus sudah siap saat itu.', 'Setelah semua <kanji>perbekalan</kanji> siap, para prajurit muncul di perahu <read>baris</reading> (りょう) mereka dan memuat semuanya. Tapi itu belum selesai di sana. "Beras saja tidak cukup, kami memerlukan <reading>telur</reading> (ろう) agar kami memiliki kekuatan untuk mendayung perahu kami kembali." Jadi desa juga membawakan mereka semua telurnya.')
    RETURNING id INTO k_2177_ketentuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '殊', 'khususnya', 52, 25, 'Dalam <radical>yakuza</radical>, memiliki <radical>slide</radical> di <radical>jet</radical> Anda berarti Anda <kanji>terutama</kanji> penting dan berkuasa. Itu adalah simbol betapa luar biasa dan hebatnya Anda.', '<kanji>terutama</kanji> bos yakuza yang kuat ini memiliki slide yang seperti <reading>chu</reading>tes (しゅ) — sangat cepat dan sangat menyenangkan!')
    RETURNING id INTO k_2178_khususnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慢', 'terlalu-percaya-diri', 52, 26, 'Anda pikir Anda bisa menangkap <radical>jiwa</radikal> <radical>matahari</radikal> dalam <radical>jaringan</radikal> bahkan tanpa harus beranjak dari <radical>bangku</radikal> Anda? Itu adalah <kanji>terlalu percaya diri</kanji> yang serius, kawan. Fakta bahwa Anda ingin tetap duduk juga membuktikan <kanji>kemalasan</kanji> Anda.', '<kanji>kepercayaan diri</kanji> Anda berasal dari kecanduan <reading>man</reading>ga (まん) Anda, yang juga merupakan sumber <kanji>kemalasan</kanji> Anda. Anda berbaring di tempat tidur selama berjam-jam sehari membaca manga dan membayangkan diri Anda sebagai protagonis, dan hal itu sangat mengubah kesadaran Anda akan kenyataan. Ini mungkin mengapa Anda berpikir Anda bisa melakukan hal-hal aneh seperti menangkap jiwa matahari.')
    RETURNING id INTO k_2179_terlalu_percaya_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '没', 'mati', 52, 27, 'Jika Anda mengetahui cara menggunakan <radikal>tsunami</radikal> sebagai <radikal>senjata</radikal>, semua orang akan <kanji>mati</kanji>. Anda tidak bisa mengendalikan tsunami, bodoh. Sekarang kamu telah menghancurkan kami semua.', 'Satu-satunya cara agar tidak <kanji>mati</kanji> adalah dengan menemukan <reading>perahu</reading> (ぼつ). Selama perahu tidak terhempas oleh tsunami, Anda mungkin bisa menghindari kematian dengan berpegangan pada perahu dan tidak tenggelam.')
    RETURNING id INTO k_2180_mati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '怠', 'malas', 52, 28, 'Jika Anda memberi <radical>mesin</radical> sebuah <radical>hati</radical> ia akan menjadi <kanji>malas</kanji> dan <kanji>mengabaikan</kanji> tugasnya. Hati memberi kita emosi dan dengan emosi kita menjadi lemah. Mengapa mesin yang memiliki hati ingin bekerja lagi? Tidak. Sekarang akan menjadi malas dan lalai.', 'Mesinnya sangat <kanji>malas</kanji> bahkan mulai <kanji>mengabaikan</kanji> <reading>dasi</reading> (たい). Seharusnya pakai satu, tapi terlalu malas untuk memakainya sekarang. Apakah manusia malas memakai dasi? Tidak, begitu pula mesin yang lalai.')
    RETURNING id INTO k_2181_malas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遭', 'bertemu', 52, 29, 'Saat Anda mengendarai <radical>skuter</radical> di <radical>tanah</radical> sambil mendengarkan <radical>musik</radical> di bawah <radical>matahari</radical>, Anda pasti akan <kanji>bertemu</kanji> dengan banyak orang baru! Mereka mendengar musik Anda diputar saat Anda lewat dan mereka keluar untuk <kanji>bertemu</kanji> dengan Anda.', 'Setiap orang yang <kanji>temui</kanji> ingin menunjukkan <reading>sou</reading>l (そう) mereka kepada Anda, secara harfiah. Mereka semua keluar untuk menemui Anda, menarik kembali kulit mereka dan menunjukkan jiwa hantu di dalam diri mereka.')
    RETURNING id INTO k_2182_bertemu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '惰', 'malas', 52, 30, 'Dalam <radical>jiwa</radikal>-nya, <radikal>narwhal</radikal> yang seharusnya melakukan <radikal>konstruksi</radikal> di bawah <radikal>bulan</radikal> akan terlalu <kanji>malas</kanji> untuk melakukannya. Dan ketika jiwa Anda sedang malas, tidak mungkin Anda bisa menyelesaikan sesuatu.', 'Anda tidak bisa mengatakan kepada narwhal <kanji>malas</kanji> bahwa dia malas karena dia adalah <reading>da</reading>d (だ) Anda. Jika dia adalah orang lain, kamu akan menegurnya karena malas, tetapi kamu tidak bisa menegur ayahmu. Itu tidak benar.')
    RETURNING id INTO k_2183_malas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '猟', 'memburu', 52, 31, 'Ada <radical>hewan</radikal> di <radikal>rumput</radikal> dan <radikal>tugas</radikal> Anda yang mengerikan adalah pergi <kanji>berburu</kanji> untuk mendapatkannya.', 'Saat ini kamu sedang <kanji>berburu</kanji> di perahu <reading>barisan</reading> (りょう) dan kamu harus mendayung sepelan dan hati-hati, kalau tidak hewan tersebut akan kabur.')
    RETURNING id INTO k_2184_memburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '乃', 'dari', 52, 32, 'Apa fungsi <radical>tangga</radical>? Mereka membawa Anda <kanji>dari</kanji> tempat Anda berada, ke tempat lain. Itu adalah cara untuk berpindah <kanji>dari</kanji> satu tempat ke tempat lain.', 'Jika Anda bepergian <kanji>dari</kanji> satu tempat ke tempat lain, pastikan Anda membawa rumput laut <read>no</reading>ri (の) untuk berjaga-jaga jika Anda lapar. Nori adalah sumber energi yang hebat.')
    RETURNING id INTO k_2185_dari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '綾', 'desain', 52, 33, 'Anda menjahit sesuatu dengan <radical>benang</radikal> namun Anda dan kreasi Anda mengalami <radikal>radang dingin</radikal> saat Anda masih mengerjakannya. Untungnya butiran salju membeku di dalam kain dan berubah menjadi <kanji>desain</kanji> yang cantik. Mereka berputar-putar dan memberikan desain bersalju yang unik ke dalam kain. Ini bagus untuk Anda karena Anda tidak bisa menjahit lagi dengan tangan yang membeku.', 'Saat Anda melihat bentuk <kanji>desain</kanji> kepingan salju, Anda akan melihat huruf-huruf muncul di sudut! Mereka membentuk nama <reading>Aya</reading> (あや), artis kami di WaniKani. Entah bagaimana dia secara ajaib menyusun pola yang indah ini!')
    RETURNING id INTO k_2186_desain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '颯', 'cepat', 52, 34, 'Jika Anda <radical>berdiri</radical> di tengah <radical>angin</radical> itu akan sangat <kanji>cepat</kanji> menjatuhkan Anda. Begitu cepat sehingga Anda mungkin tidak akan menyadari bahwa anginlah yang menyebabkannya. Anda akhirnya akan berdiri hanya untuk terjatuh lagi, sama cepatnya.', 'Angin <kanji>cepat</kanji> itu lebih cepat daripada yang bisa Anda ucapkan <reading>Satsu</reading>ki (さつ). Dan "Satsuki" adalah nama yang terdengar cukup cepat. Silakan ucapkan "Satsuki" secepat yang Anda bisa sekarang. Heck, cobalah beberapa kali.')
    RETURNING id INTO k_2187_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隼', 'elang', 52, 35, 'Jika Anda mengikat <radical>salib</radikal> ke <radikal>kalkun</radikal> Anda dapat mengelabui semua orang dengan mengira itu adalah <kanji>elang</kanji>. Salib akan merentangkan sayapnya secukupnya hingga ia berhenti terlihat begitu gemuk dan seperti kalkun, menjadi burung pemangsa yang sangat keren.', 'Anda memutuskan untuk menamai <kanji>elang</kanji> baru ini dengan nama ninja favorit Anda yang mirip elang. Ryu <reading>Hayabusa</reading> (はやぶさ) dari <a href="http://en.wikipedia.org/wiki/Ryu_Hayabusa" target="_blank">Ninja Gaiden</a>! Bayangkan elang kalkun gemuk Anda dan Ryu Hayabusa memadukan gaya Banjo dan Kazooey. Ya, itulah mimpinya di sana.')
    RETURNING id INTO k_2188_elang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '輔', 'membantu', 52, 36, 'Jika Anda ingin melangsungkan <radical>pernikahan</radical> di dalam <radical>mobil</radical> Anda akan membutuhkan banyak <kanji>bantuan</kanji>. Mobil berukuran cukup kecil dibandingkan dengan pernikahan, jadi jika Anda tidak mendapatkan bantuan dari semua orang yang Anda kenal, Anda tidak akan mampu melakukannya.', 'Anda juga tidak bisa hanya meminta <kanji>bantuan</kanji> di hari pernikahan. Anda harus <read>sche</reading>dule (すけ) meminta bantuan teman Anda terlebih dahulu. Mereka mungkin juga memiliki jadwal yang cukup padat, jadi pastikan Anda membuat rencana lebih awal!')
    RETURNING id INTO k_2189_membantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蘇', 'membangkitkan', 52, 37, 'Yang kamu perlukan hanya beberapa <radical>bunga</radikal>, <radikal>ikan</radikal>, dan <radikal>biji-bijian</radikal> dan kamu akan mendapatkan ramuan yang bisa <kanji>menghidupkan</kanji> siapa saja atau apa saja!', 'Ramuan yang mampu <kanji>menghidupkan kembali</kanji> makhluk apa pun ini hanya memiliki satu kelemahan kecil: rasanya seperti <reading>jadi</reading>ap (そ).')
    RETURNING id INTO k_9313_membangkitkan;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2155_menyerah, 'Menyerah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2155_menyerah, 'かん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2155_menyerah, 'おちい', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2155_menyerah, 'おとしい', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2156_menembus, 'Menembus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2156_menembus, 'Konter Sushi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2156_menembus, 'かん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2156_menembus, 'つらぬ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2156_menembus, 'ぬき', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2156_menembus, 'ぬ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2157_kepemimpinan, 'Kepemimpinan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2157_kepemimpinan, 'は', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2157_kepemimpinan, 'はく', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2157_kepemimpinan, 'はたがしら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2158_mandi, 'Mandi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2158_mandi, 'ろ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2158_mandi, 'りょ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2158_mandi, 'せぼね', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2159_mawar_liar, 'Mawar liar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2159_mawar_liar, 'Duri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2159_mawar_liar, 'いばら', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2159_mawar_liar, 'し', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2159_mawar_liar, 'じ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2160_merangkul, 'Merangkul', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2160_merangkul, 'よう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2161_yatim_piatu, 'Yatim piatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2161_yatim_piatu, 'Sendiri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2161_yatim_piatu, 'こ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2162_kompensasi, 'Kompensasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2162_kompensasi, 'Mengimbangi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2162_kompensasi, 'ばい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2163_rantai, 'Rantai', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2163_rantai, 'さ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2163_rantai, 'くさり', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2163_rantai, 'とざ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2164_meletus, 'Meletus', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2164_meletus, 'ふん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2164_meletus, 'ふ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2165_menguntungkan, 'Menguntungkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2165_menguntungkan, 'しょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2165_menguntungkan, 'きざ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2165_menguntungkan, 'さいわ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2165_menguntungkan, 'つまび', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2165_menguntungkan, 'よ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2166_menawarkan, 'Menawarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2166_menawarkan, 'Pengorbanan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2166_menawarkan, 'せい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2167_memesan, 'Memesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2167_memesan, 'Keteraturan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2167_memesan, 'ちつ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2168_menghasut, 'Menghasut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2168_menghasut, 'さ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2168_menghasut, 'そそのか', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2168_menghasut, 'そそ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2169_membengkak, 'Membengkak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2169_membengkak, 'ぼう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2169_membengkak, 'ふく', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2170_aromatik, 'Aromatik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2170_aromatik, 'Parfum', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2170_aromatik, 'ほう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2170_aromatik, 'かんば', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2171_konstan, 'Konstan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2171_konstan, 'Selalu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2171_konstan, 'こう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2171_konstan, 'つね', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2171_konstan, 'つねに', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2172_etika, 'Etika', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2172_etika, 'りん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2173_pameran, 'Pameran', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2173_pameran, 'ちん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2173_pameran, 'ひ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2174_diperlukan, 'Diperlukan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2174_diperlukan, 'す', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2174_diperlukan, 'しゅ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2174_diperlukan, 'すべから', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2174_diperlukan, 'すべし', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2174_diperlukan, 'ひげ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2174_diperlukan, 'まつ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2174_diperlukan, 'もち', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2174_diperlukan, 'もと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2175_bias, 'Bias', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2175_bias, 'へん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2175_bias, 'かたよ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2176_perlakuan, 'Perlakuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2176_perlakuan, 'Bertemu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2176_perlakuan, 'ぐう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2176_perlakuan, 'あ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2177_ketentuan, 'Ketentuan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2177_ketentuan, 'りょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2177_ketentuan, 'ろう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2177_ketentuan, 'かて', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2178_khususnya, 'Khususnya', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2178_khususnya, 'しゅ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2178_khususnya, 'こと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2179_terlalu_percaya_diri, 'Terlalu percaya diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2179_terlalu_percaya_diri, 'Kemalasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2179_terlalu_percaya_diri, 'まん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2180_mati, 'Mati', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2180_mati, 'ぼつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2180_mati, 'もつ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2180_mati, 'おぼ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2180_mati, 'しず', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2180_mati, 'ない', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2181_malas, 'Malas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2181_malas, 'Menelantarkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2181_malas, 'たい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2181_malas, 'おこた', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2181_malas, 'なま', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2182_bertemu, 'Bertemu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2182_bertemu, 'Bertemu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2182_bertemu, 'そう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2182_bertemu, 'あ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2183_malas, 'Malas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2183_malas, 'だ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2184_memburu, 'Memburu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2184_memburu, 'りょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2184_memburu, 'かり', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2184_memburu, 'か', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2185_dari, 'Dari', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2185_dari, 'の', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2185_dari, 'なんじ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2185_dari, 'すなわ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2185_dari, 'ない', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2186_desain, 'Desain', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2186_desain, 'あや', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2186_desain, 'りん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2187_cepat, 'Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2187_cepat, 'Tiba-tiba', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2187_cepat, 'さつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2187_cepat, 'そう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2187_cepat, 'さっ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2187_cepat, 'はやて', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2188_elang, 'Elang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2188_elang, 'はやぶさ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2188_elang, 'しゅん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2188_elang, 'じゅん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2189_membantu, 'Membantu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2189_membantu, 'すけ', true, 'nanori');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2189_membantu, 'ふ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2189_membantu, 'ほ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2189_membantu, 'たす', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9313_membangkitkan, 'Membangkitkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9313_membangkitkan, 'そ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9313_membangkitkan, 'す', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_9313_membangkitkan, 'よみがえ', false, 'kunyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紫外線', 'sinar-ultraviolet', 52, 38, '<kanji>ungu</kanji> <kanji>luar</kanji> <kanji>garis</kanji> adalah spektrum warna di luar ungu. Itu adalah <vocabulary>sinar ultraviolet</vocabulary> (garisnya adalah sinarnya).

紫外線 adalah istilah teknis, tetapi Anda akan sering menemukannya dalam konteks 紫外線対策 (perlindungan UV) sehari-hari seperti laporan cuaca, perawatan kulit, atau pembicaraan kesehatan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari pembacaan on''yomi dari 紫 kanji, jadi inilah mnemonik untuk membantu Anda mengingat:

Tahukah Anda hewan apa yang memiliki perlindungan terbaik dari <vocabulary>sinar ultraviolet</vocabulary>? <reading>Shee</reading>p (し), tentu saja. Wol tebal mereka adalah perlindungan UV terbaik. Maksud saya, Anda belum pernah melihat domba disamak dan terbakar sinar matahari, bukan?')
    RETURNING id INTO v_7270_sinar_ultraviolet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鰐蟹', 'wanikani', 52, 39, 'Ini dia. Anda akhirnya di sini. <a href="https://www.youtube.com/watch?v=q5th225wgsk" target="_blank">Inilah momen di mana Anda mempelajari arti sebenarnya di balik WaniKani!</a>', 'Anda seharusnya bisa membaca ini sendiri. Dan serius... jika kamu salah paham, kami akan datang ke rumahmu dan menatapmu dengan ekspresi sangat, sangat kecewa di wajah kami. Jangan mengecewakan kami, anak-anak.')
    RETURNING id INTO v_7860_wanikani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不倫', 'zina', 52, 40, 'Jika Anda <kanji>tidak</kanji> memiliki <kanji>etika</kanji> apa pun, Anda mungkin akan melakukan sesuatu yang buruk, seperti melakukan <vocabulary>perzinahan</vocabulary> atau <vocabulary>perselingkuhan</vocabulary>. Biasanya hanya orang yang tidak etis saja yang selingkuh dari pasangannya, bukan?

Berbeda dengan 浮気, yang dapat berarti perselingkuhan dalam berkencan atau menikah, 不倫 berarti perzinahan dalam pernikahan. Kedengarannya jauh lebih serius (dan mempunyai konsekuensi yang jauh lebih besar). Pada dasarnya, semua 不倫 adalah 浮気, tetapi tidak semua 浮気 adalah 不倫… Kedua-duanya buruk, tetapi ada biaya hukumnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7861_zina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '倫理', 'etika', 52, 41, '<kanji>Etika</kanji> dan <kanji>akal</kanji> yang menyatu dalam diri seseorang membuat mereka memiliki <vocabulary>etika</vocabulary> dan <vocabulary>moral</vocabulary> yang sangat kuat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7862_etika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偏る', 'menjadi-bias', 52, 42, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>bias</kanji>, jadi versi kata kerjanya adalah <vocabulary>to be bias</vocabulary> atau <vocabulary>to beprasangka</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda bertemu seseorang yang mengaku <vocabulary>bias</vocabulary> tentang segala hal. Kamu tanya alasannya dan mereka bilang, "Aku <reading>cutter, yo</reading> (かたよ)! Aku potong semuanya jadi dua dan hanya suka salah satunya. Tapi menurutku, kalau kamu mau bilang itu bias, silakan saja, kawan." Hah, oke.')
    RETURNING id INTO v_7863_menjadi_bias;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偏見', 'prasangka', 52, 43, 'Cara <kanji>bias</kanji> dalam <kanji>melihat</kanji> juga dikenal sebagai <vocabulary>prasangka</vocabulary>, atau hanya <vocabulary>bias</vocabulary>.

偏見 sering digunakan untuk menggambarkan penilaian atau opini yang tidak adil berdasarkan stereotip, bukan fakta.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7864_prasangka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偏狭', 'berpikiran-sempit', 52, 44, '<kanji>Sempit</kanji> <kanji>bias</kanji> dianggap <vocabulary>berpikiran sempit</vocabulary> dan mereka biasanya tidak disukai karena <vocabulary>intoleransi</vocabulary> mereka terhadap budaya lain dan apa pun yang asing bagi mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 狭, jadi inilah mnemonik untuk membantu Anda:

Satu-satunya tempat yang akan dikunjungi oleh orang-orang <reading>berpikiran sempit</vocabulary> di Jepang adalah <reading>Kyo</reading>to (きょう). Itu adalah tempat yang diperintahkan oleh semua pemandu wisata, dan mereka terlalu berpikiran sempit untuk mendengarkan orang lain. Jadi mereka melihat Kyoto dan langsung pulang ke rumah tanpa melihat tempat lain.')
    RETURNING id INTO v_7865_berpikiran_sempit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '偏食', 'pola-makan-tidak-seimbang', 52, 45, 'Orang yang <kanji>bias</kanji> terhadap apa yang mereka <kanji>makan</kanji> biasanya hanya makan makanan manis seperti permen dan es krim. <vocabulary>pilih-pilih makan</vocabulary> ini memberi mereka <vocabulary>diet yang tidak seimbang</vocabulary>. Permen dan es krim boleh saja, tetapi Anda juga harus terbuka untuk mengonsumsi makanan lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7866_pola_makan_tidak_seimbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '示唆', 'saran', 52, 46, 'Seseorang yang cenderung <kanji>menunjukkan</kanji> dan <kanji>menghasut</kanji> akan memiliki banyak <vocabulary>saran</vocabulary> untuk orang lain. Dengan memberikan <vocabulary>petunjuk</vocabulary>, mereka dapat menunjukkan masalah dan memicu perkelahian di antara orang-orang. <kosakata>implikasinya</vocabulary> mereka sangat merugikan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 示, jadi inilah mnemonik untuk membantu Anda:

Seseorang terus mendatangi Anda untuk memberikan <vocabulary>saran</vocabulary> dan memberikan <vocabulary>petunjuk</vocabulary> bahwa Anda harus membeli <reading>shee</reading>p (し). Hal ini sering terjadi sehingga Anda akhirnya memutuskan untuk mengambil tangan pemberi petunjuk dan... astaga, itu sebuah kesalahan. Mereka seekor domba!')
    RETURNING id INTO v_7867_saran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '噴火', 'letusan', 52, 47, 'Ketika gunung berapi <kanji>erupsi</kanji> dengan <kanji>api</kanji> maka akan terjadi <vocabulary>erupsi</vocabulary> yang sangat besar. Anda mungkin harus mulai berlari.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7868_letusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '噴煙', 'asap-vulkanik', 52, 48, 'Terkadang gunung berapi <kanji>erupsi</kanji> hanya dengan <kanji>asap</kanji>, bukan lava atau api. Itu disebut <vocabulary>asap vulkanik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7869_asap_vulkanik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '噴射', 'jet', 52, 49, 'Ketika sesuatu <kanji>meletus</kanji> dan <kanji>menembakkan</kanji> sekumpulan air atau lava, ia akan keluar dalam <vocabulary>jet</vocabulary> yang sangat besar dan <vocabulary>menyemprotkan</vocabulary> segalanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7870_jet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '噴水', 'air-mancur', 52, 50, '<kanji>Air</kanji> <kanji>memancar</kanji> dari <vocabulary>air mancur</vocabulary>. Terkadang letusannya besar dan terkadang kecil, namun letusannya selalu menyenangkan untuk dilihat dan dinikmati di musim panas.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7871_air_mancur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '噴出', 'memuntahkan', 52, 51, 'Ketika sesuatu <kanji>meletus</kanji> keluar dari <kanji>keluar</kanji> biasanya ia harus berjuang cukup keras untuk mencapai pintu keluar tersebut. Itu sebabnya ia berakhir <vocabulary>muntahkan</vocabulary> dan <vocabulary>memancar</vocabulary> ke mana-mana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7872_memuntahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '孤児', 'yatim-piatu', 52, 52, '<kanji>yatim</kanji> <kanji>anak</kanji> sayangnya masih merupakan <vocabulary>yatim piatu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7873_yatim_piatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '孤島', 'pulau-soliter', 52, 53, '<kanji>yatim piatu</kanji> <kanji>pulau</kanji> adalah pulau yang sendirian, tanpa teman atau keluarga di pulau lain. Itulah yang menjadikannya <vocabulary>pulau terpencil</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 島, jadi inilah mnemonik untuk membantu Anda:

Ada beberapa <vocabulary>pulau terpencil</vocabulary> di lepas pantai Jepang yang sebenarnya dianggap sebagai bagian dari <reading>To</reading>kyo (とう). Biasanya orang mengira Tokyo hanyalah kota besar di daratan, padahal Tokyo juga mencakup pulau-pulau kecil yang sepi!')
    RETURNING id INTO v_7874_pulau_soliter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '孤独', 'isolasi', 52, 54, 'Seorang <kanji>yatim piatu</kanji> yang <kanji>sendirian</kanji> terjebak dalam dunia <vocabulary>isolasi</vocabulary> dan <vocabulary>kesepian</vocabulary>. Tidak memiliki orang tua saja sudah cukup sulit, namun tidak memiliki orang lain bahkan lebih menyedihkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7875_isolasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '孤立', 'isolasi', 52, 55, 'Ketika <kanji>anak yatim</kanji> berdiri</kanji>, mereka berdiri dalam <vocabulary>isolasi</vocabulary> — <vocabulary>sendirian</vocabulary> dan <vocabulary>tanpa teman</vocabulary>. Anak yatim piatu tidak memiliki orang tua, jadi dunia ini bisa menjadi tempat yang kejam bagi mereka. Sungguh menyedihkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7876_isolasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '怠惰', 'kemalasan', 52, 56, 'Orang yang <kanji>malas</kanji>, <kanji>malas</kanji> diganggu dengan <vocabulary>kemalasan</vocabulary> yang tidak ada habisnya. Mereka menghabiskan hari-hari mereka dalam <vocabulary>kemalasan</vocabulary>, sepenuhnya dirundung <vocabulary>kemalasan</vocabulary>.

怠惰 adalah kata formal yang kemungkinan besar Anda lihat dalam tulisan. Ini menggambarkan seseorang yang biasanya menghindari usaha atau tanggung jawab, sehingga ini menunjukkan karakter atau sikap umum seseorang dan bukan satu contoh kemalasan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7877_kemalasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '怠る', 'menjadi-lalai', 52, 57, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Anda telah mengetahui bahwa kanji berarti "malas", namun bisa juga berarti <kanji>mengabaikan</kanji>, jadi kata kerjanya berarti <vocabulary>lalai</vocabulary> atau <vocabulary>mengabaikan</vocabulary> sesuatu.

怠る adalah kata yang relatif formal untuk gagal melaksanakan suatu tanggung jawab, baik karena sengaja atau karena kelupaan atau kelalaian. Anda akan melihatnya dalam konteks seperti 義務を怠る (mengabaikan tugas) atau 注意を怠る (tidak berhati-hati).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda mempunyai kecenderungan <vocabulary>yang buruk untuk lalai</vocabulary> dalam membayar orang lain, sehingga Anda <reading>berhutang seperempat</reading>s (おこた) kepada hampir semua orang yang Anda kenal. Anda berutang seperempat kepada rekan kerja Anda karena melihat Anda di mesin penjual otomatis kemarin, dan Anda berhutang seperempat kepada teman Anda untuk semua permainan hoki udara di arcade akhir pekan lalu. Berhentilah lalai dengan hutang Anda!')
    RETURNING id INTO v_7878_menjadi_lalai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恒星', 'bintang', 52, 58, '<kanji>konstan</kanji> <kanji>bintang</kanji> adalah bintang yang menetap di satu tempat. Itu hanyalah <vocabulary>bintang</vocabulary> biasa, seperti bintang utara atau matahari kita, bukan komet atau asteroid.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7879_bintang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恒例', 'praktek-yang-didirikan', 52, 59, '<kanji>Constant</kanji> <kanji>contoh</kanji> yang Anda gunakan sepanjang waktu akhirnya menjadi bagian dari <vocabulary>praktik yang sudah mapan</vocabulary>. Anda terus-menerus menggunakannya sehingga tetap seperti itu setelah beberapa saat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7880_praktek_yang_didirikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恒久', 'permanen', 52, 60, 'Sesuatu yang <kanji>konstan</kanji> untuk <kanji>waktu yang lama</kanji> menjadi <vocabulary>permanen</vocabulary>. Meninggalkan sepatu di trotoar dalam waktu lama? Terjebak secara permanen di sana. Terus-menerus memasang wajah bodoh? Terjebak secara permanen seperti itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7881_permanen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恒常', 'keteguhan', 52, 61, 'Menjaga segala sesuatunya <kanji>konstan</kanji> dan <kanji>normal</kanji> memastikan <vocabulary>keteguhan</vocabulary>.

恒常 adalah kata formal yang digunakan untuk menggambarkan sesuatu yang tetap <vocabulary>konstan</vocabulary> dan <vocabulary>tidak berubah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7882_keteguhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '惰性', 'kelembaman', 52, 62, 'Jika Anda memiliki <kanji>sifat</kanji> <kanji>malas</kanji> itu akan menjadi <vocabulary>kebiasaan</vocabulary>. <vocabulary>momentum</vocabulary> yang diciptakan oleh kemalasan alami Anda akan membuat Anda tidak bisa keluar dari siklus malas Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7883_kelembaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '我慢', 'ketahanan', 52, 63, 'Saat <kanji>Saya</kanji> dihadapkan pada <kanji>kepercayaan diri yang berlebihan</kanji>, hal ini sangat menguji <vocabulary>ketahanan</vocabulary> dan <vocabulary>kesabaran</vocabulary> saya. Saya sangat benci orang yang terlalu percaya diri, jadi dibutuhkan banyak <vocabulary>pengendalian diri</vocabulary> agar saya bisa tersenyum pada mereka dan berpura-pura bersikap sopan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7884_ketahanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '自慢', 'kebanggaan', 52, 64, 'Ketika <kanji>diri</kanji> Anda memiliki <kanji>terlalu percaya diri</kanji> pada sesuatu, itu disebut <vocabulary>kebanggaan</vocabulary>. Anda tidak bisa diam tentang hal itu, dan Anda <vocabulary>membual</vocabulary> tentang hal itu kepada siapa pun yang mau mendengarkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7885_kebanggaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '緩慢', 'lambat', 52, 65, 'Anda mempelajari 慢 sebagai "terlalu percaya diri", namun bisa juga berarti "kemalasan". Dan ketika Anda merasa <kanji>longgar</kanji> karena <kanji>kemalasan</kanji> Anda, gerakan Anda mungkin akan menjadi <vocabulary>lambat</vocabulary> dan <vocabulary>lamban</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 緩, jadi inilah mnemonik untuk membantu Anda:

Kamu menjadi sangat <vocabulary>lambat</vocabulary> sehingga kamu hanya bisa memakan makanan di luar <reading>can</reading> (かん). Anda tidak punya tenaga untuk memasak dan lengan Anda kendur, jadi tidak masalah jika Anda tidak bergerak terlalu lambat. Jadi berbaring saja, makan perlahan dari kaleng.')
    RETURNING id INTO v_7886_lambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '怠慢', 'kelalaian', 52, 66, 'Jika Anda menjadi <kanji>malas</kanji> karena <kanji>terlalu percaya diri</kanji>, Anda mungkin akan rentan terhadap <vocabulary>kelalaian</vocabulary>. Anda mulai mengambil jalan pintas di mana pun karena Anda berpikir Anda sempurna, dan sebelum Anda menyadarinya, Anda mengabaikan semua hal kecil yang seharusnya Anda urus.

怠慢 mengacu pada jenis kelalaian di mana seseorang gagal memenuhi suatu tugas. Hal ini menunjukkan bahwa mereka sebenarnya bisa melakukan yang lebih baik namun hal tersebut tidak dilakukan karena <vocabulary>kemalasan</vocabulary>, kecerobohan, kurangnya usaha, atau tidak menjalankan tanggung jawab mereka dengan serius.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7887_kelalaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慢性', 'kronis', 52, 67, '<kanji>Terlalu percaya diri</kanji> adalah <kanji>sifat</kanji> dari setiap masalah yang <vocabulary>kronis</vocabulary>. Apa pun yang Anda lakukan, ia akan tetap bertahan dengan percaya diri. Entah itu penyakit atau masalah mengganggu lainnya, satu hal yang pasti: penyakit ini akan selalu mengganggu Anda selamanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7888_kronis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '擁護', 'perlindungan', 52, 68, '<kanji>Rangkullah</kanji> tugas Anda untuk <kanji>membela</kanji> negara Anda dan bersiap untuk <vocabulary>perlindungan</vocabulary> dan <vocabulary>pertahanan</vocabulary>. Anda mencintai negara Anda, jadi Anda akan melakukan apa yang harus Anda lakukan untuk <vocabulary>mendukung</vocabulary> pertahanannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7889_perlindungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '抱擁', 'merangkul', 52, 69, '<kanji>pelukan</kanji> dan <kanji>pelukan</kanji> hampir sama. Jadi, Anda tetap akan <vocabulary>memeluk</vocabulary> dan <vocabulary>memeluk</vocabulary> orang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 抱, jadi inilah mnemonik untuk membantu Anda:

Siapa yang memberikan <vocabulary>pelukan</vocabulary> terbaik di dunia? Itu adalah orang-orang di <read>ho</reading>saya (ほう)! Karena mereka paling mengenal Anda, mereka juga tahu kapan dan bagaimana Anda menyukai pelukan Anda.')
    RETURNING id INTO v_7890_merangkul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '擁立', 'dukungan', 52, 70, 'Anda <kanji>memeluk</kanji> seseorang agar mereka tetap <kanji>berdiri</kanji>. Anda <vocabulary>mendukung</vocabulary> dan <vocabulary>mendukung</vocabulary> orang ini, jadi apa pun yang terjadi, Anda harus menjaga agar mereka tetap waspada.

擁立 adalah kata formal untuk mendukung seseorang untuk suatu posisi, biasanya dalam politik atau organisasi. Ini digunakan ketika orang bersatu untuk mempromosikan atau mencalonkan seseorang sebagai pemimpin atau kandidat politik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7891_dukungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '擁する', 'untuk-memiliki', 52, 71, 'Melakukan <kanji>pelukan</kanji> berarti <vocabulary>memiliki</vocabulary> orang atau hewan tersebut dalam pelukan Anda. Anda memeluknya dan kemudian melarikan diri dengannya. Itu milikmu sekarang.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7892_untuk_memiliki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '特殊', 'spesial', 52, 72, 'Suatu <kanji>khususnya</kanji> <kanji>khusus</kanji> bahkan lebih <vocabulary>istimewa</vocabulary> dan mungkin jauh lebih <vocabulary>unik</vocabulary> daripada hal-hal khusus biasa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7893_spesial;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '殊勝', 'terpuji', 52, 73, 'Anda <kanji>terutama</kanji> <kanji>menang</kanji>ning ketika Anda mengabdikan diri tanpa pamrih atau mengatasi kelemahan pribadi. Itulah yang membuatnya <vocabulary>terpuji</vocabulary> dan <vocabulary>terpuji</vocabulary>!

殊勝 adalah istilah formal yang sering digunakan untuk menggambarkan ketahanan terpuji, sikap tulus, niat baik, atau tindakan bajik seseorang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7894_terpuji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '没', 'membuang', 52, 74, 'Ketika tumbuhan atau hewan <kanji>mati</kanji> Anda harus <vocabulary>membuang</vocabulary> itu. Anda tidak bisa membiarkannya begitu saja di rumah setelah <vocabulary>kematian</vocabulary>, itu aneh.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7895_membuang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '没後', 'setelah-kematian', 52, 75, 'Semua karya seni, musik, atau buku yang diterbitkan <kanji>setelah</kanji> seseorang <kanji>meninggal</kanji> dianggap diterbitkan <vocabulary>setelah kematian</vocabulary> atau <vocabulary>secara anumerta</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7896_setelah_kematian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '戦没', 'tewas-dalam-aksi', 52, 76, 'Ketika seseorang <kanji>mati</kanji> dalam <kanji>perang</kanji> mereka dianggap <vocabulary>tewas dalam aksi</vocabulary>. Ada banyak peringatan di seluruh dunia untuk orang-orang yang meninggal dengan cara ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7897_tewas_dalam_aksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '沈没', 'tenggelamnya', 52, 77, 'Jika Anda <kanji>tenggelam</kanji> dan <kanji>mati</kanji> itu karena Anda <vocabulary>tenggelam</vocabulary> di lautan atau kolam atau semacamnya. Penting untuk diperhatikan <kosa kata>turun</vocabulary> agar Anda tidak mati seperti itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7898_tenggelamnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '日没', 'matahari-terbenam', 52, 78, 'Pada malam hari <kanji>matahari</kanji> <kanji>mati</kanji> saat <vocabulary>matahari terbenam</vocabulary>. Jangan khawatir, ia akan terlahir kembali besok pagi saat matahari terbit dan semuanya akan baik-baik saja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7899_matahari_terbenam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '没頭', 'membenamkan-diri', 52, 79, 'Semua hal ekstra <kanji>mati</kanji> di <kanji>kepala</kanji> ketika seseorang <vocabulary>membenamkan diri</vocabulary> dalam satu hal. Dengan begitu, hal yang mereka fokuskan adalah satu-satunya hal yang ada di otak mereka.

没頭 adalah kata yang relatif formal yang berarti sangat terserap atau asyik dengan sesuatu. Ini sering kali bersifat positif dan menggambarkan keadaan ketika seseorang begitu fokus pada suatu aktivitas sehingga lupa waktu atau melupakan hal lainnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajari keduanya, jadi Anda seharusnya bisa membaca kata ini.')
    RETURNING id INTO v_7900_membenamkan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '没落', 'menghancurkan', 52, 80, 'Sebuah bangunan atau peradaban yang <kanji>mati</kanji>dan kemudian <kanji>runtuh</kanji> berada dalam keadaan <vocabulary>hancur</vocabulary> dan <vocabulary>runtuh</vocabulary>. Seperti bangsa Maya atau Kekaisaran Romawi Barat. Mereka terjatuh cukup keras.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7901_menghancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '埋没', 'penanaman', 52, 81, 'Anda <kanji>mengubur</kanji> sesuatu pada orang yang terlihat seperti <kanji>mati</kanji>d. Ini disebut <vocabulary>implantasi</vocabulary>. Tapi mereka belum benar-benar mati. Ini adalah operasi dan mereka akan bangun dan menjalani hidup mereka dengan apa pun yang Anda masukkan ke dalamnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 埋, jadi inilah mnemonik untuk membantu Anda:

Tunggu, itu bukan orang yang Anda <vocabulary>sematkan</vocabulary> sesuatunya. Itu adalah sekelompok <read>mi</reading>ce (まい). Saya rasa tidak apa-apa. Hanya saja, jangan menaruh tikus ke manusia. Itu... jangan melewati batas itu.')
    RETURNING id INTO v_7902_penanaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '出没', 'sering-muncul', 52, 82, 'Hewan <kanji>keluar</kanji> pegunungan menuju daratan Anda dan sepertinya tidak pernah <kanji>mati</kanji>! Mereka akhirnya <vocabulary>sering muncul</vocabulary> di kebun Anda, memakan semua wortel dan semangka lezat Anda, lalu keluar kembali ke perbukitan. Mereka <vocabulary>memenuhi</vocabulary> rumah Anda sekarang dan Anda tidak tahu harus berbuat apa!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7903_sering_muncul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '没収', 'kehilangan', 52, 83, 'Saat Anda <kanji>mendapatkan</kanji> sesuatu yang seolah-olah orang tersebut telah <kanji>mati</kanji>d, hal itu disebut <vocabulary>penyitaan</vocabulary> atau <vocabulary>forfeiture</vocabulary>. Mungkin jika mereka masih hidup, menurut Anda, mereka tidak akan membiarkan saya mengambilnya. Ya, mereka masih hidup jadi itu milik mereka dan Anda tidak bisa menyimpannya selamanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7904_kehilangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '犠牲', 'korban', 52, 84, 'Siapa yang <kanji>korbankan</kanji> sebagai <kanji>persembahan</kanji> kepada para dewa? <vocabulary>korban</vocabulary> yang malang akan menjadi <vocabulary>pengorbanan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7905_korban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '猟', 'memburu', 52, 85, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7906_memburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '猟師', 'pemburu', 52, 86, 'Jika Anda bisa <kanji>mengajar</kanji> <kanji>berburu</kanji> maka Anda sendiri harus menjadi <vocabulary>pemburu</vocabulary> yang ulung.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7907_pemburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '密猟', 'perburuan-liar', 52, 87, '<kanji>Perburuan</kanji> dalam <kanji>kerahasiaan</kanji> hanya dilakukan melalui <vocabulary>perburuan</vocabulary> ilegal. Jika Anda tidak melakukan perburuan terhadap hewan yang dilindungi, Anda tidak perlu melakukannya secara diam-diam.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7908_perburuan_liar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '狩猟', 'memburu', 52, 88, '<kanji>Berburu</kanji> di mana Anda <kanji>berburu</kanji> tetaplah <vocabulary>berburu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 狩, jadi inilah mnemonik untuk membantu Anda:

Saat <vocabulary>berburu</vocabulary> pastikan Anda mengetahui di mana <reading>chu</reading>tes (しゅ) air berada. Anda harus menggunakan peluncuran tersebut untuk bergerak cepat selama berburu.')
    RETURNING id INTO v_7909_memburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '猟犬', 'anjing-pemburu', 52, 89, '<kanji>berburu</kanji> <kanji>anjing</kanji> adalah <vocabulary>anjing pemburu</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 犬, jadi inilah mnemonik untuk membantu Anda:

Siapa yang memiliki <kosakata>anjing pemburu</vocabulary> terbaik di dunia? <read>Ken</reading> (けん) dari Street Fighter! Anjingnya juga diberi nama Ken, karena begitulah cara Ken dan Ken melakukan sesuatu.')
    RETURNING id INTO v_7910_anjing_pemburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '発祥', 'asal', 52, 90, '<kanji>keberuntungan</kanji> <kanji>keberangkatan</kanji> Anda dari dunia lain adalah kisah <vocabulary>asal usul</vocabulary> Anda. Anda awalnya datang dari tempat lain, dan Anda harus meninggalkan sana dengan megah sebelum Anda bisa memasuki dunia ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7911_asal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不祥事', 'skandal', 52, 91, '<kanji>yang tidak</kanji>-<kanji>menguntungkan</kanji> <kanji>kejadian</kanji> adalah <vocabulary>skandal</vocabulary>. Skandal adalah kebalikan dari kejadian yang menguntungkan.

不祥事 mengacu pada skandal yang menimbulkan aib, terutama bagi institusi, organisasi, atau tokoh masyarakat. Hal ini sering kali melibatkan pelanggaran, korupsi, atau perilaku tidak etis lainnya yang mempunyai dampak negatif yang signifikan terhadap citra publik mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7912_skandal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '秩序', 'memesan', 52, 92, '<kanji>kata pengantar</kanji> dari <kanji>order</kanji> tetaplah <vocabulary>order</vocabulary>. Karena pesanan selalu diawali dengan pesanan yang lebih banyak. Ketertiban membuat kita semua tetap terkendali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7913_memesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '食糧', 'ketentuan', 52, 93, '<kanji>Perbekalan</kanji> yang bisa <kanji>makan</kanji> tetaplah <vocabulary>persediaan</vocabulary> dan terkadang disebut <vocabulary>ransum</vocabulary>, terutama saat pasukan memakannya.

Kata ini sering merujuk pada <vocabulary>makanan pokok</vocabulary> seperti nasi dan gandum.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7914_ketentuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '膨大', 'sangat-besar', 52, 94, 'Sesuatu yang <kanji>membengkak</kanji> menjadi <kanji>besar</kanji> akan menjadi <vocabulary>besar</vocabulary> atau setidaknya benar-benar <vocabulary>besar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7915_sangat_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '膨れる', 'membengkak', 52, 95, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membengkak</kanji>, jadi versi kata kerjanya adalah <vocabulary>to swell</vocabulary> atau <vocabulary>to expand</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Seseorang mendatangi Anda dan bertanya, "Hei, apakah kamu ingin perutmu membengkak seperti itu?" Beraninya mereka bertanya tentang perutmu. Anda menjawab dengan, "<reading>F@#$</reading> (ふく) kamu!" Bukan urusan mereka seberapa besar Anda ingin perut Anda membesar.')
    RETURNING id INTO v_7916_membengkak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '膨張', 'ekspansi', 52, 96, 'Anda perlu <kanji>membengkak</kanji> dan <kanji>meregangkan</kanji> jika Anda ingin melihat <vocabulary>ekspansi</vocabulary> apa pun di perusahaan Anda. Pertumbuhan tidak akan terjadi tanpa sedikit ruang gerak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7917_ekspansi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '芳香', 'parfum', 52, 97, '<kanji>aromatik</kanji> <kanji>wewangian</kanji> biasanya merupakan <vocabulary>wewangian</vocabulary> dengan <vocabulary>bau manis</vocabulary>.

芳香 adalah kata formal untuk wewangian alami dan menyenangkan, seperti aroma mawar. Kemungkinan besar Anda akan melihatnya pada kata 芳香剤 (pengharum ruangan), tetapi kata ini juga digunakan dalam literatur untuk aroma yang menyenangkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7918_parfum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '芳しい', 'aromatik', 52, 98, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Kanjinya adalah <kanji>aromatik</kanji>, jadi ini juga berarti <vocabulary>aromatic</vocabulary> atau <vocabulary>fragrant</vocabulary>. 

芳しい adalah kata formal, sering digunakan secara tertulis untuk mendeskripsikan <vocabulary>berbau manis</vocabulary> bunga, teh, atau dupa. Dalam arti kiasan, kata ini juga bisa berarti "menguntungkan", tetapi makna ini sebagian besar muncul dalam bentuk negatif 芳しくない (tidak menguntungkan, diterima dengan buruk).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Jika Anda ingin mencium wangi <vocabulary>aromatic</vocabulary>, buka saja bunga rampai. Tapi hati-hati jika itu kaleng. <reading>kaleng</reading> yang harum akan <reading>baa</reading> (かんば) seperti domba pada Anda saat Anda membukanya. Itu bisa baa cuma efek samping bau manisnya.')
    RETURNING id INTO v_7919_aromatik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '茨', 'duri', 52, 99, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7920_duri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '覇気', 'ambisi', 52, 100, 'Jika Anda memiliki <kanji>kepemimpinan</kanji> <kanji>semangat</kanji> itu berarti Anda memiliki banyak <vocabulary>ambisi</vocabulary> untuk mengejar hal-hal yang Anda inginkan. Dan Anda akan mampu memimpin orang lain karenanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7921_ambisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '制覇', 'penaklukan', 52, 101, 'Mereka yang memiliki <kanji>kepemimpinan</kanji> yang menginginkan <kanji>kontrol</kanji> akan memulai misi <vocabulary>penaklukan</vocabulary> dan berjuang untuk <vocabulary>dominasi</vocabulary> dunia!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7922_penaklukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '覇権', 'hegemoni', 52, 102, 'Mereka yang memiliki <kanji>hak</kanji> atas <kanji>kepemimpinan</kanji> memiliki <vocabulary>hegemoni</vocabulary> yang lengkap di seluruh negeri. And they will reign until the end of time.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7923_hegemoni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '覇者', 'penguasa-tertinggi', 52, 103, '<kanji>Seseorang</kanji> dengan <kanji>kepemimpinan</kanji> terbanyak dikenal sebagai <vocabulary>penguasa tertinggi</vocabulary>. Tidak ada yang memiliki kepemimpinan lebih dari mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7924_penguasa_tertinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '連覇', 'kemenangan-beruntun', 52, 104, 'Jika Anda <kanji>membawa serta</kanji> <kanji>kepemimpinan</kanji> Anda berulang kali, Anda berada dalam <vocabulary>kemenangan beruntun</vocabulary>! Anda dapat mengharapkan <vocabulary>kemenangan berturut-turut </vocabulary> di <vocabulary>kejuaraan berturut-turut</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah terhadap は menjadi ぱ.')
    RETURNING id INTO v_7925_kemenangan_beruntun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '〜貫', 'konter-sushi', 52, 105, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7926_konter_sushi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '一貫', 'satu-potong-sushi', 52, 106, '<kanji>Satu</kanji> <kanji>penghitung sushi</kanji> menghitung <vocabulary>satu potong sushi</vocabulary>. Ini juga bisa berarti <vocabulary>konsistensi</vocabulary>, yang masuk akal jika Anda memikirkan tentang sepotong sushi—masing-masing sushi harus sama konsistennya dengan yang terakhir! Terkait dengan ini, ini juga bisa berarti <vocabulary>integration</vocabulary>, karena integrasi akan lebih mudah jika ada konsistensi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7927_satu_potong_sushi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貫通', 'menembus', 52, 107, 'Saat Anda <kanji>menusuk</kanji> suatu kain dengan jarum, kain itu harus <kanji>melewati</kanji> ke sisi yang lain untuk benar-benar <vocabulary>menembus</vocabulary> dan <vocabulary>menembus</vocabulary> itu. Pastikan semuanya masuk seluruhnya jika Anda ingin menjahit dengan benar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7928_menembus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貫徹', 'kegigihan', 52, 108, 'Anda harus <kanji>menembus</kanji> informasi ini ke dalam otak Anda hingga akhirnya <kanji>menembus</kanji>, yang memerlukan banyak <vocabulary>ketekunan</vocabulary>. Lakukan itu dan itu akan menjadi <vocabulary>pencapaian</vocabulary> yang luar biasa!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7929_kegigihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貫く', 'untuk-melewati', 52, 109, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menembus</kanji>, jadi versi kata kerjanya adalah <vocabulary>to pass</vocabulary> atau <vocabulary>to pierce</vocabulary>.

貫く adalah kata yang relatif formal, kebanyakan digunakan secara tertulis. Ini bisa berarti menusuk sesuatu secara fisik, namun lebih sering berarti <vocabulary>menjalankan</vocabulary> keyakinan atau tujuan Anda sampai akhir.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Cara terbaik <vocabulary>untuk menelusuri</vocabulary> pikiran seseorang atau kampus adalah <reading>berlari telanjang</reading> (つらぬ). Jadi jika Anda benar-benar ingin <vocabulary>menusuk</vocabulary> pikiran dan jiwa seseorang, ingatlah ini!')
    RETURNING id INTO v_7930_untuk_melewati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '突貫', 'bergegas', 52, 110, 'Jika Anda <kanji>menusuk</kanji> untuk <kanji>menusuk</kanji> sesuatu, sebaiknya Anda melakukannya dengan <vocabulary>terburu-buru</vocabulary>. Jika kamu tidak cukup cepat, kamu bisa mendapat masalah, jadi bergegaslah dengan serangan yang kuat.

突貫 artinya melakukan sesuatu dengan terburu-buru. Biasanya digunakan dalam kata majemuk 突貫工事, yang berarti pekerjaan konstruksi yang cepat namun sering kali ceroboh. Kata ini juga dapat menggambarkan menyerang musuh, namun makna tersebut kurang umum saat ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7931_bergegas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '賠償', 'reparasi', 52, 111, '<kanji>Kompensasi</kanji> <kanji>reparasi</kanji> tetaplah <vocabulary>kompensasi</vocabulary> dan <vocabulary>reparasi</vocabulary>! Itu nyaman.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7932_reparasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '処遇', 'perlakuan', 52, 112, 'Anda harus <kanji>menangani</kanji> dan mengubah <kanji>perlakuan</kanji> Anda terhadap orang-orang tertentu tergantung pada situasi seperti apa yang Anda hadapi. Kosakata ini sama saja, menjadikannya <vocabulary>berurusan</vocabulary> atau <vocabulary>perlakuan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7933_perlakuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遭遇', 'bertemu', 52, 113, 'Kanji di sini adalah <kanji>encounter</kanji> dan <kanji>encounter</kanji>, yang menjadikannya… <vocabulary>encounter</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7934_bertemu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '待遇', 'perlakuan', 52, 114, 'Hanya karena Anda harus <kanji>menunggu</kanji> untuk mendapatkan <kanji>perlakuan</kanji> khusus, bukan berarti <vocabulary>treatment</vocabulary> tersebut masih belum bagus. Dan hanya karena semua orang tidak bersorak ketika Anda tiba, bukan berarti Anda mendapat <vocabulary>reception</vocabulary> yang dingin, Anda tahu? Mungkin mereka sedang merencanakan pesta kejutan untukmu atau semacamnya... ya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7935_perlakuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '優遇', 'perlakuan-istimewa', 52, 115, 'Ketika Anda diberi <kanji>perlakuan superior</kanji> <kanji></kanji>, itu disebut <vocabulary>perlakuan istimewa</vocabulary>. Ini adalah cara terbaik untuk dirawat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7936_perlakuan_istimewa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '冷遇', 'penerimaan-dingin', 52, 116, 'Ketika Anda diberi <kanji>keren</kanji> <kanji>perlakuan</kanji> itu disebut <vocabulary>penerimaan dingin</vocabulary> atau <vocabulary>keramahan</vocabulary>. Ini menyebalkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7937_penerimaan_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '境遇', 'lingkungan', 52, 117, '<kanji>Perlakuan</kanji> terhadap <kanji>batas</kanji> lingkungan tempat tinggal Anda adalah sesuatu yang harus Anda perhatikan, karena itu adalah <vocabulary>lingkungan</vocabulary> Anda dan jika bukan Anda yang menjaganya, siapa lagi?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7938_lingkungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遭う', 'untuk-bertemu', 52, 118, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>pertemuan</kanji>, jadi versi kata kerjanya adalah <vocabulary>to face</vocabulary> atau <vocabulary>to meet</vocabulary>.', 'Ingat bagaimana 会う juga berarti <vocabulary>bertemu</vocabulary>? Ya, keduanya dibaca あう juga! Jadi jika Anda tahu yang itu, Anda juga tahu yang ini!')
    RETURNING id INTO v_7939_untuk_bertemu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遭難', 'bencana', 52, 119, 'Jika Anda <kanji>menghadapi</kanji> sesuatu yang <kanji>sulit</kanji> itu akan mengakibatkan <vocabulary>bencana</vocabulary>. Apalagi jika Anda berada di dalam perahu. Menghadapi air yang sangat sulit akan mengakibatkan <vocabulary>kapal karam</vocabulary>! Ih!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7940_bencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鎖', 'rantai', 52, 120, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Cara terbaik untuk keluar dari <vocabulary>rantai</vocabulary> kehidupan adalah dengan mengenakan <reading>sari keren</reading> (くさり). Sari yang keren akan mengingatkan Anda dari mana Anda berasal. Siapa keluargamu. Dan betapa cantiknya penampilanmu. Lepaskan rantai itu dan kenakan sari yang keren!')
    RETURNING id INTO v_7941_rantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鎖国', 'isolasi-nasional', 52, 121, 'Sebuah <kanji>negara</kanji> dalam <kanji>rantai</kanji> berada di bawah kebijakan <vocabulary>isolasi nasional</vocabulary>. Mereka terikat dan tidak bisa berkunjung ke tempat lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7942_isolasi_nasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '封鎖', 'blokade', 52, 122, '<kanji>rantai</kanji> yang <kanji>segel</kanji> tidak akan pecah atau terbuka sehingga menghalangi semua orang, membentuk <vocabulary>blokade</vocabulary>. Hal ini juga bisa terjadi di bank dan akan mengakibatkan mereka <vocabulary>membekukan</vocabulary> akun Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7943_blokade;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '閉鎖', 'penutupan', 52, 123, '<kanji>tertutup</kanji> <kanji>rantai</kanji> memberi tahu semua orang bahwa bangunan atau toko <vocabulary>tutup</vocabulary> untuk selamanya. Ini harus <vocabulary>lockout</vocabulary> semua orang sehingga mereka tidak akan mencoba masuk lagi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7944_penutupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '連鎖', 'rantai', 52, 124, 'Jika Anda <kanji>membawa</kanji> sebuah <kanji>rantai</kanji>, itu masih sebuah <vocabulary>rantai</vocabulary>, itu hanya berpindah ke tempat yang baru.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7945_rantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陥る', 'untuk-jatuh-ke', 52, 125, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu bahwa kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>gua di dalam</kanji>, dan versi kata kerjanya membawa kesan tersebut lebih jauh. Artinya <vocabulary>terjerumus ke dalam</vocabulary> atau <vocabulary>terlempar ke dalam</vocabulary> sesuatu yang negatif, seperti jebakan, masalah, atau bahkan keadaan emosi yang buruk.

陥る menggambarkan momen ketika dunia di sekitarmu atau hatimu runtuh, dan kamu tiba-tiba terlempar ke ruang itu dan terjebak di dalamnya. Ini seperti tergelincir ke dalam lubang gelap dalam hidup yang tidak Anda sangka akan datang. Itulah perasaannya!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Setiap kali Anda akan <vocabulary>terjerumus ke dalam</vocabulary> lubang kehancuran fisik atau emosional, Anda hanya bergumam, "<reading>Oh chee</reading>se <reading>ea</reading>tery (おちい)..." Karena di situlah hal itu selalu dimulai. Anda tidak akan pernah bisa menahan godaan dari fondue misterius mereka. Oh, restoran keju itu seperti jebakan bagi orang yang tidak bisa mengendalikan diri. Kendalikan dirimu! Hidupmu sedang jatuh ke dalam kehancuran yang murahan!!')
    RETURNING id INTO v_7946_untuk_jatuh_ke;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陥没', 'menyerah', 52, 126, 'Sebuah <kanji>gua di dalam</kanji> di mana semua orang <kanji>mati</kanji> tetaplah sebuah <vocabulary>gua di dalam</vocabulary>, sungguh menyedihkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7947_menyerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陥落', 'jatuh', 52, 127, 'Jika kamu <kanji>jatuh</kanji> saat berada dalam <kanji>gua</kanji> kamu akan <vocabulary>jatuh</vocabulary> bersama dengan segala sesuatu di sekitarmu. Dan perasaan <vocabulary>tenggelam</vocabulary> di perut Anda adalah karena... Maksud saya, Anda SUDAH tenggelam ke dalam tanah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7948_jatuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '欠陥', 'cacat', 52, 128, 'Item ini <kanji>kurang</kanji>sebagiannya, menyebabkan permukaannya <kanji>mengalah</kanji>. Benar-benar <vocabulary>cacat</vocabulary>!

欠陥 adalah kata yang relatif formal yang mengacu pada <vocabulary>kesalahan</vocabulary> pada sesuatu, baik pada objek fisik, sistem, atau bahkan rencana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7949_cacat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陳腐', 'klise', 52, 129, 'Jika Anda terus <kanji>menunjukkan</kanji> tindakan, emosi, dan frasa yang sama, pada akhirnya tindakan, emosi, dan frasa tersebut akan <kanji>membusuk</kanji> dan terdengar <vocabulary>klise</vocabulary> bagi semua orang. Anda harus mencampuradukkan semuanya sesekali. Anda tidak ingin menjadi <vocabulary>basi</vocabulary>, bukan?!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati saja ふ menjadi ぷ.')
    RETURNING id INTO v_7950_klise;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陳列', 'pameran', 52, 130, '<kanji>pameran</kanji> sesuatu dalam <kanji>baris</kanji> hanya terjadi di <vocabulary>pameran</vocabulary>. Semuanya akan tertata rapi di <vocabulary>display</vocabulary> untuk Anda di sana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7951_pameran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陳述', 'penyataan', 52, 131, '<kanji>Tunjukkan</kanji> apa yang ingin Anda <kanji>sebutkan</kanji> dalam <vocabulary>pernyataan</vocabulary> yang lantang dan jelas. Anda harus mengatakannya jika Anda ingin orang mendengarkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7952_penyataan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '陳情', 'permohonan', 52, 132, '<kanji>Tunjukkan</kanji> <kanji>perasaan</kanji> Anda dalam <vocabulary>petisi</vocabulary>. Jika Anda merasa ada sesuatu yang tidak adil, Anda harus mengatakan sesuatu. Bentuklah <vocabulary>banding</vocabulary> dan lakukan perlawanan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7953_permohonan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '隼', 'elang', 52, 133, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_7954_elang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '必須', 'sangat-diperlukan', 52, 134, 'Sesuatu yang <kanji>pasti</kanji>sangat <kanji>diperlukan</kanji> adalah sesuatu yang Anda tidak bisa hidup tanpanya. Ini <vocabulary>sangat diperlukan</vocabulary>. Dan itu <vocabulary>diperlukan</vocabulary> oleh Anda untuk terus hidup.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7955_sangat_diperlukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '颯と', 'dengan-cepat', 52, 135, 'Ini adalah versi kata keterangan dari kanji <kanji>cepat</kanji>, jadi artinya <vocabulary>cepat</vocabulary>.', 'Ini sebenarnya menggunakan bacaan kun''yomi, namun hampir sama dengan yang dipelajari saat mempelajari kanji. Itu hanya さっ, bukan さつ. Kalau kamu ingat さつ disingkat di sini, kamu pasti tahu cara membacanya!')
    RETURNING id INTO v_7956_dengan_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', 'お風呂', 'mandi', 52, 136, 'Biarkan <kanji>angin</kanji> masuk dari jendela di atas <kanji>mandi</kanji> Anda sehingga airnya cukup dingin untuk Anda <vocabulary>mandi</vocabulary>! Kalau airnya terlalu panas, nanti pusing dan itu berbahaya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Ini bukan bacaan on''yomi yang sama yang kamu pelajari untuk 風. Ini sedikit berbeda: ふ. Jika kamu sedang <kanji>mandi</kanji> kamu akan menjadi <reading>foo</reading>l (ふ) yang membawa makanan ke sana. Jatuhkan う atau kamu akan menjadi sup!')
    RETURNING id INTO v_7957_mandi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '綾取り', 'tempat-tidur-kucing', 52, 137, 'Salah satu <kanji>desain</kanji> yang bisa Anda <kanji>bawa</kanji> ke mana saja adalah <vocabulary>buaian kucing</vocabulary>, permainan di mana Anda melingkarkan tali di sekitar tangan dan jari Anda untuk membuat pola.', 'Kata ini menggunakan kun''yomi untuk kedua kanji.')
    RETURNING id INTO v_9057_tempat_tidur_kucing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '綾乃', 'ayano', 52, 138, 'Ini adalah <kanji>desain</kanji> <kanji>dari</kanji> <vocabulary>Ayano</vocabulary>. Apakah kamu kenal Ayano yang pandai mendesain sesuatu? Beberapa Ayano kreatif termasuk penyanyi folk tradisional Okinawa dan pemain sanshin Uema Ayano (上間 綾乃), dan penulis Takeda Ayano (武田 綾乃) yang memenangkan Penghargaan Pendatang Baru Sastra Yoshikawa Eiji pada tahun 2021.', 'Nama ini menggunakan bacaan yang kamu pelajari dengan kanji, jadi kamu harus bisa membacanya sendiri.')
    RETURNING id INTO v_9101_ayano;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '大輔', 'daisuke', 52, 139, 'Siapa yang <kanji>besar</kanji> <kanji>membantu</kanji>? Itu adalah <vocabulary>Daisuke</vocabulary>!

Daisuke terkenal termasuk sutradara film dan penulis skenario Itō Daisuke (伊藤 大輔), skater Takahashi Daisuke (髙橋 大輔), dan aktor dan penyanyi Namikawa Daisuke (浪川 大輔).', 'Nama ini menggunakan on''yomi untuk 大 dan nanori untuk 輔. Anda mempelajari keduanya dengan kanji, jadi itu akan sangat membantu.

Catatan: Secara historis, nama ini dapat dibaca たいふ atau おおすけ, seperti halnya penyair periode Heian 伊勢大輔, yang namanya dapat dibaca いせのたいふ atau いせのおおすけ. Dalam konteks modern, Anda hanya perlu mengetahui だいすけ, jangan khawatir!')
    RETURNING id INTO v_9102_daisuke;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蘇生', 'resusitasi', 52, 140, 'Saat Anda <kanji>menghidupkan</kanji> <kanji>kehidupan</kanji>, yang Anda lakukan adalah <vocabulary>resusitasi</vocabulary>. Atau, kurang medisnya, <vocabulary>revival</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9315_resusitasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '后', 'permaisuri', 52, 141, 'Kanji dan kata-katanya sama persis, jadi ini artinya <vocabulary>permaisuri</vocabulary>. 

后 secara khusus mengacu pada istri seorang penguasa laki-laki, bukan permaisuri yang mungkin memerintah suatu negara sendiri. Di Jepang kuno, kata ini mengacu pada istri kaisar dengan pangkat tertinggi — <vocabulary>permaisuri</vocabulary> — namun Anda juga akan melihatnya digunakan dalam konteks non-Jepang untuk merujuk pada <vocabulary>ratu</vocabulary> raja.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Untuk menjadi <vocabulary>permaisuri</vocabulary>, kamu perlu <reading>mencium seorang ki</reading>ng (きさき). Secara teknis, Anda perlu mencium seorang kaisar, tetapi Anda bisa mulai dengan mencium seorang raja dan kemudian melanjutkannya.')
    RETURNING id INTO v_9405_permaisuri;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7270_sinar_ultraviolet, 'Sinar Ultraviolet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7270_sinar_ultraviolet, 'Ultraungu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7270_sinar_ultraviolet, 'しがいせん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7270_sinar_ultraviolet, '紫外線が強い日は、外に出たくありません。', 'Pada hari-hari ketika sinar UV terik, saya tidak ingin keluar rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7270_sinar_ultraviolet, '夏は紫外線対策が欠かせません。', 'Di musim panas, perlindungan UV sangat penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7270_sinar_ultraviolet, '紫外線は目にもダメージを与えるので、紫外線カットのサングラスを買いました。', 'Sinar ultraviolet juga dapat merusak mata Anda, jadi saya membeli kacamata hitam yang dapat menghalangi sinar UV.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7860_wanikani, 'WaniKani', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7860_wanikani, 'わにかに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7860_wanikani, '鰐蟹で漢字を猛勉強中です。', 'Saya bekerja keras mempelajari kanji di WaniKani.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7861_zina, 'Zina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7861_zina, 'Ketidaksetiaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7861_zina, 'ふりん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7861_zina, 'どうやら妻が不倫をしているようなんです。', 'Tampaknya istri saya melakukan perzinahan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7862_etika, 'Etika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7862_etika, 'Moral', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7862_etika, 'りんり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7862_etika, 'ちゃんと職業倫理を守ってください。', 'Harap patuhi etika bisnis dengan benar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7863_menjadi_bias, 'Menjadi Bias', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7863_menjadi_bias, 'Menjadi Satu Sisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7863_menjadi_bias, 'Menjadi Berpihak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7863_menjadi_bias, 'Untuk Dianggap Prasangka', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7863_menjadi_bias, 'かたよる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7863_menjadi_bias, '栄養が偏るのは良くない。', 'Nutrisi satu sisi tidak baik untuk Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7864_prasangka, 'Prasangka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7864_prasangka, 'Bias', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7864_prasangka, 'へんけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7864_prasangka, 'それが偏見というものです。', 'Itu disebut prasangka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7864_prasangka, '偏見が全くない世界なんてものは存在しない。', 'Tidak ada dunia di mana tidak ada prasangka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7864_prasangka, '彼女はアジア人に偏見があるようだ。', 'Dia tampaknya berprasangka buruk terhadap orang Asia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7865_berpikiran_sempit, 'Berpikiran Sempit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7865_berpikiran_sempit, 'Intoleransi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7865_berpikiran_sempit, 'へんきょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7865_berpikiran_sempit, 'ステレオタイプは人間を偏狭にします。', 'Stereotip membuat orang berpikiran sempit.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7866_pola_makan_tidak_seimbang, 'Pola Makan Tidak Seimbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7866_pola_makan_tidak_seimbang, 'Pilih-pilih Makan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7866_pola_makan_tidak_seimbang, 'へんしょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7866_pola_makan_tidak_seimbang, '子供が偏食がちなので困っています。', 'Saya khawatir karena anak-anak saya cenderung memiliki pola makan yang tidak seimbang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7867_saran, 'Saran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7867_saran, 'Petunjuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7867_saran, 'Implikasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7867_saran, 'しさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7867_saran, 'メッシが、移籍を示唆するコメントをしたようだ。', 'Sepertinya Messi melontarkan komentar yang mengisyaratkan transfernya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7868_letusan, 'Letusan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7868_letusan, 'ふんか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7868_letusan, '富士山が噴火したらどうなると思いますか。', 'Menurut Anda apa yang akan terjadi jika Gunung Fuji meletus?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7869_asap_vulkanik, 'Asap Vulkanik', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7869_asap_vulkanik, 'ふんえん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7869_asap_vulkanik, '噴煙を上げる桜島の写真を撮りました。', 'Saya mengambil gambar asap vulkanik yang membubung di atas Sakurajima.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7870_jet, 'Jet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7870_jet, 'Semprot', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7870_jet, 'Injeksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7870_jet, 'Propulsi Jet', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7870_jet, 'ふんしゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7870_jet, '催涙スプレーの噴射方法を教えてください。', 'Tolong tunjukkan saya cara menyemprotkan gas air mata.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7871_air_mancur, 'Air Mancur', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7871_air_mancur, 'ふんすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7871_air_mancur, 'あそこの噴水で待ち合わせをしましょう。', 'Mari kita bertemu di air mancur di sana.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7872_memuntahkan, 'Memuntahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7872_memuntahkan, 'Memancar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7872_memuntahkan, 'Semburan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7872_memuntahkan, 'Letusan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7872_memuntahkan, 'ふんしゅつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7872_memuntahkan, 'ブラックホールからガスが噴出しているって本当ですか？', 'Benarkah gas keluar dari lubang hitam?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7873_yatim_piatu, 'Yatim piatu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7873_yatim_piatu, 'こじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7873_yatim_piatu, '妻と相談して、孤児を引き取ることにしました。', 'Saya berkonsultasi dengan istri saya dan kami memutuskan untuk mengasuh anak yatim piatu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7874_pulau_soliter, 'Pulau Soliter', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7874_pulau_soliter, 'ことう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7874_pulau_soliter, '今は孤島を舞台とした小説を書いています。', 'Saya sedang menulis novel berlatar pulau terpencil.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7875_isolasi, 'Isolasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7875_isolasi, 'Kesendirian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7875_isolasi, 'Kesendirian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7875_isolasi, 'こどく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7875_isolasi, 'ずっと孤独な人生を送ってきたんです。', 'Saya selalu menjalani kehidupan yang terisolasi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7876_isolasi, 'Isolasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7876_isolasi, 'Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7876_isolasi, 'Tanpa teman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7876_isolasi, 'こりつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7876_isolasi, 'ある事件があって、職場で孤立してしまったんです。', 'Suatu kejadian tertentu terjadi, dan saya mendapati diri saya sendirian dan tidak punya teman di tempat kerja.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7877_kemalasan, 'Kemalasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7877_kemalasan, 'Kemalasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7877_kemalasan, 'Kemalasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7877_kemalasan, 'たいだ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7877_kemalasan, 'どうすれば怠惰を克服できるのでしょうか。', 'Menurut Anda, apa yang dapat Anda lakukan untuk mengatasi rasa malas Anda?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7878_menjadi_lalai, 'Menjadi Lalai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7878_menjadi_lalai, 'Mengabaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7878_menjadi_lalai, 'Untuk Syirik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7878_menjadi_lalai, 'おこたる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7878_menjadi_lalai, 'この失敗は確認を怠った私の責任です。', 'Saya bertanggung jawab atas kegagalan karena mengabaikan pemeriksaannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7879_bintang, 'Bintang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7879_bintang, 'こうせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7879_bintang, 'ブラックホールが、恒星をばらばらに引き裂くことがあるらしい。', 'Rupanya, ada kalanya lubang hitam merobek bintang menjadi berkeping-keping.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7880_praktek_yang_didirikan, 'Praktek yang Didirikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7880_praktek_yang_didirikan, 'Kebiasaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7880_praktek_yang_didirikan, 'こうれい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7880_praktek_yang_didirikan, 'うちの会社では、毎年恒例のクリスマス会があるんだよ。', 'Merupakan praktik yang lazim di perusahaan saya untuk mengadakan pesta Natal setiap tahun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7881_permanen, 'Permanen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7881_permanen, 'Abadi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7881_permanen, 'こうきゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7881_permanen, '恒久の平和を祈っています。', 'Saya berdoa untuk perdamaian abadi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7882_keteguhan, 'Keteguhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7882_keteguhan, 'Konstan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7882_keteguhan, 'Tidak berubah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7882_keteguhan, 'こうじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7882_keteguhan, 'このシステムで部屋の温度を恒常に保っています。', 'Dengan sistem ini ruangan dijaga pada suhu konstan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7883_kelembaman, 'Kelembaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7883_kelembaman, 'Kebiasaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7883_kelembaman, 'momentum', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7883_kelembaman, 'だせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7883_kelembaman, '僕は、勉強への意欲は無く、ただ惰性で大学へ通っていました。', 'Saya tidak punya keinginan untuk belajar, saya masuk universitas hanya karena kebiasaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7884_ketahanan, 'Ketahanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7884_ketahanan, 'Kesabaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7884_ketahanan, 'Pengendalian Diri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7884_ketahanan, 'がまん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7884_ketahanan, 'おしっこを我慢するのは体に悪い。', 'Menahan kencing berdampak buruk bagi kesehatan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7884_ketahanan, '我慢するんだ！諦めるなよ。明日は明日の風が吹くんだからさ！', 'Bersabarlah dan jangan menyerah. Besok adalah hari yang lain!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7885_kebanggaan, 'Kebanggaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7885_kebanggaan, 'Membanggakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7885_kebanggaan, 'じまん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7885_kebanggaan, '自分の不倫を得意気に自慢するとか、ありえないんだけど。', 'Tidak mungkin aku bisa dengan bangga menyombongkan perselingkuhanku sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7886_lambat, 'Lambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7886_lambat, 'Lamban', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7886_lambat, 'Membosankan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7886_lambat, 'かんまん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7886_lambat, 'あのウエイトレスは動きが緩慢なので首にしたよ。', 'Gerakan pelayan itu sangat lambat sehingga dia dipecat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7887_kelalaian, 'Kelalaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7887_kelalaian, 'Kemalasan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7887_kelalaian, 'たいまん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7887_kelalaian, 'それは警察の怠慢なんじゃないんですか。', 'Bukankah itu kelalaian polisi?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7888_kronis, 'Kronis', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7888_kronis, 'まんせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7888_kronis, '私は慢性胃腸炎を患っているんです。', 'Saya menderita gastroenteritis kronis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7889_perlindungan, 'Perlindungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7889_perlindungan, 'Pembelaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7889_perlindungan, 'Mendukung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7889_perlindungan, 'Pertahanan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7889_perlindungan, 'ようご', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7889_perlindungan, '君はどうして彼を擁護するような発言をしたんだい。', 'Mengapa Anda angkat bicara untuk melindunginya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7890_merangkul, 'Merangkul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7890_merangkul, 'Memeluk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7890_merangkul, 'ほうよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7890_merangkul, 'その映画の、主役の二人が甘い抱擁を交わすシーンがとても美しかったよ。', 'Adegan dalam film dimana kedua pemeran utama saling berpelukan manis itu begitu indah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7891_dukungan, 'Dukungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7891_dukungan, 'Mendukung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7891_dukungan, 'ようりつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7891_dukungan, 'どうせ出馬者を擁立しようとしているだけだろう。', 'Saya yakin mereka hanya berusaha mendukung kandidat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7892_untuk_memiliki, 'Untuk Memiliki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7892_untuk_memiliki, 'Untuk Memiliki', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7892_untuk_memiliki, 'ようする', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7892_untuk_memiliki, '神奈川県は千葉県よりも多い人口を擁しています。', 'Prefektur Kanagawa memiliki populasi lebih besar dibandingkan Prefektur Chiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7892_untuk_memiliki, '優勝候補は、天才バッターを擁するトーフグ学園です。', 'Favorit untuk kejuaraan ini adalah pemukul jenius yang dimiliki Akademi Tofugu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7893_spesial, 'Spesial', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7893_spesial, 'Unik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7893_spesial, 'とくしゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7893_spesial, 'この車のタイヤはちょっと特殊なんだよ。', 'Ban mobil ini cukup unik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7894_terpuji, 'Terpuji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7894_terpuji, 'Terpuji', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7894_terpuji, 'しゅしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7894_terpuji, 'あいつは殊勝な女だったよ。', 'Itu wanita yang mengagumkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7895_membuang, 'Membuang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7895_membuang, 'Menolak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7895_membuang, 'Kematian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7895_membuang, 'ぼつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7895_membuang, 'こないだの原稿は没になってしまった。', 'Naskahnya ditolak beberapa hari yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7895_membuang, '申し訳ありませんが、この案は一旦没にしてください。', 'Maaf, tapi saya khawatir Anda harus membuang ide ini untuk saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7895_membuang, 'その歌手は、2015年12月1日没、とされているが、真相は定かではない。', 'Penyanyi tersebut dikabarkan meninggal dunia pada 1 Desember 2015, namun belum jelas faktanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7896_setelah_kematian, 'Setelah Kematian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7896_setelah_kematian, 'Secara anumerta', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7896_setelah_kematian, 'ぼつご', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7896_setelah_kematian, '没後50年を記念した展覧会を予定しています。', 'Pameran peringatan direncanakan 50 tahun setelah kematian mereka.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7897_tewas_dalam_aksi, 'Tewas Dalam Aksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7897_tewas_dalam_aksi, 'Kematian Dalam Pertempuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7897_tewas_dalam_aksi, 'KIA', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7897_tewas_dalam_aksi, 'せんぼつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7897_tewas_dalam_aksi, 'たくさんの戦没した兵士たちがここに埋められています。', 'Banyak tentara yang tewas dalam aksi dimakamkan di sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7898_tenggelamnya, 'Tenggelamnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7898_tenggelamnya, 'Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7898_tenggelamnya, 'Perendaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7898_tenggelamnya, 'ちんぼつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7898_tenggelamnya, 'タイタニック号の沈没を予言していた人がいるんです。', 'Ada orang yang meramalkan tenggelamnya Titanic.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7899_matahari_terbenam, 'Matahari terbenam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7899_matahari_terbenam, 'にちぼつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7899_matahari_terbenam, '今出発すれば、日没までには着けると思います。', 'Jika saya pergi sekarang, saya pikir saya bisa tiba saat matahari terbenam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7900_membenamkan_diri, 'Membenamkan Diri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7900_membenamkan_diri, 'ぼっとう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7900_membenamkan_diri, '好きなことに没頭できるなんて、幸せですね。', 'Jika Anda bisa membenamkan diri dalam hal-hal yang Anda sukai, Anda akan bahagia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7901_menghancurkan, 'Menghancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7901_menghancurkan, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7901_menghancurkan, 'Runtuh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7901_menghancurkan, 'ぼつらく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7901_menghancurkan, '本当に日本は没落していると思いますか？', 'Apakah menurut Anda Jepang benar-benar sedang runtuh?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7902_penanaman, 'Penanaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7902_penanaman, 'Pemakaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7902_penanaman, 'Penyematan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7902_penanaman, 'まいぼつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7902_penanaman, '整形手術で二重の埋没手術をしました。', 'Saya menjalani operasi kelopak mata ganda dengan operasi plastik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7903_sering_muncul, 'Sering Muncul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7903_sering_muncul, 'Mengganggu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7903_sering_muncul, 'しゅつぼつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7903_sering_muncul, '日本各地でクマが大量出没している。', 'Beruang sering muncul dalam jumlah besar di seluruh Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7904_kehilangan, 'Kehilangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7904_kehilangan, 'Kejang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7904_kehilangan, 'Penyitaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7904_kehilangan, 'Menyita', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7904_kehilangan, 'ぼっしゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7904_kehilangan, '先生に携帯電話を没収されました。', 'Aku menyerahkan ponselku kepada guru.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7905_korban, 'Korban', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7905_korban, 'Pengorbanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7905_korban, 'Kambing hitam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7905_korban, 'ぎせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7905_korban, 'だれかを犠牲にしてまで成功したいかい？', 'Apakah Anda begitu ingin sukses hingga rela mengorbankan seseorang?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7906_memburu, 'Memburu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7906_memburu, 'Permainan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7906_memburu, 'りょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7906_memburu, 'これから猟に行くところだよ。', 'Aku baru saja akan pergi berburu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7907_pemburu, 'Pemburu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7907_pemburu, 'Pemburu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7907_pemburu, 'りょうし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7907_pemburu, '私の叔父は猟師です。', 'Paman saya adalah seorang pemburu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7908_perburuan_liar, 'Perburuan liar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7908_perburuan_liar, 'みつりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7908_perburuan_liar, 'どうすれば象の密猟を防止できると思いますか。', 'Menurut Anda, apa yang bisa dilakukan untuk mencegah perburuan gajah?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7909_memburu, 'Memburu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7909_memburu, 'しゅりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7909_memburu, 'この鳥の狩猟は禁じられています。', 'Perburuan burung ini dilarang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7910_anjing_pemburu, 'Anjing Pemburu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7910_anjing_pemburu, 'Anjing', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7910_anjing_pemburu, 'りょうけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7910_anjing_pemburu, '一般的に猟犬はよく吠えると言われています。', 'Dikatakan bahwa anjing pemburu biasanya banyak menggonggong.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7911_asal, 'Asal', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7911_asal, 'はっしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7911_asal, 'デコポンは日本発祥のみかんの品種です。', 'Dekopon merupakan sejenis jeruk mandarin yang berasal dari Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7912_skandal, 'Skandal', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7912_skandal, 'ふしょうじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7912_skandal, '警察は自分たちの不祥事を隠そうとしているんだ。	', 'Polisi berusaha menyembunyikan skandal mereka sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7913_memesan, 'Memesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7913_memesan, 'Keteraturan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7913_memesan, 'Sistem', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7913_memesan, 'Metode', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7913_memesan, 'ちつじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7913_memesan, '秩序を乱すようなことはしないでください。', 'Tolong jangan ganggu pesanan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7914_ketentuan, 'Ketentuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7914_ketentuan, 'Ransum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7914_ketentuan, 'Makanan Pokok', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7914_ketentuan, 'しょくりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7914_ketentuan, '食糧の備蓄は十分にあります。', 'Ada banyak ketentuan darurat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7914_ketentuan, '食糧不足はこの国だけの問題ではない。', 'Kelangkaan bahan pangan bukan hanya menjadi masalah di negeri ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7914_ketentuan, '軍の上層部が、兵士全てに食糧を配給するのを拒んでいるようだ。', 'Tampaknya eselon atas militer menolak membagikan jatah kepada seluruh prajuritnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7915_sangat_besar, 'Sangat besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7915_sangat_besar, 'Tebal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7915_sangat_besar, 'Sangat besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7915_sangat_besar, 'Luas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7915_sangat_besar, 'ぼうだい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7915_sangat_besar, 'これからこの膨大な資料に目を通さなくてはいけないんだ。', 'Anda harus melihat dokumen-dokumen besar ini mulai sekarang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7916_membengkak, 'Membengkak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7916_membengkak, 'Untuk Memperluas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7916_membengkak, 'Menjadi Meningkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7916_membengkak, 'Untuk menggembung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7916_membengkak, 'Untuk menonjol', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7916_membengkak, 'ふくれる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7916_membengkak, '食べ過ぎてお腹がパンパンに膨れています。', 'Aku makan berlebihan dan perutku bengkak seperti balon.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7917_ekspansi, 'Ekspansi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7917_ekspansi, 'Pembengkakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7917_ekspansi, 'Meningkatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7917_ekspansi, 'Pertumbuhan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7917_ekspansi, 'ぼうちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7917_ekspansi, '宇宙は膨張しています。', 'Alam semesta sedang mengembang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7918_parfum, 'Parfum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7918_parfum, 'Bau Manis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7918_parfum, 'ほうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7918_parfum, 'お風呂あがりには、アロマオイルの芳香を楽しみます。', 'Saya menikmati aroma minyak aroma setelah keluar dari kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7918_parfum, '車用の芳香剤で何かお勧めはありますか？', 'Ada saran mengenai pengharum ruangan untuk mobil?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7918_parfum, 'このワインは甘く濃い芳香があり、ほろ苦いけど口にやわらかく飲みやすいです。', 'Anggur ini memiliki aroma yang manis, kaya, dan rasa sedikit pahit, namun lembut di langit-langit mulut dan mudah diminum.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7919_aromatik, 'Aromatik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7919_aromatik, 'Harum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7919_aromatik, 'Berbau Manis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7919_aromatik, 'かんばしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7919_aromatik, 'この季節は、梅の香りがとても芳しいですね。', 'Aroma buah plum sungguh harum di musim ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7920_duri, 'Duri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7920_duri, 'Mawar liar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7920_duri, 'Mawar Liar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7920_duri, 'いばら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7920_duri, 'この程度の苦難で、茨の道を歩んでいるような人生だとか、よく言えるよね。', 'Bagaimana Anda bisa mengatakan bahwa tingkat kesulitan ini seperti berjalan di jalan yang sulit dalam hidup?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7921_ambisi, 'Ambisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7921_ambisi, 'Aspirasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7921_ambisi, 'Roh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7921_ambisi, 'はき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7921_ambisi, 'うちの息子は、若いのに覇気が無い。', 'Meskipun masih muda, anak saya kurang ambisius.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7922_penaklukan, 'Penaklukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7922_penaklukan, 'Dominasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7922_penaklukan, 'Penguasaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7922_penaklukan, 'せいは', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7922_penaklukan, 'わが校の野球部が、秋のリーグ戦を制覇しました。', 'Klub bisbol sekolah kami mendominasi pertandingan liga musim gugur.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7923_hegemoni, 'Hegemoni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7923_hegemoni, 'Supremasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7923_hegemoni, 'はけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7923_hegemoni, 'あの男が党内の覇権を握っているのです。', 'Orang itu berkuasa atas partai.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7924_penguasa_tertinggi, 'Penguasa Tertinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7924_penguasa_tertinggi, 'Juara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7924_penguasa_tertinggi, 'はしゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7924_penguasa_tertinggi, 'あいつらが前年度のこの大会の覇者です。', 'Mereka adalah juara turnamen tahun lalu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7925_kemenangan_beruntun, 'Kemenangan Beruntun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7925_kemenangan_beruntun, 'Kejuaraan Berturut-turut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7925_kemenangan_beruntun, 'Kemenangan Berturut-turut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7925_kemenangan_beruntun, 'れんぱ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7925_kemenangan_beruntun, '今までに甲子園を三連覇した高校はありますか？', 'Apakah ada sekolah menengah yang sudah meraih tiga kemenangan berturut-turut di Koshien?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7925_kemenangan_beruntun, '１９９３年、トロント・ブルージェイズは九回裏から逆転サヨナラホームランで見事返り咲き、ワールドシリーズ連覇を果たした。', 'Pada tahun 1993, Toronto Blue Jays melakukan comeback yang menakjubkan dengan home run di posisi terbawah kesembilan untuk memenangkan kejuaraan Seri Dunia berturut-turut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7926_konter_sushi, 'Konter Sushi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7926_konter_sushi, 'Konter Untuk Potongan Sushi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7926_konter_sushi, 'かん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7926_konter_sushi, 'マグロを二貫ください。', 'Tolong, dua potong tuna.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7927_satu_potong_sushi, 'Satu Potong Sushi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7927_satu_potong_sushi, 'Konsistensi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7927_satu_potong_sushi, 'Integrasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7927_satu_potong_sushi, 'いっかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7927_satu_potong_sushi, '最高級のトロを一貫だけ注文しました。', 'Saya memesan hanya satu potong tuna berlemak kualitas tertinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7927_satu_potong_sushi, 'その猟師は一貫してノーと言い続け、結局一貫も寿司を食べないまま日本を後にした。', 'Pemburu itu terus-menerus mengatakan tidak, dan akhirnya meninggalkan Jepang tanpa makan satu pun sushi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7927_satu_potong_sushi, 'お客様には一貫した対応を取らないと、後でクレームが来ますよ。', 'Anda harus konsisten dengan pelanggan Anda atau Anda akan mendapat keluhan di kemudian hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7928_menembus, 'Menembus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7928_menembus, 'Menembus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7928_menembus, 'Melubangi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7928_menembus, 'かんつう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7928_menembus, 'ブラジャーのワイヤーが弾丸の貫通を防いでくれた。', 'Bra kawatku melindungiku dari tembusnya peluru.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7929_kegigihan, 'Kegigihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7929_kegigihan, 'Prestasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7929_kegigihan, 'Melaksanakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7929_kegigihan, 'Kegigihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7929_kegigihan, 'Realisasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7929_kegigihan, 'Realisasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7929_kegigihan, 'かんてつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7929_kegigihan, '大変だったけど、みんなで決めた計画を貫徹することができた。', 'Itu sulit, tetapi kami mampu melaksanakan rencana yang telah kami putuskan bersama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7929_kegigihan, '十年前の夢を貫徹できなかったことを残念に思います。', 'Saya menyesal tidak dapat mewujudkan mimpi yang saya alami sepuluh tahun yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7929_kegigihan, '初志貫徹の心構えで頑張ります。', 'Saya akan melakukan yang terbaik untuk bersiap mencapai tujuan awal saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7930_untuk_melewati, 'Untuk Melewati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7930_untuk_melewati, 'Untuk menembus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7930_untuk_melewati, 'Untuk Menindaklanjuti', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7930_untuk_melewati, 'つらぬく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7930_untuk_melewati, '一度決めたことは、最後まで貫くべきだ。', 'Setelah Anda memutuskan sesuatu, Anda harus menindaklanjutinya sampai akhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7930_untuk_melewati, '彼女は沈黙を貫きました。', 'Dia tetap diam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7930_untuk_melewati, '新幹線は山々を貫いて都市を結んでいます。', 'Kereta peluru menembus pegunungan dan menghubungkan kota-kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7930_untuk_melewati, 'カツ丼への愛を貫いた結果、3日で5キロ太った。', 'Saya tetap setia pada kecintaan saya pada katsudon, dan hasilnya berat badan saya bertambah 5 kg dalam tiga hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7930_untuk_melewati, '彼の言葉は、鋼鉄の扉を貫く弾丸のように、重く硬くなっていた私の心を貫いた。', 'Kata-katanya menusuk hatiku yang keras dan berat seperti peluru menembus pintu baja.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7931_bergegas, 'Bergegas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7931_bergegas, 'Mengenakan biaya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7931_bergegas, 'とっかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7931_bergegas, '突貫工事で犬小屋を建てました。', 'Kami membangun rumah anjing dengan membangunnya dengan kecepatan tinggi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7932_reparasi, 'Reparasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7932_reparasi, 'Kompensasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7932_reparasi, 'ばいしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7932_reparasi, 'それは賠償請求できるはずですよ。', 'Anda harus dapat mengklaim kompensasi untuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7932_reparasi, '被害総額の全額を賠償してください。', 'Mohon kompensasi kepada kami atas jumlah penuh kerusakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7932_reparasi, '他人の代理人として契約をした者は、相手方に対して履行又は損害賠償の責任を負う。', 'Seseorang yang mengadakan kontrak sebagai agen orang lain bertanggung jawab kepada pihak lain atas kinerja atau kerugian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7933_perlakuan, 'Perlakuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7933_perlakuan, 'Berurusan Dengan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7933_perlakuan, 'しょぐう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7933_perlakuan, '不正を行った社員の処遇を考えなくてはいけません。', 'Kita harus memikirkan bagaimana cara menghadapi karyawan perusahaan yang melakukan pelanggaran.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7934_bertemu, 'Bertemu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7934_bertemu, 'そうぐう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7934_bertemu, '悲惨な交通事故に遭遇しました。', 'Saya mengalami kecelakaan lalu lintas yang tragis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7935_perlakuan, 'Perlakuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7935_perlakuan, 'Penerimaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7935_perlakuan, 'たいぐう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7935_perlakuan, 'このカードのお陰で、VIP待遇を味わうことができました。', 'Berkat kartu ini saya bisa merasakan perlakuan VIP.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7936_perlakuan_istimewa, 'Perlakuan Istimewa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7936_perlakuan_istimewa, 'Perlakuan yang Menguntungkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7936_perlakuan_istimewa, 'ゆうぐう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7936_perlakuan_istimewa, '高齢者を優遇しすぎじゃないでしょうか。', 'Kita tidak boleh memberikan terlalu banyak perlakuan istimewa kepada orang yang lebih tua.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7937_penerimaan_dingin, 'Penerimaan Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7937_penerimaan_dingin, 'Ketidakramahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7937_penerimaan_dingin, 'れいぐう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7937_penerimaan_dingin, '彼は実力があるのにどうしてこんなに冷遇されているんですか。', 'Jika dia begitu hebat lalu mengapa dia mendapat sambutan yang begitu dingin?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7938_lingkungan, 'Lingkungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7938_lingkungan, 'Keadaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7938_lingkungan, 'きょうぐう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7938_lingkungan, '自分の不幸を境遇のせいにするんじゃない。', 'Anda tidak bisa menyalahkan lingkungan atas ketidakbahagiaan Anda sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7939_untuk_bertemu, 'Untuk Bertemu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7939_untuk_bertemu, 'Untuk Bertemu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7939_untuk_bertemu, 'あう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7939_untuk_bertemu, '露骨な人種差別に遭ったことはありますか。', 'Pernahkah Anda menghadapi diskriminasi rasial yang terang-terangan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7940_bencana, 'Bencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7940_bencana, 'Kecelakaan kapal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7940_bencana, 'Kecelakaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7940_bencana, 'Terdampar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7940_bencana, 'そうなん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7940_bencana, '危うく遭難するところでした。', 'Kami nyaris melewatkan bencana.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7941_rantai, 'Rantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7941_rantai, 'Rantai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7941_rantai, 'くさり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7941_rantai, '逃げないように鎖で繋いでいます。', 'Mereka diikat dengan rantai agar tidak bisa melarikan diri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7942_isolasi_nasional, 'Isolasi Nasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7942_isolasi_nasional, 'Pengecualian Terhadap Orang Asing', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7942_isolasi_nasional, 'さこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7942_isolasi_nasional, '日本が鎖国していたのはいつですか。', 'Kapan Jepang dalam isolasi nasional?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7943_blokade, 'Blokade', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7943_blokade, 'Pembekuan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7943_blokade, 'ふうさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7943_blokade, '銀行が潰れて、預金が封鎖されてしまったんです。', 'Bank bangkrut dan rekening saya dibekukan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7944_penutupan, 'Penutupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7944_penutupan, 'Penutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7944_penutupan, 'Penutupan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7944_penutupan, 'Penguncian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7944_penutupan, 'Tdk ramah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7944_penutupan, 'へいさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7944_penutupan, 'このプールは今月で閉鎖されます。', 'Kolam renang ditutup bulan ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7945_rantai, 'Rantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7945_rantai, 'Rantai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7945_rantai, 'Koneksi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7945_rantai, 'れんさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7945_rantai, 'まずはこの負の連鎖を断ち切る必要があります。', 'Pertama, ada kebutuhan untuk memutus rantai peristiwa yang tidak menguntungkan ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7946_untuk_jatuh_ke, 'Untuk Jatuh Ke', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7946_untuk_jatuh_ke, 'Untuk Dilemparkan Ke Dalam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7946_untuk_jatuh_ke, 'おちいる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7946_untuk_jatuh_ke, 'このままでは、価格競争に陥るのがオチですよ。', 'Jika terus begini, kita pada akhirnya akan terjerumus ke dalam perang harga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7946_untuk_jatuh_ke, '火災報知器が鳴って、社員全員がパニックに陥った。', 'Alarm kebakaran berbunyi, dan semua karyawan menjadi panik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7946_untuk_jatuh_ke, '私は道に迷いやすく、ドライブ中によく「ここどこ？」状態に陥る。', 'Saya mudah tersesat, jadi saat mengemudi saya sering bertanya-tanya "Di mana saya?" situasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7946_untuk_jatuh_ke, '経済危機が悪化し、国はなんの手の施しようもない状況に陥った。', 'Krisis ekonomi semakin parah, dan negara ini berada dalam situasi yang tidak dapat ditolong lagi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7947_menyerah, 'Menyerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7947_menyerah, 'Runtuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7947_menyerah, 'Tenggelamnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7947_menyerah, 'Depresi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7947_menyerah, 'かんぼつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7947_menyerah, '地震であそこの道路が陥没したそうです。', 'Sepertinya jalan raya di sana runtuh akibat gempa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7948_jatuh, 'Jatuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7948_jatuh, 'Tenggelamnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7948_jatuh, 'Menyerah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7948_jatuh, 'かんらく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7948_jatuh, 'トヨタが世界一から陥落したのは何故だと思いますか。', 'Menurut Anda mengapa Toyota gagal menjadi yang terbaik di dunia?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7949_cacat, 'Cacat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7949_cacat, 'Kesalahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7949_cacat, 'けっかん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7949_cacat, '消費者からこの商品の安全性の欠陥が指摘されています。', 'Cacat keamanan pada produk ini diidentifikasi oleh konsumen.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7950_klise, 'Klise', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7950_klise, 'Basi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7950_klise, 'Usang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7950_klise, 'ちんぷ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7950_klise, '陳腐な台詞しか思い浮かびません。', 'Saya tidak bisa memikirkan apa pun kecuali kalimat klise.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7951_pameran, 'Pameran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7951_pameran, 'Menampilkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7951_pameran, 'Menunjukkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7951_pameran, 'ちんれつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7951_pameran, 'あなたは、パン屋のむき出しの陳列についてどう思いますか。', 'Apa pendapat Anda tentang pameran toko roti tersebut?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7952_penyataan, 'Penyataan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7952_penyataan, 'Pernyataan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7952_penyataan, 'Dugaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7952_penyataan, 'ちんじゅつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7952_penyataan, 'まず、被告人が冒頭陳述を行います。', 'Pertama, tergugat akan menyampaikan pernyataan pembukanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7953_permohonan, 'Permohonan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7953_permohonan, 'Menarik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7953_permohonan, 'ちんじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7953_permohonan, '請願・陳情は、住民の意見や要望を反映させるための制度です。', 'Petisi adalah suatu sistem untuk mencerminkan pendapat dan permintaan warga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7954_elang, 'Elang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7954_elang, 'はやぶさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7954_elang, '俺の一番好きなバイクは、スズキの隼です。', 'Sepeda motor favorit saya adalah Suzuki Falcon.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7955_sangat_diperlukan, 'Sangat diperlukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7955_sangat_diperlukan, 'Diperlukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7955_sangat_diperlukan, 'Penting', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7955_sangat_diperlukan, 'ひっす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7955_sangat_diperlukan, 'デフォルトでは、名前と生年月日、メールアドレスの入力が必須になっています。', 'Secara default, Anda diminta memasukkan nama, tanggal lahir, dan alamat email Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7956_dengan_cepat, 'Dengan cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7956_dengan_cepat, 'Tiba-tiba', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7956_dengan_cepat, 'さっと', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7956_dengan_cepat, '茜は颯と涙を拭った。', 'Akane dengan cepat menghapus air matanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7957_mandi, 'Mandi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7957_mandi, 'おふろ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7957_mandi, 'ゆっくりお風呂に浸かりたいなあ。', 'Saya ingin berendam perlahan di bak mandi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9057_tempat_tidur_kucing, 'Tempat Tidur Kucing', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9057_tempat_tidur_kucing, 'あやとり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9057_tempat_tidur_kucing, '子供の時、綾取りをしていたのを覚えています。', 'Saya ingat bermain buaian kucing ketika saya masih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9057_tempat_tidur_kucing, 'この間、綾取りに挑戦した。', 'Suatu hari, saya mencoba tangan saya di tempat tidur kucing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9057_tempat_tidur_kucing, 'マミさんには折り紙や綾取りなどいろいろな遊びを教えてもらいました。', 'Mami mengajari kami berbagai permainan seperti origami dan ayunan kucing.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9101_ayano, 'Ayano', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9101_ayano, 'あやの', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9101_ayano, '子供の頃、綾乃というとても無邪気な女の子と友達だった。', 'Ketika aku masih kecil, aku berteman dengan seorang gadis lugu bernama Ayano.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9101_ayano, '先日、綾乃さんから電話があったんですが、留守電にメッセージが入っていなかったんです。', 'Ayano menelepon beberapa hari yang lalu tapi dia tidak meninggalkan pesan suara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9101_ayano, '綾乃ちゃんと亮平君が殴り合いをしているけど、どうしよう。', 'Ayano-chan dan Ryohei-kun sedang berkelahi, tapi apa yang harus aku lakukan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9102_daisuke, 'Daisuke', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9102_daisuke, 'Taifu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9102_daisuke, 'Osuke', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9102_daisuke, 'だいすけ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9102_daisuke, 'たいふ', false);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9102_daisuke, 'おおすけ', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9102_daisuke, 'その方の配偶者は大輔さんという方だと思います。', 'Saya yakin pasangan orang itu bernama Daisuke.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9102_daisuke, '大輔はとても感銘を受けた。', 'Daisuke sangat terkesan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9102_daisuke, '大輔君の苗字は何か知ってる？', 'Tahukah kamu siapa nama keluarga Daisuke-kun?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9315_resusitasi, 'Resusitasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9315_resusitasi, 'Kebangkitan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9315_resusitasi, 'そせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9315_resusitasi, '今日は心肺蘇生法を学びます。', 'Hari ini saya akan belajar resusitasi jantung paru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9315_resusitasi, '私は必死で蘇生を試みました。', 'Saya mati-matian mencoba melakukan resusitasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9315_resusitasi, 'この本では、死者を蘇生する魔術について詳しく書かれています。', 'Buku ini memberikan informasi rinci tentang sihir yang digunakan untuk membangkitkan orang mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9315_resusitasi, '新社長は見事に組織を蘇生させてみせた。', 'Presiden baru berhasil menghidupkan kembali organisasi tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9405_permaisuri, 'Permaisuri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9405_permaisuri, 'Permaisuri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9405_permaisuri, 'Ratu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9405_permaisuri, 'きさき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9405_permaisuri, 'お后様がりんごを落として潰してしまったんです。', 'Yang Mulia menjatuhkan apel itu dan meremukkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9405_permaisuri, '后は静かに玉座の横に座っていた。', 'Permaisuri duduk dengan tenang di samping takhta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9405_permaisuri, 'その国の后は民に深くしたわれていた。', 'Ratu kerajaan itu sangat dicintai rakyatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9405_permaisuri, '后の姿が見えると、侍たちは一斉に頭を下げた。', 'Ketika permaisuri muncul, semua samurai membungkuk sekaligus.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2155_menyerah, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2155_menyerah, id FROM items WHERE character = '勹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2155_menyerah, id FROM items WHERE character = '旧' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2156_menembus, id FROM items WHERE character = '毋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2156_menembus, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2157_kepemimpinan, id FROM items WHERE character = '覀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2157_kepemimpinan, id FROM items WHERE character = '革' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2157_kepemimpinan, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2158_mandi, id FROM items WHERE character = '呂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2159_mawar_liar, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2159_mawar_liar, id FROM items WHERE character = '次' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2160_merangkul, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2160_merangkul, id FROM items WHERE character = '亠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2160_merangkul, id FROM items WHERE character = '幺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2160_merangkul, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2161_yatim_piatu, id FROM items WHERE character = '瓜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2161_yatim_piatu, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2162_kompensasi, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2162_kompensasi, id FROM items WHERE character = '咅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2163_rantai, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2163_rantai, id FROM items WHERE character = '⺌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2163_rantai, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2164_meletus, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2164_meletus, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2164_meletus, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2164_meletus, id FROM items WHERE character = '貝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2165_menguntungkan, id FROM items WHERE character = 'ネ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2165_menguntungkan, id FROM items WHERE character = '羊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2166_menawarkan, id FROM items WHERE character = '牛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2166_menawarkan, id FROM items WHERE character = '生' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2167_memesan, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2167_memesan, id FROM items WHERE character = '失' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2168_menghasut, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2168_menghasut, id FROM items WHERE character = '夋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2169_membengkak, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2169_membengkak, id FROM items WHERE character = '壴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2169_membengkak, id FROM items WHERE character = '彡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2170_aromatik, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2170_aromatik, id FROM items WHERE character = '方' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2171_konstan, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2171_konstan, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2171_konstan, id FROM items WHERE character = '旦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2172_etika, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2172_etika, id FROM items WHERE character = '𠆢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2172_etika, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2172_etika, id FROM items WHERE character = '冊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2173_pameran, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2173_pameran, id FROM items WHERE character = '東' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2174_diperlukan, id FROM items WHERE character = '彡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2174_diperlukan, id FROM items WHERE character = '頁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2175_bias, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2175_bias, id FROM items WHERE character = '扁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2176_perlakuan, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2176_perlakuan, id FROM items WHERE character = '禺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2177_ketentuan, id FROM items WHERE character = '米' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2177_ketentuan, id FROM items WHERE character = '旦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2177_ketentuan, id FROM items WHERE character = '里' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2178_khususnya, id FROM items WHERE character = '歹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2178_khususnya, id FROM items WHERE character = '丿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2178_khususnya, id FROM items WHERE character = '未' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2179_terlalu_percaya_diri, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2179_terlalu_percaya_diri, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2179_terlalu_percaya_diri, id FROM items WHERE character = '罒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2179_terlalu_percaya_diri, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2180_mati, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2180_mati, id FROM items WHERE character = '殳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2181_malas, id FROM items WHERE character = '台' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2181_malas, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2182_bertemu, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2182_bertemu, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2182_bertemu, id FROM items WHERE character = '曲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2182_bertemu, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2183_malas, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2183_malas, id FROM items WHERE character = 'ナ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2183_malas, id FROM items WHERE character = '工' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2183_malas, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2184_memburu, id FROM items WHERE character = '犭' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2184_memburu, id FROM items WHERE character = '𭕄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2184_memburu, id FROM items WHERE character = '用' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2185_dari, id FROM items WHERE character = '乃' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2186_desain, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2186_desain, r_426_radang_dingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2187_cepat, id FROM items WHERE character = '立' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2187_cepat, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2188_elang, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2188_elang, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2189_membantu, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2189_membantu, id FROM items WHERE character = '甫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9313_membangkitkan, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9313_membangkitkan, id FROM items WHERE character = '魚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_9313_membangkitkan, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7270_sinar_ultraviolet, id FROM items WHERE character = '紫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7270_sinar_ultraviolet, id FROM items WHERE character = '外' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7270_sinar_ultraviolet, id FROM items WHERE character = '線' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7860_wanikani, id FROM items WHERE character = '鰐' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7860_wanikani, id FROM items WHERE character = '蟹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7861_zina, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7861_zina, k_2172_etika);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7862_etika, k_2172_etika);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7862_etika, id FROM items WHERE character = '理' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7863_menjadi_bias, k_2175_bias);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7864_prasangka, k_2175_bias);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7864_prasangka, id FROM items WHERE character = '見' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7865_berpikiran_sempit, k_2175_bias);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7865_berpikiran_sempit, id FROM items WHERE character = '狭' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7866_pola_makan_tidak_seimbang, k_2175_bias);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7866_pola_makan_tidak_seimbang, id FROM items WHERE character = '食' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7867_saran, id FROM items WHERE character = '示' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7867_saran, k_2168_menghasut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7868_letusan, k_2164_meletus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7868_letusan, id FROM items WHERE character = '火' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7869_asap_vulkanik, k_2164_meletus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7869_asap_vulkanik, id FROM items WHERE character = '煙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7870_jet, k_2164_meletus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7870_jet, id FROM items WHERE character = '射' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7871_air_mancur, k_2164_meletus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7871_air_mancur, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7872_memuntahkan, k_2164_meletus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7872_memuntahkan, id FROM items WHERE character = '出' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7873_yatim_piatu, k_2161_yatim_piatu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7873_yatim_piatu, id FROM items WHERE character = '児' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7874_pulau_soliter, k_2161_yatim_piatu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7874_pulau_soliter, id FROM items WHERE character = '島' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7875_isolasi, k_2161_yatim_piatu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7875_isolasi, id FROM items WHERE character = '独' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7876_isolasi, k_2161_yatim_piatu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7876_isolasi, id FROM items WHERE character = '立' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7877_kemalasan, k_2181_malas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7877_kemalasan, k_2183_malas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7878_menjadi_lalai, k_2181_malas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7879_bintang, k_2171_konstan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7879_bintang, id FROM items WHERE character = '星' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7880_praktek_yang_didirikan, k_2171_konstan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7880_praktek_yang_didirikan, id FROM items WHERE character = '例' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7881_permanen, k_2171_konstan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7881_permanen, id FROM items WHERE character = '久' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7882_keteguhan, k_2171_konstan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7882_keteguhan, id FROM items WHERE character = '常' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7883_kelembaman, k_2183_malas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7883_kelembaman, id FROM items WHERE character = '性' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7884_ketahanan, id FROM items WHERE character = '我' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7884_ketahanan, k_2179_terlalu_percaya_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7885_kebanggaan, id FROM items WHERE character = '自' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7885_kebanggaan, k_2179_terlalu_percaya_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7886_lambat, id FROM items WHERE character = '緩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7886_lambat, k_2179_terlalu_percaya_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7887_kelalaian, k_2181_malas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7887_kelalaian, k_2179_terlalu_percaya_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7888_kronis, k_2179_terlalu_percaya_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7888_kronis, id FROM items WHERE character = '性' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7889_perlindungan, k_2160_merangkul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7889_perlindungan, id FROM items WHERE character = '護' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7890_merangkul, id FROM items WHERE character = '抱' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7890_merangkul, k_2160_merangkul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7891_dukungan, k_2160_merangkul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7891_dukungan, id FROM items WHERE character = '立' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7892_untuk_memiliki, k_2160_merangkul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7893_spesial, id FROM items WHERE character = '特' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7893_spesial, k_2178_khususnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7894_terpuji, k_2178_khususnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7894_terpuji, id FROM items WHERE character = '勝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7895_membuang, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7896_setelah_kematian, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7896_setelah_kematian, id FROM items WHERE character = '後' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7897_tewas_dalam_aksi, id FROM items WHERE character = '戦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7897_tewas_dalam_aksi, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7898_tenggelamnya, id FROM items WHERE character = '沈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7898_tenggelamnya, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7899_matahari_terbenam, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7899_matahari_terbenam, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7900_membenamkan_diri, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7900_membenamkan_diri, id FROM items WHERE character = '頭' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7901_menghancurkan, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7901_menghancurkan, id FROM items WHERE character = '落' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7902_penanaman, id FROM items WHERE character = '埋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7902_penanaman, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7903_sering_muncul, id FROM items WHERE character = '出' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7903_sering_muncul, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7904_kehilangan, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7904_kehilangan, id FROM items WHERE character = '収' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7905_korban, id FROM items WHERE character = '犠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7905_korban, k_2166_menawarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7906_memburu, k_2184_memburu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7907_pemburu, k_2184_memburu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7907_pemburu, id FROM items WHERE character = '師' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7908_perburuan_liar, id FROM items WHERE character = '密' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7908_perburuan_liar, k_2184_memburu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7909_memburu, id FROM items WHERE character = '狩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7909_memburu, k_2184_memburu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7910_anjing_pemburu, k_2184_memburu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7910_anjing_pemburu, id FROM items WHERE character = '犬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7911_asal, id FROM items WHERE character = '発' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7911_asal, k_2165_menguntungkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7912_skandal, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7912_skandal, k_2165_menguntungkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7912_skandal, id FROM items WHERE character = '事' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7913_memesan, k_2167_memesan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7913_memesan, id FROM items WHERE character = '序' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7914_ketentuan, id FROM items WHERE character = '食' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7914_ketentuan, k_2177_ketentuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7915_sangat_besar, k_2169_membengkak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7915_sangat_besar, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7916_membengkak, k_2169_membengkak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7917_ekspansi, k_2169_membengkak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7917_ekspansi, id FROM items WHERE character = '張' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7918_parfum, k_2170_aromatik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7918_parfum, id FROM items WHERE character = '香' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7919_aromatik, k_2170_aromatik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7920_duri, k_2159_mawar_liar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7921_ambisi, k_2157_kepemimpinan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7921_ambisi, id FROM items WHERE character = '気' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7922_penaklukan, id FROM items WHERE character = '制' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7922_penaklukan, k_2157_kepemimpinan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7923_hegemoni, k_2157_kepemimpinan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7923_hegemoni, id FROM items WHERE character = '権' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7924_penguasa_tertinggi, k_2157_kepemimpinan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7924_penguasa_tertinggi, id FROM items WHERE character = '者' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7925_kemenangan_beruntun, id FROM items WHERE character = '連' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7925_kemenangan_beruntun, k_2157_kepemimpinan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7926_konter_sushi, k_2156_menembus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7927_satu_potong_sushi, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7927_satu_potong_sushi, k_2156_menembus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7928_menembus, k_2156_menembus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7928_menembus, id FROM items WHERE character = '通' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7929_kegigihan, k_2156_menembus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7929_kegigihan, id FROM items WHERE character = '徹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7930_untuk_melewati, k_2156_menembus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7931_bergegas, id FROM items WHERE character = '突' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7931_bergegas, k_2156_menembus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7932_reparasi, k_2162_kompensasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7932_reparasi, id FROM items WHERE character = '償' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7933_perlakuan, id FROM items WHERE character = '処' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7933_perlakuan, k_2176_perlakuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7934_bertemu, k_2182_bertemu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7934_bertemu, k_2176_perlakuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7935_perlakuan, id FROM items WHERE character = '待' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7935_perlakuan, k_2176_perlakuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7936_perlakuan_istimewa, id FROM items WHERE character = '優' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7936_perlakuan_istimewa, k_2176_perlakuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7937_penerimaan_dingin, id FROM items WHERE character = '冷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7937_penerimaan_dingin, k_2176_perlakuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7938_lingkungan, id FROM items WHERE character = '境' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7938_lingkungan, k_2176_perlakuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7939_untuk_bertemu, k_2182_bertemu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7940_bencana, k_2182_bertemu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7940_bencana, id FROM items WHERE character = '難' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7941_rantai, k_2163_rantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7942_isolasi_nasional, k_2163_rantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7942_isolasi_nasional, id FROM items WHERE character = '国' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7943_blokade, id FROM items WHERE character = '封' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7943_blokade, k_2163_rantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7944_penutupan, id FROM items WHERE character = '閉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7944_penutupan, k_2163_rantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7945_rantai, id FROM items WHERE character = '連' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7945_rantai, k_2163_rantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7946_untuk_jatuh_ke, k_2155_menyerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7947_menyerah, k_2155_menyerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7947_menyerah, k_2180_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7948_jatuh, k_2155_menyerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7948_jatuh, id FROM items WHERE character = '落' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7949_cacat, id FROM items WHERE character = '欠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7949_cacat, k_2155_menyerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7950_klise, k_2173_pameran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7950_klise, id FROM items WHERE character = '腐' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7951_pameran, k_2173_pameran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7951_pameran, id FROM items WHERE character = '列' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7952_penyataan, k_2173_pameran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7952_penyataan, id FROM items WHERE character = '述' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7953_permohonan, k_2173_pameran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7953_permohonan, id FROM items WHERE character = '情' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7954_elang, k_2188_elang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7955_sangat_diperlukan, id FROM items WHERE character = '必' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7955_sangat_diperlukan, k_2174_diperlukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7956_dengan_cepat, k_2187_cepat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7957_mandi, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7957_mandi, k_2158_mandi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9057_tempat_tidur_kucing, k_2186_desain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9057_tempat_tidur_kucing, id FROM items WHERE character = '取' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9101_ayano, k_2186_desain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9101_ayano, k_2185_dari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9102_daisuke, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9102_daisuke, k_2189_membantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9315_resusitasi, k_9313_membangkitkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9315_resusitasi, id FROM items WHERE character = '生' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9405_permaisuri, id FROM items WHERE character = '后' LIMIT 1;

END $$;