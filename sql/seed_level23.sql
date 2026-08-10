-- ====================================================
-- KaniGani — Seed Data Level 23 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 23) ============
  r_288_kulit UUID; r_289_tanaman_merambat UUID; r_290_restoran UUID; r_291_jalan UUID; r_292_setan UUID; r_302_mencampur UUID; r_8789_jagung UUID; r_8793_pagi UUID;

  -- ============ KANJI IDs (Level 23) ============
  k_1186_memperoleh UUID; k_1187_berhenti UUID; k_1188_kulit UUID; k_1189_pekerjaan UUID; k_1190_setan UUID; k_1192_membela UUID; k_1193_membagi UUID; k_1194_hakim UUID; k_1195_tanjung UUID; k_1196_akting UUID; k_1197_hukum UUID; k_1198_guru UUID; k_1199_awasi UUID; k_1200_standar UUID; k_1201_aturan UUID; k_1202_menyediakan UUID; k_1203_memimpin UUID; k_1204_batang_pohon UUID; k_1205_menggeliat UUID; k_1206_unggul UUID; k_1207_rumah UUID; k_1208_rawa UUID; k_1209_boros UUID; k_1210_melaksanakan UUID; k_1211_waktu_sekarang UUID; k_1212_susu UUID; k_1213_panggilan UUID; k_1214_kastil UUID; k_1215_haiku UUID; k_1216_unggul UUID; k_1267_efektif UUID; k_1304_menusuk UUID; k_1318_nyeri UUID; k_1900_rak UUID; k_2051_ungu UUID; k_8996_gatal UUID;

  -- ============ VOCABULARY IDs (Level 23) ============
  v_2810_memengaruhi UUID; v_2832_perusahaan_yang_dikelola_pemerintah UUID; v_3756_untuk_membangun UUID; v_3933_arsitek UUID; v_4270_hadiah UUID; v_4390_untuk_dicampur_dengan UUID; v_4395_konservatif UUID; v_4407_akan_selesai UUID; v_4412_reputasi UUID; v_4441_luar_biasa UUID; v_4500_penggelinciran UUID; v_4502_untuk_melarikan_diri UUID; v_4503_penghindaran_pajak UUID; v_4576_kereta_api_lokal UUID; v_4577_untuk_konfirmasi UUID; v_4580_komite UUID; v_4581_untuk_memilih UUID; v_4584_halte_bus UUID; v_4585_penghentian UUID; v_4586_pemadaman_listrik UUID; v_4587_vampir UUID; v_4588_penyerapan UUID; v_4589_kuitansi UUID; v_4590_penghasilan UUID; v_4592_kulit UUID; v_4593_revolusi UUID; v_4594_kulit UUID; v_4595_penganggur UUID; v_4596_tempat_kerja UUID; v_4597_pekerjaan UUID; v_4598_personil UUID; v_4599_memiliki_pekerjaan UUID; v_4600_berburu_pekerjaan UUID; v_4601_pengunduran_diri UUID; v_4602_setan UUID; v_4605_perawat UUID; v_4606_pengacara UUID; v_4607_untuk_menghemat UUID; v_4608_guru UUID; v_4609_dokter UUID; v_4610_hukum UUID; v_4613_untuk_membagi UUID; v_4614_peran UUID; v_4615_sepuluh_persen UUID; v_4616_perbandingan UUID; v_4617_untuk_menilai UUID; v_4618_uji_coba UUID; v_4619_tanjung UUID; v_4620_kawasaki UUID; v_4621_nagasaki UUID; v_4622_standar UUID; v_4623_busuk UUID; v_4624_hukum_fisika UUID; v_4625_untuk_menyediakan UUID; v_4626_persiapan UUID; v_4627_untuk_memimpin UUID; v_4628_panduan UUID; v_4629_batang_pohon UUID; v_4630_kereta_peluru UUID; v_4631_untuk_meregangkan_sesuatu UUID; v_4632_lembut UUID; v_4633_aktor UUID; v_4634_prioritas UUID; v_4635_kemenangan UUID; v_4636_rumah UUID; v_4637_rumah_seseorang UUID; v_4638_tempat_tinggal UUID; v_4640_kemewahan UUID; v_4641_pelaksanaan UUID; v_4642_untuk_muncul UUID; v_4643_ekspresi UUID; v_4644_realitas UUID; v_4645_lokasi_di_tempat UUID; v_4646_susu UUID; v_4647_puting UUID; v_4648_untuk_menelepon UUID; v_4649_kastil UUID; v_4650_aktor UUID; v_4651_haiku UUID; v_4652_ke_unggul UUID; v_4653_unggul UUID; v_4806_sebuah_efek UUID; v_4807_efisiensi UUID; v_4851_ekonomi UUID; v_4853_untuk_meningkatkan_sesuatu UUID; v_4855_untuk_mengkritik UUID; v_4856_untuk_meningkatkan_sesuatu UUID; v_4858_untuk_memotong UUID; v_4859_lembaga UUID; v_4961_tiba_tiba UUID; v_5057_sakit_kepala UUID; v_5937_untuk_turun UUID; v_6530_ruang_ganti UUID; v_6831_rak UUID; v_6832_rak_buku UUID; v_6833_kabinet UUID; v_7269_ungu UUID; v_7271_ungu UUID; v_7506_akting UUID; v_7507_untuk_melakukan UUID; v_7508_pentas_seni UUID; v_7598_pertunjukan UUID; v_7651_garis_seseorang UUID; v_7765_untuk_mengetahui UUID; v_7779_untuk_dikuburkan UUID; v_8676_optimisme UUID; v_8678_banyak UUID; v_8714_sebenarnya UUID; v_8754_divisi UUID; v_8887_iri UUID; v_8931_agar_cocok_di_dalam UUID; v_8936_untuk_ditambahkan_ke UUID; v_9007_gatal UUID; v_9083_perjalanan_bisnis UUID; v_9152_pinggiran_kota UUID; v_9161_titik_balik UUID; v_9254_rana UUID; v_9344_untuk_hibah UUID; v_9383_diri UUID; v_9462_mangsa UUID;

BEGIN

  DELETE FROM items WHERE level = 23;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '革', 'kulit', 23, 1, 'Apa yang radikal ini, Anda bertanya? Ini <radikal>kulit</radikal>! Temui pria kulit yang mengenakan pakaian serba kulit. Dia mengenakan topi koboi kulit, rompi kulit, ikat pinggang kulit, dan dia bahkan memegang tali kekang kulit.')
    RETURNING id INTO r_288_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丩', 'tanaman-merambat', 23, 2, 'Radikal ini tampak seperti <radikal>tanaman merambat</radikal> yang biasa Anda lihat bergelantungan di pepohonan di hutan. Bayangkan berayun dengan gaya Tarzan ini. "AaaaAA aAA AAAaaaa!"')
    RETURNING id INTO r_289_tanaman_merambat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '亭', 'restoran', 23, 3, 'Ini adalah <radikal>restoran</radikal> radikal. Apakah Anda melihat lampu murung menyinari jubah baja, yang terletak di atas meja yang ditutupi taplak meja putih? Ayo, kamu harus memanjakan dirimu dengan makan malam yang enak di sana-sini!')
    RETURNING id INTO r_290_restoran;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '道', 'jalan', 23, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>jalan</radikal>.')
    RETURNING id INTO r_291_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '鬼', 'setan', 23, 5, 'Ini adalah <radikal>iblis</radikal>. Dia memiliki tampilan iblis klasik: taring liar, lidah iblis yang mencuat, dan tanduk di kepalanya. Ada juga api kecil di dekatnya karena Anda tidak dapat melakukan aktivitas setan tanpa api kecil!')
    RETURNING id INTO r_292_setan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '交', 'mencampur', 23, 6, 'Radikal ini sama dengan kanji. Artinya <radikal>campuran</radikal>.')
    RETURNING id INTO r_302_mencampur;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/corn-8789.svg', 'jagung', 23, 7, 'Ia memiliki daun dan terhubung ke sesuatu yang memiliki banyak bagian kecil. Ini tampak seperti <radical>jagung</radikal> yang pendek dan gemuk.')
    RETURNING id INTO r_8789_jagung;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '𠦝', 'pagi', 23, 8, 'Ini adalah sisi kiri kanji 朝, jadi kita akan menyebutnya <radical>pagi</radikal> juga.')
    RETURNING id INTO r_8793_pagi;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_288_kulit, 'Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_289_tanaman_merambat, 'tanaman merambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_290_restoran, 'Restoran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_291_jalan, 'Jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_292_setan, 'Setan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_302_mencampur, 'Mencampur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8789_jagung, 'Jagung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8793_pagi, 'Pagi', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '収', 'memperoleh', 23, 9, 'Bungkus <radical>tanaman merambat</radical> di sekitar <radical>bangku</radical> untuk <kanji>mendapatkan</kanji> itu. Jangan khawatir tentang membayarnya, menyelinap ke toko bangku dan mengikat beberapa tanaman merambat di sekitar kakinya. Kemudian ketika Anda pergi, cabut tanaman merambat tersebut dan feses akan keluar setelahnya. Begitulah cara Anda mendapatkan bangku!', 'Hari ini Anda ingin <kanji>mendapatkan</kanji> sepasang <reading>sepatu</reading> (しゅう) baru. Anda mengikat tanaman merambat di sekitar bangku tempat mereka berada, dan perlahan-lahan mengarahkannya ke arah pintu.')
    RETURNING id INTO k_1186_memperoleh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '停', 'berhenti', 23, 10, '<radikal>pemimpin</radikal> dari <radikal>restoran</radikal> mengatakan, "<kanji>Berhenti</kanji>!" kepada semua orang yang ingin masuk. Pemimpin melihat mereka dari atas ke bawah. Menatap mata mereka. Dan kemudian, mungkin, mereka pergi ke restoran untuk makan.', 'Orang-orang hanya <kanji>berhenti</kanji> karena mereka ingin <reading>ta</reading>ter (てい) restoran yang terkenal di dunia ini. Mungkin itulah sebabnya ada pemimpin di depan yang memastikan hanya orang-orang yang benar-benar menghargai tater tots yang bisa masuk untuk memakannya.')
    RETURNING id INTO k_1187_berhenti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '革', 'kulit', 23, 11, 'Kanji <radikal>kulit</radikal> dan kanji <kanji>kulit</kanji> sama persis! Dingin!', 'Salah satu cara untuk mendapatkan <kanji>kulit</kanji> adalah dengan menguliti ayam jantan, <reading>ayam</reading> (かく). Bukan cara yang efisien untuk mendapatkan kulit, tapi tetap saja merupakan salah satu cara.')
    RETURNING id INTO k_1188_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '職', 'pekerjaan', 23, 12, 'Mencapai <radical>telinga</radical> Anda adalah <radical>suara</radical> dari <radical>pemabuk</radical> yang tidak dapat menemukan <kanji>pekerjaan</kanji>. Anda mendengarnya sebelum Anda melihatnya karena dia ada di balik tong sampah. Sebagai seorang pemabuk, dia seperti sangat mabuk dan hanya mengoceh pada dirinya sendiri, mengeluarkan suara-suara aneh. Tidak heran dia tidak bisa mendapatkan pekerjaan.', 'Karena orang ini pemabuk yang menyedihkan, tidak <reading>kaget</reading> (しょく) kalau dia tidak bisa mendapatkan <kanji>pekerjaan</kanji>. Jika dia benar-benar mendapatkan pekerjaan, saya akan terkejut sekaligus kagum.')
    RETURNING id INTO k_1189_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鬼', 'setan', 23, 13, 'Kanji <radical>iblis</radikal> dan kanji <kanji>iblis</kanji> sama persis! Jahat!', 'Bagaimana cara mengurung <kanji>iblis</kanji>? Gunakan tombol <reading></reading> (き). Gunakan gembok dan kunci dan simpan iblis itu dengan aman di balik jeruji besi sehingga dia tidak bisa keluar dan melakukan hal-hal jahat yang dilakukan iblis.')
    RETURNING id INTO k_1190_setan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '護', 'membela', 23, 14, 'Mereka <radical>mengatakan</radical> bahwa <radical>bunga</radical> yang dipegang oleh <radical>kalkun</radical> di atas <radical>bangku</radical> bagus untuk <kanji>mempertahankan</kanji>. Bahkan lebih baik dari anjing penjaga, kata mereka. Orang-orang begitu bingung dengan kalkun yang duduk di bangku sambil memegang bunga sehingga mereka kehilangan keinginan untuk bertarung. Kalkun ini bagus untuk membela diri dan rumah Anda.', 'Satu-satunya hal yang tidak bisa <kanji>pertahankan</kanji> dari kalkun berbunga ini adalah <reading>Go</reading>dzilla (ご). Godzilla tidak terkalahkan, terutama bagi seekor kalkun. Kalkun sama sekali tidak mampu mempertahankan apapun dari Godzilla yang perkasa.')
    RETURNING id INTO k_1192_membela;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '割', 'membagi', 23, 15, 'Sebuah <radical>atap</radikal> menimpa Anda tepat di antara <radikal>tulang rusuk</radikal> dan <radikal>mulut</radikal> Anda, mengiris Anda seperti <radikal>pisau</radikal> dan berhasil <kanji>membagi</kanji> tubuh Anda menjadi dua.', 'Siapa yang menyebabkan atap ini menimpamu dan <kanji>membelah</kanji> tubuhmu menjadi dua? <reading>Wari</reading>o (わり) dan <reading>wa</reading>lrus (わ) sahabat karibnya. Wario selalu menjadi orang jahat, tapi sejak bekerja sama dengan teman walrusnya, dia terlibat dalam beberapa hal yang sangat aneh… seperti menggunakan atap untuk membagi orang menjadi dua, dengan gaya guillotine.')
    RETURNING id INTO k_1193_membagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '裁', 'hakim', 23, 16, 'Anda memasang <radical>salib</radikal> pada <radikal>pakaian</radikal> <radikal>pemabuk</radikal> ini untuk menunjukkan kepadanya bahwa Anda <kanji>menilai</kanji> dia. Malah kamu teriak, "AKU HUKUM KAMU KAMU MABUK DAN PAKAI PAKAIAN INI, AMBIL INI!"', 'Saat Anda <kanji>menilai</kanji> satu sama lain, borg (さい) <reading>cy</reading> Anda datang menghentak dan membanting pemabuk itu ke dinding. Dengan cyborg tepercaya yang datang menyelamatkan Anda, Anda dapat terus menilai orang ini semau Anda.')
    RETURNING id INTO k_1194_hakim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '崎', 'tanjung', 23, 17, 'Dari puncak <radical>gunung</radical> Anda melihat sesuatu yang tampak seperti <radical>besar</radical> <radical>cincin bibir</radical> yang menjorok ke laut: itu adalah <kanji>tanjung</kanji>! Tahukah Anda, formasi geologi di mana sebidang tanah besar menjorok ke laut? Jubah seperti itu.', 'Melihat <kanji>tanjung</kanji>, Anda menyadari bahwa tanjung selalu membuat garis pantai terlihat bergerigi, seperti <reading>gergaji</reading> atau <reading>kunci</reading> (さき). Terima kasih telah membuat garis pantainya tetap menarik, dasar jubah kunci gergaji!')
    RETURNING id INTO k_1195_tanjung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '演', 'akting', 23, 18, 'Akan terjadi <radikal>tsunami</radikal>. Jadi, Anda berdiri di <radical>atap</radical> Anda. Anda melihat orang-orang di seberang <radical>jalan</radical>, di <radical>sawah</radical>. Mereka memperhatikan saat Anda mengenakan sepasang <radical>sirip</radikal>. Dan Anda mulai <kanji>akting</kanji>. Ini adalah kesempatan terakhir Anda untuk <kanji>tampil</kanji>!', 'Sebagai <kanji>akting</kanji> <reading>en</reading>ds (えん), begitu juga kalian semua.')
    RETURNING id INTO k_1196_akting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '律', 'hukum', 23, 19, '<radical>Berkeliaran</radical>berkeliaran dengan <radical>sikat</radical>? Maaf, tapi Anda melanggar <kanji>hukum</kanji>. Jika Anda memiliki kuas, tidak apa-apa. Jika Anda berkeliaran, tidak apa-apa. Jika Anda menggabungkan keduanya? Baiklah... awasi punggungmu.', 'Dimana kamu berkeliaran dengan kuasmu, melanggar <kanji>hukum</kanji>? Tepat di luar Hotel <read>Ritz</reading> (りつ). Anda mungkin berpikir tidak apa-apa karena Anda tinggal di sana, namun hukum tetaplah hukum.')
    RETURNING id INTO k_1197_hukum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '師', 'guru', 23, 20, '<radical>setetes</radical> air jatuh dari <radical>beruang</radical> ke <radical>tanah</radical> dan perlu dibersihkan dengan <radical>handuk</radical>. Hanya seorang <kanji>guru</kanji> atau <kanji>pakar</kanji> yang bisa mendekati beruang basah ini untuk membersihkannya.', '<kanji>guru</kanji> memberitahu Anda untuk memulai dengan sesuatu yang lebih kecil, lagipula, Anda belum menjadi <kanji>ahli</kanji>. Anda harus berlatih di atas <reading>shee</reading>p (し) yang basah. "Saya menjadi ahli hewan yang basah dan berbahaya dengan memulai dari domba, Anda juga akan melakukannya!" kata gurumu.')
    RETURNING id INTO k_1198_guru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '看', 'awasi', 23, 21, 'Letakkan <radical>tangan</radical> Anda di atas <radical>mata</radical> Anda untuk <kanji>mengawasi</kanji> orang lain.', 'Saat Anda <kanji>mengawasi</kanji> teman dan tetangga Anda, Anda melihat pergerakan di kejauhan. Oh tidak, itu Jenghis <reading>Khan</reading> (かん) dan pasukannya!')
    RETURNING id INTO k_1199_awasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '準', 'standar', 23, 22, 'Saat mengendarai <radical>tsunami</radical> Anda melihat <radical>kalkun</radical> membawa <radical>salib</radical>, tapi itu cukup <kanji>standar</kanji> di sini. Ini adalah alam mimpimu. Anda selalu bermimpi tentang tsunami dan kalkun yang membawa salib yang menungganginya. Ini mungkin aneh bagi orang lain, tetapi bagi Anda itu cukup normal.', 'Mimpi aneh ini hanya <kanji>standar</kanji> di bulan <reading>Juni</reading> (じゅん). Anda tidak memilikinya pada waktu lain dalam setahun, hanya pada bulan Juni. Anda tidak tahu mengapa bulan Juni adalah satu-satunya saat Anda bermimpi tentang kalkun menunggangi tsunami, tapi memang begitulah adanya.')
    RETURNING id INTO k_1200_standar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '則', 'aturan', 23, 23, '<radical>kerang</radikal> dengan <radical>pisau</radikal> membuat semua <kanji>aturan</kanji>. Seharusnya tidak membuat aturan, tapi ada pisaunya, jadi siapa yang akan membantah?', '<kanji>aturan</kanji> pertama yang diberlakukan kerang adalah semua manusia melepas <reading>kaus kaki</reading> (そく) mereka dan memberikannya kepadanya. Hmm... apakah ini sejenis kerang yang menjijikkan? Siapa yang mau kaus kaki?')
    RETURNING id INTO k_1201_aturan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '備', 'menyediakan', 23, 24, '<radical>pemimpin</radikal> meletakkan <radikal>bunga</radikal> di <radikal>tebing</radikal>. Itulah <radikal>tugas</radikal> mereka. Tujuannya adalah untuk <kanji>menyediakan</kanji> dan <kanji>melengkapi</kanji> tebing dengan bunga.', 'Mengapa mereka <kanji>menyediakan</kanji> dan <kanji>melengkapi</kanji> tebing dengan bunga? Itu semua untuk <reading>lebah</reading> (び).')
    RETURNING id INTO k_1202_menyediakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '導', 'memimpin', 23, 25, 'Lakukan <radikal>pengukuran</radikal> <radikal>jalan</radikal> ini. Hmm. Sepertinya agak terlalu lama. Saat Anda mengukurnya, Anda terus menyusuri jalan ini, bertanya-tanya ke mana <kanji>memimpin</kanji> Anda.', 'Ke manakah jalan yang <kanji>tuju</kanji> Anda ukur? Ke toko <reading>dou</reading>ghnut (どう)!')
    RETURNING id INTO k_1203_memimpin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '幹', 'batang-pohon', 23, 26, 'Di <radical>pagi</radical>, jika Anda ingin <radical>topi</radical> Anda <radical>kering</radical>, Anda perlu menggantungnya di <kanji>batang pohon</kanji>. Di pagi hari, semuanya tertutup embun. Rerumputannya basah, dedaunannya basah, tetapi batang pohonnya tidak basah! Itu dilindungi oleh sisa pohon, jadi Anda bisa menggantung topi Anda di sana hingga kering.', 'Kamu bersandar pada <kanji>batang pohon</kanji>, menunggu topimu mengering, dan tiba-tiba kamu menyadari Jenghis <reading>Khan</reading> (かん) ada di baliknya. Anda melihat sekeliling dan melihat bahwa semua batang pohon di sekitar Anda memiliki orang Mongol yang mengeringkan topi mereka di bawahnya.')
    RETURNING id INTO k_1204_batang_pohon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '張', 'menggeliat', 23, 27, 'Anda memiliki <radical>busur</radikal> dan Anda ingin membuatnya <radikal>panjang</radikal>. Untuk melakukan itu, Anda cukup <kanji>meregangkan</kanji> saja.', 'Saat Anda <kanji>meregangkan</kanji> busur, Anda mendengar seseorang berlari ke arah Anda. "Itu busurku yang sedang kamu regangkan!" teriak Ny. <reading>Chou</reading> (ちょう). Dia tidak senang Anda meregangkan barang-barangnya. Anda mungkin harus mencoba melepaskannya, meletakkannya, dan lari sebelum dia mengalahkan Anda.')
    RETURNING id INTO k_1205_menggeliat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '優', 'unggul', 23, 28, '<radical>pemimpin</radikal> dari <radical>ratusan</radikal> <radikal>dahi</radikal> di <radikal>jantung</radikal> <radikal>musim dingin</radikal> adalah <kanji>unggul</kanji> dalam <kanji>lembut</kanji>. Ratusan dahi ini sensitif, terutama di tengah musim dingin, jadi pemimpinnya harus sangat lembut. Namun bukan sembarang jenis kelembutan—jenis kelembutan terbaik yang akan membuat ratusan dahi mengikutinya.', 'Kamu harus <kanji>unggul</kanji> karena semua dahi ini milik <read>kamu</reading>mereka (ゆう). Mereka tidak tahu cara mengurus dirinya sendiri, meski mereka berusaha meyakinkan Anda bahwa mereka bisa. Mereka terlalu muda untuk mengetahui lebih baik.')
    RETURNING id INTO k_1206_unggul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宅', 'rumah', 23, 29, 'Anda harus naik ke <radical>atap</radical> dan menggunakannya seperti <radical>slide</radical> <radical>tujuh</radical> kali untuk menjadikan ini <kanji>rumah</kanji> Anda. Sebuah rumah bukanlah <kanji>rumah</kanji> sampai Anda berhasil menurunkan atapnya tepat tujuh kali, lho.', 'Saat kamu meluncur ke bawah atap <kanji>rumah</kanji>mu, kamu akan mendapatkan <reading>paku</reading> (たく) di pipi pantatmu. Semua sirap atap di <kanji>rumah</kanji> baru Anda dipasang dengan paku payung, jadi sungguh sebuah keajaiban bahwa Anda hanya memasang satu paku payung di dalam diri Anda.')
    RETURNING id INTO k_1207_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '沢', 'rawa', 23, 30, '<radikal>tsunami</radikal> <radikal>udang</radikal> menabrak <kanji>rawa</kanji>. Kini rawa itu dipenuhi udang. Dulunya mereka tinggal di lautan, namun tsunami telah membawa mereka ke rumah baru mereka di rawa.', 'Rumahmu berada tepat di sebelah <kanji>rawa</kanji> dan di sisi rumahmu ini terdapat banyak <reading>paku</reading> (たく) di sana untuk menggantung barang. Sekarang, di setiap paku ada udang yang ditusuk. Kekuatan tsunami mendorong mereka ke pagar di samping rumah Anda.')
    RETURNING id INTO k_1208_rawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '贅', 'boros', 23, 31, '<radical>Kotoran</radical> berubah <radical>arah</radical> di <radical>musim dingin</radical>, dan bukannya bahan-bahan biasa, ia mulai menanam <radical>kerang</radical> yang sangat <kanji>mewah</kanji>. Kerang-kerangan ini sangat mewah karena mereka hanya dapat tumbuh di tanah pada musim dingin (setelah tanah bergeser "arah" dan mulai menopang kerang sebagai ganti tanaman).', 'Untuk menjadikan pengalaman ini lebih <kanji>mewah</kanji>, kamu memakannya dengan <reading>zei</reading>ber (ぜい), pedang Jerman. Garpu terlalu sederhana untuk kerang mewah ini — Anda harus menggunakan zeiber untuk kemewahan maksimal.')
    RETURNING id INTO k_1209_boros;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '施', 'melaksanakan', 23, 32, 'Bergerak ke <radikal>arah</radikal> <radikal>senjata</radikal>, <radikal>buaya</radikal> dapat <kanji>melakukan</kanji> pembunuhan setelah mencapainya. Buaya ini ingin membunuh seseorang. Buaya ingin melaksanakan eksekusinya.', 'Untuk <kanji>melakukan</kanji> pembunuhan ini, aligator harus menyelinap ke mangsanya, sehingga dapat menembaknya. Anda melihat ke seberang air dan melihat seekor <reading>shee</reading>p (し) sedang merumput di tepi pantai. Aligator akan melakukan pembunuhan terhadap domba itu!')
    RETURNING id INTO k_1210_melaksanakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '現', 'waktu-sekarang', 23, 33, '<radical>raja</radikal> dapat <radikal>melihat</radikal> <kanji>saat ini</kanji> sebagaimana adanya. Masa depan tidaklah penting. Masa lalu tidak penting. Saat ini adalah saat segala sesuatu <kanji>muncul</kanji>s.', 'Pada <kanji>saat ini</kanji> rajanya adalah <reading>Gen</reading>ji (げん). Akhirnya tiba waktunya baginya untuk serius, dan seperti yang mereka katakan, tidak ada waktu seperti sekarang.')
    RETURNING id INTO k_1211_waktu_sekarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '乳', 'susu', 23, 34, 'Memberikan <radical>cleat</radical> kepada <radical>anak</radical> yang membawa <radical>payung</radical> adalah cara terbaik untuk mengumpulkan <kanji>susu</kanji>. Tidak ada wadahnya, jadi anak harus memegang susu di payung yang terbalik. Geriginya berfungsi agar anak dapat berlari bolak-balik untuk mengangkut susu.', 'Tapi dimana sebenarnya anak ini? Dia berada di <read>Baru</reading> (にゅう) York City. Apa yang dia lakukan di New York City, Anda bertanya? Ya, dia sedang memerah susu sapi. Mengapa ada sapi yang diperah di New York City? Pertanyaan bagus. Ini adalah akhir dunia dan Kota New York adalah peradaban terakhir yang tersisa. Beginilah cara orang hidup sekarang. <kanji>Susu</kanji> itu penting.')
    RETURNING id INTO k_1212_susu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '呼', 'panggilan', 23, 35, '<radikal>Mulut</radikal> yang menginginkan <radikal>perdamaian</radikal> dapat <kanji>meminta</kanji> untuk itu. Jika Anda tidak punya mulut, Anda tidak bisa menyerukan perdamaian. Jadi gunakan mulut Anda dan serukan perdamaian bila Anda bisa. Kedamaian itu luar biasa.', 'Namun sebelum Anda <kanji>menyerukan</kanji> perdamaian, Anda harus terlebih dahulu menenangkan massa. Untuk melakukannya, Anda membuat mereka takjub dengan keterampilan <reading>yo</reading>-yo (よ) Anda. Begitu mereka terpesona dengan betapa berbakatnya Anda dalam menggunakan yo-yo, Anda dengan mudah meyakinkan mereka untuk berdamai.')
    RETURNING id INTO k_1213_panggilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '城', 'kastil', 23, 36, '<radical>Kotoran</radical> bisa <radical>menjadi</radical> sebuah <kanji>kastil</kanji> kapan saja. Anda hanya perlu memiliki kondisi yang tepat. Waktu yang tepat, orang yang tepat, dan sebidang tanah apa pun bisa tumbuh menjadi kastil yang besar.', 'Saat kamu mengubah tanah menjadi <kanji>kastil</kanji>, hanya itu <reading>yang dia tulis</reading>te (しろ). Itu saja. Sudah selesai. Ceritanya sudah berakhir.')
    RETURNING id INTO k_1214_kastil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '俳', 'haiku', 23, 37, 'Seorang <radikal>pemimpin</radikal> yang ingin menghentikan <radikal>penjahat</radikal> akan menulis <kanji>haiku</kanji> yang mengharukan. Pemimpinnya memohon kepada para penjahat untuk menghentikan kejahatan mereka, mencari ke dalam, dan menyadari bahwa ada lebih banyak hal dalam hidup (seperti puisi!).', '<kanji>haiku</kanji> tetaplah <reading>hai</reading>ku (はい). Entah itu ditulis oleh pemimpin yang taat hukum atau pemimpin kriminal.')
    RETURNING id INTO k_1215_haiku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '秀', 'unggul', 23, 38, 'Jika Anda bisa makan <radical>biji-bijian</radical> sambil berlari <radical>tangga</radical>, Anda akan <kanji>unggul</kanji> dalam segala hal.', 'Namun, untuk <kanji>unggul</kanji> dalam hal ini, Anda memerlukan sepasang <reading>sepatu</reading> (しゅう) yang bagus.')
    RETURNING id INTO k_1216_unggul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '効', 'efektif', 23, 39, 'Jika Anda <radical>mencampur</radikal> jenis <radikal>kekuatan</radikal> yang berbeda, Anda akan menghasilkan sesuatu yang <kanji>efektif</kanji>.', 'Campuran dua kekuatan yang <kanji>efektif</kanji> adalah dua <membaca>こう</reading>いち. Pasangkan mereka, dan kekuatan mereka akan bercampur hingga menghasilkan efek yang luar biasa. Sekarang gunakan mereka untuk menyerang makhluk mirip binatang. Ini sangat efektif!')
    RETURNING id INTO k_1267_efektif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '突', 'menusuk', 23, 40, 'Bagaimana cara membuat <radical>lubang</radical> menjadi bagus dan <radical>besar</radical>? Anda harus <kanji>menusuk</kanji> sesuatu di dalamnya. <kanji>dorong</kanji> saja ke sana. Dan pastikan gerakan Anda benar-benar <kanji>mendadak</kanji>. Tusukan dan tusukan akan lebih efektif jika dilakukan secara tiba-tiba.', 'Berikan <kanji>tikaman</kanji> besar terakhir pada lubang itu, sekarang Anda telah <reading>totes</reading> (とつ) menunjukkan siapa bosnya pada lubang itu. Apa yang sudah saya ceritakan tentang teknik <kanji>mendadak</kanji> <kanji>dorongan</kanji>? Ini sangat efektif. Seperti, tas jinjing.')
    RETURNING id INTO k_1304_menusuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '痛', 'nyeri', 23, 41, 'Ketika <radical>sakit</radical> <radical>mama</radical> Anda mencoba melakukan <radical>tugas</radical> dia dipenuhi dengan <kanji>rasa sakit</kanji>!', '<kanji>rasa sakit</kanji> ibumu <membaca>terlalu</reading> (つう) sulit untuk dia atasi, jadi sekarang kamu harus melakukan semua tugasnya juga.')
    RETURNING id INTO k_1318_nyeri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '棚', 'rak', 23, 42, 'Ambil <radical>pohon</radical> dan buatlah dua unit <kanji>rak</kanji> berbentuk <radical>bulan</radical> dengannya. Bulan berbentuk radikal, yaitu. Radikal bulan yang berdiri berdampingan itu terlihat seperti rak, bukan begitu? Pohon di sebelah kiri hanya untuk mengingatkan Anda bahwa itu terbuat dari kayu, saya kira. Rak kayu yang indah.', 'Agar sesuai dengan bentuk radikal bulan, <kanji>rak</kanji> ini harus cukup tinggi, artinya Anda dapat menyimpan <read>ton-a</reading>-barang (たな) di atasnya.')
    RETURNING id INTO k_1900_rak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紫', 'ungu', 23, 43, 'Anda <radical>menghentikan</radical> sebuah <radical>sendok</radical> agar tidak bergerak dengan mengikatnya menggunakan <radical>benang</radical> yang berwarna <kanji>ungu</kanji>. Sendoknya tidak berhenti bergerak, jadi Anda harus menggunakan benang ungu favorit Anda untuk menghentikannya. Itu adalah benang terkuat yang Anda miliki.', 'Untuk mengingat bacaan ini, pikirkan tentang bagaimana desa yang Anda kunjungi sebelumnya semuanya <kanji>ungu</kanji>. Itu adalah "<reading>村先</reading>" (むらさき) yang Anda datangi.')
    RETURNING id INTO k_2051_ungu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '痒', 'gatal', 23, 44, '<radical>sakit</radical> <radical>domba</radical> <kanji>gatal</kanji> dan hampir tidak bisa duduk diam. Bantulah domba-domba malang itu!', 'Meskipun dombanya <kanji>gatal</kanji>, lihat betapa <reading>kah-yu</reading>te (かゆ) itu! Ini tidak hanya lucu. Ini kah-yute!')
    RETURNING id INTO k_8996_gatal;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1186_memperoleh, 'Memperoleh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1187_berhenti, 'Berhenti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1188_kulit, 'Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1189_pekerjaan, 'Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1190_setan, 'Setan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1192_membela, 'Membela', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1193_membagi, 'Membagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1194_hakim, 'Hakim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1195_tanjung, 'Tanjung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1196_akting, 'Akting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1196_akting, 'Melakukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1197_hukum, 'Hukum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1198_guru, 'Guru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1198_guru, 'Pakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1198_guru, 'Menguasai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1199_awasi, 'Awasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1200_standar, 'Standar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1201_aturan, 'Aturan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1202_menyediakan, 'Menyediakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1202_menyediakan, 'Melengkapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1202_menyediakan, 'Mempersiapkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1203_memimpin, 'Memimpin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1204_batang_pohon, 'Batang Pohon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1204_batang_pohon, 'Kemampuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1205_menggeliat, 'Menggeliat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1206_unggul, 'Unggul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1206_unggul, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1207_rumah, 'Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1207_rumah, 'Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1208_rawa, 'Rawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1209_boros, 'Boros', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1210_melaksanakan, 'Melaksanakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1211_waktu_sekarang, 'Waktu Sekarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1211_waktu_sekarang, 'Muncul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1212_susu, 'Susu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1213_panggilan, 'Panggilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1214_kastil, 'Kastil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1215_haiku, 'Haiku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1216_unggul, 'Unggul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1267_efektif, 'Efektif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1304_menusuk, 'Menusuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1304_menusuk, 'Dorongan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1304_menusuk, 'Tiba-tiba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1318_nyeri, 'Nyeri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1900_rak, 'Rak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2051_ungu, 'Ungu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8996_gatal, 'Gatal', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1186_memperoleh, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1186_memperoleh, 'おさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1187_berhenti, 'てい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1188_kulit, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1188_kulit, 'かわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1189_pekerjaan, 'しょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1190_setan, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1190_setan, 'おに', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1192_membela, 'ご', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1193_membagi, 'わり', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1193_membagi, 'わ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1193_membagi, 'かつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1193_membagi, 'さ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1194_hakim, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1194_hakim, 'さば', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1194_hakim, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1195_tanjung, 'さき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1195_tanjung, 'き', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1196_akting, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1197_hukum, 'りつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1198_guru, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1199_awasi, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1199_awasi, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1200_standar, 'じゅん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1201_aturan, 'そく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1201_aturan, 'のっと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1202_menyediakan, 'び', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1202_menyediakan, 'そな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1203_memimpin, 'どう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1203_memimpin, 'みちび', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1204_batang_pohon, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1204_batang_pohon, 'みき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1205_menggeliat, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1205_menggeliat, 'は', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1206_unggul, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1206_unggul, 'やさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1206_unggul, 'すぐ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1207_rumah, 'たく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1208_rawa, 'たく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1208_rawa, 'さわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1209_boros, 'ぜい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1209_boros, 'いぼ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1210_melaksanakan, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1210_melaksanakan, 'せ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1210_melaksanakan, 'ほどこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1211_waktu_sekarang, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1211_waktu_sekarang, 'あらわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1212_susu, 'にゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1212_susu, 'ちち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1213_panggilan, 'よ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1213_panggilan, 'こ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1214_kastil, 'しろ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1214_kastil, 'じょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1215_haiku, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1216_unggul, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1216_unggul, 'ひい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1267_efektif, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1267_efektif, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1304_menusuk, 'とつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1304_menusuk, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1318_nyeri, 'つう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1318_nyeri, 'いた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1900_rak, 'たな', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1900_rak, 'ほう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2051_ungu, 'むらさき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2051_ungu, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8996_gatal, 'かゆ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8996_gatal, 'よう', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '作用', 'memengaruhi', 23, 45, 'Saat Anda <kanji>membuat</kanji> sebuah <kanji>tugas</kanji>, Anda sedang mencari <vocabulary>efek</vocabulary> atau <vocabulary>action</vocabulary> tertentu. Tugas apa yang dapat Anda lakukan saat ini untuk mendapatkan efek mempelajari lebih banyak kanji?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 作 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Apa <vocabulary>efek</vocabulary> dari <reading>gergaji</reading> pada <reading>yo</reading>gurt (さよう)? Apa yang akan dilakukan <vocabulary>action</vocabulary> gergaji pada yogurt? Tampaknya sia-sia, tetapi Anda akan tetap mencobanya. Untuk sains.', 'Memengaruhi, Tindakan, Operasi')
    RETURNING id INTO v_2810_memengaruhi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公社', 'perusahaan-yang-dikelola-pemerintah', 23, 46, '<kanji>publik</kanji> <kanji>perusahaan</kanji> adalah <vocabulary>perusahaan yang dikelola pemerintah</vocabulary> atau <vocabulary>perusahaan milik pemerintah</vocabulary>. Dengan kata lain, ini adalah perusahaan yang dijalankan oleh pemerintah pusat atau daerah untuk kepentingan masyarakat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perusahaan yang Dikelola Pemerintah, Perusahaan Milik Pemerintah')
    RETURNING id INTO v_2832_perusahaan_yang_dikelola_pemerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '建てる', 'untuk-membangun', 23, 47, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membangun</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to build</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Pikirkan tentang apa yang terjadi ketika Anda membangun sesuatu. Apa yang sedang kamu lakukan? Anda berdiri tegak. Bagaimana Anda mengatakan "berdiri" dalam bahasa Jepang? <membaca>た</membaca>てる. Begitu pula dengan bacaan kata ini. Kalau dipikir-pikir, mereka mirip!', 'Untuk Membangun, Untuk Membangun')
    RETURNING id INTO v_3756_untuk_membangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '建築家', 'arsitek', 23, 48, 'Anda tahu bahwa 建築 adalah arsitektur. Jadi, seseorang dari <kanji>rumah</kanji> <kanji>arsitektur</kanji> adalah seseorang yang mengerjakan arsitektur. Mereka adalah <vocabulary>arsitek</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ini juga akan membantu jika Anda sudah tahu cara membaca 建築.', 'Arsitek')
    RETURNING id INTO v_3933_arsitek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '現在', 'hadiah', 23, 49, 'Di <kanji>saat ini</kanji> kita <kanji>ada</kanji>. Jam berapa sekarang? Itu <vocabulary>hadir</vocabulary> dan <vocabulary>sekarang</vocabulary>. Ini adalah waktu <vocabulary>saat ini</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hadiah, Sekarang, Saat ini')
    RETURNING id INTO v_4270_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '混じる', 'untuk-dicampur-dengan', 23, 50, 'Kanji berarti <kanji>campuran</kanji>, dan Anda sudah mempelajari pasangan transitif dan intransitifnya: 混ぜる (mencampur) dan 混ざる (mencampur). 混じる adalah kata kerja intransitif lainnya, namun artinya <vocabulary>dicampur dengan</vocabulary>.

Jadi apa perbedaan 混ざる dan 混じる? 混ざる digunakan untuk berbicara tentang hal-hal yang tercampur menjadi satu bagian dari satu kesatuan — seperti warna campuran atau kelompok yang bercampur. 混じる, di sisi lain, bukan tentang memadukan dengan lancar dan lebih banyak tentang sesuatu yang tercampur padahal sebenarnya tidak sesuai — statis dalam audio Anda, helaian abu-abu yang berserakan di rambut hitam Anda, atau bahkan orang asing yang duduk di meja grup Anda.

Kamu bisa mengingatnya dengan memikirkan bagaimana hal yang tidak pada tempatnya ini tercampur aduk dan membuatmu ingin <reading>mengejek</reading> (じる): "Huu, keluar dari sini! Kamu tidak cocok!"', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajarinya dengan 混ぜる, namun berikut adalah mnemonik jika Anda lupa:

Siapa yang tidak ingin uban <vocabulary>tercampur</vocabulary> dengan rambut hitamnya? <membaca>ma</reading> Anda (ま). Sedihnya bagi ibumu, usia dan stres dalam membesarkan ANDA telah menyebabkan banyak uban mulai bercampur. Kasihan ibu…', 'Untuk Dicampur Dengan, Untuk Dicampur')
    RETURNING id INTO v_4390_untuk_dicampur_dengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保守主義', 'konservatif', 23, 51, 'Anda tahu bahwa 主義 adalah "-isme". Tambahkan paham tersebut kepada orang-orang yang ingin <kanji>melindungi</kanji> dan <kanji>melestarikan</kanji> agar negaranya tetap seperti apa adanya (selamanya). Itulah <vocabulary>konservatisme</vocabulary> dan mereka adalah orang-orang <vocabulary>konservatif</vocabulary>.', 'Kata ini menggunakan bacaan 保守的 untuk paruh pertama dan kemudian pembacaan kanji biasa untuk paruh kedua. Gabungkan hal-hal itu dan Anda akan menjadi ahli kebenaran dan/atau kanji.', 'Konservatif, Konservatisme')
    RETURNING id INTO v_4395_konservatif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '済む', 'akan-selesai', 23, 52, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>berakhir</kanji>, jadi versi kosakata kata kerjanya juga tentang sesuatu yang berakhir: artinya <vocabulary>harus selesai</vocabulary> atau <vocabulary>harus dilakukan</vocabulary>.

済む digunakan ketika sesuatu telah selesai atau terselesaikan, seringkali tanpa masalah lebih lanjut, seperti 支払いが済む (pembayaran selesai). Dari gagasan inti resolusi ini, muncul pula berbagai ungkapan lain tentang segala sesuatunya yang akan segera berakhir atau “cukup”.

Contohnya, 気が済む berarti merasa puas dengan sesuatu yang bisa menghilangkan masalah dalam sistem tubuhmu, seperti dalam 気が済むまで泣く (menangislah sampai kamu merasa lebih baik). Demikian pula, 〜で済む menyatakan bahwa sesuatu saja sudah cukup, seperti 電話一本で済む (hanya cukup dengan satu panggilan telepon).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika ada sesuatu yang belum terselesaikan dan Anda ingin <vocabulary>selesai</vocabulary>, cara terbaik Anda adalah <reading>menuntut</reading> (す) seseorang. Baik itu pembayaran yang belum terselesaikan atau pekerjaan yang belum selesai, menuntut seseorang adalah cara terbaik untuk memastikan masalah tersebut selesai. Tentu saja, Anda harus menunggu gugatannya diselesaikan terlebih dahulu…', 'Akan Selesai, Harus Dilakukan, Akan Selesai')
    RETURNING id INTO v_4407_akan_selesai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '評判', 'reputasi', 23, 53, 'Saat orang <kanji>mengevaluasi</kanji> dan <kanji>menghakimi</kanji> pada setiap kesempatan, itu berarti Anda memiliki <vocabulary>reputasi</vocabulary> yang cukup baik, dan memang <vocabulary>ketenaran</vocabulary>. Bukankah akan sangat buruk jika orang mengevaluasi dan menghakimi Anda 24/7? Memiliki reputasi atau ketenaran seperti itu akan sulit.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Ini menggunakan bacaan yang sedikit berbeda dari apa yang Anda pelajari untuk 判, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>reputasi</vocabulary> Anda sangat penting bagi Anda, jadi jangan biarkan siapa pun tahu bahwa Anda telah <reading>ban</reading>ned (ばん) di forum WaniKani sebelumnya. Tidak ingin ada yang mengetahuinya. Apa, ini akan diterbitkan sebagai mnemonik bacaan di WaniKani?! Apa yang kamu bicarakan? Oh sial-...', 'Reputasi, Popularitas')
    RETURNING id INTO v_4412_reputasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '素晴らしい', 'luar-biasa', 23, 54, 'Sebuah <kanji>elemen</kanji> dari <kanji>menjernihkan</kanji> (seperti langit cerah!) sangatlah <vocabulary>menakjubkan</vocabulary> dan <vocabulary>menakjubkan</vocabulary>. Sebuah kata yang aneh, tapi sangat berguna. Bayangkan saja perasaan indah yang Anda dapatkan ketika matahari terbit dan keadaan menjadi cerah dan itu luar biasa.', 'Bacaannya juga agak aneh. Untungnya, Anda sudah mempelajari keduanya. 晴れる adalah はれる. Itu bacaan yang Anda gunakan di sini, meskipun は berubah menjadi ば.', 'Luar biasa, Bagus sekali, Agung, Terbaik')
    RETURNING id INTO v_4441_luar_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脱線', 'penggelinciran', 23, 55, 'Ketika sesuatu <kanji>melarikan diri</kanji> dari <kanji>baris</kanji> seharusnya aktif, itu adalah <vocabulary>penggelinciran</vocabulary>.

脱線 bisa merujuk pada tergelincirnya kereta api (tidak mengherankan), namun sering kali digunakan secara kiasan untuk mengartikan <vocabulary>penyimpangan</vocabulary>, seperti dalam ucapan atau tulisan. Apakah Anda pernah menggagalkan pembicaraan karena penyimpangan Anda?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penggelinciran, Penyimpangan')
    RETURNING id INTO v_4500_penggelinciran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脱走する', 'untuk-melarikan-diri', 23, 56, 'Anda <kanji>melarikan diri</kanji> dan <kanji>lari</kanji> keluar dari sana. Pada dasarnya, Anda mencoba <vocabulary>melarikan diri</vocabulary>, <vocabulary>melarikan diri</vocabulary>, atau <vocabulary>untuk keluar</vocabulary>. Cukup sederhana.

脱走する secara khusus mengacu pada melarikan diri dari lingkungan yang terkendali atau terbatas, seperti melarikan diri dari penjara, pangkalan militer, atau fasilitas yang dijaga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun だつ berubah menjadi だっ, jadi berhati-hatilah.', 'Untuk Melarikan Diri, Untuk melarikan diri, Untuk Keluar')
    RETURNING id INTO v_4502_untuk_melarikan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脱税', 'penghindaran-pajak', 23, 57, 'Anda mencoba <kanji>melarikan diri</kanji> dari <kanji>pajak</kanji>? Kamu takut pada mereka? Hah? Itu <vocabulary>penghindaran pajak</vocabulary> sobat. Anda akan masuk penjara karena itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penghindaran Pajak')
    RETURNING id INTO v_4503_penghindaran_pajak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '各駅停車', 'kereta-api-lokal', 23, 58, 'Di <kanji>setiap</kanji> <kanji>stasiun</kanji> seseorang terus <kanji>menghentikan</kanji>menghentikan <kanji>mobil </kanji>. Apa ini, <vocabulary>kereta lokal</vocabulary>?! Ya, ya, benar. Anda berada di kereta lokal. Orang-orang menggunakannya saat mereka naik (atau turun) di stasiun yang lebih kecil.

Jika Anda tidak terbiasa bepergian dengan kereta api, ingatlah bahwa "kereta lokal" adalah kereta yang berhenti di setiap stasiun dalam satu jalur.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kereta Api Lokal')
    RETURNING id INTO v_4576_kereta_api_lokal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '確認する', 'untuk-konfirmasi', 23, 59, '確認 adalah konfirmasi. Jika itu adalah kata kerja, Anda memiliki <vocabulary>untuk mengonfirmasi</vocabulary> atau <vocabulary>untuk memverifikasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan sangat membantu jika Anda sudah mengetahui kata 確認.', 'Untuk Konfirmasi, Untuk Memverifikasi')
    RETURNING id INTO v_4577_untuk_konfirmasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '委員会', 'komite', 23, 60, 'Ada anggota komite (委員) yang berkumpul untuk <kanji>bertemu</kanji>. Ini adalah <vocabulary>komite</vocabulary> itu sendiri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Tentu saja akan membantu jika mengetahui 委員 juga, karena merupakan 2/3 kata.', 'Komite')
    RETURNING id INTO v_4580_komite;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '選挙する', 'untuk-memilih', 23, 61, '<kanji>Pemilihan</kanji> adalah 選挙 jadi saat kamu membuat kata itu menjadi kata kerja, kamu punya <vocabulary>to elect</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Selain itu, bacaannya hanya berasal dari 選挙 jadi jika Anda mengetahuinya, Anda juga mengetahuinya.', 'Untuk Memilih')
    RETURNING id INTO v_4581_untuk_memilih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'バス停', 'halte-bus', 23, 62, 'Di sinilah <kanji>bus</kanji> (バス) berhenti. Itu adalah <vocabulary>halte bus</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Halte Bus')
    RETURNING id INTO v_4584_halte_bus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '停止', 'penghentian', 23, 63, '<kanji>Berhenti</kanji> dan <kanji>berhenti</kanji>. Ketika sesuatu melakukan hal ini, ia berada dalam <vocabulary>penghentian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penghentian, Penangguhan')
    RETURNING id INTO v_4585_penghentian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '停電', 'pemadaman-listrik', 23, 64, 'Saat Anda <kanji>menghentikan</kanji> <kanji>listrik</kanji> Anda mengalami <vocabulary>pemadaman listrik</vocabulary>. Masuk akal. Ketika listrik padam, Anda tidak mempunyai listrik lagi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemadaman Listrik, Pemutusan Listrik, Pemadaman Listrik')
    RETURNING id INTO v_4586_pemadaman_listrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吸血鬼', 'vampir', 23, 65, '<kanji>iblis</kanji> yang <kanji>menghisap</kanji> darah</kanji>? Menurut Anda, makhluk mitologi apa yang menghisap darah? Bagaimana dengan <vocabulary>vampir</vocabulary>? Mereka berkilau!', '吸血 seharusnya mudah dibaca. Bagian 鬼 menggunakan bacaan yang sudah Anda pelajari dengan kanji, き. Mudah, bukan?', 'vampir')
    RETURNING id INTO v_4587_vampir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吸収', 'penyerapan', 23, 66, 'Anda <kanji>menyedot</kanji> sesuatu dan <kanji>mendapatkan</kanji> itu. Sshhhwwwwww! Ketika Anda menyedot sesuatu dan memasukkannya ke dalam tubuh Anda, Anda telah melakukan <kosa kata>penyerapan</vocabulary> karena benda itu telah tersedot ke dalam diri Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penyerapan')
    RETURNING id INTO v_4588_penyerapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '領収書', 'kuitansi', 23, 67, 'Saya <kanji>mendapatkan</kanji> beberapa <kanji>wilayah</kanji>, jadi saya ingin <kanji>catatan tertulis</kanji>n mengenainya. Bagaimana saya mendapatkan catatan tertulis mengenai wilayah yang saya peroleh? Bagaimana dengan <vocabulary>tanda terima</vocabulary>? Mengirim email ke seseorang sudah cukup.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kuitansi')
    RETURNING id INTO v_4589_kuitansi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '収入', 'penghasilan', 23, 68, 'Silakan <kanji>masukkan</kanji> apa yang telah <kanji>dapatkan</kanji>di sini. Kami akan membagi semuanya nanti. Tapi kita harus memasukkan semuanya disini supaya kita tahu <vocabulary>pendapatan</vocabulary> kita.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penghasilan')
    RETURNING id INTO v_4590_penghasilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '革', 'kulit', 23, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

<vocabulary>Kulit</vocabulary> itu kulit sapi ya? Bagaimana cara mengucapkan "kulit" dalam bahasa Jepang? Ingat <reading>皮</reading> (かわ)? Bacaannya sama seperti itu, dan keduanya sama-sama skin, jadi semoga lebih mudah diingat.', 'Kulit')
    RETURNING id INTO v_4592_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '革命', 'revolusi', 23, 70, '<kanji><kanji>Nasib</kanji> kulit berada di tangan <vocabulary>revolusi</vocabulary>. Ini adalah revolusi kulit! Kenakan pakaian biasa ini dan kenakan pakaian kulit!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Revolusi')
    RETURNING id INTO v_4593_revolusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皮革', 'kulit', 23, 71, '<kanji>Kulit</kanji> <kanji>kulit</kanji> sebenarnya hanyalah <vocabulary>kulit</vocabulary> karena kulit juga merupakan kulit. Itu juga <vocabulary>menyembunyikan</vocabulary>.', 'Pembacaannya adalah pembacaan on''yomi pada kanji. Anda seharusnya sudah mengenal keduanya!', 'Kulit, Menyembunyikan, kulit')
    RETURNING id INTO v_4594_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無職', 'penganggur', 23, 72, 'Bila status <kanji>pekerjaan</kanji> Anda adalah "<kanji>tidak ada</kanji>" maka Anda mungkin <vocabulary>menganggur</vocabulary>. Anda mengalami <vocabulary>pengangguran</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penganggur, Pengangguran')
    RETURNING id INTO v_4595_penganggur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '職場', 'tempat-kerja', 23, 73, '<kanji>pekerjaan</kanji> <kanji>lokasi</kanji> Anda adalah <vocabulary>tempat kerja</vocabulary> atau <vocabulary>tempat kerja</vocabulary> Anda. Ini juga merupakan <vocabulary>tempat kerja</vocabulary> Anda.

Apakah Anda menggunakan WaniKani di 職場 Anda saat ini? Bukankah itu lucu.', 'Kata ini menggunakan bacaan on''yomi untuk kanji pertama dan bacaan kun''yomi untuk kanji kedua. Anda tidak mempelajari pembacaan kun''yomi untuk 場 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Di <vocabulary>tempat kerja</vocabulary> Anda, Anda "<reading>baa</reading>" (ば) kepada rekan kerja Anda sebagai salam. Ingat balai kota tempat Anda harus berbicara bahasa Sheepan kepada para pegawainya? Ternyata pengucapan "baa" Anda sangat bagus sehingga mereka mempekerjakan Anda. Sekarang Anda bisa berlatih baaing sepanjang hari, dan mendapat bayaran juga!', 'Tempat Kerja, Tempat kerja, Tempat Kerja')
    RETURNING id INTO v_4596_tempat_kerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '職業', 'pekerjaan', 23, 74, '<kanji>pekerjaan</kanji> <kanji>bisnis</kanji> Anda adalah <vocabulary>pekerjaan</vocabulary> atau <vocabulary>profesi</vocabulary> Anda. Apa bisnis pekerjaan Anda?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pekerjaan, Profesi')
    RETURNING id INTO v_4597_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '職員', 'personil', 23, 75, '<kanji>pekerjaan</kanji> <kanji>anggota</kanji> di tempat kerja adalah <vocabulary>personil</vocabulary> atau <vocabulary>staf</vocabulary>. Cukup mudah!

職員 dan 社員 adalah dua istilah yang mirip, tetapi memiliki arti berbeda. 社員 umumnya mengacu pada karyawan perusahaan swasta, sedangkan 職員 mengacu pada karyawan yang bekerja di berbagai bidang seperti pegawai negeri, pendidikan, pemerintahan, nirlaba, dan banyak lagi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Personil, Staf, Karyawan')
    RETURNING id INTO v_4598_personil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '有職', 'memiliki-pekerjaan', 23, 76, '<kanji>memiliki</kanji> <kanji>pekerjaan</kanji> berarti <vocabulary>memiliki pekerjaan</vocabulary>. Wow, selamat <vocabulary>dipekerjakan</vocabulary>!

有職 adalah kata formal untuk mengatakan bahwa seseorang memiliki pekerjaan tetap, bukan 無職 (menganggur). Anda akan sering melihatnya dalam tulisan resmi seperti survei atau artikel.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memiliki Pekerjaan, Menjadi Pekerjaan')
    RETURNING id INTO v_4599_memiliki_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '求職', 'berburu-pekerjaan', 23, 77, 'Ugh, waktunya <kanji>meminta</kanji> <kanji>pekerjaan</kanji> lagi. Saatnya pergi <vocabulary>berburu pekerjaan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berburu Pekerjaan')
    RETURNING id INTO v_4600_berburu_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辞職', 'pengunduran-diri', 23, 78, 'Jika Anda <kanji>berhenti</kanji> dari <kanji>pekerjaan</kanji> Anda, Anda memasukkan <vocabulary>pengunduran diri</vocabulary>, alias <vocabulary>mengundurkan diri</vocabulary>.

辞職 adalah istilah formal yang mengacu pada seseorang yang secara sukarela meninggalkan pekerjaan atau jabatannya di lingkungan profesional.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengunduran diri, Mengundurkan diri')
    RETURNING id INTO v_4601_pengunduran_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鬼', 'setan', 23, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

<vocabulary>Iblis</vocabulary> itu jahat. Setan ini menggigit lutut Anda, menciptakan bentuk "O" pada lutut Anda. Dia memberitahumu bahwa dia telah mengutukmu dengan <reading>lutut "O"</reading> (おに).', 'Setan, Raksasa')
    RETURNING id INTO v_4602_setan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '看護師', 'perawat', 23, 80, 'Seorang <kanji>ahli</kanji> yang <kanji>mengawasi</kanji> dan <kanji>membela</kanji> orang setiap saat adalah <vocabulary>perawat</vocabulary>. Itulah yang dilakukan perawat, 24/7. Mereka harus memeriksa orang-orang, menjaga kesehatan mereka, dan mengawasi mereka, memastikan mereka baik-baik saja. Pekerjaan yang sulit.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perawat')
    RETURNING id INTO v_4605_perawat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弁護士', 'pengacara', 23, 81, 'Seorang <kanji>samurai</kanji> yang menggunakan <kanji>ucapan</kanji> untuk <kanji>membela</kanji> orang. Samurai ini melakukan pertarungannya di pengadilan. "Samurai" ini adalah <vocabulary>pengacara</vocabulary> atau <vocabulary>pengacara</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengacara, Pengacara')
    RETURNING id INTO v_4606_pengacara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保護する', 'untuk-menghemat', 23, 82, '<kanji>melestarikan</kanji> dan <kanji>mempertahankan</kanji> sesuatu adalah <vocabulary>melestarikan</vocabulary> dan <vocabulary>melindungi</vocabulary>. Aku tidak akan membiarkanmu menghancurkan negeri ini yang aku coba <vocabulary>lindungi</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Menghemat, Untuk Melindungi')
    RETURNING id INTO v_4607_untuk_menghemat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '教師', 'guru', 23, 83, 'Seorang <kanji>mengajar</kanji>pakar</kanji>/<kanji>guru</kanji> adalah <vocabulary>guru</vocabulary>.

教師 adalah kata yang relatif formal untuk guru. Berbeda dengan 先生, kata ini khusus untuk orang yang berprofesi sebagai guru dan tidak dapat digunakan sebagai nama akhir.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Guru')
    RETURNING id INTO v_4608_guru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '医師', 'dokter', 23, 84, '<kanji>obat</kanji> <kanji>ahli</kanji> adalah seseorang yang mengetahui banyak hal tentang pengobatan. Orang-orang itu (saya harap) umumnya adalah <vocabulary>dokter</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dokter')
    RETURNING id INTO v_4609_dokter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '法律', 'hukum', 23, 85, 'Meskipun tidak ada hukum tentang dua kanji dengan arti yang sama yang menghasilkan arti yang sama, sebuah <kanji>hukum</kanji> <kanji>hukum</kanji> mungkin adalah sebuah <vocabulary>law</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hukum')
    RETURNING id INTO v_4610_hukum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '割る', 'untuk-membagi', 23, 86, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membagi</kanji> sehingga versi kosakata verbanya adalah <vocabulary>membagi</vocabulary> atau <vocabulary>membagi sesuatu</vocabulary>.

Bisa juga berarti <vocabulary>memecahkan sesuatu</vocabulary>, seperti dalam ワイングラスを割る (memecahkan gelas anggur). Lagi pula, secara teknis Anda membagi objek menjadi beberapa bagian jika Anda memecahkannya, bukan?', 'Bacaan yang Anda pelajari dengan kanji itulah yang akan Anda gunakan di sini. Tapi itu yang わ, membuatnya menjadi わる.', 'Untuk Membagi, Untuk Membagi Sesuatu, Untuk Menghancurkan Sesuatu')
    RETURNING id INTO v_4613_untuk_membagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '役割', 'peran', 23, 87, 'Mari <kanji>membagi</kanji> <kanji>tugas</kanji> di antara berbagai orang. Setiap orang akan memiliki <vocabulary>peran</vocabulary> masing-masing dalam menyelesaikan tugas ini.', 'Bacaannya adalah yang Anda pelajari dengan kanji. Lihat bagaimana kita membagi tugas mempelajari kanji menjadi radikal dan kanji serta kosakata? Membuatnya menyenangkan, bukan? Setiap bagian memiliki miliknya sendiri 役割.', 'Peran')
    RETURNING id INTO v_4614_peran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一割', 'sepuluh-persen', 23, 88, '<kanji>Satu</kanji> <kanji>divisi</kanji> adalah <vocabulary>sepuluh persen</vocabulary>. Anda hanya perlu membayangkan ini dalam puluhan yang berlalu. Pasti ada sistem persentase Jepang kuno yang terbawa atau semacamnya. Ingat saja satu wari sepuluh persen, dua wari dua puluh persen, dan seterusnya.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Anda sudah mengetahui lebih dari sepuluh persen bacaan kata ini.', 'Sepuluh Persen')
    RETURNING id INTO v_4615_sepuluh_persen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '割合', 'perbandingan', 23, 89, 'Saat Anda <kanji>membagi</kanji> sesuatu menjadi beberapa bagian dan <kanji>menggabungkannya kembali, Anda akan lebih mampu mengevaluasi <vocabulary>ratio</vocabulary> atau <vocabulary>persentase</vocabulary> dari bagian-bagian tersebut dalam kaitannya dengan keseluruhan. Pikirkan semua bagian ini, dipisahkan dengan rapi dan kemudian ditempatkan bersebelahan. Hanya karena Anda membaginya maka Anda dapat melihatnya seperti ini.

割合 biasanya mengacu pada rasio suatu bagian tertentu jika dibandingkan dengan keseluruhan, sering kali dinyatakan dalam persentase. Jika digunakan dengan cara ini, kata ini mirip dengan 比率, namun 割合 lebih umum digunakan dalam bahasa sehari-hari.

Perlu diperhatikan bahwa 割合 juga dapat digunakan sebagai kata keterangan, yang artinya <vocabulary>relatif</vocabulary> atau <vocabulary>fair</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda sudah mempelajari keduanya, jadi Anda seharusnya sudah bisa membacanya!', 'Perbandingan, Persentase, Relatif, Cukup')
    RETURNING id INTO v_4616_perbandingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裁く', 'untuk-menilai', 23, 90, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menghakimi</kanji> jadi versi kata kerjanya adalah <vocabulary>to judge</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Saat Anda <vocabulary>menilai</vocabulary> orang, ada berbagai tipe. Namun, yang paling kamu benci adalah <reading>sobber</reading> (さば). "The Sobber" adalah jenis yang terburuk. Mereka hanya terisak-isak dan terisak-isak dan sangat sulit untuk melanjutkan ke penilaian berikutnya.', 'Untuk menilai')
    RETURNING id INTO v_4617_untuk_menilai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裁判', 'uji-coba', 23, 91, 'Anda akan mendapatkan <kanji>hakim</kanji>d kali dua. <kanji>Juri</kanji> dan <kanji>hakim</kanji> lagi. Satu kali oleh juri dan satu kali lagi oleh juri. Ini adalah keseluruhan <vocabulary>trial</vocabulary> di sini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Mudah-mudahan Anda mempelajari on''yomi ini untuk 判 dengan kata 評判, tapi berikut ini mnemonik untuk membantu Anda untuk berjaga-jaga:

Setelah <reading>ban</reading> (ばん) di forum WaniKani, kini Anda menghadapi <vocabulary>trial</vocabulary> di hadapan Hakim Koichi. Dia akan memutuskan apakah larangan Anda akan dicabut atau tidak. Semoga beruntung, ada banyak hal yang dipertaruhkan.', 'Uji coba')
    RETURNING id INTO v_4618_uji_coba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '崎', 'tanjung', 23, 92, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Dalam bahasa Jepang modern, kata ini tidak umum digunakan sebagai istilah yang berdiri sendiri. Namun, sering kali ditemukan sebagai bagian dari kata benda yang merujuk pada lokasi geografis yang memiliki jubah, serta nama keluarga yang dikaitkan dengan jubah.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Tanjung, Semenanjung Kecil')
    RETURNING id INTO v_4619_tanjung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '川崎', 'kawasaki', 23, 93, 'Ini adalah salah satu kata yang lebih mudah diketahui jika Anda langsung membaca. Mengapa? Karena itu nama sebuah kota. Itu <vocabulary>Kawasaki</vocabulary>.', 'Pembacaannya adalah yang Anda pelajari dengan kanji, menjadikannya <reading>Kawasaki</reading>.', 'Kawasaki, Kota Kawasaki')
    RETURNING id INTO v_4620_kawasaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '長崎', 'nagasaki', 23, 94, 'Kata ini akan lebih mudah jika Anda langsung membacanya, karena ini adalah nama suatu tempat, <vocabulary>Nagasaki</vocabulary>.', '長 adalah bacaan kun''yomi yang berasal dari 長い. Bagian 崎 adalah bacaan yang sama yang Anda pelajari dengan kanji (meskipun juga kun''yomi). Gabungkan semuanya dan Anda memiliki <reading>ながさき</reading>. Kedengarannya familier? Itu harus. Inilah kota <vocabulary>Nagasaki</vocabulary>, salah satu kota tempat jatuhnya bom atom.', 'Nagasaki')
    RETURNING id INTO v_4621_nagasaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '基準', 'standar', 23, 95, '<kanji>fondasi</kanji> dari <kanji>standar</kanji> Anda adalah tempat Anda meletakkan <vocabulary>standar</vocabulary> Anda. Tidak lebih, tidak kurang. Fondasi inilah yang menjadi dasar semua standar.

Kata ini umumnya mengacu pada “standar” kuantitatif yang menjadi dasar evaluasi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Standar, Sebuah Standar')
    RETURNING id INTO v_4622_standar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '反則', 'busuk', 23, 96, '<kanji>anti</kanji> <kanji>aturan</kanji> adalah ketika Anda melanggar aturan. Itu terjadi ketika Anda melakukan <vocabulary>pelanggaran</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Busuk, Pelanggaran')
    RETURNING id INTO v_4623_busuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '法則', 'hukum-fisika', 23, 97, 'Ini adalah <kanji>hukum</kanji> dan <kanji>aturan</kanji>. Ini biasanya mengacu pada sesuatu yang merupakan <vocabulary>hukum fisika</vocabulary>, namun juga bisa menjadi <vocabulary>law</vocabulary>. Pokoknya banyak aturan. Banyak hukum. Itu dua-duanya, jadi yang lebih kuat (hukum) diutamakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hukum Fisika, Hukum')
    RETURNING id INTO v_4624_hukum_fisika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '備える', 'untuk-menyediakan', 23, 98, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyediakan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to provide</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Anda harus <vocabulary>memberi</vocabulary> teman Anda <reading>sauna</reading> (そな) mereka sendiri karena mereka tidak ingin menggunakan pancuran Anda. Hal ini mengharuskan Anda keluar dan membeli sauna untuk rumah Anda (sangat mahal) supaya Anda dapat memberikan apa yang mereka inginkan kepada teman Anda yang membutuhkan (sauna). Merasa marah Anda harus memberikan ini.', 'Untuk Menyediakan, Untuk Melengkapi, Untuk Melengkapi, Untuk Mempersiapkan')
    RETURNING id INTO v_4625_untuk_menyediakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '準備', 'persiapan', 23, 99, 'Ketika Anda mengikuti prosedur <kanji>standar</kanji> untuk <kanji>menyediakan</kanji> apa yang dibutuhkan, Anda membuat <vocabulary>persiapan</vocabulary> yang sempurna!

Baik 準備 maupun 用意 berarti "persiapan", namun nuansanya berbeda. 準備 adalah tentang mempersiapkan terlebih dahulu untuk suatu peristiwa atau situasi, sering kali melibatkan perencanaan atau pengaturan. 用意 adalah tentang memastikan item atau sumber daya tertentu siap dan tersedia.

Misalnya, sebagai bagian dari pesta untuk pesta, Anda mungkin menyiapkan makanan dan minuman untuk para tamu. Anda juga dapat menggunakan 準備 untuk makanan dan minuman — ini hanya akan menekankan bahwa itu adalah bagian dari penyiapan acara <em>keseluruhan</em>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Persiapan, Bersiap Untuk')
    RETURNING id INTO v_4626_persiapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '導く', 'untuk-memimpin', 23, 100, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memimpin</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to lead</vocabulary>.', 'Pembacaannya agak sulit, tapi ada petunjuk di kanjinya. Lihat 道 di atas sana? Apa bacaan kanji versi vocab itu? Itu みち. Itu bagian pertama. Sekarang, siapa yang Anda pimpin? Katakanlah Anda sedang menuntun seekor lebah kembali ke sarangnya, melalui jalan raya. Itu adalah <read>道 Lebah</reading> (みちび)!', 'Untuk Memimpin, Untuk Membimbing')
    RETURNING id INTO v_4627_untuk_memimpin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指導', 'panduan', 23, 101, 'Ambil <kanji>jari</kanji> Anda dan <kanji>pimpin</kanji> dengannya. Tunjuk saja pada sesuatu. Beri tahu orang-orang ke mana mereka harus pergi, apa yang harus mereka lakukan, semuanya dengan jari Anda yang menuntun mereka. Inilah <vocabulary>panduan</vocabulary> yang Anda berikan.', 'Pembacaannya adalah pembacaan on''yomi pada kanji. Anda seharusnya sudah mengenal keduanya!', 'Panduan')
    RETURNING id INTO v_4628_panduan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幹', 'batang-pohon', 23, 102, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Saat Anda menebang pohon untuk menghasilkan <vocabulary>batang pohon</vocabulary>, <reading>Mickey</reading> Mouse akan melompat keluar. "KENAPA KAU MENEBANG POHON SAYA KAKAK?" dia berteriak. Saya Mickey Mouse dan saya tidak mendukung hal ini.', 'Batang Pohon')
    RETURNING id INTO v_4629_batang_pohon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新幹線', 'kereta-peluru', 23, 103, 'Ini adalah salah satu kata yang lebih masuk akal ketika Anda melihat bacaannya terlebih dahulu. Secara teknis ini adalah "Jalur Batang Pohon Baru" tetapi Anda tidak akan menyadari bahwa ini adalah <vocabulary>kereta peluru</vocabulary> Jepang alias <vocabulary>Shinkansen</vocabulary> dari situ, bukan? Mungkin pergi membaca akan membantu Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Bacalah ini agar bisa mengingat juga artinya, yaitu <vocabulary>Shinkansen</vocabulary>.', 'Kereta Peluru, Shinkansen')
    RETURNING id INTO v_4630_kereta_peluru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '張る', 'untuk-meregangkan-sesuatu', 23, 104, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>meregangkan</kanji>, dan versi kata kerjanya berarti <vocabulary>meregangkan sesuatu</vocabulary>, <vocabulary>menyebar</vocabulary>, atau <vocabulary>menjadi kencang</vocabulary>, jangan sampai tertukar dengan jenis peregangan yang Anda lakukan setelah berolahraga.

Kata ini bersifat transitif dan intransitif. Ketika mengikuti を, ini menekankan tindakan fisik memperluas sesuatu di suatu area, seperti merentangkan kanvas di atas bingkai, membentangkan layar di kapal, atau mengikat TKP. Saat mengikuti が, ini menunjukkan keadaan meregang atau menyebar, seperti perut kembung, otot bengkak, atau jaring laba-laba.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda memiliki sesuatu yang ingin <vocabulary>diperluas di atas sesuatu</vocabulary> lainnya. Mungkin itu kain melar atau karet gelang atau semacamnya. Apa pun masalahnya, semua orang memberi tahu Anda bahwa itu akan rusak — tetapi Anda berhasil melakukannya! "<reading>Hah</reading> (は)! Aku tahu aku bisa melakukannya! Hah!"', 'Untuk Meregangkan Sesuatu, Untuk Menyebar, Membengkak, Menjadi Kencang')
    RETURNING id INTO v_4631_untuk_meregangkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '優しい', 'lembut', 23, 105, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>lembut</kanji>? Itu <vocabulary>lembut</vocabulary> (tetapi juga <vocabulary>baik</vocabulary> atau <vocabulary>hangat hati</vocabulary>).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Apa yang dikatakan orang yang <vocabulary>lembut</vocabulary> dan <vocabulary>baik hati</vocabulary> ketika seseorang meminta bantuan kepada mereka? Selalu "<reading>ya pak</reading>" (やさ). Selalu, selalu "ya pak"!', 'Lembut, Baik, Berhati Hangat, Bagus')
    RETURNING id INTO v_4632_lembut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '男優', 'aktor', 23, 106, '<kanji>pria</kanji> yang <kanji>lebih unggul</kanji> dari kita adalah <vocabulary>aktor</vocabulary>, atau lebih khusus lagi <vocabulary>aktor pria</vocabulary>.

Sekadar peringatan: selama bertahun-tahun kata ini memiliki konotasi "aktor film dewasa" sehingga kebanyakan orang sekarang akan menggunakan 俳優 untuk "aktor". Anda akan segera mempelajari kata itu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Aktor, Aktor Pria')
    RETURNING id INTO v_4633_aktor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '優先', 'prioritas', 23, 107, 'Itu <kanji>superior</kanji> <kanji>sebelumnya</kanji>, jadi kita harus kembali ke sana. Di antara semua hal lainnya, hal tersebut adalah <vocabulary>prioritas</vocabulary> tertinggi kami.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Prioritas')
    RETURNING id INTO v_4634_prioritas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '優勝', 'kemenangan', 23, 108, 'Orang <kanji>superior</kanji> <kanji>menang</kanji>. Mereka akan memenangkan <vocabulary>kejuaraan</vocabulary> dan dapat mengklaim <vocabulary>kemenangan</vocabulary> atas yang lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemenangan, Kejuaraan')
    RETURNING id INTO v_4635_kemenangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜宅', 'rumah', 23, 109, 'Sama seperti kanjinya, kata ini berarti <vocabulary>house</vocabulary> atau <vocabulary>home</vocabulary>. Secara lebih luas, kadang-kadang juga berarti <vocabulary>rumah tangga</vocabulary>. Kata ini bisa diletakkan setelah nama seseorang untuk menyebutkan rumah siapa, misalnya 山田宅 (rumah Yamada), dan setelah kata yang memberi informasi lebih banyak tentang rumah tersebut, seperti 女性宅 (rumah wanita).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Pulanglah sekarang.', 'Rumah, Rumah, Rumah tangga')
    RETURNING id INTO v_4636_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自宅', 'rumah-seseorang', 23, 110, '<kanji>diri</kanji> Anda <kanji>rumah</kanji> adalah rumah Anda sendiri. Ini adalah <vocabulary>rumah seseorang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rumah Seseorang, Rumah Sendiri')
    RETURNING id INTO v_4637_rumah_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '住宅', 'tempat-tinggal', 23, 111, 'Jika Anda <kanji>tinggal</kanji> di sebuah <kanji>rumah</kanji>, rumah itu adalah <vocabulary>tempat tinggal</vocabulary> Anda, atau <vocabulary>tempat tinggal</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tempat tinggal, Tempat tinggal, Perumahan')
    RETURNING id INTO v_4638_tempat_tinggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '贅沢', 'kemewahan', 23, 112, 'Anda tinggal di <kanji>rawa</kanji> yang paling <kanji>mewah</kanji>, artinya Anda benar-benar dikelilingi oleh hal-hal <vocabulary>kemewahan</vocabulary> dan <vocabulary>mewah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemewahan, Boros')
    RETURNING id INTO v_4640_kemewahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '施行', 'pelaksanaan', 23, 113, 'Jika Anda <kanji>melakukan</kanji> sesuatu dan <kanji>melakukan</kanji>, hasilnya tetaplah <vocabulary>penegakkan</vocabulary>, <vocabulary>melaksanakan</vocabulary>, atau <vocabulary>implementasi</vocabulary> apa pun itu. Tidak ada gunanya berdiam diri setelah Anda menerapkan sesuatu! Jadi, Anda selalu membawa dan pergi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.

Terkadang Anda mungkin melihat せこう sebagai bacaan alternatif, tetapi しこう adalah versi yang lebih umum.', 'Pelaksanaan, Melaksanakan, Pelaksanaan')
    RETURNING id INTO v_4641_pelaksanaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '現れる', 'untuk-muncul', 23, 114, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>muncul</kanji>, jadi kata ini berarti <vocabulary>muncul</vocabulary> atau <vocabulary>muncul</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Semacam entitas paranormal mulai <vocabulary>muncul</vocabulary> di hadapan Anda. "Kamu… <membaca>adalah wa</reading>lrus (あらわ)!" kamu berteriak ketakutan. Ya, sepertinya hantu walrus telah muncul di hadapan Anda. Ia datang dari dalam kubur untuk memperingatkan Anda bahwa Crabigator akan menangkap Anda jika Anda tidak melakukan peninjauan!', 'Untuk Muncul, Untuk Muncul')
    RETURNING id INTO v_4642_untuk_muncul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '表現', 'ekspresi', 23, 115, 'Saat Anda <kanji>mengungkapkan</kanji> sesuatu yang berasal dari <kanji>waktu sekarang</kanji>, Anda mengatakan sesuatu yang hanya dimengerti oleh orang-orang di masa sekarang. Ini adalah <vocabulary>ekspresi</vocabulary> atau <vocabulary>kiasan</vocabulary>. Anda mengatakan hal-hal ini pada saat ini, bukan pada masa depan, bukan pada masa lalu, pada saat ini. Kalau tidak, tak seorang pun akan mengerti.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ekspresi, Kata kiasan, Perwakilan')
    RETURNING id INTO v_4643_ekspresi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '現実', 'realitas', 23, 116, '<kanji>masa kini</kanji> adalah <kanji>kebenaran</kanji>. Inilah yang sedang terjadi saat ini. Ini adalah <vocabulary>realitas</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Realitas')
    RETURNING id INTO v_4644_realitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '現場', 'lokasi-di-tempat', 23, 117, '<kanji>saat ini</kanji> <kanji>lokasi</kanji> Anda adalah <vocabulary>lokasi di lokasi</vocabulary>! Dan Anda berada di <vocabulary>adegan</vocabulary> untuk melihat apa yang sedang terjadi.

現場 mengacu pada lokasi di mana sesuatu sedang terjadi atau telah terjadi. Ini bisa merujuk pada TKP, lokasi kecelakaan, atau lokasi syuting. Ini juga bisa merujuk pada lokasi konstruksi atau pabrik, karena ini adalah <vocabulary>tempat kerja</vocabulary> tempat lebih banyak pekerjaan atau operasi langsung dilakukan.', 'Bacaannya merupakan gabungan bacaan on''yomi dan kun''yomi. Anda tidak mempelajari pembacaan kun''yomi untuk 場 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Di <vocabulary>TKP</vocabulary> ini, terdengar bunyi "<reading>baa</reading>" (ば) oleh para saksi. Ini hanya bisa berarti satu hal: penjahat ulung yang terkenal itu, Pencacah Domba, telah menyerang lagi! Baa!', 'Lokasi Di Tempat, Pemandangan, Tempat kerja')
    RETURNING id INTO v_4645_lokasi_di_tempat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '牛乳', 'susu', 23, 118, '<kanji>Sapi</kanji> <kanji>susu</kanji> adalah <vocabulary>susu sapi</vocabulary>, meskipun kebanyakan orang hanya menyebut susu sapi sebagai <vocabulary>susu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Susu, Susu Sapi')
    RETURNING id INTO v_4646_susu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乳首', 'puting', 23, 119, 'Apa itu <kanji>susu</kanji> <kanji>leher</kanji>? Pikirkan dari mana susu berasal. Sekarang, pikirkan apa yang tampak seperti leher kecil dari bahan asal susu. Benda apa itu? Itu adalah <vocabulary>nipple</vocabulary>.', 'Pembacaan yang ini merupakan pengecualian, kalian sudah tahu bahwa 首 dibaca sebagai くび, namun 乳 dalam hal ini dibaca sebagai ち. Berikut ini mnemonik untuk membantu Anda.

Anda menemukan <vocabulary>nipple</vocabulary> dan memutuskan untuk memerahnya sehingga Anda dapat membuat <reading>chee</reading>se (ち). Itu agak aneh. Anda mungkin harus mencari tahu siapa pemilik puting ini dan bertanya kepada mereka apakah Anda bisa melakukannya terlebih dahulu.', 'Puting')
    RETURNING id INTO v_4647_puting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '呼ぶ', 'untuk-menelepon', 23, 120, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memanggil</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>memanggil</vocabulary> atau <vocabulary>memanggil</vocabulary>. Seperti dalam "HEI, KAMU!"', 'Bacaannya sama dengan kanji, jadi sebaiknya kamu pandai di sini. Bayangkan saja diri Anda memanggil seseorang: "<reading>YO</reading> (よ)! Kamu!"', 'Untuk Menelepon, Untuk Memanggil')
    RETURNING id INTO v_4648_untuk_menelepon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '城', 'kastil', 23, 121, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Kastil')
    RETURNING id INTO v_4649_kastil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '俳優', 'aktor', 23, 122, '<kanji>superior</kanji> <kanji>haiku</kanji> membutuhkan seseorang yang sangat terkenal dan terkenal untuk membacanya... hanya pada level itu. Siapa yang super terkenal dan siapa yang pantas membaca haiku unggulan ini? Seorang <vocabulary>aktor</vocabulary> yang hebat, mungkin?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Aktor')
    RETURNING id INTO v_4650_aktor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '俳句', 'haiku', 23, 123, '<kanji>haiku</kanji> <kanji>paragraf</kanji> hanyalah sebuah <vocabulary>haiku</vocabulary>. Haikus adalah paragraf haiku kecil.

Anda akan belajar kanji
Crabigator memperhatikan
Dia memakan ulasan', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Haiku')
    RETURNING id INTO v_4651_haiku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '秀でる', 'ke-unggul', 23, 124, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>unggul</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to excel</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

"<reading>Dia-e</reading> (ひい) akan <vocabulary>menjadi unggul</vocabulary>," kamu tergagap. "Dia itu!"', 'Ke Unggul, Untuk Melampaui')
    RETURNING id INTO v_4652_ke_unggul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '優秀', 'unggul', 23, 125, 'Sesuatu yang <kanji>unggul</kanji> akan <kanji>unggul</kanji>. Bahasa ini <vocabulary>unggul</vocabulary> dan <vocabulary>excellent</vocabulary> dalam segala hal.

Kata ini biasanya digunakan untuk menggambarkan keunggulan atau keunggulan seseorang, sering kali dibandingkan dengan orang lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Unggul, Keunggulan, Bagus sekali')
    RETURNING id INTO v_4653_unggul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '効果', 'sebuah-efek', 23, 126, '<kanji>buah</kanji> dari sesuatu yang <kanji>efektif</kanji> adalah <vocabulary>efek</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sebuah Efek, Memengaruhi')
    RETURNING id INTO v_4806_sebuah_efek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '効率', 'efisiensi', 23, 127, '<kanji>efektif</kanji> <kanji>persen</kanji> Anda menunjukkan seberapa efektif Anda — dengan kata lain, <vocabulary>efisiensi</vocabulary> Anda. Pada efisiensi apa Anda beroperasi? 80%? 90%?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Efisiensi')
    RETURNING id INTO v_4807_efisiensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '経済学', 'ekonomi', 23, 128, 'Anda tahu bagaimana ilmu ekonomi, bukan? Nah, tambahkan <kanji>studi</kanji> ke dalamnya dan Anda akan mendapatkan studi ekonomi, alias <vocabulary>economics</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 経済 juga akan membantu.', 'Ekonomi, Studi Ekonomi')
    RETURNING id INTO v_4851_ekonomi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '挙げる', 'untuk-meningkatkan-sesuatu', 23, 129, 'Kanji berarti <kanji>menaikkan</kanji>, dan kata kerjanya adalah saat Anda melakukan itu terhadap sesuatu. Itu transitif. Jadi ini berarti <vocabulary>mengangkat sesuatu</vocabulary>. Sebenarnya mempunyai arti yang cukup luas, dan bisa juga berarti “menaikkan” dalam arti <vocabulary>mengutip sesuatu</vocabulary>, seperti contoh. Bahkan bisa berarti <vocabulary>mengadakan sesuatu</vocabulary>, seperti sebuah acara.', 'Bacaannya sama dengan 挙がる, jadi kalau kamu tahu bacaan itu kamu harus tahu yang ini juga.', 'Untuk Meningkatkan Sesuatu, Mengutip Sesuatu, Untuk Memegang Sesuatu')
    RETURNING id INTO v_4853_untuk_meningkatkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '批判する', 'untuk-mengkritik', 23, 130, '批判 adalah <kanji>kritik</kanji> jadi versi kata kerjanya adalah <vocabulary>mengkritik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan lebih mudah untuk membaca ini jika Anda juga mengetahui 批判.', 'Untuk Mengkritik')
    RETURNING id INTO v_4855_untuk_mengkritik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '増やす', 'untuk-meningkatkan-sesuatu', 23, 131, 'Ingat bagaimana 増える adalah "meningkatkan" (misalnya, sesuatu hanya meningkat, Anda tidak melakukan peningkatan itu sendiri). Yang ini adalah yang mana Anda melakukan peningkatan. Jadi, kata ini berarti <vocabulary>meningkatkan sesuatu</vocabulary>. Anda tahu Anda melakukan peningkatan karena Anda mengatakan "ya" (やす) untuk meningkatkan sesuatu, dan Anda melakukannya sendiri.', 'Bacaannya sama seperti 増える. Jika Anda mengetahui kosakata tersebut, Anda mungkin bisa membacanya juga.', 'Untuk Meningkatkan Sesuatu, Untuk Meningkatkan')
    RETURNING id INTO v_4856_untuk_meningkatkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '断つ', 'untuk-memotong', 23, 132, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memotong</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to cut off</vocabulary>.

Kata ini sering digunakan secara metaforis untuk menggambarkan pemutusan hal-hal yang mengikat kita secara mental atau sosial. Hal ini termasuk mengakhiri kebiasaan buruk, jadi ini juga berarti <vocabulary>berhenti melakukan sesuatu</vocabulary>.

Jangan bingung dengan 断る yang berarti "menolak". Anda tahu ini harus dihentikan karena つ, yang mengisyaratkan bahwa Anda sudah <reading>dua</reading> (つ) terlalu banyak coklat, dan inilah waktunya untuk menghentikan Anda.', 'URGH! Bacaannya bahkan tidak sama dengan 断る, sungguh membuat frustrasi. <vocabulary>memotong</vocabulary> dibaca たつ. Daripada makan terlalu banyak coklat dan merasa terpotong, mungkin Anda malah makan terlalu banyak tater <reading>tots</reading> (たつ). Jangan makan terlalu banyak, itu tidak sehat. Anda harus <vocabulary>menghentikan</vocabulary> tater total dari diet Anda agar Anda tidak menjadi gemuk.', 'Untuk Memotong, Untuk Berhenti Melakukan Sesuatu')
    RETURNING id INTO v_4858_untuk_memotong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '施設', 'lembaga', 23, 133, 'Silakan <kanji>melaksanakan</kanji> tugas dan <kanji>mendirikan</kanji> <vocabulary>institusi</vocabulary>. Melaksanakan dan menetapkan sesuatu berarti melembagakannya juga. Apa yang Anda lembagakan? Sebuah institusi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lembaga, Fasilitas, Fasilitas, Pembentukan')
    RETURNING id INTO v_4859_lembaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '突然', 'tiba-tiba', 23, 134, 'Ketika sesuatu terjadi dengan <kanji>tiba-tiba</kanji> <kanji>alam</kanji>, itu terjadi... <vocabulary>tiba-tiba</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tiba-tiba, Tiba-tiba')
    RETURNING id INTO v_4961_tiba_tiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頭痛', 'sakit-kepala', 23, 135, '<kanji>Kepala</kanji> <kanji>nyeri</kanji> adalah saat Anda mengalami <vocabulary>sakit kepala</vocabulary>.', 'Pembacaan untuk 痛 seharusnya baik-baik saja. Namun, cara membaca 頭 belum pernah Anda pelajari sebelumnya. Bayangkan saja, setiap kali kamu pergi ke <reading>kebun binatang</reading> (ず) kamu merasakan <vocabulary>sakit kepala</vocabulary> yang parah. Pasti kotoran hewan yang beterbangan di udara.', 'Sakit kepala')
    RETURNING id INTO v_5057_sakit_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '降りる', 'untuk-turun', 23, 136, 'Kanjinya adalah <kanji>turun</kanji>, tetapi kosakata kata kerja ini adalah <kosakata>turun</vocabulary>, seperti turun dari kereta, atau keluar dari mobil. Jika Anda berpikir tentang kereta api di masa lalu, Anda harus turun ke peron untuk keluar dari kereta tersebut, begitulah kata ini menjadi seperti sekarang ini. Anda tahu bahwa kata ini adalah kata "turun" karena begitu Anda turun dari kereta, Anda memasuki dunia nyata (りる), di mana kesulitan adalah nyata dan tidak senyaman kereta.

Secara kiasan, kata ini juga berarti <vocabulary>mengundurkan diri</vocabulary>, seperti dalam "menyerah" atau "mengundurkan diri" dari sesuatu. Misalnya, Anda bisa mengucapkan ニュース番組を降りる (mengundurkan diri dari program berita) atau ゲームを降りる (keluar dari permainan).', 'Pembacaannya tidak seperti apa pun yang pernah Anda lihat dengan kanji ini. Coba pikirkan bagaimana Anda harus <vocabulary>turun</vocabulary> di stasiun <reading>O</reading>. Tak satu pun dari surat-surat lain yang menjadi perhentian Anda. Hanya <reading>O</reading> -Stasiun (お).', 'Untuk Turun, Untuk Mundur')
    RETURNING id INTO v_5937_untuk_turun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '更衣室', 'ruang-ganti', 23, 137, '<kanji>memperbarui</kanji> <kanji>pakaian</kanji> <kanji>ruang</kanji> adalah <vocabulary>ruang ganti</vocabulary> atau <vocabulary>ruang ganti</vocabulary>.

更衣室 adalah ruangan tempat orang berganti pakaian, biasanya ditemukan di tempat seperti gym, kolam renang, sekolah, atau tempat kerja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ruang Ganti, Ruang Ganti')
    RETURNING id INTO v_6530_ruang_ganti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '棚', 'rak', 23, 138, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Rak, Kabinet')
    RETURNING id INTO v_6831_rak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本棚', 'rak-buku', 23, 139, '<kanji>buku</kanji> <kanji>rak</kanji> adalah <vocabulary>rak buku</vocabulary> atau <vocabulary>rak buku</vocabulary>.', 'Pembacaannya adalah yang Anda pelajari dengan kanji individu. Hati-hati dengan rendaku.', 'Rak buku, Rak buku')
    RETURNING id INTO v_6832_rak_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戸棚', 'kabinet', 23, 140, '<kanji>pintu</kanji> <kanji>rak</kanji> adalah rak dengan pintu di atasnya. Jenis rak apa yang Anda tahu memiliki pintu? Bagaimana dengan <vocabulary>kabinet</vocabulary>? Atau mungkin <vocabulary>lemari</vocabulary>?', 'Bacaan ini adalah bacaan yang Anda pelajari dengan kanji. Ingatlah bahwa 棚 membuat rendaku menjadi だな.', 'Kabinet, Lemari')
    RETURNING id INTO v_6833_kabinet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紫', 'ungu', 23, 141, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda mempelajari bacaan 紫 ini ketika Anda mempelajari kanji, jadi sebaiknya Anda melakukannya!', 'Ungu, Ungu')
    RETURNING id INTO v_7269_ungu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紫色', 'ungu', 23, 142, '<kanji>ungu</kanji> <kanji>warna</kanji> adalah <vocabulary>ungu</vocabulary>. Sesederhana itu!', 'Kata ini menggunakan bacaan kun''yomi dari kedua kanji.', 'Ungu, Ungu')
    RETURNING id INTO v_7271_ungu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '演技', 'akting', 23, 143, '<kanji>performa</kanji> <kanji>keterampilan</kanji> Anda memungkinkan Anda menjadi hebat dalam <vocabulary>akting</vocabulary> dan melakukan <vocabulary>performa</vocabulary> yang luar biasa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Akting, Pertunjukan')
    RETURNING id INTO v_7506_akting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '演ずる', 'untuk-melakukan', 23, 144, 'Jika 演 adalah <kanji>kinerja</kanji> maka versi kata kerjanya adalah <vocabulary>to perform</vocabulary>.', 'Bacaannya terlihat aneh, tapi sebenarnya itu hanya bacaan yang Anda pelajari dengan kanji.', 'Untuk Melakukan, Untuk Bermain')
    RETURNING id INTO v_7507_untuk_melakukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '演芸', 'pentas-seni', 23, 145, 'Saat Anda mengubah <kanji>akting</kanji> menjadi <kanji>seni</kanji> Anda mendapatkan <vocabulary>seni pertunjukan</vocabulary>. Ini adalah <vocabulary>hiburan populer</vocabulary>! Lampu, aksi! Selamat datang di Broadway!

Kata ini lebih tradisional dan tidak banyak digunakan saat ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pentas seni, Hiburan Populer')
    RETURNING id INTO v_7508_pentas_seni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上演', 'pertunjukan', 23, 146, 'Apa yang ada <kanji>di atas</kanji> panggung dan melibatkan <kanji>akting</kanji>? Sebuah <vocabulary>pertunjukan</vocabulary>!

Kata ini tidak merujuk pada akting seorang aktor di atas panggung. Sebaliknya, kata ini biasanya mengacu pada pertunjukan teater atau musikal secara keseluruhan, sehingga digunakan dalam konteks yang berkaitan dengan tindakan pementasan produksi artistik atau drama, atau fitur produksi itu sendiri, seperti waktu mulai atau waktu berjalannya (seperti dalam 上演時間).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pertunjukan, Presentasi, Produksi, Memanggungkan, Gunung')
    RETURNING id INTO v_7598_pertunjukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '台詞', 'garis-seseorang', 23, 147, 'Sebuah <kanji>mesin</kanji> yang dapat dengan cepat menghasilkan <kanji>bagian pidato</kanji> berguna untuk mengingat <vocabulary>barisan seseorang</vocabulary> di atas panggung. Jika Anda lupa <vocabulary>line</vocabulary> Anda, aktifkan saja mesinnya, dan mesin akan memberikan prompt yang berguna: "Adjective! Adjective!"

台詞 biasanya berarti kalimat atau ucapan dalam drama, film, atau drama — sesuatu yang diucapkan karakter dengan lantang. Namun kata ini juga digunakan dalam pembicaraan sehari-hari ketika seseorang membuat <vocabulary>komentar</vocabulary> yang cerdas, dramatis, atau mudah diingat, hampir seperti mengutip sebuah baris.', 'Pembacaan untuk ini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda:

Seseorang juga dapat menggunakan mesin untuk mencetak <vocabulary>baris</vocabulary> sebagai teks, tetapi mesin tersebut hanya mencetak dalam font <reading>serif</reading> (せりふ). Maaf, teman-teman Comic Sans — Anda harus menunggu model tahun depan.', 'Garis Seseorang, Garis, Komentar')
    RETURNING id INTO v_7651_garis_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心得る', 'untuk-mengetahui', 23, 148, 'Ingat bagaimana Anda mengetahui bahwa 心得 berarti "pengetahuan"? Versi kata kerjanya adalah <vocabulary>to know</vocabulary>. (Anda mengetahuinya jauh di lubuk hati Anda.)', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Untuk Mengetahui, Untuk Memahami, Untuk Diwaspadai, Untuk Menyetujui, Setuju')
    RETURNING id INTO v_7765_untuk_mengetahui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '埋まる', 'untuk-dikuburkan', 23, 149, 'Ingat bagaimana Anda mengetahui bahwa 埋める berarti "mengubur?" Ini adalah sesuatu yang sedang dikuburkan, bahkan mungkin Anda! Apa pun yang terjadi, bukan Anda yang melakukan penguburan. Artinya <vocabulary>dikuburkan</vocabulary>.

埋まる bisa juga berarti diisi, seperti kolam yang terisi penuh oleh tanah longsor atau kursi yang diisi pada suatu acara.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika mempelajari kanji, jadi Anda seharusnya sudah bisa membacanya!', 'Untuk Dikuburkan, Untuk Dikelilingi, Meluap, Untuk Diisi')
    RETURNING id INTO v_7779_untuk_dikuburkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '楽天主義', 'optimisme', 23, 150, 'Anda tahu bahwa 主義 adalah "-isme". Jika Anda menambahkannya menjadi <kanji>nyaman</kanji>seperti Anda berada di <kanji>surga</kanji> maka Anda memiliki banyak <vocabulary>optimisme</vocabulary>. Anda yakin Anda akan baik-baik saja dalam situasi apa pun!

Ini adalah kata benda dalam bahasa Jepang, tetapi bergantung pada konteksnya, sering kali diterjemahkan ke dalam bahasa Inggris sebagai kata sifat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Optimisme')
    RETURNING id INTO v_8676_optimisme;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沢山', 'banyak', 23, 151, '<kanji>Rawa</kanji> dan <kanji>gunung</kanji> <vocabulary>banyak</vocabulary> terjadi di Jepang. Itu sebabnya kami menggunakan ini untuk mengartikan <vocabulary>banyak</vocabulary>! Karena jumlahnya banyak!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Kata ini biasanya ditulis dalam kana, jadi ingatlah bahwa saat Anda menulisnya, gunakan kana dan bukan kanji ini!', 'Banyak, Banyak, Banyak')
    RETURNING id INTO v_8678_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '現に', 'sebenarnya', 23, 152, '<kanji>waktu sekarang</kanji> adalah waktu yang <vocabulary>sebenarnya</vocabulary> Anda berada di dalamnya. Anda tidak <vocabulary>benar-benar</vocabulary> di waktu lain, karena waktu tidak bekerja seperti itu!', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Sebenarnya, Benar-benar')
    RETURNING id INTO v_8714_sebenarnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '割り算', 'divisi', 23, 153, '<kanji>Bagi</kanji> dan <kanji>hitung</kanji>? Wah, itu hanya <vocabulary>division</vocabulary>!', 'Ini adalah bacaan kun''yomi untuk 割 dan on''yomi untuk 算. Dan bacaan さん di rendaku menjadi ざん. Ini sama untuk semua kata matematika (penjumlahan, pengurangan, perkalian, dan pembagian), jadi cobalah mengingatnya, karena Anda akan melihatnya lagi!', 'Divisi')
    RETURNING id INTO v_8754_divisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '羨ましい', 'iri', 23, 154, 'Ini adalah kanji tunggal dengan hiragana yang diakhiri dengan い, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>iri</kanji>? Itu juga <vocabulary>iri</vocabulary>!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini saat mempelajari 羨む, namun berikut ini pengingat untuk berjaga-jaga:

<reading>ura</reading>nium <reading>Ya</reading>nkees (うらや) itu membuatmu semakin <vocabulary>iri</vocabulary> dan <vocabulary>cemburu</vocabulary> dari hari ke hari. Mereka adalah tim Yankees baru yang diproduksi di laboratorium dan diberi makan uranium. Keterampilan mereka tidak ada bandingannya karena kekuatan logamnya. Silakan merasa iri, mereka pasti akan menjadi #1 tahun ini.', 'Iri, Cemburu')
    RETURNING id INTO v_8887_iri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '収まる', 'agar-cocok-di-dalam', 23, 155, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Jika Anda <kanji>mendapatkan</kanji> sesuatu, Anda pasti ingin <vocabulary>muat di dalam</vocabulary> tas Anda. Kalau tidak, bagaimana cara membawanya pulang? Saat berbicara tentang masalah atau emosi, kata kerja ini juga bisa berarti <vocabulary>menetap</vocabulary> dan <vocabulary>menyelesaikan</vocabulary> seperti perselisihan yang mereda atau kemarahan seseorang yang mereda.

Seperti kebanyakan kata kerja dengan まる sebagai okurigana, ini adalah kata kerja intransitif. Artinya, hal itu terjadi dengan sendirinya, tanpa penekanan pada orang atau benda yang membuat sesuatu menjadi pas di dalam, atau menetap.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Kamu tidak muat lagi di dalam tempat tidurmu. Saya kira Anda sudah dewasa? Lebih baik keluarkan <reading>o</reading>ld <reading>saw</reading> (おさ) yang terpercaya dan potong alas kaki Anda.', 'Agar Cocok Di Dalam, Untuk Tenang, Akan Selesai')
    RETURNING id INTO v_8931_agar_cocok_di_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '加わる', 'untuk-ditambahkan-ke', 23, 156, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanji 加 berarti <kanji>menambahkan</kanji>, dan kata kerja ini berarti <vocabulary>untuk ditambahkan ke</vocabulary> atau <vocabulary>untuk bergabung dalam</vocabulary>.

Ini adalah kata kerja intransitif, seperti kebanyakan kata kerja yang berakhiran わる. Artinya itu terjadi dengan sendirinya, atau setidaknya penyebab penambahannya bukan Anda. Sesuatu ditambahkan ke sesuatu yang lain, mungkin secara ajaib?', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 加える. Untuk membantu Anda membedakan keduanya, ingatlah bahwa sebagian besar kata kerja yang diakhiri dengan わる bersifat intransitif.', 'Untuk Ditambahkan Ke, Untuk Bergabung')
    RETURNING id INTO v_8936_untuk_ditambahkan_ke;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '痒い', 'gatal', 23, 157, 'Anda bisa menebak ini adalah kata sifat dari い di akhir. Arti kanjinya adalah <kanji>gatal</kanji>, dan versi kata sifatnya juga <vocabulary>itchy</vocabulary>.', 'Kata ini menggunakan bacaan yang sama dengan yang Anda pelajari dengan kanji: かゆ.', 'Gatal')
    RETURNING id INTO v_9007_gatal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出張', 'perjalanan-bisnis', 23, 158, 'Anda <kanji>keluar</kanji> gedung dan <kanji>meregangkan tubuh</kanji> sebagai persiapan untuk <vocabulary>perjalanan bisnis</vocabulary> Anda. Ini adalah rutinitas yang selalu Anda ikuti untuk perjalanan bisnis Anda: keluar, dan melakukan peregangan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah agar しゅつ menjadi しゅっ di sini!', 'Perjalanan Bisnis, Perjalanan Resmi, Panggilan Layanan')
    RETURNING id INTO v_9083_perjalanan_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '町外れ', 'pinggiran-kota', 23, 159, 'Anda sudah tahu bahwa 町 berarti "kota" dan 外れ dapat berarti "pinggiran" atau "pinggiran". Ini hanya kombinasi keduanya, jadi artinya <vocabulary>pinggiran kota</vocabulary>.', 'Anda sudah mempelajari 町 dan 外れ, jadi gabungkan saja keduanya dan Anda akan mendapatkan 町外れ tidak hanya dalam arti, tetapi juga dalam bacaan!', 'Pinggiran Kota, Pinggiran')
    RETURNING id INTO v_9152_pinggiran_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '節目', 'titik-balik', 23, 160, '<kanji>musim</kanji> apa yang harus Anda <kanji>perhatikan</kanji>? Musim yang merupakan <vocabulary>titik balik</vocabulary> dalam hidup Anda. Pantau terus musim-musim tersebut, karena Anda tidak ingin melewatkan <vocabulary>titik kritis</vocabulary> dan <vocabulary>milestone</vocabulary>.', 'Kata ini menggunakan kun''yomi dari kedua kanji. Anda belum mempelajarinya untuk 節, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<kosakata>titik balik</vocabulary> sebenarnya dalam hidup Anda adalah ketika Anda mendapatkan <membaca>beberapa dia</reading>ep (ふし). Memiliki beberapa ekor domba merupakan <vocabulary>tonggak</vocabulary> sejati bagi Anda. Sekarang Anda memiliki semua sweter wol dan keju yang Anda inginkan!', 'Titik Balik, Titik Kritis, Tonggak pencapaian')
    RETURNING id INTO v_9161_titik_balik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雨戸', 'rana', 23, 161, '<kanji>hujan</kanji> <kanji>pintu</kanji> sebenarnya hanyalah sebuah <vocabulary>penutup</vocabulary>. Di Jepang, memiliki jendela untuk melindungi dari hujan adalah hal yang sangat umum. Ketika tidak ada jendela kaca, daun jendelanya seperti pintu eksterior di Jepang, jadi "pintu hujan" bisa diartikan sebagai "penutup"! 

Kata ini biasanya untuk <vocabulary>sliding storm shutter</vocabulary>. Untuk jenis penutup jendela lainnya, cukup ucapkan シャッター.', 'Ini adalah kata jukugo, namun sebenarnya menggunakan kun''yomi untuk 雨 dan 戸. Selain itu, bacaan untuk 雨 sebenarnya sedikit berbeda dari apa yang telah Anda pelajari, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>shutter</vocabulary> pada dasarnya hanyalah <reading>armor</reading> (あま) untuk sebuah jendela. Keduanya bersifat protektif dan sering kali terbuat dari logam. Agak masuk akal, bukan?', 'Rana, Rana Badai Geser')
    RETURNING id INTO v_9254_rana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '叶える', 'untuk-hibah', 23, 162, 'Kanji berarti "menjadi kenyataan" atau <kanji>memberi</kanji>, dan ini adalah versi kata kerja transitifnya, menjadikannya <vocabulary>to grant</vocabulary> atau <vocabulary>to terpenuhi</vocabulary>.

叶える mengacu pada mewujudkan sesuatu yang diinginkan, baik untuk diri sendiri atau orang lain. Biasanya digunakan dalam konteks pemenuhan keinginan, impian, atau tujuan, namun bisa juga digunakan untuk mengabulkan permintaan seseorang dalam konteks yang lebih formal.', 'Ini merupakan kata kerja, jadi menggunakan bacaan kun''yomi. Untungnya, Anda sudah mempelajarinya dengan kanji, jadi sebaiknya Anda pergi ke sini!', 'Untuk Hibah, Untuk Memenuhi')
    RETURNING id INTO v_9344_untuk_hibah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自ら', 'diri', 23, 163, '<kanji>diri</kanji> kanji itu ada dengan sendirinya! Jadi wajar saja jika kata ini berarti <kosakata>diri sendiri</vocabulary>. Ngomong-ngomong, jangan biarkan huruf ら di akhir membingungkan Anda — kata ini berbentuk tunggal.

Seperti 自分, 自ら berarti "diri sendiri", namun sebagian besar digunakan dalam konteks formal atau sastra. Kata ini juga dapat digunakan sebagai kata keterangan yang berarti <kosakata>atas inisiatif sendiri</vocabulary> untuk menekankan tindakan sukarela, atau <vocabulary>secara pribadi</vocabulary> untuk menyoroti keterlibatan langsung — misalnya, 自ら辞める (berhenti atas inisiatif sendiri) atau 自ら謝る (meminta maaf secara pribadi).', 'Kata ini menggunakan bacaan kun''yomi 自. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Jika seseorang memilih untuk tidak mengemudi <vocabulary>self</vocabulary>, pilihan alternatif yang bagus adalah 水-car (みずか). Ini adalah mobil tanpa pengemudi yang sepenuhnya menggunakan bahan bakar fosil, bukan bahan bakar, sehingga memungkinkan seseorang untuk melawan perubahan iklim <vocabulary>atas inisiatif sendiri</vocabulary> tanpa perlu <vocabulary>secara pribadi</vocabulary> mengemudikan mobil tersebut. Mampirlah ke dealer lokal Anda dan dapatkan 水-mobil hari ini!', 'Diri, Atas Inisiatif Sendiri, Sendiri')
    RETURNING id INTO v_9383_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '餌食', 'mangsa', 23, 164, 'Seekor binatang menjadikan Anda <kanji>makanannya</kanji> dan <kanji>memakannya</kanji> Anda. Anda telah menjadi <vocabulary>mangsa</vocabulary>-nya.

餌食 mengacu pada makhluk hidup yang dimakan sebagai makanan oleh predator. Di luar arti literalnya yaitu mangsa hewan, kata ini juga sering digunakan secara kiasan untuk mengartikan seseorang yang menjadi sasaran tanpa daya dan menjadi <vocabulary>korban</vocabulary> dalam kejahatan, penipuan, atau situasi buruk — seolah-olah mereka sedang diburu di alam liar.', 'Kata ini menggunakan pembacaan yang tidak beraturan dari kedua kanjinya, jadi berikut adalah mnemonik untuk membantu Anda mengingat cara membacanya:

Kamu selalu mengancam untuk menjadikan orang lain sebagai "<vocabulary>mangsa</vocabulary>"mu karena kamu adalah <reading>ki tegang</reading>d (えじき). "Seberangi aku dengan risikomu sendiri, domba - selanjutnya kau akan menjadi mangsaku," gumammu sambil berjalan-jalan di pinggiran kota yang makmur dengan kacamata hitam dan jas hujan. Astaga, kamu anak yang tegang sekali.', 'Mangsa, Korban')
    RETURNING id INTO v_9462_mangsa;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2810_memengaruhi, 'Memengaruhi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2810_memengaruhi, 'Tindakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2810_memengaruhi, 'Operasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2832_perusahaan_yang_dikelola_pemerintah, 'Perusahaan yang Dikelola Pemerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2832_perusahaan_yang_dikelola_pemerintah, 'Perusahaan Milik Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3756_untuk_membangun, 'Untuk Membangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3756_untuk_membangun, 'Untuk Membangun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3933_arsitek, 'Arsitek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4270_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4270_hadiah, 'Sekarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4270_hadiah, 'Saat ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4390_untuk_dicampur_dengan, 'Untuk Dicampur Dengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4390_untuk_dicampur_dengan, 'Untuk Dicampur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4395_konservatif, 'Konservatif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4395_konservatif, 'Konservatisme', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4407_akan_selesai, 'Akan Selesai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4407_akan_selesai, 'Harus Dilakukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4407_akan_selesai, 'Akan Selesai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4412_reputasi, 'Reputasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4412_reputasi, 'Popularitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4441_luar_biasa, 'Luar biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4441_luar_biasa, 'Bagus sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4441_luar_biasa, 'Agung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4441_luar_biasa, 'Terbaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4500_penggelinciran, 'Penggelinciran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4500_penggelinciran, 'Penyimpangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4502_untuk_melarikan_diri, 'Untuk Melarikan Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4502_untuk_melarikan_diri, 'Untuk melarikan diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4502_untuk_melarikan_diri, 'Untuk Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4503_penghindaran_pajak, 'Penghindaran Pajak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4576_kereta_api_lokal, 'Kereta Api Lokal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4577_untuk_konfirmasi, 'Untuk Konfirmasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4577_untuk_konfirmasi, 'Untuk Memverifikasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4580_komite, 'Komite', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4581_untuk_memilih, 'Untuk Memilih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4584_halte_bus, 'Halte Bus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4585_penghentian, 'Penghentian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4585_penghentian, 'Penangguhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4586_pemadaman_listrik, 'Pemadaman Listrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4586_pemadaman_listrik, 'Pemutusan Listrik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4586_pemadaman_listrik, 'Pemadaman Listrik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4587_vampir, 'vampir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4588_penyerapan, 'Penyerapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4589_kuitansi, 'Kuitansi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4590_penghasilan, 'Penghasilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4592_kulit, 'Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4593_revolusi, 'Revolusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4594_kulit, 'Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4594_kulit, 'Menyembunyikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4594_kulit, 'kulit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4595_penganggur, 'Penganggur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4595_penganggur, 'Pengangguran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4596_tempat_kerja, 'Tempat Kerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4596_tempat_kerja, 'Tempat kerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4596_tempat_kerja, 'Tempat Kerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4597_pekerjaan, 'Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4597_pekerjaan, 'Profesi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4598_personil, 'Personil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4598_personil, 'Staf', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4598_personil, 'Karyawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4599_memiliki_pekerjaan, 'Memiliki Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4599_memiliki_pekerjaan, 'Menjadi Pekerjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4600_berburu_pekerjaan, 'Berburu Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4601_pengunduran_diri, 'Pengunduran diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4601_pengunduran_diri, 'Mengundurkan diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4602_setan, 'Setan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4602_setan, 'Raksasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4605_perawat, 'Perawat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4606_pengacara, 'Pengacara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4606_pengacara, 'Pengacara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4607_untuk_menghemat, 'Untuk Menghemat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4607_untuk_menghemat, 'Untuk Melindungi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4608_guru, 'Guru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4609_dokter, 'Dokter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4610_hukum, 'Hukum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4613_untuk_membagi, 'Untuk Membagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4613_untuk_membagi, 'Untuk Membagi Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4613_untuk_membagi, 'Untuk Menghancurkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4614_peran, 'Peran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4615_sepuluh_persen, 'Sepuluh Persen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4616_perbandingan, 'Perbandingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4616_perbandingan, 'Persentase', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4616_perbandingan, 'Relatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4616_perbandingan, 'Cukup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4617_untuk_menilai, 'Untuk menilai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4618_uji_coba, 'Uji coba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4619_tanjung, 'Tanjung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4619_tanjung, 'Semenanjung Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4620_kawasaki, 'Kawasaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4620_kawasaki, 'Kota Kawasaki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4621_nagasaki, 'Nagasaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4622_standar, 'Standar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4622_standar, 'Sebuah Standar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4623_busuk, 'Busuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4623_busuk, 'Pelanggaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4624_hukum_fisika, 'Hukum Fisika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4624_hukum_fisika, 'Hukum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4625_untuk_menyediakan, 'Untuk Menyediakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4625_untuk_menyediakan, 'Untuk Melengkapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4625_untuk_menyediakan, 'Untuk Melengkapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4625_untuk_menyediakan, 'Untuk Mempersiapkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4626_persiapan, 'Persiapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4626_persiapan, 'Bersiap Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4627_untuk_memimpin, 'Untuk Memimpin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4627_untuk_memimpin, 'Untuk Membimbing', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4628_panduan, 'Panduan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4629_batang_pohon, 'Batang Pohon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4630_kereta_peluru, 'Kereta Peluru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4630_kereta_peluru, 'Shinkansen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4631_untuk_meregangkan_sesuatu, 'Untuk Meregangkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4631_untuk_meregangkan_sesuatu, 'Untuk Menyebar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4631_untuk_meregangkan_sesuatu, 'Membengkak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4631_untuk_meregangkan_sesuatu, 'Menjadi Kencang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4632_lembut, 'Lembut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4632_lembut, 'Baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4632_lembut, 'Berhati Hangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4632_lembut, 'Bagus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4633_aktor, 'Aktor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4633_aktor, 'Aktor Pria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4634_prioritas, 'Prioritas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4635_kemenangan, 'Kemenangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4635_kemenangan, 'Kejuaraan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4636_rumah, 'Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4636_rumah, 'Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4636_rumah, 'Rumah tangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4637_rumah_seseorang, 'Rumah Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4637_rumah_seseorang, 'Rumah Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4638_tempat_tinggal, 'Tempat tinggal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4638_tempat_tinggal, 'Tempat tinggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4638_tempat_tinggal, 'Perumahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4640_kemewahan, 'Kemewahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4640_kemewahan, 'Boros', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4641_pelaksanaan, 'Pelaksanaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4641_pelaksanaan, 'Melaksanakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4641_pelaksanaan, 'Pelaksanaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4642_untuk_muncul, 'Untuk Muncul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4642_untuk_muncul, 'Untuk Muncul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4643_ekspresi, 'Ekspresi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4643_ekspresi, 'Kata kiasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4643_ekspresi, 'Perwakilan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4644_realitas, 'Realitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4645_lokasi_di_tempat, 'Lokasi Di Tempat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4645_lokasi_di_tempat, 'Pemandangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4645_lokasi_di_tempat, 'Tempat kerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4646_susu, 'Susu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4646_susu, 'Susu Sapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4647_puting, 'Puting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4648_untuk_menelepon, 'Untuk Menelepon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4648_untuk_menelepon, 'Untuk Memanggil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4649_kastil, 'Kastil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4650_aktor, 'Aktor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4651_haiku, 'Haiku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4652_ke_unggul, 'Ke Unggul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4652_ke_unggul, 'Untuk Melampaui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4653_unggul, 'Unggul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4653_unggul, 'Keunggulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4653_unggul, 'Bagus sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4806_sebuah_efek, 'Sebuah Efek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4806_sebuah_efek, 'Memengaruhi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4807_efisiensi, 'Efisiensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4851_ekonomi, 'Ekonomi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4851_ekonomi, 'Studi Ekonomi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4853_untuk_meningkatkan_sesuatu, 'Untuk Meningkatkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4853_untuk_meningkatkan_sesuatu, 'Mengutip Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4853_untuk_meningkatkan_sesuatu, 'Untuk Memegang Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4855_untuk_mengkritik, 'Untuk Mengkritik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4856_untuk_meningkatkan_sesuatu, 'Untuk Meningkatkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4856_untuk_meningkatkan_sesuatu, 'Untuk Meningkatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4858_untuk_memotong, 'Untuk Memotong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4858_untuk_memotong, 'Untuk Berhenti Melakukan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4859_lembaga, 'Lembaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4859_lembaga, 'Fasilitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4859_lembaga, 'Fasilitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4859_lembaga, 'Pembentukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4961_tiba_tiba, 'Tiba-tiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4961_tiba_tiba, 'Tiba-tiba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5057_sakit_kepala, 'Sakit kepala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5937_untuk_turun, 'Untuk Turun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5937_untuk_turun, 'Untuk Mundur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6530_ruang_ganti, 'Ruang Ganti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6530_ruang_ganti, 'Ruang Ganti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6831_rak, 'Rak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6831_rak, 'Kabinet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6832_rak_buku, 'Rak buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6832_rak_buku, 'Rak buku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6833_kabinet, 'Kabinet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6833_kabinet, 'Lemari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7269_ungu, 'Ungu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7269_ungu, 'Ungu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7271_ungu, 'Ungu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7271_ungu, 'Ungu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7506_akting, 'Akting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7506_akting, 'Pertunjukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7507_untuk_melakukan, 'Untuk Melakukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7507_untuk_melakukan, 'Untuk Bermain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7508_pentas_seni, 'Pentas seni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7508_pentas_seni, 'Hiburan Populer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7598_pertunjukan, 'Pertunjukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7598_pertunjukan, 'Presentasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7598_pertunjukan, 'Produksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7598_pertunjukan, 'Memanggungkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7598_pertunjukan, 'Gunung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7651_garis_seseorang, 'Garis Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7651_garis_seseorang, 'Garis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7651_garis_seseorang, 'Komentar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7765_untuk_mengetahui, 'Untuk Mengetahui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7765_untuk_mengetahui, 'Untuk Memahami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7765_untuk_mengetahui, 'Untuk Diwaspadai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7765_untuk_mengetahui, 'Untuk Menyetujui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7765_untuk_mengetahui, 'Setuju', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7779_untuk_dikuburkan, 'Untuk Dikuburkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7779_untuk_dikuburkan, 'Untuk Dikelilingi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7779_untuk_dikuburkan, 'Meluap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7779_untuk_dikuburkan, 'Untuk Diisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8676_optimisme, 'Optimisme', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8678_banyak, 'Banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8678_banyak, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8678_banyak, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8714_sebenarnya, 'Sebenarnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8714_sebenarnya, 'Benar-benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8754_divisi, 'Divisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8887_iri, 'Iri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8887_iri, 'Cemburu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8931_agar_cocok_di_dalam, 'Agar Cocok Di Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8931_agar_cocok_di_dalam, 'Untuk Tenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8931_agar_cocok_di_dalam, 'Akan Selesai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8936_untuk_ditambahkan_ke, 'Untuk Ditambahkan Ke', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8936_untuk_ditambahkan_ke, 'Untuk Bergabung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9007_gatal, 'Gatal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9083_perjalanan_bisnis, 'Perjalanan Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9083_perjalanan_bisnis, 'Perjalanan Resmi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9083_perjalanan_bisnis, 'Panggilan Layanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9152_pinggiran_kota, 'Pinggiran Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9152_pinggiran_kota, 'Pinggiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9161_titik_balik, 'Titik Balik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9161_titik_balik, 'Titik Kritis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9161_titik_balik, 'Tonggak pencapaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9254_rana, 'Rana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9254_rana, 'Rana Badai Geser', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9344_untuk_hibah, 'Untuk Hibah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9344_untuk_hibah, 'Untuk Memenuhi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9383_diri, 'Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9383_diri, 'Atas Inisiatif Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9383_diri, 'Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9462_mangsa, 'Mangsa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9462_mangsa, 'Korban', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2810_memengaruhi, 'さよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2832_perusahaan_yang_dikelola_pemerintah, 'こうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3756_untuk_membangun, 'たてる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3933_arsitek, 'けんちくか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4270_hadiah, 'げんざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4390_untuk_dicampur_dengan, 'まじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4395_konservatif, 'ほしゅしゅぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4407_akan_selesai, 'すむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4412_reputasi, 'ひょうばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4441_luar_biasa, 'すばらしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4500_penggelinciran, 'だっせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4502_untuk_melarikan_diri, 'だっそうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4503_penghindaran_pajak, 'だつぜい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4576_kereta_api_lokal, 'かくえきていしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4577_untuk_konfirmasi, 'かくにんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4580_komite, 'いいんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4581_untuk_memilih, 'せんきょする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4584_halte_bus, 'ばすてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4584_halte_bus, 'バスてい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4585_penghentian, 'ていし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4586_pemadaman_listrik, 'ていでん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4587_vampir, 'きゅうけつき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4588_penyerapan, 'きゅうしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4589_kuitansi, 'りょうしゅうしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4590_penghasilan, 'しゅうにゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4592_kulit, 'かわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4593_revolusi, 'かくめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4594_kulit, 'ひかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4595_penganggur, 'むしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4596_tempat_kerja, 'しょくば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4597_pekerjaan, 'しょくぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4598_personil, 'しょくいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4599_memiliki_pekerjaan, 'ゆうしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4600_berburu_pekerjaan, 'きゅうしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4601_pengunduran_diri, 'じしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4602_setan, 'おに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4605_perawat, 'かんごし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4606_pengacara, 'べんごし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4607_untuk_menghemat, 'ほごする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4608_guru, 'きょうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4609_dokter, 'いし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4610_hukum, 'ほうりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4613_untuk_membagi, 'わる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4614_peran, 'やくわり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4615_sepuluh_persen, 'いちわり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4616_perbandingan, 'わりあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4617_untuk_menilai, 'さばく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4618_uji_coba, 'さいばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4619_tanjung, 'さき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4620_kawasaki, 'かわさき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4621_nagasaki, 'ながさき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4622_standar, 'きじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4623_busuk, 'はんそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4624_hukum_fisika, 'ほうそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4625_untuk_menyediakan, 'そなえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4626_persiapan, 'じゅんび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4627_untuk_memimpin, 'みちびく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4628_panduan, 'しどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4629_batang_pohon, 'みき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4630_kereta_peluru, 'しんかんせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4631_untuk_meregangkan_sesuatu, 'はる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4632_lembut, 'やさしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4633_aktor, 'だんゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4634_prioritas, 'ゆうせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4635_kemenangan, 'ゆうしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4636_rumah, 'たく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4637_rumah_seseorang, 'じたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4638_tempat_tinggal, 'じゅうたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4640_kemewahan, 'ぜいたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4641_pelaksanaan, 'しこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4641_pelaksanaan, 'せこう', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4642_untuk_muncul, 'あらわれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4643_ekspresi, 'ひょうげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4644_realitas, 'げんじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4645_lokasi_di_tempat, 'げんば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4646_susu, 'ぎゅうにゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4647_puting, 'ちくび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4648_untuk_menelepon, 'よぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4649_kastil, 'しろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4650_aktor, 'はいゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4651_haiku, 'はいく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4652_ke_unggul, 'ひいでる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4653_unggul, 'ゆうしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4806_sebuah_efek, 'こうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4807_efisiensi, 'こうりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4851_ekonomi, 'けいざいがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4853_untuk_meningkatkan_sesuatu, 'あげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4855_untuk_mengkritik, 'ひはんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4856_untuk_meningkatkan_sesuatu, 'ふやす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4858_untuk_memotong, 'たつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4859_lembaga, 'しせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4961_tiba_tiba, 'とつぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5057_sakit_kepala, 'ずつう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5937_untuk_turun, 'おりる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6530_ruang_ganti, 'こういしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6831_rak, 'たな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6832_rak_buku, 'ほんだな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6833_kabinet, 'とだな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7269_ungu, 'むらさき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7271_ungu, 'むらさきいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7506_akting, 'えんぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7507_untuk_melakukan, 'えんずる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7508_pentas_seni, 'えんげい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7598_pertunjukan, 'じょうえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7651_garis_seseorang, 'せりふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7765_untuk_mengetahui, 'こころえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7779_untuk_dikuburkan, 'うまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8676_optimisme, 'らくてんしゅぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8678_banyak, 'たくさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8714_sebenarnya, 'げんに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8754_divisi, 'わりざん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8887_iri, 'うらやましい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8931_agar_cocok_di_dalam, 'おさまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8936_untuk_ditambahkan_ke, 'くわわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9007_gatal, 'かゆい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9083_perjalanan_bisnis, 'しゅっちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9152_pinggiran_kota, 'まちはずれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9161_titik_balik, 'ふしめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9254_rana, 'あまど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9344_untuk_hibah, 'かなえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9383_diri, 'みずから', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9462_mangsa, 'えじき', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2810_memengaruhi, 'アルコールの作用を教えてください。', 'Ajari saya tentang efek alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2810_memengaruhi, 'これは塩素の作用です。', 'Ini adalah efek dari klorin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2810_memengaruhi, '消化作用によって、食べ物は栄養素に分解されます。', 'Melalui proses pencernaan, makanan dipecah menjadi nutrisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2810_memengaruhi, '薬の作用により、痛みが和らいだ。', 'Berkat efek obatnya, rasa sakitnya berkurang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2832_perusahaan_yang_dikelola_pemerintah, 'この公社の設立には、多くの人々の協力が必要でした。', 'Pendirian perusahaan publik ini memerlukan kerjasama banyak pihak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2832_perusahaan_yang_dikelola_pemerintah, '公社といっても、様々な事業があります。', 'Meski disebut perusahaan publik, namun operasionalnya beragam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2832_perusahaan_yang_dikelola_pemerintah, '「確か、山田さんは公社で働いています。」「えっ、あそこって国営公社なの？」', '“Jika kuingat dengan benar, Yamada-san bekerja di perusahaan milik pemerintah.” “Apa itu perusahaan milik pemerintah?”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2832_perusahaan_yang_dikelola_pemerintah, 'ここの人間は、退職した後も自動的に天下りで公社の役員になれるようになってるんですよ。', 'Orang-orang di sini secara otomatis bisa mendapatkan posisi sebagai eksekutif di perusahaan publik melalui amakudari, bahkan setelah mereka pensiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2832_perusahaan_yang_dikelola_pemerintah, 'この旅客鉄道は、南アフリカ旅客鉄道公社が運営しています。', 'Layanan kereta penumpang ini dioperasikan oleh Badan Kereta Penumpang Afrika Selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3756_untuk_membangun, 'この地区には、新しい学校を建てる計画があります。', 'Ada rencana untuk membangun sekolah baru di daerah tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3756_untuk_membangun, 'いつか俺も自分の家を建てたいな。', 'Suatu hari nanti saya ingin membangun rumah sendiri juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3756_untuk_membangun, '大きな橋を建てるにはエンジニアが必要です。', 'Membangun jembatan besar membutuhkan insinyur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3933_arsitek, 'お父さん、あんたが建築家になったから、鼻が高いのよ。', 'Ayah sangat bangga karena kamu menjadi seorang arsitek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3933_arsitek, 'こちらはフランス人建築家のジュール・レスカスが建築した建物です。', 'Gedung ini dibangun oleh arsitek Perancis Jules Lescas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3933_arsitek, '私の家は有名な建築家によってデザインされたんですよ。', 'Rumah saya dirancang oleh seorang arsitek terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4270_hadiah, '現在、ワニカニは大変な人気を呼んでいます。', 'Saat ini, WaniKani telah mendapatkan popularitas yang luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4270_hadiah, 'トーフグオフィスの現在の住所を教えてください。', 'Tolong beritahu saya alamat kantor Tofugu sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4270_hadiah, '現在は、一日に何件ぐらいのEmailを受信してるんですか？', 'Berapa banyak email yang Anda terima dalam sehari sekarang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4390_untuk_dicampur_dengan, 'ラジオの電波が弱く、ノイズが混じって聞こえにくかった。', 'Sinyal radio lemah, dan kebisingan tercampur, sehingga sulit untuk didengar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4390_untuk_dicampur_dengan, '妹の茶色の目には、時折、緑や黄色が混じって見えることがあった。', 'Mata coklat kakakku kadang-kadang tampak bercampur dengan warna hijau atau kuning.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4390_untuk_dicampur_dengan, '悪魔からのメッセージには、我々を混乱させるために嘘と真実が入り混じっている。', 'Pesan-pesan dari iblis merupakan campuran antara kebohongan dan kebenaran yang dimaksudkan untuk membingungkan kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4395_konservatif, 'あれ、あの政治家って、保守主義だっけ？', 'Tunggu, apakah politisi itu seorang konservatif?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4395_konservatif, 'この国は保守主義が強いので、変化が遅いんです。', 'Negara ini sangat konservatif, sehingga perubahannya berjalan lambat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4395_konservatif, '私の両親は、二人とも教師で、めちゃくちゃ古風な保守主義者です。', 'Kedua orang tua saya adalah guru dan sangat konservatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4407_akan_selesai, '今やっと仕事が済んだところだよ。', 'Pekerjaanku akhirnya selesai sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4407_akan_selesai, 'この作業が済んだら食堂に集まろうぜ！', 'Mari kita berkumpul di kafetaria setelah kita selesai dengan pekerjaan ini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4407_akan_selesai, '謝ったんだけど、「これは謝って済む問題じゃない」なんて言われちゃって、それで頭にきて彼の顔をひっぱたいちゃったのよね。', 'Saya minta maaf, tapi kemudian dia pergi dan mengatakan bahwa permintaan maaf tidak bisa menyelesaikan masalah, jadi saya marah dan menampar wajahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4412_reputasi, 'あの野球評論家は、あまり評判が良くないんだよ。', 'Komentator bisbol itu tidak memiliki reputasi yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4412_reputasi, 'トーフグでは、ポートランドで評判の美人が働いている。', 'Kecantikan terkenal di Portland bekerja untuk Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4412_reputasi, 'あの店のケーキはとてもおいしいと評判です。', 'Kue di toko itu terkenal sangat lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4441_luar_biasa, '昨日のコンサート、素晴らしかったです！', 'Konser kemarin sungguh luar biasa!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4441_luar_biasa, 'あの映画のオープニングとカメラワークは実に素晴らしかった。', 'Pembukaan film itu dan kerja kameranya sungguh luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4441_luar_biasa, '山頂には素晴らしい景色が広がっていた。', 'Pemandangan menakjubkan terbentang dari puncak gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4441_luar_biasa, '「そんな風に自分を安売りしないで。君は素晴らしい女性だよ。」', '“Jangan merendahkan dirimu seperti itu. Kamu wanita yang luar biasa.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4500_penggelinciran, '話が脱線しました。', 'Pembicaraan menjadi teralihkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4500_penggelinciran, '電車が脱線しましたが、ケガ人はありませんでした。', 'Kereta tergelincir, namun tidak ada yang terluka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4500_penggelinciran, 'すいません、また脱線してしまいました。', 'Maaf, aku teralihkan lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4502_untuk_melarikan_diri, 'どうやって脱走に成功したの？', 'Bagaimana Anda bisa keluar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4502_untuk_melarikan_diri, '犬が脱走しないように、フェンスを作りました。', 'Kami membangun pagar untuk mencegah anjing melarikan diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4502_untuk_melarikan_diri, 'うちの子、学校から脱走しようとしたみたいなんだよね。', 'Rupanya, anak kami mencoba kabur dari sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4502_untuk_melarikan_diri, '重い刑罰を言い渡された犯罪者が、刑務所から脱走した。', 'Penjahat yang mendapat hukuman berat kabur dari penjara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4503_penghindaran_pajak, '脱税するつもりはなかったんです。', 'Saya tidak bermaksud menghindari pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4503_penghindaran_pajak, 'ヤバイ、脱税してたのがバレたかもしれない。', 'Oh tidak, saya mungkin ketahuan menghindari pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4503_penghindaran_pajak, '脱税は森氏の指示でした。', 'Penghindaran pajak itu atas arahan Pak Mori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4503_penghindaran_pajak, 'あの会社の社長が脱税をしていたことがニュースで報道された。', 'Kabar tersebut memberitakan bahwa presiden perusahaan tersebut telah melakukan penggelapan pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4576_kereta_api_lokal, 'この各駅停車はちょうどトンネルを通り過ぎたところです。', 'Kereta lokal baru saja melewati terowongan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4577_untuk_konfirmasi, '警察には、情報をリアルタイムで確認するシステムがある。', 'Polisi memiliki sistem untuk memverifikasi informasi secara real time.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4577_untuk_konfirmasi, '弁護士に確認してみた方がいいんじゃない？', 'Bukankah lebih baik konfirmasi ke pengacara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4577_untuk_konfirmasi, '我が社がついに赤字を脱したことを確認した時、私は胸を撫で下ろしました。', 'Saya sangat lega ketika mengonfirmasi bahwa perusahaan kami akhirnya berhasil keluar dari zona bahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4580_komite, 'あんなに楽しい委員会の会議をサボる人がいるなんて理解できない。', 'Saya tidak mengerti mengapa beberapa orang melewatkan rapat komite yang menyenangkan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4580_komite, '予算委員会の委員長という大役をおおせつかった。', 'Saya diberi pekerjaan besar sebagai ketua komite anggaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4580_komite, 'いい加減、委員会での重要な問題に対して意見をころころ変えるのをやめてくれないか。みんなにいい迷惑だよ。', 'Sebaiknya berhenti jungkir balik soal hal-hal penting di panitia, itu tidak bertanggung jawab. Semua orang menganggapnya menjengkelkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4581_untuk_memilih, 'トーフグの会長を毎年選挙しています。', 'Kami memilih Ketua Tofugu setiap tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4581_untuk_memilih, '政府は次のリーダーを選挙する日を発表しました。', 'Pemerintah mengumumkan tanggal pemilihan pemimpin berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4581_untuk_memilih, 'うちの学校では、毎年、生徒会長を選挙するイベントがあります。', 'Setiap tahun di sekolah kami, ada acara untuk memilih ketua OSIS.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4584_halte_bus, 'このバス、あのバス停で止まりますか？', 'Apakah bus ini berhenti di halte itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4584_halte_bus, '２９番のバスなら、このバス停に来るはずですよ。', 'Kalau bus nomor 29, sebaiknya datang ke halte ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4584_halte_bus, 'バス停で、間違えて直通のバスに乗ってしまいました。', 'Di halte bus, saya tidak sengaja naik bus ekspres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4585_penghentian, 'ワニカニのステッカーの生産停止は、私にとって、今世界で一番大きな問題です。', 'Bagi saya, masalah terbesar di dunia saat ini adalah terhentinya produksi stiker WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4585_penghentian, '食事中は動画を停止するようにしています。', 'Saya mencoba menjeda video selama waktu makan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4585_penghentian, '私の兄は一度心肺停止にまで至ったんですが、外科医が心臓マッサージを施した後に、心臓が再び脈動しだしたんです。', 'Kakak laki-laki saya pernah mengalami serangan jantung paru, namun jantungnya mulai berdetak lagi setelah dokter bedah melakukan pijat jantung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4586_pemadaman_listrik, '川崎市は停電しなかったの？', 'Apakah Kota Kawasaki tidak kehilangan tenaga?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4586_pemadaman_listrik, 'どうしてまだ停電してるって分かってるのに、電気のスイッチを何度も付けたり消したりしちゃうんだろう。', 'Mengapa saya terus menyalakan dan mematikan lampu jika saya tahu masih ada pemadaman listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4586_pemadaman_listrik, '停電のせいで、冷凍庫のアイスクリームが全部とけちゃった。', 'Gara-gara mati lampu, semua es krim di freezer meleleh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4587_vampir, 'あの吸血鬼は、何事に対してもマイナス思考で、こっちがイライラしてくるよ。', 'Vampir itu sangat negatif dalam segala hal, membuatku gelisah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4587_vampir, '吸血鬼は、あわてて寝どこに帰っていった。', 'Vampir itu bergegas kembali ke tempat dia tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4587_vampir, '吸血鬼の野郎、マジ許せねえ！俺の事、血を吸いたくない程インチキ臭すぎるって言うんだ。', 'Bajingan vampir itu benar-benar tidak bisa dimaafkan! Dia mengatakan kepadaku bahwa dia bahkan tidak mau menghisap darahku karena aku terlalu palsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4588_penyerapan, '若者の知識の吸収スピードにはついていけないよ。', 'Saya tidak bisa mengimbangi kecepatan anak muda menyerap ilmu pengetahuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4588_penyerapan, 'うちの手ぬぐいは、水分の吸収力がすごいんです。', 'Tenugui kami menyerap banyak cairan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4588_penyerapan, '植物が水分を取り入れる時って、どれくらいのスピードで吸収するんですか？', 'Jika tumbuhan mendapat air, berapa lama waktu yang dibutuhkan tumbuhan untuk menyerapnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4588_penyerapan, '生理の日を快適に過ごすなら、より吸収量の多いナプキンを選ぶのがおすすめです。', 'Jika Anda ingin merasa nyaman di hari-hari menstruasi, sebaiknya pilih pembalut dengan tingkat penyerapan lebih tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4589_kuitansi, 'もう一度領収書を発行してもらえませんか？', 'Bisakah Anda mengeluarkan tanda terima lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4589_kuitansi, 'すいません、これを返品したいんですけど、できますか？これが領収書です。', 'Saya ingin mengembalikan ini, bolehkah? Ini tanda terimanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4589_kuitansi, 'いい加減そろそろ領収書を出して、経費を払い戻してもらった方がいいんじゃない？', 'Saya pikir Anda harus menyerahkan kwitansi Anda untuk mendapatkan penggantian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4590_penghasilan, 'あの人、収入があまりないのに、いつも贅沢しているんです。', 'Orang tersebut tidak mempunyai penghasilan banyak namun selalu mengeluarkan uang secara boros.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4590_penghasilan, '本当の収入を打ち明けたら、フラれたんだ。', 'Ketika saya membuka tentang penghasilan saya yang sebenarnya, saya dicampakkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4590_penghasilan, 'その海外での仕事に就けば、おそらく収入が半分になるだろう。', 'Jika saya bekerja di luar negeri, penghasilan saya mungkin setengah dari penghasilan saya sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4592_kulit, 'これは本物の革じゃありません。', 'Ini bukan kulit asli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4592_kulit, '革のカバンを作るために、皮を革に加工しました。', 'Saya mengolah kulitnya menjadi kulit untuk dijadikan tas kulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4592_kulit, 'フグは日本でワニ革のサンダルを買った。	', 'Fugu membeli sandal kulit buaya di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4593_revolusi, '私達の革命の指導者は、とても理解がある人なんです。', 'Pemimpin revolusioner kita adalah orang yang sangat pengertian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4593_revolusi, 'この革命の始まりを見ることができたあなたは、幸せですよ。', 'Anda beruntung melihat awal revolusi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4593_revolusi, '革命の後、情勢は好転した。', 'Situasi berubah menjadi lebih baik setelah revolusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4594_kulit, '何度か洗濯したら、皮革の色があせ始めたんだけど、もしかしたら洗っちゃいけなかったのかな。', 'Setelah dicuci beberapa kali, warna kulit mulai memudar. Sekarang saya bertanya-tanya apakah saya harus mencucinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4595_penganggur, 'また無職になってしまった。', 'Saya menganggur lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4595_penganggur, '無職のホームレスの男性と友達になりました。', 'Saya berteman dengan seorang pria tunawisma yang menganggur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4595_penganggur, '無職でお金がはらえずにいたら、ガスと電気を止められました。', 'Saya menganggur dan tidak mampu membayar tagihan, sehingga gas dan listrik saya dimatikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4595_penganggur, '彼は完璧な夫ですが、一つだけ問題があるんです。十年間ずっと無職なんです。', 'Dia akan menjadi suami yang sempurna, kecuali satu hal – dia telah menganggur selama sepuluh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4596_tempat_kerja, 'この職場、どう思う？', 'Apa pendapat Anda tentang tempat kerja ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4596_tempat_kerja, '私の職場には、最新のコンピュータが備えられています。', 'Tempat kerja saya dilengkapi dengan komputer terkini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4596_tempat_kerja, 'どうやら、職場に私のかくれファンがいるみたいなんです。', 'Rupanya aku punya pengagum rahasia di tempat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4596_tempat_kerja, 'もしこの職場に残りたいのなら、物事をたいそうに考えるクセを無くしてください。	', 'Jika Anda ingin bertahan di tempat kerja ini, Anda harus menghentikan kebiasaan Anda yang menganggap segala hal sebagai masalah besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4597_pekerjaan, '大人になったら、どんな職業につきたい？', 'Profesi apa yang ingin Anda miliki ketika besar nanti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4597_pekerjaan, 'あなたの職業って、もしかしてモデルなの？スタイルめっちゃいいよね。', 'Apakah Anda mungkin bekerja sebagai model? Anda memiliki gaya yang hebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4597_pekerjaan, 'ワニカニユーザーは、ビエトの裏の職業が何なのか、みんな知っています。', 'Semua pengguna WaniKani tahu apa pekerjaan rahasia Viet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4598_personil, '私は教師ではありませんが、学校職員です。', 'Saya bukan seorang guru, tetapi saya adalah bagian dari staf sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4598_personil, '職員達も、試験に備えて勉強しています。', 'Para karyawan juga sedang belajar untuk mempersiapkan ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4598_personil, 'うちの職員は、みんな卵を割るのが上手なんですよ。', 'Staf kami semuanya pandai memecahkan telur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4599_memiliki_pekerjaan, '私がインターネットで出会った男性は、三十代で有職ですが、バツイチ子持ちです。', 'Pria yang saya temui di internet berusia tiga puluhan dan mempunyai pekerjaan, namun dia sudah bercerai dan juga punya anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4599_memiliki_pekerjaan, '日本語では、「無職」という言葉を使って「私は無職です」とは言うけど、「有職」という言葉を使って「私は有職です」とは言わないんだよね。', 'Dalam bahasa Jepang, kita menggunakan kata "mushoku" untuk mengatakan "Saya menganggur", namun kita tidak menggunakan kata "yūshoku" untuk mengatakan "Saya bekerja".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4599_memiliki_pekerjaan, '最近は子育て中の人たちの有職率が上がってきてると思います。', 'Saya pikir tingkat pekerjaan di antara orang-orang yang membesarkan anak-anak telah meningkat akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4599_memiliki_pekerjaan, '相手が有職であることって、そんなに大事な条件でしょうか？', 'Apakah bekerja benar-benar merupakan syarat penting bagi Anda sebagai calon pasangan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4600_berburu_pekerjaan, 'いい求職のサイト、知ってる？', 'Apakah Anda tahu situs pencari kerja yang bagus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4600_berburu_pekerjaan, 'このブログには、求職する時に役立つ情報がたくさんのっている。', 'Ada banyak informasi berguna untuk mencari pekerjaan di blog ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4600_berburu_pekerjaan, '失業なんて気にするなよ。俺なんてかれこれもう約二年間も求職活動中だぜ。', 'Jangan khawatir menjadi pengangguran. Saya sudah mencari pekerjaan selama hampir dua tahun sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4601_pengunduran_diri, 'その国会議員は辞職しないで議員を続けるそうです。', 'Anggota parlemen tidak akan mengundurkan diri dan akan terus menjadi anggota parlemen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4601_pengunduran_diri, '上司にはっきりと「あなたの代わりはいくらでもいる」と言われたので、その会社を辞職しました。	', 'Karena bos saya dengan jelas mengatakan kepada saya, "Ada banyak orang yang bisa menggantikan Anda," saya mengundurkan diri dari perusahaan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4601_pengunduran_diri, 'マミはコウイチのベーコンを食べた罪で辞職に追いこまれた。', 'Mami terpaksa mengundurkan diri karena kejahatan memakan daging Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4602_setan, '昨日、お母さん、鬼のようにキレてたよね。', 'Kemarin ibu sama marahnya dengan ogre, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4602_setan, 'あなたが実際に鬼を見たと仮定しましょう。', 'Katakanlah Anda benar-benar melihat seorang ogre.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4602_setan, 'おい！下手な芝居はやめて正体を現せ！この、鬼め！', 'Hai! Hentikan tindakan lemah ini dan tunjukkan pada kami wujud aslimu, dasar iblis!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4605_perawat, 'その看護師はいつも作り笑いをしているように見えた。', 'Perawat itu sepertinya selalu memasang senyuman palsu di wajahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4605_perawat, '夫は、私が看護師の仕事を続けることに批判的なんです。', 'Suami saya mengkritik saya untuk terus bekerja sebagai perawat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4605_perawat, 'ビエトは看護師の彼女が出来たという白々しい嘘をついた。', 'Viet memberi tahu kami kebohongan yang jelas bahwa dia menemukan pacar yang berprofesi sebagai perawat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4606_pengacara, 'グッドマン弁護士はウォルトに会いたくなかったので仮病を使った。	', 'Pengacara Goodman memalsukan penyakitnya karena dia tidak ingin bertemu Walt.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4606_pengacara, 'あの弁護士、ついに尻尾を出しやがったぞ！', 'Pengacara itu akhirnya menunjukkan warna aslinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4606_pengacara, '報酬の金額を聞いて、弁護士は態度を改めた。', 'Setelah mendengar besarnya biaya pungutan, pengacara mengubah sikapnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4607_untuk_menghemat, '自然を保護するために、何ができるか考えてみましょう。', 'Mari kita pikirkan apa yang bisa kita lakukan untuk melestarikan alam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4607_untuk_menghemat, '警察は新宿駅近辺を一人で歩いていた少女を保護した。', 'Polisi membawa gadis yang berkeliaran sendirian di dekat Stasiun Shinjuku ke dalam tahanan pelindung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4607_untuk_menghemat, 'あそこで虫をついばんでいる鳥は、国際間で保護することが取り決められた鳥です。', 'Burung yang mematuk serangga di sana merupakan spesies yang dilindungi berdasarkan perjanjian internasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4608_guru, '私は法律学の教師をしています。', 'Saya bekerja sebagai guru yurisprudensi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4608_guru, 'あの教師は歴史認識をころころ変えるからあまり好きじゃない。', 'Saya tidak suka guru itu karena dia selalu membalik-balik fakta sejarah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4608_guru, '数学教師の机には、理解力をテストする試験の解答が置いてありました。', 'Di meja guru matematika terdapat lembar jawaban ujian yang menguji pemahaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4609_dokter, 'ついにあの医師の尻尾をつかまえたぞ！', 'Kami akhirnya mendapat bukti untuk mengungkap dokter itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4609_dokter, 'あっ、その医師って、テレビによく出てる方ですよね？	', 'Oh, dokter itu sering tampil di TV ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4609_dokter, 'ほんの短い時間だけでしたが、この医師は二度テレビに出たことがあるんです。', 'Dokter ini muncul di TV dua kali, meski hanya dalam waktu singkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4609_dokter, '医師によると、祖父の心拍はだんだん弱くなっていって、最後に停止したそうです。', 'Menurut dokter, detak jantung kakek saya lama kelamaan semakin melemah, lalu akhirnya berhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4610_hukum, '弁護士は、法律のエキスパートです。', 'Pengacara adalah ahli di bidang hukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4610_hukum, '日本には、道を歩きながら飲酒をしてはいけないという法律は無い。', 'Di Jepang, tidak ada undang-undang yang melarang berjalan dan minum di jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4610_hukum, 'もし一ヶ月の間に全法律用語を覚えることができたら、百万ドルお支払いしてもいいですよ。', 'Jika Anda dapat menghafal setiap istilah hukum dalam waktu satu bulan, saya akan membayar Anda satu juta dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4613_untuk_membagi, '七割る二の答えって、三余り一であってる？', 'Apakah jawaban “tujuh dibagi dua”, tiga mempunyai sisa satu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4613_untuk_membagi, 'ごめんなさい、お皿を割ってしまいました。', 'Maaf, aku memecahkan piringnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4613_untuk_membagi, 'コウイチは空手チョップで百枚の瓦を真っ二つに割ってみせた。', 'Koichi menunjukkan bahwa dia bisa mematahkan seratus genteng menjadi dua dengan pukulan karate.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4614_peran, '私の夫は父親としての役割をしっかり果たしてくれていると思います。', 'Saya pikir suami saya melakukan tugasnya dengan baik sebagai seorang ayah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4614_peran, 'インターネットは今後の選挙においてより重要な役割を担っていくでしょう。	', 'Internet akan memainkan peran yang lebih penting dalam pemilu mendatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4614_peran, '役割分担をしてみんなで片付ける方が効率がいいよ。', 'Akan lebih efisien jika membagi peran dan menyelesaikannya bersama-sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4615_sepuluh_persen, '記事を書く時は、一割ほどできたところでだれかにチェックしてもらいます。', 'Ketika saya menulis sebuah artikel, saya meminta seseorang memeriksanya untuk saya ketika sudah sekitar sepuluh persen selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4615_sepuluh_persen, '日本でのキリスト教信者の数は一割にもおよばない。', 'Jumlah umat Kristen di Jepang bahkan tidak mencapai 10%.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4615_sepuluh_persen, '「この河豚、ちょっと高すぎますよ。まけてもらえませんか？」「一割引きにしてあげましょう。」', '"Ikan buntal ini agak terlalu mahal. Bisakah Anda memberi saya diskon?" "Saya akan memberi Anda diskon 10%."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4616_perbandingan, '出席者の割合は80%だった。', 'Rasio masyarakat yang hadir delapan puluh persen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4616_perbandingan, 'その言葉を使ってる人の割合は、年配の人がほとんどだと思うよ。', 'Saya rasa sebagian besar orang yang menggunakan istilah itu adalah orang-orang lanjut usia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4616_perbandingan, 'ワニカニユーザーの男女の割合を教えてください。', 'Tolong beritahu saya rasio laki-laki dan perempuan di antara pengguna WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4616_perbandingan, 'もっと長引くかと思ってたけど、割合早く終わったね。', 'Saya pikir ini akan memakan waktu lebih lama, namun ternyata berakhir dengan relatif cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4616_perbandingan, '日本では、蕎麦粉の割合が100%の蕎麦を十割り蕎麦と呼びます。', 'Di Jepang, mie yang mengandung seratus persen tepung soba disebut jūwari soba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4617_untuk_menilai, '裁判ではできるだけ公平に裁く必要があります。', 'Dalam suatu persidangan perlu untuk menilai seadil-adilnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4617_untuk_menilai, 'きっとアイツの罪は最高裁判所で裁かれるさ。', 'Pasti kejahatannya akan diadili oleh Mahkamah Agung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4617_untuk_menilai, '折角あの男が殺人犯だとが分かったのに、時効を迎えているせいで法的には誰もヤツを裁く事ができないんだ。', 'Akhirnya diketahui bahwa pria tersebut adalah seorang pembunuh, namun batas waktu telah habis, sehingga tidak ada yang dapat mengadilinya secara hukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4618_uji_coba, 'できるだけ、裁判はしたくないんですよね。', 'Saya ingin menghindari persidangan, jika memungkinkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4618_uji_coba, '裁判の費用がいくらぐらいかかるか知っていますか？', 'Tahukah Anda berapa biaya uji cobanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4618_uji_coba, 'この貯金箱には小遣いからためた80ドルが入っているんだけど、裁判を起こすには到底足りないと思うんだよね。', 'Celengan ini berisi delapan puluh dolar yang saya tabung dari uang saku saya, tapi saya rasa itu tidak cukup untuk mengajukan tuntutan hukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4619_tanjung, '今日志賀直哉の小説『城の崎にて』を読み始めました。', 'Saya mulai membaca novel Naoya Shiga, "Di Cape Kinosaki" hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4620_kawasaki, '犯人は、尻尾をまいて逃げたが、川崎でつかまった。', 'Tersangka kabur dengan ekor di antara kedua kakinya, namun berhasil ditangkap di Kawasaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4620_kawasaki, '川崎病という子どもの病気があると聞きましたが、それはどんな病気ですか？', 'Saya dengar ada penyakit yang menyerang anak-anak bernama Penyakit Kawasaki, tapi penyakit apa itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4620_kawasaki, '一度、川崎のお墓にきちんと挨拶に行きたいです。', 'Saya ingin mengunjungi makam di Kawasaki setidaknya sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4621_nagasaki, '私の名字は長崎なので、みんなには長ちゃんって呼ばれています。', 'Nama keluargaku Nagasaki, jadi semua orang memanggilku Naga-chan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4621_nagasaki, '川崎には行ったことがないですが、長崎になら行ったことがあります。', 'Saya belum pernah ke Kawasaki, tapi saya pernah ke Nagasaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4621_nagasaki, 'お土産に長崎カステラを買ったよー。', 'Saya membeli kue bolu Nagasaki sebagai oleh-oleh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4622_standar, '良い記事か悪い記事かの判断の基準は何ですか？', 'Apa standar untuk menilai apakah artikel itu baik atau buruk?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4622_standar, '今日の会議では、安全基準の策定について話し合います。', 'Kami akan berbicara tentang penetapan standar keselamatan pada pertemuan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4622_standar, '私達は、製品の品質において、業界基準を大きく上回っています。', 'Kualitas produk kami jauh di atas standar industri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4623_busuk, '反則だと言われた時は頭に血がのぼっていて、すぐに言われたことが理解できなかった。', 'Ketika mereka mengatakan kepadaku bahwa itu adalah sebuah pelanggaran, darah mengalir deras ke kepalaku, dan aku tidak segera mengerti apa yang dibicarakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4623_busuk, 'あの選手は、ああやって、見えないところでいつも反則するんだよ。', 'Pemain itu selalu melakukan pelanggaran seperti itu ketika dia tidak terlihat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4623_busuk, '出会い系アプリのプロフの写真にフィルター使うのは反則だよ。ほぼ別人じゃん。', 'Menggunakan filter pada gambar profil aplikasi kencan adalah tindakan yang cukup nakal. Ini hampir seperti Anda adalah orang yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4624_hukum_fisika, 'うーん、六才の子に、重力の法則を教えるいい方法ってありますか？', 'Hmm, adakah cara yang baik untuk mengajari anak usia enam tahun tentang hukum gravitasi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4624_hukum_fisika, 'そのベーコンは、自然の法則によってマミに食べられた。', 'Daging babi itu dimakan Mami sesuai hukum alam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4624_hukum_fisika, 'もしウサギが高速で走っている電車の車内で真っすぐ上に飛び跳ねても、慣性の法則によって同じ場所に着地することになります。', 'Jika seekor kelinci melompat lurus ke atas di dalam kabin kereta berkecepatan tinggi, menurut hukum inersia, ia akan mendarat di tempat yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4625_untuk_menyediakan, '老後に備えて、家をバリアフリーにしました。', 'Untuk mempersiapkan hari tua kami, kami merenovasi rumah agar dapat diakses kursi roda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4625_untuk_menyediakan, 'トーフグのオフィスに電話が備え付けられましたが、ほとんどだれも使っていません。', 'Kantor Tofugu dilengkapi dengan telepon, namun hampir tidak ada orang yang menggunakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4625_untuk_menyediakan, '気持ちを引き締めて敵の攻撃に備えろ！', 'Persiapkan dirimu dan bersiap menghadapi serangan lawan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4625_untuk_menyediakan, '休日って仕事に備えるためのものだと思ってました。自分が楽しむために使ってもいいんですね！', 'Dulu saya mengira hari libur adalah untuk persiapan bekerja. Begitu ya, sekarang tidak apa-apa menggunakannya untuk bersenang-senang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4626_persiapan, '準備はいい？', 'Apakah kamu siap?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4626_persiapan, 'おはよう。朝ご飯の準備なら、もうできてるよ。', 'Selamat pagi. Kalau soal sarapan, sudah disiapkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4626_persiapan, 'ごめん。ゆっくり寝たいっていう誘惑に負けちゃって、誕生日パーティーの準備、間に合わなかった。', 'Maaf, saya menyerah pada godaan untuk tidur, dan tidak bisa datang tepat waktu untuk mempersiapkan pesta ulang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4627_untuk_memimpin, '生徒達を正しい道に導くのが教師の仕事だろ？', 'Bukankah tugas guru adalah membimbing siswanya ke jalan yang benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4627_untuk_memimpin, 'あのボクサーは、言葉で相手をイライラさせて、対戦相手を反則負けに導いた。', 'Petinju itu mengejek lawannya dengan kata-kata, menyebabkan lawannya kalah karena permainan kotor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4627_untuk_memimpin, 'あなたは父のことを誤解していると思います。彼は決して誰かを凶悪犯罪へと導くような人ではありません。', 'Saya pikir Anda salah paham tentang ayah saya. Dia bukan tipe orang yang akan mengarahkan seseorang untuk melakukan kejahatan keji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4628_panduan, 'これが正しい指導の仕方かは分からない。', 'Saya tidak tahu apakah ini cara yang tepat untuk memberikan bimbingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4628_panduan, '人生のきびしい現実を指導してやっただけです。	', 'Saya hanya memberi petunjuk tentang kenyataan hidup yang pahit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4628_panduan, '彼女は不注意ですが、とても頭のいい指導者です。	', 'Dia sedikit ceroboh, tapi dia pemimpin yang sangat cerdas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4629_batang_pohon, '誰だ、幹にキズを付けたのは。', 'Siapa yang menggaruk batang pohon?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4629_batang_pohon, 'その木の幹をなでた時、木のさびしさにふれた気がしたんです。', 'Saat aku menggosok batang pohon itu, aku merasa seolah-olah telah menyentuh kesendirian pohon itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4629_batang_pohon, '木の幹に絡まっているツタを取り除いた方がいいよ。', 'Anda harus menghilangkan tanaman ivy yang melilit batang pohon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4630_kereta_peluru, '明日は新幹線で岡山に行きます。', 'Saya akan naik kereta peluru ke Okayama besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4630_kereta_peluru, '新幹線で、となりの席の人に白々しいお世辞を言われました。', 'Di Shinkansen saya diberi pujian hampa oleh orang yang duduk di sebelah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4630_kereta_peluru, '走りすぎる新幹線の鈍い轟を除いては物音一つ聞こえなかった。', 'Aku tidak bisa mendengar apa pun, kecuali suara gemuruh kereta Shinkansen yang lewat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4631_untuk_meregangkan_sesuatu, 'キャンバスをフレームに張る方法を教わりました。', 'Saya diajari cara meregangkan kanvas di atas bingkai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4631_untuk_meregangkan_sesuatu, 'バレーボールのネットを張ったのは誰ですか？', 'Siapa yang memasang jaring bola voli?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4631_untuk_meregangkan_sesuatu, 'テントをもうちょっとピンと張りたいんですが、手伝ってくれませんか？', 'Saya ingin meregangkan tenda lebih erat. Bisakah Anda membantu saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4631_untuk_meregangkan_sesuatu, '久々にジョギングしたから、足がパンパンに張ってる。', 'Saya jogging untuk pertama kalinya setelah sekian lama, jadi kaki saya bengkak dan tegang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4632_lembut, 'クリスはちょっとヤンチャだけど、ああ見えてすごく優しいんだよ。	', 'Chris memiliki sedikit sisi liar, tapi dia sangat baik meskipun penampilannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4632_lembut, '夫は人前では態度が変わって、優しいふりをするんです。', 'Suamiku mengubah sikapnya di depan umum dan berpura-pura bersikap baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4632_lembut, '弟はまだ幼いので、優しい母の死をまだ理解できずにいます。', 'Adikku masih sangat muda, jadi dia belum sepenuhnya memahami meninggalnya ibu manisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4633_aktor, 'あの男優、ファンに対する態度がひどいので有名だよ。', 'Aktor itu terkenal karena sikapnya yang buruk terhadap para penggemarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4633_aktor, 'あ、それって、二作目の映画で有名になった男優だよね。', 'Oh, itu aktor yang menjadi terkenal karena film keduanya ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4633_aktor, 'その俳優は新人の時から、「主演男優賞を狙いたい」と真面目に語っていた。', 'Sejak menjadi pendatang baru, aktor tersebut telah mengungkapkan keinginan tulusnya untuk memenangkan penghargaan Aktor Terbaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4634_prioritas, '若い人がお年寄優先座席に堂々と座っているのはいただけない。', 'Tidak dapat diterima bagi kaum muda untuk tanpa malu-malu duduk di tempat duduk prioritas bagi orang lanjut usia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4634_prioritas, 'うちの会社は、新しいベーコンのフレーバーの開発を優先するべきだと思うんだよね。', 'Saya pikir perusahaan kita harus memprioritaskan pengembangan rasa bacon yang baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4634_prioritas, '優先事項を決めて、効率良く仕事をするように努めています。', 'Dengan memprioritaskan tugas, kami berusaha untuk bekerja lebih efisien.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4635_kemenangan, 'ジャイアンツは去年はボロ負けだったが、今年はリーグ優勝を果たした。', 'Meskipun Giants sukses besar tahun lalu, mereka memenangkan kejuaraan tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4635_kemenangan, '優勝したら、ペルシャじゅうたんがもらえるんだ。	', 'Jika Anda memenangkan tempat pertama, Anda bisa mendapatkan karpet Persia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4635_kemenangan, 'コウイチがトーフグを初優勝に導きました。', 'Koichi memimpin Tofugu ke kejuaraan pertamanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4636_rumah, '今日は山田宅におじゃましてます。', 'Saya mengunjungi rumah Yamada hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4637_rumah_seseorang, '自宅のトイレから、助けを呼ぶ声が聞こえてきたんです。', 'Saya mendengar suara meminta bantuan dari kamar mandi di rumah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4637_rumah_seseorang, '今週、彼女に自宅に招待されたんだ。', 'Minggu ini, pacar saya mengundang saya ke rumahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4637_rumah_seseorang, 'ビルはいつも自宅で贅沢なパーティーを開いている。', 'Bill selalu mengadakan pesta mewah di rumahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4638_tempat_tinggal, 'この地域の住宅は、あの大地震のときも大丈夫だったんです。', 'Rumah-rumah di daerah ini tidak mengalami kerusakan bahkan saat terjadi gempa besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4638_tempat_tinggal, '近年でも、日本の住宅の多くには和室があります。', 'Bahkan beberapa tahun terakhir ini, banyak rumah Jepang yang memiliki ruangan bergaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4638_tempat_tinggal, '戦争に備えて、核シェルターを備え付けている住宅が増えています。', 'Jumlah tempat tinggal dengan tempat perlindungan nuklir telah meningkat sebagai persiapan perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4640_kemewahan, 'ファーストクラスでの旅行なんて、贅沢すぎるよ。', 'Bepergian kelas satu terlalu boros.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4640_kemewahan, '冬になると、コウイチは贅沢なフグ皮のコートを着て出社する。', 'Di musim dingin, Koichi datang ke kantor dengan mantel kulit fugu yang mewah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4640_kemewahan, '誕生日だからって贅沢な事は何もしたくないわ。良い本が読めればそれでいいの。', 'Saya tidak ingin melakukan sesuatu yang berlebihan untuk ulang tahun saya. Jika saya bisa membaca buku yang bagus, saya senang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4641_pelaksanaan, 'その法律は来月五日に施行される予定です。', 'Undang-undang tersebut dijadwalkan mulai berlaku pada tanggal lima bulan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4641_pelaksanaan, 'この法律の施行の責任を誰が負っていたのか覚えていますか？', 'Apakah Anda ingat siapa yang bertanggung jawab atas penegakan hukum ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4641_pelaksanaan, 'まだその法律の施行が確定したわけではない。', 'Implementasi undang-undang tersebut belum selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4642_untuk_muncul, 'ここで待っていれば、きっとまたあのトラ猫が現れるよ。', 'Jika kamu menunggu di sini, aku yakin kucing kucing itu akan muncul lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4642_untuk_muncul, '私の夢を笑わずに理解してくれる人が現れて、うれしいです。', 'Aku senang ada seseorang yang memahami mimpiku tanpa menertawakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4642_untuk_muncul, 'アイツはいつも、寝坊しても、遅刻なんてしてませんという顔をして白々しくオフィスに現れる。', 'Bahkan ketika dia ketiduran, dia selalu datang ke kantor dengan berpura-pura bodoh, dengan raut wajahnya yang berkata, "Apa, terlambat? Bukan aku."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4643_ekspresi, 'トーフグの記事は、どれも表現がユニークでおもしろい。', 'Setiap artikel Tofugu mempunyai kiasan yang unik dan menarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4643_ekspresi, '以前は理解できなかった芸術表現が理解できるようになった時、言葉では表現できないほどうれしかった。', 'Ketika saya mampu memahami ekspresi artistik yang belum saya pahami sebelumnya, kata-kata tidak dapat mengungkapkan betapa bahagianya saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4643_ekspresi, '昨夜の夢で、私たちの赤ちゃんに「乳歯が抜けそうだった時、言葉では表現できないほど痒かった」って言われたの。', 'Tadi malam dalam mimpi saya, bayi kami memberi tahu saya bahwa sudah waktunya gigi susunya tanggal dan dia tidak dapat mengungkapkan dengan kata-kata betapa gatalnya gigi tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4644_realitas, 'これは夢か、現実か？', 'Apakah ini mimpi atau nyata?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4644_realitas, 'まずは、現実を正しく理解することが大切です。', 'Penting untuk memahami kenyataannya terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4644_realitas, '「頼むから、現実を見てくれよ！これはケーキじゃなくてウンチなんだ！」', '"Demi Tuhan, hadapi kenyataan! Ini bukan kue, ini kotoran!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4645_lokasi_di_tempat, 'ライブストリーミングで、現場の楽しい空気感が伝わればいいなと思っています。', 'Saya berharap live streaming bisa menyampaikan betapa asyiknya suasana di sini saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4645_lokasi_di_tempat, 'このルールを変えたければ、まず現場の了解を取ってください。', 'Jika Anda ingin mengubah aturan ini, harap mendapat persetujuan dari pekerja di lokasi terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4645_lokasi_di_tempat, 'あの犯罪現場で実際に何が起きたのかがすぐに明るみに出ることを期待しよう。', 'Semoga apa yang sebenarnya terjadi di TKP segera terungkap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4646_susu, 'あーっ牛乳こぼれてるよー！', 'Ahhh, susunya tumpah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4646_susu, 'おはよう。はい、牛乳よ。', 'Selamat pagi. Ini susumu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4646_susu, '朝日を見ながら飲む美味しい牛乳に勝るものはないね。', 'Tidak ada yang lebih baik daripada minum susu sambil menyaksikan matahari terbit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4647_puting, 'あそこで乳首にチクワを付けてダンスしてる人が私の上司です。', 'Pria yang menari di sana dengan chikuwa di setiap putingnya adalah bosku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4647_puting, '赤ちゃんにかまれて、乳首がカサブタだらけになってるんです。	', 'Puting saya penuh koreng karena digigit bayi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4647_puting, 'あんたの乳首から血がふき出しているのを見て、思わずパニクッちゃったよ！	', 'Saat aku melihat semua darah muncrat dari putingmu, aku panik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4647_puting, '哺乳瓶の乳首、熱湯消毒しておいたよ！', 'Saya sudah mensterilkan dot botol susu dengan air mendidih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4648_untuk_menelepon, 'タクシーを呼んでもらえますか？', 'Bisakah Anda memanggilkan taksi untuk saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4648_untuk_menelepon, '空港で、見知らぬ人に名前を大声で呼ばれた。', 'Tiba-tiba ada orang asing yang memanggil nama saya di bandara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4648_untuk_menelepon, '彼はあなたの命の恩人なんだから、誕生日会に呼んだ方がいいわよ。', 'Dia menyelamatkan hidupmu jadi kamu harus mengundangnya ke pesta ulang tahunmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4649_kastil, 'この城の中では、飲食は禁止です。', 'Dilarang makan dan minum di kastil ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4649_kastil, '今でも残っているお城は、全て観光名所になっています。', 'Kastil-kastil yang masih tersisa semuanya menjadi tempat wisata terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4649_kastil, 'もし宝くじが当たったら、裏庭に自分のお城を建てるね。', 'Jika saya memenangkan lotre, saya akan membangun kastil saya sendiri di halaman belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4650_aktor, 'あの俳優は、態度に問題がある。', 'Aktor itu punya masalah sikap yang nyata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4650_aktor, 'その女優は、いつも大物俳優に尻尾をふっているため、他の女優から嫌われている。', 'Aktris itu selalu menyukai aktor besar, jadi aktris lain tidak menyukainya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4650_aktor, '私の恋人は、この芝居で馬の役を演じている俳優よ。', 'Pacar saya adalah aktor yang memerankan kuda dalam drama ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4651_haiku, '日本人だったら、この俳句のミスは放っておかないよね。', 'Orang Jepang tidak akan membiarkan kesalahan haiku ini berlalu begitu saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4651_haiku, '私はよく自転車に乗りながら俳句を作ります。', 'Saya sering menulis haiku sambil mengendarai sepeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4651_haiku, '彼が今日詠んだ俳句、すごくロマンチックだったわよね。', 'Haiku yang dia buat hari ini sangat romantis, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4652_ke_unggul, 'この大学には、一芸に秀でる学生は別ルートで入学することができる。', 'Siswa yang unggul dalam bidang tertentu dapat masuk universitas ini melalui jalur yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4652_ke_unggul, 'サトミは、自分の考えを表現することに秀でている。', 'Satomi unggul dalam mengekspresikan pikirannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4652_ke_unggul, '私は鼻くそをほじくることだけには秀でています。実際、鼻血を出すはめになったこともありません。', 'Satu-satunya hal yang saya kuasai adalah mengupil. Sebenarnya saya tidak pernah membuat hidung saya berdarah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4653_unggul, 'レオは僕なんかよりずっと優秀です。', 'Leo jauh lebih mampu daripada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4653_unggul, 'アヤは、絵画コンクールで優秀賞をもらいました。', 'Aya mendapat penghargaan atas keunggulannya dalam kontes seni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4653_unggul, '優秀なシステム管理者は、ハッキングによるいかなる攻撃の可能性にも備えます。', 'Administrator sistem yang unggul bersiap menghadapi segala kemungkinan peretasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4806_sebuah_efek, 'でも、思ったほど効果がなかったんだよね。', 'Tapi, itu tidak seefektif yang saya harapkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4806_sebuah_efek, '何事も、続けることで、効果が現れてくるものです。', 'Apa pun yang Anda lakukan, jika Anda terus melakukannya, hasilnya akan datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4806_sebuah_efek, 'どんな薬も、効果が出るまで少し時間がかかります。', 'Dengan obat apa pun, diperlukan beberapa waktu untuk mulai melihat efeknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4806_sebuah_efek, 'ジムで水泳をすることが、最も効果があるダイエット方法だと聞きました。', 'Saya dengar berenang di gym adalah cara paling efektif untuk menurunkan berat badan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4807_efisiensi, '一人よりも二人でやった方が効率いいでしょ？', 'Bukankah lebih efisien jika kita berdua melakukannya bersama-sama dibandingkan kamu melakukannya sendiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4807_efisiensi, 'コウイチは仕事を効率よく進めるためにどうすればいいのか常々考えています。', 'Koichi selalu memikirkan bagaimana dia dapat melanjutkan pekerjaannya secara efisien.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4807_efisiensi, 'なんでも、考えながら進めることが大切ですよ。小さな工夫が効率を大きく変えるんです。', 'Apa pun yang Anda lakukan, penting untuk berpikir sambil melakukannya. Perbaikan kecil dapat membuat perbedaan besar dalam efisiensi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4851_ekonomi, 'この経済学についての記事を、今月末までにあげないといけないんです。', 'Saya harus menyelesaikan artikel tentang ekonomi ini pada akhir bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4851_ekonomi, 'ヤツは、この経済学についての卒論をたった一日で書き上げた天才です。', 'Dia seorang jenius yang menyelesaikan tesis kelulusannya di bidang ekonomi hanya dalam satu hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4851_ekonomi, '経済学の「け」の字も知らないので、学校に行くことにしたんです。', 'Saya tidak tahu apa-apa tentang ekonomi, jadi saya memutuskan untuk bersekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4853_untuk_meningkatkan_sesuatu, '例を挙げるとキリがないですよ。	', 'Kalau saya memberi contoh, tidak ada habisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4853_untuk_meningkatkan_sesuatu, '名前を呼んだら、手を挙げてください。', 'Saat aku memanggil namamu, tolong angkat tanganmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4853_untuk_meningkatkan_sesuatu, '私は結婚式を市役所で挙げましたが、そのことを恥ずかしいとは思っていません。', 'Saya mengadakan upacara pernikahan saya di balai kota, dan saya tidak malu karenanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4855_untuk_mengkritik, '私の彼は、私を批判すると、いつも後でアメをくれる。	', 'Pacarku selalu memberiku permen keras setelah mengkritikku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4855_untuk_mengkritik, 'みんなは口をそろえて男のことを批判した。', 'Semua orang mengatakan hal yang sama dan mengkritik pria itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4855_untuk_mengkritik, 'お前って、他人の批判してばっかりだよな。', 'Anda selalu mencari-cari kesalahan orang lain, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4856_untuk_meningkatkan_sesuatu, 'もっと文才のあるライターを増やすべきだ。', 'Kita benar-benar harus menambah jumlah penulis yang memiliki bakat sastra.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4856_untuk_meningkatkan_sesuatu, 'トーフグのファンをもっと増やしたいんだけど、どうしたらいいかな？', 'Kami ingin meningkatkan jumlah penggemar Tofugu. Menurut Anda apa yang harus kita lakukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4856_untuk_meningkatkan_sesuatu, '平日に家族と過ごす時間を増やすために、宿題は全部週末にやることにしてるんだ。', 'Saya menyimpan semua pekerjaan rumah saya untuk akhir pekan sehingga saya dapat menghabiskan lebih banyak waktu bersama keluarga di hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4858_untuk_memotong, 'これでもう逃げ道は断たれてしまった。', 'Ini berarti tidak ada lagi cara untuk melarikan diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4858_untuk_memotong, 'お酒とタバコを断つべきだってのは、自分でも分かってます。医者にも断つように言われたんですが、すぐには無理ですよ。', 'Saya tahu bahwa saya harus berhenti mengonsumsi alkohol dan rokok. Dokterku juga memintaku untuk menghentikannya, tapi tidak mungkin aku bisa segera melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4858_untuk_memotong, 'あの時は、はらわたを断つ思いで別れを告げたんだ。', 'Saat itu, aku berpamitan dengan perasaan yang menyayat hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4858_untuk_memotong, 'フェミニズムの目的は、女性を縛る鎖を断つことです。「女性らしさを失う」ことを押し付けるのではなく、「女性はこうあるべきだ」という抑圧への抵抗なんです。', 'Tujuan feminisme adalah memutus rantai yang mengikat perempuan. Ini bukan tentang memaksa perempuan untuk “kehilangan feminitasnya,” tapi tentang melawan penindasan “begitulah seharusnya perempuan.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4859_lembaga, 'このスポーツ施設では、スイミングやスケート、テニスなどができます。', 'Di fasilitas olah raga ini Anda bisa berenang, skate, dan bermain tenis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4859_lembaga, 'この町には美術館などの文化施設がたくさんあります。', 'Ada banyak museum dan fasilitas budaya lainnya di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4859_lembaga, '医療施設では、医者や看護師が患者さんを診察したり看護したりします。', 'Di fasilitas medis, dokter dan perawat memeriksa dan merawat pasien.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4859_lembaga, '児童養護施設の仕事がきついので辞めたいんですが、一方で今まで築き上げてきた関係も壊したくはないんです。', 'Aku ingin berhenti dari pekerjaanku di panti asuhan karena ini terlalu berat, tapi di saat yang sama, aku tidak ingin mengorbankan apapun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4961_tiba_tiba, 'その時は、突然やって来ました。', 'Saat itu datang tiba-tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4961_tiba_tiba, '突然の大雨で、ビショビショになってしまった。', 'Karena hujan deras yang tiba-tiba, saya basah kuyup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4961_tiba_tiba, '突然のことだったので、何が何だか分かりませんでした。', 'Itu sangat tiba-tiba sehingga saya tidak tahu apa itu apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4961_tiba_tiba, '突然、猫のお化けが台所に現れて、「ニャーニャーソング」を歌い始めたんだ。', 'Tiba-tiba hantu kucing muncul di dapur saya dan mulai menyanyikan lagu mew-mew.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4961_tiba_tiba, '病院から突然、何百人もの赤毛の人々が出てきました。その中の一人に話しかけると、赤毛の人に対する大きな医学実験があったと言われました。', 'Tiba-tiba ratusan orang berambut merah keluar dari rumah sakit. Ketika saya berbicara dengan salah satu dari mereka, saya diberitahu bahwa telah terjadi eksperimen medis besar-besaran yang melibatkan individu berambut merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5057_sakit_kepala, '昨日から頭痛がひどくて、何も食べられていないんです。', 'Sejak kemarin, sakit kepala saya sangat parah hingga saya tidak bisa makan apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5057_sakit_kepala, 'いや、山根さんの頭痛の原因は単に寝不足なだけですよ。', 'Tidak, alasan sakit kepala Anda, Nona Yamane, hanyalah kurang tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5057_sakit_kepala, 'チョコレートを食べたりココアを飲んだりすると、いつも頭痛におそわれます。', 'Setiap kali saya makan coklat atau minum coklat, saya sakit kepala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5057_sakit_kepala, '頭痛がなかなか治らないので、母親に相談しました。', 'Sakit kepalaku butuh waktu lama untuk hilang, jadi aku membicarakannya dengan ibuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5937_untuk_turun, 'バスから降りるときは、気をつけてください。', 'Hati-hati saat turun dari bus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5937_untuk_turun, 'タクシーを降りる前に、忘れ物がないか確認しました。', 'Sebelum turun dari taksi, saya memeriksa untuk memastikan tidak ada yang tertinggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5937_untuk_turun, '次の駅で降りるので、準備してください。', 'Kami akan turun di stasiun berikutnya, jadi harap bersiap-siap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6530_ruang_ganti, '更衣室はあそこです。', 'Ruang ganti ada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6530_ruang_ganti, 'このジムには更衣室はありません。', 'Tidak ada ruang ganti di gym ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6530_ruang_ganti, '今更衣室であの女のロッカーを探しているところよ。', 'Saya di ruang ganti mencari lokernya sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6831_rak, 'この棚は、父が自分で作ったんです。', 'Ayah saya membuat rak ini sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6831_rak, 'コンビニの棚には、おいしそうなお菓子がたくさんならんでいた。', 'Ada banyak manisan yang tampak lezat berjejer di rak-rak toko serba ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6831_rak, 'コップはあそこの棚にあります。', 'Cangkirnya ada di rak sebelah sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6831_rak, 'フグが僕のことをデブって呼ぶんだよね。自分のことを棚に上げてよく言うよ。', 'Fugu menyebutku gemuk. Bicara tentang panci yang menyebut ketel berwarna hitam. (Secara harfiah: membicarakannya sambil menempatkan dirinya di rak)');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6832_rak_buku, 'あれ、本棚にない？', 'Oh, tidak ada di rak buku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6832_rak_buku, '今日は本棚を整理するつもりです。', 'Saya berencana untuk mengatur rak buku hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6832_rak_buku, '父の本棚にはたくさんの小説がならんでいた。', 'Rak buku ayahku penuh dengan novel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6832_rak_buku, '彼の本棚に、食い逃げの仕方について書かれた本を見つけたんだよね。', 'Saya menemukan sebuah buku di rak bukunya tentang cara makan dan berlari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6833_kabinet, '新しい戸棚をつけたんです。', 'Saya memasang kabinet baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6833_kabinet, 'スプーンやフォークなら、そこの戸棚の引き出しに入ってるよ。', 'Jika Anda mencari sendok dan garpu, semuanya ada di laci lemari sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6833_kabinet, '戸棚を開くと、たくさんのスパイスや調味料がならんでいた。', 'Ketika saya membuka lemari, saya menemukan banyak bumbu dan bumbu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6833_kabinet, '今日買った単三電池は戸棚の上に置いておいたよ。', 'Saya meninggalkan baterai AA yang saya beli hari ini di atas lemari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7269_ungu, '暗闇の中でキラキラ光る紫色の光を見た瞬間、「母だ」と思ったんです。', 'Saat aku melihat cahaya ungu bersinar menembus kegelapan, aku berpikir, “Bu.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7271_ungu, '彼女はいつも制服の上に紫色のベストを着ている。 ', 'Dia selalu mengenakan rompi berwarna ungu di atas seragam sekolahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7506_akting, '表情で演技ができる役者を目指しています。', 'Saya bercita-cita menjadi seorang aktor yang dapat menyampaikan emosi melalui ekspresi wajah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7506_akting, 'フグは大学で演技の勉強をしています。', 'Fugu sedang belajar akting di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7506_akting, 'あの女優の演技力は素晴らしい。', 'Kemampuan akting aktris itu luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7507_untuk_melakukan, '「演ずる」は「演じる」の、よりフォーマルな表現です。', '"Enzuru" adalah ungkapan yang lebih formal untuk "enjiru".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7507_untuk_melakukan, '尻尾で喜びを示す犬の役を演ずるのがどんなに大変なことか、あなたは分かってらっしゃらないようですね。', 'Anda sepertinya belum paham betapa sulitnya memainkan peran sebagai anjing yang mengekspresikan kegembiraan dengan ekornya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7507_untuk_melakukan, 'この度、私は、次のYoutubeビデオで、アメリカ大統領という大役を演ずることになりました。', 'Saya sangat gembira mengumumkan bahwa saya telah terpilih untuk memainkan peran penting Presiden Amerika Serikat dalam video YouTube kami berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7508_pentas_seni, '演芸会は来週ですよ！みなさん、がんばりましょう！', 'Pertunjukannya minggu depan! Ayo lakukan yang terbaik, semuanya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7508_pentas_seni, 'トーフグで一番演芸に秀でているのはマイケルだ。', 'Di Tofugu, orang yang paling berprestasi sebagai entertainer adalah Michael.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7508_pentas_seni, '演芸部に入部したいんですが、どうすればいいかご存知ですか？', 'Saya ingin bergabung dengan klub seni pertunjukan. Tahukah Anda bagaimana saya bisa melakukan itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7598_pertunjukan, 'ライオンキングの上演時間を教えて下さい。', 'Bisakah Anda memberi tahu saya waktu pertunjukan Lion King?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7598_pertunjukan, '日本の映画館ではハリウッド映画が一番多く上演されています。', 'Di bioskop-bioskop Jepang, film Hollywood lah yang paling sering ditayangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7598_pertunjukan, '歌舞伎の上演は何時からですか。', 'Jam berapa pertunjukan kabuki akan dimulai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7651_garis_seseorang, 'こんな長い台詞、よく覚えられるわね。', 'Bagaimana Anda bisa mengingat pidato yang begitu panjang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7651_garis_seseorang, 'なんかウソっぽい台詞だね。	', 'Kalimatnya terdengar palsu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7651_garis_seseorang, 'あの男優の「お前の態度が気に入らないんだ！」っていう台詞は、オレが考えたんだぜ。	', 'Akulah yang melontarkan kalimat aktor itu, "Aku tidak suka sikapmu!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7765_untuk_mengetahui, 'このお方をどなたと心得るか。', 'Adakah yang tahu siapa wanita ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7765_untuk_mengetahui, 'その件についてはよく心得ております。', 'Saya sangat menyadari masalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7765_untuk_mengetahui, 'クック船長はクックパッドの使い方をよく心得ている。', 'Kapten Cook tahu cara menggunakan Cookpad dengan sangat baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7779_untuk_dikuburkan, 'カナダでは、十階建てのアパートが雪で埋まる。', 'Di Kanada, gedung apartemen sepuluh lantai tertutup salju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7779_untuk_dikuburkan, 'スケジュールが予定で埋まっていて、休む時間がないんです。
', 'Jadwalku penuh dengan janji, jadi aku tidak punya waktu istirahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7779_untuk_dikuburkan, '会場の席は、すぐに埋まってしまいました。', 'Kursi di tempat tersebut terisi dengan cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8676_optimisme, '兄は人付き合いがありませんが、楽天主義だから自分ではあまり気にしていません。', 'Kakak laki-laki saya tidak memiliki kehidupan sosial, tapi dia tidak terlalu keberatan karena optimismenya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8676_optimisme, 'あいつほど楽天主義だなあと思うやつはいない。', 'Saya tidak berpikir ada orang yang lebih optimis daripada dia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8676_optimisme, 'フグは評判通りの楽天主義者だね。', 'Fugu optimis seperti yang dikatakan orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8678_banyak, '今月は沢山の金を手に入れた。', 'Saya mendapat banyak uang bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8678_banyak, '来月は大金が手に入るから、こんなに沢山の水で割ったウィスキーを飲まなくて済む。', 'Saya akan menghasilkan banyak uang bulan depan, jadi kita tidak perlu minum wiski yang diencerkan dengan banyak air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8678_banyak, '実際に親になってからは、沢山の子を育てている人を見ると、すごいなぁとただただ感心します。', 'Sejak benar-benar menjadi orang tua, setiap kali saya melihat seseorang yang memiliki banyak anak, saya berpikir "Wow" dan hanya merasa kagum pada mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8678_banyak, 'コウイチは、優れた指導者に必要な要件を沢山備えています。', 'Koichi memiliki banyak kualitas pemimpin yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8714_sebenarnya, '現にさっきそう言ったじゃありませんか。', 'Bukankah kamu sebenarnya mengatakan itu beberapa waktu lalu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8714_sebenarnya, '現に人が死んでるっていうのに、よくそんなことが言えますね。', 'Beberapa orang benar-benar terbunuh. Bagaimana kamu bisa mengatakan hal seperti itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8714_sebenarnya, '現にこの瞬間にも飢餓で苦しんでいる人がいるんですよ？', 'Saat ini sebenarnya ada orang yang menderita kelaparan, lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8754_divisi, 'ママ、割り算のテストで100点取ったよ！', 'Bu, aku mendapat nilai 100 pada tes pembagian!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8754_divisi, 'なぜか割り算は足し算より得意なんです。', 'Untuk beberapa alasan, saya lebih baik dalam pembagian daripada penjumlahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8754_divisi, 'こんな簡単な割り算の問題を間違えちゃったよ。', 'Saya salah menyelesaikan soal pembagian sederhana ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8887_iri, '日本語がペラペラと話せる人が羨ましい。', 'Saya iri dengan orang yang bisa berbahasa Jepang dengan lancar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8887_iri, 'ビジネスで成功した上に、サングラスが似合うなんて、私はあなたが羨ましいですよ。', 'Aku iri padamu karena sukses dalam bisnis dan berpenampilan menarik dengan kacamata hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8887_iri, '私に彼氏ができたって言ったら、妹が羨ましがると思うの。', 'Jika aku memberi tahu adik perempuanku bahwa aku punya pacar, aku pikir dia akan cemburu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8887_iri, 'インスタでクラスメートが旅行に行った写真を見て、羨ましく思った。', 'Saya melihat foto perjalanan teman sekelas saya di Instagram dan merasa iri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8931_agar_cocok_di_dalam, '一億円、そのスーツケースに収まった？', 'Apakah uang seratus juta yen muat di dalam koper?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8931_agar_cocok_di_dalam, 'なんとか予算内に収まりそうです。', 'Sepertinya kami akan berhasil menjaga anggaran tetap sesuai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8931_agar_cocok_di_dalam, 'アイスを食べたら、感情が収まってきたんだよね。', 'Setelah makan es krim, emosiku mulai tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8931_agar_cocok_di_dalam, '大きいピザを五枚食べ切りたかったが、食べ放題の時間内に収まらなかった。', 'Saya ingin makan kelima pizza besar tersebut, tetapi pizza tersebut tidak dapat habis dalam batas waktu makan sepuasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8936_untuk_ditambahkan_ke, 'もうすぐ新しいキャラクターが加わるよ！', 'Karakter baru akan segera ditambahkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8936_untuk_ditambahkan_ke, 'ひと手間が加わると、料理の味に深みが出ます。', 'Ketika sedikit usaha ekstra dilakukan, hal itu akan menonjolkan kedalaman rasa pada hidangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8936_untuk_ditambahkan_ke, '材料の一千万円に、さらに広告のコストが加わる。', 'Biaya iklan akan ditambahkan ke sepuluh juta yen untuk bahan-bahannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8936_untuk_ditambahkan_ke, 'これにこの塗料が加わると、色が変わるんです。', 'Ketika cat ini ditambahkan ke dalamnya, warnanya berubah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9007_gatal, '鼻の穴が痒い。', 'Lubang hidungku gatal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9007_gatal, '一週間シャワーを浴びてないから頭が痒い。', 'Kepalaku gatal karena sudah seminggu aku tidak mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9007_gatal, '夜も寝れないぐらい痒くて、めっちゃ寝不足なんだよね。', 'Saya sangat gatal sehingga saya tidak bisa tidur di malam hari, dan saya benar-benar kurang tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9083_perjalanan_bisnis, '今、出張先のホテルに着いたところだよ。', 'Saya baru saja tiba di hotel tempat saya akan menginap selama perjalanan bisnis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9083_perjalanan_bisnis, '出張先で、美味しい食べ物を食べた。', 'Selama perjalanan bisnis, saya makan makanan lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9083_perjalanan_bisnis, '父は海外出張中なんです。出張が長引くと、家族が恋しくなると言っていました。', 'Ayah saya sedang dalam perjalanan bisnis ke luar negeri. Dia mengatakan bahwa ketika perjalanan bisnis berkepanjangan, dia merindukan keluarganya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9083_perjalanan_bisnis, '名古屋なら、出張で行ったことがあるよ。出張中、いいホテルに泊まれてラッキーだったよ。', 'Ngomong-ngomong soal Nagoya, saya pernah ke sana dalam perjalanan bisnis. Selama perjalanan bisnis, saya beruntung menginap di hotel yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9152_pinggiran_kota, '男は町外れにあるガソリンスタンドで働いていた。', 'Pria itu bekerja di sebuah pompa bensin di pinggiran kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9152_pinggiran_kota, '近くにコンビニすらない町外れのホテルにステイしてるんだ。', 'Saya menginap di sebuah hotel di pinggiran kota, yang bahkan tidak memiliki toko serba ada di dekatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9152_pinggiran_kota, 'こんな町外れまで、どうやって来たの？', 'Bagaimana kamu bisa sampai sejauh ini ke luar kota?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9161_titik_balik, '成人式は、大切な人生の節目です。', 'Upacara kedewasaan merupakan tonggak penting dalam kehidupan seseorang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9161_titik_balik, 'そしてその年、人生の大きな節目になる出来事が起こったんです。', 'Kemudian pada tahun itu, terjadi sesuatu yang menjadi titik balik besar dalam hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9161_titik_balik, '今から思うと、あれが一つの節目だったんだろうね。', 'Kalau dipikir-pikir lagi, saya kira itu adalah saat yang kritis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9254_rana, '毎朝、雨戸を開けます。', 'Saya membuka jendela setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9254_rana, '最近は日本でも雨戸をつけている家が少なくなりました。', 'Belakangan ini, semakin sedikit rumah yang memiliki jendela di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9254_rana, '雨が雨戸を叩く音で深夜に起きてしまった。', 'Saya terbangun di tengah malam karena suara hujan yang menerpa daun jendela.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9344_untuk_hibah, 'ゼッタイにこの夢を叶えるんだ！', 'Aku akan mewujudkan mimpi ini, apa pun yang terjadi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9344_untuk_hibah, 'あなたは、いつまでにその目標を叶えたいですか？', 'Kapan Anda ingin mencapai tujuan tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9344_untuk_hibah, '全ての希望を叶えることはできないかもしれません。', 'Mungkin tidak semua keinginan Anda bisa terkabul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9383_diri, '自ら学ぶ姿勢が大切なんです。', 'Kecenderungan untuk belajar sendiri itu penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9383_diri, '自らを高めるため、毎日ヨガは欠かせません。', 'Yoga setiap hari sangat diperlukan untuk pengembangan diri saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9383_diri, 'そんなこと言ったって、自ら進んでハバネロを食べたのは君だろう？', 'Katakan sesukamu, tapi kaulah yang rela memakan habanero, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9383_diri, '社長自らお客さんに謝るなんて珍しいね。', 'Jarang sekali presiden meminta maaf secara pribadi kepada pelanggan seperti itu, ya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9462_mangsa, 'サメの餌食になりたくなけりゃ、この辺の海には入るなよ。', 'Jika Anda tidak ingin menjadi makanan hiu, menjauhlah dari laut di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9462_mangsa, '彼はサギの餌食になった。', 'Dia menjadi korban penipuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9462_mangsa, '次は誰が餌食になるのか。', 'Siapa yang akan dimangsa selanjutnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9462_mangsa, '若者を餌食にする悪いビジネスに気をつけてください。', 'Harap berhati-hati terhadap bisnis teduh yang memangsa generasi muda.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1186_memperoleh, r_289_tanaman_merambat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1186_memperoleh, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1187_berhenti, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1187_berhenti, r_290_restoran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1188_kulit, r_288_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1189_pekerjaan, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1189_pekerjaan, id FROM items WHERE type = 'radical' AND (slug = '197' OR id = '197') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1189_pekerjaan, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1190_setan, r_292_setan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1192_membela, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1192_membela, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1192_membela, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1192_membela, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1193_membagi, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1193_membagi, id FROM items WHERE type = 'radical' AND (slug = '9452' OR id = '9452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1193_membagi, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1193_membagi, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1194_hakim, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1194_hakim, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1194_hakim, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1195_tanjung, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1195_tanjung, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1195_tanjung, id FROM items WHERE type = 'radical' AND (slug = '113' OR id = '113') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1196_akting, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1196_akting, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1196_akting, id FROM items WHERE type = 'radical' AND (slug = '27' OR id = '27') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1196_akting, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1196_akting, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1197_hukum, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1197_hukum, id FROM items WHERE type = 'radical' AND (slug = '220' OR id = '220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1198_guru, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1198_guru, id FROM items WHERE type = 'radical' AND (slug = '8777' OR id = '8777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1198_guru, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1198_guru, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1199_awasi, id FROM items WHERE type = 'radical' AND (slug = '41' OR id = '41') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1199_awasi, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1200_standar, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1200_standar, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1200_standar, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1201_aturan, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1201_aturan, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1202_menyediakan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1202_menyediakan, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1202_menyediakan, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1202_menyediakan, id FROM items WHERE type = 'radical' AND (slug = '71' OR id = '71') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1203_memimpin, r_291_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1203_memimpin, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1204_batang_pohon, r_8793_pagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1204_batang_pohon, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1204_batang_pohon, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1205_menggeliat, id FROM items WHERE type = 'radical' AND (slug = '36' OR id = '36') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1205_menggeliat, id FROM items WHERE type = 'radical' AND (slug = '138' OR id = '138') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1206_unggul, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1206_unggul, id FROM items WHERE type = 'radical' AND (slug = '239' OR id = '239') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1206_unggul, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1206_unggul, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1206_unggul, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1207_rumah, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1207_rumah, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1207_rumah, id FROM items WHERE type = 'radical' AND (slug = '4' OR id = '4') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1208_rawa, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1208_rawa, id FROM items WHERE type = 'radical' AND (slug = '215' OR id = '215') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1209_boros, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1209_boros, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1209_boros, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1209_boros, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1210_melaksanakan, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1210_melaksanakan, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1210_melaksanakan, id FROM items WHERE type = 'radical' AND (slug = '77' OR id = '77') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1211_waktu_sekarang, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1211_waktu_sekarang, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1212_susu, id FROM items WHERE type = 'radical' AND (slug = '8772' OR id = '8772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1212_susu, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1212_susu, id FROM items WHERE type = 'radical' AND (slug = '211' OR id = '211') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1213_panggilan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1213_panggilan, id FROM items WHERE type = 'radical' AND (slug = '279' OR id = '279') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1214_kastil, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1214_kastil, id FROM items WHERE type = 'radical' AND (slug = '263' OR id = '263') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1215_haiku, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1215_haiku, id FROM items WHERE type = 'radical' AND (slug = '209' OR id = '209') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1216_unggul, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1216_unggul, id FROM items WHERE type = 'radical' AND (slug = '200' OR id = '200') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1267_efektif, r_302_mencampur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1267_efektif, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1304_menusuk, id FROM items WHERE type = 'radical' AND (slug = '170' OR id = '170') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1304_menusuk, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1318_nyeri, id FROM items WHERE type = 'radical' AND (slug = '187' OR id = '187') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1318_nyeri, id FROM items WHERE type = 'radical' AND (slug = '141' OR id = '141') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1318_nyeri, id FROM items WHERE type = 'radical' AND (slug = '71' OR id = '71') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1900_rak, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1900_rak, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2051_ungu, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2051_ungu, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2051_ungu, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8996_gatal, id FROM items WHERE type = 'radical' AND (slug = '187' OR id = '187') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8996_gatal, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2810_memengaruhi, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2810_memengaruhi, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2832_perusahaan_yang_dikelola_pemerintah, id FROM items WHERE type = 'kanji' AND (slug = '499' OR id = '499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2832_perusahaan_yang_dikelola_pemerintah, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3756_untuk_membangun, id FROM items WHERE type = 'kanji' AND (slug = '946' OR id = '946') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3933_arsitek, id FROM items WHERE type = 'kanji' AND (slug = '946' OR id = '946') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3933_arsitek, id FROM items WHERE type = 'kanji' AND (slug = '957' OR id = '957') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3933_arsitek, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4270_hadiah, k_1211_waktu_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4270_hadiah, id FROM items WHERE type = 'kanji' AND (slug = '1107' OR id = '1107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4390_untuk_dicampur_dengan, id FROM items WHERE type = 'kanji' AND (slug = '1078' OR id = '1078') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4395_konservatif, id FROM items WHERE type = 'kanji' AND (slug = '983' OR id = '983') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4395_konservatif, id FROM items WHERE type = 'kanji' AND (slug = '968' OR id = '968') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4395_konservatif, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4395_konservatif, id FROM items WHERE type = 'kanji' AND (slug = '1154' OR id = '1154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4407_akan_selesai, id FROM items WHERE type = 'kanji' AND (slug = '1124' OR id = '1124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4412_reputasi, id FROM items WHERE type = 'kanji' AND (slug = '1140' OR id = '1140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4412_reputasi, id FROM items WHERE type = 'kanji' AND (slug = '1127' OR id = '1127') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4441_luar_biasa, id FROM items WHERE type = 'kanji' AND (slug = '1138' OR id = '1138') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4441_luar_biasa, id FROM items WHERE type = 'kanji' AND (slug = '933' OR id = '933') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4500_penggelinciran, id FROM items WHERE type = 'kanji' AND (slug = '1157' OR id = '1157') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4500_penggelinciran, id FROM items WHERE type = 'kanji' AND (slug = '767' OR id = '767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4502_untuk_melarikan_diri, id FROM items WHERE type = 'kanji' AND (slug = '1157' OR id = '1157') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4502_untuk_melarikan_diri, id FROM items WHERE type = 'kanji' AND (slug = '595' OR id = '595') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4503_penghindaran_pajak, id FROM items WHERE type = 'kanji' AND (slug = '1157' OR id = '1157') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4503_penghindaran_pajak, id FROM items WHERE type = 'kanji' AND (slug = '1149' OR id = '1149') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4576_kereta_api_lokal, id FROM items WHERE type = 'kanji' AND (slug = '1162' OR id = '1162') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4576_kereta_api_lokal, id FROM items WHERE type = 'kanji' AND (slug = '874' OR id = '874') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4576_kereta_api_lokal, k_1187_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4576_kereta_api_lokal, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4577_untuk_konfirmasi, id FROM items WHERE type = 'kanji' AND (slug = '1103' OR id = '1103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4577_untuk_konfirmasi, id FROM items WHERE type = 'kanji' AND (slug = '1152' OR id = '1152') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4580_komite, id FROM items WHERE type = 'kanji' AND (slug = '1125' OR id = '1125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4580_komite, id FROM items WHERE type = 'kanji' AND (slug = '821' OR id = '821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4580_komite, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4581_untuk_memilih, id FROM items WHERE type = 'kanji' AND (slug = '886' OR id = '886') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4581_untuk_memilih, id FROM items WHERE type = 'kanji' AND (slug = '1126' OR id = '1126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4584_halte_bus, k_1187_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4585_penghentian, k_1187_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4585_penghentian, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4586_pemadaman_listrik, k_1187_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4586_pemadaman_listrik, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4587_vampir, id FROM items WHERE type = 'kanji' AND (slug = '1177' OR id = '1177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4587_vampir, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4587_vampir, k_1190_setan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4588_penyerapan, id FROM items WHERE type = 'kanji' AND (slug = '1177' OR id = '1177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4588_penyerapan, k_1186_memperoleh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4589_kuitansi, id FROM items WHERE type = 'kanji' AND (slug = '1171' OR id = '1171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4589_kuitansi, k_1186_memperoleh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4589_kuitansi, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4590_penghasilan, k_1186_memperoleh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4590_penghasilan, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4592_kulit, k_1188_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4593_revolusi, k_1188_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4593_revolusi, id FROM items WHERE type = 'kanji' AND (slug = '789' OR id = '789') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4594_kulit, id FROM items WHERE type = 'kanji' AND (slug = '539' OR id = '539') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4594_kulit, k_1188_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4595_penganggur, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4595_penganggur, k_1189_pekerjaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4596_tempat_kerja, k_1189_pekerjaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4596_tempat_kerja, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4597_pekerjaan, k_1189_pekerjaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4597_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4598_personil, k_1189_pekerjaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4598_personil, id FROM items WHERE type = 'kanji' AND (slug = '821' OR id = '821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4599_memiliki_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '615' OR id = '615') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4599_memiliki_pekerjaan, k_1189_pekerjaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4600_berburu_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '913' OR id = '913') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4600_berburu_pekerjaan, k_1189_pekerjaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4601_pengunduran_diri, id FROM items WHERE type = 'kanji' AND (slug = '981' OR id = '981') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4601_pengunduran_diri, k_1189_pekerjaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4602_setan, k_1190_setan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4605_perawat, k_1199_awasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4605_perawat, k_1192_membela);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4605_perawat, k_1198_guru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4606_pengacara, id FROM items WHERE type = 'kanji' AND (slug = '984' OR id = '984') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4606_pengacara, k_1192_membela);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4606_pengacara, id FROM items WHERE type = 'kanji' AND (slug = '877' OR id = '877') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4607_untuk_menghemat, id FROM items WHERE type = 'kanji' AND (slug = '983' OR id = '983') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4607_untuk_menghemat, k_1192_membela);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4608_guru, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4608_guru, k_1198_guru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4609_dokter, id FROM items WHERE type = 'kanji' AND (slug = '681' OR id = '681') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4609_dokter, k_1198_guru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4610_hukum, id FROM items WHERE type = 'kanji' AND (slug = '949' OR id = '949') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4610_hukum, k_1197_hukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4613_untuk_membagi, k_1193_membagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4614_peran, id FROM items WHERE type = 'kanji' AND (slug = '685' OR id = '685') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4614_peran, k_1193_membagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4615_sepuluh_persen, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4615_sepuluh_persen, k_1193_membagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4616_perbandingan, k_1193_membagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4616_perbandingan, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4617_untuk_menilai, k_1194_hakim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4618_uji_coba, k_1194_hakim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4618_uji_coba, id FROM items WHERE type = 'kanji' AND (slug = '1127' OR id = '1127') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4619_tanjung, k_1195_tanjung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4620_kawasaki, id FROM items WHERE type = 'kanji' AND (slug = '456' OR id = '456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4620_kawasaki, k_1195_tanjung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4621_nagasaki, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4621_nagasaki, k_1195_tanjung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4622_standar, id FROM items WHERE type = 'kanji' AND (slug = '917' OR id = '917') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4622_standar, k_1200_standar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4623_busuk, id FROM items WHERE type = 'kanji' AND (slug = '855' OR id = '855') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4623_busuk, k_1201_aturan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4624_hukum_fisika, id FROM items WHERE type = 'kanji' AND (slug = '949' OR id = '949') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4624_hukum_fisika, k_1201_aturan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4625_untuk_menyediakan, k_1202_menyediakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4626_persiapan, k_1200_standar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4626_persiapan, k_1202_menyediakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4627_untuk_memimpin, k_1203_memimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4628_panduan, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4628_panduan, k_1203_memimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4629_batang_pohon, k_1204_batang_pohon);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4630_kereta_peluru, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4630_kereta_peluru, k_1204_batang_pohon);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4630_kereta_peluru, id FROM items WHERE type = 'kanji' AND (slug = '767' OR id = '767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4631_untuk_meregangkan_sesuatu, k_1205_menggeliat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4632_lembut, k_1206_unggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4633_aktor, id FROM items WHERE type = 'kanji' AND (slug = '555' OR id = '555') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4633_aktor, k_1206_unggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4634_prioritas, k_1206_unggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4634_prioritas, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4635_kemenangan, k_1206_unggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4635_kemenangan, id FROM items WHERE type = 'kanji' AND (slug = '738' OR id = '738') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4636_rumah, k_1207_rumah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4637_rumah_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4637_rumah_seseorang, k_1207_rumah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4638_tempat_tinggal, id FROM items WHERE type = 'kanji' AND (slug = '679' OR id = '679') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4638_tempat_tinggal, k_1207_rumah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4640_kemewahan, k_1209_boros);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4640_kemewahan, k_1208_rawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4641_pelaksanaan, k_1210_melaksanakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4641_pelaksanaan, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4642_untuk_muncul, k_1211_waktu_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4643_ekspresi, id FROM items WHERE type = 'kanji' AND (slug = '720' OR id = '720') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4643_ekspresi, k_1211_waktu_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4644_realitas, k_1211_waktu_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4644_realitas, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4645_lokasi_di_tempat, k_1211_waktu_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4645_lokasi_di_tempat, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4646_susu, id FROM items WHERE type = 'kanji' AND (slug = '511' OR id = '511') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4646_susu, k_1212_susu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4647_puting, k_1212_susu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4647_puting, id FROM items WHERE type = 'kanji' AND (slug = '645' OR id = '645') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4648_untuk_menelepon, k_1213_panggilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4649_kastil, k_1214_kastil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4650_aktor, k_1215_haiku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4650_aktor, k_1206_unggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4651_haiku, k_1215_haiku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4651_haiku, id FROM items WHERE type = 'kanji' AND (slug = '1053' OR id = '1053') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4652_ke_unggul, k_1216_unggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4653_unggul, k_1206_unggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4653_unggul, k_1216_unggul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4806_sebuah_efek, k_1267_efektif);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4806_sebuah_efek, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4807_efisiensi, k_1267_efektif);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4807_efisiensi, id FROM items WHERE type = 'kanji' AND (slug = '1091' OR id = '1091') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4851_ekonomi, id FROM items WHERE type = 'kanji' AND (slug = '1120' OR id = '1120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4851_ekonomi, id FROM items WHERE type = 'kanji' AND (slug = '1124' OR id = '1124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4851_ekonomi, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4853_untuk_meningkatkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1126' OR id = '1126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4855_untuk_mengkritik, id FROM items WHERE type = 'kanji' AND (slug = '1141' OR id = '1141') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4855_untuk_mengkritik, id FROM items WHERE type = 'kanji' AND (slug = '1127' OR id = '1127') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4856_untuk_meningkatkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1148' OR id = '1148') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4858_untuk_memotong, id FROM items WHERE type = 'kanji' AND (slug = '1139' OR id = '1139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4859_lembaga, k_1210_melaksanakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4859_lembaga, id FROM items WHERE type = 'kanji' AND (slug = '1132' OR id = '1132') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4961_tiba_tiba, k_1304_menusuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4961_tiba_tiba, id FROM items WHERE type = 'kanji' AND (slug = '881' OR id = '881') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5057_sakit_kepala, id FROM items WHERE type = 'kanji' AND (slug = '771' OR id = '771') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5057_sakit_kepala, k_1318_nyeri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5937_untuk_turun, id FROM items WHERE type = 'kanji' AND (slug = '1548' OR id = '1548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6530_ruang_ganti, id FROM items WHERE type = 'kanji' AND (slug = '1431' OR id = '1431') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6530_ruang_ganti, id FROM items WHERE type = 'kanji' AND (slug = '1796' OR id = '1796') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6530_ruang_ganti, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6831_rak, k_1900_rak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6832_rak_buku, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6832_rak_buku, k_1900_rak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6833_kabinet, id FROM items WHERE type = 'kanji' AND (slug = '509' OR id = '509') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6833_kabinet, k_1900_rak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7269_ungu, k_2051_ungu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7271_ungu, k_2051_ungu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7271_ungu, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7506_akting, k_1196_akting);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7506_akting, id FROM items WHERE type = 'kanji' AND (slug = '919' OR id = '919') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7507_untuk_melakukan, k_1196_akting);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7508_pentas_seni, k_1196_akting);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7508_pentas_seni, id FROM items WHERE type = 'kanji' AND (slug = '916' OR id = '916') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7598_pertunjukan, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7598_pertunjukan, k_1196_akting);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7651_garis_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '520' OR id = '520') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7651_garis_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '1066' OR id = '1066') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7765_untuk_mengetahui, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7765_untuk_mengetahui, id FROM items WHERE type = 'kanji' AND (slug = '1081' OR id = '1081') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7779_untuk_dikuburkan, id FROM items WHERE type = 'kanji' AND (slug = '1725' OR id = '1725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8676_optimisme, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8676_optimisme, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8676_optimisme, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8676_optimisme, id FROM items WHERE type = 'kanji' AND (slug = '1154' OR id = '1154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8678_banyak, k_1208_rawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8678_banyak, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8714_sebenarnya, k_1211_waktu_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8754_divisi, k_1193_membagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8754_divisi, id FROM items WHERE type = 'kanji' AND (slug = '762' OR id = '762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8887_iri, id FROM items WHERE type = 'kanji' AND (slug = '8880' OR id = '8880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8931_agar_cocok_di_dalam, k_1186_memperoleh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8936_untuk_ditambahkan_ke, id FROM items WHERE type = 'kanji' AND (slug = '1057' OR id = '1057') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9007_gatal, k_8996_gatal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9083_perjalanan_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9083_perjalanan_bisnis, k_1205_menggeliat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9152_pinggiran_kota, id FROM items WHERE type = 'kanji' AND (slug = '556' OR id = '556') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9152_pinggiran_kota, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9161_titik_balik, id FROM items WHERE type = 'kanji' AND (slug = '1058' OR id = '1058') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9161_titik_balik, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9254_rana, id FROM items WHERE type = 'kanji' AND (slug = '603' OR id = '603') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9254_rana, id FROM items WHERE type = 'kanji' AND (slug = '509' OR id = '509') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9344_untuk_hibah, id FROM items WHERE type = 'kanji' AND (slug = '9343' OR id = '9343') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9383_diri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9462_mangsa, id FROM items WHERE type = 'kanji' AND (slug = '9451' OR id = '9451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9462_mangsa, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;

END $$;
