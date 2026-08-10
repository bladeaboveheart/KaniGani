-- ====================================================
-- KaniGani — Seed Data Level 39 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 39) ============
  r_370_langit UUID; r_373_sobat UUID; r_374_mantan UUID; r_375_enam UUID; r_376_bukit UUID; r_377_tiga UUID; r_413_realitas UUID; r_414_menggulir UUID; r_430_perawat UUID;

  -- ============ KANJI IDs (Level 39) ============
  k_1017_ruang_kosong UUID; k_1708_negara_asal UUID; k_1709_bel UUID; k_1710_gundukan UUID; k_1711_bercabang UUID; k_1712_kemakmuran UUID; k_1713_mempekerjakan UUID; k_1714_menjauhkan_diri UUID; k_1715_dinding UUID; k_1716_catur_jepang UUID; k_1717_pahit UUID; k_1718_satu_sisi UUID; k_1719_kawanan UUID; k_1720_pertapa UUID; k_1721_alokasikan UUID; k_1722_mengizinkan UUID; k_1724_jangkauan UUID; k_1726_tanjung UUID; k_1727_merampok UUID; k_1728_terhormat UUID; k_1729_kerendahhatian UUID; k_1730_menolak UUID; k_1731_bingkai UUID; k_1732_cangkang_penyu UUID; k_1733_bermotif UUID; k_1734_kesejahteraan UUID; k_1735_tanaman_padi UUID; k_1736_menunda UUID; k_1737_kesopanan UUID; k_1738_melompat UUID; k_1739_pistol UUID; k_1740_ayat UUID; k_1741_baja UUID; k_2459_pidana UUID; k_8912_alamat UUID; k_9447_pembengkakan UUID;

  -- ============ VOCABULARY IDs (Level 39) ============
  v_4033_kesombongan UUID; v_4123_doa UUID; v_5022_menjadi_rugi UUID; v_5780_merah_tua UUID; v_6114_parfum UUID; v_6180_putar_ganda UUID; v_6239_shogi UUID; v_6240_ahli_waris UUID; v_6241_untuk_melompat UUID; v_6242_lompat_tali UUID; v_6243_untuk_melamar UUID; v_6244_lari_rumah UUID; v_6245_untuk_runtuh UUID; v_6246_untuk_membayar UUID; v_6247_untuk_memainkan_alat_musik_petik UUID; v_6248_pilihan_kata UUID; v_6249_uang_saku UUID; v_6250_untuk_menghapus UUID; v_6251_papan_buletin UUID; v_6252_kemacetan_lalu_lintas UUID; v_6253_sekarang_mempekerjakan UUID; v_6254_jalan_kembali UUID; v_6255_untuk_mengambil_kembali UUID; v_6256_bom_atom UUID; v_6257_tapak UUID; v_6258_untuk_membidik UUID; v_6259_terjemahan_ke_bahasa_jepang UUID; v_6260_rekan_senegaranya UUID; v_6261_persemakmuran UUID; v_6262_bel_pintu UUID; v_6263_lonceng_kecil UUID; v_6264_gifu UUID; v_6265_kemakmuran UUID; v_6266_benjol UUID; v_6267_untuk_mempekerjakan UUID; v_6268_untuk_memecat_seseorang UUID; v_6269_pekerjaan UUID; v_6270_dinding UUID; v_6271_kertas_dinding UUID; v_6272_pemain_shogi UUID; v_6273_pergi_asosiasi UUID; v_6274_rasa_pahit UUID; v_6275_fragmen UUID; v_6276_satu_tangan UUID; v_6277_bahasa_rusak UUID; v_6278_katakana UUID; v_6279_satu_arah UUID; v_6280_kawanan UUID; v_6281_prefektur_gunma UUID; v_6282_kerumunan UUID; v_6283_pertapa UUID; v_6284_bakung UUID; v_6285_sendai UUID; v_6286_kesempurnaan UUID; v_6287_isi_ulang UUID; v_6288_pasokan_ulang UUID; v_6289_untuk_melarikan_diri_dari_sesuatu UUID; v_6290_sertifikat UUID; v_6291_lisensi UUID; v_6292_pembebasan_pajak UUID; v_6293_maaf UUID; v_6294_pembebasan UUID; v_6296_rekomendasi UUID; v_6298_di_luar_jangkauan UUID; v_6299_dunia_berbahasa_inggris UUID; v_6300_lingkaran_kutub_selatan UUID; v_6302_prefektur_saitama UUID; v_6303_untuk_merampok UUID; v_6304_nasi UUID; v_6305_untuk_melihat UUID; v_6306_bersikap_bijaksana UUID; v_6307_bijaksana UUID; v_6308_menolak UUID; v_6309_penolakan UUID; v_6310_bingkai UUID; v_6311_bingkai UUID; v_6312_cangkang_penyu UUID; v_6313_bernilai UUID; v_6314_kesejahteraan UUID; v_6315_tanaman_padi UUID; v_6316_sawah UUID; v_6317_budidaya_padi UUID; v_6318_untuk_mengakui UUID; v_6319_transfer UUID; v_6320_orang_jepang_yang_rendah_hati UUID; v_6321_kesopanan UUID; v_6322_untuk_melompat UUID; v_6324_partisipasi_aktif UUID; v_6327_melompat UUID; v_6328_pistol UUID; v_6329_kematian_karena_penembakan UUID; v_6330_peluru_senapan UUID; v_6331_pistol UUID; v_6332_barang UUID; v_6333_urusan UUID; v_6334_poin_penting UUID; v_6335_baja UUID; v_6336_bahan_baja UUID; v_6337_pembuatan_baja UUID; v_7511_untuk_menerbitkan UUID; v_8604_tawanan UUID; v_8605_dikutuk_kriminal UUID; v_8690_cadangan UUID; v_8727_tetap UUID; v_8874_alis UUID; v_8919_penerima UUID; v_9069_dari_silsilah_yang_terhormat UUID; v_9271_musim_hujan UUID; v_9455_membengkak UUID; v_9491_untuk_melihat_ke_dalam UUID;

BEGIN

  DELETE FROM items WHERE level = 39;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '空', 'langit', 39, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>langit</radikal>.')
    RETURNING id INTO r_370_langit;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '君', 'sobat', 39, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>sobat</radikal>.')
    RETURNING id INTO r_373_sobat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '旧', 'mantan', 39, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>mantan</radikal>.')
    RETURNING id INTO r_374_mantan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '六', 'enam', 39, 4, 'Ini sama dengan kanji <radical>Six</radical>.')
    RETURNING id INTO r_375_enam;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '岡', 'bukit', 39, 5, 'Radikal ini sama dengan kanji. Artinya <radikal>bukit</radikal>.')
    RETURNING id INTO r_376_bukit;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '三', 'tiga', 39, 6, 'Radikal ini sama dengan kanji. Artinya <radikal>tiga</radikal>.')
    RETURNING id INTO r_377_tiga;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '真', 'realitas', 39, 7, 'Radikal ini sama dengan kanji. Artinya <radikal>realitas</radikal>.')
    RETURNING id INTO r_413_realitas;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '巻', 'menggulir', 39, 8, 'Radikal ini sama dengan kanji. Artinya <radikal>gulir</radikal>.')
    RETURNING id INTO r_414_menggulir;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '㐮', 'perawat', 39, 9, 'Radikal ini terdiri dari blackjack dan pakaian dengan enam kanji di atasnya. Jika Anda melihat enam orang bermain blackjack dan mengenakan pakaian yang sama, Anda harus tahu bahwa mereka semua adalah <radikal>perawat</radikal>. Perawat bermain blackjack bersama untuk menenangkan diri di sela-sela shift dan mereka biasanya tidak punya waktu untuk mengganti seragam mereka. Itu sebabnya radikal ini adalah perawat.')
    RETURNING id INTO r_430_perawat;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_370_langit, 'Langit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_373_sobat, 'Sobat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_374_mantan, 'Mantan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_375_enam, 'Enam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_376_bukit, 'Bukit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_377_tiga, 'Tiga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_413_realitas, 'Realitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_414_menggulir, 'Menggulir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_430_perawat, 'Perawat', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '虚', 'ruang-kosong', 39, 10, 'Seekor <radikal>harimau</radikal>, yang dibalut <radikal>paku</radikal>, ada di <kanji>kekosongan</kanji>. Harimau ini berasal dari dimensi lain di mana harimau menguasai bumi, mengenakan baju besi berduri. Kekosongan telah memungkinkan harimau ini melintasi bidang dimensi.', '<kanji>void</kanji> yang disebutkan di atas telah terbuka di Little <reading>Kyo</reading>to (きょ). Harimau berduri memilih datang ke sini untuk menghadapi tim bisbol Hanshin Tigers dalam pertempuran. Ini akan menjadi pertandingan yang sengit di Little Kyoto. Karena ini berlangsung di Little Kyoto dan bukan di Jepang sendiri, Macan Hanshin tidak akan memiliki keunggulan sebagai tuan rumah. Siapa yang akan menang?')
    RETURNING id INTO k_1017_ruang_kosong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '邦', 'negara-asal', 39, 11, 'Ada <radical>tiga</radical> <radical>slide</radical> yang menonjol dari <radical>gedung</radical> ini yang mengarah ke <kanji>negara asal</kanji> Anda. Slide lainnya mengarah ke tempat lain, tetapi tiga adalah milik Anda.', '<kanji>negara asal</kanji> Anda adalah <reading>ho</reading>saya (ほう) Anda!')
    RETURNING id INTO k_1708_negara_asal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鈴', 'bel', 39, 12, 'Anda mengambil <radical>emas</radical> sebagai imbalan atas pelaksanaan <radical>perintah</radical> untuk membuat <kanji>buzzer</kanji>. Anda adalah pembuat <kanji>lonceng kecil</kanji> dan seseorang memerintahkan Anda untuk membuatnya menjadi bel dengan imbalan sejumlah emas. Inilah cara Anda mencari nafkah.', 'Akhirnya <kanji>buzzer</kanji> selesai. Anda telah mendapatkan emas Anda. Anda menguji belnya dan berbunyi <read>rin</reading>g (りん)! Cincin! Cincin! Cincin! Cincin cincin, cincin, cincin, cincin! Sobat, dering itu menjengkelkan tapi hei, itulah yang dilakukan para buzzer.')
    RETURNING id INTO k_1709_bel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '阜', 'gundukan', 39, 13, '<radical>setetes</radikal> hujan jatuh pada <radical>beruang</radikal> yang bersandar pada <radical>salib</radikal> yang tertancap di <kanji>gundukan</kanji>. Tetesan itu membangunkan beruang dan dia berguling turun dari gundukan tanah. Setelah beruang itu berdiri tegak, dia berasumsi bahwa salib itu mendorongnya keluar dari gundukan sehingga dia menyerang salib di atas gundukan itu dan menjatuhkannya.', 'Setelah beruang itu benar-benar bangun, dia menyadari bahwa dia baru saja terguling <kanji>gundukan</kanji> sendirian dan salib bukanlah penyebabnya. Betapa <read>foo</reading>l (ふ) beruang ini. Dia juga mengetahuinya. Beruang itu merasa sangat bodoh.')
    RETURNING id INTO k_1710_gundukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '岐', 'bercabang', 39, 14, '<radical>gunung</radical> <radical>cabang</radical> akan <kanji>bercabang</kanji> dari yang lain.', 'Jika Anda ingin <kanji>bercabang</kanji> dari grup pendakian Anda dan menjelajahi cabang gunung ini, Anda memerlukan <membaca>kunci</reading> (き) khusus. Hanya saja, jangan terjebak di sana atau Anda akan mendapatkan <reading>gui</reading>llotine (ぎ).')
    RETURNING id INTO k_1711_bercabang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隆', 'kemakmuran', 39, 15, 'Sebuah <radical>bangunan</radical> di <radical>musim dingin</radical> akan memungkinkan <radical>kehidupan</radical> memiliki <kanji>kemakmuran</kanji>. Sebelum kita mempunyai bangunan, mustahil kita bisa mendapatkan kemakmuran di musim dingin karena cuacanya dingin dan sebagian besar dari kita meninggal.', '<kanji>kemakmuran</kanji> ini tidak baik untuk semua orang. Anda melihat ke atas dan melihat <reading>Ryu</reading> (りゅう) dari Street Fighter duduk di sudut. Dia memiliki semua yang dia bisa minta. Dia memenangkan turnamen, dia punya uang, dia punya gedung besar yang bagus, tapi sekarang dia depresi.')
    RETURNING id INTO k_1712_kemakmuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雇', 'mempekerjakan', 39, 16, 'Seekor <radical>kalkun</radical> masuk melalui <radical>pintu</radical> Anda, jadi Anda <kanji>mempekerjakannya</kanji>. Anda selalu mempekerjakan kalkun apa pun yang masuk melalui pintu itu.', 'Meskipun Anda <kanji>mempekerjakan</kanji> kalkun, ketika <reading>子</reading> (こ) berjalan melewati pintu Anda, Anda mengusir mereka.')
    RETURNING id INTO k_1713_mempekerjakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '控', 'menjauhkan-diri', 39, 17, 'Angkat <radical>jari</radical> Anda ke <radical>langit</radical> untuk melambangkan bahwa Anda <kanji>menjauhkan</kanji> dari sesuatu. Jika seseorang menawari Anda mantel bulu, angkat jari Anda untuk berpantang. Jika seseorang mencoba membuat Anda menindas seseorang, angkat jari Anda untuk menjauhkan diri.', 'Simbol <kanji>pantang</kanji> ini berasal dari <reading>hica</reading>tee (ひか) turtle. Hicatee adalah penyu sungai Amerika Tengah yang diburu untuk diambil daging, telur, dan cangkangnya. Oleh karena itu, hicatee yang malang berada dalam bahaya. Jadi orang-orang mulai berkumpul di sekitar mereka, tidak lagi menyakiti mereka. Mereka mengangkat jari mereka ke langit dan berteriak, "Saya tidak menyakiti hicatee ini!"')
    RETURNING id INTO k_1714_menjauhkan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '壁', 'dinding', 39, 18, 'Ada <radical>cabai</radikal> yang bersembunyi di <radikal>tanah</radikal> ini, jadi Anda membangun <kanji>dinding</kanji> untuk melindungi diri Anda dari mereka. Pernahkah Anda menginjak cabai yang sangat pedas? Minyak merembes ke dalam sepatu Anda dan membakar kaki Anda! Anda tidak ingin ada orang yang menginjaknya sehingga Anda menutupnya.', 'Setelah <kanji>dinding</kanji> Anda selesai dibangun, Anda dapat duduk dan menikmati segelas <reading>cabe</reading>rnet (かべ). Anda aman dari cabai di sisi lain tembok, jadi Anda bisa lengah dan makan cabernet sebanyak yang Anda suka.')
    RETURNING id INTO k_1715_dinding;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '棋', 'catur-jepang', 39, 19, 'Di samping <radical>pohon</radical>, Anda menemukan <radical>kepiting</radical> sedang bermain <kanji>catur Jepang</kanji> (alias <kanji>shogi</kanji>). Hei, kenapa tidak? Di New York orang bermain catur di taman, dan di Jepang kepiting bermain shogi di samping pohon.

Terkadang ini juga berarti <kanji>go</kanji>, yang merupakan permainan papan strategis yang berbeda dari Tiongkok. Agak membingungkan, tapi pikirkan saja "permainan papan Asia Timur yang strategis" dan Anda berada di wilayah yang tepat untuk kanji ini.', 'Jika kamu bisa mengalahkan kepiting pohon dalam permainan <kanji>catur Jepang</kanji>, dia akan memberimu <reading>key</reading> (き). Kunci macam apa? Kunci harta apa pun yang Anda inginkan. Anggaplah Anda berada dalam JRPG berbasis kepiting dan shogi, dan kepiting ini adalah bos terakhirnya. Kunci ajaib adalah hadiah yang pantas, bukan?')
    RETURNING id INTO k_1716_catur_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '渋', 'pahit', 39, 20, 'Ada <radikal>tsunami</radikal> yang akan datang dan Anda tidak bisa <radikal>menghentikan</radikal> <radikal>ledakan</radikal> rasa <kanji>pahit</kanji> di mulut Anda. Anda takut. Mulutmu terasa pahit dan <kanji>sepat</kanji>.

Kata ini juga berarti <kanji>enggan</kanji>, karena tidakkah Anda segan membiarkan tsunami datang menghanyutkan Anda dengan ledakan rasa pahit di mulut Anda?', 'Dengan rasa <kanji>pahit</kanji> di mulut Anda, Anda <kanji>dengan enggan</kanji> mengumpulkan semua <reading>Yahudi</reading>el (じゅう) Anda dan menunggu tsunami membawa Anda pergi. Setidaknya dengan perhiasan Anda, mungkin ada harapan untuk menjualnya dan membangun kehidupan yang lebih baik jika Anda berhasil.')
    RETURNING id INTO k_1717_pahit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '片', 'satu-sisi', 39, 21, 'Kanji <radikal>satu sisi</radikal> dan kanji <kanji>satu sisi</kanji> adalah sama!', 'Bayangkan segala sesuatu yang <kanji>berpihak</kanji>. Sebuah pertempuran. Sebuah permainan olahraga. Sebuah hubungan. Apa yang membuat mereka begitu memihak? Satu sisi selalu memiliki <reading>cata</reading>pult (かた).')
    RETURNING id INTO k_1718_satu_sisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '群', 'kawanan', 39, 22, '<radical>teman</radical> Anda, <radical>domba</radical> adalah bagian dari <kanji>kawanan</kanji>. Sekawanan domba. Teman domba Anda adalah anggota kawanan.', 'Sekarang keluarkan <reading>senjata</reading> (ぐん) Anda dan bunuh setiap domba di <kanji>kawanan</kanji>. Kecuali temanmu. Anda sangat iri pada teman Anda dan tidak menyukai perhatian yang diberikan kawanannya, itulah sebabnya Anda memutuskan untuk membunuh mereka semua dengan pistol.')
    RETURNING id INTO k_1719_kawanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '仙', 'pertapa', 39, 23, 'Seorang <radikal>pemimpin</radikal> yang tinggal di <radikal>gunung</radikal> adalah seorang <kanji>pertapa</kanji>. Satu-satunya pemimpin pertapa ini saat ini adalah kambing gunung. Pertapa ini tidak menyukai manusia, itulah sebabnya dia sekarang tinggal di gunung.', 'Suatu hari <kanji>pertapa</kanji> sedang memimpin kambing gunung berkeliling dan dia bertemu dengan <read>cen</reading>taur (せん). Centaur mengatakan bahwa dia adalah pemimpin yang sah dari kambing gunung tersebut sehingga centaur tersebut menantang sang pertapa untuk berduel.')
    RETURNING id INTO k_1720_pertapa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '充', 'alokasikan', 39, 24, 'Kanji <radikal>alokasikan</radikal> dan kanji <kanji>alokasikan</kanji> adalah sama!', 'Jika Anda <kanji>mengalokasikan</kanji> dana Anda dengan benar, Anda akan dapat membeli barang <reading>jew</reading>el (じゅう) berharga sebanyak yang Anda inginkan! Namun, perhiasan itu mahal, jadi jika Anda tidak mengalokasikan uang, Anda tidak akan mampu membelinya. Pernah.')
    RETURNING id INTO k_1721_alokasikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '免', 'mengizinkan', 39, 25, 'Kanji <radical>excuse</radical> dan <kanji>excuse</kanji> sama persis! Pesolek!', 'Siapa yang selalu membuat <kanji>alasan</kanji> setelah alasan? <read>Pria</reading> (めん)! Mereka punya alasan untuk semuanya. Mengapa kamu tidak membuang sampahnya? Kenapa kamu lupa hari ulang tahunku? Itu hanya alasan demi alasan dengan laki-laki. Jadi, aku sudah mendengarnya.')
    RETURNING id INTO k_1722_mengizinkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '圏', 'jangkauan', 39, 26, '<radical>Mulut</radical> Anda berisi <radical>scroll</radical>, yang Anda tarik dan lihat. Pada gulungan tersebut terdapat peta, yang menunjukkan <kanji>rentang</kanji> dari <kanji>bola</kanji> mulut Anda.', 'Melihat <kanji>rentang</kanji> mulut Anda di peta, Anda melihat tanda samurai kecil di dekat geraham Anda. Itu adalah <read>Ken</reading> (けん) sang samurai.')
    RETURNING id INTO k_1724_jangkauan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '埼', 'tanjung', 39, 27, 'Sebongkah <radikal>kotoran</radikal> ini menonjol dengan cara yang sangat <radikal>aneh</radikal>. Oh, tunggu, itu hanya <kanji>tanjung</kanji> yang menjorok ke air di bawah. Fiuh.', '<kanji>jubah</kanji> di bawah terlihat seperti <reading>cy</reading>borg (さい) Anda. Atau lebih tepatnya, cyborg yang pernah kamu miliki, sebelum kamu harus menyerahkannya. Bentuknya agak melintang, ada bagian yang bisa digeser, dan banyak bagian kecil yang berdaging. Ah, kenangannya.')
    RETURNING id INTO k_1726_tanjung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奪', 'merampok', 39, 28, 'Seekor <radical>besar</radical> <radical>kalkun</radical> mengambil <radical>pengukuran</radical> brankas sebelum dia bisa <kanji>merampok</kanji> itu. Jika brankasnya terlalu besar maka tidak akan muat di dalam mobil pelariannya dan perampokan akan gagal. Jadi sebelum kalkun merampok suatu tempat, dia perlu melakukan pengukuran tersebut.', 'Setelah dia mampu <kanji>merampok</kanji> tempat itu, dia kabur dengan <reading>Uber</reading> (うば). Dia baru saja menelepon Uber terlebih dahulu dan menyuruhnya menunggu di luar. Hei, jika kamu ingin merampok suatu tempat, pastikan kamu punya Uber.')
    RETURNING id INTO k_1727_merampok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '御', 'terhormat', 39, 29, 'Anda <radical>berkeliaran</radical> pada <radical>siang</radical> di dekat tanda <radical>berhenti</radical> untuk mendapatkan <radical>stempel</radical> persetujuan dari seseorang yang <kanji>terhormat</kanji>. Tokoh terhormat ini berkendara pada siang hari setiap hari, dan karena mereka harus berhenti di tanda berhenti, orang-orang bermalas-malasan di sini untuk mendapat kesempatan mendapatkan stempel persetujuan mereka yang terhormat.', 'Tokoh <kanji>terhormat</kanji> adalah <reading>Go</reading>dzilla (ご). Sebenarnya, Anda meminta stempel persetujuan Godzilla untuk pekerjaan pembongkaran baru di pusat kota Tokyo. Godzilla adalah dewa penghancuran kota, dengan semua kota yang dihancurkannya, dan Anda memerlukan persetujuan terhormatnya untuk melanjutkan.')
    RETURNING id INTO k_1728_terhormat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慎', 'kerendahhatian', 39, 30, 'Saat seseorang ingin melihat <radical>realitas</radical> <radical>jiwa</radical> Anda, tunjukkan dengan <kanji>kerendahan hati</kanji>. Karena kenyataannya... jiwa kita semua sedikit kotor. Dan kami belum menjadi versi terbaik yang kami bisa. Jadi pastikan ketika Anda menunjukkan seluruh diri Anda, Anda melakukannya dengan sedikit kerendahan hati.', 'Saat <kanji>kerendahan hati</kanji> menyelimuti Anda, Anda merasakan guncangan di <reading>tulang kering</reading> (しん) Anda. Kerendahan hati hidup di tulang kering Anda, jadi sekarang mereka gemetar dan mencoba menjatuhkan Anda ke tanah.')
    RETURNING id INTO k_1729_kerendahhatian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拒', 'menolak', 39, 31, 'Tunjukkan <radical>jari</radical> Anda kepada <radical>raksasa</radical> untuk menunjukkan bahwa Anda <kanji>menolak</kanji> dia. Raksasa sangat besar. Begitu besarnya sehingga ketika Anda berbicara, mereka tidak dapat mendengar apa yang Anda katakan. Angkat semua jari Anda agar dia dapat memahami maksud Anda.', 'Apa yang <kanji>tolak</kanji>? Anda menolak untuk membiarkan dia menginjak-injak Little <reading>Kyo</reading>to (きょ). Kyoto Kecil adalah rumahmu! Dan jika raksasa itu mendekat, dia akan menghancurkan semua bangunan kecil, kuil, dan toko mie soba.')
    RETURNING id INTO k_1730_menolak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '枠', 'bingkai', 39, 32, 'Dalam <radical>pohon</radikal> di <radical>sembilan</radikal> cabang terdapat beberapa <radikal>lintas</radikal> <kanji>bingkai</kanji>. Setiap bingkai melintang digantung di dahan pohon. Anda tidak tahu siapa yang memutuskan untuk menggantungkan bingkai di sana, tetapi Anda berpikir itu mungkin seni gelombang baru atau semacamnya. Sebenarnya Anda membutuhkan sebuah bingkai, dan sudah ada sembilan di sana, jadi Anda memutuskan untuk mengambil satu.', 'Kamu menyadari bahwa <kanji>bingkai</kanji> tidak sebagus yang kamu kira, bahkan sebenarnya <reading>aneh</reading> (わく). Mengecewakan sekali.')
    RETURNING id INTO k_1731_bingkai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '甲', 'cangkang-penyu', 39, 33, 'Radikal <radikal>cangkang penyu</radikal> dan kanji <kanji>cangkang penyu</kanji> sama persis! Anehnya, ini juga bisa digunakan untuk membicarakan item pertama dalam daftar, jadi berarti <kanji>A</kanji> dari A sampai D, misalnya.', 'Dengan <kanji>cangkang kura-kura</kanji> di punggungnya, bayangkan <reading>こう</reading>いち.')
    RETURNING id INTO k_1732_cangkang_penyu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '斐', 'bermotif', 39, 34, '<radical>Kriminal</radical> <radical>tulisan</radical> selalu <kanji>berpola</kanji>. Artinya, ada polanya, banyak ARGS dan GONNA STAB YA, tapi juga berpola indah, dengan kolase huruf-huruf yang dipotong.', 'Saat Anda melihat lebih dekat pada tulisan <kanji>berpola</kanji> Anda akan menyadari bahwa tulisan itu berbentuk <reading>elang</reading> (い). Burung paling Amerika di antara semuanya! Mungkin orang ini bukanlah penjahat!')
    RETURNING id INTO k_1733_bermotif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '祉', 'kesejahteraan', 39, 35, 'Saat <radikal>roh</radikal> <radikal>berhenti</radikal> melindungi Anda, Anda harus melanjutkan <kanji>kesejahteraan</kanji>. Jika Anda tidak dapat mengandalkan semangat kekeluargaan, Anda harus mendapatkan bantuan dan perlindungan dari tempat lain.', 'Saat dalam <kanji>kesejahteraan</kanji>, Anda harus melakukan satu-satunya pekerjaan yang tersedia bagi Anda: menggembalakan <reading>shee</reading>p (し). Domba dapat membantu Anda saat Anda mengalami masa sulit. Domba memberikan kehangatan, wol untuk pakaian, dan bahkan makanan, jika Anda ingin mengetahui hal itu.')
    RETURNING id INTO k_1734_kesejahteraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '稲', 'tanaman-padi', 39, 36, '<radical>biji-bijian</radikal> yang menempel di <radical>cleat</radical> Anda memiliki kehidupan <radical>bekas</radikal>. Dalam kehidupan itu, itu adalah <kanji>tanaman padi</kanji>. Ia adalah tanaman padi kecil yang bahagia, mengurus urusannya sendiri, ketika ia ditarik, dibersihkan, dan dimasukkan ke dalam tas untuk dibeli, dimasak, dan dimakan orang. Itu sudah lama sekali. Sekarang yang tersisa hanyalah butiran lepas yang menyedihkan di bagian bawah sepatu Anda.', 'Butir beras memikirkan kehidupan sebelumnya sebagai <kanji>tanaman padi</kanji> dan, seperti Anda, bergumam "<reading>いね</reading>." Apa itu, butiran beras kecil? Apakah Anda mencoba mengatakan hidup itu baik?')
    RETURNING id INTO k_1735_tanaman_padi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '譲', 'menunda', 39, 37, 'Saat Anda <radikal>mengatakan</radikal> "<radikal>Perawat</radikal>!" Anda mungkin meminta untuk <kanji>menunda</kanji> dengan cara, bentuk, atau bentuk tertentu.', 'Alasan kamu mencoba <kanji>menunda</kanji> kepada perawat adalah karena kamu mencoba menyelamatkan buruh tani setempat, <reading>Joe</reading> (じょう). Dia terluka parah, dan Anda tidak tahu bagaimana membantunya, jadi Anda harus bergantung pada pengetahuan perawat.')
    RETURNING id INTO k_1736_menunda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '謙', 'kesopanan', 39, 38, 'Mereka <radikal>mengatakan</radikal> <radikal>Mona Lisa</radikal> memiliki lebih <kanji>kesopanan</kanji> dibandingkan wanita lain pada saat itu.', '<kanji>kesopanan</kanji> Mona Lisa mengilhami <reading>Ken</reading> (けん) sang samurai untuk menjadi lebih rendah hati.')
    RETURNING id INTO k_1737_kesopanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '躍', 'melompat', 39, 39, 'Anda menggunakan <radical>kaki</radical> untuk menendang wajah <radical>Wolverine</radical> sehingga <radical>kalkun</radical> dapat <kanji>melompat</kanji> menuju kebebasan. Kalkun ini mencoba melarikan diri dari Wolverine dengan melompati pagar. Wolverine tidak ingin kalkunnya kabur, tapi Anda menendangnya dengan kaki Anda dan kalkun itu bebas melompat ke tempat yang aman.', 'Setelah Anda menendang Wolverine dan kalkunnya aman, Anda <kanji>melompat</kanji> ke <reading>yak</reading> (やく) untuk melarikan diri. Yak ini sangat cepat sehingga Anda tidak akan kesulitan berlari lebih cepat dari Wolverine saat mengendarainya.')
    RETURNING id INTO k_1738_melompat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '銃', 'pistol', 39, 40, 'Ambil sejumlah <radikal>emas</radikal> dan <radikal>alokasikan</radikal> untuk membeli <kanji>senjata</kanji>. Senjata adalah senjata masa lalu, jadi Anda tidak bisa membelinya dengan uang kertas saja. Senjata harus dibeli dengan koin emas atau batu bata.', 'Kamu membutuhkan <kanji>senjata</kanji> ini agar kamu bisa mencuri beberapa orang <reading>Yahudi</reading>el (じゅう)! Mengapa Anda tidak menggunakan emas Anda untuk membeli permata saja? Karena! Itu bukanlah cara kita melakukan hal-hal di masa lalu. Bila Anda menginginkan perhiasan, Anda membeli senjata dengan emas dan merampok toko perhiasan!')
    RETURNING id INTO k_1739_pistol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '項', 'ayat', 39, 41, '<radical>Konstruksi</radikal> untuk <radical>geoduck</radical> tidak memerlukan dokumen sebanyak konstruksi untuk manusia, namun Anda masih perlu menulis setidaknya satu <kanji>paragraf</kanji> untuk menjelaskan apa yang Anda lakukan.', 'Anda menyerahkan <kanji>paragraf</kanji> Anda, dan itu diberikan kepada Kaisar <reading>こう</reading>いち, yang bersikeras untuk terlibat dalam semua proyek konstruksi. Anehnya, dia menyetujui proyek konstruksi Anda, berkat paragraf yang Anda tulis di lamaran.')
    RETURNING id INTO k_1740_ayat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鋼', 'baja', 39, 42, 'Anda menemukan <radical>emas</radical> <radical>bukit</radical>. Anda pikir Anda sukses besar! Anda mulai menggali, hanya untuk mengetahui bahwa itu hanyalah lapisan emas setipis kertas yang menutupi bukit <kanji>baja</kanji>.', 'Anda melaporkan temuan Anda tentang <kanji>baja</kanji> yang Anda temukan kepada Kaisar <reading>こう</reading>いち. Dia tidak senang karena itu adalah bukit baja.')
    RETURNING id INTO k_1741_baja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '囚', 'pidana', 39, 43, 'Di dalam <radical>mulut</radikal> raksasa ini ada <radikal>orang</radikal>, terjebak, karena mereka adalah <kanji>penjahat</kanji>. Mereka melakukan sesuatu yang buruk (mereka menyentuh mulut orang lain tanpa izin) dan sekarang mereka dipenjara karena penjahat.', '<kanji>penjahat</kanji> hanya mengenakan <reading>sepatu</reading> (しゅう). Sebaliknya mereka telanjang bulat. Mereka harus memakai sepatu karena mulut penjara akan terlalu licin bagi mereka untuk berdiri.')
    RETURNING id INTO k_2459_pidana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宛', 'alamat', 39, 44, 'Di <radical>atap</radical> Anda setiap <radical>malam</radical> Anda bertemu dengan <radical>ular</radical>. Semua ular mengetahui <kanji>alamat</kanji> Anda.', 'Ular datang ke <kanji>alamat</kanji> Anda setiap malam untuk menerima hadiah terbesar yang bisa Anda berikan kepada ular: <reading>a 手</reading> (あて).')
    RETURNING id INTO k_8912_alamat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '腫', 'pembengkakan', 39, 45, '<radikal>bulan</radikal> menjadi sangat <radikal>berat</radikal> karena <kanji>pembengkakan</kanji>. Anda tidak yakin apa yang menyebabkan bulan bengkak, tapi Anda berharap itu hanya alergi dan bukan <kanji>tumor</kanji> atau semacamnya.', 'Saat orang-orang melihat <kanji>bengkak</kanji> bulan, mereka berteriak: "<reading>Hah</reading> (は)! Benar sekali!" Ternyata banyak orang menganggap bulan adalah sosok yang angkuh, sombong dan suka memerintah semua orang dari langit, jadi mereka senang melihatnya tampak bengkak dan tidak nyaman.')
    RETURNING id INTO k_9447_pembengkakan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1017_ruang_kosong, 'Ruang kosong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1708_negara_asal, 'Negara Asal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1709_bel, 'Bel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1709_bel, 'Lonceng Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1710_gundukan, 'Gundukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1711_bercabang, 'Bercabang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1712_kemakmuran, 'Kemakmuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1713_mempekerjakan, 'Mempekerjakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1714_menjauhkan_diri, 'Menjauhkan diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1715_dinding, 'Dinding', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1716_catur_jepang, 'Catur Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1716_catur_jepang, 'Shogi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1716_catur_jepang, 'Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1717_pahit, 'Pahit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1717_pahit, 'Astringen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1717_pahit, 'Enggan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1718_satu_sisi, 'Satu Sisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1718_satu_sisi, 'Fragmen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1719_kawanan, 'Kawanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1720_pertapa, 'Pertapa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1721_alokasikan, 'Alokasikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1722_mengizinkan, 'Mengizinkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1724_jangkauan, 'Jangkauan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1724_jangkauan, 'Bola', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1726_tanjung, 'Tanjung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1727_merampok, 'Merampok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1728_terhormat, 'Terhormat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1729_kerendahhatian, 'Kerendahhatian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1730_menolak, 'Menolak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1730_menolak, 'Penolakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1731_bingkai, 'Bingkai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1732_cangkang_penyu, 'Cangkang Penyu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1732_cangkang_penyu, 'A', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1733_bermotif, 'Bermotif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1734_kesejahteraan, 'Kesejahteraan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1735_tanaman_padi, 'Tanaman Padi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1736_menunda, 'Menunda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1737_kesopanan, 'Kesopanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1738_melompat, 'Melompat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1739_pistol, 'Pistol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1740_ayat, 'Ayat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1741_baja, 'Baja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2459_pidana, 'Pidana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8912_alamat, 'Alamat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9447_pembengkakan, 'Pembengkakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9447_pembengkakan, 'Tumor', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1017_ruang_kosong, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1017_ruang_kosong, 'こ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1017_ruang_kosong, 'むな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1708_negara_asal, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1708_negara_asal, 'くに', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1709_bel, 'りん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1709_bel, 'れい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1709_bel, 'すず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1710_gundukan, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1711_bercabang, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1711_bercabang, 'ぎ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1712_kemakmuran, 'りゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1713_mempekerjakan, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1713_mempekerjakan, 'やと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1714_menjauhkan_diri, 'ひか', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1714_menjauhkan_diri, 'こう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1715_dinding, 'かべ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1715_dinding, 'へき', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1716_catur_jepang, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1716_catur_jepang, 'ご', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1717_pahit, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1717_pahit, 'しぶ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1718_satu_sisi, 'かた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1718_satu_sisi, 'へん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1719_kawanan, 'ぐん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1719_kawanan, 'む', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1719_kawanan, 'むら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1720_pertapa, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1721_alokasikan, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1721_alokasikan, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1721_alokasikan, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1722_mengizinkan, 'めん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1722_mengizinkan, 'まぬか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1724_jangkauan, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1726_tanjung, 'さい', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1726_tanjung, 'き', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1727_merampok, 'うば', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1727_merampok, 'だつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1728_terhormat, 'ご', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1728_terhormat, 'ぎょ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1728_terhormat, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1728_terhormat, 'おん', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1728_terhormat, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1729_kerendahhatian, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1729_kerendahhatian, 'つつし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1730_menolak, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1730_menolak, 'こば', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1731_bingkai, 'わく', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1732_cangkang_penyu, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1732_cangkang_penyu, 'かん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1732_cangkang_penyu, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1733_bermotif, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1733_bermotif, 'ひ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1734_kesejahteraan, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1735_tanaman_padi, 'いね', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1735_tanaman_padi, 'いな', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1735_tanaman_padi, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1736_menunda, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1736_menunda, 'ゆず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1737_kesopanan, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1738_melompat, 'やく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1738_melompat, 'おど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1739_pistol, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1740_ayat, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1741_baja, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1741_baja, 'はがね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2459_pidana, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2459_pidana, 'とら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8912_alamat, 'あて', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8912_alamat, 'えん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9447_pembengkakan, 'は', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9447_pembengkakan, 'しゅ', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '虚栄心', 'kesombongan', 39, 46, 'Ketika seberapa banyak <kanji>kemakmuran</kanji> Anda masuk ke dalam <kanji>hati</kanji> Anda dan memasuki <kanji>kekosongan</kanji>, hal itu jarang sekali berarti apa pun bagi Anda. Seseorang yang memiliki sifat ini akan memiliki <kosakata>kesombongan</vocabulary> yang ekstrim karena mereka hanya perlu menyedot lebih banyak kemakmuran ke dalam jurang maut dalam hati mereka. Ini seperti lubang hitam. Mereka membutuhkan lebih dan lebih lagi sehingga mereka menjadi sia-sia.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesombongan')
    RETURNING id INTO v_4033_kesombongan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祈念', 'doa', 39, 47, 'Anda <kanji>berdoa</kanji> dengan <kanji>pikiran</kanji> Anda, menjadikan ini sebagai <vocabulary>doa</vocabulary>.

Meskipun 祈願 adalah tentang meminta sesuatu secara formal kepada dewa tertentu, 祈念 mengacu pada <vocabulary>berdoa</vocabulary> atau <vocabulary>berharap</vocabulary> dalam arti yang lebih diam dan pribadi. Kata ini digunakan dalam situasi formal untuk mengungkapkan harapan akan keberhasilan, keselamatan, perdamaian, atau pemulihan, dan sering kali muncul dalam nama monumen atau peristiwa yang menggabungkan kenangan dan harapan, seperti 平和祈念公園 (Taman Peringatan Perdamaian) atau 復興祈念イベント (Acara Doa Rekonstruksi).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Doa, Berdoa, Berharap')
    RETURNING id INTO v_4123_doa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '惑う', 'menjadi-rugi', 39, 48, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>sesat</kanji>, namun versi kata kerjanya biasanya digunakan untuk menggambarkan perasaan Anda setelah disesatkan — <vocabulary>bingung</vocabulary>!

惑う biasanya mengacu pada berada dalam kebingungan atau kebingungan. Penggunaan 惑う agak kuno, tetapi bentuk lain seperti 惑わせる dan 逃げ惑う (melarikan diri dengan panik) masih cukup umum di Jepang modern.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Jika Anda <vocabulary>bingung</vocabulary> Anda kemungkinan besar akan <reading>mad</reading> (まど) mengenai hal tersebut. Tidak ada orang yang suka merasa kehilangan, jadi bayangkan betapa marahnya perasaan Anda saat mengalaminya.', 'Menjadi Rugi, Menjadi Bingung')
    RETURNING id INTO v_5022_menjadi_rugi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紅', 'merah-tua', 39, 49, 'Kanji dan kata-katanya sama persis, jadi ini juga berarti <vocabulary>merah tua</vocabulary>, atau <vocabulary>crimson</vocabulary>. Selain itu, bisa juga berarti <vocabulary>pemerah pipi</vocabulary>, biasanya mengacu pada kosmetik.

紅 juga merupakan kata kuno dan agak sastra, jadi ingatlah itu!', 'Di sinilah segalanya menjadi sedikit rumit. Anda sudah mempelajari べに sebagai bacaan dengan 口紅. 紅 juga bisa dibaca べに dengan sendirinya, dan dalam hal ini, artinya <vocabulary>rouge</vocabulary>. Namun, ada bacaan berbeda yang digunakan untuk <vocabulary>merah tua</vocabulary>, yang ingin kami fokuskan di sini, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Ada begitu banyak <vocabulary>merah tua</vocabulary> darah di mana-mana, tidak ada cara untuk membantu orang ini mengeluarkan darahnya. Ada yang mungkin berkata, <reading>menyembuhkan ない</reading> (くれない).  Ingat saja: ketika ada warna merah tua di mana-mana, obati ない.', 'Merah Tua, Merah tua, pemerah pipi')
    RETURNING id INTO v_5780_merah_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '香り', 'parfum', 39, 50, 'Ini adalah versi kata benda dari 香, sehingga memiliki arti yang sama, <vocabulary>fragrance</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: <vocabulary>wewangian</vocabulary> yang Anda cium adalah <reading>顔</reading> (かお) seseorang. Bayangkan saja mencium wangi wajah segerombolan orang. enak!', 'Parfum, Aroma')
    RETURNING id INTO v_6114_parfum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '併殺', 'putar-ganda', 39, 51, '<kanji>join</kanji> <kanji>kill</kanji> adalah ketika dalam satu permainan Anda mendapatkan dua kill (out) dalam bisbol, menjadikannya <vocabulary>double play</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Putar Ganda')
    RETURNING id INTO v_6180_putar_ganda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '将棋', 'shogi', 39, 52, '<kanji>komandan</kanji> yang memainkan <kanji>catur Jepang</kanji> lebih suka menyebutnya <vocabulary>shogi</vocabulary>. Komandan suka menggunakan nama resmi untuk sesuatu, jadi mereka selalu mengucapkan "shogi". Anda juga harus melakukannya, tetapi jika teman Anda tidak mengetahui apa itu shogi, Anda tetap dapat menyebutnya <vocabulary>catur Jepang</vocabulary> demi kepentingan mereka.', 'Kata ini menggunakan bacaan yang telah Anda pelajari, tetapi 棋 diberi rendaku dan diubah menjadi ぎ. Berikut ini mnemonik untuk itu, untuk berjaga-jaga:

Bayangkan Anda memainkan pertandingan <vocabulary>shogi</vocabulary>, dan siapa pun yang kalah mendapat <reading>gui</reading>llotine (ぎ). Sebaiknya kau menangkan permainan shogi itu.', 'Shogi, Catur Jepang, Shougi')
    RETURNING id INTO v_6239_shogi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '跡継ぎ', 'ahli-waris', 39, 53, '<kanji>jejak</kanji> adalah orang-orang yang <kanji>mewarisi</kanji> apa yang Anda miliki. Mereka adalah <vocabulary>heir</vocabulary> atau <vocabulary>heiress</vocabulary> Anda. <vocabulary>penerus</vocabulary> Anda.', 'Bacaannya adalah kosakata 跡 dan 継ぐ yang disatukan.', 'Ahli waris, Ahli waris perempuan, Penerus')
    RETURNING id INTO v_6240_ahli_waris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '跳ねる', 'untuk-melompat', 39, 54, 'Jangan bingung dengan 跳ぶ, kata ini memiliki arti yang sama. Namun bacaannya berbeda.', 'Setiap kali kamu mencoba <vocabulary>melompat</vocabulary>, kamu mengucapkan "<reading>Hah</reading> (は)!" Itu adalah suara yang Anda buat dengan segala upaya: "Hah!" saat Anda melompat, "Hah!" saat Anda melompat, "Hah!" untuk setiap lompatan.', 'Untuk Melompat, Untuk Melompat, Untuk Melompat')
    RETURNING id INTO v_6241_untuk_melompat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縄跳び', 'lompat-tali', 39, 55, '<kanji>tali</kanji> yang Anda <kanji>lompati</kanji> adalah <vocabulary>lompat tali</vocabulary>. 縄跳び bisa juga merujuk pada aktivitas <vocabulary>lompat tali</vocabulary> (alias lompat tali).', 'Bacaannya adalah vocab kata 縄 dan 跳ぶ yang disatukan.', 'Lompat Tali, Lompat Tali')
    RETURNING id INTO v_6242_lompat_tali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '応募する', 'untuk-melamar', 39, 56, 'Jika 応募 adalah "lamaran" maka versi kata kerjanya adalah <vocabulary>to apply for</vocabulary> atau <vocabulary>to enlist</vocabulary>.', 'Pembacaannya sama dengan pembacaan 応募, namun mengetahui pembacaan kanji akan membantu juga.', 'Untuk Melamar, Untuk Mendaftar, Untuk Menjawab Sebuah Iklan')
    RETURNING id INTO v_6243_untuk_melamar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本塁打', 'lari-rumah', 39, 57, '<kanji>pukulan</kanji> yang Anda dapatkan dalam <kanji>bisbol</kanji> yang membawa Anda ke pelat <kanji>asal</kanji> adalah <vocabulary>home run</vocabulary>. HOOOMMEERUNNNNN!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lari Rumah, Homer')
    RETURNING id INTO v_6244_lari_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '崩れる', 'untuk-runtuh', 39, 58, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>hancur</kanji> dan versi kosakata kata kerjanya berarti <kosakata>hancur</vocabulary>, seperti ada sesuatu yang runtuh atau runtuh.', 'Bacaannya berasal dari 崩す, jadi jika Anda mengetahuinya, Anda juga tahu bacaan ini!', 'Untuk Runtuh, Runtuh')
    RETURNING id INTO v_6245_untuk_runtuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '払い戻す', 'untuk-membayar', 39, 59, '払い berarti "pembayaran" dan 戻す berarti "mengembalikan". Jika Anda mengembalikan pembayaran, Anda akan <vocabulary>membayar kembali</vocabulary>, <vocabulary>mengembalikan dana</vocabulary>, atau <vocabulary>mengganti uang</vocabulary> seseorang atas pembayaran mereka.', 'Bacaannya berasal dari 払い dan 戻す.', 'Untuk Membayar, Untuk Mengembalikan Dana, Untuk Mengganti Biaya')
    RETURNING id INTO v_6246_untuk_membayar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弾く', 'untuk-memainkan-alat-musik-petik', 39, 60, 'Anda akan berpikir bahwa ini berarti "menembak" tetapi sebenarnya tidak. Artinya <vocabulary>memainkan alat musik petik</vocabulary>. Ini sebenarnya digunakan untuk semua instrumen senar, dan semua instrumen dengan keyboard, seperti piano dan keyboard elektrik. Bayangkan saja mengambil peluru dan menggunakannya sebagai pick gitar, lalu menggunakannya untuk menekan tuts piano dan memainkan sebuah lagu.', 'Bacaannya sama dengan 引く yaitu “menarik”. Saat Anda memainkan alat musik petik, Anda menarik senar ke arah yang membuatnya bergetar dan menghasilkan suara. Jadi, "menarik" dan "memainkan alat musik petik" berbagi bacaan. Ini sedikit lebih sulit untuk instrumen dengan keyboard, tetapi piano setidaknya memiliki senar...', 'Untuk Memainkan Alat Musik Petik, Untuk Bermain')
    RETURNING id INTO v_6247_untuk_memainkan_alat_musik_petik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '言葉遣い', 'pilihan-kata', 39, 61, 'Anda mungkin ingat 言葉 berarti "kata" dan 遣う berarti "menggunakan". Hal ini menjadikan ini sebagai <vocabulary>pilihan kata</vocabulary> Anda atau, lebih sederhananya, <vocabulary>penggunaan kata</vocabulary> Anda.', 'Bacaannya adalah 言葉 dan 遣う digabungkan menjadi satu.', 'Pilihan Kata, Penggunaan Kata, Susunan kata')
    RETURNING id INTO v_6248_pilihan_kata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小遣い', 'uang-saku', 39, 62, '遣う berarti "menggunakan", jadi "penggunaan <kanji>kecil</kanji>" mengacu pada apa yang dapat Anda lakukan dengan <vocabulary>menghabiskan uang</vocabulary> Anda. Anda tidak menghabiskan banyak uang di sini, jadi Anda hanya dapat menggunakan uang belanja Anda untuk hal-hal kecil. Anggap saja seperti sedikit <vocabulary>tunjangan</vocabulary> yang dapat Anda gunakan untuk membeli kartu bisbol, permen karet, dan sebagainya.', 'Bacaannya merupakan bacaan bergantian antara bacaan 小 dan 遣う. Hati-hati dengan rendaku.', 'Uang saku, Uang belanja')
    RETURNING id INTO v_6249_uang_saku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '削除する', 'untuk-menghapus', 39, 63, 'Jika 削除 adalah "penghapusan", maka versi kata kerjanya adalah <vocabulary>to delete</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Menghapus, Untuk menghilangkan')
    RETURNING id INTO v_6250_untuk_menghapus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掲示板', 'papan-buletin', 39, 64, '掲示 adalah pemberitahuan atau tanda. Letakkan ini di <kanji>papan</kanji>, dan itu akan menjadi <vocabulary>papan buletin</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Papan Buletin')
    RETURNING id INTO v_6251_papan_buletin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '渋滞', 'kemacetan-lalu-lintas', 39, 65, '<kanji>pahit</kanji> <kanji>stagnasi</kanji> adalah saat Anda mengalami kemacetan lalu lintas. Rasanya pahit, bukan? Mengapa orang tidak bisa mengemudi lebih cepat? Mengapa orang lebih memilih melihat kecelakaan daripada mengemudi? Aku sangat sedih karenanya! Itu sebabnya kata ini adalah <vocabulary>kemacetan lalu lintas</vocabulary> dan <vocabulary>kemacetan lalu lintas</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kemacetan lalu lintas, Kemacetan Lalu Lintas')
    RETURNING id INTO v_6252_kemacetan_lalu_lintas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '募集中', 'sekarang-mempekerjakan', 39, 66, '<kanji>Rekrut</kanji> dan <kanji>kumpulkan</kanji> semua orang ke <kanji>tengah</kanji>. Mereka semua berkumpul di sini untuk perekrutan ini karena kami <vocabulary>sekarang merekrut</vocabulary> / <vocabulary>sekarang merekrut</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sekarang Mempekerjakan, Sekarang Merekrut')
    RETURNING id INTO v_6253_sekarang_mempekerjakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戻り道', 'jalan-kembali', 39, 67, 'Jika 戻る adalah "untuk <kanji>kembali</kanji>" maka Anda kembali ke <kanji>jalan</kanji> asal Anda, Anda mengambil <vocabulary>jalan pulang</vocabulary>.', 'Bacaannya adalah bacaan vocab kun''yomi dari segala hal. Pikirkan 戻る untuk bagian 戻り.', 'Jalan Kembali, Jalan Kembali')
    RETURNING id INTO v_6254_jalan_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '取り戻す', 'untuk-mengambil-kembali', 39, 68, '<kanji>mengambil</kanji> dan <kanji>mengembalikan</kanji> sesuatu kepada diri sendiri berarti <vocabulary>mengambil kembali</vocabulary> sesuatu. Kembalikan!', 'Bacaannya berasal dari 取る dan 戻す. Gabungkan mereka untuk mendapatkan ini.', 'Untuk Mengambil Kembali')
    RETURNING id INTO v_6255_untuk_mengambil_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原子爆弾', 'bom-atom', 39, 69, '原子 adalah atom dan 爆弾 adalah bom. Apa itu bom atom? <kosa kata>bom atom</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bom Atom')
    RETURNING id INTO v_6256_bom_atom;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '足跡', 'tapak', 39, 70, '<kanji>Kaki</kanji> <kanji>jejak</kanji> adalah <vocabulary>jejak kaki</vocabulary>.', 'Bacaannya merupakan bacaan vocab kun''yomi kanji yang dirangkai.', 'Tapak')
    RETURNING id INTO v_6257_tapak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狙う', 'untuk-membidik', 39, 71, 'Ingat 狙い dan apa artinya "membidik"? Jadikan itu menjadi kata kerja, dan Anda memiliki <vocabulary>untuk dituju</vocabulary>.', 'Bacaannya berasal dari 狙い, jadi jika Anda mengetahuinya, Anda akan bisa <vocabulary>bertujuan</vocabulary> mengetahui bacaan kata ini juga.', 'Untuk Membidik, Untuk Membidik')
    RETURNING id INTO v_6258_untuk_membidik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '邦訳', 'terjemahan-ke-bahasa-jepang', 39, 72, '<kanji>negara asal</kanji> <kanji>terjemahan</kanji> adalah terjemahan ke bahasa negara asal Anda. Karena ini adalah kata dalam bahasa Jepang, terjemahan ini akan menjadi <vocabulary>terjemahan ke dalam bahasa Jepang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terjemahan Ke Bahasa Jepang, Versi Jepang')
    RETURNING id INTO v_6259_terjemahan_ke_bahasa_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '邦人', 'rekan-senegaranya', 39, 73, '<kanji>negara asal</kanji> <kanji>orang</kanji> adalah <vocabulary>sesama senegaranya</vocabulary> atau <vocabulary>compatriot</vocabulary> (hanya untuk orang Jepang saja). Di Jepang, Anda adalah <vocabulary>warga negara Jepang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rekan senegaranya, Nasional Jepang, Rekan senegaranya')
    RETURNING id INTO v_6260_rekan_senegaranya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '連邦', 'persemakmuran', 39, 74, '<kanji>Bawalah</kanji> <kanji>negara asal</kanji> Anda ke semua ruang lain yang ingin Anda tambahkan ke grup Anda. Gabungkan mereka untuk membentuk <vocabulary>commonwealth</vocabulary> atau <vocabulary>federation</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah terhadap ほう yang berubah menjadi ぽう!', 'Persemakmuran, Federasi')
    RETURNING id INTO v_6261_persemakmuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '呼び鈴', 'bel-pintu', 39, 75, '<kanji>buzzer</kanji> yang akan <kanji>memanggil</kanji> Anda ke pintu adalah <vocabulary>bel pintu</vocabulary>.', 'Bacaannya adalah bacaan 呼ぶ dan 鈴, disatukan.', 'Bel pintu')
    RETURNING id INTO v_6262_bel_pintu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鈴', 'lonceng-kecil', 39, 76, 'Arti kata ini berasal dari kanji. Itu adalah <vocabulary>lonceng kecil</vocabulary>!

鈴 biasanya mengacu pada lonceng kecil berbentuk bola yang bergemerincing atau berdenting — bayangkan lonceng kereta luncur atau lonceng di kalung anjing, atau lonceng yang tergantung di kuil Jepang yang dibunyikan pengunjung sebelum berdoa (meskipun ukurannya bisa bermacam-macam).', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Seseorang membunyikan <vocabulary>bel kecil</vocabulary> berulang kali. Itu adalah Ichiro <reading>Suzu</reading>ki (すず) yang menjengkelkan, membunyikan <vocabulary>bel kecil</vocabulary> itu. Saya pikir dia mencoba untuk memulai latihan.', 'Lonceng Kecil, Bel')
    RETURNING id INTO v_6263_lonceng_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '岐阜', 'gifu', 39, 77, '<kanji>cabang</kanji> <kanji>gundukan</kanji> adalah area di Jepang yang dikenal sebagai <vocabulary>Gifu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gifu')
    RETURNING id INTO v_6264_gifu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隆盛', 'kemakmuran', 39, 78, '<kanji>Kemakmuran</kanji> di <kanji>tumpukan</kanji> adalah banyak <vocabulary>kemakmuran</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kemakmuran')
    RETURNING id INTO v_6265_kemakmuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隆起', 'benjol', 39, 79, 'Ketika <kanji>kemakmuran</kanji> <kanji>bangun</kanji> ia akan mendorong apa pun yang ada di dalamnya dan menciptakan <vocabulary>tonjolan</vocabulary> atau <vocabulary>tonjolan</vocabulary>. Bayangkan saja ia mendorong keluar dinding, mencoba keluar, dan membuat tonjolan. Sangat makmur!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Berikut adalah mnemonik untuk pembacaan 起. Untuk keluar dari tonjolan ini, Anda menggunakan <reading>key</reading> (き). Kuncinya memungkinkan Anda keluar.', 'Benjol, Tonjolan')
    RETURNING id INTO v_6266_benjol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雇う', 'untuk-mempekerjakan', 39, 80, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mempekerjakan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to mempekerjakan</vocabulary>.', 'Anda akan <vocabulary>mempekerjakan</vocabulary> lebih banyak orang di bisnis Anda sehingga Anda dapat menghasilkan lebih banyak uang dan akhirnya membeli <reading>kapal pesiar</reading> (やと). Itulah kehidupan impian.', 'Untuk Mempekerjakan, Untuk Menyewa')
    RETURNING id INTO v_6267_untuk_mempekerjakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '解雇する', 'untuk-memecat-seseorang', 39, 81, 'Anda akan <kanji>melepaskan</kanji> orang yang ada di <kanji>pekerja</kanji> Anda agar tidak dipekerjakan bersama Anda. Mereka gratis. Artinya Anda memecat mereka, itulah sebabnya kata kerja ini berarti <vocabulary>memecat seseorang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Memecat Seseorang, Untuk Menembak')
    RETURNING id INTO v_6268_untuk_memecat_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雇用', 'pekerjaan', 39, 82, '<kanji>mempekerjakan</kanji> <kanji>tugas</kanji> adalah <vocabulary>pekerjaan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pekerjaan')
    RETURNING id INTO v_6269_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '壁', 'dinding', 39, 83, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah yang Anda pelajari dengan kanji!', 'Dinding')
    RETURNING id INTO v_6270_dinding;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '壁紙', 'kertas-dinding', 39, 84, '<kanji>kertas</kanji> <kanji>dinding</kanji> adalah <vocabulary>wallpaper</vocabulary>.', 'Bacaannya adalah bacaan kun''yomi. Itu yang kamu pelajari dengan 壁 dan pembacaan kosakata 紙, rendaku.', 'kertas dinding')
    RETURNING id INTO v_6271_kertas_dinding;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '棋士', 'pemain-shogi', 39, 85, '<kanji>Catur Jepang</kanji> <kanji>samurai</kanji> adalah seseorang yang bertarung di atas meja, bukan di medan perang, artinya dia adalah <vocabulary>pemain shogi</vocabulary> atau <vocabulary>pemain go</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemain Shogi, Ayo Pemain')
    RETURNING id INTO v_6272_pemain_shogi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '棋院', 'pergi-asosiasi', 39, 86, 'Anda tahu 棋 biasanya berarti "catur Jepang", namun ini berarti permainan papan <kanji>go</kanji>. Jadi apa itu "institusi go <kanji>"? Tempat bagi orang-orang yang suka pergi, tentu saja. Ini adalah <vocabulary>go Association</vocabulary> atau… <vocabulary>go Institution</vocabulary>.

棋院 adalah organisasi untuk pemain pro dan amatir. Mereka mengadakan turnamen, menetapkan peringkat, mengadakan pertandingan, dan sebagainya. Orang-orang juga berkumpul di sana untuk bermain go, jadi terkadang ini bisa diterjemahkan sebagai <vocabulary>go hall</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pergi Asosiasi, Pergi ke Institut, Pergi ke Aula')
    RETURNING id INTO v_6273_pergi_asosiasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '渋い', 'rasa-pahit', 39, 87, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Bentuk kata sifat dari <kanji>pahit</kanji> adalah <vocabulary>pahit</vocabulary>, atau lebih khusus lagi, <vocabulary>rasa pahit</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Dia memberi Anda makanan, dan itu sangat <vocabulary>pahit</vocabulary>. Anda melihat wanita yang memberi Anda makanan pahit ini. Anda mengatakan, "<reading>Dia boooo</reading>" seperti, dia tidak baik, dan dia menyajikan makanan pahit.', 'Rasa Pahit, Pahit')
    RETURNING id INTO v_6274_rasa_pahit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '片〜', 'fragmen', 39, 88, 'Sesuatu yang <kanji>sepihak</kanji> hanya memiliki satu sisi dan tidak keseluruhan. Itu hanyalah <vocabulary>satu dari sepasang</vocabulary> atau <vocabulary>fragmen</vocabulary> dari keseluruhan. Tempelkan ini ke kata lain dan Anda akan mendapatkan salah satu dari pasangan atau "tidak lengkap_____".', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Fragmen, Satu Dari Sepasang, Tidak lengkap')
    RETURNING id INTO v_6275_fragmen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '片手', 'satu-tangan', 39, 89, '<kanji>satu sisi</kanji> <kanji>tangan</kanji> adalah salah satu tangan Anda, artinya Anda melakukan sesuatu <vocabulary>dengan satu tangan</vocabulary>.', 'Bacaan ini adalah bacaan yang Anda pelajari dengan kedua kanji ini.', 'Satu Tangan')
    RETURNING id INTO v_6276_satu_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '片言', 'bahasa-rusak', 39, 90, '<kanji>Satu sisi</kanji> <kanji>mengatakan</kanji>mengatakan sesuatu berarti Anda tidak mengetahui kedua sisi bahasa tersebut, menyebabkan Anda berbicara dalam <vocabulary>bahasa yang rusak</vocabulary>, misalnya mengucapkan <vocabulary>beberapa kata</vocabulary> dalam <vocabulary>bahasa Jepang yang rusak</vocabulary> atau <vocabulary>bahasa Inggris yang rusak</vocabulary>.', 'Bacaannya adalah bacaan yang Anda pelajari untuk 片 dan こと dari 言葉.', 'Bahasa Rusak, Beberapa Kata, Bahasa Jepang yang rusak, Bahasa Inggris yang rusak')
    RETURNING id INTO v_6277_bahasa_rusak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '片仮名', 'katakana', 39, 91, '<kanji>Satu sisi</kanji> <kanji>kana</kanji> adalah <vocabulary>katakana</vocabulary>. Mungkin akan lebih mudah untuk membaca terlebih dahulu yang satu ini.', '片 adalah かた, dan 仮名 adalah かな. Gabungkan keduanya untuk mendapatkan <vocabulary>katakana</vocabulary>.', 'Katakana')
    RETURNING id INTO v_6278_katakana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '片道', 'satu-arah', 39, 92, '<kanji>jalan satu sisi</kanji> <kanji>jalan</kanji> hanya untuk <vocabulary>satu arah</vocabulary> saja, karena semuanya berjalan dalam satu arah.', 'Bacaannya adalah bacaan kun''yomi. Anda sudah mempelajari bacaannya dari 片, dan 道 adalah bacaan kosakata みち.', 'SATU ARAH')
    RETURNING id INTO v_6279_satu_arah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '群れ', 'kawanan', 39, 93, 'Ini adalah versi kata benda dari kanji, menjadikannya <vocabulary>flock</vocabulary>.', '<vocabulary>kawanan</vocabulary>? Sekawanan <read>sapi</reading> (む)! Bayangkan sekawanan sapi, mungkin terbang seperti burung, karena kawanan biasanya ada hubungannya dengan burung.', 'Kawanan')
    RETURNING id INTO v_6280_kawanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '群馬県', 'prefektur-gunma', 39, 94, '<kanji>kawanan</kanji> di <kanji>kuda</kanji>prefektur</kanji> adalah bagian dari Jepang yang dikenal sebagai <vocabulary>Prefektur Gunma</vocabulary>.', 'Pembacaan untuk 群 dan 県 baik-baik saja, tetapi Anda belum mempelajari bacaan ini untuk 馬, jadi inilah mnemonik yang dapat membantu Anda:

<vocabulary>Prefektur Gunma</vocabulary> adalah tempat <reading>ma</reading>ma (ま) Anda tinggal! Bayangkan kembali ke rumah ibumu, dan menemukannya sekarang berada di Prefektur Gunma. Ini sedikit mengejutkan, tapi sangat berguna untuk melatih bahasa Jepang Anda. Terima kasih mama!', 'Prefektur Gunma')
    RETURNING id INTO v_6281_prefektur_gunma;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '群集', 'kerumunan', 39, 95, '<kanji>kawanan</kanji> yang telah <kanji>berkumpul</kanji> adalah <vocabulary>kerumunan</vocabulary> dan <vocabulary>banyak</vocabulary>. Sebab, banyak hal yang berkumpul.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kerumunan, Orang banyak')
    RETURNING id INTO v_6282_kerumunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仙人', 'pertapa', 39, 96, '<kanji>pertapa</kanji> <kanji>orang</kanji> adalah <vocabulary>pertapa</vocabulary> atau <vocabulary>manusia gunung</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pertapa, Manusia Gunung')
    RETURNING id INTO v_6283_pertapa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水仙', 'bakung', 39, 97, '<kanji>air</kanji> <kanji>pertapa</kanji>, karena alasan tertentu, adalah <vocabulary>daffodil</vocabulary>. Bayangkan saja seorang pertapa air menari-nari memetik <vocabulary>daffodil</vocabulary>, karena dia menyukainya! Yayyy bunga bakung!!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bakung')
    RETURNING id INTO v_6284_bakung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仙台', 'sendai', 39, 98, '<kanji>pertapa</kanji> <kanji>mesin</kanji> adalah mesin raksasa yang hidup di wilayah <vocabulary>Sendai</vocabulary> Jepang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sendai')
    RETURNING id INTO v_6285_sendai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '充実', 'kesempurnaan', 39, 99, '<kanji>Alokasikan</kanji> <kanji>kebenaran</kanji> lebih banyak lagi untuk menjadikan segalanya lebih baik. Kenyataannya adalah, kita perlu mengalokasikan lebih banyak lagi, sampai kita mencapai <vocabulary>kepenuhan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesempurnaan, Memperkuat')
    RETURNING id INTO v_6286_kesempurnaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '充電', 'isi-ulang', 39, 100, '<kanji>Alokasikan</kanji> <kanji>listrik</kanji> kembali ke baterai dengan <vocabulary>isi ulang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Isi ulang')
    RETURNING id INTO v_6287_isi_ulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '補充', 'pasokan-ulang', 39, 101, 'Mengambil <kanji>suplemen</kanji> dan <kanji>mengalokasikan</kanji> ke tempat yang diperlukan berarti <vocabulary>memasok</vocabulary> atau <vocabulary>mengisi ulang</vocabulary> sesuatu.

補充 berarti mengisi kekosongan ketika ada kekurangan. Ini digunakan untuk hal-hal seperti <vocabulary>mengisi kembali</vocabulary>persediaan, mengganti apa yang telah digunakan, atau menambah lebih banyak staf untuk memenuhi permintaan. Tujuannya adalah mengembalikan segala sesuatunya ke tingkat yang diperlukan atau lengkap.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pasokan ulang, Isi ulang, Memperlengkapi')
    RETURNING id INTO v_6288_pasokan_ulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '免れる', 'untuk-melarikan-diri-dari-sesuatu', 39, 102, 'Anda akan <kanji>memaafkan</kanji> dari situasi tersebut, dan untuk melakukan itu, Anda harus <vocabulary>melarikan diri dari</vocabulary> orang/benda yang mencoba menahan Anda di sana untuk <vocabulary>menghindari</vocabulary> mereka.', 'Untuk melakukan itu, kamu masuk ke dalam mobil <reading>man(u)</reading> (まぬか) milikmu yang merupakan mobil untuk pria tangguh(u) yang perlu mengemudi dengan cepat, sama seperti kamu.', 'Untuk Melarikan Diri dari Sesuatu, Untuk Menghindari Sesuatu')
    RETURNING id INTO v_6289_untuk_melarikan_diri_dari_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '免状', 'sertifikat', 39, 103, '<kanji>alasan</kanji> Anda untuk <kanji>kondisi</kanji> saat ini sungguh mengejutkan, terutama mengingat <vocabulary>diploma</vocabulary> dan <vocabulary>lisensi</vocabulary> Anda tentang masalah ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sertifikat, Lisensi, Diploma')
    RETURNING id INTO v_6290_sertifikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '免許', 'lisensi', 39, 104, 'Anda mempunyai <kanji>alasan</kanji> yang <kanji>mengizinkan</kanji> Anda melakukan apa yang Anda inginkan. Ini adalah <vocabulary>lisensi</vocabulary> dan <vocabulary>sertifikat</vocabulary> yang memungkinkan Anda melakukan hal ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lisensi, Sertifikat, Izin')
    RETURNING id INTO v_6291_lisensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '免税', 'pembebasan-pajak', 39, 105, 'Sebuah <kanji>alasan</kanji> dari <kanji>pajak</kanji>es? Itu adalah <vocabulary>pembebasan pajak</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pembebasan Pajak')
    RETURNING id INTO v_6292_pembebasan_pajak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '御免', 'maaf', 39, 106, 'Hanya <kanji>terhormat</kanji> <kanji>alasan</kanji> yang kumiliki, dan itu tidak baik. Saya <vocabulary>maaf</vocabulary> dan <vocabulary>Saya mohon maaf</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Maaf, Saya Mohon Maaf')
    RETURNING id INTO v_6293_maaf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '免除', 'pembebasan', 39, 107, 'Untuk <kanji>memaafkan</kanji> dan <kanji>mengecualikan</kanji>, itulah <vocabulary>pengecualian</vocabulary>.

免除 berarti memberikan keringanan atau pembebasan dari tugas atau kewajiban yang seharusnya diperlukan, seperti membayar biaya sekolah, membayar hutang, memperoleh izin khusus untuk kegiatan tertentu, dan sebagainya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pembebasan, Membebaskan')
    RETURNING id INTO v_6294_pembebasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勧告', 'rekomendasi', 39, 108, 'Jika Anda mengambil apa yang Anda <kanji>rekomendasikan</kanji> dan <kanji>mengumumkannya</kanji> kepada dunia, Anda membuat <vocabulary>rekomendasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rekomendasi, Saran Resmi')
    RETURNING id INTO v_6296_rekomendasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '圏外', 'di-luar-jangkauan', 39, 109, '<kanji>rentang</kanji> berada <kanji>di luar</kanji> jangkauan, artinya Anda <vocabulary>di luar jangkauan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Di Luar Jangkauan')
    RETURNING id INTO v_6298_di_luar_jangkauan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '英語圏', 'dunia-berbahasa-inggris', 39, 110, '<kanji>Bahasa Inggris</kanji> <kanji>rentang</kanji> adalah area di mana orang berbicara bahasa Inggris, alias <vocabulary>Dunia Berbahasa Inggris</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dunia Berbahasa Inggris')
    RETURNING id INTO v_6299_dunia_berbahasa_inggris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '南極圏', 'lingkaran-kutub-selatan', 39, 111, 'Ingat bagaimana 南極 berarti "Kutub Selatan" atau "Antartika"? Tambahkan <kanji>rentang</kanji> ke kata tersebut dan Anda akan mendapatkan wilayah yang dikenal sebagai <vocabulary>Lingkaran Antartika</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan on''yomi ketiga kanji. Anda juga pernah melihat kosakata 南極 sebelumnya, jadi Anda seharusnya setuju dengan yang ini!', 'Lingkaran Kutub Selatan, Antartika')
    RETURNING id INTO v_6300_lingkaran_kutub_selatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '埼玉県', 'prefektur-saitama', 39, 112, '<kanji>tanjung</kanji> <kanji>bola</kanji> <kanji>prefektur</kanji> adalah <vocabulary>Prefektur Saitama</vocabulary>.', 'Bacaannya adalah bacaan kun''yomi 埼 dan 玉, dan bacaan biasa untuk 県.', 'Prefektur Saitama')
    RETURNING id INTO v_6302_prefektur_saitama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奪う', 'untuk-merampok', 39, 113, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>merampok</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to rob</vocabulary>.', 'Pembacaan ini sama dengan yang Anda pelajari dengan kanji.', 'Untuk merampok, Untuk Mencuri Dengan Paksa')
    RETURNING id INTO v_6303_untuk_merampok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '御飯', 'nasi', 39, 114, '<kanji>terhormat</kanji> <kanji>makanan</kanji> adalah <vocabulary>nasi</vocabulary>. Ini adalah makanan Jepang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nasi, Makanan')
    RETURNING id INTO v_6304_nasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '御覧になる', 'untuk-melihat', 39, 115, 'Tambahkan 御 kecil <kanji>terhormat</kanji> untuk <kanji>dilihat</kanji> seseorang saat Anda ingin menunjukkan rasa hormat kepada mereka. 御覧になる adalah bentuk kehormatan dari 見る, sehingga tetap berarti <vocabulary>melihat</vocabulary>, <vocabulary>melihat</vocabulary>, atau <vocabulary>menonton</vocabulary>, namun dengan nada yang lebih hormat.

Anda akan sering menggunakannya ketika seseorang yang berstatus lebih tinggi dari Anda sedang berpenampilan dan Anda ingin terdengar seperti orang dewasa yang sopan dan sopan yang menunjukkan rasa hormat yang pantas kepada mereka. Ingatlah bahwa huruf 御 pertama sering kali ditulis dalam huruf kana, seperti ご覧になる.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Melihat, Untuk Melihat, Untuk Menonton')
    RETURNING id INTO v_6305_untuk_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '慎む', 'bersikap-bijaksana', 39, 116, 'Jika Anda memiliki <kanji>kerendahan hati</kanji> Anda akan mencoba <vocabulary>berhati-hati</vocabulary>.', 'Mengapa Anda <vocabulary>berhati-hati</vocabulary>? Karena <reading>tutu yang dia</reading> (つつし) kenakan sungguh memalukan.', 'Bersikap Bijaksana, Untuk Berhati-hati')
    RETURNING id INTO v_6306_bersikap_bijaksana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '慎重', 'bijaksana', 39, 117, '<kanji>Kerendahan hati</kanji> itu <kanji>berat</kanji>, jadi sebaiknya tidak ada yang tahu rahasiamu. Anda sebaiknya <vocabulary>berhati-hati</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda hanya perlu mengingat bacaan alternatif untuk 重. Jika kamu tidak hati-hati atau berhati-hati, Nyonya <reading>Chou</reading> (ちょう) yang jahat akan menemukanmu dan membunuhmu!', 'Bijaksana, Hati-hati')
    RETURNING id INTO v_6307_bijaksana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拒む', 'menolak', 39, 118, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menolak</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menolak</vocabulary>.', 'Apa yang kamu tolak? Anda menolak seorang anak, karena semua anak itu jahat. Anda mengucapkan "<reading>子 ba</reading>d, <reading>子 ba</reading>d" berulang kali.', 'Menolak, Untuk Menolak')
    RETURNING id INTO v_6308_menolak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拒否', 'penolakan', 39, 119, 'Saya <kanji>menolak</kanji>. Saya mengatakan "<kanji>tidak</kanji>." Itulah <vocabulary>penolakan</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penolakan, Penolakan')
    RETURNING id INTO v_6309_penolakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '枠', 'bingkai', 39, 120, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Bingkai, Membatasi')
    RETURNING id INTO v_6310_bingkai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '枠組み', 'bingkai', 39, 121, '<kanji>frame</kanji> <kanji>group</kanji> adalah <vocabulary>frame</vocabulary> atau <vocabulary>framework</vocabulary>.', 'Pembacaannya adalah pembacaan 枠 dan pembacaan vocab kata 組み. Hati-hati dengan rendaku.', 'Bingkai, Kerangka')
    RETURNING id INTO v_6311_bingkai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '甲', 'cangkang-penyu', 39, 122, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

甲 secara tradisional berarti <kosa kata>cangkang kura-kura</vocabulary>, namun kini kata tersebut lebih sering muncul dalam ungkapan seperti 足の甲 (<vocabulary>punggung kaki</vocabulary>) dan 手の甲 (<vocabulary>punggung tangan</vocabulary>). Kalau dipikir-pikir, bagian tubuh itu mirip seperti cangkang kura-kura ya?', 'Kata ini terdiri dari satu kanji, namun menggunakan bacaan on''yomi, bukan bacaan kun''yomi. Untungnya, Anda sudah mempelajari bacaan ini. Hore!', 'Cangkang Penyu, Punggung kaki, Punggung Tangan')
    RETURNING id INTO v_6312_cangkang_penyu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '甲斐', 'bernilai', 39, 123, '<kanji>cangkang penyu</kanji> yang <kanji>berpola</kanji> memiliki lebih banyak <vocabulary>nilai</vocabulary> dibandingkan cangkang penyu yang tidak berpola dan membosankan. Mungkin juga memiliki <vocabulary>efek</vocabulary> yang lebih baik jika Anda melemparkannya ke lawan dalam lomba go-kart atau semacamnya — cobalah dan lihat apa <vocabulary>hasil</vocabulary>!

甲斐 tidak berarti "bernilai" dalam arti nilai uang, melainkan dalam arti bahwa beberapa tindakan yang Anda lakukan membuahkan hasil atau layak dilakukan. Biasanya Anda akan melihatnya dipasangkan dengan kata kerja atau kata benda lainnya, seperti 苦労の甲斐があった (itu sepadan dengan usahanya) atau 頑張った甲斐があった (usaha keras membuahkan hasil).', 'Anda belum mempelajari bacaan ini untuk 甲, jadi inilah mnemonik untuk membantu Anda:

Ada baiknya <vocabulary>worth</vocabulary> membuang cangkang penyu dari <reading>ca</reading>r (か) Anda dan mencoba menabrak mobil lain. Memang sedikit berbahaya, tapi <vocabulary>efek</vocabulary> adalah mobil lain akan melambat atau terjatuh, yang <vocabulary>akibat</vocabulary> mobil Anda akan menyalip mereka. Sangat berharga.', 'Bernilai, Memengaruhi, Hasil')
    RETURNING id INTO v_6313_bernilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '福祉', 'kesejahteraan', 39, 124, 'Anda memiliki banyak <kanji>keberuntungan</kanji> dalam <kanji>kesejahteraan</kanji> Anda, membuat Anda memiliki <vocabulary>kesejahteraan</vocabulary> dan <vocabulary>kesejahteraan</vocabulary> yang baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesejahteraan, Kesejahteraan')
    RETURNING id INTO v_6314_kesejahteraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '稲', 'tanaman-padi', 39, 125, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan いね dari kanji ini. Anda dapat menganggapnya seperti Anda mengatakan "いいね!" pada tanaman padi yang sedang Anda lihat (perpendek saja い).', 'Tanaman Padi')
    RETURNING id INTO v_6315_tanaman_padi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '稲田', 'sawah', 39, 126, '<kanji>tanaman padi</kanji> <kanji>sawah</kanji> adalah <vocabulary>sawah</vocabulary> atau <vocabulary>sawah</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk 稲 (いな) dan 田 dengan rendaku (だ). Anda mungkin belum familiar dengan bacaan いな, tapi ini muncul di banyak kata majemuk yang menggunakan 稲, jadi ada baiknya Anda mengetahuinya. Berikut ini mnemonik untuk membantu:

Ada permainan perjalanan darat yang populer di Jepang di mana setiap kali Anda melewati sawah, Anda harus <reading>ea</reading>t <reading>na</reading>chos (いな). Lihat sawah? Makan nacho. Dan jika Anda pernah berkendara melewati pedesaan Jepang, Anda pasti tahu berapa banyak sawah (dan makan nacho) yang jumlahnya. Saya pernah menambah berat badan lima pon dalam dua jam dalam perjalanan melalui Niigata… Itu tidak bagus. Tapi sawahnya.', 'Sawah, Sawah, Sawah')
    RETURNING id INTO v_6316_sawah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '稲作', 'budidaya-padi', 39, 127, 'Jika Anda <kanji>membuat</kanji> <kanji>tanaman padi</kanji> maka Anda sedang melakukan <vocabulary>budidaya padi</vocabulary>, karena Anda membuatnya dari benih hingga panen dan melakukan semuanya!', 'Kata ini menggunakan bacaan kun''yomi untuk 稲 (いな) dan bacaan on''yomi biasa untuk 作. Anda mungkin belum familiar dengan bacaan いな, tapi ini muncul di banyak kata majemuk yang menggunakan 稲, jadi ada baiknya Anda mengetahuinya. Berikut ini mnemonik untuk membantu:

Saat anda melakukan <vocabulary>bercocok tanam padi</vocabulary>, anda harus <reading>makan</reading>t <reading>na</reading>chos (いな). Anda membutuhkan semua kalori dan karbohidrat dari beberapa nacho yang diisi untuk bersiap menghadapi kerja keras menanam padi, Anda tahu? Mmm, Anda akan dengan senang hati bercocok tanam padi setiap hari jika itu berarti Anda bisa makan nacho.', 'Budidaya Padi, Tanaman Padi')
    RETURNING id INTO v_6317_budidaya_padi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '譲る', 'untuk-mengakui', 39, 128, 'Jika Anda akan <kanji>menundukkan</kanji> kepada seseorang, Anda akan <vocabulary>mengakui</vocabulary> sesuatu. Saya mengakui/menunda ini kepada Anda.', 'Apa yang kamu akui? Beberapa <read>yuzu</reading> (ゆず) yang lezat. Anda sedih karena rasanya jauh lebih baik daripada lemon dan sekarang Anda tidak memilikinya.', 'Untuk Mengakui, Untuk Menyerahkan, Untuk Menyerahkan')
    RETURNING id INTO v_6318_untuk_mengakui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '移譲', 'transfer', 39, 129, '<kanji>Menggeser</kanji> sesuatu dan <kanji>menunda</kanji> di tempat lain. Ini adalah <vocabulary>transfer</vocabulary> atau <vocabulary>tugas</vocabulary>.

Ini adalah istilah formal yang digunakan untuk menggambarkan pengalihan hak, properti, atau kewajiban secara hukum, sehingga paling sering terlihat dalam dokumen resmi atau hukum.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Transfer, Penugasan')
    RETURNING id INTO v_6319_transfer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '謙譲語', 'orang-jepang-yang-rendah-hati', 39, 130, '<kanji>Bahasa</kanji> saat Anda <kanji>menunda</kanji> pada <kanji>kesopanan</kanji> adalah <vocabulary>bahasa Jepang yang rendah hati</vocabulary>. Tentu saja, ini tidak harus mengacu pada bahasa Jepang, meskipun biasanya memang demikian, artinya ini bisa berarti <vocabulary>bahasa yang sederhana</vocabulary> juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'orang Jepang yang rendah hati, Bahasa Rendah Hati')
    RETURNING id INTO v_6320_orang_jepang_yang_rendah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '謙虚', 'kesopanan', 39, 131, '<kanji>kesopanan</kanji> <kanji>kekosongan</kanji> adalah lubang besar yang Anda masuki ketika Anda menunjukkan <vocabulary>kesopanan</vocabulary> atau <vocabulary>kerendahan hati</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesopanan, Kerendahhatian')
    RETURNING id INTO v_6321_kesopanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '躍る', 'untuk-melompat', 39, 132, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melompat</kanji> sehingga versi vocab verbanya berarti <vocabulary>melompat</vocabulary>. Ini juga berarti <vocabulary>melompat</vocabulary> atau <vocabulary>memantul</vocabulary>.', 'Anda <vocabulary>melompat</vocabulary> dan melompat lagi. Anda melakukannya terlalu sering hingga Anda mulai berkeringat, yang menyebabkan <reading>odo</reading>r (おど) busuk keluar dari tubuh Anda.', 'Untuk Melompat, Untuk Melompat, Untuk Bangkit')
    RETURNING id INTO v_6322_untuk_melompat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '活躍', 'partisipasi-aktif', 39, 133, '<kanji>yang hidup</kanji> <kanji>lompatan</kanji> adalah apa yang Anda lakukan ketika Anda memiliki <vocabulary>partisipasi aktif</vocabulary> dalam suatu <vocabulary>aktivitas</vocabulary> dan sering kali menemukan <vocabulary>sukses</vocabulary> dan <vocabulary>berhasil</vocabulary>.

Kata ini biasanya digunakan untuk menggambarkan aktivitas seseorang yang luar biasa atau luar biasa dalam olahraga, karier, atau bidang atau aktivitas tertentu. Lihatlah kombinasi kata umum untuk beberapa contoh penggunaan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Partisipasi Aktif, Aktivitas, Kesuksesan, Lakukan yang Hebat')
    RETURNING id INTO v_6324_partisipasi_aktif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '跳躍', 'melompat', 39, 134, 'Jika Anda <kanji>melompat</kanji> dan <kanji>melompat</kanji> ke udara, Anda mungkin sedang melakukan <vocabulary>melompat</vocabulary> dan <vocabulary>melompat</vocabulary> ke udara.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Melompat, Melompat, Melompat, Melewati')
    RETURNING id INTO v_6327_melompat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銃', 'pistol', 39, 135, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Pistol, Senjata api')
    RETURNING id INTO v_6328_pistol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銃殺', 'kematian-karena-penembakan', 39, 136, '<kanji>senjata</kanji> <kanji>membunuh</kanji> adalah <vocabulary>kematian dengan menembak</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kematian Karena Penembakan')
    RETURNING id INTO v_6329_kematian_karena_penembakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銃弾', 'peluru-senapan', 39, 137, '<kanji>peluru</kanji> dari <kanji>senjata</kanji> adalah <vocabulary>peluru</vocabulary>, meskipun kata ini dapat secara khusus merujuk pada <vocabulary>peluru senapan</vocabulary> juga (mungkin karena sebagian besar orang-orang pada masa itu menggunakan senapan).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peluru Senapan, Peluru')
    RETURNING id INTO v_6330_peluru_senapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '短銃', 'pistol', 39, 138, '<kanji>senapan</kanji> pendek</kanji> adalah <vocabulary>pistol</vocabulary>, karena tidak panjang seperti senapan, melainkan senjata pendek!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pistol, Pistol')
    RETURNING id INTO v_6331_pistol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '項目', 'barang', 39, 139, 'Anda perlu membaca <kanji>paragraf</kanji> dalam beberapa bagian yang mudah dilihat dengan <kanji>mata</kanji> Anda sehingga Anda dapat membaginya berdasarkan <vocabulary>item</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Berikut ini mnemonik untuk membantu Anda dengan 目. Jika Anda tidak dapat melihat <vocabulary>item</vocabulary> ini di paragraf dengan mata Anda, seseorang pasti akan <reading>mengejek</reading> (もく) Anda.', 'Barang, Pintu masuk, Ayat, Barang Data')
    RETURNING id INTO v_6332_barang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '事項', 'urusan', 39, 140, 'Anda tahu 事 berarti "kejadian", tetapi bisa juga berarti "materi". Jadi <kanji>masalah</kanji> <kanji>paragraf</kanji> menunjukkan <vocabulary>masalah</vocabulary>, <vocabulary>item</vocabulary>, atau <vocabulary>subyek</vocabulary> yang membentuk isu atau diskusi yang lebih besar.

事項 adalah kata formal yang biasanya terlihat di akhir frasa lain yang menjelaskan hal atau hal apa yang dimaksud, seperti 注意事項 (hal yang perlu diperhatikan) atau 協議事項 (hal yang perlu didiskusikan).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Urusan, Barang, Subjek')
    RETURNING id INTO v_6333_urusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '要項', 'poin-penting', 39, 141, '<kanji>paragraf</kanji>yang diperlukan</kanji> berisi <vocabulary>poin-poin penting</vocabulary> dari apa yang ingin Anda katakan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Poin Penting, Poin Utama')
    RETURNING id INTO v_6334_poin_penting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鋼', 'baja', 39, 142, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Anda lihatlah <vocabulary>baja</vocabulary>. Bentuknya seperti seseorang. Ternyata kamu mengubah perempuan itu menjadi patung baja. Anda berkata, "ya, itu <reading>wanita ね</reading>?" (はがね). Ups, maaf wanita tua itu.', 'Baja')
    RETURNING id INTO v_6335_baja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鋼材', 'bahan-baja', 39, 143, '<kanji>Baja</kanji> <kanji>bahan</kanji> adalah <vocabulary>bahan baja</vocabulary>. Ledakan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bahan Baja')
    RETURNING id INTO v_6336_bahan_baja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '製鋼', 'pembuatan-baja', 39, 144, 'Jika Anda <kanji>memproduksi</kanji> <kanji>baja</kanji> itu adalah <vocabulary>pembuatan baja</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pembuatan Baja')
    RETURNING id INTO v_6337_pembuatan_baja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掲載する', 'untuk-menerbitkan', 39, 145, '掲載 adalah <kanji>publikasi</kanji> jadi versi kata kerjanya adalah <vocabulary>menerbitkan</vocabulary> atau <vocabulary>mencetak</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Juga akan membantu untuk mengetahui 掲載 juga.', 'Untuk Menerbitkan, Untuk Mencetak')
    RETURNING id INTO v_7511_untuk_menerbitkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '囚人', 'tawanan', 39, 146, '<kanji>penjahat</kanji> <kanji>orang</kanji> akan berakhir sebagai <vocabulary>tahanan</vocabulary> atau <vocabulary>napi</vocabulary> jika mereka tertangkap!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tawanan, Tahanan')
    RETURNING id INTO v_8604_tawanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '死刑囚', 'dikutuk-kriminal', 39, 147, 'Ingat bagaimana Anda mengetahui bahwa 死刑 berarti "hukuman mati?" Nah, <kanji>penjahat</kanji> yang telah dijatuhi hukuman tersebut adalah <vocabulary>penjahat terkutuk</vocabulary> atau <vocabulary>terpidana hukuman mati</vocabulary>. Mereka dijatuhi hukuman mati.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dikutuk Kriminal, Terpidana Mati')
    RETURNING id INTO v_8605_dikutuk_kriminal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '控え', 'cadangan', 39, 148, 'Sesuatu yang bisa <kanji>menjauhkan</kanji> sampai dibutuhkan akan menghasilkan <vocabulary>cadangan</vocabulary> yang baik. Pikirkanlah — Anda tidak ingin pencadangan dilakukan terlalu dini, bukan? Sebaiknya abstain sampai cadangan benar-benar diperlukan.

Perhatikan bahwa 控え tidak digunakan untuk suku cadang dan tambahan. Ini lebih untuk cadangan yang diperlukan, seperti pemain cadangan dalam olahraga, <vocabulary>salinan</vocabulary> dokumen untuk pencatatan, atau <vocabulary>receipt stub</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda sudah mempelajari bacaan ini! Bagus untukmu!', 'Cadangan, Menyimpan, Meluangkan, Menyalin, Rintisan')
    RETURNING id INTO v_8690_cadangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '依然', 'tetap', 39, 149, 'Jika kamu memiliki <kanji>ketergantungan</kanji> <kanji>sifat</kanji>, bahkan jika kamu pergi sendiri, kamu <vocabulary>masih</vocabulary> akan meminta bantuan. Orang yang ketergantungan masih membutuhkan bantuan karena memang begitulah adanya.

Perhatikan bahwa Anda perlu menambahkan と di akhir kata ini untuk menjadikannya kata keterangan, dan たる untuk menjadikannya kata sifat!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tetap, Masih, Seperti Apa adanya')
    RETURNING id INTO v_8727_tetap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眉毛', 'alis', 39, 150, '<kanji>rambut</kanji> <kanji>alis</kanji> adalah masing-masing rambut <vocabulary>alis</vocabulary> yang membentuknya.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda sudah mempelajari keduanya, jadi Anda harus bisa membaca ini! Hati-hati dengan rendaku yang mengubah bacaan 毛 menjadi げ.', 'Alis')
    RETURNING id INTO v_8874_alis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宛名', 'penerima', 39, 151, '<kanji>alamat</kanji> <kanji>nama</kanji> adalah nama yang ada pada alamat, menjadikannya <vocabulary>penerima</vocabulary>. Ini juga bisa berarti <vocabulary>nama dan alamat</vocabulary>.

Ini dapat digunakan untuk surat fisik dan email.', 'Pembacaan 宛 sama dengan yang Anda pelajari untuk kanji. Pembacaan 名 berasal dari bacaan kun''yomi yang telah kamu pelajari pada kosakata 名 dan 名前. Jadi, bacaan untuk kata ini adalah <reading>あてな</reading>.', 'Penerima, Nama, Alamat, Nama dan Alamat')
    RETURNING id INTO v_8919_penerima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '由緒正しい', 'dari-silsilah-yang-terhormat', 39, 152, 'Seseorang atau sesuatu yang 由緒 (garis keturunannya) 正しい (benar) adalah <vocabulary>dari garis keturunan yang terhormat</vocabulary>, dan memang <vocabulary>terhormat</vocabulary>.', 'Anda sudah mengetahui bacaan 由緒 dan 正しい jadi Anda hanya perlu menggabungkannya untuk membaca kata ini.', 'Dari Silsilah Yang Terhormat, Tua')
    RETURNING id INTO v_9069_dari_silsilah_yang_terhormat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '梅雨', 'musim-hujan', 39, 153, 'Pada musim <kanji>ume</kanji>, <kanji>hujan</kanji> sering terjadi di Jepang (dan beberapa negara Asia Timur lainnya). Itu sebabnya <kanji>ume</kanji> <kanji>hujan</kanji> berarti <vocabulary>musim hujan</vocabulary>. Biasanya terjadi pada akhir Mei hingga pertengahan Juli, saat ume bersiap untuk dipanen. 

Ingatlah bahwa ini adalah kata musiman yang unik di Jepang dan Asia Timur, jadi Anda biasanya tidak menggunakannya untuk merujuk pada musim hujan yang terjadi di wilayah lain di dunia.', 'Kata ini menggunakan bacaan yang luar biasa, jadi jangan mencoba membacanya dengan bacaan kanji yang sudah Anda pelajari. Berikut ini mnemonik untuk membantu Anda:

<vocabulary>Musim hujan</vocabulary> adalah musim yang spesial <reading>bagimu</reading> (つゆ). Semua hal favoritmu sepanjang tahun terjadi saat musim hujan, seperti… berdiam diri di dalam rumah sepanjang hari karena yang terjadi hanyalah hujan! Tapi bagimu, tidak ada yang lebih baik dari musim hujan.', 'Musim hujan')
    RETURNING id INTO v_9271_musim_hujan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腫れる', 'membengkak', 39, 154, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membengkak</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to swell</vocabulary> atau <vocabulary>to be inflamasi</vocabulary>.

腫れる digunakan ketika bagian tubuh terlihat membengkak, seperti wajah bengkak, gigitan serangga, atau mata bengkak karena menangis.', 'Bacaannya sama dengan yang kamu pelajari dengan kanji, dan itu pasti… hebat.', 'Membengkak, Menjadi Meradang')
    RETURNING id INTO v_9455_membengkak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '覗き込む', 'untuk-melihat-ke-dalam', 39, 155, 'Anda tahu bahwa 覗く berarti "mengintip", dan kanji 込 berarti <kanji>ke dalam</kanji>, jadi ini berarti <vocabulary>melihat ke dalam</vocabulary> atau <vocabulary>mengintip</vocabulary>.

覗き込む adalah versi yang lebih aktif dari 覗く, yang berarti "bersandar dan melihat lebih dekat pada sesuatu", seringkali dengan niat yang sungguh-sungguh. Tergantung pada konteksnya, ini juga dapat menyampaikan perasaan yang mendalam, seperti Anda mencoba melihat lebih dari sekadar permukaan sesuatu.', 'Bacaannya berasal dari kata 覗く dan kanji 込 yang disatukan.', 'Untuk Melihat Ke Dalam, Untuk Mengintip')
    RETURNING id INTO v_9491_untuk_melihat_ke_dalam;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4033_kesombongan, 'Kesombongan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4123_doa, 'Doa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4123_doa, 'Berdoa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4123_doa, 'Berharap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5022_menjadi_rugi, 'Menjadi Rugi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5022_menjadi_rugi, 'Menjadi Bingung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5780_merah_tua, 'Merah Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5780_merah_tua, 'Merah tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5780_merah_tua, 'pemerah pipi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6114_parfum, 'Parfum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6114_parfum, 'Aroma', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6180_putar_ganda, 'Putar Ganda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6239_shogi, 'Shogi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6239_shogi, 'Catur Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6239_shogi, 'Shougi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6240_ahli_waris, 'Ahli waris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6240_ahli_waris, 'Ahli waris perempuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6240_ahli_waris, 'Penerus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6241_untuk_melompat, 'Untuk Melompat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6241_untuk_melompat, 'Untuk Melompat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6241_untuk_melompat, 'Untuk Melompat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6242_lompat_tali, 'Lompat Tali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6242_lompat_tali, 'Lompat Tali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6243_untuk_melamar, 'Untuk Melamar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6243_untuk_melamar, 'Untuk Mendaftar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6243_untuk_melamar, 'Untuk Menjawab Sebuah Iklan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6244_lari_rumah, 'Lari Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6244_lari_rumah, 'Homer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6245_untuk_runtuh, 'Untuk Runtuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6245_untuk_runtuh, 'Runtuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6246_untuk_membayar, 'Untuk Membayar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6246_untuk_membayar, 'Untuk Mengembalikan Dana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6246_untuk_membayar, 'Untuk Mengganti Biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6247_untuk_memainkan_alat_musik_petik, 'Untuk Memainkan Alat Musik Petik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6247_untuk_memainkan_alat_musik_petik, 'Untuk Bermain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6248_pilihan_kata, 'Pilihan Kata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6248_pilihan_kata, 'Penggunaan Kata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6248_pilihan_kata, 'Susunan kata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6249_uang_saku, 'Uang saku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6249_uang_saku, 'Uang belanja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6250_untuk_menghapus, 'Untuk Menghapus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6250_untuk_menghapus, 'Untuk menghilangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6251_papan_buletin, 'Papan Buletin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6252_kemacetan_lalu_lintas, 'Kemacetan lalu lintas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6252_kemacetan_lalu_lintas, 'Kemacetan Lalu Lintas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6253_sekarang_mempekerjakan, 'Sekarang Mempekerjakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6253_sekarang_mempekerjakan, 'Sekarang Merekrut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6254_jalan_kembali, 'Jalan Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6254_jalan_kembali, 'Jalan Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6255_untuk_mengambil_kembali, 'Untuk Mengambil Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6256_bom_atom, 'Bom Atom', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6257_tapak, 'Tapak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6258_untuk_membidik, 'Untuk Membidik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6258_untuk_membidik, 'Untuk Membidik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6259_terjemahan_ke_bahasa_jepang, 'Terjemahan Ke Bahasa Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6259_terjemahan_ke_bahasa_jepang, 'Versi Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6260_rekan_senegaranya, 'Rekan senegaranya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6260_rekan_senegaranya, 'Nasional Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6260_rekan_senegaranya, 'Rekan senegaranya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6261_persemakmuran, 'Persemakmuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6261_persemakmuran, 'Federasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6262_bel_pintu, 'Bel pintu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6263_lonceng_kecil, 'Lonceng Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6263_lonceng_kecil, 'Bel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6264_gifu, 'Gifu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6265_kemakmuran, 'Kemakmuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6266_benjol, 'Benjol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6266_benjol, 'Tonjolan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6267_untuk_mempekerjakan, 'Untuk Mempekerjakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6267_untuk_mempekerjakan, 'Untuk Menyewa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6268_untuk_memecat_seseorang, 'Untuk Memecat Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6268_untuk_memecat_seseorang, 'Untuk Menembak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6269_pekerjaan, 'Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6270_dinding, 'Dinding', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6271_kertas_dinding, 'kertas dinding', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6272_pemain_shogi, 'Pemain Shogi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6272_pemain_shogi, 'Ayo Pemain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6273_pergi_asosiasi, 'Pergi Asosiasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6273_pergi_asosiasi, 'Pergi ke Institut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6273_pergi_asosiasi, 'Pergi ke Aula', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6274_rasa_pahit, 'Rasa Pahit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6274_rasa_pahit, 'Pahit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6275_fragmen, 'Fragmen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6275_fragmen, 'Satu Dari Sepasang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6275_fragmen, 'Tidak lengkap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6276_satu_tangan, 'Satu Tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6277_bahasa_rusak, 'Bahasa Rusak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6277_bahasa_rusak, 'Beberapa Kata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6277_bahasa_rusak, 'Bahasa Jepang yang rusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6277_bahasa_rusak, 'Bahasa Inggris yang rusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6278_katakana, 'Katakana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6279_satu_arah, 'SATU ARAH', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6280_kawanan, 'Kawanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6281_prefektur_gunma, 'Prefektur Gunma', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6282_kerumunan, 'Kerumunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6282_kerumunan, 'Orang banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6283_pertapa, 'Pertapa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6283_pertapa, 'Manusia Gunung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6284_bakung, 'Bakung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6285_sendai, 'Sendai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6286_kesempurnaan, 'Kesempurnaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6286_kesempurnaan, 'Memperkuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6287_isi_ulang, 'Isi ulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6288_pasokan_ulang, 'Pasokan ulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6288_pasokan_ulang, 'Isi ulang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6288_pasokan_ulang, 'Memperlengkapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6289_untuk_melarikan_diri_dari_sesuatu, 'Untuk Melarikan Diri dari Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6289_untuk_melarikan_diri_dari_sesuatu, 'Untuk Menghindari Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6290_sertifikat, 'Sertifikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6290_sertifikat, 'Lisensi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6290_sertifikat, 'Diploma', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6291_lisensi, 'Lisensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6291_lisensi, 'Sertifikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6291_lisensi, 'Izin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6292_pembebasan_pajak, 'Pembebasan Pajak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6293_maaf, 'Maaf', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6293_maaf, 'Saya Mohon Maaf', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6294_pembebasan, 'Pembebasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6294_pembebasan, 'Membebaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6296_rekomendasi, 'Rekomendasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6296_rekomendasi, 'Saran Resmi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6298_di_luar_jangkauan, 'Di Luar Jangkauan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6299_dunia_berbahasa_inggris, 'Dunia Berbahasa Inggris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6300_lingkaran_kutub_selatan, 'Lingkaran Kutub Selatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6300_lingkaran_kutub_selatan, 'Antartika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6302_prefektur_saitama, 'Prefektur Saitama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6303_untuk_merampok, 'Untuk merampok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6303_untuk_merampok, 'Untuk Mencuri Dengan Paksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6304_nasi, 'Nasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6304_nasi, 'Makanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6305_untuk_melihat, 'Untuk Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6305_untuk_melihat, 'Untuk Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6305_untuk_melihat, 'Untuk Menonton', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6306_bersikap_bijaksana, 'Bersikap Bijaksana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6306_bersikap_bijaksana, 'Untuk Berhati-hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6307_bijaksana, 'Bijaksana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6307_bijaksana, 'Hati-hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6308_menolak, 'Menolak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6308_menolak, 'Untuk Menolak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6309_penolakan, 'Penolakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6309_penolakan, 'Penolakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6310_bingkai, 'Bingkai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6310_bingkai, 'Membatasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6311_bingkai, 'Bingkai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6311_bingkai, 'Kerangka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6312_cangkang_penyu, 'Cangkang Penyu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6312_cangkang_penyu, 'Punggung kaki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6312_cangkang_penyu, 'Punggung Tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6313_bernilai, 'Bernilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6313_bernilai, 'Memengaruhi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6313_bernilai, 'Hasil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6314_kesejahteraan, 'Kesejahteraan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6314_kesejahteraan, 'Kesejahteraan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6315_tanaman_padi, 'Tanaman Padi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6316_sawah, 'Sawah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6316_sawah, 'Sawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6316_sawah, 'Sawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6317_budidaya_padi, 'Budidaya Padi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6317_budidaya_padi, 'Tanaman Padi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6318_untuk_mengakui, 'Untuk Mengakui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6318_untuk_mengakui, 'Untuk Menyerahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6318_untuk_mengakui, 'Untuk Menyerahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6319_transfer, 'Transfer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6319_transfer, 'Penugasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6320_orang_jepang_yang_rendah_hati, 'orang Jepang yang rendah hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6320_orang_jepang_yang_rendah_hati, 'Bahasa Rendah Hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6321_kesopanan, 'Kesopanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6321_kesopanan, 'Kerendahhatian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6322_untuk_melompat, 'Untuk Melompat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6322_untuk_melompat, 'Untuk Melompat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6322_untuk_melompat, 'Untuk Bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6324_partisipasi_aktif, 'Partisipasi Aktif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6324_partisipasi_aktif, 'Aktivitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6324_partisipasi_aktif, 'Kesuksesan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6324_partisipasi_aktif, 'Lakukan yang Hebat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6327_melompat, 'Melompat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6327_melompat, 'Melompat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6327_melompat, 'Melompat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6327_melompat, 'Melewati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6328_pistol, 'Pistol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6328_pistol, 'Senjata api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6329_kematian_karena_penembakan, 'Kematian Karena Penembakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6330_peluru_senapan, 'Peluru Senapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6330_peluru_senapan, 'Peluru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6331_pistol, 'Pistol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6331_pistol, 'Pistol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6332_barang, 'Barang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6332_barang, 'Pintu masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6332_barang, 'Ayat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6332_barang, 'Barang Data', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6333_urusan, 'Urusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6333_urusan, 'Barang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6333_urusan, 'Subjek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6334_poin_penting, 'Poin Penting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6334_poin_penting, 'Poin Utama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6335_baja, 'Baja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6336_bahan_baja, 'Bahan Baja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6337_pembuatan_baja, 'Pembuatan Baja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7511_untuk_menerbitkan, 'Untuk Menerbitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7511_untuk_menerbitkan, 'Untuk Mencetak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8604_tawanan, 'Tawanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8604_tawanan, 'Tahanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8605_dikutuk_kriminal, 'Dikutuk Kriminal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8605_dikutuk_kriminal, 'Terpidana Mati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8690_cadangan, 'Cadangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8690_cadangan, 'Menyimpan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8690_cadangan, 'Meluangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8690_cadangan, 'Menyalin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8690_cadangan, 'Rintisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8727_tetap, 'Tetap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8727_tetap, 'Masih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8727_tetap, 'Seperti Apa adanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8874_alis, 'Alis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8919_penerima, 'Penerima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8919_penerima, 'Nama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8919_penerima, 'Alamat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8919_penerima, 'Nama dan Alamat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9069_dari_silsilah_yang_terhormat, 'Dari Silsilah Yang Terhormat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9069_dari_silsilah_yang_terhormat, 'Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9271_musim_hujan, 'Musim hujan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9455_membengkak, 'Membengkak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9455_membengkak, 'Menjadi Meradang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9491_untuk_melihat_ke_dalam, 'Untuk Melihat Ke Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9491_untuk_melihat_ke_dalam, 'Untuk Mengintip', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4033_kesombongan, 'きょえいしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4123_doa, 'きねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5022_menjadi_rugi, 'まどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5780_merah_tua, 'くれない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5780_merah_tua, 'べに', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6114_parfum, 'かおり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6180_putar_ganda, 'へいさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6239_shogi, 'しょうぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6240_ahli_waris, 'あとつぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6241_untuk_melompat, 'はねる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6242_lompat_tali, 'なわとび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6243_untuk_melamar, 'おうぼする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6244_lari_rumah, 'ほんるいだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6245_untuk_runtuh, 'くずれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6246_untuk_membayar, 'はらいもどす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6247_untuk_memainkan_alat_musik_petik, 'ひく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6248_pilihan_kata, 'ことばづかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6249_uang_saku, 'こづかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6250_untuk_menghapus, 'さくじょする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6251_papan_buletin, 'けいじばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6252_kemacetan_lalu_lintas, 'じゅうたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6253_sekarang_mempekerjakan, 'ぼしゅうちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6254_jalan_kembali, 'もどりみち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6255_untuk_mengambil_kembali, 'とりもどす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6256_bom_atom, 'げんしばくだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6257_tapak, 'あしあと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6258_untuk_membidik, 'ねらう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6259_terjemahan_ke_bahasa_jepang, 'ほうやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6260_rekan_senegaranya, 'ほうじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6261_persemakmuran, 'れんぽう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6262_bel_pintu, 'よびりん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6263_lonceng_kecil, 'すず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6264_gifu, 'ぎふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6265_kemakmuran, 'りゅうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6266_benjol, 'りゅうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6267_untuk_mempekerjakan, 'やとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6268_untuk_memecat_seseorang, 'かいこする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6269_pekerjaan, 'こよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6270_dinding, 'かべ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6271_kertas_dinding, 'かべがみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6272_pemain_shogi, 'きし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6273_pergi_asosiasi, 'きいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6274_rasa_pahit, 'しぶい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6275_fragmen, 'かた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6276_satu_tangan, 'かたて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6277_bahasa_rusak, 'かたこと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6278_katakana, 'かたかな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6279_satu_arah, 'かたみち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6280_kawanan, 'むれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6281_prefektur_gunma, 'ぐんまけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6282_kerumunan, 'ぐんしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6283_pertapa, 'せんにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6284_bakung, 'すいせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6285_sendai, 'せんだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6286_kesempurnaan, 'じゅうじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6287_isi_ulang, 'じゅうでん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6288_pasokan_ulang, 'ほじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6289_untuk_melarikan_diri_dari_sesuatu, 'まぬかれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6289_untuk_melarikan_diri_dari_sesuatu, 'まぬがれる', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6290_sertifikat, 'めんじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6291_lisensi, 'めんきょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6292_pembebasan_pajak, 'めんぜい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6293_maaf, 'ごめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6294_pembebasan, 'めんじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6296_rekomendasi, 'かんこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6298_di_luar_jangkauan, 'けんがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6299_dunia_berbahasa_inggris, 'えいごけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6300_lingkaran_kutub_selatan, 'なんきょくけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6302_prefektur_saitama, 'さいたまけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6303_untuk_merampok, 'うばう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6304_nasi, 'ごはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6305_untuk_melihat, 'ごらんになる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6306_bersikap_bijaksana, 'つつしむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6307_bijaksana, 'しんちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6308_menolak, 'こばむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6309_penolakan, 'きょひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6310_bingkai, 'わく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6311_bingkai, 'わくぐみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6312_cangkang_penyu, 'こう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6313_bernilai, 'かい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6314_kesejahteraan, 'ふくし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6315_tanaman_padi, 'いね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6316_sawah, 'いなだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6317_budidaya_padi, 'いなさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6318_untuk_mengakui, 'ゆずる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6319_transfer, 'いじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6320_orang_jepang_yang_rendah_hati, 'けんじょうご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6321_kesopanan, 'けんきょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6322_untuk_melompat, 'おどる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6324_partisipasi_aktif, 'かつやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6327_melompat, 'ちょうやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6328_pistol, 'じゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6329_kematian_karena_penembakan, 'じゅうさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6330_peluru_senapan, 'じゅうだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6331_pistol, 'たんじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6332_barang, 'こうもく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6333_urusan, 'じこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6334_poin_penting, 'ようこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6335_baja, 'はがね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6336_bahan_baja, 'こうざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6337_pembuatan_baja, 'せいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7511_untuk_menerbitkan, 'けいさいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8604_tawanan, 'しゅうじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8605_dikutuk_kriminal, 'しけいしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8690_cadangan, 'ひかえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8727_tetap, 'いぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8874_alis, 'まゆげ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8919_penerima, 'あてな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9069_dari_silsilah_yang_terhormat, 'ゆいしょただしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9271_musim_hujan, 'つゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9455_membengkak, 'はれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9491_untuk_melihat_ke_dalam, 'のぞきこむ', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4033_kesombongan, '虚栄心の強い人は、男でも女でも苦手です。', 'Saya tidak suka orang yang sombong, apapun jenis kelaminnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4033_kesombongan, 'ウチの親は虚栄心のカタマリです。', 'Orang tua saya adalah perwujudan kesombongan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4033_kesombongan, '当時は、周りの人たちに自分の虚栄心に気づかれるんじゃないかと、いつもビクビクしていました。', 'Saat itu, aku selalu gelisah, takut orang-orang di sekitarku akan menyadari kesombonganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4123_doa, 'そのコンサートは、東日本大震災の復興祈念のためのものでした。', 'Konser tersebut diadakan dengan tujuan mendoakan kesembuhan dari Gempa Besar Jepang Timur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4123_doa, '沖縄では、平和祈念公園と、ひめゆり平和祈念資料館に行きました。', 'Di Okinawa, saya mengunjungi Peace Memorial Park dan Himeyuri Peace Memorial Museum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4123_doa, '皆さまにとって、新年が幸多い年となりますよう、社員一同ご祈念申し上げます。', 'Kami para karyawan ingin memanjatkan doa semoga tahun baru sejahtera dan membahagiakan bagi anda semua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4123_doa, 'トーフグの益々の発展と繁栄を祈念して、乾杯！', 'Mari kita doakan agar Tofugu semakin tumbuh dan sejahtera, bersorak!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4123_doa, '明日は原爆犠牲者慰霊平和祈念式典に出席します。', 'Saya akan menghadiri upacara peringatan perdamaian bagi para korban bom atom besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5022_menjadi_rugi, '俺は、この年になっても、まだくだらないことに惑うよ。', 'Aku masih bingung dengan hal-hal sepele di usiaku yang sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5022_menjadi_rugi, '不思議ですね。何が人を惑わせるんでしょうね。', 'Penasaran bukan? Saya bertanya-tanya apa yang bisa membuat orang merasa begitu tersesat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5022_menjadi_rugi, '人々は泣き叫び、逃げ惑っていた。', 'Orang-orang menangis dan melarikan diri dengan panik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5022_menjadi_rugi, 'その天使は、お前が惑うようにわざと仕向けたのだよ。', 'Malaikat itu sengaja menyesatkanmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5022_menjadi_rugi, '今は、なんというか、人生に惑うような気分です。', 'Saat ini, aku hanya merasa kehilangan hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5780_merah_tua, '紅に染まる空を、風だけが静かに横切っていった。', 'Hanya angin yang bergerak pelan melintasi langit merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5780_merah_tua, '紅に染まった手をぼんやりと見つめる彼の足元で、雪の上に同じ色の紅がゆっくりと広がっていった。', 'Saat dia menatap kosong ke tangannya yang bernoda merah tua, warna merah tua yang sama menyebar perlahan di salju di kakinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5780_merah_tua, 'その紅色の花の名前は何ですか？', 'Apa nama bunga berwarna merah tua itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5780_merah_tua, '私の好きな曲はX JAPANの『紅』です。激しい感情とロックサウンドが特徴で、主人公の孤独や苦しみを強く表現してる名曲なんです。', 'Lagu favorit saya adalah "Kurenai" oleh X JAPAN. Ini dikenal karena emosinya yang intens dan suara rock yang kuat, dan ini adalah mahakarya yang dengan kuat mengekspresikan kesepian dan rasa sakit sang protagonis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6114_parfum, 'どの香りを付けるかを決めるのは難しいですね。毎朝短くとも一時間はそれに時間を費やします。', 'Sulit untuk memilih parfum mana yang akan dipakai. Saya membutuhkan waktu setidaknya satu jam setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6180_putar_ganda, '「ゲッツー」というのは、併殺を意味する和製英語です。', '"Dapatkan dua" adalah kata dalam bahasa Jepang yang berasal dari bahasa Inggris yang berarti permainan ganda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6239_shogi, '指せば指すほど将棋が好きになります。', 'Semakin sering saya bermain, semakin saya menyukai shogi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6240_ahli_waris, '父親が跡継ぎに弟を選んだという知らせは、彼にとって大きな打撃でした。', 'Kabar bahwa ayahnya memilih adik laki-lakinya sebagai ahli warisnya merupakan pukulan telak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6241_untuk_melompat, 'あのピョコピョコ飛び跳ねている兎が超可愛くてやばい。', 'Kelinci pelompat itu lucu sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6242_lompat_tali, 'FM802を聞きながら縄跳びをしています。', 'Saya lompat tali dan mendengarkan FM802.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6243_untuk_melamar, 'あいつ、ビキニ姿のギャルが見れるからっていう理由だけで、市民プールの監視員の仕事に応募したんだよ。', 'Dia melamar pekerjaan sebagai penjaga pantai di kolam renang komunitas hanya untuk melihat gadis-gadis berbikini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6244_lari_rumah, '今日は彼の二百本目の本塁打を見るのが楽しみでしょうがないよ。', 'Saya senang melihat home runnya yang ke-200 hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6245_untuk_runtuh, 'ああっ！またお化粧が崩れてきちゃった。', 'Oh tidak! Riasanku luntur lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6246_untuk_membayar, 'すみません、もう不要になったのでSuicaの残高を払い戻したいのですが...。	', 'Permisi, saya ingin mengembalikan saldo kartu Suica saya karena saya tidak membutuhkannya lagi...');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6246_untuk_membayar, '出張中に食べた焼肉代も払い戻すことはできますか。', 'Bisakah saya mendapatkan penggantian biaya barbekyu Korea yang saya makan selama perjalanan bisnis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6246_untuk_membayar, '恐れ入りますが、お客様は鍵を失くされたので、保証金の払い戻しは出来かねます。', 'Saya khawatir kami tidak dapat mengembalikan deposit Anda karena Anda kehilangan kunci.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6247_untuk_memainkan_alat_musik_petik, '美香ちゃんは、ウクレレを弾くと心が休まると言っていたよ。', 'Mika mengaku merasa rileks saat memainkan ukulele.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6247_untuk_memainkan_alat_musik_petik, '古いギターを弾こうとしたら、げんが切れてしまった。', 'Saat saya mencoba memainkan gitar tua, salah satu senarnya putus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6247_untuk_memainkan_alat_musik_petik, '彼がまたピアノを弾き始めたというニュースに、私は胸を躍らせました。', 'Saya sangat senang dengan berita bahwa dia mulai bermain piano lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6247_untuk_memainkan_alat_musik_petik, '彼は空腹を忘れるためにピアノを弾き続けた。', 'Dia terus bermain piano untuk melupakan rasa laparnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6248_pilihan_kata, 'あの人は言葉遣いがとてもていねいです。', 'Orang itu sangat sopan dalam memilih kata-katanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6248_pilihan_kata, '若手時代は、先輩からよく言葉遣いを注意されました。', 'Ketika saya masih muda, senior saya sering memperingatkan saya tentang bahasa saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6248_pilihan_kata, '誰かの言葉遣いを真似することは、外国語の良い勉強法です。', 'Meniru cara bicara seseorang bisa menjadi cara yang baik untuk berlatih bahasa asing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6249_uang_saku, 'お子さんには月々お小遣いはいくら渡しているんですか。', 'Berapa banyak uang belanja yang Anda berikan kepada anak Anda sebulan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6250_untuk_menghapus, '今お送りしたメッセージを削除して頂いてもよろしいでしょうか。別の方に送信するはずだったものなんです。', 'Bisakah Anda menghapus pesan yang baru saja saya kirimkan kepada Anda? Saya bermaksud mengirimkannya ke orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6251_papan_buletin, 'この掲示板は学校のものです。', 'Papan buletin ini milik sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6252_kemacetan_lalu_lintas, 'もうすぐ日も暮れるぜ。全くこの馬鹿げた渋滞のせいで今日は一日何にもできなかったな。', 'Hari hampir berakhir. Kami tidak dapat melakukan apa pun hari ini karena kemacetan lalu lintas yang parah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6253_sekarang_mempekerjakan, 'そいつ、パソコンオタクではあるけど、見た目はイケメンで、今彼女募集中なんだ。どう、会ってみない？', 'Dia ahli komputer, tapi pria tampan dan dia sedang mencari pacar sekarang. Apakah kamu tidak tertarik untuk bertemu dengannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6254_jalan_kembali, '戻り道がどれだか分からなかったんです。', 'Saya tidak tahu jalan pulang yang mana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6255_untuk_mengambil_kembali, 'コンピュータを出荷時の設定に初期化することでこの問題は解決しますが、バックアップがなければ失われたデータを取り戻すことはできません。', 'Anda dapat mengatasi masalah jenis ini dengan memulihkan komputer ke pengaturan pabrik, tetapi Anda tidak dapat memperoleh kembali data yang hilang jika Anda tidak memiliki cadangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6256_bom_atom, '私の家は火災保険に入っていますが、もし誰かが原子爆弾を落として、それで家が燃えちゃった場合はどうなるんでしょうか。それでも保険金は降りるんでしょうか。', 'Rumah saya memiliki asuransi kebakaran, tapi bagaimana jika seseorang menjatuhkan bom atom dan rumah saya terbakar? Apakah saya masih akan mendapatkan uang asuransi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6257_tapak, '雪の上に熊の足跡を見つけた瞬間、ポケットの中のナイフを握りしめました。', 'Saat aku melihat jejak kaki beruang di salju, aku menggenggam erat pisau di sakuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6258_untuk_membidik, '一応忠告しておくと、奴はお前のポジションを狙ってるみたいだぞ。', 'Sekadar nasihat, sepertinya dia bermaksud mengambil alih posisi Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6259_terjemahan_ke_bahasa_jepang, 'ロード・オブ・ザ・リングの邦訳、もう図書館に返却しちゃった？', 'Apakah Anda sudah membawa The Lord of the Rings versi Jepang kembali ke perpustakaan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6260_rekan_senegaranya, 'アメリカには在留邦人はどのくらいいるんですか。', 'Berapa banyak penduduk Jepang di Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6261_persemakmuran, 'ちょっと待って。もしかして、連邦税と州税どっちも払わなきゃいけないの？', 'Tunggu sebentar. Apakah saya harus membayar pajak federal dan negara bagian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6262_bel_pintu, '大便の最中に呼び鈴が鳴り、男はお尻も拭かずに玄関へ急いだ。', 'Bel pintu berbunyi saat dia sedang buang air besar dan dia bergegas ke pintu tanpa menyeka pantatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6263_lonceng_kecil, '彼女は猫の首に小さな鈴をつけました。', 'Dia memasang lonceng kecil di kerah kucing itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6263_lonceng_kecil, 'クマよけの鈴をリュックにつけて山に入った。', 'Saya memasang bel beruang ke ransel saya dan memasuki gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6263_lonceng_kecil, '退職をきっかけに、鈴作りを始めました。', 'Saya memanfaatkan masa pensiun saya dengan mulai membuat lonceng kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6263_lonceng_kecil, '誰もいないのに夜中に悲しげな鈴の音が聞こえてきたんです。チリン…チリン…って。', 'Meskipun tidak ada seorang pun di sana, di tengah malam saya mendengar suara bel yang menyedihkan - denting… denting…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6264_gifu, '週の後半に岐阜の両親のとこに顔を見せに行くつもりだよ。', 'Saya akan mengunjungi orang tua saya di Gifu pada akhir minggu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6265_kemakmuran, 'アメリカで最も隆盛を極めている州は何州ですか。', 'Negara bagian manakah yang paling makmur di AS?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6266_benjol, '喉頭隆起は、その近くにある骨の形が仏様に似ていることから、喉仏としても知られています。', 'Jakun juga dikenal dengan sebutan tenggorokan Buddha karena bentuk tulangnya yang mirip Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6267_untuk_mempekerjakan, 'あなたを雇いたいのは山々ですが、就業許可証が発給されるのを待ってはいられないのです。', 'Saya ingin mempekerjakan Anda, tetapi kami tidak sabar menunggu izin kerja Anda dikeluarkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6268_untuk_memecat_seseorang, 'シャークは事あるごとに規則違反をするので、そろそろ解雇する必要があると思います。', 'Shark telah keluar dari barisan setiap ada kesempatan dan saya pikir inilah waktunya bagi kita untuk melepaskannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6269_pekerjaan, 'かつては多くの会社が終身雇用を保障していましたが、今ではそれが当たり前では無くなっています。', 'Dulu banyak perusahaan yang menjamin pekerjanya mendapatkan pekerjaan seumur hidup, namun hal itu sudah tidak lazim lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6270_dinding, '壁には、ピンク色の時計が掛かっていた。', 'Ada jam merah muda tergantung di dinding.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6270_dinding, '男は壁にもたれて本を読んでいた。', 'Pria itu sedang bersandar di dinding sambil membaca buku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6270_dinding, '子どもが壁に絵を描いてしまったんです。', 'Anak saya pergi dan menggambar di dinding.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6270_dinding, 'トイレの壁に自分の笑顔の写真を飾ってみました。', 'Saya mencoba mendekorasi dinding kamar mandi dengan foto wajah saya yang sedang tersenyum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6271_kertas_dinding, 'いつも壁紙はワニカニのアヤのイラストにしています。', 'Saya selalu menggunakan ilustrasi Aya dari WaniKani sebagai wallpaper desktop saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6271_kertas_dinding, 'あ、分かりますか？壁紙を新しくしたんです。', 'Oh, bisakah kamu mengetahuinya? Saya memasang wallpaper baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6271_kertas_dinding, 'へ〜、パンダの壁紙なんてあるんですね！', 'Oh wow — Saya tidak tahu mereka membuat wallpaper panda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6271_kertas_dinding, 'ここ、壁紙がちょっとはがれてきてるんだよね。', 'Wallpaper mulai terkelupas sedikit di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6272_pemain_shogi, 'その棋士は、この建物に自分専用の練習部屋を構えています。', 'Pemain shogi memiliki ruang latihan sendiri di gedung ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6272_pemain_shogi, '台湾棋院は棋士の育成に力を入れている。', 'Asosiasi Go Taiwan fokus pada pengembangan pemain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6273_pergi_asosiasi, '彼は日本棋院に所属している。', 'Dia berafiliasi dengan Japan Go Association.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6273_pergi_asosiasi, '関西棋院で対局が行われた。', 'Sebuah pertandingan diadakan di Kansai Go Association.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6273_pergi_asosiasi, '私は子どものころから棋院に通っています。', 'Saya telah menghadiri institut go sejak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6274_rasa_pahit, 'コウイチはDDoS攻撃に渋い顔をして、拳で机をバンバンと叩いた。', 'Koichi mengerutkan kening pada serangan DDoS dan membenturkan tinjunya ke meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6275_fragmen, '片目だけ視力が悪いんです。', 'Saya memiliki penglihatan yang buruk hanya pada salah satu mata saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6276_satu_tangan, '彼は重いお米の袋を片手でヒョイと持ち上げました。', 'Dia dengan mudah mengangkat sekantung beras yang berat itu dengan satu tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6277_bahasa_rusak, '私は片言の日本語でなんとかパスポートの再発行をしてもらいました。', 'Saya berhasil mendapatkan paspor saya diterbitkan kembali dengan bahasa Jepang saya yang rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6277_bahasa_rusak, 'うちの娘はまだ小さいので、片言ぐらいしかしゃべることができません。', 'Putri kami masih kecil, jadi dia hanya bisa berbicara bahasa bayi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6277_bahasa_rusak, '片言も聞き漏らさないようにサヤカはコウイチの話に集中した。', 'Sayaka fokus pada apa yang Koichi katakan agar tidak melewatkan satu kata pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6278_katakana, '平仮名は分かりますが、片仮名はまだ覚えきれていません。', 'Saya tahu Hiragana, tapi saya masih berusaha menghafal Katakana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6279_satu_arah, '大阪から東京までの片道切符を二枚もらえますか。', 'Bisakah saya mendapatkan dua tiket sekali jalan dari Osaka ke Tokyo?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6280_kawanan, '春にヨーロッパ旅行をした時に、生まれて初めて真っ白な羊の群れを見ました。', 'Ketika saya bepergian ke Eropa pada musim semi, saya melihat sekawanan domba putih untuk pertama kalinya dalam hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6281_prefektur_gunma, '群馬県の実家から帰ってきたら、知らせてくれよな。', 'Beri tahu saya jika Anda kembali dari rumah orang tua Anda di Prefektur Gunma.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6282_kerumunan, '小さな男の子がジャスティン・ビーバーの物真似をし出したので、群集は大笑いをしました。', 'Penonton pun tertawa ketika bocah lelaki itu mulai meniru Justin Bieber.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6283_pertapa, '「わしゃ、お前の真上におるぞ。」と、仙人が雲の上から言いました。', '“Aku berada tepat di atasmu,” kata pertapa di atas awan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6284_bakung, 'お墓の真後ろに、水仙の花々が咲いていました。', 'Ada beberapa bunga bakung yang sedang mekar tepat di belakang kuburan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6285_sendai, '仙台に行くまでに地図を買っておきます。', 'Saya akan membeli peta saat saya pergi ke Sendai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6286_kesempurnaan, 'お客様と末永い関係が築けるよう、充実したアフターサービスをご提供しております。', 'Kami memberikan layanan purna jual yang baik karena kami ingin membangun hubungan jangka panjang dengan pelanggan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6286_kesempurnaan, '健康で充実した生活を送るためには、何よりもストレスを無くすことが大切です。', 'Untuk menjalani hidup yang sehat dan memuaskan, menghilangkan stres adalah hal terpenting yang dapat Anda lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6287_isi_ulang, 'もしよければ俺の車で携帯の充電ができるよ。', 'Anda dapat mengisi daya ponsel Anda di mobil saya, jika Anda mau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6288_pasokan_ulang, '帰る前にプリンタの紙を補充しておいてもらえるかな。', 'Bisakah Anda mengisi ulang kertas printer sebelum Anda berangkat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6289_untuk_melarikan_diri_dari_sesuatu, '倒産という最悪の結末だけは何とか免れることができた。', 'Kami berhasil menghindari kemungkinan terburuk dari kebangkrutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6289_untuk_melarikan_diri_dari_sesuatu, '死刑執行を免れるためなら何でもします。', 'Saya akan melakukan apa saja untuk menghindari eksekusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6289_untuk_melarikan_diri_dari_sesuatu, '後部座席に座ってシートベルトを締めていたので、私達は重傷を免れました。', 'Kami terhindar dari cedera serius karena kami duduk di kursi belakang dan mengenakan sabuk pengaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6290_sertifikat, '今度お会いする際に免状をお渡ししますね。', 'Aku akan memberimu ijazahnya saat kita bertemu lagi nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6291_lisensi, '「あぁ、自分がどれだけドライブが好きか忘れてたわ。免許更新しなくちゃ。」「おい、待てよ！お前の免許失効してるのか？ありえねえ。よし、それまで！今すぐ横につけて！」', '"Ah. Aku lupa betapa aku suka mengemudi. Aku harus memperbarui SIM-ku." "Tunggu! Apakah SIM-mu sudah habis masa berlakunya? Ya ampun. Itu dia! Menepi sekarang juga!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6292_pembebasan_pajak, '免税店がどこにあるかご存知ですか？', 'Tahukah Anda di mana toko bebas bea berada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6293_maaf, '御免。流石に今日の今日で、空港まで迎えに行くのは無理だわ。もうちょっと早く言ってくれたらよかったのに。', 'Maaf. Saya tidak akan bisa menjemput Anda di bandara hari ini. Anda seharusnya bertanya kepada saya sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6294_pembebasan, '私の祖父は心臓病を患っていたため、兵役を免除されました。', 'Kakek saya dibebaskan dari wajib militer karena dia menderita penyakit jantung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6296_rekomendasi, '人事部に辞職勧告を受けた後もなお仕事を続けていたら、窓際族に追いやられてしまいました。', 'Setelah saya mendapat saran pengunduran diri dari departemen personalia dan saya masih belum berhenti dari pekerjaan saya, saya dipindahkan ke posisi yang tidak berguna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6298_di_luar_jangkauan, 'しまった！兄ちゃんが俺の携帯に電話するって言ってたのに、ここ圏外だわ。', 'Oh tidak. Kakakku bilang dia akan meneleponku melalui ponselku, tapi tidak ada penerimaan di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6299_dunia_berbahasa_inggris, 'シンガポールが英語圏だとは思ってもみなかったよ。', 'Saya tidak pernah mengira Singapura adalah negara berbahasa Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6300_lingkaran_kutub_selatan, '南極圏にはペンギン以外にも動物はいるんですか？', 'Apakah ada hewan selain penguin di Lingkaran Antartika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6302_prefektur_saitama, 'どうして埼玉県に来たんですか。', 'Apa yang membawamu ke prefektur Saitama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6303_untuk_merampok, '母親は、少女に、悪霊が犬の命を奪ったのだと教えました。', 'Ibunya memberitahunya bahwa nyawa anak anjing mereka dicuri oleh roh jahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6304_nasi, '映画を見ながら御飯を食べています。', 'Saya sedang menonton film sambil makan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6305_untuk_melihat, 'もう三階へ行かれて新しい部屋を御覧になられましたか？', 'Apakah Anda pernah ke lantai tiga dan sudah melihat kamar baru?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6306_bersikap_bijaksana, '電車の乗客は、携帯での会話を慎むべきだ。', 'Orang-orang di kereta harus menahan diri untuk tidak melakukan percakapan telepon seluler.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6307_bijaksana, 'どうしてそんなに慎重なんですか。', 'Apa yang membuatmu sangat berhati-hati?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6307_bijaksana, '彼は盗聴を疑い、慎重に話した。', 'Karena curiga dia disadap, dia berbicara dengan hati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6308_menolak, '私のかかりつけのお医者さんは、私が大腸癌検査を受けるのを拒みました。', 'Dokter keluarga saya menolak mengizinkan saya melakukan pemeriksaan kanker kolorektal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6308_menolak, '頭脳は真実を求めていたが、心はそれを拒んでいた。', 'Pikiran mencari kebenaran, sementara hati menolaknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6309_penolakan, '彼は戦場に行く事を拒否したため、臆病者と呼ばれた。', 'Dia disebut pengecut karena dia menolak pergi ke medan perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6310_bingkai, '窓枠を木からステンレスのものに取り替えたい。', 'Saya ingin menukar kusen jendela dari kayu dengan stainless steel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6311_bingkai, 'トーフグの日本語学習教材改革のための枠組みが出来上がりました。', 'Kami baru saja membuat kerangka untuk reformasi di masa depan dalam materi pembelajaran bahasa Jepang Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6312_cangkang_penyu, '左足の甲にタトゥーを入れました。', 'Saya punya tato di punggung kaki kiri saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6313_bernilai, '努力の甲斐があって、そのニュースレターは廃刊になるのを免れた。', 'Berkat usahanya, buletin ini dapat terhindar dari penghentian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6314_kesejahteraan, '日本の社会福祉制度の問題点とは何だと思いますか。', 'Menurut Anda apa masalah sistem kesejahteraan sosial Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6315_tanaman_padi, 'トーフグメンバーはみんな稲刈りで忙しいので、トーフグのブログは休刊中です。', 'Tofugu menangguhkan penerbitan blognya karena seluruh anggota Tofugu sibuk memanen padi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6316_sawah, '友達はもっと大きい稲田をもっていますよ。', 'Teman saya mempunyai sawah yang jauh lebih luas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6317_budidaya_padi, '彼は稲作に没頭しています。', 'Dia membenamkan dirinya dalam penanaman padi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6318_untuk_mengakui, '彼は、絶版になっている古い小説を私に譲ってくれました。', 'Dia memberiku sebuah novel lama yang sudah tidak lagi dicetak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6319_transfer, '校長が権力を他の人に移譲したがらないんだよ。', 'Kepala sekolah tidak mau mengalihkan wewenangnya kepada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6320_orang_jepang_yang_rendah_hati, 'どうしてそれが謙譲語だと思ったんですか。', 'Apa yang membuatmu berasumsi bahwa itu adalah orang Jepang yang rendah hati?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6321_kesopanan, 'その謙虚な男性が実はマフィアの一員だったなんて、信じられません。', 'Saya tidak percaya orang yang rendah hati itu sebenarnya adalah anggota mafia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6322_untuk_melompat, 'ずっと探していた60年代に生産中止になったクラッシックカーを見つけた時は、嬉しくて胸が躍りました。', 'Ketika saya menemukan mobil klasik yang sudah dihentikan produksinya pada tahun 1960 yang saya cari-cari, saking senangnya hati saya melonjak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6324_partisipasi_aktif, 'この業界では、女性の活躍が目立ちます。', 'Dalam industri ini, partisipasi aktif perempuan sangat menonjol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6324_partisipasi_aktif, 'すごい！大活躍でしたね！', 'Luar biasa! Anda melakukan pekerjaan dengan baik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6324_partisipasi_aktif, 'この選手は、今後の活躍が期待されています。', 'Pemain ini diharapkan bisa tampil baik di masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6327_melompat, 'この授業は、生徒たちの跳躍力を伸ばすことを目的としています。', 'Pembelajaran ini bertujuan untuk meningkatkan keterampilan melompat, melompat, dan melompat siswa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6328_pistol, 'この銃、弾入ってる？', 'Apakah pistol ini ada pelurunya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6328_pistol, 'こちらの銃は、クレジットカードで買えますか。', 'Bisakah saya membeli senjata api ini dengan kartu kredit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6328_pistol, '外出中に、部屋に置いてあった銃が母親に見つかってしまったんです。', 'Ibu saya menemukan pistol saya di kamar saya ketika saya sedang keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6329_kematian_karena_penembakan, '犬が飼い主に銃殺されるという悲しい事件がありました。', 'Ada kejadian tragis dimana seekor anjing ditembak dan dibunuh oleh pemiliknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6330_peluru_senapan, '少し待って貰ってもいいですか？ちょっと銃弾を取りに行かなくてはならないので。', 'Bisakah Anda bertahan sebentar? Aku harus mengambil peluruku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6331_pistol, 'しばらく時間はかかったが、ようやく犯行の凶器となった短銃を見つけることができました。', 'Setelah sekian lama akhirnya kami berhasil menemukan pistol yang digunakan untuk melakukan kejahatan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6332_barang, '「それでは、アジェンダの次の項目へ進みましょう。」「ちょっと待って下さい。次へ進む前に、10分間の休憩を取りませんか？」', '"Oke! Mari kita lanjutkan ke agenda berikutnya." "Tunggu! Kenapa kita tidak istirahat sepuluh menit sebelum melanjutkan perjalanan?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6333_urusan, '用紙に必要事項を記載のうえ、郵送をお願い致します。', 'Silakan isi item yang diperlukan pada formulir dan kirimkan kepada kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6334_poin_penting, '詳細については、添付の募集要項をご確認くださいませ。', 'Untuk lebih jelasnya, silakan lihat pedoman pelamar terlampir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6335_baja, 'そのゲームで鋼の剣っていくらだったっけ？', 'Berapa harga pedang baja di game itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6336_bahan_baja, '鋼材不足には早急に対処する必要があります。', 'Kita harus mengatasi kekurangan baja secepat mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6337_pembuatan_baja, '賃金カットなんかしたら、製鋼所の工員達がストライキを起こすかもしれませんよ。', 'Jika Anda memotong gaji mereka, para pekerja baja mungkin akan mogok kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7511_untuk_menerbitkan, 'このコンテンツは、過激すぎて掲載することはできません。', 'Isinya terlalu ekstrim untuk dipublikasikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8604_tawanan, 'どうして囚人はしましまの服を着ているんですか。', 'Mengapa narapidana memakai pakaian bergaris?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8604_tawanan, 'そこには、囚人達の道具がしまわれていた。', 'Peralatan para tahanan disimpan di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8604_tawanan, 'その囚人が、1998年に軍隊に入隊していた記録が見つかった。', 'Sebuah catatan ditemukan yang menunjukkan bahwa tahanan tersebut telah bergabung dengan tentara pada tahun 1998.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8605_dikutuk_kriminal, '死刑囚はこの階段を登って死刑台へと向かうんだ。', 'Penjahat yang dihukum menaiki tangga ini dan menuju tiang gantungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8605_dikutuk_kriminal, 'そもそも、この問題を起こしたのは、あの死刑囚だ。', 'Terpidana mati itulah yang menyebabkan masalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8605_dikutuk_kriminal, 'その弁護士は、死刑囚にとって有利な情報ばかりを並べた。', 'Pengacara tersebut hanya memberikan informasi yang menguntungkan terpidana mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8690_cadangan, '控えの選手には誰がいたっけ？', 'Siapa pemain cadangannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8727_tetap, '依然父の消息は不明です。', 'Saya masih belum mendapat kabar tentang ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8874_alis, '三時間前に眉毛をそったばかりなのに、もう眉毛がつながりそうだ。', 'Padahal aku baru mencukur alisku tiga jam yang lalu, tapi alisku sudah mulai menyatu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8874_alis, 'ドレスの色に合わせて、眉毛を染めたの。', 'Aku mengecat alisku agar serasi dengan gaunku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8874_alis, '眉毛を書くのに毎朝二時間くらいかかる。', 'Saya membutuhkan waktu beberapa jam untuk menggambar alis setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8919_penerima, 'この宛名は間違っているみたいです。', 'Sepertinya ada kesalahan pada alamat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8919_penerima, '宛名書きの仕事を任された。', 'Saya diberi tugas menulis nama dan alamat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8919_penerima, '顧客の宛名リストを紛失してしまった。', 'Saya kehilangan daftar nama dan alamat pelanggan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9069_dari_silsilah_yang_terhormat, '彼は由緒正しい家系の出身です。', 'Ia berasal dari keluarga dengan garis keturunan terhormat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9069_dari_silsilah_yang_terhormat, 'ここは元々は由緒正しい神社なんですよ。', 'Tempat ini awalnya adalah kuil yang terhormat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9069_dari_silsilah_yang_terhormat, '由緒正しい生まれの女性に恋をしてしまった。', 'Saya telah jatuh cinta dengan seorang wanita dari garis keturunan terhormat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9271_musim_hujan, '日本の六月から七月は梅雨のシーズンです。', 'Musim hujan berlangsung dari bulan Juni hingga Juli di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9271_musim_hujan, '関東は昨日梅雨に入ったそうです。', 'Musim hujan dimulai di Kanto kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9271_musim_hujan, '梅雨はジメジメして嫌だけど、梅雨が明けて一気に暑くなるのも嫌なんだよなぁ。', 'Aku tidak suka musim hujan karena terlalu lembap, tapi aku juga tidak suka kalau musim hujan tiba-tiba menjadi sangat panas setelah musim hujan berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9455_membengkak, '虫に刺されて、手が腫れた。', 'Saya digigit serangga dan tangan saya bengkak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9455_membengkak, 'たくさん泣いたので、目がパンパンに腫れちゃいました。', 'Aku banyak menangis, jadi mataku menjadi sangat bengkak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9455_membengkak, '親知らずを抜く時は、ほっぺがめちゃくちゃ腫れることが多いみたいだよ。', 'Rupanya, pipi Anda membengkak parah saat gigi bungsu dicabut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9491_untuk_melihat_ke_dalam, '彼は箱の中を覗き込んだ。', 'Dia mengintip ke dalam kotak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9491_untuk_melihat_ke_dalam, '彼女は心配そうに僕の顔を覗き込んだ。', 'Dia mencondongkan tubuh dan mengamati wajahku dengan prihatin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9491_untuk_melihat_ke_dalam, '先生はまっすぐに私の目を覗き込んだ。', 'Guru itu membungkuk dan menatap lurus ke mataku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9491_untuk_melihat_ke_dalam, '気がついたら、知らないおじさんが、肩越しに私のスマホの画面を覗き込んでいた。', 'Sebelum aku menyadarinya, seorang pria asing berada tepat di belakangku, mengintip dari balik bahuku ke layar ponselku.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1017_ruang_kosong, id FROM items WHERE type = 'radical' AND (slug = '254' OR id = '254') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1017_ruang_kosong, id FROM items WHERE type = 'radical' AND (slug = '8768' OR id = '8768') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1708_negara_asal, r_377_tiga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1708_negara_asal, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1708_negara_asal, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1709_bel, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1709_bel, id FROM items WHERE type = 'radical' AND (slug = '189' OR id = '189') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1710_gundukan, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1710_gundukan, id FROM items WHERE type = 'radical' AND (slug = '8777' OR id = '8777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1710_gundukan, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1711_bercabang, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1711_bercabang, id FROM items WHERE type = 'radical' AND (slug = '81' OR id = '81') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1712_kemakmuran, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1712_kemakmuran, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1712_kemakmuran, id FROM items WHERE type = 'radical' AND (slug = '210' OR id = '210') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1713_mempekerjakan, id FROM items WHERE type = 'radical' AND (slug = '73' OR id = '73') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1713_mempekerjakan, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1714_menjauhkan_diri, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1714_menjauhkan_diri, r_370_langit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1715_dinding, id FROM items WHERE type = 'radical' AND (slug = '367' OR id = '367') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1715_dinding, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1716_catur_jepang, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1716_catur_jepang, id FROM items WHERE type = 'radical' AND (slug = '205' OR id = '205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1717_pahit, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1717_pahit, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1717_pahit, id FROM items WHERE type = 'radical' AND (slug = '8788' OR id = '8788') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1718_satu_sisi, id FROM items WHERE type = 'radical' AND (slug = '162' OR id = '162') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1719_kawanan, r_373_sobat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1719_kawanan, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1720_pertapa, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1720_pertapa, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1721_alokasikan, id FROM items WHERE type = 'radical' AND (slug = '285' OR id = '285') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1722_mengizinkan, id FROM items WHERE type = 'radical' AND (slug = '208' OR id = '208') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1724_jangkauan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1724_jangkauan, r_414_menggulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1726_tanjung, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1726_tanjung, id FROM items WHERE type = 'radical' AND (slug = '326' OR id = '326') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1727_merampok, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1727_merampok, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1727_merampok, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1728_terhormat, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1728_terhormat, id FROM items WHERE type = 'radical' AND (slug = '415' OR id = '415') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1728_terhormat, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1728_terhormat, id FROM items WHERE type = 'radical' AND (slug = '145' OR id = '145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1729_kerendahhatian, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1729_kerendahhatian, r_413_realitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1730_menolak, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1730_menolak, id FROM items WHERE type = 'radical' AND (slug = '314' OR id = '314') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1731_bingkai, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1731_bingkai, id FROM items WHERE type = 'radical' AND (slug = '11' OR id = '11') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1731_bingkai, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1732_cangkang_penyu, id FROM items WHERE type = 'radical' AND (slug = '330' OR id = '330') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1733_bermotif, id FROM items WHERE type = 'radical' AND (slug = '209' OR id = '209') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1733_bermotif, id FROM items WHERE type = 'radical' AND (slug = '42' OR id = '42') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1734_kesejahteraan, id FROM items WHERE type = 'radical' AND (slug = '80' OR id = '80') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1734_kesejahteraan, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1735_tanaman_padi, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1735_tanaman_padi, id FROM items WHERE type = 'radical' AND (slug = '8772' OR id = '8772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1735_tanaman_padi, r_374_mantan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1736_menunda, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1736_menunda, r_430_perawat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1737_kesopanan, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1737_kesopanan, id FROM items WHERE type = 'radical' AND (slug = '271' OR id = '271') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1738_melompat, id FROM items WHERE type = 'radical' AND (slug = '95' OR id = '95') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1738_melompat, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1738_melompat, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1739_pistol, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1739_pistol, id FROM items WHERE type = 'radical' AND (slug = '285' OR id = '285') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1740_ayat, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1740_ayat, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1741_baja, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1741_baja, r_376_bukit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2459_pidana, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2459_pidana, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8912_alamat, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8912_alamat, id FROM items WHERE type = 'radical' AND (slug = '33' OR id = '33') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8912_alamat, id FROM items WHERE type = 'radical' AND (slug = '158' OR id = '158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9447_pembengkakan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9447_pembengkakan, id FROM items WHERE type = 'radical' AND (slug = '188' OR id = '188') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4033_kesombongan, k_1017_ruang_kosong);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4033_kesombongan, id FROM items WHERE type = 'kanji' AND (slug = '1006' OR id = '1006') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4033_kesombongan, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4123_doa, id FROM items WHERE type = 'kanji' AND (slug = '1036' OR id = '1036') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4123_doa, id FROM items WHERE type = 'kanji' AND (slug = '906' OR id = '906') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5022_menjadi_rugi, id FROM items WHERE type = 'kanji' AND (slug = '1326' OR id = '1326') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5780_merah_tua, id FROM items WHERE type = 'kanji' AND (slug = '1560' OR id = '1560') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6114_parfum, id FROM items WHERE type = 'kanji' AND (slug = '1665' OR id = '1665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6180_putar_ganda, id FROM items WHERE type = 'kanji' AND (slug = '1686' OR id = '1686') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6180_putar_ganda, id FROM items WHERE type = 'kanji' AND (slug = '880' OR id = '880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6239_shogi, id FROM items WHERE type = 'kanji' AND (slug = '1614' OR id = '1614') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6239_shogi, k_1716_catur_jepang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6240_ahli_waris, id FROM items WHERE type = 'kanji' AND (slug = '1661' OR id = '1661') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6240_ahli_waris, id FROM items WHERE type = 'kanji' AND (slug = '1632' OR id = '1632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6241_untuk_melompat, id FROM items WHERE type = 'kanji' AND (slug = '1643' OR id = '1643') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6242_lompat_tali, id FROM items WHERE type = 'kanji' AND (slug = '1628' OR id = '1628') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6242_lompat_tali, id FROM items WHERE type = 'kanji' AND (slug = '1643' OR id = '1643') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6243_untuk_melamar, id FROM items WHERE type = 'kanji' AND (slug = '1180' OR id = '1180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6243_untuk_melamar, id FROM items WHERE type = 'kanji' AND (slug = '1648' OR id = '1648') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6244_lari_rumah, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6244_lari_rumah, id FROM items WHERE type = 'kanji' AND (slug = '1650' OR id = '1650') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6244_lari_rumah, id FROM items WHERE type = 'kanji' AND (slug = '536' OR id = '536') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6245_untuk_runtuh, id FROM items WHERE type = 'kanji' AND (slug = '1651' OR id = '1651') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6246_untuk_membayar, id FROM items WHERE type = 'kanji' AND (slug = '1608' OR id = '1608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6246_untuk_membayar, id FROM items WHERE type = 'kanji' AND (slug = '1653' OR id = '1653') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6247_untuk_memainkan_alat_musik_petik, id FROM items WHERE type = 'kanji' AND (slug = '1659' OR id = '1659') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6248_pilihan_kata, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6248_pilihan_kata, id FROM items WHERE type = 'kanji' AND (slug = '750' OR id = '750') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6248_pilihan_kata, id FROM items WHERE type = 'kanji' AND (slug = '1662' OR id = '1662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6249_uang_saku, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6249_uang_saku, id FROM items WHERE type = 'kanji' AND (slug = '1662' OR id = '1662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6250_untuk_menghapus, id FROM items WHERE type = 'kanji' AND (slug = '1668' OR id = '1668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6250_untuk_menghapus, id FROM items WHERE type = 'kanji' AND (slug = '1451' OR id = '1451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6251_papan_buletin, id FROM items WHERE type = 'kanji' AND (slug = '1672' OR id = '1672') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6251_papan_buletin, id FROM items WHERE type = 'kanji' AND (slug = '1169' OR id = '1169') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6251_papan_buletin, id FROM items WHERE type = 'kanji' AND (slug = '1399' OR id = '1399') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6252_kemacetan_lalu_lintas, k_1717_pahit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6252_kemacetan_lalu_lintas, id FROM items WHERE type = 'kanji' AND (slug = '1585' OR id = '1585') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6253_sekarang_mempekerjakan, id FROM items WHERE type = 'kanji' AND (slug = '1648' OR id = '1648') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6253_sekarang_mempekerjakan, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6253_sekarang_mempekerjakan, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6254_jalan_kembali, id FROM items WHERE type = 'kanji' AND (slug = '1653' OR id = '1653') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6254_jalan_kembali, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6255_untuk_mengambil_kembali, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6255_untuk_mengambil_kembali, id FROM items WHERE type = 'kanji' AND (slug = '1653' OR id = '1653') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6256_bom_atom, id FROM items WHERE type = 'kanji' AND (slug = '995' OR id = '995') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6256_bom_atom, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6256_bom_atom, id FROM items WHERE type = 'kanji' AND (slug = '1658' OR id = '1658') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6256_bom_atom, id FROM items WHERE type = 'kanji' AND (slug = '1659' OR id = '1659') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6257_tapak, id FROM items WHERE type = 'kanji' AND (slug = '561' OR id = '561') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6257_tapak, id FROM items WHERE type = 'kanji' AND (slug = '1661' OR id = '1661') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6258_untuk_membidik, id FROM items WHERE type = 'kanji' AND (slug = '1673' OR id = '1673') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6259_terjemahan_ke_bahasa_jepang, k_1708_negara_asal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6259_terjemahan_ke_bahasa_jepang, id FROM items WHERE type = 'kanji' AND (slug = '1511' OR id = '1511') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6260_rekan_senegaranya, k_1708_negara_asal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6260_rekan_senegaranya, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6261_persemakmuran, id FROM items WHERE type = 'kanji' AND (slug = '1084' OR id = '1084') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6261_persemakmuran, k_1708_negara_asal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6262_bel_pintu, id FROM items WHERE type = 'kanji' AND (slug = '1213' OR id = '1213') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6262_bel_pintu, k_1709_bel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6263_lonceng_kecil, k_1709_bel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6264_gifu, k_1711_bercabang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6264_gifu, k_1710_gundukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6265_kemakmuran, k_1712_kemakmuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6265_kemakmuran, id FROM items WHERE type = 'kanji' AND (slug = '1532' OR id = '1532') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6266_benjol, k_1712_kemakmuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6266_benjol, id FROM items WHERE type = 'kanji' AND (slug = '740' OR id = '740') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6267_untuk_mempekerjakan, k_1713_mempekerjakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6268_untuk_memecat_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6268_untuk_memecat_seseorang, k_1713_mempekerjakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6269_pekerjaan, k_1713_mempekerjakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6269_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6270_dinding, k_1715_dinding);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6271_kertas_dinding, k_1715_dinding);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6271_kertas_dinding, id FROM items WHERE type = 'kanji' AND (slug = '663' OR id = '663') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6272_pemain_shogi, k_1716_catur_jepang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6272_pemain_shogi, id FROM items WHERE type = 'kanji' AND (slug = '877' OR id = '877') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6273_pergi_asosiasi, k_1716_catur_jepang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6273_pergi_asosiasi, id FROM items WHERE type = 'kanji' AND (slug = '744' OR id = '744') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6274_rasa_pahit, k_1717_pahit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6275_fragmen, k_1718_satu_sisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6276_satu_tangan, k_1718_satu_sisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6276_satu_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6277_bahasa_rusak, k_1718_satu_sisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6277_bahasa_rusak, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6278_katakana, k_1718_satu_sisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6278_katakana, id FROM items WHERE type = 'kanji' AND (slug = '739' OR id = '739') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6278_katakana, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6279_satu_arah, k_1718_satu_sisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6279_satu_arah, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6280_kawanan, k_1719_kawanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6281_prefektur_gunma, k_1719_kawanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6281_prefektur_gunma, id FROM items WHERE type = 'kanji' AND (slug = '692' OR id = '692') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6281_prefektur_gunma, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6282_kerumunan, k_1719_kawanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6282_kerumunan, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6283_pertapa, k_1720_pertapa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6283_pertapa, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6284_bakung, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6284_bakung, k_1720_pertapa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6285_sendai, k_1720_pertapa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6285_sendai, id FROM items WHERE type = 'kanji' AND (slug = '520' OR id = '520') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6286_kesempurnaan, k_1721_alokasikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6286_kesempurnaan, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6287_isi_ulang, k_1721_alokasikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6287_isi_ulang, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6288_pasokan_ulang, id FROM items WHERE type = 'kanji' AND (slug = '1261' OR id = '1261') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6288_pasokan_ulang, k_1721_alokasikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6289_untuk_melarikan_diri_dari_sesuatu, k_1722_mengizinkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6290_sertifikat, k_1722_mengizinkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6290_sertifikat, id FROM items WHERE type = 'kanji' AND (slug = '1183' OR id = '1183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6291_lisensi, k_1722_mengizinkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6291_lisensi, id FROM items WHERE type = 'kanji' AND (slug = '1050' OR id = '1050') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6292_pembebasan_pajak, k_1722_mengizinkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6292_pembebasan_pajak, id FROM items WHERE type = 'kanji' AND (slug = '1149' OR id = '1149') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6293_maaf, k_1728_terhormat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6293_maaf, k_1722_mengizinkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6294_pembebasan, k_1722_mengizinkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6294_pembebasan, id FROM items WHERE type = 'kanji' AND (slug = '1451' OR id = '1451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6296_rekomendasi, id FROM items WHERE type = 'kanji' AND (slug = '1723' OR id = '1723') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6296_rekomendasi, id FROM items WHERE type = 'kanji' AND (slug = '1031' OR id = '1031') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6298_di_luar_jangkauan, k_1724_jangkauan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6298_di_luar_jangkauan, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6299_dunia_berbahasa_inggris, id FROM items WHERE type = 'kanji' AND (slug = '953' OR id = '953') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6299_dunia_berbahasa_inggris, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6299_dunia_berbahasa_inggris, k_1724_jangkauan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6300_lingkaran_kutub_selatan, id FROM items WHERE type = 'kanji' AND (slug = '634' OR id = '634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6300_lingkaran_kutub_selatan, id FROM items WHERE type = 'kanji' AND (slug = '1340' OR id = '1340') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6300_lingkaran_kutub_selatan, k_1724_jangkauan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6302_prefektur_saitama, k_1726_tanjung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6302_prefektur_saitama, id FROM items WHERE type = 'kanji' AND (slug = '489' OR id = '489') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6302_prefektur_saitama, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6303_untuk_merampok, k_1727_merampok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6304_nasi, k_1728_terhormat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6304_nasi, id FROM items WHERE type = 'kanji' AND (slug = '955' OR id = '955') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6305_untuk_melihat, k_1728_terhormat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6305_untuk_melihat, id FROM items WHERE type = 'kanji' AND (slug = '1428' OR id = '1428') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6306_bersikap_bijaksana, k_1729_kerendahhatian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6307_bijaksana, k_1729_kerendahhatian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6307_bijaksana, id FROM items WHERE type = 'kanji' AND (slug = '735' OR id = '735') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6308_menolak, k_1730_menolak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6309_penolakan, k_1730_menolak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6309_penolakan, id FROM items WHERE type = 'kanji' AND (slug = '1517' OR id = '1517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6310_bingkai, k_1731_bingkai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6311_bingkai, k_1731_bingkai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6311_bingkai, id FROM items WHERE type = 'kanji' AND (slug = '670' OR id = '670') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6312_cangkang_penyu, k_1732_cangkang_penyu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6313_bernilai, k_1732_cangkang_penyu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6313_bernilai, k_1733_bermotif);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6314_kesejahteraan, id FROM items WHERE type = 'kanji' AND (slug = '867' OR id = '867') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6314_kesejahteraan, k_1734_kesejahteraan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6315_tanaman_padi, k_1735_tanaman_padi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6316_sawah, k_1735_tanaman_padi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6316_sawah, id FROM items WHERE type = 'kanji' AND (slug = '490' OR id = '490') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6317_budidaya_padi, k_1735_tanaman_padi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6317_budidaya_padi, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6318_untuk_mengakui, k_1736_menunda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6319_transfer, id FROM items WHERE type = 'kanji' AND (slug = '1368' OR id = '1368') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6319_transfer, k_1736_menunda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6320_orang_jepang_yang_rendah_hati, k_1737_kesopanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6320_orang_jepang_yang_rendah_hati, k_1736_menunda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6320_orang_jepang_yang_rendah_hati, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6321_kesopanan, k_1737_kesopanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6321_kesopanan, k_1017_ruang_kosong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6322_untuk_melompat, k_1738_melompat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6324_partisipasi_aktif, id FROM items WHERE type = 'kanji' AND (slug = '639' OR id = '639') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6324_partisipasi_aktif, k_1738_melompat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6327_melompat, id FROM items WHERE type = 'kanji' AND (slug = '1643' OR id = '1643') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6327_melompat, k_1738_melompat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6328_pistol, k_1739_pistol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6329_kematian_karena_penembakan, k_1739_pistol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6329_kematian_karena_penembakan, id FROM items WHERE type = 'kanji' AND (slug = '880' OR id = '880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6330_peluru_senapan, k_1739_pistol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6330_peluru_senapan, id FROM items WHERE type = 'kanji' AND (slug = '1659' OR id = '1659') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6331_pistol, id FROM items WHERE type = 'kanji' AND (slug = '847' OR id = '847') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6331_pistol, k_1739_pistol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6332_barang, k_1740_ayat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6332_barang, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6333_urusan, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6333_urusan, k_1740_ayat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6334_poin_penting, id FROM items WHERE type = 'kanji' AND (slug = '737' OR id = '737') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6334_poin_penting, k_1740_ayat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6335_baja, k_1741_baja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6336_bahan_baja, k_1741_baja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6336_bahan_baja, id FROM items WHERE type = 'kanji' AND (slug = '909' OR id = '909') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6337_pembuatan_baja, id FROM items WHERE type = 'kanji' AND (slug = '1219' OR id = '1219') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6337_pembuatan_baja, k_1741_baja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7511_untuk_menerbitkan, id FROM items WHERE type = 'kanji' AND (slug = '1672' OR id = '1672') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7511_untuk_menerbitkan, id FROM items WHERE type = 'kanji' AND (slug = '1230' OR id = '1230') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8604_tawanan, k_2459_pidana);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8604_tawanan, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8605_dikutuk_kriminal, id FROM items WHERE type = 'kanji' AND (slug = '617' OR id = '617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8605_dikutuk_kriminal, id FROM items WHERE type = 'kanji' AND (slug = '1647' OR id = '1647') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8605_dikutuk_kriminal, k_2459_pidana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8690_cadangan, k_1714_menjauhkan_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8727_tetap, id FROM items WHERE type = 'kanji' AND (slug = '1639' OR id = '1639') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8727_tetap, id FROM items WHERE type = 'kanji' AND (slug = '881' OR id = '881') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8874_alis, id FROM items WHERE type = 'kanji' AND (slug = '8862' OR id = '8862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8874_alis, id FROM items WHERE type = 'kanji' AND (slug = '513' OR id = '513') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8919_penerima, k_8912_alamat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8919_penerima, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9069_dari_silsilah_yang_terhormat, id FROM items WHERE type = 'kanji' AND (slug = '648' OR id = '648') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9069_dari_silsilah_yang_terhormat, id FROM items WHERE type = 'kanji' AND (slug = '1699' OR id = '1699') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9069_dari_silsilah_yang_terhormat, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9271_musim_hujan, id FROM items WHERE type = 'kanji' AND (slug = '1007' OR id = '1007') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9271_musim_hujan, id FROM items WHERE type = 'kanji' AND (slug = '603' OR id = '603') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9455_membengkak, k_9447_pembengkakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9491_untuk_melihat_ke_dalam, id FROM items WHERE type = 'kanji' AND (slug = '9469' OR id = '9469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9491_untuk_melihat_ke_dalam, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;

END $$;
