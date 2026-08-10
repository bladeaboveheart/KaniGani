-- ====================================================
-- KaniGani — Seed Data Level 43 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 43) ============
  r_388_membajak UUID; r_389_imperial UUID; r_412_luak UUID;

  -- ============ KANJI IDs (Level 43) ============
  k_1838_langka UUID; k_1839_membelah UUID; k_1840_menyerang UUID; k_1841_upeti UUID; k_1842_pesona UUID; k_1843_jarak UUID; k_1844_daftar UUID; k_1845_membuka UUID; k_1846_padang_rumput UUID; k_1847_pencetakan UUID; k_1848_terang UUID; k_1849_gelombang_pasang UUID; k_1850_instan UUID; k_1851_pagar UUID; k_1852_harga_diri UUID; k_1853_segel UUID; k_1854_silinder UUID; k_1856_penghiburan UUID; k_1857_sopan UUID; k_1858_menghukum UUID; k_1859_dongkol UUID; k_1860_menggosok UUID; k_1861_tamparan UUID; k_1862_serentak UUID; k_1863_titik UUID; k_1864_lembut UUID; k_1865_tenggelam UUID; k_1867_perdamaian UUID; k_1868_menghancurkan UUID; k_1869_bergizi UUID; k_1870_perapian UUID; k_1871_harpa UUID; k_2115_kristal UUID; k_9470_menarik UUID;

  -- ============ VOCABULARY IDs (Level 43) ============
  v_6631_yokozuna UUID; v_6648_pulau_kapal_perang UUID; v_6649_palsu UUID; v_6650_bundel UUID; v_6652_memang UUID; v_6655_tidak_biasa UUID; v_6656_kelezatan UUID; v_6657_langka UUID; v_6658_merobek UUID; v_6659_perincian UUID; v_6660_membelah UUID; v_6661_untuk_menyerang UUID; v_6662_menyerang UUID; v_6663_serangan_kejutan UUID; v_6664_serangan_udara UUID; v_6665_serangan_balasan UUID; v_6666_kontribusi UUID; v_6667_pesona UUID; v_6668_hobi UUID; v_6669_jarak UUID; v_6670_daftar_keluarga UUID; v_6671_kebangsaan UUID; v_6672_penyingkapan UUID; v_6673_jujur UUID; v_6674_kios_jalanan UUID; v_6675_paparan UUID; v_6676_pendeta UUID; v_6677_tanah_padang_rumput UUID; v_6678_padang_rumput UUID; v_6679_peternakan UUID; v_6680_pencetakan UUID; v_6681_untuk_mencetak UUID; v_6682_terang UUID; v_6683_kabar_baik UUID; v_6684_terang UUID; v_6685_gelombang_pasang UUID; v_6686_gelombang_pasang UUID; v_6687_air_pasang UUID; v_6688_gelombang_pasang UUID; v_6689_segera UUID; v_6690_improvisasi UUID; v_6691_segera UUID; v_6692_kematian_instan UUID; v_6693_hari_yang_sama UUID; v_6694_efek_langsung UUID; v_6695_pagar UUID; v_6696_pagar UUID; v_6697_dinding_batu UUID; v_6698_otoritas UUID; v_6699_untuk_bertindak_besar UUID; v_6700_barang_pitcher UUID; v_6701_harga_diri UUID; v_6702_segel UUID; v_6703_membuka_segel UUID; v_6704_surat_tersegel UUID; v_6705_feodalisme UUID; v_6706_amplop UUID; v_6707_pipa UUID; v_6710_penghiburan UUID; v_6711_untuk_menghibur UUID; v_6712_membayar_panggilan_simpati UUID; v_6713_penghiburan UUID; v_6714_ramah UUID; v_6715_obrolan_ramah UUID; v_6716_persahabatan UUID; v_6717_pembicaraan_informal UUID; v_6718_untuk_belajar_berdasarkan_pengalaman UUID; v_6719_disiplin UUID; v_6720_gesekan UUID; v_6722_gulat_sumo UUID; v_6723_serentak UUID; v_6724_lezat UUID; v_6725_inti UUID; v_6726_poin_utama UUID; v_6727_inti_sebuah_argumen UUID; v_6728_lembut UUID; v_6729_judo UUID; v_6730_lembut UUID; v_6732_untuk_tenggelam UUID; v_6733_stagnasi UUID; v_6735_sawah_berawa UUID; v_6738_rawa UUID; v_6739_perdamaian UUID; v_6740_untuk_menghancurkan UUID; v_6741_kejatuhan UUID; v_6742_pemusnahan UUID; v_6743_kepunahan UUID; v_6744_pengrusakan UUID; v_6745_kekecewaan UUID; v_6746_makanan UUID; v_6747_tanur_tinggi UUID; v_6748_perapian UUID; v_6749_inti_reaktor_nuklir UUID; v_6750_reaktor_atom UUID; v_6751_koto UUID; v_6943_pertanyaan UUID; v_6944_untuk_berkelompok UUID; v_6945_untuk_pergi_ke_bawah UUID; v_7424_kristal_cair UUID; v_7425_kristal UUID; v_7836_atap UUID; v_8691_kompensasi UUID; v_8732_embun UUID; v_8811_jimat UUID; v_8877_tuduhan_palsu UUID; v_8903_sangat UUID; v_8942_untuk_digoreng UUID; v_9477_untuk_menarik UUID; v_9492_untuk_tertarik UUID;

BEGIN

  DELETE FROM items WHERE level = 43;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '耒', 'membajak', 43, 1, 'Anda menggeser tanah dengan pohon yang Anda tebang. Alat yang Anda buat ini disebut <radical>bajak</radikal>. Gunakan untuk mendorong kotoran!')
    RETURNING id INTO r_388_membajak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '龍', 'imperial', 43, 2, 'Berdirilah di bulan sehingga Anda dapat memandang rendah negara Anda. Segala garis dan perbatasannya adalah perbatasan semua negara yang Anda kuasai, karena Anda adalah sebuah <radikal>kekaisaran</radikal>.')
    RETURNING id INTO r_389_imperial;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '豸', 'luak', 43, 3, 'Anda tahu radikal hewan. Ini seperti itu dengan sedikit tambahan. Itu sudah binatang... artinya yang perlu Anda lakukan hanyalah mengingat jenis binatang apa. Dalam hal ini, itu adalah <radical>badger</radical>.')
    RETURNING id INTO r_412_luak;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_388_membajak, 'Membajak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_389_imperial, 'Imperial', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_412_luak, 'Luak', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '珍', 'langka', 43, 4, '<radical>topi</radikal> raja, belum lagi <radikal>rambut</radikal> yang menempel di topi tersebut, sangatlah <kanji>langka</kanji>. Jika Anda memiliki salah satu dari hal-hal ini, Anda akan menjadi orang kaya.', 'Kemudian Anda melihat lebih dekat ke topi itu. Ini akan menjadi <kanji>langka</kanji>r. Yang menempel di rambut adalah <reading>dagu</reading> raja (ちん).')
    RETURNING id INTO k_1838_langka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '裂', 'membelah', 43, 5, 'Ketika seorang <radical>yakuza</radical> mengambil <radical>pisau</radical> ke <radical>pakaian</radical>, tentu saja akan menyebabkan <kanji>pecah</kanji> atau <kanji>robek</kanji>.', '"Aku ingin <kanji>membelah</kanji> dan <kanji>merobek</kanji> itu." Anda setuju, jadi Anda mengatakan <read>Ayo</reading> (れつ) lakukan.')
    RETURNING id INTO k_1839_membelah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '襲', 'menyerang', 43, 6, '<radical>Imperial</radical> <radical>pakaian</radical> memungkinkan Anda melakukan <kanji>serangan</kanji> kuno yang tidak dapat ditolak.', 'Kekuatan <kanji>serangan</kanji> terkonsentrasi pada <reading>sepatu</reading> (しゅう) dalam pakaian kekaisaran ini. Anda menyerang dengan kaki Anda, menendang musuh dengan sepatu lama Anda yang mewah.')
    RETURNING id INTO k_1840_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貢', 'upeti', 43, 7, 'Proyek <radikal>konstruksi</radikal> yang terbuat dari <radikal>kerang</radikal> ini akan bertindak sebagai <kanji>penghormatan</kanji> kepada Crabigator.', '<kanji>upeti</kanji> yang luar biasa ini dipesan oleh Kaisar <reading>こう</reading>いち.')
    RETURNING id INTO k_1841_upeti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '趣', 'pesona', 43, 8, 'Anda harus <radical>berlari</radikal>, meletakkan <radical>telinga</radikal> Anda di <radical>bangku</radikal>, lalu berlari kembali. Itulah <kanji>pesona</kanji> dari game ini.', '<kanji>pesona</kanji> tambahan dari game ini adalah adanya <reading>chu</reading>te (しゅ) yang besar di bagian akhir. Ini sangat menawan karena Anda menyukai peluncuran.')
    RETURNING id INTO k_1842_pesona;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '距', 'jarak', 43, 9, '<radikal>kaki</radikal> pada <radikal>raksasa</radikal> adalah <kanji>jarak</kanji> yang cukup jauh untuk berjalan oleh orang normal. Raksasa memiliki kaki yang besar dan dapat melakukan perjalanan <kanji>jarak</kanji> yang jauh dengan sangat cepat.', 'Pergi ke <reading>Kyo</reading>to (きょ) Kecil adalah <kanji>jarak</kanji> yang pendek bagi raksasa tetapi <kanji>jarak</kanji> yang jauh bagi Anda.')
    RETURNING id INTO k_1843_jarak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '籍', 'daftar', 43, 10, 'Orang-orang harus menggunakan <radical>bambu</radical> <radical>bajak</radical> mereka <radical>dulu</radical> untuk memasukkan nama mereka ke dalam <kanji>daftar</kanji>. Hal ini karena belum ada kertas, sehingga mereka akan memasang sapi pada bajak bambu, dan menancapkan nama mereka ke tanah untuk membuat berbagai macam register.', 'Jika nama Anda ada di <kanji>daftar</kanji>, orang akan menganggap Anda sangat <reading>seksi</reading> (せき). Hal ini juga terjadi sejak dahulu kala. Tidak ada yang lebih seksi dari seseorang yang keberadaannya tercatat dalam dokumentasi resmi.')
    RETURNING id INTO k_1844_daftar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '露', 'membuka', 43, 11, 'Jika <radical>hujan</radical> menyentuh <radical>kaki</radical> Anda dan memberinya sedikit <radical>ciuman</radical>, Anda tahu bahwa bagian kaki Anda <kanji>terpapar</kanji> terhadap unsur-unsurnya. Anda juga dapat melihat <kanji>embun</kanji> terbentuk di kaki Anda yang terbuka. Jadi itulah ciuman hujan!', 'Anda berlari di sepanjang <reading>ro</reading>ad (ろ), mencoba menghindari hujan, tetapi jalan terus berjalan, dengan tembok di kedua sisinya.')
    RETURNING id INTO k_1845_membuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '牧', 'padang-rumput', 43, 12, 'Seekor <radical>sapi</radikal> di <radikal>musim dingin</radikal> tidak suka meninggalkan kandang untuk pergi ke <kanji>padang rumput</kanji>. Namun hal itu harus dilakukan, karena sapi harus makan.', 'ぼく adalah salah satu cara umum untuk mengatakan "saya" dalam bahasa Jepang (yang harus Anda ingat!). Dalam hal ini, Anda adalah seorang laki-laki... seorang koboi, dan Anda berkata, "<reading>ぼく</reading>akan membawa sapi-sapi ini ke <kanji>padang rumput</kanji>!"')
    RETURNING id INTO k_1846_padang_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '刷', 'pencetakan', 43, 13, 'Anda mengambil <radical>bendera</radical>, meletakkan <radical>handuk</radical> di bawahnya, dan menggunakan <radical>pisau</radical> untuk mengukir pola pada keduanya. Voila! Ini adalah cara kerja mesin cetak <kanji>cetak</kanji> yang lama.', 'Saat benderamu siap untuk <kanji>dicetak</kanji>, kamu menoleh dan melihat <reading>Satsu</reading>ki (さつ), yang sudah menyelesaikan pola bagus di handuknya. Dia masih terlalu muda untuk menggunakan pisau, tapi hasil cetakannya bagus.')
    RETURNING id INTO k_1847_pencetakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '朗', 'terang', 43, 14, '<radikal>baik</radikal> <radikal>bulan</radikal> adalah bulan yang <kanji>terang</kanji>. Bukan hanya dari segi cahaya, tapi juga mood. Seperti, astaga, bulan yang cerah dan bahagia.', 'Sangat <kanji>terang</kanji> sehingga Anda dapat melihat semua <reading>telur</reading> (ろう) di laut bersinar dan memantulkan cahaya seperti bintang. Dan bayi ikan kecil di dalam telur tersenyum cerah kembali ke bulan!')
    RETURNING id INTO k_1848_terang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '潮', 'gelombang-pasang', 43, 15, '<radikal>tsunami</radikal> kecil terjadi di <radikal>pagi</radikal> dengan <radikal>bulan</radikal>. Itu berarti lautan menjadi lebih besar ketika bulan muncul, dan teman-teman saya hanyalah <kanji>pasang</kanji>.', 'Silakan periksa <kanji>pasang</kanji>. Air masuk sedikit lebih deras, dan sesuatu tersapu ke pantai. Itu tubuh! Anda menggulingkan tubuhnya dan itu adalah Ny. <reading>Chou</reading> (ちょう)!')
    RETURNING id INTO k_1849_gelombang_pasang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '即', 'instan', 43, 16, '<radical>root</radical> dari <radical>cap</radical> adalah untuk mendapatkan gambar <kanji>instan</kanji>. Di masa lalu, orang harus membuat segel dan mengeluarkan sesuatu dengan tangan, sehingga muncullah prangko sehingga Anda dapat—BAM—cukup mencapnya dan mendapatkan apa yang Anda inginkan dalam sekejap.', 'Pikirkan tentang hal yang ingin Anda jadikan <kanji>instan</kanji>. Saya ingin <reading>kaus kaki</reading> instan (そく)! Jangan buang waktu mencari pasangan yang cocok atau mengenakannya. Keluarkan saja sepasang kaus kaki instan, tambahkan air, dan kaus kaki tersebut sudah terpasang di kaki Anda. Dalam sekejap!')
    RETURNING id INTO k_1850_instan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '垣', 'pagar', 43, 17, 'Lihatlah <radical>tanah</radical> di <radical>tanah</radical> saat <radical>fajar</radical> dan Anda akan dapat melihat semua <kanji>pagar</kanji> tumbuh di area tersebut dengan sangat baik. Di waktu lain, pagar tanaman cenderung menyatu dengan lingkungan sekitarnya. Namun saat fajar, bayangan matahari sangat membantu mereka menonjol.

Pagar ini juga berfungsi sebagai <kanji>pagar</kanji>. Itu berbatasan dengan suatu area dan Anda tidak bisa berjalan melewatinya. Pagar alami!', 'Anda sedang memperhatikan satu <kanji>pagar</kanji> tertentu karena kemarin Anda menjatuhkan <reading>ca</reading>r <reading>key</reading> (かき) di belakangnya. Sekarang setelah Anda tahu di mana letak pagar tanaman, Anda perlu mencarinya untuk menemukan kunci mobil Anda.')
    RETURNING id INTO k_1851_pagar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '威', 'harga-diri', 43, 18, 'Seekor <radikal>anjing</radikal> dan <radikal>wanita</radikal> berdiri di hadapan Anda, memancarkan <kanji>martabat</kanji> dan <kanji>keperkasaan</kanji>. Siapakah pasangan agung ini?', 'Tepat ketika Anda berpikir wanita ini tidak bisa memancarkan <kanji>martabat</kanji> lagi, sebuah <read>ea</reading>gle (い) menukik ke bawah dan bertengger di bahunya. Anjing besar di belakangnya sudah memberinya aura yang bermartabat, tetapi elang ini membuatnya tampak sangat menakjubkan.')
    RETURNING id INTO k_1852_harga_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '封', 'segel', 43, 19, 'Anda mengambil dua gumpalan <radical>kotoran</radikal> untuk membuat <radikal>pengukuran</radikal>, menggunakannya untuk <kanji>menyegel</kanji> setiap sisi pita pengukur, sehingga tetap menempel di tanah. Ini adalah cara orang-orang <kanji>menyegel</kanji> di masa lalu, ketika kita tidak memiliki benda-benda mewah seperti selotip dan lem.', 'Anda juga dapat <kanji>menyegel</kanji> <reading>foo</reading>d (ふう) di tanah agar tahan lebih lama. Begitulah asal mula dendeng, Anda tahu. Segel beberapa daging di bawah tanah dan dalam beberapa bulan Anda akan mendapatkan daging kering yang lezat untuk dikunyah.

Ngomong-ngomong, ini ada bacaan lain yang mungkin harus Anda ketahui. Itu ほう. Kebanyakan penyegelan dilakukan di <reading>ho</reading>me (ほう), lho? Jadi pikirkan saja tentang makan makanan di rumah Anda sendiri!')
    RETURNING id INTO k_1853_segel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '筒', 'silinder', 43, 20, 'Tangkai <radikal>bambu</radikal> terlihat <radikal>sama</radikal> dengan <kanji>silinder</kanji> besar.', 'Bayangkan <kanji>silinder</kanji> berbentuk <membaca>とう</reading>きょう. Semua bangunan berbentuk silinder. Kotanya sendiri juga berbentuk silinder. Bahkan... terkesiap! Orang-orang とうきょう!')
    RETURNING id INTO k_1854_silinder;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慰', 'penghiburan', 43, 21, 'Kami memasang <radical>bendera</radical> untuk mengingat di mana kami mencoba menggunakan <radical>jackhammer</radical> untuk melakukan <radical>pengukuran</radical> <radical>hati</radical> teman Anda. Memang benar, itu ide yang buruk, tapi semoga bendera peringatan itu bisa menjadi semacam <kanji>penghiburan</kanji>?', 'Meskipun Anda tidak senang dengan bendera tersebut, Anda bahkan lebih frustrasi lagi saat melihat seekor <reading>ea</reading>gle (い) menukik ke bawah dan meraih bendera tersebut dan terbang bersamanya.')
    RETURNING id INTO k_1856_penghiburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '懇', 'sopan', 43, 22, '<radical>luak</radikal>, pada <radikal>akar</radikal> dari <radikal>hati</radikal>nya, adalah makhluk <kanji>sopan</kanji>.', 'Luak sangat <kanji>sopan</kanji> terhadap <reading>con</reading>dor (こん). Condor tinggal di pepohonan, sedangkan musang tinggal di liang di bawah pohon. Saat manusia merobohkan rumah condor, luak yang tinggal di bawahnya selalu membiarkan mereka menginap sampai mereka bisa berdiri kembali.')
    RETURNING id INTO k_1857_sopan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '懲', 'menghukum', 43, 23, '<radical>pengembara</radical>ing <radical>gunung</radical> <radical>raja</radical> yang berkeliaran selama <radical>musim dingin</radical> untuk memberikan indikasi (kanji ini menggunakan kanji "indikasi" sebagai 2/3 teratasnya) tentang hal-hal yang akan datang sekarang melihat ke dalam <radical>hati</radical> Anda, dan hanya melihat hal-hal buruk. Jadi, dia <kanji>menghukum</kanji> Anda tentang hal itu.', 'Sebenarnya kenapa dia menegurmu? Dia meramalkan Ny. Chou akan kembali di mnemonik sebelumnya, tapi Anda menyelamatkan Ny. Chou di pantai (sekali lagi, di mnemonik sebelumnya), jadi Anda bisa mencegah kedatangannya yang kedua. Dia <kanji>mengecam</kanji>Anda karena menyelamatkan Ny. <reading>Chou</reading> (ちょう).')
    RETURNING id INTO k_1858_menghukum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '摩', 'dongkol', 43, 24, 'Di bawah <radical>kanopi</radikal> dari <radical>pohon</radikal> terdapat <radical>tangan</radikal>. Tangan itu ada di sana untuk <kanji>gesekan</kanji> pada pepohonan.', 'Saat tangan <kanji>gesekan</kanji> di pohon, tertulis <membaca>ma</reading>ma ​​(ま), mama.')
    RETURNING id INTO k_1859_dongkol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '擦', 'menggosok', 43, 25, 'Anda menggunakan <radical>jari</radical> Anda untuk menahan <radical>atap</radical> <radical>festival</radical>, namun <kanji>bergesekan</kanji> dengan mereka. Atapnya berat, dan Anda harus berjalan untuk mengimbanginya, jadi atapnya bergesekan dengan sangat parah.', 'Tepat ketika Anda berpikir <kanji>gosok</kanji>bing tidak akan menjadi lebih buruk, <reading>Satsu</reading>ki (さつ) muncul dan melompat ke atap. AAGH! Sakit!')
    RETURNING id INTO k_1860_menggosok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '撲', 'tamparan', 43, 26, 'Masukkan <radical>jari</radical> Anda ke dalam <radical>bisnis</radical> seseorang dengan <kanji>menampar</kanji>ping mereka! Cara ini juga berhasil jika seseorang terlalu terlibat dalam bisnis Anda. Menampar pada dasarnya adalah cara Anda berbisnis dengan jari Anda.', 'ぼく adalah salah satu cara untuk mengatakan "aku" dalam bahasa Jepang, biasanya digunakan oleh pria. Tapi Anda akan menggunakannya sekarang ketika Anda <kanji>menampar</kanji> orang ini. Siapa yang ada dalam urusan semua orang, menampar mereka? <membaca>ぼく</membaca>.')
    RETURNING id INTO k_1861_tamparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '斉', 'serentak', 43, 27, 'Kanji <radikal>simultan</radikal> dan kanji <kanji>simultan</kanji> adalah sama!', 'Apa yang <kanji>secara bersamaan</kanji> melindungi dan membunuh? <reading>sa</reading>ber biru sucimu (せい).')
    RETURNING id INTO k_1862_serentak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '旨', 'titik', 43, 28, 'Bawa <radical>sendok</radical> Anda ke <radical>matahari</radical> untuk dapat mencicipinya. Ini <kanji>enak</kanji>, Anda dengar. Itulah <kanji>titik</kanji> sendok.', 'Rasa <kanji>lezat</kanji> ini... entah kenapa familiar. Anda mengambil beberapa gigitan lagi dan kemudian berteriak. Rasanya seperti <reading>shee</reading>p (し)!')
    RETURNING id INTO k_1863_titik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '柔', 'lembut', 43, 29, 'Anda telah diperintahkan untuk <radical>menombak</radical> <radical>pohon</radical> ini tetapi Anda memutuskan untuk benar-benar <kanji>lembut</kanji>.', 'Anda benar-benar <kanji>lembut</kanji> terhadap pohon ketika <reading>permata</reading> (じゅう) jatuh dari dahannya dan mengenai kepala Anda.')
    RETURNING id INTO k_1864_lembut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '沈', 'tenggelam', 43, 30, 'Jika <radikal>tsunami</radikal> menimpa <radikal>bajak laut</radikal> mereka akan <kanji>tenggelam</kanji> tidak peduli seberapa hebatnya mereka sebagai kapten bajak laut.', 'Saat tsunami datang untuk <kanji>menenggelamkan</kanji> sang bajak laut, sang bajak laut mengangkat <reading>dagu</reading> (ちん) tinggi-tinggi. Dia akan mati dengan bermartabat.')
    RETURNING id INTO k_1865_tenggelam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '泰', 'perdamaian', 43, 31, 'Suara <radical>mata air</radikal> <radikal>air</radikal> selalu membuat Anda berada dalam <kanji>kedamaian</kanji>.', 'Anda ingin merasakan <kanji>kedamaian</kanji> ini sepanjang waktu, tidak hanya di musim semi, jadi Anda mencelupkan <reading>dasi</reading> (たい) Anda ke dalam mata air. Kini dasi Anda mengeluarkan suara tetesan damai yang Anda sukai.')
    RETURNING id INTO k_1867_perdamaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '滅', 'menghancurkan', 43, 32, 'Anda terkena <radikal>tsunami</radikal>, dianiaya oleh <radikal>anjing</radikal>, dan kemudian dibakar <radikal>api</radikal>. Tampaknya alam semesta sedang mencoba <kanji>menghancurkan</kanji> Anda.', 'Sebenarnya, alam semesta ingin <kanji>menghancurkan</kanji> Anda karena Anda adalah penggemar <reading>Mets</reading> (めつ). Alam semesta membenci Mets — menurut Anda mengapa mereka belum memenangkan Seri Dunia sejak 1986?')
    RETURNING id INTO k_1868_menghancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '滋', 'bergizi', 43, 33, 'A (air tawar) <radikal>tsunami</radikal>. Beberapa <radikal>tanduk</radikal>. <radikal>tanah</radikal>. Sekelompok <radikal>kotoran</radikal>. Gabungkan semuanya dan biarkan terurai beberapa saat. Anda akan mendapatkan tanah yang sangat <kanji>bergizi</kanji>.', 'Ini adalah jenis tanah <kanji>bergizi</kanji> yang mungkin akan dibuat oleh <reading>Je</reading>sus (じ) jika dia ingin membuat tanah.')
    RETURNING id INTO k_1869_bergizi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '炉', 'perapian', 43, 34, '<radical>api</radikal> <radikal>pintu</radikal> adalah pintu yang menuju ke sesuatu yang penuh api. Benda itu adalah <kanji>tungku</kanji>.', 'Anda menggunakan <kanji>tungku</kanji> untuk melelehkan tar dan memasang <reading>ro</reading>ad (ろ).')
    RETURNING id INTO k_1870_perapian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '琴', 'harpa', 43, 35, 'Dua <radikal>raja</radikal> ada di sini <radikal>sekarang</radikal>! Kita perlu menghibur mereka, jika tidak, siapa yang tahu apa yang akan mereka lakukan. Keluarkan <kanji>harpa</kanji>, atau <kanji>zither</kanji>, atau semacamnya.', 'Anda mungkin sudah mengetahui bahwa <kanji>harpa</kanji> Jepang disebut こと, namun berikut ini ada mnemonik yang dapat membantu Anda jika Anda belum mengetahuinya:

Saat memainkan <kanji>harpa</kanji>, Anda selalu mengenakan <reading>mantel</reading> (こと).')
    RETURNING id INTO k_1871_harpa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '晶', 'kristal', 43, 36, 'Matahari menyinari ini dan pecah menjadi tiga <radikal>matahari</radikal>. Apa yang bisa membelah matahari menjadi tiga arah? Sebuah <kanji>kristal</kanji>!', 'Siapa yang menimbun dan memanfaatkan kekuatan <kanji>kristal</kanji> ini? Itu adalah senjata <read>Shou</reading> (しょう).')
    RETURNING id INTO k_2115_kristal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '惹', 'menarik', 43, 37, 'Jika kamu menempelkan <radical>bunga</radical> di kerah <radical>kanan</radical> dan menunjukkan <radical>hati</radical>mu kepada seseorang, kamu pasti akan <kanji>menarik</kanji> mereka.', 'Setiap kali Anda <kanji>menarik</kanji> seseorang, Anda merasakan <reading>hea</reading>t (ひ) tertentu di udara. Panas itu adalah tanda pertama dari gairah membara yang akan meletus antara Anda dan orang yang Anda minati.')
    RETURNING id INTO k_9470_menarik;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1838_langka, 'Langka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1839_membelah, 'Membelah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1839_membelah, 'Merobek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1840_menyerang, 'Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1841_upeti, 'Upeti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1842_pesona, 'Pesona', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1843_jarak, 'Jarak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1844_daftar, 'Daftar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1845_membuka, 'Membuka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1845_membuka, 'Embun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1846_padang_rumput, 'Padang rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1847_pencetakan, 'Pencetakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1848_terang, 'Terang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1849_gelombang_pasang, 'Gelombang pasang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1850_instan, 'Instan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1851_pagar, 'Pagar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1851_pagar, 'Pagar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1852_harga_diri, 'Harga diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1852_harga_diri, 'Mungkin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1853_segel, 'Segel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1853_segel, 'Segel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1853_segel, 'Penutupan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1854_silinder, 'Silinder', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1854_silinder, 'Tabung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1854_silinder, 'Pipa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1856_penghiburan, 'Penghiburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1857_sopan, 'Sopan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1858_menghukum, 'Menghukum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1859_dongkol, 'Dongkol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1860_menggosok, 'Menggosok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1861_tamparan, 'Tamparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1862_serentak, 'Serentak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1863_titik, 'Titik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1863_titik, 'Lezat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1864_lembut, 'Lembut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1865_tenggelam, 'Tenggelam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1867_perdamaian, 'Perdamaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1868_menghancurkan, 'Menghancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1869_bergizi, 'Bergizi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1870_perapian, 'Perapian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1871_harpa, 'Harpa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1871_harpa, 'Sitar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1871_harpa, 'Koto', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2115_kristal, 'Kristal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9470_menarik, 'Menarik', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1838_langka, 'ちん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1838_langka, 'めずら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1839_membelah, 'れつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1839_membelah, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1840_menyerang, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1840_menyerang, 'おそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1841_upeti, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1841_upeti, 'みつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1842_pesona, 'しゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1842_pesona, 'おもむき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1843_jarak, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1844_daftar, 'せき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1845_membuka, 'ろ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1845_membuka, 'ろう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1845_membuka, 'つゆ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1846_padang_rumput, 'ぼく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1846_padang_rumput, 'まき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1847_pencetakan, 'さつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1847_pencetakan, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1848_terang, 'ろう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1848_terang, 'ほが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1849_gelombang_pasang, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1849_gelombang_pasang, 'しお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1850_instan, 'そく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1850_instan, 'すなわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1851_pagar, 'かき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1852_harga_diri, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1853_segel, 'ふう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1853_segel, 'ほう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1854_silinder, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1854_silinder, 'つつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1856_penghiburan, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1856_penghiburan, 'なぐさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1857_sopan, 'こん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1858_menghukum, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1858_menghukum, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1859_dongkol, 'ま', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1859_dongkol, 'さす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1860_menggosok, 'さつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1860_menggosok, 'こす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1860_menggosok, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1861_tamparan, 'ぼく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1862_serentak, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1862_serentak, 'さい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1863_titik, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1863_titik, 'うま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1863_titik, 'むね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1864_lembut, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1864_lembut, 'にゅう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1864_lembut, 'やわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1865_tenggelam, 'ちん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1865_tenggelam, 'しず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1867_perdamaian, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1868_menghancurkan, 'めつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1868_menghancurkan, 'ほろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1869_bergizi, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1869_bergizi, 'し', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1870_perapian, 'ろ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1870_perapian, 'いろり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1871_harpa, 'こと', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2115_kristal, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9470_menarik, 'ひ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9470_menarik, 'じゃく', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '横綱', 'yokozuna', 43, 38, '"<kanji>sisi</kanji> <kanji>tali</kanji>." Ini tidak masuk akal. Namun, apa ini (Anda pasti ingin melihat bacaannya), adalah <vocabulary>Yokozuna</vocabulary>. Ini adalah <vocabulary>Juara Utama Sumo</vocabulary>.

横綱 mengacu pada <kosakata>peringkat tertinggi dalam gulat sumo</vocabulary>, karena juara pegulat sumo memakai tali upacara tebal di pinggangnya. Kata ini juga dapat digunakan secara lebih luas untuk mendeskripsikan seseorang yang berada di posisi paling atas di bidangnya, seperti ラーメン界の横綱 (raja ramen).', 'Bacaannya adalah yang Anda pelajari dengan kanji. Hati-hati dengan rendaku yang membuat 綱 menjadi bagian づな.', 'Yokozuna, Juara Besar Sumo, Peringkat Tertinggi Di Sumo')
    RETURNING id INTO v_6631_yokozuna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '軍艦島', 'pulau-kapal-perang', 43, 39, '軍艦 adalah <kanji>kapal perang</kanji>, dan 島 adalah sebuah pulau. Selamat datang di... <vocabulary>Battleship Island</vocabulary> (musik Jurassic Park).', 'Kata ini menggunakan bacaan on''yomi untuk 軍 dan 艦, dan bacaan kun''yomi untuk 島. Anda mempelajari semuanya, jadi Anda harusnya sudah tahu bacaannya! Oh, tapi hati-hati dengan rendakunya.', 'Pulau Kapal Perang, Gunkanjima')
    RETURNING id INTO v_6648_pulau_kapal_perang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '偽物', 'palsu', 43, 40, '<kanji>palsu</kanji> <kanji>sesuatu</kanji> adalah <vocabulary>palsu</vocabulary> atau <vocabulary>palsu</vocabulary>.', 'Anda telah mempelajari kedua bacaan ini. Tidak ada yang palsu di sana.', 'Palsu, Palsu')
    RETURNING id INTO v_6649_palsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '包み', 'bundel', 43, 41, 'Sesuatu yang Anda <kanji>bungkus</kanji> adalah <vocabulary>paket</vocabulary> atau <vocabulary>paket</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajarinya saat mempelajari 包む, namun berikut ini pengingat mnemonik untuk berjaga-jaga:

Ingat bagaimana Anda membungkus <vocabulary>paket</vocabulary> Anda? Benar sekali, dengan teknik <reading>dua dua</reading>. <vocabulary>Paket</vocabulary> Anda selalu dibungkus ganda.', 'Bundel, Kemasan, Paket')
    RETURNING id INTO v_6650_bundel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誠に', 'memang', 43, 42, 'Huruf に di akhir kata ini mengubah <kanji>ketulusan</kanji> menjadi kata keterangan. Apa versi kata keterangan dari ketulusan? Itu <vocabulary>dengan tulus</vocabulary>, atau <vocabulary>memang</vocabulary>. <vocabulary>benar-benar</vocabulary> memang demikian.', 'Kata ini memiliki bacaan yang sama dengan kosakata 誠, namun berikut ini pengingat untuk berjaga-jaga:

<read>Mantelku</reading> (まこと) <vocabulary>sungguh</vocabulary> adalah mantel! <vocabulary>Memang</vocabulary> benar.', 'Memang, Benar-benar, Sungguh-sungguh')
    RETURNING id INTO v_6652_memang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '珍〜', 'tidak-biasa', 43, 43, 'Sesuatu yang <kanji>langka</kanji> sering kali merupakan <vocabulary>tidak biasa</vocabulary>. Kata ini juga bisa berarti <vocabulary>langka</vocabulary> (tentu saja) dan <vocabulary>aneh</vocabulary> bergantung pada konteksnya.

Saat ini, media sering menggunakan kata ini untuk menggambarkan sesuatu yang tidak biasa, unik, dan lucu.', 'Pembacaan kanji ini sama dengan yang Anda pelajari dengan kanji. Itu sendiri tidak terlalu <vocabulary>langka</vocabulary>, bukan?', 'Tidak biasa, Langka, Aneh')
    RETURNING id INTO v_6655_tidak_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '珍味', 'kelezatan', 43, 44, '<kanji>langka</kanji> <kanji>rasa</kanji> adalah rasa yang jarang Anda rasakan, karena jarang. Ini adalah <vocabulary>kelezatan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kelezatan')
    RETURNING id INTO v_6656_kelezatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '珍しい', 'langka', 43, 45, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>langka</kanji>? Ini <vocabulary>jarang</vocabulary>. Namun, ini juga bisa berarti <vocabulary>unusual</vocabulary> atau <vocabulary>penasaran</vocabulary> (seperti dalam kata "aneh" penasaran, bukan berarti Anda penasaran terhadap sesuatu).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda tahu apa yang <vocabulary>langka</vocabulary> dan <vocabulary>tidak biasa</vocabulary>? Orang yang mengucapkan terukur sebagai "<reading>mezura</reading>ble" (めずら). Mereka adalah sekelompok <vocabulary>penasaran</vocabulary>, dan mereka cukup langka, namun mereka ada.', 'Langka, Tidak biasa, Penasaran')
    RETURNING id INTO v_6657_langka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裂く', 'merobek', 43, 46, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>membelah</kanji>, tetapi jika Anda membagi sesuatu, Anda akan <vocabulary>merobek</vocabulary> atau <vocabulary>merobek</vocabulary> itu.', 'Untuk membukanya, kamu perlu <vocabulary>merobek</vocabulary> dan merobek <reading>karung</reading> (さく). Karung tidak memiliki tab atau ritsleting atau benda-benda mewah lainnya. Jika Anda ingin mengambil barang-barang di dalam karung, Anda harus langsung merobek bagian atasnya!', 'Merobek, Untuk Merobek')
    RETURNING id INTO v_6658_merobek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '決裂', 'perincian', 43, 47, '<kanji>keputusan</kanji> <kanji>terpecah</kanji>, menyebabkan <vocabulary>penguraian</vocabulary> pada semua yang telah kita putuskan. <kosakata>kerusakan</vocabulary> yang besar.

決裂 adalah kata formal yang digunakan ketika pembicaraan atau hubungan benar-benar berantakan. Karena ini mengacu pada perpecahan total dan terdengar dramatis, Anda akan sering melihatnya di berita utama atau laporan berita ketika negosiasi antara perusahaan atau negara mengalami kegagalan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perincian, Pecah')
    RETURNING id INTO v_6659_perincian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '分裂', 'membelah', 43, 48, 'Segalanya menjadi <kanji>terbagi</kanji>d dan <kanji>terpecah</kanji>. Kita bisa menyebutnya sebagai <vocabulary>split</vocabulary> atau <vocabulary>division</vocabulary>.

分裂 terutama mengacu pada pembelahan sel dalam biologi, tetapi juga dapat secara kiasan menggambarkan suatu entitas atau kelompok yang terpecah menjadi beberapa bagian, seringkali karena konflik internal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Membelah, Divisi')
    RETURNING id INTO v_6660_membelah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '襲う', 'untuk-menyerang', 43, 49, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyerang</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menyerang</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: "Kamu akan <vocabulary>menyerang</vocabulary> saya atau semacamnya? <reading>Oh, sangat</reading> menakutkan sekali. Oh sangat menakutkan. Ho ho ho."', 'Untuk Menyerang')
    RETURNING id INTO v_6661_untuk_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '襲撃', 'menyerang', 43, 50, '<kanji>serangan</kanji> <kanji>serangan</kanji> adalah <vocabulary>serangan</vocabulary> atau <vocabulary>serangan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menyerang, Menyerang')
    RETURNING id INTO v_6662_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奇襲', 'serangan-kejutan', 43, 51, '<kanji>anjil</kanji> <kanji>serangan</kanji> adalah serangan yang tidak Anda duga. Ini adalah <vocabulary>serangan mendadak</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Serangan Kejutan')
    RETURNING id INTO v_6663_serangan_kejutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空襲', 'serangan-udara', 43, 52, '<kanji>langit</kanji> <kanji>serangan</kanji> adalah <vocabulary>serangan udara</vocabulary> / <vocabulary>serangan udara</vocabulary>. Tora tora tora!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Serangan udara, Serangan Udara')
    RETURNING id INTO v_6664_serangan_udara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逆襲', 'serangan-balasan', 43, 53, '<kanji>terbalik</kanji> <kanji>serangan</kanji> adalah <vocabulary>serangan balik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Serangan balasan')
    RETURNING id INTO v_6665_serangan_balasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貢献', 'kontribusi', 43, 54, '<kanji>upeti</kanji> yang saya <kanji>tawarkan</kanji> adalah <vocabulary>kontribusi</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kontribusi')
    RETURNING id INTO v_6666_kontribusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '趣', 'pesona', 43, 55, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 
Kata ini memiliki banyak arti sehingga dapat berupa <vocabulary>pesona</vocabulary>, <vocabulary>taste</vocabulary>, <vocabulary>vibe</vocabulary>, atau bahkan <vocabulary>gist</vocabulary>.', 'Jika sesuatu memiliki <vocabulary>pesona</vocabulary>, pikiran/思 (おも) Anda mengarah ke arah itu/向き (むき).  Anda merasakan getarannya? Apakah Anda mengerti intinya?', 'Pesona, Atmosfer, Mencicipi, Inti')
    RETURNING id INTO v_6667_pesona;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '趣味', 'hobi', 43, 56, 'Jika sesuatu memiliki <kanji>pesona</kanji> dan sesuai dengan <kanji>selera</kanji> Anda, maka itu adalah <vocabulary>hobi</vocabulary> Anda. Hobi adalah aktivitas yang menurut Anda menarik dan Anda sukai.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hobi')
    RETURNING id INTO v_6668_hobi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '距離', 'jarak', 43, 57, '<kanji>jarak</kanji> yang <kanji>terlepas</kanji>dari jarak adalah <vocabulary>jarak</vocabulary> dan <vocabulary>rentang</vocabulary>. Bayangkan saja satu bagian jaraknya, rentangkan, lalu lihatlah. Ini menunjukkan jarak dan jangkauan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jarak, Jangkauan')
    RETURNING id INTO v_6669_jarak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戸籍', 'daftar-keluarga', 43, 58, 'Sebuah <kanji>pintu</kanji> <kanji>mendaftar</kanji>? Ya, daftar orang-orang yang tinggal di balik pintu yang sama. Dengan kata lain, <vocabulary>daftar keluarga</vocabulary>. (Bayangkan "pintu" sebagai singkatan untuk sebuah rumah dalam kasus ini.) Daftar keluarga sebenarnya cukup menarik. Carilah "koseki" di Google dan Anda pasti akan menemukan banyak sejarah menarik.', 'Pembacaan untuk 戸 merupakan pengecualian. Alih-alih と, itu adalah こ. Bayangkan saja bagaimana orang yang menjalankan sensus ini tidak peduli dengan jumlah jari kaki. Mereka peduli dengan jumlah <reading>子</reading> (こ).', 'Daftar Keluarga, Sensus')
    RETURNING id INTO v_6670_daftar_keluarga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国籍', 'kebangsaan', 43, 59, 'Jika Anda berada dalam <kanji>daftar</kanji> <kanji>negara</kanji>, Anda mungkin memiliki <vocabulary>kewarganegaraan</vocabulary> atau <vocabulary>citizenship</vocabulary> di sana. Apa kabarmu?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kebangsaan, Kewarganegaraan')
    RETURNING id INTO v_6671_kebangsaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暴露', 'penyingkapan', 43, 60, 'Menggunakan <kanji>kekerasan</kanji> Saya akan <kanji>mengungkapkan</kanji> kebenarannya! Ini adalah <vocabulary>pengungkapan</vocabulary>. Ini adalah <vocabulary>paparan</vocabulary>.

Kata ini memiliki konotasi pengungkapan sesuatu yang memalukan, sering kali dengan cara yang dramatis.', 'Pembacaan 暴 aneh dan baru, bukan yang Anda pelajari dengan kanji. Bayangkan saja bagaimana ketika ada pengungkapan atau pemaparan suatu hal, Anda terkejut. Anda tidak percaya itu kebenarannya. Anda harus mengambil langkah <membaca>mundur</reading> (ばく) untuk menghadapi informasi baru.', 'Penyingkapan, Paparan')
    RETURNING id INTO v_6672_penyingkapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '露骨', 'jujur', 43, 61, 'Aku akan <kanji>memperlihatkan</kanji> <kanji>tulang</kanji>ku sebentar di sini dan <vocabulary>blak-blakan</vocabulary> denganmu... ini masuk akal, karena jika kamu memperlihatkan tulangmu pada seseorang, kamu tidak menyembunyikan apa pun. Anda jujur ​​dan blak-blakan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jujur, Tumpul')
    RETURNING id INTO v_6673_jujur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '露店', 'kios-jalanan', 43, 62, '<kanji>ekspos</kanji>d <kanji>toko</kanji> adalah toko yang tidak ada di dalamnya. Itu di luar, dan terbuka. Itu adalah <vocabulary>warung pinggir jalan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kios Jalanan, Berdiri, Stan')
    RETURNING id INTO v_6674_kios_jalanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '露出', 'paparan', 43, 63, 'Ketika apa yang Anda <kanji>ekspos</kanji> <kanji>keluar</kanji> dari persembunyiannya, diekspos agar semua orang dapat melihatnya... itulah <vocabulary>eksposur</vocabulary>. Ini juga bisa merujuk ke <vocabulary>photographic exposure</vocabulary> juga, jika Anda bertanya-tanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Paparan, Eksposur Fotografi')
    RETURNING id INTO v_6675_paparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '牧師', 'pendeta', 43, 64, '<kanji>padang rumput</kanji> <kanji>guru</kanji> adalah orang yang memimpin kawanannya menjalani kehidupan. Ini adalah <vocabulary>pendeta</vocabulary>, <vocabulary>minster</vocabulary>, atau <vocabulary>pendeta</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pendeta, Menteri, Pendeta')
    RETURNING id INTO v_6676_pendeta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '牧野', 'tanah-padang-rumput', 43, 65, '<kanji>padang rumput</kanji> <kanji>ladang</kanji> adalah <vocabulary>padang rumput</vocabulary>. Ini juga merupakan <vocabulary>peternakan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.

Pembacaan sekunder sedikit berbeda. Itu nama keluarga, dan menggunakan pembacaan kun''yomi dari kedua kanji. Kami akan menganggap ini sebagai hal sekunder untuk saat ini, tetapi Anda mungkin harus kembali lagi ke sini ketika Anda melihat ini sebagai sebuah nama dan semua bertanya-tanya "apa yang terjadi di sini??"', 'Tanah Padang Rumput, Peternakan')
    RETURNING id INTO v_6677_tanah_padang_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '牧草', 'padang-rumput', 43, 66, '<kanji>padang rumput</kanji> <kanji>rumput</kanji> adalah <vocabulary>padang rumput</vocabulary> dan <vocabulary>rumput</vocabulary>.', 'Dengan 草 Anda mempelajari bacaan yang berbeda dari yang ada di sini. Bayangkan saja bagaimana dengan <vocabulary>padang rumput</vocabulary> ini Anda harus terus-menerus <read>menjahit</reading> (そう) agar menyatu, jika tidak, ia akan terpisah dan berpindah-pindah, dan itu tidak ada gunanya bagi padang rumput mana pun.', 'Padang rumput, Rumput')
    RETURNING id INTO v_6678_padang_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '牧場', 'peternakan', 43, 67, '<kanji>padang rumput</kanji> <kanji>tempat</kanji> adalah <vocabulary>peternakan</vocabulary>. Ini juga merupakan <vocabulary>peternakan</vocabulary>. Tempat di mana padang rumput adalah tempat ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peternakan, Peternakan')
    RETURNING id INTO v_6679_peternakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '印刷', 'pencetakan', 43, 68, 'Dengan <kanji>segel</kanji> kami <kanji>mencetak</kanji> semuanya. Stempel inilah yang mencetak kata-kata di atas kertas, sehingga membuat <vocabulary>pencetakan</vocabulary> ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pencetakan')
    RETURNING id INTO v_6680_pencetakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刷る', 'untuk-mencetak', 43, 69, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mencetak</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to print</vocabulary>.', 'Saat Anda mencetak sesuatu, biasanya itu adalah dokumen yang diperlukan untuk <reading>menuntut</reading> (す) seseorang. Anda hanyalah orang seperti itu, yang selalu ingin menuntut.', 'Untuk Mencetak')
    RETURNING id INTO v_6681_untuk_mencetak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '明朗', 'terang', 43, 70, '<kanji>terang</kanji> <kanji>terang</kanji> adalah sesuatu yang <vocabulary>terang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terang, Ceria, Jernih')
    RETURNING id INTO v_6682_terang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朗報', 'kabar-baik', 43, 71, 'Laporan <kanji>cerah</kanji> <kanji>berita</kanji> akan menjadi laporan yang penuh dengan <vocabulary>kabar baik</vocabulary>. Laporan berita kelam mungkin merupakan berita buruk, tetapi saat ini kita hanya peduli pada kabar baik, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kabar Baik')
    RETURNING id INTO v_6683_kabar_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朗らか', 'terang', 43, 72, 'Ini adalah versi kata sifat na dari <kanji>terang</kanji>. Kata itu adalah <vocabulary>cerah</vocabulary> atau <vocabulary>ceria</vocabulary>.', 'Dari semua orang yang cerdas dan ceria, ada satu orang yang terlintas dalam pikiran. Hulk <read>Hoga</reading>n (ほが) yang ceria.', 'Terang, Ceria')
    RETURNING id INTO v_6684_terang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潮', 'gelombang-pasang', 43, 73, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: Jika Anda memikirkan air pasang, Anda memikirkan lautan. Jika Anda berpikir tentang lautan dan apa isinya (selain air), Anda memikirkan <reading>garam</reading> (しお).', 'Gelombang pasang, Saat ini')
    RETURNING id INTO v_6685_gelombang_pasang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '風潮', 'gelombang-pasang', 43, 74, '<kanji>angin</kanji> <kanji>pasang</kanji> adalah arah tiupan air pasang. Apakah itu bertiup masuk? Apakah itu meledak? Ini adalah <vocabulary>pasangan</vocabulary> dan <vocabulary>saat ini</vocabulary>. Saat ini, kami biasanya menggunakan kata ini untuk <kosakata>tren</vocabulary> yang datang seperti air pasang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gelombang pasang, Saat ini, Kecenderungan')
    RETURNING id INTO v_6686_gelombang_pasang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '満潮', 'air-pasang', 43, 75, '<kanji>pasang penuh</kanji> <kanji>pasang penuh</kanji> adalah <vocabulary>pasang penuh</vocabulary> atau <vocabulary>pasang penuh</vocabulary>. Saat itulah air muncul.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Air Pasang, Pasang Penuh')
    RETURNING id INTO v_6687_air_pasang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潮流', 'gelombang-pasang', 43, 76, '<kanji>aliran</kanji> <kanji>pasang</kanji> adalah aliran yang mengalir melalui air pasang. Itulah <vocabulary>pasang surut</vocabulary> atau <vocabulary>arus pasang surut</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gelombang pasang, Arus Pasang Surut')
    RETURNING id INTO v_6688_gelombang_pasang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '即〜', 'segera', 43, 77, 'Jika Anda melihat 即 sebelum sebuah kata, Anda tahu bahwa itu mungkin sesuatu yang terjadi sangat cepat atau seketika. Itulah mengapa ini bersifat <vocabulary>immediate</vocabulary> atau <vocabulary>instan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Segera, Instan')
    RETURNING id INTO v_6689_segera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '即興', 'improvisasi', 43, 78, '<kanji>instan</kanji> <kanji>ketertarikan</kanji> pada sesuatu yang sebelumnya tidak Anda minati? Nah, saatnya melakukan <vocabulary>improvisasi</vocabulary>, karena Anda harus berpura-pura tertarik pada hal tersebut (padahal sebenarnya tidak).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan pemendekan そく.', 'Improvisasi')
    RETURNING id INTO v_6690_improvisasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '即座', 'segera', 43, 79, '<kanji>instan</kanji> <kanji>duduk</kanji> adalah <vocabulary>segera</vocabulary>. Ini juga <vocabulary>instantan</vocabulary>. Bayangkan saja diri Anda langsung duduk. Tidak ada waktu berlalu antara saat Anda berdiri dan duduk. Sifat duduk Anda yang seketika pasti... meresahkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Segera, Seketika')
    RETURNING id INTO v_6691_segera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '即死', 'kematian-instan', 43, 80, '<kanji>instan</kanji> <kanji>kematian</kanji> adalah <vocabulary>kematian instan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kematian Instan')
    RETURNING id INTO v_6692_kematian_instan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '即日', 'hari-yang-sama', 43, 81, '<kanji>instan</kanji> <kanji>hari</kanji> adalah hari yang terjadi pada saat ini juga. Ini <vocabulary>hari yang sama</vocabulary> seperti sekarang.', 'Pembacaan 即 adalah pembacaan normal. Untuk 日 kamu akan ingin menggunakan bacaan じつ, karena, <reading>kebenaran</reading> (じつ) adalah hari ini adalah hari yang sama.', 'Hari yang sama')
    RETURNING id INTO v_6693_hari_yang_sama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '即効', 'efek-langsung', 43, 82, 'Ini <kanji>langsung</kanji>efek</kanji>aktif! Kedengarannya seperti sesuatu yang keluar dari Pokemon. Kata ini berarti <vocabulary>efek langsung</vocabulary> atau <vocabulary>efek instan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan pemendekannya.', 'Efek Langsung, Efek Instan')
    RETURNING id INTO v_6694_efek_langsung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '垣', 'pagar', 43, 83, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa untuk kata pagar dalam bahasa Jepang, biasanya digunakan フェンス. 垣 tidak terlalu umum tetapi terkadang digunakan dalam literatur.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Pagar, Pagar, Dinding')
    RETURNING id INTO v_6695_pagar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '垣根', 'pagar', 43, 84, '<kanji>pagar</kanji> (atau <kanji>pagar</kanji>) <kanji>akar</kanji> adalah tempat tumbuhnya pagar dan pagar. Apa yang tumbuh dari ini? Ya, itu hanyalah <vocabulary>pagar</vocabulary> atau <vocabulary>pagar</vocabulary>.', 'Bacaannya adalah bacaan kun''yomi dari kanji. Dengan 垣 itulah yang Anda pelajari dan dengan 根 itulah versi kosakata kanjinya.', 'Pagar, Pagar')
    RETURNING id INTO v_6696_pagar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '石垣', 'dinding-batu', 43, 85, '<kanji>batu</kanji> <kanji>pagar</kanji> adalah dinding (pagar adalah tembok yang bagus), namun terbuat dari batu. Itu adalah <vocabulary>dinding batu</vocabulary>.', 'Bacaannya adalah bacaan 石 dan 垣 yang digabungkan menjadi satu kata. Hati-hati dengan rendaku.', 'Dinding Batu')
    RETURNING id INTO v_6697_dinding_batu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '権威', 'otoritas', 43, 86, 'Anda memiliki <kanji>hak</kanji> dan <kanji>kekuasaan</kanji> atas area ini. Hal ini memberi Anda <vocabulary>otoritas</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Otoritas')
    RETURNING id INTO v_6698_otoritas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '威張る', 'untuk-bertindak-besar', 43, 87, 'Ambil <kanji>martabat</kanji> Anda dan <kanji>kembangkan</kanji> itu. Martabatmu begitu tinggi! Itu membuatmu merasa besar! Makanya kata ini adalah <vocabulary>bertindak besar</vocabulary> atau <vocabulary>menjadi sombong</vocabulary>.', 'Bacaannya dari 威 dan 張る. Hati-hati dengan rendaku yang mengubah bacaan 張る menjadi ばる. Berikut ini sedikit mnemonik untuk membantu hal itu:

Jika Anda mencoba <vocabulary>untuk bertindak besar</vocabulary>, Anda harus berteriak <reading>baa</reading> (ば) pada orang seperti domba. Mengapa? Karena domba dikenal <kosa kata>sombong</vocabulary>. "Baa" mereka seperti tawa kecil yang arogan, bukan begitu? Baa, baa! Itu sebabnya ada baiknya untuk meniru mereka dan mengatakan "baa" ketika Anda ingin bertindak besar dan mendorong orang lain.', 'Untuk Bertindak Besar, Menjadi Sombong, Menjadi suka memerintah')
    RETURNING id INTO v_6699_untuk_bertindak_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '球威', 'barang-pitcher', 43, 88, '<kanji>bola</kanji> <kanji>mungkin</kanji> Anda adalah gaya yang Anda perintahkan pada bola atau bola… dalam hal ini, bola bisbol, menjadikannya <vocabulary>barang pelempar</vocabulary>. 

Jika Anda belum familiar dengan istilah baseball ini, kami sarankan untuk mencarinya di Google. Singkatnya, ini mengacu pada lemparan pelempar, dinilai dari seberapa keras lemparan tersebut untuk dipukul.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Barang Pitcher')
    RETURNING id INTO v_6700_barang_pitcher;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '威厳', 'harga-diri', 43, 89, '<kanji>Martabat</kanji> adalah hal yang <kanji>ketat</kanji>. Jika Anda terlalu toleran, Anda akan kehilangan seluruh <vocabulary>martabat</vocabulary> dan <vocabulary>keagungan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Harga diri, Keagungan')
    RETURNING id INTO v_6701_harga_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '封', 'segel', 43, 90, 'Kanjinya adalah <kanji>segel di</kanji>, tetapi versi kata benda vocabnya adalah <vocabulary>seal</vocabulary>. Ini hanyalah segel (bukan jenis air, jenis yang Anda gunakan untuk menyegel sesuatu).', 'Bacaannya sama dengan salah satu bacaan yang Anda pelajari: ふう. Jangan menjadi <reading>foo</reading>l, pastikan Anda menyegel amplop Anda.', 'Segel')
    RETURNING id INTO v_6702_segel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '開封', 'membuka-segel', 43, 91, 'Saat Anda <kanji>membuka</kanji> sesuatu yang <kanji>segel</kanji>, Anda <vocabulary>membuka segel</vocabulary> atau <vocabulary>membuka segel</vocabulary>.

開封 umumnya mengacu pada membuka sesuatu yang tersegel, seperti membuka surat atau paket.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Membuka segel, Memecahkan Segel, Membuka Surat')
    RETURNING id INTO v_6703_membuka_segel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '封書', 'surat-tersegel', 43, 92, '<kanji>segel</kanji> <kanji>tulisan</kanji> adalah tulisan yang telah disegel ke dalam amplop. Ini adalah <vocabulary>surat tersegel</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Surat Tersegel')
    RETURNING id INTO v_6704_surat_tersegel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '封建主義', 'feodalisme', 43, 93, 'Anda telah mengetahui bahwa 主義 adalah "-isme". Jadi apa yang terjadi jika Anda <kanji>menyegel</kanji> semua yang Anda <kanji>bangun</kanji> dan menyimpannya untuk diri Anda sendiri, dan menjadikannya -isme Anda? Anda mendapatkan <vocabulary>feodalisme</vocabulary>. Mengapa? Karena feodalisme adalah sistem yang dibangun di atas gagasan bahwa kekuasaan harus disegel dalam satu kelompok atau keluarga. Siapa pun yang berada di luar sistem tersegel ini adalah pengikut tuan — itulah feodalisme bagi Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum melihat bacaan ほう untuk 封, jadi inilah mnemonik untuk membantu Anda:

Semuanya milik tuan feodal di bawah <vocabulary>feodalism</vocabulary>, bahkan <read>ho</reading>Anda (ほう). Orang-orang tidak memiliki properti pribadi pada masa itu, jadi Anda hanya bisa tinggal di rumah jika tuan feodal memberi Anda izin. Saya kira, itu berarti di bawah feodalisme Anda selalu berbagi rumah. Dengan tuan feodal. Aduh, bagus sekali!', 'Feodalisme')
    RETURNING id INTO v_6705_feodalisme;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '封筒', 'amplop', 43, 94, '<kanji>Segel</kanji> <kanji>silinder</kanji>. Silinder yang disegel ini adalah <vocabulary>amplop</vocabulary>. Anda hanya perlu mengingat kembali hari itu, ketika segala sesuatunya lebih seperti dalam bentuk gulungan. Jadi, amplop gulungan akan berbentuk seperti silinder, menjadikannya <vocabulary>amplop</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Amplop')
    RETURNING id INTO v_6706_amplop;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '筒', 'pipa', 43, 95, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Anda akan melihat ini lebih sering berarti <vocabulary>pipe</vocabulary> daripada <vocabulary>cylinder</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca ini, jadi inilah mnemonik yang dapat membantu Anda mengingatnya: Jika berbicara tentang <vocabulary>pipe</vocabulary>, Anda selalu ingin memiliki dua set yang terdiri dari dua buah pipa, untuk berjaga-jaga. Jadi, itu adalah kumpulan pipa <reading>dua dua</reading> (つつ), yang disusun bersebelahan untuk cadangan.', 'Pipa, Silinder, Tabung')
    RETURNING id INTO v_6707_pipa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '慰謝', 'penghiburan', 43, 96, 'Aku menunjukkan <kanji>penghiburan</kanji>ku dengan <kanji>meminta maaf</kanji>ing. Ini adalah <vocabulary>penghiburan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penghiburan')
    RETURNING id INTO v_6710_penghiburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '慰める', 'untuk-menghibur', 43, 97, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>penghiburan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to console</vocabulary>.

慰める berarti <vocabulary>untuk menghibur</vocabulary> seseorang yang sedang mengalami kesedihan atau kesusahan. Ini juga bisa berarti menyemangati seseorang dengan memberikan kata-kata baik, dorongan, atau dukungan emosional.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Saya akan <vocabulary>menghibur</vocabulary> Anda atas apa yang terjadi pada Anda. <reading>gergaji cerewet</reading> (なぐさ) dinyalakan dan berdengung di kaki Anda. Perasaan yang mengganggu. Anda perlu penghiburan.', 'Untuk Menghibur, Untuk Kenyamanan')
    RETURNING id INTO v_6711_untuk_menghibur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '慰問', 'membayar-panggilan-simpati', 43, 98, '<kanji>penghiburan</kanji> terbaik untuk <kanji>masalah</kanji> seseorang adalah <vocabulary>memberikan panggilan simpati</vocabulary>. Ini adalah <vocabulary>penghiburan</vocabulary> melalui <vocabulary>kunjungan simpati</vocabulary>.

慰問 adalah cara formal untuk mengatakan お見舞い (kunjungan simpati). Kata ini sering digunakan ketika seseorang terkenal, seperti selebriti atau politisi, melakukan kunjungan untuk memberikan dukungan dan kenyamanan kepada orang-orang yang berada dalam situasi sulit, seperti pasien rumah sakit, penghuni panti jompo, atau mereka yang terkena dampak bencana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Membayar Panggilan Simpati, Penghiburan, Kunjungan Simpati')
    RETURNING id INTO v_6712_membayar_panggilan_simpati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '慰安', 'penghiburan', 43, 99, 'Anda mempunyai <kanji>penghiburan</kanji> jadi sekarang Anda bisa <kanji>bersantai</kanji>. Sungguh perasaan yang luar biasa. Anda sekarang memiliki <vocabulary>kegembiraan</vocabulary> dan <vocabulary>relaksasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penghiburan, Relaksasi')
    RETURNING id INTO v_6713_penghiburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懇意', 'ramah', 43, 100, 'Bersikap <kanji>sopan</kanji> adalah <kanji>ide</kanji> yang tepat jika Anda ingin <vocabulary>ramah</vocabulary> dengan orang lain. Semakin sopan Anda terhadap seseorang (dan sebaliknya), semakin tumbuh rasa <vocabulary>kedekatan</vocabulary> di antara Anda.

懇意 secara formal menggambarkan hubungan yang baik dan ramah dengan seseorang. Misalnya, Anda bisa berbicara tentang rekan kerja yang akrab dengan Anda (懇意になった同僚) atau profesor yang memperlakukan Anda dengan hangat (懇意にしてくれる教授).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ramah, Kedekatan')
    RETURNING id INTO v_6714_ramah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懇話', 'obrolan-ramah', 43, 101, '<kanji>sopan</kanji> <kanji>pembicaraan</kanji> adalah <vocabulary>pembicaraan ramah</vocabulary>. Kita semua tahu bahwa "pembicaraan persahabatan" tidak pernah seperti yang terlihat... bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Obrolan Ramah, Diskusi Ramah')
    RETURNING id INTO v_6715_obrolan_ramah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懇親', 'persahabatan', 43, 102, 'Jika Anda memperlakukan seseorang dengan <kanji>sopan</kanji> <kanji>keintiman</kanji>, Anda mungkin mencoba membangun <vocabulary>persahabatan</vocabulary> dengan mereka. Atau… mungkin sesuatu yang lebih? Tidak, hentikan, ini bukan keintiman seperti itu! Kata ini adalah tentang persahabatan yang sopan dan <vocabulary>persahabatan</vocabulary>. Hore untuk persahabatan!

懇親 adalah kata formal yang berarti mengenal seseorang lebih baik dengan cara yang ramah dan mudah bergaul. Anda paling sering melihatnya di kata 懇親会 (pesta santai untuk bersosialisasi).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Persahabatan, Persahabatan')
    RETURNING id INTO v_6716_persahabatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懇談', 'pembicaraan-informal', 43, 103, '<kanji>sopan</kanji> <kanji>pembicaraan</kanji> adalah <vocabulary>pembicaraan informal</vocabulary> di mana orang-orang berkumpul dan mendiskusikan sesuatu dengan cara yang ramah.

懇談 sering digunakan untuk pertemuan orang tua-guru atau pertemuan komunitas. Ini adalah pembicaraan informal namun sopan, biasanya antar kenalan, bukan teman dekat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pembicaraan Informal, Obrolan Ramah')
    RETURNING id INTO v_6717_pembicaraan_informal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懲りる', 'untuk-belajar-berdasarkan-pengalaman', 43, 104, 'Kanji berarti <kanji>menghukum</kanji> tetapi versi kosakata kata kerjanya adalah <vocabulary>belajar melalui pengalaman</vocabulary>. Saya rasa ini serupa. Ketika Anda melakukan kesalahan, seseorang akan menghukum Anda, dan kemudian Anda akan belajar melalui pengalaman (baik melalui pengalaman atau melalui teguran).', 'Sebagai seorang <reading>anak</reading> (こ) kamu mendapat banyak teguran, aku yakin. Banyak belajar dari pengalaman (menghukum).', 'Untuk Belajar Berdasarkan Pengalaman')
    RETURNING id INTO v_6718_untuk_belajar_berdasarkan_pengalaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懲罰', 'disiplin', 43, 105, 'Saya akan <kanji>menghukum</kanji> Anda dan memberi Anda <kanji>penalti</kanji>. Saya melakukan ini sebagai <vocabulary>disiplin</vocabulary>. <vocabulary>hukuman</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Disiplin, Hukuman')
    RETURNING id INTO v_6719_disiplin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '摩擦', 'gesekan', 43, 106, 'Hal-hal yang <kanji>chafe</kanji> dan <kanji>gosok</kanji> mempunyai banyak <vocabulary>gesekan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gesekan')
    RETURNING id INTO v_6720_gesekan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '相撲', 'gulat-sumo', 43, 107, '<kanji>saling</kanji> <kanji>tamparan</kanji> adalah saat dua orang besar saling berlari dan menampar satu sama lain. Inilah <vocabulary>gulat sumo</vocabulary>.', 'Bacaannya cukup aneh, dan belum pernah Anda pelajari. Tapi, Anda tahu apa itu sumo bukan? Sama saja seperti itu. Itu <membaca>すもう</membaca>.', 'Gulat Sumo, sumo')
    RETURNING id INTO v_6722_gulat_sumo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一斉', 'serentak', 43, 108, 'Pada <kanji>suatu</kanji> momen itu terjadi <kanji>bersamaan</kanji>. Itu terjadi <vocabulary>simultan</vocabulary>. Itu adalah <vocabulary>sekaligus</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan pemendekan 一.', 'Serentak, Sekaligus')
    RETURNING id INTO v_6723_serentak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旨い', 'lezat', 43, 109, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>lezat</kanji>? <vocabulary>enak</vocabulary>. Itu juga berarti "<vocabulary>terampil</vocabulary>" dan "<vocabulary>pintar</vocabulary>" juga, karena hal-hal yang lezat tentu saja lezat, bukan?', 'Apa yang paling enak? <read>Kuda</reading> (うま) enak. Mmm, kuda yang enak itu.', 'Lezat, Mahir, Cerdik')
    RETURNING id INTO v_6724_lezat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旨', 'inti', 43, 110, '<kanji>poin</kanji> dari sesuatu adalah <vocabulary>inti</vocabulary> dan <vocabulary>prinsip</vocabulary> dari sesuatu tersebut. Jadi, apa inti dari kata vocab ini? Itu juga <vocabulary>inti</vocabulary>.', 'Bacaannya sama dengan kata 胸 (dada). Jadi, inti dari tubuh Anda adalah dada Anda (terletak di tengah, dan menyatukan semuanya, bukan?). Itu sebabnya kata-kata ini dibaca sebagai <reading>むね</reading>.', 'Inti, Prinsip')
    RETURNING id INTO v_6725_inti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '要旨', 'poin-utama', 43, 111, 'Bagian yang kita <kanji>butuhkan</kanji>. <kanji>poin</kanji> dari itu. Itulah <vocabulary>poin utama</vocabulary>. Itulah <kosakata>penting</vocabulary>. Itu yang kita perlukan dan langsung pada intinya, Anda tahu?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Poin Utama, Penting')
    RETURNING id INTO v_6726_poin_utama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '論旨', 'inti-sebuah-argumen', 43, 112, '<kanji>poin</kanji> pada <kanji>teori</kanji> saya adalah <vocabulary>poin argumen</vocabulary>. Itu yang coba saya utarakan dalam teori/argumentasi saya, kawan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Inti Sebuah Argumen')
    RETURNING id INTO v_6727_inti_sebuah_argumen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '柔らかい', 'lembut', 43, 113, 'Ini adalah kanji tunggal dengan い di akhir, yang memberi tahu Anda bahwa itu mungkin kata sifat. Kanji berarti <kanji>lembut</kanji>, dan versi kata sifatnya berarti <vocabulary>soft</vocabulary> — seperti dalam jenis kelembutan <vocabulary>tender</vocabulary> yang lembut. Pikirkan handuk lembut, tangan lembut, suara lembut… apa pun yang lembut sehingga membuat Anda merasa hangat.

Mengacu pada tubuh manusia, 柔らかい juga bisa berarti <vocabulary>fleksibel</vocabulary>, dengan penekanan pada gerakan yang luwes dan tanpa usaha.', 'Anda menemukan sesuatu yang sangat <vocabulary>lembut</vocabulary> saat disentuh. Anda menyentuhnya. Anda tidak bisa berhenti. Monyet yang Anda sentuh menyuruh Anda berhenti. Ia tidak suka disentuh. Tapi, Anda tidak akan berhenti. "<reading>Yah, apa yang akan kamu lakukan, monyet?" "<reading>Yah, apa yang bisa kulakukan, kurasa," jawab monyet.', 'Lembut, Lembut, Fleksibel')
    RETURNING id INTO v_6728_lembut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '柔道', 'judo', 43, 114, 'Yang mengejutkan, <kanji>lembut</kanji> <kanji>jalan</kanji> adalah <vocabulary>judo</vocabulary>. Yap, olah raga/seni yang berbasis pada melempar orang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Judo, Juudou')
    RETURNING id INTO v_6729_judo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '柔和', 'lembut', 43, 115, 'Orang yang <kanji>lemah lembut</kanji> dan <kanji>damai</kanji> adalah <vocabulary>lemah lembut</vocabulary> dan <vocabulary>lembut</vocabulary>.

柔和 umumnya digunakan dalam sastra untuk menggambarkan seseorang yang sifat atau ciri-cirinya mengungkapkan <kosakata>kelembutan</vocabulary>.', 'Anda tidak mempelajari pembacaan 柔 dengan kanji, jadi mari kita mengingatnya dengan cara yang berbeda. Kamu harus <vocabulary>lemah lembut</vocabulary> dan <vocabulary>lembut</vocabulary> jika kamu ingin menyentuh sesuatu yang <reading>baru</reading> (にゅう) di dunia ini... anak anjing, kucing, bayi, dll. Apa pun yang baru memerlukan <vocabulary>kelembutan</vocabulary> itu.', 'Lembut, Lembut, Kelemah-lembutan')
    RETURNING id INTO v_6730_lembut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沈む', 'untuk-tenggelam', 43, 116, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tenggelam</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to sink</vocabulary>.

Secara harafiah, 沈む mengacu pada tenggelamnya fisik — misalnya perahu tenggelam ke dalam air atau kaki seseorang tenggelam ke dalam lumpur. Namun, kata ini juga dapat digunakan secara metaforis untuk membicarakan hal-hal seperti matahari terbenam (太陽が沈む), negara yang mengalami kemunduran (国が沈む), atau bahkan seseorang yang "tenggelam" dalam suasana hati yang tertekan (気分が沈む).', 'Perahumu hampir <vocabulary>tenggelam</vocabulary>, jadi kamu berlarian sambil berteriak, "<reading>Dia</reading> (しず) tenggelam! Dia… dia tenggelam! Tinggalkan kapalnya!" Perahu selalu berjenis kelamin perempuan, jadi berhati-hatilah untuk tidak mengatakan "itu". Jika Anda tidak mengatakan "dia" tenggelam, kru Anda mungkin tidak menerima pesan tersebut.', 'Untuk Tenggelam, Untuk Turun, Menjadi Depresi')
    RETURNING id INTO v_6732_untuk_tenggelam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沈滞', 'stagnasi', 43, 117, '<kanji>Tenggelam</kanji> dan <kanji>mandek</kanji>. Bayangkan ada sesuatu yang melakukan hal itu. Ia berada dalam kondisi <vocabulary>stagnasi</vocabulary> dan <vocabulary>tidak aktif</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Stagnasi, Tidak aktif')
    RETURNING id INTO v_6733_stagnasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沼田', 'sawah-berawa', 43, 118, '<kanji>rawa</kanji> <kanji>sawah</kanji> adalah <vocabulary>sawah berawa</vocabulary>. Ini hanyalah sawah yang berawa.

Dalam bahasa modern, 沼田 banyak digunakan sebagai nama tempat atau nama keluarga, seperti Kota <vocabulary>Numata</vocabulary> di Prefektur Gunma atau seseorang dengan nama belakang Numata.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Sawah Berawa, Numata')
    RETURNING id INTO v_6735_sawah_berawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沼沢', 'rawa', 43, 119, '<kanji>rawa</kanji> <kanji>rawa</kanji> adalah <vocabulary>rawa</vocabulary> atau <vocabulary>rawa</vocabulary>.', 'Anehnya, ini adalah satu kata yang menggunakan bacaan on''yomi, yang tidak Anda pelajari dengan kanji. Untuk mengingat <vocabulary>rawa</vocabulary> ini, perhatikan bagaimana ada dua kanji di sini yang membuat area ini sangat berawa. Karena ini adalah tempat paling berawa dan terawa di seluruh Jepang, tentu saja <reading>Sho</reading>gun (しょう) menginginkannya sendiri. Meski tanahnya tidak berguna, dia menginginkan yang terbaik dari segalanya, menjadi Shogun dan segalanya.', 'Rawa, Rawa')
    RETURNING id INTO v_6738_rawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '安泰', 'perdamaian', 43, 120, '<kanji>Bersantai</kanji> dalam <kanji>damai</kanji>. Dimanapun Anda berada yang memungkinkan Anda melakukan hal ini, tentu saja <vocabulary>perdamaian</vocabulary>. Anda juga merasakan <vocabulary>keamanan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perdamaian, Keamanan')
    RETURNING id INTO v_6739_perdamaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '滅ぼす', 'untuk-menghancurkan', 43, 121, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menghancurkan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to destroy</vocabulary> dan <vocabulary>to annihilate</vocabulary>.', 'Anda akan <vocabulary>menghancurkan</vocabulary> <reading>telur cangkul</reading>. Ini adalah telur yang berasal dari alat cangkul. Jika mereka membuat terlalu banyak telur, mereka akan membuat terlalu banyak cangkul. Dan jika cangkul terlalu banyak, hal buruk akan terjadi.', 'Untuk Menghancurkan, Untuk Memusnahkan')
    RETURNING id INTO v_6740_untuk_menghancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '滅亡', 'kejatuhan', 43, 122, '<kanji>Hancurkan</kanji> hingga <kanji>kematian</kanji>. Jika Anda hancur hingga titik ini, inilah <vocabulary>kejatuhan</vocabulary> dan <vocabulary>kehancuran</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kejatuhan, Menghancurkan, Pengrusakan')
    RETURNING id INTO v_6741_kejatuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '撲滅', 'pemusnahan', 43, 123, '<kanji>Tampar</kanji> bug itu dan <kanji>hancurkan</kanji>. Ha ha! Aku menyingkirkan semua serangga itu. Ini adalah <vocabulary>pemusnahan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemusnahan, Pemberantasan')
    RETURNING id INTO v_6742_pemusnahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絶滅', 'kepunahan', 43, 124, '<kanji>Kepunahan</kanji> di mana segala sesuatunya <kanji>hancur</kanji>adalah <vocabulary>kepunahan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kepunahan, Menjadi Punah')
    RETURNING id INTO v_6743_kepunahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '壊滅', 'pengrusakan', 43, 125, 'Jika Anda <kanji>merusak</kanji> dan <kanji>menghancurkan</kanji> sesuatu, itu adalah <vocabulary>penghancuran</vocabulary>. Itu adalah <vocabulary>pemusnahan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengrusakan, Penghancuran')
    RETURNING id INTO v_6744_pengrusakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幻滅', 'kekecewaan', 43, 126, '<kanji>ilusi</kanji> telah <kanji>dihancurkan</kanji>. Jika ilusi Anda hancur, itulah <vocabulary>kekecewaan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kekecewaan')
    RETURNING id INTO v_6745_kekecewaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '滋養', 'makanan', 43, 127, '<kanji>Memberi nutrisi</kanji> dan <kanji>mengasuh</kanji>ing. Hal yang memberi Anda hal ini adalah <vocabulary>gizi</vocabulary> atau <vocabulary>nutrition</vocabulary>.

滋養 adalah kata formal dan agak kuno. Kata ini banyak digunakan secara tertulis untuk mendeskripsikan makanan bergizi atau manfaat kesehatan dari suplemen, tonik, atau minuman energi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Makanan, Nutrisi')
    RETURNING id INTO v_6746_makanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高炉', 'tanur-tinggi', 43, 128, '<kanji>tungku</kanji> tinggi</kanji> adalah tungku yang sangat panas dan meledak-ledak. Ini adalah <vocabulary>tanur sembur</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tanur tinggi')
    RETURNING id INTO v_6747_tanur_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暖炉', 'perapian', 43, 129, '<kanji>penghangat</kanji> <kanji>tungku</kanji> adalah tungku untuk menghangatkan Anda dan benda lainnya. Ini adalah <vocabulary>perapian</vocabulary> atau <vocabulary>perapian</vocabulary> atau bahkan <vocabulary>kompor</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perapian, Perapian, Kompor')
    RETURNING id INTO v_6748_perapian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '炉心', 'inti-reaktor-nuklir', 43, 130, '<kanji>tungku</kanji> <kanji>jantung</kanji> adalah jantung dari tungku. Inti dari tungku khusus ini, yang sedang kita bicarakan di sini, adalah <vocabulary>inti reaktor nuklir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Inti Reaktor Nuklir')
    RETURNING id INTO v_6749_inti_reaktor_nuklir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原子炉', 'reaktor-atom', 43, 131, 'Jika 原子 adalah <kanji>atom</kanji> dan 炉 adalah <kanji>tungku</kanji>, apakah tungku yang memiliki atom? Ini adalah <vocabulary>reaktor atom</vocabulary> atau <vocabulary>reaktor nuklir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Reaktor Atom, Reaktor Nuklir')
    RETURNING id INTO v_6750_reaktor_atom;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '琴', 'koto', 43, 132, '<kanji>harpa</kanji>, setidaknya di Jepang, adalah <vocabulary>koto</vocabulary>, juga dikenal (bagi kami) sebagai <vocabulary>Japanese harp</vocabulary> atau <vocabulary>Japanese zither</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Koto, Harpa Jepang, Sitar Jepang')
    RETURNING id INTO v_6751_koto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伺い', 'pertanyaan', 43, 133, 'Jika 伺う adalah "menanyakan" atau "mengunjungi" maka versi kata bendanya akan menjadi cara yang sopan untuk mengucapkan <vocabulary>inquiry</vocabulary> atau <vocabulary>inquiry</vocabulary>. Dengan kata lain, sebuah <vocabulary>pertanyaan</vocabulary>. Bisa juga berarti <vocabulary>kunjungan</vocabulary>.', 'Bacaannya berasal dari 伺う.', 'Pertanyaan, Pertanyaan, Pertanyaan, Mengunjungi')
    RETURNING id INTO v_6943_pertanyaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '群がる', 'untuk-berkelompok', 43, 134, 'Ingat 群れる, yang artinya "berkumpul" atau "berkumpul".? Ini juga berarti demikian!', 'Namun bacaannya sedikit berbeda dengan 群れる. Ada tambahan ら di sana. Meski begitu, ini sangat mirip, jadi Anda seharusnya bisa menggunakan salah satu untuk mengingat yang lain setelah beberapa repetisi. Anda juga dapat memikirkannya seperti ini: Semua orang berkumpul di satu tempat. Anehnya, itu <reading>村</reading> (むら) yang kecil. Ada 村 reuni yang sedang berlangsung, itu sebabnya.', 'Untuk Berkelompok, Ke Kerumunan')
    RETURNING id INTO v_6944_untuk_berkelompok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潜る', 'untuk-pergi-ke-bawah', 43, 135, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menyembunyikan</kanji>, namun sebagai kata kerja, kata ini berarti <vocabulary>to go under</vocabulary> atau <vocabulary>to passing through</vocabulary>. Umumnya, kata ini berarti <vocabulary>menyelam di bawah air</vocabulary> atau <vocabulary>pergi ke bawah tanah</vocabulary>. Dapatkah Anda memahami mengapa kanji untuk menyembunyikan masuk akal dalam kasus ini? Jika Anda berada di bawah air atau di bawah tanah, tidak ada yang bisa melihat Anda!', '潜る mempunyai dua kemungkinan pembacaan: もぐる dan くぐる. Yang pertama digunakan ketika Anda ingin menyelam di bawah air atau pergi ke bawah tanah.  Yang kedua digunakan ketika Anda melewati atau di bawah sesuatu, terkadang dengan susah payah, seperti merangkak di bawah pagar. Kami ingin Anda fokus pada もぐる, jadi inilah mnemonik untuk membantu Anda:

Mengapa Anda mencoba menyelam di bawah air berulang kali? Ini untuk mendapatkan <reading>mo'' goo</reading> (もぐ) untuk dijual di pasar gelap goo. Siapa yang mengira kalau cairan laut adalah komoditas yang hebat?', 'Untuk Pergi ke Bawah, Untuk Menyelam di Bawah Air, Untuk Pergi ke Bawah Tanah, Untuk Melewati')
    RETURNING id INTO v_6945_untuk_pergi_ke_bawah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '液晶', 'kristal-cair', 43, 136, '<kanji>cairan</kanji> <kanji>kristal</kanji> adalah <vocabulary>kristal cair</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kristal Cair')
    RETURNING id INTO v_7424_kristal_cair;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水晶', 'kristal', 43, 137, '<kanji>air</kanji> <kanji>kristal</kanji> hanyalah sebuah <vocabulary>kristal</vocabulary>. Saya kira kristalnya bening dan terlihat seperti air, ya? Itu sebabnya ia disebut sebagai kristal air, sehingga sebenarnya hanya sebuah kristal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kristal')
    RETURNING id INTO v_7425_kristal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '軒', 'atap', 43, 138, 'Untuk menggunakan <kanji>penghitung rumah</kanji>, Anda perlu memiliki sesuatu untuk dihitung. Itu sebabnya Anda harus menemukan <vocabulary>atap</vocabulary>. Dan semua atap itu <vocabulary>berdiri dalam satu baris</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Rumah-rumah yang <vocabulary>berdiri berjajar</vocabulary> ini rapi dan menyenangkan untuk dihitung, tetapi Anda tidak dapat masuk karena <reading>tidak memiliki kunci</reading> (のき). Tanpa kunci, <vocabulary>atap</vocabulary> itu hanya ada untuk Anda lihat.', 'Atap, Berdiri Berjajar, Berdiri Berdampingan')
    RETURNING id INTO v_7836_atap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '慰謝料', 'kompensasi', 43, 139, 'Ingat bagaimana 慰謝 berarti "penghiburan?" Tambahkan <kanji>biaya</kanji> ke dalamnya dan Anda mendapatkan <vocabulary>kompensasi</vocabulary>. Atau <vocabulary>uang hiburan</vocabulary>, tergantung situasinya.

慰謝料 mengacu pada kompensasi atas tekanan mental atau emosional. Asuransi ini mencakup kerugian atas kerugian non-fisik, seperti penderitaan emosional dalam penyelesaian perceraian, perselingkuhan, atau kecelakaan, di mana korban mencari ganti rugi finansial atas kesusahan yang mereka alami.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kompensasi, Uang Penghiburan')
    RETURNING id INTO v_8691_kompensasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '露', 'embun', 43, 140, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kata ini menggunakan pembacaan kanji kun''yomi, tetapi Anda belum mempelajarinya. Berikut ini mnemonik untuk membantu Anda:

<vocabulary>Embun</vocabulary> hanyalah cara bumi memberi air <read>kepada Anda</reading> (つゆ). Hujan terlalu deras, Anda tidak boleh pergi ke laut atau danau, sehingga bumi memberikan embun kepada Anda dengan menaruhnya di rumput di luar rumah Anda setiap hari!', 'Embun')
    RETURNING id INTO v_8732_embun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '御札', 'jimat', 43, 141, 'Anda mempelajari kosakata lain 札 sebagai "jimat", namun ini adalah <kanji>terhormat</kanji> <vocabulary>jimat</vocabulary> khusus. Itu adalah <vocabulary>jimat</vocabulary>.', 'Pembacaan 御 adalah お karena ふだ menggunakan bacaan kun''yomi. Kun''yomi + kun''yomi = ya.', 'Jimat, Jimat')
    RETURNING id INTO v_8811_jimat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '濡れ衣', 'tuduhan-palsu', 43, 142, 'Ah ya, <kanji>basah</kanji> <kanji>pakaian</kanji> harus pakaian basah-TIDAK! Dulu, kata ini berarti "pakaian basah", namun kini digunakan untuk <vocabulary>tuduhan palsu</vocabulary>. Anggap saja seperti ini: jika Anda melontarkan tuduhan palsu dan tidak berdasar, itu seperti Anda menumpahkan air ke tubuh seseorang tanpa alasan.', 'Kata ini terdiri dari bacaan 濡れる dan versi rendaku dari bacaan きぬ dari 衣. Anda mempelajari bacaan ini dalam kosakata 衣, tapi berikut ini ada mnemonik untuk mengingatnya. Bayangkan seseorang menumpahkan air ke tubuh Anda dan Anda basah kuyup. Anda bisa mengatakan "<reading>gi</reading>berikan <reading>baru</reading> (ぎぬ) baju untuk saya!"', 'Tuduhan Palsu, Tuduhan Palsu, Tuduhan Tak Berdasar')
    RETURNING id INTO v_8877_tuduhan_palsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '凄く', 'sangat', 43, 143, 'Ini mungkin terlihat seperti kata kerja pada awalnya, tapi sebenarnya ini adalah versi kata keterangan dari kata sifat 凄い. Ketika ada sesuatu yang <kanji>mengerikan</kanji> biasanya <vocabulary>sangat</vocabulary> buruk.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda telah mempelajari bacaan ini, jadi Anda seharusnya bisa membacanya sendiri.', 'Sangat, Sangat, Sangat')
    RETURNING id INTO v_8903_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '揚がる', 'untuk-digoreng', 43, 144, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini adalah kata kerja intransitif. Kanji berarti <kanji>mengangkat</kanji>, namun kata kerjanya paling umum berarti <kosa kata>digoreng</vocabulary>, siap disantap. Bayangkan sesuatu diangkat ke atas meja karena sudah digoreng dan siap disantap. Kata kerjanya juga bisa berarti, secara lebih logis, <vocabulary>to be up</vocabulary>.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 揚げる.', 'Untuk Digoreng, Untuk Digoreng, Untuk Bangun')
    RETURNING id INTO v_8942_untuk_digoreng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '惹く', 'untuk-menarik', 43, 145, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menarik</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to pulling</vocabulary>.

惹く biasanya terlihat dalam frasa tertentu seperti 目を惹く (untuk menarik perhatian seseorang). Meskipun 引く juga dapat digunakan dalam frasa ini, 惹く cenderung menyatakan bahwa sesuatu secara alami menarik perhatian atau minat. Sebaliknya, 引く lebih netral, dan bahkan mungkin menyampaikan nuansa yang lebih disengaja dan berusaha keras.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini, jadi Anda akan baik-baik saja di sini!', 'Untuk Menarik')
    RETURNING id INTO v_9477_untuk_menarik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '惹かれる', 'untuk-tertarik', 43, 146, 'Anda pernah melihat 惹く, yang artinya "menarik". Ini adalah versi pasif, jadi artinya <vocabulary>tertarik</vocabulary>, <vocabulary>terpesona</vocabulary>, atau <vocabulary>tertarik pada</vocabulary>.

Sama seperti 惹く, 惹かれる cenderung digunakan ketika ketertarikan atau ketertarikan terjadi secara alami dan mudah, seperti 雰囲気に惹かれる (tertarik pada suasana).', 'Bacaannya berasal dari 惹く, jadi pastinya anda sudah tahu cara membaca yang ini.', 'Untuk Tertarik, Menjadi Terpesona, Untuk Ditarik')
    RETURNING id INTO v_9492_untuk_tertarik;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6631_yokozuna, 'Yokozuna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6631_yokozuna, 'Juara Besar Sumo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6631_yokozuna, 'Peringkat Tertinggi Di Sumo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6648_pulau_kapal_perang, 'Pulau Kapal Perang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6648_pulau_kapal_perang, 'Gunkanjima', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6649_palsu, 'Palsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6649_palsu, 'Palsu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6650_bundel, 'Bundel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6650_bundel, 'Kemasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6650_bundel, 'Paket', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6652_memang, 'Memang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6652_memang, 'Benar-benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6652_memang, 'Sungguh-sungguh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6655_tidak_biasa, 'Tidak biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6655_tidak_biasa, 'Langka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6655_tidak_biasa, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6656_kelezatan, 'Kelezatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6657_langka, 'Langka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6657_langka, 'Tidak biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6657_langka, 'Penasaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6658_merobek, 'Merobek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6658_merobek, 'Untuk Merobek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6659_perincian, 'Perincian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6659_perincian, 'Pecah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6660_membelah, 'Membelah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6660_membelah, 'Divisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6661_untuk_menyerang, 'Untuk Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6662_menyerang, 'Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6662_menyerang, 'Menyerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6663_serangan_kejutan, 'Serangan Kejutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6664_serangan_udara, 'Serangan udara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6664_serangan_udara, 'Serangan Udara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6665_serangan_balasan, 'Serangan balasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6666_kontribusi, 'Kontribusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6667_pesona, 'Pesona', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6667_pesona, 'Atmosfer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6667_pesona, 'Mencicipi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6667_pesona, 'Inti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6668_hobi, 'Hobi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6669_jarak, 'Jarak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6669_jarak, 'Jangkauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6670_daftar_keluarga, 'Daftar Keluarga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6670_daftar_keluarga, 'Sensus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6671_kebangsaan, 'Kebangsaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6671_kebangsaan, 'Kewarganegaraan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6672_penyingkapan, 'Penyingkapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6672_penyingkapan, 'Paparan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6673_jujur, 'Jujur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6673_jujur, 'Tumpul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6674_kios_jalanan, 'Kios Jalanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6674_kios_jalanan, 'Berdiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6674_kios_jalanan, 'Stan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6675_paparan, 'Paparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6675_paparan, 'Eksposur Fotografi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6676_pendeta, 'Pendeta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6676_pendeta, 'Menteri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6676_pendeta, 'Pendeta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6677_tanah_padang_rumput, 'Tanah Padang Rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6677_tanah_padang_rumput, 'Peternakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6678_padang_rumput, 'Padang rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6678_padang_rumput, 'Rumput', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6679_peternakan, 'Peternakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6679_peternakan, 'Peternakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6680_pencetakan, 'Pencetakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6681_untuk_mencetak, 'Untuk Mencetak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6682_terang, 'Terang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6682_terang, 'Ceria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6682_terang, 'Jernih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6683_kabar_baik, 'Kabar Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6684_terang, 'Terang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6684_terang, 'Ceria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6685_gelombang_pasang, 'Gelombang pasang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6685_gelombang_pasang, 'Saat ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6686_gelombang_pasang, 'Gelombang pasang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6686_gelombang_pasang, 'Saat ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6686_gelombang_pasang, 'Kecenderungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6687_air_pasang, 'Air Pasang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6687_air_pasang, 'Pasang Penuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6688_gelombang_pasang, 'Gelombang pasang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6688_gelombang_pasang, 'Arus Pasang Surut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6689_segera, 'Segera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6689_segera, 'Instan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6690_improvisasi, 'Improvisasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6691_segera, 'Segera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6691_segera, 'Seketika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6692_kematian_instan, 'Kematian Instan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6693_hari_yang_sama, 'Hari yang sama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6694_efek_langsung, 'Efek Langsung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6694_efek_langsung, 'Efek Instan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6695_pagar, 'Pagar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6695_pagar, 'Pagar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6695_pagar, 'Dinding', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6696_pagar, 'Pagar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6696_pagar, 'Pagar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6697_dinding_batu, 'Dinding Batu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6698_otoritas, 'Otoritas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6699_untuk_bertindak_besar, 'Untuk Bertindak Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6699_untuk_bertindak_besar, 'Menjadi Sombong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6699_untuk_bertindak_besar, 'Menjadi suka memerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6700_barang_pitcher, 'Barang Pitcher', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6701_harga_diri, 'Harga diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6701_harga_diri, 'Keagungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6702_segel, 'Segel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6703_membuka_segel, 'Membuka segel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6703_membuka_segel, 'Memecahkan Segel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6703_membuka_segel, 'Membuka Surat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6704_surat_tersegel, 'Surat Tersegel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6705_feodalisme, 'Feodalisme', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6706_amplop, 'Amplop', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6707_pipa, 'Pipa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6707_pipa, 'Silinder', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6707_pipa, 'Tabung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6710_penghiburan, 'Penghiburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6711_untuk_menghibur, 'Untuk Menghibur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6711_untuk_menghibur, 'Untuk Kenyamanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6712_membayar_panggilan_simpati, 'Membayar Panggilan Simpati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6712_membayar_panggilan_simpati, 'Penghiburan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6712_membayar_panggilan_simpati, 'Kunjungan Simpati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6713_penghiburan, 'Penghiburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6713_penghiburan, 'Relaksasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6714_ramah, 'Ramah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6714_ramah, 'Kedekatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6715_obrolan_ramah, 'Obrolan Ramah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6715_obrolan_ramah, 'Diskusi Ramah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6716_persahabatan, 'Persahabatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6716_persahabatan, 'Persahabatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6717_pembicaraan_informal, 'Pembicaraan Informal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6717_pembicaraan_informal, 'Obrolan Ramah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6718_untuk_belajar_berdasarkan_pengalaman, 'Untuk Belajar Berdasarkan Pengalaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6719_disiplin, 'Disiplin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6719_disiplin, 'Hukuman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6720_gesekan, 'Gesekan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6722_gulat_sumo, 'Gulat Sumo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6722_gulat_sumo, 'sumo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6723_serentak, 'Serentak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6723_serentak, 'Sekaligus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6724_lezat, 'Lezat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6724_lezat, 'Mahir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6724_lezat, 'Cerdik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6725_inti, 'Inti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6725_inti, 'Prinsip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6726_poin_utama, 'Poin Utama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6726_poin_utama, 'Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6727_inti_sebuah_argumen, 'Inti Sebuah Argumen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6728_lembut, 'Lembut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6728_lembut, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6728_lembut, 'Fleksibel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6729_judo, 'Judo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6729_judo, 'Juudou', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6730_lembut, 'Lembut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6730_lembut, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6730_lembut, 'Kelemah-lembutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6732_untuk_tenggelam, 'Untuk Tenggelam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6732_untuk_tenggelam, 'Untuk Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6732_untuk_tenggelam, 'Menjadi Depresi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6733_stagnasi, 'Stagnasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6733_stagnasi, 'Tidak aktif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6735_sawah_berawa, 'Sawah Berawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6735_sawah_berawa, 'Numata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6738_rawa, 'Rawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6738_rawa, 'Rawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6739_perdamaian, 'Perdamaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6739_perdamaian, 'Keamanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6740_untuk_menghancurkan, 'Untuk Menghancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6740_untuk_menghancurkan, 'Untuk Memusnahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6741_kejatuhan, 'Kejatuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6741_kejatuhan, 'Menghancurkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6741_kejatuhan, 'Pengrusakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6742_pemusnahan, 'Pemusnahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6742_pemusnahan, 'Pemberantasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6743_kepunahan, 'Kepunahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6743_kepunahan, 'Menjadi Punah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6744_pengrusakan, 'Pengrusakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6744_pengrusakan, 'Penghancuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6745_kekecewaan, 'Kekecewaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6746_makanan, 'Makanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6746_makanan, 'Nutrisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6747_tanur_tinggi, 'Tanur tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6748_perapian, 'Perapian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6748_perapian, 'Perapian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6748_perapian, 'Kompor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6749_inti_reaktor_nuklir, 'Inti Reaktor Nuklir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6750_reaktor_atom, 'Reaktor Atom', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6750_reaktor_atom, 'Reaktor Nuklir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6751_koto, 'Koto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6751_koto, 'Harpa Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6751_koto, 'Sitar Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6943_pertanyaan, 'Pertanyaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6943_pertanyaan, 'Pertanyaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6943_pertanyaan, 'Pertanyaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6943_pertanyaan, 'Mengunjungi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6944_untuk_berkelompok, 'Untuk Berkelompok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6944_untuk_berkelompok, 'Ke Kerumunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6945_untuk_pergi_ke_bawah, 'Untuk Pergi ke Bawah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6945_untuk_pergi_ke_bawah, 'Untuk Menyelam di Bawah Air', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6945_untuk_pergi_ke_bawah, 'Untuk Pergi ke Bawah Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6945_untuk_pergi_ke_bawah, 'Untuk Melewati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7424_kristal_cair, 'Kristal Cair', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7425_kristal, 'Kristal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7836_atap, 'Atap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7836_atap, 'Berdiri Berjajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7836_atap, 'Berdiri Berdampingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8691_kompensasi, 'Kompensasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8691_kompensasi, 'Uang Penghiburan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8732_embun, 'Embun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8811_jimat, 'Jimat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8811_jimat, 'Jimat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8877_tuduhan_palsu, 'Tuduhan Palsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8877_tuduhan_palsu, 'Tuduhan Palsu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8877_tuduhan_palsu, 'Tuduhan Tak Berdasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8903_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8903_sangat, 'Sangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8903_sangat, 'Sangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8942_untuk_digoreng, 'Untuk Digoreng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8942_untuk_digoreng, 'Untuk Digoreng', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8942_untuk_digoreng, 'Untuk Bangun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9477_untuk_menarik, 'Untuk Menarik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9492_untuk_tertarik, 'Untuk Tertarik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9492_untuk_tertarik, 'Menjadi Terpesona', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9492_untuk_tertarik, 'Untuk Ditarik', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6631_yokozuna, 'よこづな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6648_pulau_kapal_perang, 'ぐんかんじま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6649_palsu, 'にせもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6650_bundel, 'つつみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6652_memang, 'まことに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6655_tidak_biasa, 'ちん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6656_kelezatan, 'ちんみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6657_langka, 'めずらしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6658_merobek, 'さく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6659_perincian, 'けつれつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6660_membelah, 'ぶんれつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6661_untuk_menyerang, 'おそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6662_menyerang, 'しゅうげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6663_serangan_kejutan, 'きしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6664_serangan_udara, 'くうしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6665_serangan_balasan, 'ぎゃくしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6666_kontribusi, 'こうけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6667_pesona, 'おもむき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6668_hobi, 'しゅみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6669_jarak, 'きょり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6670_daftar_keluarga, 'こせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6671_kebangsaan, 'こくせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6672_penyingkapan, 'ばくろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6673_jujur, 'ろこつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6674_kios_jalanan, 'ろてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6675_paparan, 'ろしゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6676_pendeta, 'ぼくし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6677_tanah_padang_rumput, 'ぼくや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6677_tanah_padang_rumput, 'まきの', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6678_padang_rumput, 'ぼくそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6679_peternakan, 'ぼくじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6679_peternakan, 'まきば', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6680_pencetakan, 'いんさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6681_untuk_mencetak, 'する', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6682_terang, 'めいろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6683_kabar_baik, 'ろうほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6684_terang, 'ほがらか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6685_gelombang_pasang, 'しお', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6686_gelombang_pasang, 'ふうちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6687_air_pasang, 'まんちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6688_gelombang_pasang, 'ちょうりゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6689_segera, 'そく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6690_improvisasi, 'そっきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6691_segera, 'そくざ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6692_kematian_instan, 'そくし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6693_hari_yang_sama, 'そくじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6694_efek_langsung, 'そっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6695_pagar, 'かき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6696_pagar, 'かきね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6697_dinding_batu, 'いしがき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6698_otoritas, 'けんい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6699_untuk_bertindak_besar, 'いばる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6700_barang_pitcher, 'きゅうい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6701_harga_diri, 'いげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6702_segel, 'ふう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6703_membuka_segel, 'かいふう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6704_surat_tersegel, 'ふうしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6705_feodalisme, 'ほうけんしゅぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6706_amplop, 'ふうとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6707_pipa, 'つつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6710_penghiburan, 'いしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6711_untuk_menghibur, 'なぐさめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6712_membayar_panggilan_simpati, 'いもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6713_penghiburan, 'いあん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6714_ramah, 'こんい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6715_obrolan_ramah, 'こんわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6716_persahabatan, 'こんしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6717_pembicaraan_informal, 'こんだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6718_untuk_belajar_berdasarkan_pengalaman, 'こりる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6719_disiplin, 'ちょうばつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6720_gesekan, 'まさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6722_gulat_sumo, 'すもう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6723_serentak, 'いっせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6724_lezat, 'うまい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6725_inti, 'むね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6726_poin_utama, 'ようし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6727_inti_sebuah_argumen, 'ろんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6728_lembut, 'やわらかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6729_judo, 'じゅうどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6730_lembut, 'にゅうわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6732_untuk_tenggelam, 'しずむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6733_stagnasi, 'ちんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6735_sawah_berawa, 'ぬまた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6738_rawa, 'しょうたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6739_perdamaian, 'あんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6740_untuk_menghancurkan, 'ほろぼす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6741_kejatuhan, 'めつぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6742_pemusnahan, 'ぼくめつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6743_kepunahan, 'ぜつめつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6744_pengrusakan, 'かいめつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6745_kekecewaan, 'げんめつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6746_makanan, 'じよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6747_tanur_tinggi, 'こうろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6748_perapian, 'だんろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6749_inti_reaktor_nuklir, 'ろしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6750_reaktor_atom, 'げんしろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6751_koto, 'こと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6943_pertanyaan, 'うかがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6944_untuk_berkelompok, 'むらがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6945_untuk_pergi_ke_bawah, 'もぐる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6945_untuk_pergi_ke_bawah, 'くぐる', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7424_kristal_cair, 'えきしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7425_kristal, 'すいしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7836_atap, 'のき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8691_kompensasi, 'いしゃりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8732_embun, 'つゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8811_jimat, 'おふだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8877_tuduhan_palsu, 'ぬれぎぬ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8903_sangat, 'すごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8942_untuk_digoreng, 'あがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9477_untuk_menarik, 'ひく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9492_untuk_tertarik, 'ひかれる', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6631_yokozuna, '彼はついに横綱になった。', 'Dia akhirnya menjadi yokozuna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6631_yokozuna, '横綱には、強さだけじゃなく品格も求められるんです。', 'Seorang yokozuna diharapkan tidak hanya memiliki kekuatan, tetapi juga martabat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6631_yokozuna, 'ワニカニは漢字学習業界の横綱だ。', 'WaniKani adalah yokozuna dari industri pembelajaran kanji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6648_pulau_kapal_perang, 'アイツはぜんぜん面白くないな。話題といったら軍艦島の都市伝説だけだし。', 'Dia tidak menarik sama sekali. Yang dia bicarakan hanyalah legenda urban Battleship Island.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6649_palsu, 'あの男、俺に偽物のグッチの財布を自慢してきたんだぜ。', 'Orang itu membual tentang dompet Gucci palsunya kepadaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6649_palsu, 'イテウォンに行けばブランド物の偽物が買えますよ。', 'Kalau ke Itaewon, kamu bisa beli barang-barang branded palsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6649_palsu, '最近、ポートランドのダウンタウンにコウイチの偽物が住んでいるという情報をキャッチしました。', 'Kami baru-baru ini menerima informasi bahwa Koichi palsu tinggal di pusat kota Portland.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6650_bundel, '日付が変わる瞬間に包みを開けてもいい？', 'Bolehkah saya membuka paket ini tepat tengah malam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6652_memang, '誠に申し訳ございません。', 'Saya dengan tulus meminta maaf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6652_memang, 'わざわざお越しいただき、誠にありがとうございます。', 'Saya sangat berterima kasih karena Anda telah datang jauh-jauh ke sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6652_memang, 'それは誠に素晴らしいことだ。', 'Sungguh luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6652_memang, '誠に申し訳ありませんが、当ホテルは全室禁煙となっております。', 'Saya benar-benar minta maaf, tapi semua kamar di hotel kami bebas rokok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6655_tidak_biasa, '私の彼氏の苗字は「御手洗」という珍名です。', 'Nama keluarga pacar saya adalah 御手洗, nama yang tidak biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6655_tidak_biasa, 'この金魚は珍種で、一匹５万円です。', 'Jenis ikan mas ini termasuk jenis yang langka, dan harganya 50.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6655_tidak_biasa, '去年、教授は「自動犬散歩マシン」という珍道具を発明しました。', 'Tahun lalu, sang profesor menemukan alat unik yang disebut "alat bantu jalan anjing otomatis".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6655_tidak_biasa, '昨夜、テレビで野球の名プレーと珍プレーを放送してたよ。', 'Tadi malam mereka menayangkan drama bisbol yang bagus dan tidak biasa di TV.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6656_kelezatan, '私は痛風なのでビールを飲まない方がいいのは分かっているんですが、友人からビールに良く合う珍味をもらったので今日ばかりは我慢できませんね。', 'Saya menderita asam urat dan saya tahu saya harus menghindari bir, tetapi saya tidak dapat menahan diri untuk tidak meminumnya hari ini karena teman saya memberi saya beberapa makanan lezat yang cocok dengan bir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6657_langka, 'この辺ではベーコンの乗ったドーナッツはそう珍しいものではありませんよ。', 'Tidak jarang melihat bacon di atas donat di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6658_merobek, '私は彼女の才能を妬んでおり、彼女が絵画コンクールに向けて絵を描いていたキャンバスを切り裂きました。', 'Saya iri dengan bakatnya, jadi saya merobek kanvas yang dia lukis untuk kompetisi seni hingga berkeping-keping.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6659_perincian, '両者の意見が合わず、話し合いは決裂した。', 'Kedua belah pihak tidak setuju dan perundingan terhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6659_perincian, '交渉が決裂した原因は何だと思いますか？', 'Menurut Anda apa penyebab gagalnya negosiasi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6659_perincian, '合意目前での決裂は株式市場に大きな影響を与えました。', 'Gagalnya pembicaraan di ambang kesepakatan berdampak signifikan pada pasar saham.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6659_perincian, 'あの男は奴らの決裂を、牢屋の中で舌なめずりをしながら待っていたに違いない。', 'Pria itu, tidak diragukan lagi, sangat menantikan kehancuran hubungan mereka dari dalam sel penjaranya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6660_membelah, 'その政党は三派に分裂したと思っていたんだけど、実際は四派に分裂していたんだね。', 'Saya kira partai politik terpecah menjadi tiga, namun ternyata terpecah menjadi empat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6661_untuk_menyerang, '俺は文字通りズボンを下げたところで、突然の激しい腹痛に襲われました。', 'Saya benar-benar terjebak dengan celana saya turun karena serangan sakit perut yang tiba-tiba dan parah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6662_menyerang, '警察の車は、暴走族に襲撃された。', 'Sebuah mobil polisi diserang oleh geng motor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6663_serangan_kejutan, '敵の奇襲を予想できなかった。', 'Kami tidak menduga serangan mendadak lawan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6664_serangan_udara, '僕が空を見上げると、ちょうど空襲が始まるところだった。', 'Saat saya melihat ke langit, serangan udara baru saja akan terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6665_serangan_balasan, 'パックマンは、追ってくるモンスターを逆襲して食べ始めた。', 'Pac-Man melakukan serangan balik dan mulai memakan monster yang mengejarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6666_kontribusi, 'どうしてG20は財政支援への貢献を否認したのですか。', 'Mengapa G20 menolak memberikan kontribusi finansial terhadap dana talangan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6667_pesona, 'こんなに趣のあるお持ち帰り用の容器を見たのは初めてです。', 'Saya belum pernah melihat tas doggie yang begitu lezat sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6668_hobi, '私の趣味は家の大掃除です。', 'Hobi saya adalah membersihkan rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6669_jarak, '年を取ったら長距離のフライトはきつくなるだろうね。', 'Penerbangan jarak jauh akan menjadi berat bagi saya ketika saya menjadi tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6670_daftar_keluarga, '私は戸籍謄本の写しが必要です。', 'Saya memerlukan salinan resmi daftar keluarga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6671_kebangsaan, '日本国籍がないんですが、司法試験を受験することは可能ですか？', 'Saya tidak mempunyai kewarganegaraan Jepang, tapi apakah saya bisa mengikuti ujian pengacara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6672_penyingkapan, '暴露本の出版については現在再考中です。', 'Saya berubah pikiran untuk menerbitkan buku yang menceritakan semuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6673_jujur, '彼女があまりに露骨にものを言うもので、少々面食らいました。', 'Saya cukup terkejut melihat betapa blak-blakannya dia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6674_kios_jalanan, 'あの露店で買ったアクセは全部すぐ壊れちゃったよ。', 'Setiap aksesori yang saya beli dari kios pinggir jalan langsung rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6675_paparan, '思い直して、肌の露出が激しいドレスを着るのは控えることにしました。', 'Saya berpikir lebih baik tentang hal itu dan menahan diri untuk tidak mengenakan gaun terbuka seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6676_pendeta, '牧師さんはもう今日は教会を出ちゃいましたか？', 'Apakah pendeta sudah meninggalkan gereja pada hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6677_tanah_padang_rumput, '二、三年くらいしたら、父親が死んで、俺は父さんの牧野を相続する事になると思うよ。', 'Beberapa tahun lagi ayahku akan meninggal dan aku akan mewarisi peternakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6678_padang_rumput, '氷点下の日々が続いているせいで、牧草が全てやられてしまった。', 'Suhu sudah di bawah titik beku selama berhari-hari, jadi semua rumputku mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6679_peternakan, 'この牧場には、絞り立ての牛乳を使った自慢のアイスクリーム屋さんがあるんだ。', 'Peternakan ini memiliki toko es krim bagus yang menggunakan susu segar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6680_pencetakan, '我々の広告を上質の紙に料理のレシピと一緒に印刷すれば、みんなそれを冷蔵庫に貼っておいてくれるんじゃないかな。', 'Kita harus mencetak iklan kita di kertas bagus yang berisi resep masakan sehingga orang bisa menyimpannya di lemari es mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6681_untuk_mencetak, '今年は年賀状何枚刷ればいいかなあ？', 'Berapa banyak kartu Tahun Baru yang harus kita cetak tahun ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6682_terang, '彼はかつては明朗快活な青年だった。', 'Dia dulunya adalah seorang pemuda yang ceria.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6683_kabar_baik, '朗報を伝えるためにここに来ました。', 'Saya di sini untuk memberi tahu Anda kabar baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6684_terang, '朗らかな声をした知らない人から国際電話がかかってきました。', 'Saya mendapat telepon internasional dari seseorang yang tidak saya kenal dengan suara yang merdu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6685_gelombang_pasang, 'インターネットで調べたら潮の満ち引きの時刻が分かるんじゃない？', 'Tidak bisakah kita mengetahui kapan air pasang naik dengan melihat secara online?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6686_gelombang_pasang, '彼らは、富裕層に反対する社会的風潮を生み出した。', 'Mereka menimbulkan kecenderungan sosial yang menentang orang kaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6687_air_pasang, '一番釣りに適しているのは満潮時でしょうか？', 'Apakah air pasang adalah waktu terbaik untuk memancing?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6688_gelombang_pasang, '荒い潮流に逆らってボートを漕ぐのは簡単ではないが、コテージに戻るにはそれしか方法がない。', 'Tidak mudah untuk mendayung melawan arus yang deras, namun itulah satu-satunya cara bagi kami untuk kembali ke pondok kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6689_segera, 'すごく可愛いテディーベアを見つけたので、即買いしちゃいました。', 'Saya menemukan boneka beruang yang super lucu dan segera membelinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6690_improvisasi, 'みんなは彼が即興で作った詩をすごいねと褒めたが、口先だけなのは見え見えでした。', 'Semua orang mengatakan kepadanya bahwa puisi dadakan itu bagus, tapi jelas itu hanya basa-basi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6691_segera, '即座の結果は期待しないでください。', 'Mohon jangan mengharapkan hasil yang instan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6692_kematian_instan, '彼は潮津波に乗ってサーフィンをしようとしたが、残念ながら即死した。', 'Ia mencoba menaiki tidal bore dan berselancar di dalamnya, namun sayang ia tewas seketika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6693_hari_yang_sama, 'この回転肉焼き器は、注文日の即日に発送致します。', 'Kami mengirimkan rotisserie ini pada hari yang sama saat Anda memesan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6694_efek_langsung, '即効で目の疲れを取る方法をお教えしましょう。', 'Saya akan menunjukkan cara menghilangkan ketegangan mata secara instan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6695_pagar, '少女は心に垣をめぐらせていた。', 'Gadis itu membangun tembok di sekeliling hatinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6695_pagar, '野生動物に畑を荒らされないように垣を造る必要があった。', 'Hal ini diperlukan untuk membangun pagar untuk mencegah binatang liar merusak ladang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6695_pagar, '城の周りに石や木で強固な垣が築かれた。', 'Pagar batu dan kayu yang kuat dibangun di sekeliling kastil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6696_pagar, '男は垣根の上にそっと義手を置きました。', 'Pria itu meletakkan tangan palsunya dengan lembut di pagar tanaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6697_dinding_batu, '彼は義足を付けていたので、石垣を乗り越えられませんでした。', 'Dia tidak bisa memanjat tembok batu karena dia memiliki kaki palsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6698_otoritas, '権威を失ったのにまだ過去の栄光にしがみついていて、全く往生際が悪いったらありゃしないよ。', 'Dia sangat gigih karena dia masih berpegang teguh pada kejayaannya yang memudar meskipun dia kehilangan otoritasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6699_untuk_bertindak_besar, 'ケンイチは会社のトップのような顔をして威張ってる。', 'Kenichi bertindak seperti orang terkemuka di perusahaan dan dia sangat arogan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6700_barang_pitcher, '野球のシーズンが到来する春に近づくにつれて、あの投手の球威は益々増しています。', 'Saat kita semakin dekat dengan musim semi dan datangnya musim bisbol, perlengkapan pelempar itu semakin kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6701_harga_diri, '王の言葉には威厳があった。', 'Perkataan raja mempunyai otoritas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6701_harga_diri, '彼はそれを威厳をもって言いました。', 'Dia mengatakan itu dengan bermartabat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6701_harga_diri, '校長は威厳をもって卒業生に語りかけた。', 'Kepala sekolah berbicara kepada para lulusan dengan bermartabat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6701_harga_diri, '夜明け前の静かな山には、言葉を失うほどの威厳がある。', 'Pegunungan yang tenang sebelum fajar memiliki keagungan yang begitu agung hingga membuat Anda tak bisa berkata-kata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6701_harga_diri, '祖父の遺影からは、今でも威厳が感じられる。', 'Bahkan sekarang, potret kakek saya tetap memberikan kesan bermartabat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6702_segel, '自分が六歳の子どもだってことは分かってたけど、父さんが勝手に封を開けて友達からの手紙を読んだことにはすごく腹が立ったわ。', 'Aku tahu aku hanyalah seorang anak berusia 6 tahun, tapi aku menjadi sangat marah ketika ayahku membuka amplop dan membaca surat dari temanku tanpa bertanya terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6703_membuka_segel, '開封前の商品であればいつでも返品可って書いてあるけど、開封後に中身が壊れてたり、その商品が好きじゃなかった場合はどうなんだろう。', 'Dikatakan saya dapat mengembalikan produk yang belum dibuka kapan saja, tetapi bagaimana jika saya membukanya dan barang di dalamnya rusak atau saya tidak menyukainya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6704_surat_tersegel, '契約書にサインをして封筒に入れてありますが、まだその封書を郵送していません。', 'Saya menandatangani kontrak dan memasukkannya ke dalam amplop, tetapi saya belum mengirimkan surat tersegelnya kepada mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6705_feodalisme, '今日は歴史の授業で封建主義について学びました。', 'Hari ini kita belajar tentang feodalisme di kelas sejarah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6706_amplop, '金はきっちり人数分に山分けして、お前の取り分はその封筒に入れておいたぜ。', 'Kami membagi uangnya dan memasukkan bagian Anda ke dalam amplop.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6707_pipa, '使い終わったら、体温計を筒の中に戻しておいてね。', 'Bisakah Anda memasukkan kembali termometer ke dalam tabungnya setelah Anda selesai menggunakannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6710_penghiburan, '保険会社から受け取る慰謝料は、税務署に申告する必要がありますか。', 'Apakah saya harus melaporkan uang hiburan yang saya terima dari perusahaan asuransi ke kantor pendapatan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6711_untuk_menghibur, '落ち込んでいると、いつもうちのワン子が慰めてくれます。', 'Anjing kami menghibur kami setiap kali kami mengalami depresi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6712_membayar_panggilan_simpati, '私達は毎週日曜日、セラピー犬たちと一緒に老人ホームを慰問します。', 'Kami mengunjungi panti jompo dengan anjing terapi setiap hari Minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6713_penghiburan, 'うちの会社では、毎年強制参加の慰安旅行があります。', 'Perusahaan kami mengadakan perjalanan rekreasi wajib setiap tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6714_ramah, 'その弁護士さんとはもう何十年も懇意にしていましてね。', 'Saya sudah dekat dengan pengacara itu selama beberapa dekade.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6715_obrolan_ramah, '来る10月22日に、マンションの住人の皆様との懇話会を予定しております。', 'Kami mengadakan pertemuan persahabatan untuk penghuni apartemen pada tanggal 22 Oktober.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6716_persahabatan, '飲み放題のパーティーを通じてチームメイトとの懇親を深めました。', 'Melalui pesta minuman sepuasnya, saya membangun persahabatan dengan rekan tim saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6716_persahabatan, 'この会場で大学の教授や生徒たちの懇親会が行われる予定です。', 'Akan ada pertemuan ramah untuk dosen dan mahasiswa di tempat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6716_persahabatan, 'このパーティは一緒に食事やゲームをすることで、懇親を図るのが目的です。', 'Tujuan dari pesta ini adalah untuk lebih mengenal satu sama lain dengan makan dan bermain game bersama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6717_pembicaraan_informal, '先週、市長は色々な職業の人々との懇談を行いました。', 'Pekan lalu, Walikota melakukan pembicaraan informal dengan orang-orang dari berbagai profesi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6717_pembicaraan_informal, 'この授業の後、懇談会があります。', 'Setelah kelas ini, akan ada pertemuan orang tua-guru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6717_pembicaraan_informal, '家のポストに「こども達の未来を考える懇談会」のチラシが入っていた。', 'Ada brosur "pertemuan meja bundar untuk memikirkan masa depan anak-anak kita" di kotak surat saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6718_untuk_belajar_berdasarkan_pengalaman, '彼女に三度も振られてるっていうのに、お前まだ懲りてないのか。', 'Anda sudah ditolak olehnya tiga kali dan Anda masih belum belajar, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6719_disiplin, '違反者には懲罰が与えられる。', 'Pelanggar akan menerima hukuman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6720_gesekan, '摩擦によって静電気が生じるんですか？', 'Apakah gesekan menyebabkan listrik statis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6722_gulat_sumo, '今夜ビールを飲みながら相撲を見るってのはどうだい？', 'Apakah Anda ingin minum bir dan menonton gulat sumo malam ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6723_serentak, '生徒達は一斉に温度計に目をやりました。', 'Siswa melihat termometer secara bersamaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6724_lezat, 'めっちゃ旨いお好み焼きの店見つけたから、今度一緒に行かへん？', 'Saya menemukan restoran okonomiyaki yang sangat enak, mau ikut dengan saya lain kali?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6725_inti, '先生には、家庭の方針として、主人と私は子どもにそうした漫画は読ませたくないと思っているという旨を伝えました。', 'Saya menjelaskan inti kebijakan keluarga kami kepada guru dan bagaimana saya dan suami tidak ingin membiarkan anak kami membaca komik semacam itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6726_poin_utama, '授業前にその本の要旨を理解しておくと、プラスになると思うよ。', 'Saya pikir akan menjadi nilai tambah untuk memahami dasar-dasar buku ini sebelum pelajaran dimulai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6727_inti_sebuah_argumen, '彼の話の論旨があまりに不明瞭だったので、苛々しました。', 'Saya menjadi frustasi karena inti ceritanya sangat tidak jelas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6728_lembut, 'このイスはクッションが柔らかい。', 'Bantalan kursi ini empuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6728_lembut, '日差しが柔らかくて気持ちいい。', 'Sinar matahari lembut dan menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6728_lembut, '彼の柔らかい歌声に、思わず彼女の表情が柔らかくなった。', 'Mendengar suara nyanyiannya yang lembut, tanpa disadari ekspresinya melembut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6729_judo, 'もし柔道が何かを知らないって言うなら、ここに超簡単な入門書があるよ。', 'Jika Anda belum mengetahui apa itu Judo, berikut adalah buku dengan pengenalan singkat tentangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6730_lembut, 'あそこで柔和な笑みを浮かべている理髪師は、実はこの辺りのポン引き男どもの親分なんだ。', 'Tukang cukur yang tampak lembut di sana sebenarnya adalah bos germo di daerah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6732_untuk_tenggelam, '船はゆっくりと海に沈んでいった。', 'Kapal itu perlahan tenggelam ke laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6732_untuk_tenggelam, '夕日が沈むと、街に明かりがともった。', 'Saat matahari terbenam, lampu di kota menyala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6732_untuk_tenggelam, 'なんだか沈んだ顔をしているけど、何を思い詰めてるの？', 'Anda terlihat sedikit tertekan. Apa yang ada di pikiranmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6732_untuk_tenggelam, 'カフェラテの泡が沈んでいくのを見て、人生みたいだなと思った。', 'Melihat busa yang meresap ke dalam latte-ku, aku berpikir, "Seperti itulah hidup ini."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6733_stagnasi, '景気の沈滞により、たくさんの労働者が首を切られました。', 'Banyak buruh yang di-PHK karena stagnasi bisnis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6735_sawah_berawa, '沼田を裸足で歩いたことはありますか。', 'Pernahkah Anda berjalan tanpa alas kaki melewati sawah berawa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6738_rawa, 'この黄色い花を咲かせる植物は、沼沢地に生息します。', 'Tanaman berbunga kuning ini hidup di rawa-rawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6739_perdamaian, 'あの忌まわしい家族が未来永劫安泰でいられるなんて、誰が信じたいと思う？', 'Siapa yang mau percaya bahwa keluarga yang mengerikan akan mendapatkan kedamaian abadi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6740_untuk_menghancurkan, '奴らはメディアで情報操作を行って、日本を滅ぼそうとしているんだ。', 'Mereka mencoba menghancurkan Jepang dengan memanipulasi informasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6741_kejatuhan, 'もしその超巨大火山が噴火をすれば、我々は滅亡を免れないだろう。', 'Jika gunung berapi super itu meletus, kita tidak akan bisa lepas dari kehancuran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6742_pemusnahan, '私達はみんな、飲酒運転撲滅運動をサポートしています。', 'Kita semua mendukung pemberantasan mengemudi dalam keadaan mabuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6743_kepunahan, '全ての種の鯨が絶滅の危機に瀕している訳ではない。', 'Tidak semua spesies paus terancam punah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6744_pengrusakan, 'その都市は原爆により壊滅しました。', 'Kota ini dimusnahkan oleh bom atom.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6745_kekecewaan, '彼氏が道端で立ちションしてるのを見ちゃってさ。もう、完璧に幻滅した。', 'Saya melihat pacar saya kencing di jalan dan saya benar-benar kecewa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6746_makanan, '風邪を引いたら、大豆だとか林檎だとか、滋養のある物を食べなさい。', 'Saat Anda masuk angin, makanlah makanan bergizi seperti kacang kedelai atau apel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6747_tanur_tinggi, '今朝の朝刊で、その鉄鋼会社は世界一大きな高炉の建設を計画していると読んだよ。', 'Saya membaca di surat kabar pagi ini bahwa perusahaan baja berencana membangun tanur sembur terbesar di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6748_perapian, 'うちの子がおしっこ漏らしをしちゃって、ズボンを洗ったから、今それを暖炉の前で乾かしているのよ。', 'Anak saya kencing di celana dan saya mencucinya, jadi sekarang celana itu digantung di depan perapian untuk dijemur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6749_inti_reaktor_nuklir, 'どうして奴らは原子炉の炉心が溶解してしまったことを隠そうとしたんだ？', 'Mengapa mereka berusaha menyembunyikan bahwa inti reaktor nuklir telah meleleh?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6750_reaktor_atom, '原子炉の建設について、政府に忠告をした人もいました。', 'Beberapa orang memperingatkan pemerintah agar tidak membangun reaktor nuklir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6751_koto, '今けちって安い琴を買っても、どうせ後から質のいい方が欲しくなるんだから。', 'Kalau sekarang kamu pelit dan membeli koto yang murah, kamu mungkin akan menginginkan yang lebih baik di kemudian hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6943_pertanyaan, 'あなたのブログのURLをお伺いしてもよろしいですか？', 'Bolehkah saya menanyakan tentang URL blog Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6944_untuk_berkelompok, '空港に到着するとファンが群がっていて、驚きましたよ。', 'Kami terkejut karena para penggemar telah berkumpul untuk menunggu kami ketika kami tiba di bandara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6945_untuk_pergi_ke_bawah, 'モグラが土の下に潜って行くところを見ました。', 'Saya melihat seekor tahi lalat bersembunyi di bawah tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6945_untuk_pergi_ke_bawah, '水の中にどのぐらいの間潜っていられますか。', 'Berapa lama Anda bisa bertahan di bawah air?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6945_untuk_pergi_ke_bawah, 'うちの犬は、フラフープをジャンプして潜る技を身につけました。', 'Anjing saya mempelajari trik melompati hula hoop.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7424_kristal_cair, '俺の投げたライターがテレビに当たって、液晶画面にヒビが入りました。', 'Pemantik api yang saya lemparkan mengenai TV dan layar LCD retak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7425_kristal, 'この水晶は大中小の三つの大きさがあります。', 'Kristal ini hadir dalam tiga ukuran; kecil, sedang, dan besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7836_atap, 'ここには多くのラーメン屋台が軒を連ねています。', 'Ada banyak gerobak ramen yang berjajar di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8691_kompensasi, '慰謝料をよこせと脅されています。', 'Mereka mengancam kami untuk mengirimkan kompensasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8732_embun, '葉っぱの上に乗っている露を集めているんだ。', 'Saya sedang mengumpulkan embun yang ada di dedaunan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8811_jimat, 'どうしてここに御札をはっているんですか？', 'Mengapa Anda menaruh jimat itu di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8811_jimat, 'これは、地元の神社でもらった御札です。', 'Ini adalah jimat yang saya dapatkan dari kuil di kampung halaman saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8811_jimat, '英語圏の国にも、御札ってあるんですか？', 'Apakah ada juga jimat di negara-negara berbahasa Inggris?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8877_tuduhan_palsu, '僕がおならしたって？そんなの濡れ衣だよ。', 'Maksudmu aku kentut? Itu tuduhan yang tidak berdasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8877_tuduhan_palsu, 'コウイチに濡れ衣を被せられた。', 'Koichi menuduhku melakukan sesuatu yang menjadi tanggung jawabnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8877_tuduhan_palsu, '濡れ衣だったと信じてくれたのは、飼い犬だけだった。', 'Satu-satunya yang percaya bahwa itu adalah tuduhan palsu adalah anjingku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8903_sangat, 'ベトナムのコーヒー、凄く甘くて驚きました。', 'Kopi Vietnam sangat manis. Saya terkejut!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8903_sangat, '今日は、先生の気分が凄く悪くなったため授業が中止になった。', 'Kondisi kesehatan guru hari ini sangat buruk, sehingga kelas dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8903_sangat, 'この長靴が凄く欲しいんだけど、Amazon Prime Nowでオーダーする価値あるかな？', 'Aku sangat menginginkan sepatu bot hujan ini. Apakah menurut Anda memesannya dari Amazon Prime Now sepadan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8942_untuk_digoreng, '唐揚げ揚がったよ！', 'Ayam goreng (karaage) sudah digoreng!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8942_untuk_digoreng, '天ぷらが揚がるまで静かに待っていた。', 'Kami menunggu dengan tenang sampai tempuranya digoreng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8942_untuk_digoreng, '旗が揚がったら出発だ。', 'Kami akan berangkat setelah bendera dikibarkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9477_untuk_menarik, '赤いドレスが強く目を惹いた。', 'Gaun merah itu benar-benar menarik perhatianku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9477_untuk_menarik, 'この本、パッと目を惹く表紙につられて買ってしまったんです。', 'Saya akhirnya membeli buku ini karena sampulnya yang menarik membuat saya tertarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9477_untuk_menarik, '興味を惹くポストが多かったので、フォローしました。', 'Banyak postingan Anda yang menarik minat saya, jadi saya mengikuti Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9477_untuk_menarik, '騙されないで！この手の相談って、異性の気を惹くテクニックの一つだよ。', 'Jangan tertipu! Semua hal "meminta nasihat" ini hanyalah teknik lain untuk menarik lawan jenis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9492_untuk_tertarik, 'なぜか彼に惹かれてしまった。', 'Aku mendapati diriku tertarik padanya karena suatu alasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9492_untuk_tertarik, '彼女の優しい性格に惹かれたんです。', 'Saya tertarik pada kepribadiannya yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9492_untuk_tertarik, 'お店の雰囲気に惹かれて、フラリと立ち寄ったんです。', 'Saya tertarik dengan suasana tempat itu dan mampir begitu saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9492_untuk_tertarik, 'この製品は、シンプルなデザインに惹かれて購入しました。', 'Saya membeli produk ini karena saya tertarik dengan desainnya yang sederhana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9492_untuk_tertarik, '最初は彼女の外見、特に笑顔に惹かれたんですが、一緒に過ごすうちに、その自然体なところにどんどん心を奪われていきました。', 'Pada awalnya, saya tertarik dengan penampilannya – terutama senyumnya – tetapi saat kami menghabiskan waktu bersama, saya menjadi terpikat oleh betapa natural dan tulusnya dia.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1838_langka, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1838_langka, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1838_langka, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1839_membelah, id FROM items WHERE type = 'radical' AND (slug = '132' OR id = '132') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1839_membelah, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1839_membelah, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1840_menyerang, r_389_imperial);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1840_menyerang, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1841_upeti, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1841_upeti, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1842_pesona, id FROM items WHERE type = 'radical' AND (slug = '124' OR id = '124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1842_pesona, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1842_pesona, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1843_jarak, id FROM items WHERE type = 'radical' AND (slug = '95' OR id = '95') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1843_jarak, id FROM items WHERE type = 'radical' AND (slug = '314' OR id = '314') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1844_daftar, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1844_daftar, r_388_membajak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1844_daftar, id FROM items WHERE type = 'radical' AND (slug = '256' OR id = '256') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1845_membuka, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1845_membuka, id FROM items WHERE type = 'radical' AND (slug = '95' OR id = '95') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1845_membuka, id FROM items WHERE type = 'radical' AND (slug = '180' OR id = '180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1846_padang_rumput, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1846_padang_rumput, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1847_pencetakan, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1847_pencetakan, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1847_pencetakan, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1848_terang, id FROM items WHERE type = 'radical' AND (slug = '8822' OR id = '8822') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1848_terang, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1849_gelombang_pasang, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1849_gelombang_pasang, id FROM items WHERE type = 'radical' AND (slug = '8793' OR id = '8793') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1849_gelombang_pasang, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1850_instan, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1850_instan, id FROM items WHERE type = 'radical' AND (slug = '145' OR id = '145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1851_pagar, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1851_pagar, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1851_pagar, id FROM items WHERE type = 'radical' AND (slug = '293' OR id = '293') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1852_harga_diri, id FROM items WHERE type = 'radical' AND (slug = '9389' OR id = '9389') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1852_harga_diri, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1853_segel, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1853_segel, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1854_silinder, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1854_silinder, id FROM items WHERE type = 'radical' AND (slug = '341' OR id = '341') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1856_penghiburan, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1856_penghiburan, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1856_penghiburan, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1856_penghiburan, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1857_sopan, r_412_luak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1857_sopan, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1857_sopan, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1858_menghukum, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1858_menghukum, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1858_menghukum, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1858_menghukum, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1858_menghukum, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1859_dongkol, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1859_dongkol, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1859_dongkol, id FROM items WHERE type = 'radical' AND (slug = '41' OR id = '41') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1860_menggosok, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1860_menggosok, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1860_menggosok, id FROM items WHERE type = 'radical' AND (slug = '8825' OR id = '8825') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1861_tamparan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1861_tamparan, id FROM items WHERE type = 'radical' AND (slug = '390' OR id = '390') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1862_serentak, id FROM items WHERE type = 'radical' AND (slug = '277' OR id = '277') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1863_titik, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1863_titik, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1864_lembut, id FROM items WHERE type = 'radical' AND (slug = '148' OR id = '148') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1864_lembut, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1865_tenggelam, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1865_tenggelam, id FROM items WHERE type = 'radical' AND (slug = '391' OR id = '391') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1867_perdamaian, id FROM items WHERE type = 'radical' AND (slug = '8779' OR id = '8779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1867_perdamaian, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1868_menghancurkan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1868_menghancurkan, id FROM items WHERE type = 'radical' AND (slug = '9389' OR id = '9389') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1868_menghancurkan, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1869_bergizi, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1869_bergizi, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1869_bergizi, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1869_bergizi, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1870_perapian, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1870_perapian, id FROM items WHERE type = 'radical' AND (slug = '73' OR id = '73') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1871_harpa, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1871_harpa, id FROM items WHERE type = 'radical' AND (slug = '238' OR id = '238') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2115_kristal, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9470_menarik, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9470_menarik, id FROM items WHERE type = 'radical' AND (slug = '362' OR id = '362') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9470_menarik, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6631_yokozuna, id FROM items WHERE type = 'kanji' AND (slug = '768' OR id = '768') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6631_yokozuna, id FROM items WHERE type = 'kanji' AND (slug = '1831' OR id = '1831') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6648_pulau_kapal_perang, id FROM items WHERE type = 'kanji' AND (slug = '954' OR id = '954') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6648_pulau_kapal_perang, id FROM items WHERE type = 'kanji' AND (slug = '1790' OR id = '1790') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6648_pulau_kapal_perang, id FROM items WHERE type = 'kanji' AND (slug = '822' OR id = '822') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6649_palsu, id FROM items WHERE type = 'kanji' AND (slug = '1803' OR id = '1803') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6649_palsu, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6650_bundel, id FROM items WHERE type = 'kanji' AND (slug = '1795' OR id = '1795') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6652_memang, id FROM items WHERE type = 'kanji' AND (slug = '1800' OR id = '1800') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6655_tidak_biasa, k_1838_langka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6656_kelezatan, k_1838_langka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6656_kelezatan, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6657_langka, k_1838_langka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6658_merobek, k_1839_membelah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6659_perincian, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6659_perincian, k_1839_membelah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6660_membelah, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6660_membelah, k_1839_membelah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6661_untuk_menyerang, k_1840_menyerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6662_menyerang, k_1840_menyerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6662_menyerang, id FROM items WHERE type = 'kanji' AND (slug = '1377' OR id = '1377') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6663_serangan_kejutan, id FROM items WHERE type = 'kanji' AND (slug = '1363' OR id = '1363') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6663_serangan_kejutan, k_1840_menyerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6664_serangan_udara, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6664_serangan_udara, k_1840_menyerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6665_serangan_balasan, id FROM items WHERE type = 'kanji' AND (slug = '1346' OR id = '1346') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6665_serangan_balasan, k_1840_menyerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6666_kontribusi, k_1841_upeti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6666_kontribusi, id FROM items WHERE type = 'kanji' AND (slug = '1630' OR id = '1630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6667_pesona, k_1842_pesona);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6668_hobi, k_1842_pesona);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6668_hobi, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6669_jarak, k_1843_jarak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6669_jarak, id FROM items WHERE type = 'kanji' AND (slug = '1443' OR id = '1443') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6670_daftar_keluarga, id FROM items WHERE type = 'kanji' AND (slug = '509' OR id = '509') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6670_daftar_keluarga, k_1844_daftar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6671_kebangsaan, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6671_kebangsaan, k_1844_daftar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6672_penyingkapan, id FROM items WHERE type = 'kanji' AND (slug = '1077' OR id = '1077') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6672_penyingkapan, k_1845_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6673_jujur, k_1845_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6673_jujur, id FROM items WHERE type = 'kanji' AND (slug = '924' OR id = '924') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6674_kios_jalanan, k_1845_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6674_kios_jalanan, id FROM items WHERE type = 'kanji' AND (slug = '625' OR id = '625') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6675_paparan, k_1845_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6675_paparan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6676_pendeta, k_1846_padang_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6676_pendeta, id FROM items WHERE type = 'kanji' AND (slug = '1198' OR id = '1198') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6677_tanah_padang_rumput, k_1846_padang_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6677_tanah_padang_rumput, id FROM items WHERE type = 'kanji' AND (slug = '848' OR id = '848') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6678_padang_rumput, k_1846_padang_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6678_padang_rumput, id FROM items WHERE type = 'kanji' AND (slug = '605' OR id = '605') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6679_peternakan, k_1846_padang_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6679_peternakan, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6680_pencetakan, id FROM items WHERE type = 'kanji' AND (slug = '1283' OR id = '1283') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6680_pencetakan, k_1847_pencetakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6681_untuk_mencetak, k_1847_pencetakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6682_terang, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6682_terang, k_1848_terang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6683_kabar_baik, k_1848_terang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6683_kabar_baik, id FROM items WHERE type = 'kanji' AND (slug = '1035' OR id = '1035') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6684_terang, k_1848_terang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6685_gelombang_pasang, k_1849_gelombang_pasang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6686_gelombang_pasang, id FROM items WHERE type = 'kanji' AND (slug = '853' OR id = '853') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6686_gelombang_pasang, k_1849_gelombang_pasang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6687_air_pasang, id FROM items WHERE type = 'kanji' AND (slug = '1271' OR id = '1271') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6687_air_pasang, k_1849_gelombang_pasang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6688_gelombang_pasang, k_1849_gelombang_pasang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6688_gelombang_pasang, id FROM items WHERE type = 'kanji' AND (slug = '818' OR id = '818') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6689_segera, k_1850_instan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6690_improvisasi, k_1850_instan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6690_improvisasi, id FROM items WHERE type = 'kanji' AND (slug = '1491' OR id = '1491') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6691_segera, k_1850_instan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6691_segera, id FROM items WHERE type = 'kanji' AND (slug = '1041' OR id = '1041') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6692_kematian_instan, k_1850_instan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6692_kematian_instan, id FROM items WHERE type = 'kanji' AND (slug = '617' OR id = '617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6693_hari_yang_sama, k_1850_instan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6693_hari_yang_sama, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6694_efek_langsung, k_1850_instan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6694_efek_langsung, id FROM items WHERE type = 'kanji' AND (slug = '1267' OR id = '1267') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6695_pagar, k_1851_pagar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6696_pagar, k_1851_pagar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6696_pagar, id FROM items WHERE type = 'kanji' AND (slug = '817' OR id = '817') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6697_dinding_batu, id FROM items WHERE type = 'kanji' AND (slug = '493' OR id = '493') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6697_dinding_batu, k_1851_pagar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6698_otoritas, id FROM items WHERE type = 'kanji' AND (slug = '1134' OR id = '1134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6698_otoritas, k_1852_harga_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6699_untuk_bertindak_besar, k_1852_harga_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6699_untuk_bertindak_besar, id FROM items WHERE type = 'kanji' AND (slug = '1205' OR id = '1205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6700_barang_pitcher, id FROM items WHERE type = 'kanji' AND (slug = '832' OR id = '832') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6700_barang_pitcher, k_1852_harga_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6701_harga_diri, k_1852_harga_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6701_harga_diri, id FROM items WHERE type = 'kanji' AND (slug = '1502' OR id = '1502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6702_segel, k_1853_segel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6703_membuka_segel, id FROM items WHERE type = 'kanji' AND (slug = '753' OR id = '753') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6703_membuka_segel, k_1853_segel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6704_surat_tersegel, k_1853_segel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6704_surat_tersegel, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6705_feodalisme, k_1853_segel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6705_feodalisme, id FROM items WHERE type = 'kanji' AND (slug = '946' OR id = '946') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6705_feodalisme, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6705_feodalisme, id FROM items WHERE type = 'kanji' AND (slug = '1154' OR id = '1154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6706_amplop, k_1853_segel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6706_amplop, k_1854_silinder);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6707_pipa, k_1854_silinder);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6710_penghiburan, k_1856_penghiburan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6710_penghiburan, id FROM items WHERE type = 'kanji' AND (slug = '892' OR id = '892') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6711_untuk_menghibur, k_1856_penghiburan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6712_membayar_panggilan_simpati, k_1856_penghiburan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6712_membayar_panggilan_simpati, id FROM items WHERE type = 'kanji' AND (slug = '859' OR id = '859') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6713_penghiburan, k_1856_penghiburan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6713_penghiburan, id FROM items WHERE type = 'kanji' AND (slug = '612' OR id = '612') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6714_ramah, k_1857_sopan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6714_ramah, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6715_obrolan_ramah, k_1857_sopan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6715_obrolan_ramah, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6716_persahabatan, k_1857_sopan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6716_persahabatan, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6717_pembicaraan_informal, k_1857_sopan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6717_pembicaraan_informal, id FROM items WHERE type = 'kanji' AND (slug = '736' OR id = '736') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6718_untuk_belajar_berdasarkan_pengalaman, k_1858_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6719_disiplin, k_1858_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6719_disiplin, id FROM items WHERE type = 'kanji' AND (slug = '1155' OR id = '1155') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6720_gesekan, k_1859_dongkol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6720_gesekan, k_1860_menggosok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6722_gulat_sumo, id FROM items WHERE type = 'kanji' AND (slug = '730' OR id = '730') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6722_gulat_sumo, k_1861_tamparan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6723_serentak, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6723_serentak, k_1862_serentak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6724_lezat, k_1863_titik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6725_inti, k_1863_titik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6726_poin_utama, id FROM items WHERE type = 'kanji' AND (slug = '737' OR id = '737') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6726_poin_utama, k_1863_titik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6727_inti_sebuah_argumen, id FROM items WHERE type = 'kanji' AND (slug = '1119' OR id = '1119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6727_inti_sebuah_argumen, k_1863_titik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6728_lembut, k_1864_lembut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6729_judo, k_1864_lembut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6729_judo, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6730_lembut, k_1864_lembut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6730_lembut, id FROM items WHERE type = 'kanji' AND (slug = '712' OR id = '712') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6732_untuk_tenggelam, k_1865_tenggelam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6733_stagnasi, k_1865_tenggelam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6733_stagnasi, id FROM items WHERE type = 'kanji' AND (slug = '1585' OR id = '1585') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6735_sawah_berawa, id FROM items WHERE type = 'kanji' AND (slug = '1866' OR id = '1866') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6735_sawah_berawa, id FROM items WHERE type = 'kanji' AND (slug = '490' OR id = '490') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6738_rawa, id FROM items WHERE type = 'kanji' AND (slug = '1866' OR id = '1866') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6738_rawa, id FROM items WHERE type = 'kanji' AND (slug = '1208' OR id = '1208') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6739_perdamaian, id FROM items WHERE type = 'kanji' AND (slug = '612' OR id = '612') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6739_perdamaian, k_1867_perdamaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6740_untuk_menghancurkan, k_1868_menghancurkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6741_kejatuhan, k_1868_menghancurkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6741_kejatuhan, id FROM items WHERE type = 'kanji' AND (slug = '851' OR id = '851') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6742_pemusnahan, k_1861_tamparan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6742_pemusnahan, k_1868_menghancurkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6743_kepunahan, id FROM items WHERE type = 'kanji' AND (slug = '1371' OR id = '1371') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6743_kepunahan, k_1868_menghancurkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6744_pengrusakan, id FROM items WHERE type = 'kanji' AND (slug = '1389' OR id = '1389') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6744_pengrusakan, k_1868_menghancurkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6745_kekecewaan, id FROM items WHERE type = 'kanji' AND (slug = '1027' OR id = '1027') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6745_kekecewaan, k_1868_menghancurkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6746_makanan, k_1869_bergizi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6746_makanan, id FROM items WHERE type = 'kanji' AND (slug = '889' OR id = '889') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6747_tanur_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6747_tanur_tinggi, k_1870_perapian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6748_perapian, id FROM items WHERE type = 'kanji' AND (slug = '1508' OR id = '1508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6748_perapian, k_1870_perapian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6749_inti_reaktor_nuklir, k_1870_perapian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6749_inti_reaktor_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6750_reaktor_atom, id FROM items WHERE type = 'kanji' AND (slug = '995' OR id = '995') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6750_reaktor_atom, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6750_reaktor_atom, k_1870_perapian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6751_koto, k_1871_harpa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6943_pertanyaan, id FROM items WHERE type = 'kanji' AND (slug = '1775' OR id = '1775') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6944_untuk_berkelompok, id FROM items WHERE type = 'kanji' AND (slug = '1719' OR id = '1719') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6945_untuk_pergi_ke_bawah, id FROM items WHERE type = 'kanji' AND (slug = '1791' OR id = '1791') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7424_kristal_cair, id FROM items WHERE type = 'kanji' AND (slug = '1487' OR id = '1487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7424_kristal_cair, k_2115_kristal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7425_kristal, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7425_kristal, k_2115_kristal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7836_atap, id FROM items WHERE type = 'kanji' AND (slug = '2133' OR id = '2133') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8691_kompensasi, k_1856_penghiburan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8691_kompensasi, id FROM items WHERE type = 'kanji' AND (slug = '892' OR id = '892') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8691_kompensasi, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8732_embun, k_1845_membuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8811_jimat, id FROM items WHERE type = 'kanji' AND (slug = '1728' OR id = '1728') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8811_jimat, id FROM items WHERE type = 'kanji' AND (slug = '649' OR id = '649') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8877_tuduhan_palsu, id FROM items WHERE type = 'kanji' AND (slug = '8863' OR id = '8863') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8877_tuduhan_palsu, id FROM items WHERE type = 'kanji' AND (slug = '1796' OR id = '1796') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8903_sangat, id FROM items WHERE type = 'kanji' AND (slug = '8886' OR id = '8886') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8942_untuk_digoreng, id FROM items WHERE type = 'kanji' AND (slug = '1815' OR id = '1815') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9477_untuk_menarik, k_9470_menarik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9492_untuk_tertarik, k_9470_menarik);

END $$;
