-- ====================================================
-- KaniGani — Seed Data Level 25 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 25) ============
  r_300_pernikahan UUID; r_301_teman UUID; r_303_penjaga_pantai UUID; r_304_keduanya UUID; r_356_rumah_kaca UUID; r_425_belalang_sembah UUID;

  -- ============ KANJI IDs (Level 25) ============
  k_1006_sejahtera UUID; k_1248_membatasi UUID; k_1249_memberi UUID; k_1250_termasuk UUID; k_1251_bayangan UUID; k_1252_kondisi UUID; k_1253_transit UUID; k_1254_gema UUID; k_1255_suara UUID; k_1256_pemandangan UUID; k_1257_mengeluarkan UUID; k_1258_menuntut UUID; k_1259_gugatan UUID; k_1260_menangkap UUID; k_1261_suplemen UUID; k_1262_iklim UUID; k_1263_mendirikan UUID; k_1264_imitasi UUID; k_1265_menangkap UUID; k_1266_segar UUID; k_1268_milik UUID; k_1269_biasa UUID; k_1270_banyak UUID; k_1271_penuh UUID; k_1272_kegemukan UUID; k_1273_menggulir UUID; k_1274_mencari UUID; k_1275_mencekik UUID; k_1276_kawan UUID; k_1277_bersembunyi UUID; k_1278_menggantung UUID; k_1279_mengganti UUID; k_1280_hidup UUID; k_1345_gaji UUID; k_1371_kepunahan UUID; k_1954_dingin UUID; k_9028_tak_ada_habisnya UUID;

  -- ============ VOCABULARY IDs (Level 25) ============
  v_2642_bisnis_pemerintah UUID; v_2847_bumi UUID; v_3699_karakter UUID; v_3741_divisi UUID; v_3800_untuk_terlibat UUID; v_3994_akan_dibangun UUID; v_4013_menghormati UUID; v_4335_tahan_air UUID; v_4336_pencegahan_kebakaran UUID; v_4539_kuitansi UUID; v_4569_kondisi UUID; v_4578_untuk_menyelesaikan_sesuatu UUID; v_4744_membatasi UUID; v_4747_untuk_membatasi UUID; v_4749_tenggat_waktu UUID; v_4750_tak_terbatas UUID; v_4763_untuk_menyerap UUID; v_4764_untuk_dibagi UUID; v_4765_diskon UUID; v_4766_untuk_mempersiapkan UUID; v_4767_untuk_bertekun UUID; v_4768_untuk_menarik_sesuatu_keluar UUID; v_4770_model_plastik UUID; v_4772_bonusnya UUID; v_4773_untuk_menyertakan UUID; v_4774_implikasi UUID; v_4775_bayangan UUID; v_4776_resesi UUID; v_4777_untuk_menyeberang UUID; v_4779_untuk_gema UUID; v_4780_pengaruh UUID; v_4781_suara UUID; v_4782_untuk_memilih UUID; v_4783_pemandangan UUID; v_4784_iklim_bisnis UUID; v_4788_untuk_menuntut UUID; v_4789_pengaduan_pidana UUID; v_4790_gugatan UUID; v_4791_menangkap UUID; v_4792_untuk_melengkapi UUID; v_4793_calon UUID; v_4794_iklim UUID; v_4795_cuaca UUID; v_4796_iklim_musiman UUID; v_4797_untuk_peduli UUID; v_4798_komposisi UUID; v_4799_bagus UUID; v_4800_pola UUID; v_4802_segar UUID; v_4803_jelas UUID; v_4804_ikan_segar UUID; v_4805_menjadi_efektif UUID; v_4809_afiliasi UUID; v_4811_logam UUID; v_4812_menjadi_biasa UUID; v_4813_kebiasaan UUID; v_4814_kaya UUID; v_4815_montok UUID; v_4816_puas UUID; v_4817_bulan_purnama UUID; v_4818_rumah_penuh UUID; v_4819_skor_sempurna UUID; v_4820_kegemukan UUID; v_4821_pupuk UUID; v_4822_untuk_berguling UUID; v_4823_satu_jilid UUID; v_4824_jilid_terakhir UUID; v_4825_jilid_pertama UUID; v_4826_jilid_kedua UUID; v_4827_untuk_mencari UUID; v_4828_investigasi_kriminal UUID; v_4829_pembunuhan_dengan_mencekik UUID; v_4830_untuk_memeras UUID; v_4831_senior UUID; v_4832_muda UUID; v_4834_untuk_menyembunyikan_sesuatu UUID; v_4835_masa_pensiun UUID; v_4836_untuk_menggantung_sesuatu UUID; v_4837_untuk_mengganti UUID; v_4872_aktris UUID; v_4873_revolusioner UUID; v_4874_jaket_kulit UUID; v_4875_prefektur_nagasaki UUID; v_4878_untuk_dipanggil UUID; v_4879_untuk_ditunjukkan UUID; v_4880_pemandangan UUID; v_4885_untuk_ada UUID; v_4896_kartu_nama UUID; v_5064_gaji UUID; v_5067_pemotongan_gaji UUID; v_5077_seppuku UUID; v_5189_sangat UUID; v_5191_putus_asa UUID; v_5607_terlambat UUID; v_6529_pakaian UUID; v_6996_dingin UUID; v_7600_untuk_diperhatikan UUID; v_7654_biasa UUID; v_7712_guru UUID; v_7713_ketidakteraturan UUID; v_7724_untuk_mencatat UUID; v_7759_akan_berakhir UUID; v_7767_gema UUID; v_8680_untuk_menyimpan UUID; v_8716_untuk_meningkatkan UUID; v_8756_perkalian UUID; v_8809_untuk_melampaui UUID; v_8905_untuk_mencekik UUID; v_8987_manusia_serigala UUID; v_9029_sangat_besar UUID; v_9041_kastil_okayama UUID; v_9091_untuk_setiap UUID; v_9242_aktif_bekerja UUID; v_9248_kekakuan_bahu UUID; v_9280_jujur UUID; v_9330_tua UUID; v_9365_begitu_pula_dengan UUID; v_9466_dimana UUID; v_9476_headbutt UUID;

BEGIN

  DELETE FROM items WHERE level = 25;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '甫', 'pernikahan', 25, 1, 'Radikal ini terlihat seperti seseorang yang mengenakan gaun raksasa yang meneteskan air mata. Ini adalah seseorang di <radical>pernikahan</radical> mereka. Hal ini menjelaskan gaun besar dan air mata (kebahagiaan!) di mata mereka.')
    RETURNING id INTO r_300_pernikahan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '友', 'teman', 25, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>teman</radikal>.')
    RETURNING id INTO r_301_teman;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '冓', 'penjaga-pantai', 25, 3, 'Anda memiliki tugas untuk menyelamatkan dua jenis nyawa. Siapa yang menyelamatkan dua jenis nyawa? Seorang <radikal>penjaga pantai</radikal>. Mereka menyelamatkan nyawa orang-orang yang tenggelam, dan kemudian nyawa orang-orang yang mencoba menolong mereka. Bayangkan seorang penjaga pantai menyelamatkan nyawa dua orang sekaligus. Pahlawan yang luar biasa!')
    RETURNING id INTO r_303_penjaga_pantai;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '両', 'keduanya', 25, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>keduanya</radikal>.')
    RETURNING id INTO r_304_keduanya;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '莫', 'rumah-kaca', 25, 5, 'Bunga membutuhkan sinar matahari untuk menjadi besar. Untuk membantu mereka tumbuh sebesar mungkin, kami menempatkan mereka di <radical>rumah kaca</radical>.')
    RETURNING id INTO r_356_rumah_kaca;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '禹', 'belalang-sembah', 25, 6, 'Radikal ini memiliki slide, kepala, dan serangga di dalamnya. Serangga manakah yang akan memenggal kepala Anda dalam hitungan detik dan kemudian memakannya? <radikal>belalang sembah</radikal> yang menakutkan.')
    RETURNING id INTO r_425_belalang_sembah;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_300_pernikahan, 'Pernikahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_301_teman, 'Teman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_303_penjaga_pantai, 'Penjaga pantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_304_keduanya, 'Keduanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_356_rumah_kaca, 'Rumah kaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_425_belalang_sembah, 'belalang sembah', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '栄', 'sejahtera', 25, 7, '<radikal>Viking</radikal> dengan <radikal>pohon</radikal> yang cukup akan <kanji>makmur</kanji>. Bangsa Viking membutuhkan pohon untuk membuat perahu dan rumah mereka, dan mereka <kanji>berkembang</kanji> jika sudah cukup.', 'Bangsa Viking tahu bahwa untuk <kanji>makmur</kanji> mereka juga perlu mengumpulkan <reading>a</reading>jagung (えい). Jika Anda menebang pohon sepanjang waktu, Anda juga harus menanamnya kembali secara aktif. Itu sebabnya biji pohon ek adalah kunci rahasia kemakmuran Viking.')
    RETURNING id INTO k_1006_sejahtera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '限', 'membatasi', 25, 8, '<radikal>akar</radikal> sebuah <radikal>bangunan</radikal> akan <kanji>membatasi</kanji> benda-benda di bawah dan di sekitarnya.', 'Orang yang membenci <kanji>batas</kanji> ini lebih dari siapa pun adalah <reading>Gen</reading>ji (げん). Dia ingin bisa masuk ke dalam terowongan di bawah gedung, menyelinap masuk, berciuman dengan wanita, dan menyelinap keluar kembali. Tapi semua batasan akar bangunan membuat hal itu mustahil!')
    RETURNING id INTO k_1248_membatasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '与', 'memberi', 25, 9, 'Seorang <radikal>pengemis</radikal> tergeletak di <radikal>tanah</radikal> sehingga Anda <kanji>memberi</kanji> kepadanya sejumlah uang. Anda merasa kasihan pada pengemis di tanah, jadi itulah mengapa Anda memutuskan untuk memberinya sesuatu.', 'Saat Anda meletakkan uang di sebelah pengemis, dia berteriak, "Tidak! Saya ingin <reading>yo</reading>-yo (よ)!" jadi kamu pergi ke toko pojok dan membelikannya yo-yo dengan uang itu. Anda <kanji>memberikan</kanji> yo-yo tersebut kepada pengemis dan dia terlihat sangat bahagia.')
    RETURNING id INTO k_1249_memberi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '含', 'termasuk', 25, 10, '<radical>Sekarang</radical> <radical>mulut</radical> Anda dapat <kanji>memasukkan</kanji> lebih banyak kata daripada sebelumnya! Dengan “Mulut Sekarang!” program, mulut Anda akan mengeluarkan lebih banyak kata daripada yang pernah Anda bayangkan!', 'Jika Anda membeli sekarang, kami juga akan <kanji>menyertakan</kanji> beberapa buku karya <reading>Gan</reading>dhi (がん) sendiri. Gandhi tidak menggunakan program kami, tapi kami yakin jika dia punya kesempatan, dia akan menggunakannya. Jadi belilah sekarang, dan dapatkan kata-kata Gandhi di tangan dan mulut Anda!')
    RETURNING id INTO k_1250_termasuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '影', 'bayangan', 25, 11, '<radical>matahari</radikal> terbit di atas <radikal>ibu kota</radikal>, menyinari <radikal>rambut</radikal> Anda, dan membuat <kanji>bayangan</kanji> panjang di tanah di depan Anda.', '<kanji>bayangan</kanji> Anda dilemparkan ke atas <read>sebuah</reading>jagung (えい) kecil yang tergeletak di tanah. Melihatnya, Anda menyadari bahwa bayangan Anda akan menghalangi biji pohon ek untuk tumbuh besar dan kuat, kecuali Anda bergerak…')
    RETURNING id INTO k_1251_bayangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '況', 'kondisi', 25, 12, '<radikal>tsunami</radikal> akan datang dan <radikal>kakak</radikal> Anda tidak <kanji>kondisi</kanji> untuk melarikan diri. Kakak laki-laki Anda mengidap sindrom tulang rapuh sehingga tidak mungkin dia bisa lolos dari tsunami tepat waktu dalam kondisi seperti itu.', '<kanji>Kondisi</kanji>nya semakin buruk dan Anda harus melakukan perjalanan jauh ke rumahnya di <reading>きょう</reading>と untuk mengeluarkannya.')
    RETURNING id INTO k_1252_kondisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '渡', 'transit', 25, 13, '<radikal>tsunami</radikal> membawa <radikal>yurt</radikal> Anda dan Anda berada di <radikal>bangku</radikal> di bawahnya. Anda sekarang berada dalam <kanji>transit</kanji>.', '<kanji>transit</kanji> diri Anda dan rumah yurt Anda disebabkan oleh <reading>air</reading> (わた). Ini adalah transit air.')
    RETURNING id INTO k_1253_transit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '響', 'gema', 25, 14, 'Jika Anda <radical>buang air besar</radikal> di <radikal>akar</radikal> sebuah <radikal>bangunan</radikal>, <radikal>suara</radikal> akan <kanji>bergema</kanji> ke seluruh gedung, dan setiap orang di sana akan mengetahui apa yang Anda lakukan.', '<kanji>gema</kanji> tidak berhenti di situ, akar bangunan ini meluas ke seluruh kota <reading>きょう</reading>と. Gemanya bergema dan segera semua orang di きょうと mendengarkan, dengan ngeri, kotoran Anda.')
    RETURNING id INTO k_1254_gema;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '票', 'suara', 25, 15, 'Anda harus terbang dengan <radical>helikopter</radical> dan menggunakan <radical>jackhammer</radical> untuk mencoblos <kanji>surat suara</kanji> Anda. Helikopter membuat Anda jauh dari pengintaian, dan jackhammer membuat Anda benar-benar berusaha untuk siapa pun yang Anda pilih dalam hal itu. Ini sangat mudah!', 'Saat menggunakan jackhammer pada <kanji>surat suara</kanji>, pilot helikopter terus berteriak "<reading>Hei</reading> (ひょう), jangan mengacau! Hei! Awas, jangan sampai aku melihat!" saat dia menerbangkan helikopter ke mana-mana.')
    RETURNING id INTO k_1255_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '景', 'pemandangan', 25, 16, '<radical>matahari</radikal> terbit di atas <radical>ibu kota</radikal>, menciptakan <kanji>pemandangan</kanji> keindahan yang menakjubkan. Matahari cerah dan hangat saat berada di atas ibu kota. Sungguh pemandangan yang menarik untuk disaksikan.', 'Satu-satunya cara untuk membuat <kanji>adegan</kanji> ini lebih baik adalah dengan menambahkan <reading>ca</reading>ke (けい). Sekarang kalau dipikir-pikir, saat matahari terbit dan membekukan ibu kota dengan cahayanya, bangunan-bangunan mulai terlihat seperti kue besar dan berkilau.')
    RETURNING id INTO k_1256_pemandangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '抜', 'mengeluarkan', 25, 17, 'Sentuhkan <radical>jari</radical> Anda ke <radical>teman</radical> Anda untuk <kanji>mencabut</kanji> persahabatannya. Tarik keluar dengan tos. Tarik keluar dengan menggosok punggung. Tarik keluar sambil berkata, "Oh tidak, ada serat di bajumu, biar aku ambilkan itu untukmu."', 'Temanmu menatap matamu dan berkata, aku ingin kamu <kanji>mencabut</kanji> rambutku. Aku ingin kepalaku menjadi <reading>nu</reading>de (ぬ). Sekarang Anda harus menggunakan jari Anda pada teman Anda untuk mencabut rambutnya dan membuat kepalanya telanjang.')
    RETURNING id INTO k_1257_mengeluarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '訴', 'menuntut', 25, 18, 'Anda <radical>mengatakan</radical> Anda memiliki <radical>kapak</radical> dengan <radical>setetes</radical> darah di atasnya. Anda memukul seseorang dengan kapak itu dan sekarang mereka akan <kanji>menuntut</kanji> Anda. Setetes darah di kapak Anda cukup memberatkan, itulah sebabnya mereka punya cukup banyak kasus untuk menuntut Anda.', 'Anda ingin <kanji>menuntut</kanji> mereka kembali sehingga Anda membersihkan kapak dengan beberapa <read>so</reading>ap (そ). "Yang Mulia," Anda berkata di pengadilan, "Saya tidak melihat setetes darah pun, saya membalas!"')
    RETURNING id INTO k_1258_menuntut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '訟', 'gugatan', 25, 19, 'Berhati-hatilah dengan apa yang Anda <radical>ucapkan</radical> di <radical>publik</radical>, jika tidak, Anda mungkin akan menghadapi <kanji>tuntutan hukum</kanji>. Orang-orang akan menuntut Anda untuk apa saja akhir-akhir ini, jadi Anda benar-benar perlu memperhatikan apa yang Anda katakan di depan umum, jika tidak, Anda mungkin akan menghadapi tuntutan hukum.', 'Segala <kanji>gugatan</kanji> harus dibawa ke hadapan <reading>Shou</reading>gun (しょう). Oh, Anda pikir Anda akan mendapatkan hakim atau juri? Tidak, Shougun menentukan nasibmu.')
    RETURNING id INTO k_1259_gugatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '逮', 'menangkap', 25, 20, 'Anda menaiki <radical>skuter</radical>, memegang <radical>tongkat</radical> dan berpakaian seperti <radical>Wolverine</radical>, dan meneguk <radical>air</radical> terakhir sebelum meluncur ke <kanji>menangkap</kanji> penjahat.', 'Saat kamu mengejar dan <kanji>menangkap</kanji> seseorang, kamu selalu mengikatnya dengan <reading>dasi</reading> (たい) di lehermu.')
    RETURNING id INTO k_1260_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '補', 'suplemen', 25, 21, '<radical>pakaian</radikal> yang Anda kenakan di <radical>pernikahan</radikal> Anda adalah <kanji>pelengkap</kanji> untuk acara tersebut. Ini tidak sepenting sumpah atau ciuman atau apa pun, tapi tuksedo yang rapi dan gaun yang cantik benar-benar melengkapi suasana pesta dan membuat semua orang masuk ke "mode pernikahan".', 'Anda memutuskan untuk <kanji>melengkapi</kanji> lebih jauh pakaian pernikahan Anda dengan <reading>cangkul</reading> taman (ほ). Cangkul ini adalah pelengkap simbolis — melambangkan kehidupan baru yang akan Anda "kembangkan" bersama pasangan Anda.')
    RETURNING id INTO k_1261_suplemen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '候', 'iklim', 25, 22, 'Seorang <radikal>pemimpin</radikal> dengan <radikal>tongkat</radikal>, <radikal>kail</radikal>, dan <radikal>panah</radikal> mampu mengubah <kanji>iklim</kanji> dan <kanji>cuaca</kanji>. Bukan hanya tipe iklim saja yang menyebabkan cuaca cerah dan hujan, iklim politik pun demikian, karena mereka adalah <kanji>kandidat</kanji> politik juga.', 'Siapakah pemimpin <kanji>iklim</kanji> dan <kanji>cuaca</kanji>yang dapat mengubah <kanji>yang dilengkapi kail, tongkat, dan anak panah ini? Itu tidak lain adalah <membaca>こう</membaca>いち.')
    RETURNING id INTO k_1262_iklim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '構', 'mendirikan', 25, 23, '<radical>pohon</radical> adalah apa yang <radical>penjaga pantai</radical> gunakan untuk <kanji>menyiapkan</kanji> stasiun di mana dia akan <kanji>merawat</kanji> orang-orang di pantai dan di dalam air. Pepohonan memberikan keteduhan yang dibutuhkan penjaga pantai untuk merawat anak-anak dan nenek yang setengah tenggelam dengan pasir yang tersangkut di pakaian renang mereka. Itu sebabnya mereka mendirikan pusat perawatan di sini.', 'Anda melihat lebih dekat pada <kanji>pengaturan</kanji> dan menyadari bahwa penjaga pantai adalah <reading>こう</reading>いち! Anda tahu dia mengajar bahasa Jepang tapi... apakah こういち benar-benar memenuhi syarat untuk merawat orang-orang seperti ini?')
    RETURNING id INTO k_1263_mendirikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '模', 'imitasi', 25, 24, '<radical>pohon</radical> tumbuh di sebelah <radical>rumah kaca</radical> yang melampirkan <kanji>tiruan</kanji> pohon tersebut. Pohon rumah kaca tiruan ingin menjadi besar dan mengesankan seperti pohon di luar, jadi ia meniru pohon asli dengan sebaik-baiknya.', 'Pohon rumah kaca menyadari bahwa <kanji>imitasinya</kanji> tidak akan pernah sebaik aslinya. Ketika menyadari hal ini, pohon <reading>mo</reading>ans (も) dengan keras. Pohonnya masih kecil, jadi erangannya tidak terlalu keras, tapi masih cukup aneh untuk disaksikan. Berbicara tentang para saksi, <reading>Bo</reading>bo (ぼ) si badut melihat pohon rumah kaca ini mengerang dan memutuskan untuk membawanya untuk pertunjukan badut berikutnya. Pastinya miniatur pohon erangan ini bisa dijadikan aksi badut Bobo selanjutnya.')
    RETURNING id INTO k_1264_imitasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '捕', 'menangkap', 25, 25, 'Gunakan <radical>jari</radical> Anda di <radical>pernikahan</radical> untuk <kanji>menangkap</kanji> apa pun yang dilemparkan ke arah Anda. Tangkap buketnya, misalnya, atau tangkap nasi yang dilempar semua orang ke arah Anda. Pernikahan sebenarnya lebih tentang menangkap sesuatu dengan jari Anda daripada tentang siapa pun yang berdiri di hadapan Anda.', 'Anda bersenang-senang <kanji>menangkap</kanji>segala sesuatu hingga tiba waktunya bersih-bersih dan seseorang melempar <reading>cangkul</reading> (ほ) ke arah Anda. Pertama-tama, aduh, itu wajahmu. Kedua, ini pernikahanmu. Anda tidak seharusnya harus mencangkul semuanya. Anda seharusnya membuang semua yang Anda tangkap dan pergi!')
    RETURNING id INTO k_1265_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鮮', 'segar', 25, 26, '<radical>ikan</radikal> dan <radikal>domba</radikal> sangat <kanji>segar</kanji> di sini. Ini adalah tempat yang bagus untuk mendapatkan ikan segar dan domba segar. Aku bercanda, jangan.', 'Tempat ini juga menyajikan <kanji>segar</kanji> <reading>cen</reading>taur (せん), tapi itu aneh. Centaur terancam punah dan Anda tidak percaya memakan makanan yang terancam punah. Meskipun masih sangat segar.')
    RETURNING id INTO k_1266_segar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '属', 'milik', 25, 27, '<radical>bendera</radical> memiliki <radical>belalang</radical> yang bertengger tepat di bawahnya, dan Anda tahu pasti bahwa ia tidak <kanji>berada</kanji> di sana. Serangga harusnya ada di pohon dan di tanah. Tidak sampai tinggi di tiang bendera. Serangga termasuk di alam liar!', 'Beruntung bagimu, dan sialnya bagi belalang sembah yang tidak <kanji>termasuk</kanji> di benderamu, kamu adalah anggota geng sepeda Boso<reading>zoku</reading> (ぞく), dan kamu tidak menerima omong kosong dari siapa pun. Anda memanjat tiang bendera, meninju belalang sembah dan berteriak, "KAMU TIDAK BERADA DI SINI!"')
    RETURNING id INTO k_1268_milik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慣', 'biasa', 25, 28, 'Jika kamu bisa membuat <radical>jiwa</radical>mu membuka <radical>jendela</radical> ke <radical>kerang</radical>, cepat atau lambat kamu akan <kanji>terbiasa</kanji> dengan mereka! Saya tahu kerang memiliki rasa yang khas, tetapi jika Anda tidak membuka jendela itu, Anda tidak akan pernah menyukainya!', 'Kamu harus <kanji>terbiasa</kanji> makan kerang jika ingin tumbuh besar dan kuat seperti Jenghis <reading>Khan</reading> (かん). Dia juga tidak menanam kerang lho, dia harus terbiasa dengan rasanya juga, tapi lihat betapa suksesnya dia!')
    RETURNING id INTO k_1269_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '豊', 'banyak', 25, 29, '<radical>Musik</radikal> <radikal>kacang</radikal> membuat kentut <kanji>berlimpah</kanji>. Dan beruntungnya Anda, Anda memiliki <kanji>berlimpah</kanji> stok kacang musik ini, jadi Anda bisa memakannya dalam jumlah banyak untuk memberi tenaga pada kacang musik Anda.', 'Musik kentutmu terlalu <kanji>berlimpah</kanji> untuk meninggalkan <reading>ho</reading>aku (ほう). Jika Anda mencoba meninggalkan rumah, Anda pasti akan kentut ke seluruh orang di luar, jadi Anda menyimpan banyak kentut untuk diri sendiri.')
    RETURNING id INTO k_1270_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '満', 'penuh', 25, 30, 'Jika <radical>tsunami</radical> menghantam <radical>bunga</radical> ini, <radical>keduanya</radical> akan menjadi <kanji>penuh</kanji> air. Tsunami membawa banyak air, pastinya cukup membuat kedua bunga ini penuh.', 'Saat Anda menatap <kanji>penuh</kanji> bunga, Anda memutuskan untuk menulis <reading>man</reading>ga (まん) tentang bunga tersebut. Kepalamu penuh dengan ide manga!')
    RETURNING id INTO k_1271_penuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肥', 'kegemukan', 25, 31, '<radical>bulan</radikal> yang berada di <radical>tempat tidur</radikal> sepanjang hari setiap hari akan segera menjadi <kanji>obesitas</kanji>. Bulan yang sehat memerlukan pergerakan dan olah raga agar tetap bugar dan tidak mengalami obesitas. Jika bulan tetap di tempat tidur sepanjang hari, mereka pasti akan mengalami obesitas seiring berjalannya waktu.', 'Karena bulan yang <kanji>obesitas</kanji> berada di tempat tidur sepanjang hari, dan karena bulan tetap cukup dingin, dia memerlukan <bacaan>dia</reading>at (ひ) tambahan agar tetap hangat. Selimut berpemanas sudah cukup.')
    RETURNING id INTO k_1272_kegemukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '巻', 'menggulir', 25, 32, 'Seorang <radikal>gladiator</radikal> hanya melihat dirinya sendiri (<radikal>diri</radikal>) pada <kanji>gulungan</kanji> besar yang mereka iklankan pertarungannya. Gladiator tidak mendapatkan cermin dan belum ada kamera atau video. Hanya gambar gulungan yang mereka dapatkan sendiri.', 'Ketika kamu melihat <kanji>gulungan</kanji> kamu menyadari... kamu terlihat seperti <reading>Khan</reading> (かん) Jenghis! Anda dengan bersemangat mengepalkan tangan dan mulai menunjukkan kepada semua orang betapa kerennya Anda.')
    RETURNING id INTO k_1273_menggulir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '捜', 'mencari', 25, 33, 'Anda ingin <radical>jari</radical> Anda berada di <radical>sederhana</radical> <radical>bangku</radical>, jadi Anda mendedikasikan hidup Anda untuk <kanji>mencari</kanji> untuk itu. Tunggu, bangku sederhana? Anda tahu, seperti cawan suci atau tabut perjanjian, tapi itu disebut bangku sederhana. Itu dari suatu Alkitab atau semacamnya, saya jamin.', 'Anda <kanji>mencari</kanji> dan Anda mencari dan, sayangnya, Anda menghabiskan seluruh hidup Anda untuk mencari dan Anda mati tanpa menemukan bangku sederhana. Tapi jangan khawatir, <reading>sou</reading>l (そう) Anda kembali dan sekarang Anda dapat melanjutkan pencarian Anda tetapi dengan kekuatan akhirat!')
    RETURNING id INTO k_1274_mencari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '絞', 'mencekik', 25, 34, 'Sebuah <radical>utas</radikal> <radikal>tercampur</radikal> di sekelilingnya dan mulai <kanji>mencekik</kanji> Anda.', 'Saat Anda <kanji>dicekik</kanji>d, Anda melihat siapa yang memasang jebakan ini. (Apa lagi yang bisa terjadi, dengan semua thread ini dimana-mana?) Itu adalah <reading>こう</reading>いち, yang hanya melihatmu saat kamu kehilangan kesadaran, mengetukkan jari-jarinya.')
    RETURNING id INTO k_1275_mencekik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '輩', 'kawan', 25, 35, '<radikal>penjahat</radikal> yang mencuri <radikal>mobil</radikal> Anda adalah <kanji>kawan</kanji> Anda! Anda mengira Anda berdua adalah teman, tetapi Anda mungkin salah.', 'Kamu merasa sangat aneh dengan situasi ini sehingga kamu menulis <reading>hai</reading>ku (はい) kepada <kanji>kawan</kanji>mu. Hanya itu yang dapat Anda lakukan, karena mobil Anda sudah lama hilang.')
    RETURNING id INTO k_1276_kawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隠', 'bersembunyi', 25, 36, 'Di belakang <radical>gedung</radical>, <radical>cleat</radical> yang mengenakan <radical>Wolverine</radical> memegangi <radical>hati</radical> dan mencoba <kanji>bersembunyi</kanji>.', 'Wolverine melihat ke arah gedung yang dia coba <kanji>sembunyikan</kanji> di belakangnya dan melihat bahwa itu adalah sebuah <reading>penginapan</reading> (いん).')
    RETURNING id INTO k_1277_bersembunyi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '掛', 'menggantung', 25, 37, 'Seseorang menutupi <radical>jari</radical> Anda dengan <radical>kotoran</radical> dan juga membuat <radical>jari kaki</radical> Anda terkena kotoran. Jadi, Anda akan <kanji>menggantung</kanji> mereka secara terbalik dan menamparnya dengan ekstremitas Anda yang kotor.', 'Kamu <kanji>menggantung</kanji> orang ini secara terbalik tetapi sepertinya dia tidak terlalu menderita, jadi kamu memukulnya dengan <reading>ca</reading>r (か). Tidak ada ampun.')
    RETURNING id INTO k_1278_menggantung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '替', 'mengganti', 25, 38, 'Seorang <radikal>suami</radikal> menikahi seorang <radikal>suami</radikal> sementara <radikal>matahari</radikal> terbenam dan para pria <kanji>mengganti</kanji> kehidupan menyendiri mereka dengan kehidupan persahabatan yang abadi. Daripada satu suami dan satu istri, kami punya dua suami di sini. Mereka melepaskan kehidupan bujangan mereka dan menggantinya dengan kehidupan monogami.', 'Setelah upacara, suami dan suaminya naik <reading>ca</reading>r (か) dan berangkat menuju matahari terbenam. Mereka tidak akan pernah bisa <kanji>mengganti</kanji> memori ini dengan apa pun. Sungguh ini adalah hari paling membahagiakan dalam hidup para suami ini.')
    RETURNING id INTO k_1279_mengganti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '居', 'hidup', 25, 39, '<radical>bendera</radikal> sudah <radikal>lama</radikal> namun bukan berarti bendera tersebut tidak <kanji>hidup</kanji>. Ini adalah bendera yang hidup, dan ia menjadi tua seperti halnya makhluk hidup lainnya.', 'Bendera yang sudah tua dan <kanji>hidup</kanji> sebenarnya adalah peninggalan Budha (makanya hidup, nyatanya...dan tua!). Tapi, itu peninggalan yang sangat bodoh, jadi dimasukkan ke dalam <reading>Kyo</reading>to (きょ) Kecil.')
    RETURNING id INTO k_1280_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '給', 'gaji', 25, 40, '<radical>thread</radical> Anda harus <radical>cocok</radical> jika Anda menginginkan <kanji>gaji</kanji> yang bagus. Tidak ada yang akan memberi Anda gaji jika pakaian Anda tidak cocok untuk Anda. Anda harus terlihat profesional!', '<kanji>gaji</kanji> Anda dibayarkan dalam <reading>cu</reading>cumbers (きゅう). Mungkin Anda seharusnya tidak mengenakan dasi mentimun itu saat Anda diwawancarai untuk pekerjaan ini, meskipun itu cocok untuk Anda.')
    RETURNING id INTO k_1345_gaji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '絶', 'kepunahan', 25, 41, 'Suatu saat nanti, <radical>benang</radikal> dari setiap <radikal>warna</radikal> akan dihadapkan pada <kanji>kepunahan</kanji>. Pada akhirnya tidak akan ada lagi benang yang bisa dibuat, dan segala jenis dan warna benang akan punah.', '<kanji>kepunahan</kanji> benang disebabkan oleh hal yang sangat aneh. <read>jerawat</reading> yang mematikan (ぜつ). Jerawat ini mematikan semua produsen benang, dan akhirnya benang tersebut punah. Dang jerawat.')
    RETURNING id INTO k_1371_kepunahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '涼', 'dingin', 25, 42, '<radikal>tsunami</radikal> menyebabkan <radikal>ibu kota</radikal> menjadi sangat <kanji>dingin</kanji>. Suhu di ibu kota memang sudah cukup sejuk, namun dengan tambahan air bekas tsunami, ibu kota kini menjadi sangat sejuk.', 'Anda mengetahui bahwa air tsunami yang <kanji>sejuk</kanji> berasal dari <reading>Kebun Binatang Sue</reading> (すず). Satu-satunya hewan di sana adalah seekor penguin bernama Sue, sehingga Kebun Binatang Sue selalu dijaga keren untuknya. Tapi sekarang air mancur Sue pecah, air dingin ada dimana-mana! Saatnya menuntut kebun binatang…')
    RETURNING id INTO k_1954_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '莫', 'tak-ada-habisnya', 25, 43, 'Anda memiliki <radical>rumah kaca</radical> yang <kanji>tidak ada habisnya</kanji>. Bayangkan rumah kaca Anda yang tak ada habisnya, yang terus berlanjut, sejauh mata memandang. Beruntungnya kamu.', 'Bungamu telah tumbuh begitu besar sehingga sekarang satu-satunya cara agar kamu bisa masuk ke dalam rumah kaca <kanji>tak berujung</kanji> adalah dengan berbaring <reading>punggung</reading> (ばく).')
    RETURNING id INTO k_9028_tak_ada_habisnya;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1006_sejahtera, 'Sejahtera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1006_sejahtera, 'Berkembang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1248_membatasi, 'Membatasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1249_memberi, 'Memberi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1250_termasuk, 'Termasuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1251_bayangan, 'Bayangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1252_kondisi, 'Kondisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1253_transit, 'Transit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1254_gema, 'Gema', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1254_gema, 'Gema', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1254_gema, 'Bergema', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1255_suara, 'Suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1256_pemandangan, 'Pemandangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1257_mengeluarkan, 'Mengeluarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1258_menuntut, 'Menuntut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1259_gugatan, 'Gugatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1260_menangkap, 'Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1261_suplemen, 'Suplemen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1262_iklim, 'Iklim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1262_iklim, 'Cuaca', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1262_iklim, 'Calon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1263_mendirikan, 'Mendirikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1263_mendirikan, 'Peduli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1264_imitasi, 'Imitasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1265_menangkap, 'Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1266_segar, 'Segar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1268_milik, 'Milik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1269_biasa, 'Biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1270_banyak, 'Banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1270_banyak, 'Melimpah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1271_penuh, 'Penuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1272_kegemukan, 'Kegemukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1273_menggulir, 'Menggulir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1274_mencari, 'Mencari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1275_mencekik, 'Mencekik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1276_kawan, 'Kawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1277_bersembunyi, 'Bersembunyi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1278_menggantung, 'Menggantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1279_mengganti, 'Mengganti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1279_mengganti, 'Menukarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1280_hidup, 'Hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1345_gaji, 'Gaji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1371_kepunahan, 'Kepunahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1371_kepunahan, 'Padam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1954_dingin, 'Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9028_tak_ada_habisnya, 'Tak ada habisnya', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1006_sejahtera, 'えい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1006_sejahtera, 'さか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1248_membatasi, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1248_membatasi, 'かぎ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1249_memberi, 'よ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1249_memberi, 'あた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1250_termasuk, 'がん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1250_termasuk, 'ふく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1251_bayangan, 'えい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1251_bayangan, 'かげ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1252_kondisi, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1253_transit, 'わた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1253_transit, 'と', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1254_gema, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1254_gema, 'ひび', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1255_suara, 'ひょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1256_pemandangan, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1257_mengeluarkan, 'ぬ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1257_mengeluarkan, 'ばつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1257_mengeluarkan, 'はつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1257_mengeluarkan, 'はい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1258_menuntut, 'そ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1258_menuntut, 'うった', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1259_gugatan, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1260_menangkap, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1261_suplemen, 'ほ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1261_suplemen, 'おぎな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1262_iklim, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1262_iklim, 'そうろう', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1263_mendirikan, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1263_mendirikan, 'かま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1264_imitasi, 'も', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1264_imitasi, 'ぼ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1265_menangkap, 'ほ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1265_menangkap, 'つか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1265_menangkap, 'とら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1266_segar, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1266_segar, 'あざ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1268_milik, 'ぞく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1269_biasa, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1269_biasa, 'な', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1270_banyak, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1270_banyak, 'ゆた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1270_banyak, 'とよ', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1271_penuh, 'まん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1271_penuh, 'み', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1272_kegemukan, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1272_kegemukan, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1272_kegemukan, 'こえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1273_menggulir, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1273_menggulir, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1273_menggulir, 'まき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1274_mencari, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1274_mencari, 'さが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1275_mencekik, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1275_mencekik, 'し', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1275_mencekik, 'しぼ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1276_kawan, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1277_bersembunyi, 'いん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1277_bersembunyi, 'かく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1278_menggantung, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1278_menggantung, 'かい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1278_menggantung, 'けい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1279_mengganti, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1279_mengganti, 'たい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1280_hidup, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1280_hidup, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1345_gaji, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1345_gaji, 'たま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1371_kepunahan, 'ぜつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1371_kepunahan, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1954_dingin, 'すず', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1954_dingin, 'りょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9028_tak_ada_habisnya, 'ばく', 'onyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公用', 'bisnis-pemerintah', 25, 44, '<kanji>publik</kanji> <kanji>tugas</kanji> akan menjadi <vocabulary>urusan pemerintah</vocabulary>. Anda harus menganggap masyarakat ini sebagai pemerintah untuk mengetahui arti kata ini dengan mudah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bisnis Pemerintah, Bisnis Resmi')
    RETURNING id INTO v_2642_bisnis_pemerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地', 'bumi', 25, 45, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

地 sering digunakan dalam konteks formal atau literatur untuk merujuk pada permukaan <vocabulary>Bumi</vocabulary>, <vocabulary>tanah</vocabulary>, atau <vocabulary>land</vocabulary> dalam arti yang lebih abstrak atau menyeluruh. Untuk mengucapkan "bumi" atau "tanah" dengan santai, gunakan 地面. Untuk "tanah" adalah 土地.', 'Meskipun ini hanya satu kanji, ia menggunakan bacaan on''yomi. Ini adalah bacaan yang kamu pelajari dengan kanji, dasar bebek yang beruntung.', 'Bumi, Tanah, Tanah')
    RETURNING id INTO v_2847_bumi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人格', 'karakter', 25, 46, '<kanji>orang</kanji> <kanji>status</kanji> Anda mengacu pada orang seperti apa yang ada di lubuk hati Anda. Dengan kata lain, itu adalah <vocabulary>karakter</vocabulary> Anda. Apakah Anda orang yang berkarakter? Apakah Anda memiliki karakter moral yang kuat?!

人格 adalah tentang tipe orang seperti apa dirimu sebenarnya. Ini bukan tentang sifat-sifat permukaan seperti pemalu, ceria, atau pelupa, tetapi tentang kualitas terdalam yang mendefinisikan Anda sebagai manusia. Dalam konteks filosofis atau ilmiah, kata ini juga dapat merujuk pada <vocabulary>kepribadian</vocabulary> seseorang sebagai konsep teknis, termasuk kecerdasan dan pola perilaku.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Karakter, Kepribadian')
    RETURNING id INTO v_3699_karakter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '区分', 'divisi', 25, 47, 'Ambil sebuah <kanji>distrik</kanji> dan <kanji>bagilah</kanji> dan Anda akan mendapatkan banyak <vocabulary>divisi</vocabulary> dan <vocabulary>segmen</vocabulary> yang lebih kecil. 

区分 adalah istilah formal yang mengacu pada membagi atau mengelompokkan sesuatu menjadi beberapa bagian atau kategori berdasarkan kriteria tertentu. Misalnya, 区分 dapat digunakan saat membagi suatu area menjadi zona atau segmen berbeda seperti pemukiman dan komersial, atau mengurutkan dokumen ke dalam kategori berbeda berdasarkan kontennya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Divisi, Segmen')
    RETURNING id INTO v_3741_divisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '係わる', 'untuk-terlibat', 25, 48, 'Anda tahu bahwa kanji berarti <kanji>koneksi</kanji>. Ini adalah kata kerja, jadi salah satu artinya adalah <vocabulary>terhubung</vocabulary>. Bisa juga berarti <vocabulary>terlibat</vocabulary> dan <vocabulary>terkait</vocabulary>. Pada dasarnya hal-hal yang ada hubungannya dengan keterhubungan dengan sesuatu yang lain.

Apakah ini semua terdengar familier? Sebenarnya, ini adalah cara lain untuk menulis 関わる, yang sudah Anda pelajari! Keduanya memiliki arti yang persis sama, tetapi versi ini kurang umum.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Ini persis sama dengan bacaan untuk 関わる, jadi inilah pengingat mnemonik tersebut untuk membantu Anda:

Ingat "<reading>Kaw Kaw</reading> (かか) Geng Gagak"? Mereka adalah berita buruk, selalu makan dari sampah dan mengoceh "kaw kaw"... Anda tentu tidak ingin <vocabulary>terlibat</vocabulary> dengan mereka.', 'Untuk Terlibat, Menjadi Terkait, Untuk Terhubung')
    RETURNING id INTO v_3800_untuk_terlibat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '建つ', 'akan-dibangun', 25, 49, 'Anda tahu bahwa 建てる berarti "membangun". Ini mirip dengan itu, tetapi ini adalah versi di mana Anda tidak melakukan pembangunannya. Sesuatu baru saja dibangun. Itu sebabnya kata ini berarti <vocabulary>dibangun</vocabulary>. Anda dapat mengingatnya dengan memikirkan tentang bagaimana <reading>dua</reading> (つ) bangunan dibangun tanpa Anda sadari. Kedua bangunan ini sepertinya muncul begitu saja dan sayangnya, kini menghalangi pandangan Anda.', 'Bacaannya dibagikan dengan 建てる, jadi jika Anda tahu 建てる maka Anda harus bisa membaca kata ini juga.', 'Akan Dibangun')
    RETURNING id INTO v_3994_akan_dibangun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '光栄', 'menghormati', 25, 50, 'Saat <kanji>cahaya</kanji> menyinari seberapa banyak Anda <kanji>makmur</kanji>, itu adalah <vocabulary>kehormatan</vocabulary> yang luar biasa. Anda tidak merasa telah melakukan sesuatu yang begitu istimewa, namun sungguh merupakan suatu kehormatan bagi Anda untuk mendapat pencerahan seperti ini.

光栄 umumnya digunakan untuk mengungkapkan rasa terima kasih dan kebanggaan yang mendalam ketika diberi kesempatan, menerima pujian, atau diakui dengan cara yang berarti. Dalam situasi seperti itu, mengucapkan 光栄です adalah hal yang umum untuk menunjukkan bahwa Anda merasa terhormat atau istimewa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menghormati, Hak istimewa')
    RETURNING id INTO v_4013_menghormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '防水', 'tahan-air', 25, 51, 'Sesuatu yang <kanji>mencegah</kanji>air</kanji> adalah <vocabulary>tahan air</vocabulary> dan <vocabulary>kedap air</vocabulary>. Saatnya mandi dengan 防水 ponselku...', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tahan air, Kedap air')
    RETURNING id INTO v_4335_tahan_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '防火', 'pencegahan-kebakaran', 25, 52, 'Mencoba <kanji>mencegah</kanji> <kanji>kebakaran</kanji>? Sebaiknya pelajari <vocabulary>pencegahan kebakaran</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pencegahan Kebakaran, Pemadam Kebakaran, Bukti Kebakaran')
    RETURNING id INTO v_4336_pencegahan_kebakaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '受領書', 'kuitansi', 25, 53, 'Mohon <kanji>menerima</kanji> <kanji>wilayah</kanji> ini. Oh, Anda ingin <kanji>tulisan</kanji> agar kesepakatannya resmi? Oke, ini <vocabulary>tanda terima</vocabulary>.

Kata ini mengacu pada dokumen yang berfungsi sebagai bukti penerimaan barang, jasa, atau uang dalam suasana resmi, seperti transaksi bisnis. Jika kamu hanya berbicara tentang tanda terima yang kamu dapatkan saat berbelanja, kamu cukup mengucapkan レシート atau 領収書.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kuitansi, Slip Konfirmasi Pengiriman, Acara pengadilan')
    RETURNING id INTO v_4539_kuitansi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '状況', 'kondisi', 25, 54, '<kanji>kondisi</kanji> <kanji>kondisi</kanji> adalah <vocabulary>kondisi</vocabulary>. Itu juga <vocabulary>keadaan</vocabulary> jika Anda dapat mengingatnya. Ini seperti mengatakan "Apa kondisinya!??" yang mirip dengan mengatakan "Bagaimana situasinya?"', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kondisi, Keadaan, Situasi')
    RETURNING id INTO v_4569_kondisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '済ます', 'untuk-menyelesaikan-sesuatu', 25, 55, 'Ingat 済む dan apa artinya "selesai"? Ini adalah versi dimana Anda akan <vocabulary>menyelesaikan sesuatu</vocabulary> atau <vocabulary>menyelesaikan sesuatu</vocabulary> sendiri. Anda dapat mengingat ini karena Anda suka menyelesaikan sesuatu secara <membaca>secara massal</reading> (ます). Yang terbaik adalah menyelesaikan banyak hal sekaligus.

済ます menggambarkan secara aktif menyelesaikan sesuatu, seperti dalam 仕事を済ます (selesaikan pekerjaanmu) atau 食事を済ます (selesaikan makan). Berbeda dengan 終わらせる, yang berarti "mengakhiri sesuatu", 済ます lebih berfokus pada menangani sesuatu seperti tugas yang ada dalam daftar tugas Anda — Anda menyelesaikannya sehingga Anda dapat melanjutkan.

Oleh karena itu, kata ini juga sering digunakan dalam pola 〜で済ます yang berarti Anda menangani sesuatu dengan cara yang tidak melebihi kebutuhan, seperti 簡単な食事で済ます (makan saja dengan cepat dan sederhana) atau 電話で済ます (urus saja sesuatu lewat telepon).', 'Bacaannya sama dengan yang Anda pelajari dengan 済む, jadi jika Anda mengetahuinya, Anda akan mampu <em>menyelesaikan</em> kosakata ini.', 'Untuk Menyelesaikan Sesuatu, Untuk Menyelesaikan Sesuatu')
    RETURNING id INTO v_4578_untuk_menyelesaikan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '限界', 'membatasi', 25, 56, 'Saat Anda mencapai <kanji>batas</kanji> <kanji>dunia</kanji> Anda, Anda menghadapi <vocabulary>batas</vocabulary> Anda dan menghadapi <vocabulary>keterbatasan</vocabulary> Anda.

Kata ini mengacu pada tingkat atau batas maksimum yang dapat dicapai atau ditahan oleh sesuatu. Ini menyampaikan gagasan untuk mencapai titik tertinggi dimana situasi atau kondisi tidak dapat dipertahankan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Membatasi, Keterbatasan')
    RETURNING id INTO v_4744_membatasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '限る', 'untuk-membatasi', 25, 57, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membatasi</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to limit</vocabulary>. Kata ini sering digunakan dalam bentuk pasif 限られる, yang berarti <vocabulary>dibatasi</vocabulary>, yang menyiratkan bahwa pembatasan tersebut dilakukan oleh orang lain.

Ini adalah kata formal yang digunakan untuk mendefinisikan batasan waktu, ruang, atau kuantitas, atau untuk menetapkan batasan pada sesuatu. Kata ini juga digunakan dengan santai ketika menekankan sesuatu yang khusus atau mempertimbangkan sesuatu sebagai yang terbaik.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: <vocabulary>untuk membatasi</vocabulary> sesuatu, Anda memiliki sesuatu yang disebut <reading>ca</reading>r (か) <reading>guillotine</reading> (ぎ) yang dapat Anda gunakan untuk membatasi segala sesuatunya.', 'Untuk Membatasi, Menjadi Terbatas')
    RETURNING id INTO v_4747_untuk_membatasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '期限', 'tenggat-waktu', 25, 58, '<kanji>jangka waktu</kanji> <kanji>batas</kanji> adalah <vocabulary>tenggat waktu</vocabulary> untuk suatu hal tertentu. Alternatifnya, ini bisa mendeskripsikan <vocabulary>istilah</vocabulary> untuk sesuatu, seperti pelunasan hutang, atau semacam <vocabulary>tanggal jatuh tempo</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tenggat waktu, Ketentuan, Tenggat waktu')
    RETURNING id INTO v_4749_tenggat_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無限', 'tak-terbatas', 25, 59, '<kanji>batas</kanji> adalah <kanji>tidak ada</kanji>. Apa? Tidak ada batasan? Artinya, ini tidak akan pernah berhenti! Itu adalah <vocabulary>tak terbatas</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tak terbatas, Tak terbatas')
    RETURNING id INTO v_4750_tak_terbatas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吸収する', 'untuk-menyerap', 25, 60, 'Jika 吸収 adalah "penyerapan", maka versi kata kerjanya adalah <kosakata>menyerap</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Menyerap')
    RETURNING id INTO v_4763_untuk_menyerap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '割れる', 'untuk-dibagi', 25, 61, 'Ingat bagaimana 割る adalah "membagi"? Sekarang Anda sedang mempelajari versi intransitif. Alih-alih Anda melakukan pembagian, sesuatu malah terpecah atau terpecah. Jadi ini <vocabulary>untuk dibagi</vocabulary> atau <vocabulary>untuk dipecah</vocabulary>.

Ini juga bisa berarti <vocabulary>to break</vocabulary>, seperti dalam ワイングラスが割れる (gelas anggur pecah). Lagi pula, ketika suatu benda pecah, ia terbagi menjadi beberapa bagian, bukan?', 'Bacaan dibagikan dengan 割る.', 'Untuk Dibagi, Menjadi Terpisah, Untuk Istirahat')
    RETURNING id INTO v_4764_untuk_dibagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '割引', 'diskon', 25, 62, '<kanji>Bagi</kanji> harga itu dan <kanji>tarik</kanji>. Anda hanya perlu membayar untuk satu bagian! Sungguh <vocabulary>diskon</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji. き dari ひき semacam dimasukkan ke dalam 引 dan disembunyikan seperti kumpulan kuku aneh yang Anda sembunyikan di laci lemari di dalam wadah film 35mm. Ingat juga bahwa bacaannya diubah menjadi びき di sini karena rendaku yang mengganggu itu.', 'Diskon')
    RETURNING id INTO v_4765_diskon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '準備する', 'untuk-mempersiapkan', 25, 63, 'Anda telah melihat bahwa 準備 adalah <kanji>persiapan</kanji>. Ini adalah versi kata kerjanya, jadi artinya <vocabulary>to preparation</vocabulary> atau <vocabulary>to get ready for</vocabulary> sesuatu.', 'Bacaannya sama dengan 準備.', 'Untuk Mempersiapkan, Untuk Bersiap Untuk')
    RETURNING id INTO v_4766_untuk_mempersiapkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頑張る', 'untuk-bertekun', 25, 64, '張る adalah <kanji>untuk meregang</kanji>. Anda <kanji>keras kepala</kanji> dan ingin mengembangkan apa yang sedang Anda lakukan saat ini. Meskipun kamu keras kepala, kamu tetap melakukannya. Anda bertahan. Itu sebabnya kata ini adalah <vocabulary>bertekun</vocabulary> atau <vocabulary>melakukan yang terbaik</vocabulary>.', 'Kata ini dibaca dari kanji 頑 dan kata kerja 張る yang digabungkan, tetapi bagian 張る diberi rendaku menjadi ばる. Berikut ini mnemonik untuk membantu Anda mengingat rendaku itu:

Ketika kamu memiliki <vocabulary>untuk bertahan</vocabulary>, kamu selalu berteriak <reading>baa</reading> (ば)! Tidak yakin kenapa, Anda hanya berpikir ketika seseorang harus <vocabulary>melakukan yang terbaik</vocabulary>, sambil berteriak "baa!" adalah motivator yang hebat. Mirip seperti atlet angkat besi dan pemain tenis yang menggerutu saat mereka melakukan yang terbaik, Anda tahu? Baa!', 'Untuk Bertekun, Untuk Melakukan Yang Terbaik')
    RETURNING id INTO v_4767_untuk_bertekun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抜く', 'untuk-menarik-sesuatu-keluar', 25, 65, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menarik keluar</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to pull out</vocabulary>.

Kata ini sering kali menyiratkan bahwa penarikannya memerlukan kekuatan atau usaha. Kata ini cukup serbaguna, dan juga dapat mencakup hal-hal seperti mengeluarkan udara dari sesuatu, mengeluarkan air dari sesuatu, dan bahkan menyalip seseorang atau melewati kesulitan.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Silakan saja dan ekstrak dari memori Anda sehingga Anda dapat menggunakannya di sini.', 'Untuk Menarik Sesuatu Keluar, Untuk Memetik')
    RETURNING id INTO v_4768_untuk_menarik_sesuatu_keluar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '模型', 'model-plastik', 25, 66, '<kanji>tiruan</kanji> <kanji>model</kanji> jelas bukan yang asli. Itu (biasanya) adalah <vocabulary>model plastik</vocabulary> atau hanya figur <vocabulary>model</vocabulary> atau semacamnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Model Plastik, Model, Contoh, Model Skala')
    RETURNING id INTO v_4770_model_plastik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賞与金', 'bonusnya', 25, 67, 'Ini adalah <kanji>hadiah</kanji> di mana Anda <kanji>memberi</kanji>n <kanji>emas</kanji>. Dalam bisnis, ini disebut <vocabulary>bonus</vocabulary>. Anda tidak mengharapkannya (bukan gaji Anda) dan itu diberikan kepada Anda (dan berbentuk emas, jika Anda beruntung).

Perhatikan bahwa Anda akan lebih sering melihat versi pendeknya 賞与.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bonusnya')
    RETURNING id INTO v_4772_bonusnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '含む', 'untuk-menyertakan', 25, 68, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>termasuk</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to include</vocabulary> atau <vocabulary>tocontain</vocabulary>.

Meskipun 含む dapat digunakan dalam percakapan sehari-hari, ini adalah kata yang relatif formal yang umumnya digunakan dalam kalimat penjelasan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Mereka tidak ingin <vocabulary>memasukkan</vocabulary> Anda ke dalam game mereka? Yah, "<reading>F***</reading> (ふく) kamu!" Anda meneriaki mereka, karena mereka tidak mengikutsertakan Anda.', 'Untuk Menyertakan, Untuk Berisi')
    RETURNING id INTO v_4773_untuk_menyertakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '含意', 'implikasi', 25, 69, '<kanji>Sertakan</kanji> <kanji>ide</kanji> Anda di sini, tetapi pikirkan juga <vocabulary>implikasi</vocabulary> yang akan dihasilkannya, terutama mengingat Anda baru memasukkannya sekarang. Itu punya implikasi!

Kata ini cukup formal, oleh karena itu umum digunakan dalam konteks akademis atau profesional.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Implikasi, Petunjuk Pada, Konotasi, Saran')
    RETURNING id INTO v_4774_implikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '影', 'bayangan', 25, 70, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

影 adalah <vocabulary>bayangan</vocabulary> yang dihasilkan oleh objek fisik, atau <vocabulary>siluet</vocabulary> gelap ketika muncul dengan latar belakang yang lebih terang. Ini juga digunakan dalam ekspresi kiasan untuk membicarakan hal-hal yang tersembunyi atau tidak terlihat.', '影 menggunakan bacaan かげ yang baru jika merupakan kata kosakata, jadi inilah mnemonik untuk membantu mengingatnya:

Di belakangmu, dalam <vocabulary>bayangan</vocabulary>mu, selalu ada <reading>car ge</reading>cko (かげ). Seperti tokek di dalam mobil kecil. Tokek mobil ini mengikuti Anda sepanjang hari, bersembunyi di balik bayangan Anda. Tapi kamu melihatnya. Oh, kamu melihatnya. Apa yang diinginkan tokek mobil? Apakah dia menguntit Anda, atau dia hanya ingin Anda membeli asuransi mobil?', 'Bayangan, Bayangan hitam')
    RETURNING id INTO v_4775_bayangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不況', 'resesi', 25, 71, '"<kanji>tidak</kanji> <kanji>kondisi</kanji>" adalah saat tidak ada sesuatu pun yang berjalan dengan baik. Bagaimana kabarnya? Tidak baik. Kondisinya buruk. Kita berada dalam <vocabulary>resesi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Resesi')
    RETURNING id INTO v_4776_resesi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '渡る', 'untuk-menyeberang', 25, 72, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri memiliki arti <kanji>transit</kanji> yang merupakan kata lain dari penyeberangan atau penyeberangan. Itu sebabnya kata ini adalah <vocabulary>to cross</vocabulary> atau <vocabulary>to cross over</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Menyeberang, Untuk Menyeberang, Untuk Menyeberang')
    RETURNING id INTO v_4777_untuk_menyeberang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '響く', 'untuk-gema', 25, 73, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>echo</kanji> jadi kata kerjanya adalah <vocabulary>to echo</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: <reading>He be</reading> (ひび) echoing... <reading>He be</reading> (ひび) echoing... <reading>He be</reading> (ひび) echoing... <reading>He be</reading> (ひび) echoing... <reading>He menjadi</reading> (ひび) bergema...', 'Untuk Gema, Untuk Bergema, Untuk bergema')
    RETURNING id INTO v_4779_untuk_gema;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '影響', 'pengaruh', 25, 74, 'Di dalam <kanji>bayangan</kanji> Anda masih <kanji>gema</kanji>. Gema Anda meninggalkan bayangan dan mengenai orang, menciptakan <vocabulary>pengaruh</vocabulary> pada mereka. Anda seperti orang bayangan yang menarik tali, membuat sesuatu melakukan apa yang Anda inginkan... mempengaruhi mereka.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengaruh')
    RETURNING id INTO v_4780_pengaruh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '票', 'suara', 25, 75, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Bisa juga berupa <vocabulary>pemungutan suara</vocabulary>, karena itulah yang cenderung dilakukan oleh surat suara.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Suara, Sebuah Suara')
    RETURNING id INTO v_4781_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '投票する', 'untuk-memilih', 25, 76, '<kanji>Lemparkan</kanji> <kanji>surat suara</kanji> ke dalam kotak suara <vocabulary>untuk memilih</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Anda mungkin harus memikirkan kembali beberapa kata lain yang menggunakan 投 untuk mengingat bacaan on''yomi, 投資 misalnya.', 'Untuk Memilih')
    RETURNING id INTO v_4782_untuk_memilih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '光景', 'pemandangan', 25, 77, 'Saat <kanji>cahaya</kanji> menyinari <kanji>pemandangan</kanji>, itu tetap merupakan <vocabulary>pemandangan</vocabulary>. Cahaya hadir untuk menciptakan drama, juga menjadikannya sebuah <vocabulary>pemandangan</vocabulary> atau <vocabulary>tontonan</vocabulary>.

光景 mengacu pada suatu pemandangan atau pemandangan yang meninggalkan kesan, baik yang terjadi di depan Anda atau yang teringat dalam pikiran Anda. Kata ini sering digunakan dalam bentuk puitis untuk menggambarkan momen-momen yang sangat jelas — baik menyentuh, indah, mencolok, atau menyakitkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemandangan, Penglihatan, Tontonan')
    RETURNING id INTO v_4783_pemandangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '景況', 'iklim-bisnis', 25, 78, 'Lihatlah <kanji>adegan</kanji> ini dan <kanji>kondisi</kanji> yang ada di dalamnya. Ini adalah iklim dari situasi tersebut, namun lebih khusus lagi <vocabulary>iklim bisnis</vocabulary>. Kata ini sebenarnya hanya digunakan untuk membicarakan keadaan bisnis dan perekonomian, dan cenderung muncul dalam tulisan teknis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Iklim Bisnis, Iklim Ekonomi, Situasi')
    RETURNING id INTO v_4784_iklim_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訴える', 'untuk-menuntut', 25, 79, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menuntut</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to sue</vocabulary>.', '<read>KAMU TA</reading>KE (うった) HAL SAYA, SAYA AKAN <vocabulary>MENUNTUT</vocabulary> ANDA!', 'Untuk menuntut, Untuk Menuduh, Untuk Banding, Untuk Mengeluh')
    RETURNING id INTO v_4788_untuk_menuntut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '告訴', 'pengaduan-pidana', 25, 80, 'Saya sudah <kanji>mengumumkan</kanji>saya akan <kanji>menuntut</kanji> Anda. Untuk melakukan hal ini, saya perlu mengajukan <vocabulary>pengaduan pidana</vocabulary> terhadap Anda. Apa sifat keluhan saya? Uh... Kamu payah.

告訴 adalah istilah hukum yang digunakan ketika seseorang mengajukan pengaduan pidana kepada pihak berwenang dan secara resmi meminta mereka untuk menyelidiki dan mengadili suatu kejahatan. Ini bukan sekedar keluhan atau tuduhan lama — ini adalah tindakan hukum resmi yang mempunyai bobot serius.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengaduan Pidana, Tuduhan Formal, Permintaan Penuntutan')
    RETURNING id INTO v_4789_pengaduan_pidana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訴訟', 'gugatan', 25, 81, 'Jika Anda <kanji>menuntut</kanji> dan mengajukan <kanji>gugatan</kanji>, Anda mengajukan <vocabulary>gugatan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gugatan, Proses pengadilan')
    RETURNING id INTO v_4790_gugatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逮捕', 'menangkap', 25, 82, 'Saat Anda <kanji>menangkap</kanji> dan <kanji>menangkap</kanji> seseorang, hal itu akan menyebabkan <vocabulary>penangkapan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menangkap')
    RETURNING id INTO v_4791_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '補う', 'untuk-melengkapi', 25, 83, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tambahan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to suplemen</vocabulary>.

Perhatikan bahwa kata ini umumnya dianggap bernada relatif formal.', 'Apakah kita perlu <vocabulary>melengkapi</vocabulary> tim dengan lebih banyak spesialis? “<reading>Oh</reading>, <reading>Astaga</reading>ks? <reading>Tidak</reading>! (おぎな) Kita sudah punya banyak pekerja, dan <vocabulary>untuk mengkompensasi</vocabulary> kurangnya pekerja, kita bisa membuat mereka bekerja lebih lama. Mereka akan menyukainya.', 'Untuk Melengkapi, Untuk Mengkompensasi')
    RETURNING id INTO v_4792_untuk_melengkapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '候補者', 'calon', 25, 84, '<kanji>kandidat</kanji> adalah <kanji>seseorang</kanji> yang merupakan <kanji>pelengkap</kanji> bagi keseluruhan sistem politik. Meski merupakan pelengkap, mereka tetaplah <vocabulary>kandidat</vocabulary>, kecuali mereka bisa menang!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Calon, Pemohon')
    RETURNING id INTO v_4793_calon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気候', 'iklim', 25, 85, '<kanji>energi</kanji> dari <kanji>iklim</kanji> adalah <vocabulary>iklim</vocabulary>. Energi tinggi? Iklim. Energi rendah. Iklim.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Iklim')
    RETURNING id INTO v_4794_iklim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天候', 'cuaca', 25, 86, '<kanji>Iklim</kanji> <kanji>Surga</kanji> adalah <vocabulary>cuaca</vocabulary>.

Dibandingkan dengan 天気, ini adalah istilah yang lebih formal yang digunakan untuk menggambarkan cuaca selama periode satu hari, beberapa hari, atau bahkan berminggu-minggu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cuaca, Cuaca')
    RETURNING id INTO v_4795_cuaca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時候', 'iklim-musiman', 25, 87, '<kanji>iklim</kanji> <kanji>waktu</kanji> adalah <vocabulary>iklim musiman</vocabulary>, atau <vocabulary>cuaca musiman</vocabulary>.

Anda hampir selalu melihat kata ini digunakan dalam konteks 時候のあいさつ (salam musiman). Merupakan kebiasaan untuk memulai surat dengan membahas sesuatu yang berhubungan dengan musim saat ini sebelum membahas topik utama.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Iklim Musiman, Cuaca Musiman, Musim')
    RETURNING id INTO v_4796_iklim_musiman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '構う', 'untuk-peduli', 25, 88, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>peduli</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to care about</vocabulary>.

Kata ini umumnya menyiratkan ekspresi kepedulian yang lebih langsung secara fisik atau verbal, daripada sekadar kepedulian mental terhadap seseorang atau sesuatu. Pengecualian adalah ketika digunakan dalam bentuk negatif, seperti 構わない (Saya tidak keberatan).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Apakah Anda sangat peduli dengan tata bahasa? Saya tidak peduli, kecuali ada hubungannya dengan <reading>koma</reading> (かま). Lalu aku membaliknya.', 'Untuk Peduli, Untuk Pikiran')
    RETURNING id INTO v_4797_untuk_peduli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '構成', 'komposisi', 25, 89, 'Jika Anda <kanji>mengatur</kanji> sesuatu sehingga <kanji>menjadi</kanji> dengan cara tertentu, itulah <vocabulary>composition</vocabulary> dari benda tersebut. Itulah <vocabulary>struktur</vocabulary>-nya.

構成 mengacu pada proses merangkai beberapa elemen untuk menciptakan keseluruhan yang kohesif atau keseluruhan yang dirakit itu sendiri. Hal ini dapat diterapkan pada berbagai konteks, seperti struktur sosial, komposisi keluarga, karya seni, atau konfigurasi material.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Komposisi, Struktur')
    RETURNING id INTO v_4798_komposisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結構', 'bagus', 25, 90, '<kanji>Ikat</kanji> dan <kanji>siapkan</kanji> semuanya sehingga <vocabulary>baik-baik saja</vocabulary> dan <vocabulary>cukup</vocabulary> <vocabulary>mencukupi</vocabulary>. 

Kata ini sering digunakan untuk menyatakan bahwa sesuatu itu memadai atau memuaskan, untuk menolak tawaran atau undangan dengan sopan, atau untuk menunjukkan derajat atau cakupan sesuatu yang relatif tinggi, seperti:

"Tidak, terima kasih" 結構です
"Tidak apa-apa, tidak ada lagi" もう結構です
"Ini cukup besar" 結構大きい
dll.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.けつ disingkat menjadi けっ.', 'Bagus, Cukup, Lumayan, Memadai')
    RETURNING id INTO v_4799_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '模様', 'pola', 25, 91, '様 menggunakan arti alternatifnya "cara" di sini, jadi kita mempunyai <kanji>tiruan</kanji> <kanji>cara</kanji>. Peniruan terhadap cara yang sama berulang kali akan menciptakan <vocabulary>pattern</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda mungkin ingat on''yomi untuk 様 dari kosakata 〜の様に, tapi berikut ini mnemoniknya untuk berjaga-jaga:

Anda melihat <vocabulary>pattern</vocabulary> di <reading>yo</reading>gurt (よう) Anda. Mungkinkah ini pesan ilahi? Atau mungkin yogurt ini sudah melewati tanggal kadaluwarsanya. Bagaimanapun, pola pada yogurt Anda adalah sesuatu yang harus Anda perhatikan.', 'Pola')
    RETURNING id INTO v_4800_pola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新鮮', 'segar', 25, 92, '<kanji>Baru</kanji> dan <kanji>segar</kanji> adalah <vocabulary>segar</vocabulary> (harus baru jika ingin segar).

Kata ini digunakan untuk mendeskripsikan sayuran segar, ikan, udara, dan ide atau pengalaman baru, namun tidak umum digunakan untuk mendeskripsikan makanan atau minuman yang baru dibuat. Hal ini karena kata tersebut menekankan kesegaran yang melekat pada benda yang dideskripsikan, bukan produksi terkini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Segar')
    RETURNING id INTO v_4802_segar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鮮やか', 'jelas', 25, 93, 'Baiklah, jadi tidak persis sama, tapi sesuatu yang <kanji>segar</kanji> juga <vocabulary>vivid</vocabulary> dan <vocabulary>splendid</vocabulary>. Saya tahu itu adalah beberapa hal yang saya kaitkan dengan kesegaran. Cobalah untuk membuat koneksi di sini sebelum melanjutkan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Kamu tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang bisa membantumu: Ikan segar yang <vocabulary>hidup</vocabulary> dan <vocabulary>indah</vocabulary> ini adalah MILIKKU! Anda mengambil <reading>other</reading> (あざ) yang tidak begitu jelas dan indah. Yang ini milikku.', 'Jelas, Bagus sekali, Cemerlang')
    RETURNING id INTO v_4803_jelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鮮魚', 'ikan-segar', 25, 94, '<kanji>Ikan</kanji> segar</kanji> adalah <vocabulary>ikan segar</vocabulary> (dan ikan terbaik, nom nom nom).

Ini adalah kata yang cukup terspesialisasi yang sering Anda lihat di pasar. Untuk mendeskripsikan ikan segar secara lebih umum, cukup ucapkan 新鮮な魚.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ikan Segar')
    RETURNING id INTO v_4804_ikan_segar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '効く', 'menjadi-efektif', 25, 95, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>efektif</kanji>. Versi kosakata kata kerjanya adalah <vocabulary>menjadi efektif</vocabulary> atau <vocabulary>bekerja secara efektif</vocabulary> (karena "menjadi efektif" tidak masuk akal).

Kata ini digunakan untuk menggambarkan sesuatu yang bekerja secara efektif dan sesuai tujuan, seperti obat yang mencapai efek yang diinginkan atau rem yang menghentikan mobil secara efektif.', 'Apa yang paling efektif? Itu adalah <reading>key</reading> Anda (き). Ini efektif untuk membuka pintu rumah Anda.', 'Menjadi Efektif, Untuk Bekerja Secara Efektif')
    RETURNING id INTO v_4805_menjadi_efektif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '所属', 'afiliasi', 25, 96, '<kanji>tempat</kanji> <kanji>milik</kanji> Anda menggambarkan <vocabulary>afiliasi</vocabulary> Anda. Ini adalah tempat <vocabulary>berada</vocabulary> Anda. 

Ini sering digunakan untuk menggambarkan afiliasi atau keanggotaan seseorang pada organisasi, tim, atau kelompok tertentu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Afiliasi, Milik')
    RETURNING id INTO v_4809_afiliasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金属', 'logam', 25, 97, 'Bahkan <kanji>emas</kanji> <kanji>milik</kanji> milik sebuah keluarga... keluarga <vocabulary>logam</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Logam')
    RETURNING id INTO v_4811_logam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '慣れる', 'menjadi-biasa', 25, 98, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>terbiasa</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>menjadi terbiasa</vocabulary>.', '<vocabulary>apa yang sudah biasa Anda lakukan</vocabulary>? Semua <read>Na</reading>rwhals (な) yang bergaul dengan Anda. Mereka membutuhkan waktu untuk membiasakan diri.', 'Menjadi Biasa, Untuk Membiasakan Diri')
    RETURNING id INTO v_4812_menjadi_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '習慣', 'kebiasaan', 25, 99, 'Saya telah <kanji>belajar</kanji>untuk <kanji>terbiasa</kanji> dengan hal ini. Itu sudah menjadi <vocabulary>kebiasaan</vocabulary> dan <vocabulary>kebiasaan</vocabulary> saya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kebiasaan, Kebiasaan')
    RETURNING id INTO v_4813_kebiasaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豊か', 'kaya', 25, 100, 'Ini sama dengan kanji 豊, menjadikannya <vocabulary>berlimpah</vocabulary> dan <vocabulary>berlimpah</vocabulary>. Bisa juga berarti <vocabulary>kaya</vocabulary> atau <vocabulary>kaya</vocabulary>.

豊か adalah kata serbaguna dan bernuansa yang menyampaikan rasa kelimpahan dan kekayaan dalam berbagai aspek kehidupan. Hal ini menyiratkan keadaan yang positif dan sejahtera, yang melampaui sekedar kekayaan materi atau kuantitas yang besar, dan mencakup kesejahteraan dan kepuasan secara keseluruhan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda menemukan <vocabulary>berlimpah</vocabulary> <reading>yu</reading>rt <reading>ta</reading>cos (ゆた) di dalam yurt tempat Anda menginap. Bayangkan diri Anda menikmati yurt taco yang kaya rasa di samping yurt Anda sambil menikmati alam yang melimpah di sekitar Anda.', 'Kaya, Banyak, Melimpah, Kaya')
    RETURNING id INTO v_4814_kaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豊満', 'montok', 25, 101, 'Jika Anda <kanji>berlimpah</kanji> dan <kanji>kenyang</kanji>, Anda dapat mengatakan bahwa Anda <vocabulary>gemuk</vocabulary> atau <vocabulary>berbentuk penuh</vocabulary>... dengan kata lain, Anda bukan camilan, Anda adalah <a href="https://www.youtube.com/watch?v=XaCrQL_8eMY" target="_blank">Seluruh. Berengsek. Makanan.</a>

Ini adalah ungkapan sastra yang digunakan untuk menggambarkan penampilan fisik tubuh wanita, sering kali berfokus pada dada yang buncit.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Montok, Bergambar Penuh, Bahenol')
    RETURNING id INTO v_4815_montok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '満足', 'puas', 25, 102, 'Saya <kanji>penuh</kanji> dan <kanji>cukup</kanji>. Saya <vocabulary>puas</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ingatlah bahwa bacaan 足 yang satu ini adalah ぞく karena rendaku yang mengganggu itu.', 'Puas, Benar-benar Puas, Kepuasan')
    RETURNING id INTO v_4816_puas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '満月', 'bulan-purnama', 25, 103, '<kanji>bulan purnama</kanji> <kanji>bulan</kanji> adalah <vocabulary>bulan purnama</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bulan purnama')
    RETURNING id INTO v_4817_bulan_purnama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '満員', 'rumah-penuh', 25, 104, '<kanji>Penuh</kanji> dari <kanji>anggota</kanji>, maaf, tidak ada ruang lagi. Tempat ini adalah <vocabulary>rumah penuh</vocabulary>. Artinya <vocabulary>tidak ada lowongan</vocabulary> di sini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rumah Penuh, Tidak Ada Kamar, Penuh Selai')
    RETURNING id INTO v_4818_rumah_penuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '満点', 'skor-sempurna', 25, 105, '<kanji>Penuh</kanji> <kanji>poin</kanji> adalah saat Anda mendapatkan <vocabulary>skor sempurna</vocabulary>.

満点 juga dapat digunakan untuk menggambarkan keadaan berada di puncak kualitas atau standar tertentu, seperti サービス満点 (pelayanan prima) atau 栄養満点 (bergizi tinggi).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Skor Sempurna')
    RETURNING id INTO v_4819_skor_sempurna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肥満', 'kegemukan', 25, 106, 'Apakah <kanji>obesitas</kanji> berarti Anda selalu <kanji>kenyang</kanji>? Tentu saja tidak. Tapi jelas itulah yang dipikirkan oleh orang-orang yang menciptakan kata dalam bahasa Jepang untuk <vocabulary>obesity</vocabulary>... Anda dapat melihat ada beberapa bias implisit dalam kanji ini!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kegemukan')
    RETURNING id INTO v_4820_kegemukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肥料', 'pupuk', 25, 107, '<kanji>biaya</kanji> Anda karena <kanji>obesitas</kanji> adalah banyak <vocabulary>kotoran</vocabulary> yang keluar dari pantat Anda. Jika Anda makan banyak, Anda akan membuang banyak kotoran.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pupuk, Pupuk')
    RETURNING id INTO v_4821_pupuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巻く', 'untuk-berguling', 25, 108, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya <kanji>gulir</kanji>. Namun, Anda tidak boleh "menggulir". Namun, apa yang Anda lakukan untuk menggulir? Anda menggulungnya, membuat kata ini "<vocabulary>bergulung</vocabulary>."

Kata ini juga bisa berarti <vocabulary>menggulung</vocabulary>, seperti ketika melilitkan benang atau jam tangan, atau <vocabulary>membungkus</vocabulary> ketika melibatkan gerakan menggulung atau melingkar, seperti membungkus sushi dengan rumput laut atau melilitkan syal yang nyaman di leher Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Hal yang Anda gulung adalah <read>ma</reading> (ま) Anda. Dia menjadi liar lagi, jadi lemparkan dia ke dalam selimut dan gulung dia untuk menahannya.', 'Untuk Berguling, Ke Angin, Untuk Membungkus, Untuk Menggulung')
    RETURNING id INTO v_4822_untuk_berguling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一巻', 'satu-jilid', 25, 109, '<kanji>Satu</kanji> <kanji>gulir</kanji> adalah satu gulir ke masa lalu, namun sekarang mengacu pada buku dan berarti <vocabulary>satu volume</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. いち menjadi いっ.', 'Satu Jilid, Jilid Pertama')
    RETURNING id INTO v_4823_satu_jilid;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下巻', 'jilid-terakhir', 25, 110, '<kanji>gulungan</kanji> yang ada <kanji>di bawah</kanji> adalah gulungan terakhir yang Anda baca, menjadikannya <vocabulary>volume terakhir</vocabulary>.', '下 menggunakan bacaan alternatif げ tetapi 巻 semuanya baik dan normal.', 'Jilid Terakhir, Jilid Akhir')
    RETURNING id INTO v_4824_jilid_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上巻', 'jilid-pertama', 25, 111, '<kanji>di atas</kanji> <kanji>gulir</kanji> adalah gulir paling atas, yang pertama kali Anda baca. Ini adalah <vocabulary>jilid pertama</vocabulary>. Banyak buku Jepang yang tersedia dalam beberapa bagian, jadi carilah ini jika Anda ingin mendapatkan yang pertama.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jilid Pertama')
    RETURNING id INTO v_4825_jilid_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二巻', 'jilid-kedua', 25, 112, 'Angka <kanji>dua</kanji> <kanji>gulir</kanji> adalah <vocabulary>volume kedua</vocabulary>. Pada buku-buku Jepang, buku-buku tersebut sering kali datang dalam bentuk potongan-potongan dengan kelompok yang terdiri dari tiga orang. Ini mewakili <vocabulary>volume kedua</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jilid Kedua, Dua Jilid')
    RETURNING id INTO v_4826_jilid_kedua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捜す', 'untuk-mencari', 25, 113, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencari</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>mencari</vocabulary> atau <vocabulary>mencari</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Anda sedang mencari "<reading>sagger</reading>" (さが) di tubuh Anda. Ini adalah bagian kulit yang sangat kendur di tubuh Anda, dan Anda mungkin harus menghilangkannya.', 'Untuk Mencari, Untuk Mencari')
    RETURNING id INTO v_4827_untuk_mencari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捜査', 'investigasi-kriminal', 25, 114, 'Saat Anda <kanji>menelusuri</kanji> dan <kanji>memeriksa</kanji> sesuatu, Anda mungkin menjadi bagian dari <vocabulary>investigasi kriminal</vocabulary>. Anda bahkan mungkin akan terkena <vocabulary>perburuan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Investigasi Kriminal, Pemburuan orang')
    RETURNING id INTO v_4828_investigasi_kriminal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絞殺', 'pembunuhan-dengan-mencekik', 25, 115, '<kanji>mencekik</kanji> <kanji>membunuh</kanji> adalah <vocabulary>pembunuhan dengan cara mencekik</vocabulary>, atau <vocabulary>mencekik sampai mati</vocabulary>.

Ini adalah kata yang cukup formal yang paling sering Anda lihat dalam laporan polisi dan novel detektif.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembunuhan Dengan Mencekik, Mencekik Sampai Mati')
    RETURNING id INTO v_4829_pembunuhan_dengan_mencekik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絞る', 'untuk-memeras', 25, 116, 'Anda telah mengetahui bahwa kanji 絞 berarti <kanji>mencekik</kanji>. 絞る, sebaliknya, berarti <vocabulary>memeras</vocabulary> atau <vocabulary>memeras</vocabulary> sesuatu seperti handuk, atau <vocabulary>untuk mempersempit</vocabulary> ide.', 'Temanmu ingin <vocabulary>memeras</vocabulary> sebuah handuk, namun sebelum dia melakukannya <reading>dia membungkuk</reading> ke handuk tersebut untuk menunjukkan rasa hormatnya terhadap handuk tersebut.', 'Untuk memeras, Untuk memeras, Untuk Mempersempit')
    RETURNING id INTO v_4830_untuk_memeras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先輩', 'senior', 25, 117, '<kanji>kawan</kanji>ku yang datang <kanji>sebelum</kanji>ku adalah <vocabulary>senior</vocabulary>ku, senpaiku (せんぱい).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda tahu cara membaca kanji Anda, Anda juga akan tahu cara membacanya, tapi ingatlah bahwa kanji kedua dibaca ぱい karena rendaku di はい.', 'Senior, Lulusan yang lebih tua, Unggul')
    RETURNING id INTO v_4831_senior;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '後輩', 'muda', 25, 118, '<kanji>kawan</kanji> yang <kanji>di belakang</kanji> Anda adalah <vocabulary>junior</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, bacaan untuk 後 adalah bacaan こう yang panjang. Bayangkan saja juniormu adalah <reading>こう</reading>いち.', 'Muda, Junior seseorang')
    RETURNING id INTO v_4832_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隠す', 'untuk-menyembunyikan-sesuatu', 25, 119, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menyembunyikan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menyembunyikan sesuatu</vocabulary> atau <vocabulary>menyembunyikan sesuatu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Sembunyikan <reading>ayam</reading> Anda (かく)! Kamu mempunyai banyak sekali ayam jantan tetapi kamu tidak ingin orang lain mengetahuinya, jadi kamu harus menyembunyikan ayammu. Menurut Anda apa yang saya bicarakan?', 'Untuk Menyembunyikan Sesuatu, Untuk Menyembunyikan Sesuatu')
    RETURNING id INTO v_4834_untuk_menyembunyikan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隠居', 'masa-pensiun', 25, 120, 'Anda <kanji>bersembunyi</kanji> tetapi Anda <kanji>hidup</kanji>. Anda telah menjalani hidup Anda, jadi sekarang saatnya untuk bersembunyi dan menikmati <vocabulary>pensiun</vocabulary> Anda dengan membuat <vocabulary>mundur</vocabulary> Anda dari kehidupan kerja.

Kata ini mengacu pada kehidupan setelah seseorang pensiun, dan biasanya berarti pensiun dari kehidupan aktif dan menjalani gaya hidup yang tenang, bahkan mungkin terpencil. Ini juga bisa berarti menyerahkan kendali kepada penerus Anda. Kata tersebut agak kuno, tetapi Anda masih akan melihatnya dalam tulisan modern.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Masa pensiun, Mundur')
    RETURNING id INTO v_4835_masa_pensiun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掛ける', 'untuk-menggantung-sesuatu', 25, 121, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menggantung</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to hang Something</vocabulary> atau <vocabulary>to hang up Something</vocabulary> (seperti menggantungnya dengan kail).

Anda dapat mengingat ini karena Anda harus <read>peduli</reading> (ける) tentang cara Anda menggantung sesuatu. Tanpa perawatan, ia tidak akan bertahan lama.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Menggantung Sesuatu, Untuk Menggantung Sesuatu')
    RETURNING id INTO v_4836_untuk_menggantung_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '替える', 'untuk-mengganti', 25, 122, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri artinya <kanji>mengganti</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to replace</vocabulary>. Anda tahu bahwa Anda melakukan penggantian karena <reading>udara</reading> (える). Anda mengganti udara secepat mungkin karena jika tidak, Anda tidak akan bisa bernapas di ruangan kecil ini.

替える berarti mengganti sesuatu dengan barang lain yang sejenis atau setara, daripada mengubah keadaannya. Ingin tahu apa bedanya dengan 代える? Meskipun 代える menekankan bahwa Anda menggunakan seseorang atau sesuatu “sebagai pengganti yang lain”, 替える hanya menunjukkan tindakan menukar satu benda dengan benda lain yang serupa.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Mengganti, Untuk Pengganti, Untuk Beralih, Untuk Bertukar')
    RETURNING id INTO v_4837_untuk_mengganti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '女優', 'aktris', 25, 123, 'Ingat bagaimana 男優 disebut sebagai "aktor"? Baiklah, saya yakin Anda bisa memperkirakan apa maksudnya karena sekarang ada <kanji>wanita</kanji> di dalamnya. Ini adalah <vocabulary>aktris</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Aktris')
    RETURNING id INTO v_4872_aktris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '革命家', 'revolusioner', 25, 124, 'Seseorang yang tinggal di <kanji>rumah</kanji> revolusi (革命) adalah <vocabulary>seorang revolusioner</vocabulary>. Mereka menginginkan perubahan pemerintahan! Mereka ingin menjatuhkan orang-orang yang berkuasa!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Tentu saja akan membantu untuk mengetahui 革命 juga.', 'Revolusioner, Seorang Revolusioner')
    RETURNING id INTO v_4873_revolusioner;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '革ジャン', 'jaket-kulit', 25, 125, '革 adalah <kanji>kulit</kanji> dan ジャン adalah kependekan dari ジャンパー (Jumper, seperti jaket). Jadi, satukan semuanya dan Anda akan mendapatkan <vocabulary>jaket kulit</vocabulary>.

Kata ini sudah agak ketinggalan jaman. Istilah yang lebih trendi saat ini adalah レザージャケット.', 'Bacaannya sama dengan vocab kata 革, karena kata ini seperti dua kata terpisah yang dirangkai (jadi dianggap sebagai kata tunggal juga, sehingga diberi bacaan itu).', 'Jaket Kulit')
    RETURNING id INTO v_4874_jaket_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '長崎県', 'prefektur-nagasaki', 25, 126, '<kanji>Panjang</kanji> <kanji>Tanjung</kanji> <kanji>Prefektur</kanji>. Ini akan lebih masuk akal ketika Anda melihat bacaannya. Petunjuk: Ini adalah <vocabulary>Prefektur Nagasaki</vocabulary>.', 'Pembacaannya adalah 長 dari 長い, normal 崎 dan normal 県.', 'Prefektur Nagasaki')
    RETURNING id INTO v_4875_prefektur_nagasaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '呼ばれる', 'untuk-dipanggil', 25, 127, 'Jika 呼ぶ berarti "memanggil" maka ini serupa. Ini adalah saat Anda dipanggil oleh seseorang (dan Anda tidak melakukan panggilan tersebut). Kata ini <vocabulary>disebut</vocabulary>.', 'Bacaannya dibagikan kepada 呼ぶ, jadi ingatlah itu dan kamu akan bisa membaca ini juga.', 'Untuk Dipanggil')
    RETURNING id INTO v_4878_untuk_dipanggil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '現す', 'untuk-ditunjukkan', 25, 128, 'Ini adalah versi transitif dari 現れる (muncul), jadi daripada sesuatu muncul dengan sendirinya, Anda membuatnya muncul. Jadi kata ini berarti <kosa kata>menunjukkan</vocabulary> atau <vocabulary>mengungkapkan</vocabulary>, namun biasanya digunakan dalam frasa tertentu seperti 姿を現す (menampilkan) atau 正体を現す (mengungkapkan sifat asli seseorang).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda telah mempelajarinya dengan 現れる, namun berikut ini ada mnemonik yang dapat membantu Anda:

Monster di bawah tempat tidur Anda memutuskan <vocabulary>untuk menunjukkan</vocabulary> kepada Anda wujud aslinya. "Kamu… <reading>adalah wa</reading>lrus (あらわ)?" kamu bertanya, kaget. Terbukti, monster di bawah tempat tidur Anda sebenarnya hanyalah seekor walrus yang masuk suatu hari ketika Anda membiarkan jendela terbuka. Anda merasa konyol karena takut terhadapnya begitu lama, tetapi Anda senang hal itu akhirnya muncul pada Anda.', 'Untuk Ditunjukkan, Untuk Mengungkapkan')
    RETURNING id INTO v_4879_untuk_ditunjukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '景色', 'pemandangan', 25, 129, '<kanji>pemandangan</kanji> <kanji>pemandangan</kanji> adalah <vocabulary>pemandangan</vocabulary>, <vocabulary>lanskap</vocabulary>, dan <vocabulary>pemandangan</vocabulary>. Terlihat bagus, pemandangan!', 'Anda belum mempelajari salah satu bacaan ini. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Anda mengagumi <vocabulary>pemandangan</vocabulary> dan Anda memperhatikan tanda-tanda penting di segala hal. Kamu menyadari gadis itulah yang mengunci semuanya dan kamu berkata pada dirimu sendiri <reading>kay dia mengetik</reading>ed (けしき) bahwa, <reading>kay dia key</reading>ed (けしき) ini.', 'Pemandangan, Lanskap, Melihat')
    RETURNING id INTO v_4880_pemandangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '居る', 'untuk-ada', 25, 130, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>hidup</kanji> dan versi kata kerjanya berarti <vocabulary>ada</vocabulary> atau <vocabulary>menjadi</vocabulary>, untuk segala sesuatu yang hidup dan bergerak, seperti manusia dan hewan. 

Kanji tidak terlalu sering digunakan untuk kata ini, jadi saat Anda menulis gunakan saja kana. Namun terkadang Anda akan melihat kanji yang digunakan, jadi penting untuk bisa mengenalinya!', 'Tahukah kamu kata いる? Ini adalah versi kanji! Jika Anda selama ini belajar bahasa Jepang, Anda mungkin sudah mengetahui kata itu. Anda dapat mengasosiasikan kedua hal ini menjadi satu dan sekaligus mengingat bacaannya!', 'Untuk Ada, Menjadi')
    RETURNING id INTO v_4885_untuk_ada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名刺', 'kartu-nama', 25, 131, 'Ambil <kanji>nama</kanji> Anda dan <kanji>tusuk</kanji> seseorang dengan nama itu... menggunakan <vocabulary>kartu nama</vocabulary> Anda. Kartu nama Anda mencantumkan nama Anda. Juga, Anda “menikamnya” pada orang yang bersedia mengambil dan membacanya. Bukan tikaman sungguhan, tapi metaforis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum mempelajari bacaan ini untuk 刺, jadi inilah mnemonik untuk membantu Anda:

Setelah melakukan bisnis di Jepang, Anda akan memiliki begitu banyak <vocabulary>kartu nama</vocabulary> sehingga Anda dapat menghitungnya seperti <reading>shee</reading>p (し) ketika Anda mencoba untuk tidur. Satu kartu nama, dua kartu nama… Lihat mereka melompati pagar domba saat Anda mulai tertidur.', 'Kartu Nama')
    RETURNING id INTO v_4896_kartu_nama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '給料', 'gaji', 25, 132, '<kanji>gaji</kanji> <kanji>biaya</kanji> Anda adalah uang yang Anda peroleh untuk <vocabulary>gaji</vocabulary> Anda. Ini adalah <vocabulary>upah</vocabulary> dan <vocabulary>pay</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gaji, Gaji, Membayar')
    RETURNING id INTO v_5064_gaji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '減給', 'pemotongan-gaji', 25, 133, '<kanji>penurunan</kanji> dalam <kanji>gaji</kanji> adalah <vocabulary>pemotongan gaji</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemotongan Gaji')
    RETURNING id INTO v_5067_pemotongan_gaji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '切腹', 'seppuku', 25, 134, 'Saat Anda <kanji>memotong</kanji> <kanji>perut</kanji> Anda melakukan <vocabulary>seppuku</vocabulary>. Akan membantu jika Anda sudah mengetahui kata "seppuku" dari bahasa Inggris, karena di sini juga ada bacaannya.

切腹 adalah bentuk <kosakata>ritual bunuh diri</vocabulary> dengan mengeluarkan isi perut yang dilakukan sendiri, sering kali dilakukan oleh samurai untuk mengembalikan kehormatan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Hati-hati dengan せつ yang disingkat menjadi せっ dan ふく berubah menjadi ぷく. Atau baru tahu kata seppuku karena sudah cukup terkenal. Itu juga berhasil.', 'Seppuku, Ritual Bunuh Diri, Bunuh Diri Dengan Mengeluarkan Isi Perut')
    RETURNING id INTO v_5077_seppuku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絶対', 'sangat', 25, 135, '<kanji>Kepunahan</kanji> akan terjadi saat Anda <kanji>versus</kanji> kepunahan. Itu akan terjadi <vocabulary>tentu saja</vocabulary>. Ini akan terjadi <vocabulary>tanpa gagal</vocabulary>. Tidak ada yang dapat Anda lakukan untuk menghentikan kepunahan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun berhati-hatilah, 絶 biasanya dibaca sebagai ぜつ, namun dalam kasus ini disingkat menjadi ぜっ.', 'Sangat, Tanpa Gagal, Tanpa syarat')
    RETURNING id INTO v_5189_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絶望', 'putus-asa', 25, 136, 'Ketika <kanji>harapan</kanji> telah <kanji>padam</kanji>, Anda tidak punya harapan lagi, yang ada hanya <vocabulary>keputusasaan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Putus asa, Keputusasan')
    RETURNING id INTO v_5191_putus_asa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今更', 'terlambat', 25, 137, '<kanji>Sekarang</kanji> tidak cukup baik untuk <kanji>memperbarui</kanji>al. Ini sudah <vocabulary>terlambat</vocabulary>. Waktu telah berlalu <vocabulary>sekarang</vocabulary>.', 'Anda mungkin tergoda untuk membaca ini dengan on''yomi, tapi ini sebenarnya 今 dan 更に disatukan, hanya tanpa partikel に di akhir. Cobalah untuk mengingatnya dengan cara ini, atau buatlah catatan mental untuk menggunakan kun''yomi di sini!', 'Terlambat, Sekarang')
    RETURNING id INTO v_5607_terlambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '衣', 'pakaian', 25, 138, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Dalam bahasa Jepang modern, 衣 lebih sering digunakan untuk mendeskripsikan <vocabulary>pakaian</vocabulary> yang dikenakan pada <em>makanan</em> Anda, misalnya <vocabulary>coating</vocabulary> pada tempura atau <vocabulary>breading</vocabulary> pada makanan yang digoreng.', 'Sebenarnya apa itu pakaian? Beberapa orang mengatakan <vocabulary>pakaian</vocabulary> adalah <reading>chromo</reading>some (ころも) dari gaya pribadi Anda — setiap pakaian membawa informasi tentang identitas unik Anda. Orang lain mengatakan pakaian hanyalah <membaca>kunci</reading> untuk tidak menjadi <reading>nu</reading>de (きぬ). Bagaimana menurutmu?

Baik ころも maupun きぬ berarti "pakaian", namun penggunaannya sudah kuno. Perhatikan juga bahwa arti "pelapisan" atau "breading" yang lebih modern hanya menggunakan bacaan ころも!', 'Pakaian, Lapisan, berkembang biak')
    RETURNING id INTO v_6529_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '涼しい', 'dingin', 25, 139, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>keren</kanji>? <vocabulary>keren</vocabulary>.

涼しい digunakan untuk menggambarkan tingkat kesejukan yang nyaman, khususnya yang menyenangkan dan <vocabulary>menyegarkan</vocabulary>.', 'Bacaannya adalah bacaan kun''yomi, tapi itu bacaan yang kamu pelajari dengan kanji jadi kamu harus bisa membaca yang ini juga. Jika Anda memerlukan penyegaran, inilah mnemonik untuk membantu Anda:

Mencari tempat yang <vocabulary>keren</vocabulary> dan <vocabulary>menyegarkan</vocabulary>? Pergi ke <read>Kebun Binatang Sue</reading> (すず). Bayangkan berenang bersama Sue si penguin di air kolamnya yang menyegarkan. Terasa enak!', 'Dingin, Menyegarkan')
    RETURNING id INTO v_6996_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見渡す', 'untuk-diperhatikan', 25, 140, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.  Kanji berarti <kanji>melihat</kanji> dan <kanji>transit</kanji>, namun kosakatanya tidak persis sama. Anda akan mengarahkan pandangan Anda ke suatu area untuk mengamati apa yang Anda lihat. Jadi, Anda benar-benar akan <vocabulary>memperhatikan</vocabulary> semuanya. Kata ini biasanya digunakan ketika Anda sedang melihat pemandangan alam atau area yang sangat luas.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Untuk Diperhatikan, Untuk Survei, Untuk Melihat Sekilas')
    RETURNING id INTO v_7600_untuk_diperhatikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '規則正しい', 'biasa', 25, 141, 'Ini adalah kombinasi kata 規則 dan 正しい yang sudah Anda pelajari. Jika Anda mengikuti aturan dalam urutan yang benar, semuanya akan tetap <vocabulary>biasa</vocabulary> dan <vocabulary>tertib</vocabulary>.

Kata ini berarti sesuatu mengikuti pola atau jadwal yang teratur. Kata ini biasanya digunakan untuk menggambarkan gaya hidup yang disiplin, seperti tidur teratur, olahraga, dan kebiasaan makan sehat, dan menyiratkan bahwa keteraturan itu diinginkan.', 'Ini adalah kombinasi kata 規則 dan 正しい yang sudah kamu pelajari, jadi kamu juga harus bisa membaca kata ini.', 'Biasa, Tertib, Sistematis')
    RETURNING id INTO v_7654_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '家庭教師', 'guru', 25, 142, 'Ini merupakan gabungan kata 家庭 dan 教師. Seorang "guru" yang hanya mengajar saat Anda bersama "keluarga" dikenal sebagai <vocabulary>tutor</vocabulary>. Mereka tidak mengajari Anda di sekolah, mereka adalah <vocabulary>guru privat</vocabulary> yang datang ke rumah Anda untuk membantu Anda belajar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'guru, Pelatih, Guru Swasta')
    RETURNING id INTO v_7712_guru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不規則', 'ketidakteraturan', 25, 143, 'Anda tahu bahwa 規則 berarti "aturan" atau "peraturan". Jadi <kanji>bukan</kanji> "aturan" atau "peraturan" adalah sebuah <vocabulary>ketidakteraturan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ketidakteraturan, Tidak teratur, Kacau')
    RETURNING id INTO v_7713_ketidakteraturan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '降ろす', 'untuk-mencatat', 25, 144, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Anda sudah mengetahui bahwa 降りる berarti "turun". Ini adalah saat Anda membantu sesuatu yang lain turun dari sesuatu, bukan saat Anda sendiri yang turun. Jadi artinya <vocabulary>menurunkan</vocabulary> atau <vocabulary>menurunkan</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi yang sudah kamu pelajari. Pergilah kamu!', 'Untuk Mencatat, Untuk Meluncurkan, Untuk Menjatuhkan, Untuk Menurunkan, Untuk Menurunkan')
    RETURNING id INTO v_7724_untuk_mencatat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '果てる', 'akan-berakhir', 25, 145, 'Ketika hidup Anda telah membuahkan semua <kanji>buah</kanji>, inilah saat terakhir <kosakata>berakhir</vocabulary>. Setiap orang <vocabulary>akan mati</vocabulary> suatu hari nanti, tapi Anda bisa tenang mengetahui bahwa Anda telah menjalani kehidupan yang panjang dan bermanfaat.

果てる digunakan untuk menggambarkan sesuatu yang mencapai batasnya atau benar-benar habis sehingga tidak ada lagi yang tersisa, seperti 望みが果てる(semua harapan hilang) atau 命が果てる (hidup seseorang berakhir).

Jika digabungkan dengan kata kerja lain, kata ini menggambarkan keadaan yang ekstrem, seperti 困り果てる (benar-benar bingung). Anda juga akan melihatnya dalam ekspresi seperti 果てしない (tak berujung), yang membalikkan gagasan — sesuatu yang tidak pernah mencapai akhir.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Saat hidupmu hampir <vocabulary>berakhir</vocabulary>, kamu menatap ke langit dan berteriak, "<reading>Hah</reading> (は)! Aku tunjukkan padamu, alam semesta! Aku mengambil semua yang kamu lemparkan padaku dan aku masih memiliki kehidupan yang luar biasa! Sekarang aku akan <vocabulary>mati</vocabulary> tua, bahagia, dan puas dan tidak ada yang bisa kamu lakukan untuk mengatasinya! Hah!"', 'Akan Berakhir, Untuk Mati, Untuk Mengakhiri')
    RETURNING id INTO v_7759_akan_berakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '反響', 'gema', 25, 146, '<kanji>anti</kanji> <kanji>echo</kanji> tetaplah <vocabulary>echo</vocabulary>! Itu hanya bolak-balik dengan gema normal. Bersama-sama mereka menghasilkan <vocabulary>gema</vocabulary> yang aneh.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gema, Gema, Pengaruh, Kumandang, Reaksi')
    RETURNING id INTO v_7767_gema;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '収める', 'untuk-menyimpan', 25, 147, 'Saat Anda <kanji>mendapatkan</kanji> sesuatu, Anda perlu menyimpannya dengan aman, sehingga Anda memutuskan <vocabulary>untuk menyimpannya</vocabulary> di suatu tempat. Kemudian Anda selalu dapat kembali dan melihat hal yang berhasil <vocabulary>capai</vocabulary> atau <vocabulary>untuk mencetak</vocabulary>, dan tidak ada seorang pun yang dapat mengambilnya dari Anda.

収める berarti "menyimpan" dengan penekanan pada menempatkan sesuatu pada lokasi yang tepat. Nuansa ini meluas hingga menyampaikan rasa pencapaian, seperti “mencapai hasil yang menguntungkan.”', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan 収まる, namun berikut adalah mnemonik untuk mengingatkan Anda untuk berjaga-jaga:

Anda perlu <vocabulary>untuk menyimpan</vocabulary> semua <reading>o</reading>ld <reading>saw</reading> (おさ). Anda mampu <vocabulary>menyelesaikan</vocabulary> dan <vocabulary>mencapai</vocabulary> semua yang Anda inginkan, jadi inilah waktunya untuk menyimpannya agar aman.', 'Untuk Menyimpan, Untuk Mencapai, Untuk Mencetak Skor')
    RETURNING id INTO v_8680_untuk_menyimpan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '増す', 'untuk-meningkatkan', 25, 148, 'Itu kata kerja lain dengan kanji 増! Yang ini berarti <vocabulary>meningkat</vocabulary> juga! Tetapi!

Sama seperti 増える, ini adalah saat sesuatu meningkat dengan sendirinya. Anda dapat menggunakan kata ini untuk berbicara tentang peningkatan jumlah, kuantitas, atau derajat, tetapi kata ini lebih bersifat sastra dan kurang umum dibandingkan 増える, kecuali jika mengacu pada peningkatan derajat.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>peningkatan</vocabulary> apa seiring berjalannya waktu? Cintamu pada <reading>ma</reading>ma ​​(ま)mu! Cinta Anda padanya akan tumbuh dan bertambah seiring bertambahnya usia! Aku sayang kamu, mama!', 'Untuk Meningkatkan, Untuk Tumbuh')
    RETURNING id INTO v_8716_untuk_meningkatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掛け算', 'perkalian', 25, 149, 'Jika Anda mencoba <kanji>menghitung</kanji> sesuatu, namun Anda malah merasa ingin <kanji>menggantung</kanji> guru Anda, Anda tahu bahwa Anda sedang melakukan <vocabulary>perkalian</vocabulary>. Itu sulit, teman-teman. Sangat sulit. Jenis matematika yang paling sulit dari semuanya. Tapi Anda bisa melakukannya! Tidak ada yang perlu digantung. Dan jangan pula menundukkan kepala karena kekalahan. Lipat gandakan angka-angka itu seperti bos! Gantungkan nomornya!!', 'Ini adalah bacaan kun''yomi untuk 掛 dan on''yomi untuk 算. Dan bacaan さん di rendaku menjadi ざん. Ini sama untuk semua kata matematika (penjumlahan, pengurangan, perkalian, dan pembagian), jadi cobalah mengingatnya, karena Anda akan melihatnya lagi!', 'Perkalian')
    RETURNING id INTO v_8756_perkalian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '優れる', 'untuk-melampaui', 25, 150, 'Ini adalah versi kata kerja dari kanji <kanji>superior</kanji>, jadi artinya <vocabulary>melampaui</vocabulary>. Seseorang yang unggul akan selalu mengungguli dan <vocabulary>mengungguli</vocabulary> melebihi orang lain. Itulah yang membuat mereka begitu unggul!

Ini adalah kata formal yang sering digunakan dalam tulisan atau pidato formal.', 'Jika Anda ingin <vocabulary>mengungguli</vocabulary> semua orang, Anda harus <reading>su</reading>per <reading>goo</reading>d (すぐ) dalam berbagai hal. Seperti, sangat pandai dalam segala hal. Kurang bagus, tidak terlalu bagus — <em>sangat bagus</em>. Hanya dengan begitu Anda dapat melampaui yang lainnya.', 'Untuk Melampaui, Ke Unggul')
    RETURNING id INTO v_8809_untuk_melampaui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絞める', 'untuk-mencekik', 25, 151, 'Kanji berarti <kanji>mencekik</kanji> dan kosakata ini adalah versi kata kerjanya: <vocabulary>to strangle</vocabulary>. Biasanya digunakan dalam frasa 首を絞める, yang juga berarti “mencekik.” 

Ada kata lain, 絞る yang berarti "memeras" yang bentuknya sangat mirip. Anda tahu bahwa yang ini "mencekik" karena ada める yang mencuat di dalamnya. Bayangkan di <reading>mail</reading> (める) Anda mendapatkan surat yang berbunyi "Saya akan <vocabulary>mencekik</vocabulary> Anda!" Saat Anda menerima ini melalui pos, Anda tahu ini tentang pencekikan.', 'Hal yang <vocabulary>mencekik</vocabulary> Anda sebenarnya adalah <reading>shee</reading>p (し)! Domba datang ke rumah Anda dan berkata, "ini surat dombanya!" dan kemudian mencoba mencekikmu. Ini menempatkan kakinya yang keras di leher Anda meskipun itu tidak efektif.', 'Untuk Mencekik')
    RETURNING id INTO v_8905_untuk_mencekik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人狼', 'manusia-serigala', 25, 152, '<kanji>manusia</kanji> <kanji>serigala </kanji> adalah <vocabulary>manusia serigala</vocabulary>. Kata ini kurang umum dibandingkan 狼男, tetapi kata ini semakin sering digunakan berkat permainan kartu dengan nama yang sama!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari on''yomi untuk 狼 (serigala), jadi inilah mnemonik untuk membantu Anda mengingatnya, serta on''yomi mana yang digunakan untuk 人:

Ada <vocabulary>werewolf</vocabulary> di depan Anda mengenakan <reading>jean</reading> dan memakan <reading>roe</reading> (じんろう). Ini adalah perilaku khas manusia serigala, saya yakin Anda sudah mengetahuinya.', 'manusia serigala')
    RETURNING id INTO v_8987_manusia_serigala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '莫大', 'sangat-besar', 25, 153, 'Sesuatu yang <kanji>tak ada habisnya</kanji> <kanji>besar</kanji> bukan hanya besar, tapi <vocabulary>huge</vocabulary> dan <vocabulary>enormous</vocabulary>.

Kata ini sering digunakan dalam konteks yang melibatkan uang, namun bisa juga digunakan untuk hal lain seperti waktu, tenaga, dan data.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sangat besar, Sangat besar')
    RETURNING id INTO v_9029_sangat_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '岡山城', 'kastil-okayama', 25, 154, 'Ini adalah 岡山 yang sama yang Anda pelajari dengan 岡山県. Jadi, apa itu <kanji>kastil</kanji> Okayama? Yap, <vocabulary>Kastil Okayama</vocabulary>!', 'Ketika 城 ditambahkan ke nama tempat seperti ini, dibutuhkan on''yomi. Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda:

Penguasa <vocabulary>Kastil Okayama</vocabulary> tidak lain adalah <reading>Joe</reading> (じょう), teman buruh tani setempat. Bagaimana seorang buruh tani seperti Joe berhasil menjadi penguasa kastil Jepang berada di luar jangkauan kita, tapi bagi Anda sekarang adalah Lord Joe.', 'Kastil Okayama')
    RETURNING id INTO v_9041_kastil_okayama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜毎に', 'untuk-setiap', 25, 155, 'Tambahkan に ke <kanji>setiap</kanji> dan Anda mendapatkan <vocabulary>untuk setiap</vocabulary>. Ini berarti sesuatu terjadi <vocabulary>pada interval</vocabulary> jangka waktu atau pencapaian tertentu, seperti <vocabulary>sekali setiap</vocabulary> tahun, bulan, hari, dll.!

Perhatikan bahwa ini sering kali ditulis dalam hiragana, tetapi Anda juga akan menemukan versi kanji, terutama jika mengikuti angka.', 'Ini menggunakan pembacaan kun''yomi dari 毎, yang belum Anda pelajari, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Untuk setiap</vocabulary> kanji yang Anda bakar, Anda <reading>pergi ke</reading> (ごと) Tokyo Disneyland sebagai hadiah. Ini kebiasaan yang mahal, tapi menurut saya Anda pantas mendapatkannya.', 'Untuk Setiap, Pada Interval Dari, Sekali Setiap')
    RETURNING id INTO v_9091_untuk_setiap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '現役', 'aktif-bekerja', 25, 156, 'Saat <kanji>saat ini</kanji> Anda menyediakan <kanji>layanan</kanji>, sehingga Anda <vocabulary>aktif bekerja</vocabulary>. 現役 berarti Anda mempunyai peran tertentu (seperti guru sekolah atau siswa sekolah menengah, dll.) dan Anda masih <vocabulary>aktif</vocabulary> dalam peran tersebut, bukannya sudah pensiun atau sudah lulus.

Kata ini juga sering digunakan untuk menggambarkan siswa yang sedang mengikuti atau lulus ujian masuk universitas saat masih duduk di bangku SMA.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda mempelajari cara membaca 現 , tetapi 役 menggunakan cara membaca yang kurang umum, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Anda <vocabulary>aktif bekerja</vocabulary> di <reading>駅</reading> (えき) dan Anda berencana untuk tetap <vocabulary>aktif</vocabulary> di sana selamanya! Anda benar-benar menyukainya 駅, sepertinya Anda tidak dapat dipisahkan.', 'Aktif Bekerja, Aktif')
    RETURNING id INTO v_9242_aktif_bekerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肩こり', 'kekakuan-bahu', 25, 157, 'Kalau bahumu sedikit こり, artinya kamu mengalami <vocabulary>bahu kaku</vocabulary> atau <vocabulary>leher kaku</vocabulary>. 

こり di sini adalah versi nominal dari kata kerja こる, yang artinya "menjadi kaku", jadi mungkin itu bisa membantumu mengingatnya!', 'Anda sudah tahu cara membaca 肩, dan ini hanya dengan tambahan hiragana!', 'Kekakuan Bahu, Bahu Kaku, Leher kaku')
    RETURNING id INTO v_9248_kekakuan_bahu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '素直', 'jujur', 25, 158, 'Ingat bagaimana 直 juga bisa berarti "langsung?" Nah, jika seseorang memiliki <kanji>elemen</kanji> yang <kanji>keterusterangan</kanji> pada dirinya, kemungkinan besar dia adalah orang yang <vocabulary>jujur</vocabulary> dan <vocabulary>terbuka</vocabulary>.

素直 biasanya menggambarkan seseorang yang tulus, terbuka secara emosional, mau mendengarkan, dan tidak keras kepala. Dalam beberapa konteks, ini juga bisa menyiratkan seseorang yang patuh atau patuh. Misalnya, seorang anak yang selalu melakukan apa yang diperintahkan tanpa keberatan mungkin disebut 素直.', 'Pembacaan untuk ini agak aneh. Ia menggunakan on''yomi untuk 素, lalu menggunakan kun''yomi untuk 直. Anda tahu kedua bacaannya, tapi semuanya agak aneh, jadi inilah mnemonik yang bisa membantu Anda:

Jika Anda <vocabulary>jujur</vocabulary> dan <vocabulary>terbuka</vocabulary> pada diri sendiri, Anda tahu inilah saatnya untuk <reading>menuntut sekarang</reading> (すなお). Apa yang dilakukan orang itu terhadap Anda… mereka pasti pantas untuk dituntut, sekarang. Jangan mencoba mengabaikannya, jangan biarkan mereka membungkam Anda. <vocabulary>patuh</vocabulary> pada perasaan Anda dan tuntut sekarang!', 'Jujur, Di muka, Patuh')
    RETURNING id INTO v_9280_jujur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年配', 'tua', 25, 159, 'Saat <kanji>tahun</kanji> <kanji>didistribusikan</kanji>d, Anda perlahan-lahan berubah menjadi <vocabulary>lansia</vocabulary> <vocabulary>senior</vocabulary>, bangga dengan <vocabulary>usia tua</vocabulary> Anda.

Kata ini digunakan untuk mendeskripsikan dengan sopan orang lanjut usia, seperti dalam 年配の方 atau 年配者.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.はい menjadi ぱい, karena… orang lanjut usia menyukai <reading>pie</reading> (ぱい), bukan?', 'Tua, Senior, Usia Tua')
    RETURNING id INTO v_9330_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜の様に', 'begitu-pula-dengan', 25, 160, 'Anda telah mempelajari 様 adalah "nama formal ender", namun bisa juga berarti <kanji>cara</kanji>. Saat Anda melampirkan ini ke kata benda lain dengan の dan menambahkan に di akhir untuk menjadikannya kata keterangan, Anda dapat mendeskripsikan sesuatu yang dilakukan <vocabulary>mirip to</vocabulary> atau <vocabulary>dengan cara yang sama seperti</vocabulary> sesuatu yang lain. Dengan kata lain, sesuatu di dalamnya <vocabulary>seperti</vocabulary> hal lainnya — hampir <vocabulary>seolah-olah</vocabulary> keduanya adalah satu dan sama!', 'Meskipun kata ini bukan kata majemuk, 様 sebenarnya menggunakan on''yomi di sini. Karena Anda tidak mempelajari on''yomi dengan kanji, berikut ini mnemonik untuk membantu Anda:

Banyak makanan yang dibuat <vocabulary>mirip dengan</vocabulary> <reading>yo</reading>gurt (よう): kefir, skyr, lassi… Daftarnya terus bertambah. Apa itu? Itu hanya subkategori yogurt, katamu? Tidak tidak tidak. Mereka dibuat <vocabulary>dengan cara yang sama seperti</vocabulary> yogurt dan rasanya sangat <vocabulary>seperti</vocabulary> yogurt, tapi itu bukan yogurt. Yogurt berdiri sendiri.', 'Begitu pula dengan, Dengan Cara Yang Sama Seperti, Menyukai, Seolah olah')
    RETURNING id INTO v_9365_begitu_pula_dengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '行方', 'dimana', 25, 161, 'Jika Anda <kanji>pergi</kanji> ke <kanji>arah</kanji> acak, orang lain mungkin kehilangan jejak <vocabulary>keberadaan</vocabulary> Anda. Pastikan Anda menelepon ke rumah dan memberi tahu semua orang keberadaan Anda begitu Anda tiba di mana pun Anda pergi.

行方 berarti kemana perginya seseorang atau sesuatu, apalagi jika tidak diketahui keberadaannya. Anda pasti sering mendengarnya pada frasa 行方不明 (hilang). Kata ini juga dapat digunakan secara lebih abstrak untuk berbicara tentang bagaimana segala sesuatunya akan terjadi di masa depan, seperti 計画の行方 (nasib rencana), dengan penekanan pada hasil yang belum diketahui.', 'Pembacaan kata ini, ゆくえ, menggunakan pembacaan yang tidak teratur dari kedua kanji, jadi inilah mnemonik yang akan membantu Anda mengingatnya:

Jika seseorang tidak mengetahui <vocabulary>keberadaan</vocabulary> Anda, mereka mungkin akan melakukan "<reading>you que</reading>st" (ゆくえ) — dengan kata lain, sebuah pencarian untuk menemukan <em>ANDA</em>. Selalu pastikan Anda selalu memberi tahu orang yang Anda kasihi tentang keberadaan Anda sehingga mereka tidak melakukan "pencarian" gila apa pun.', 'Dimana, Kemana Seseorang Telah Pergi, Dimana Sesuatu Telah Hilang')
    RETURNING id INTO v_9466_dimana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頭突き', 'headbutt', 25, 162, 'Kita mempunyai kombinasi <kanji>kepala</kanji> dan bentuk kata benda 突く, yang artinya "menusuk", "menusuk", atau "menusuk". Apa sebutannya saat Anda menggunakan kepala untuk menusuk seseorang? Sebuah <vocabulary>headbutt</vocabulary>.', '突 menggunakan bacaan yang kamu pelajari dengan 突く, jadi kamu harusnya mahir dalam hal itu. Namun, 頭 menggunakan pembacaan on''yomi, yang tidak Anda pelajari dengan kanji. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Kamu cenderung melakukan <vocabulary>headbutt</vocabulary> saat berada di <reading>kebun binatang</reading> (ず). Anda selalu merasa perlu untuk membuktikan dominasi Anda terhadap hewan-hewan di kebun binatang, jadi Anda berlarian di sekitar papan tanda, kandang, dan pengunjung kebun binatang lainnya. Anda biasanya berhasil menakuti mamalia yang lebih kecil, tetapi Anda belum mendapatkan rasa hormat dari domba jantan bertanduk besar.', 'Headbutt')
    RETURNING id INTO v_9476_headbutt;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2642_bisnis_pemerintah, 'Bisnis Pemerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2642_bisnis_pemerintah, 'Bisnis Resmi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2847_bumi, 'Bumi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2847_bumi, 'Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2847_bumi, 'Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3699_karakter, 'Karakter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3699_karakter, 'Kepribadian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3741_divisi, 'Divisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3741_divisi, 'Segmen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3800_untuk_terlibat, 'Untuk Terlibat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3800_untuk_terlibat, 'Menjadi Terkait', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3800_untuk_terlibat, 'Untuk Terhubung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3994_akan_dibangun, 'Akan Dibangun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4013_menghormati, 'Menghormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4013_menghormati, 'Hak istimewa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4335_tahan_air, 'Tahan air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4335_tahan_air, 'Kedap air', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4336_pencegahan_kebakaran, 'Pencegahan Kebakaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4336_pencegahan_kebakaran, 'Pemadam Kebakaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4336_pencegahan_kebakaran, 'Bukti Kebakaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4539_kuitansi, 'Kuitansi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4539_kuitansi, 'Slip Konfirmasi Pengiriman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4539_kuitansi, 'Acara pengadilan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4569_kondisi, 'Kondisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4569_kondisi, 'Keadaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4569_kondisi, 'Situasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4578_untuk_menyelesaikan_sesuatu, 'Untuk Menyelesaikan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4578_untuk_menyelesaikan_sesuatu, 'Untuk Menyelesaikan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4744_membatasi, 'Membatasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4744_membatasi, 'Keterbatasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4747_untuk_membatasi, 'Untuk Membatasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4747_untuk_membatasi, 'Menjadi Terbatas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4749_tenggat_waktu, 'Tenggat waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4749_tenggat_waktu, 'Ketentuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4749_tenggat_waktu, 'Tenggat waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4750_tak_terbatas, 'Tak terbatas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4750_tak_terbatas, 'Tak terbatas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4763_untuk_menyerap, 'Untuk Menyerap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4764_untuk_dibagi, 'Untuk Dibagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4764_untuk_dibagi, 'Menjadi Terpisah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4764_untuk_dibagi, 'Untuk Istirahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4765_diskon, 'Diskon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4766_untuk_mempersiapkan, 'Untuk Mempersiapkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4766_untuk_mempersiapkan, 'Untuk Bersiap Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4767_untuk_bertekun, 'Untuk Bertekun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4767_untuk_bertekun, 'Untuk Melakukan Yang Terbaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4768_untuk_menarik_sesuatu_keluar, 'Untuk Menarik Sesuatu Keluar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4768_untuk_menarik_sesuatu_keluar, 'Untuk Memetik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4770_model_plastik, 'Model Plastik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4770_model_plastik, 'Model', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4770_model_plastik, 'Contoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4770_model_plastik, 'Model Skala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4772_bonusnya, 'Bonusnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4773_untuk_menyertakan, 'Untuk Menyertakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4773_untuk_menyertakan, 'Untuk Berisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4774_implikasi, 'Implikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4774_implikasi, 'Petunjuk Pada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4774_implikasi, 'Konotasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4774_implikasi, 'Saran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4775_bayangan, 'Bayangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4775_bayangan, 'Bayangan hitam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4776_resesi, 'Resesi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4777_untuk_menyeberang, 'Untuk Menyeberang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4777_untuk_menyeberang, 'Untuk Menyeberang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4777_untuk_menyeberang, 'Untuk Menyeberang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4779_untuk_gema, 'Untuk Gema', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4779_untuk_gema, 'Untuk Bergema', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4779_untuk_gema, 'Untuk bergema', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4780_pengaruh, 'Pengaruh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4781_suara, 'Suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4781_suara, 'Sebuah Suara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4782_untuk_memilih, 'Untuk Memilih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4783_pemandangan, 'Pemandangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4783_pemandangan, 'Penglihatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4783_pemandangan, 'Tontonan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4784_iklim_bisnis, 'Iklim Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4784_iklim_bisnis, 'Iklim Ekonomi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4784_iklim_bisnis, 'Situasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4788_untuk_menuntut, 'Untuk menuntut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4788_untuk_menuntut, 'Untuk Menuduh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4788_untuk_menuntut, 'Untuk Banding', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4788_untuk_menuntut, 'Untuk Mengeluh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4789_pengaduan_pidana, 'Pengaduan Pidana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4789_pengaduan_pidana, 'Tuduhan Formal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4789_pengaduan_pidana, 'Permintaan Penuntutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4790_gugatan, 'Gugatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4790_gugatan, 'Proses pengadilan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4791_menangkap, 'Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4792_untuk_melengkapi, 'Untuk Melengkapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4792_untuk_melengkapi, 'Untuk Mengkompensasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4793_calon, 'Calon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4793_calon, 'Pemohon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4794_iklim, 'Iklim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4795_cuaca, 'Cuaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4795_cuaca, 'Cuaca', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4796_iklim_musiman, 'Iklim Musiman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4796_iklim_musiman, 'Cuaca Musiman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4796_iklim_musiman, 'Musim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4797_untuk_peduli, 'Untuk Peduli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4797_untuk_peduli, 'Untuk Pikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4798_komposisi, 'Komposisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4798_komposisi, 'Struktur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4799_bagus, 'Bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4799_bagus, 'Cukup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4799_bagus, 'Lumayan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4799_bagus, 'Memadai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4800_pola, 'Pola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4802_segar, 'Segar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4803_jelas, 'Jelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4803_jelas, 'Bagus sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4803_jelas, 'Cemerlang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4804_ikan_segar, 'Ikan Segar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4805_menjadi_efektif, 'Menjadi Efektif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4805_menjadi_efektif, 'Untuk Bekerja Secara Efektif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4809_afiliasi, 'Afiliasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4809_afiliasi, 'Milik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4811_logam, 'Logam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4812_menjadi_biasa, 'Menjadi Biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4812_menjadi_biasa, 'Untuk Membiasakan Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4813_kebiasaan, 'Kebiasaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4813_kebiasaan, 'Kebiasaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4814_kaya, 'Kaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4814_kaya, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4814_kaya, 'Melimpah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4814_kaya, 'Kaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4815_montok, 'Montok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4815_montok, 'Bergambar Penuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4815_montok, 'Bahenol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4816_puas, 'Puas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4816_puas, 'Benar-benar Puas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4816_puas, 'Kepuasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4817_bulan_purnama, 'Bulan purnama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4818_rumah_penuh, 'Rumah Penuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4818_rumah_penuh, 'Tidak Ada Kamar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4818_rumah_penuh, 'Penuh Selai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4819_skor_sempurna, 'Skor Sempurna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4820_kegemukan, 'Kegemukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4821_pupuk, 'Pupuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4821_pupuk, 'Pupuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4822_untuk_berguling, 'Untuk Berguling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4822_untuk_berguling, 'Ke Angin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4822_untuk_berguling, 'Untuk Membungkus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4822_untuk_berguling, 'Untuk Menggulung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4823_satu_jilid, 'Satu Jilid', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4823_satu_jilid, 'Jilid Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4824_jilid_terakhir, 'Jilid Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4824_jilid_terakhir, 'Jilid Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4825_jilid_pertama, 'Jilid Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4826_jilid_kedua, 'Jilid Kedua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4826_jilid_kedua, 'Dua Jilid', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4827_untuk_mencari, 'Untuk Mencari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4827_untuk_mencari, 'Untuk Mencari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4828_investigasi_kriminal, 'Investigasi Kriminal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4828_investigasi_kriminal, 'Pemburuan orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4829_pembunuhan_dengan_mencekik, 'Pembunuhan Dengan Mencekik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4829_pembunuhan_dengan_mencekik, 'Mencekik Sampai Mati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4830_untuk_memeras, 'Untuk memeras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4830_untuk_memeras, 'Untuk memeras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4830_untuk_memeras, 'Untuk Mempersempit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4831_senior, 'Senior', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4831_senior, 'Lulusan yang lebih tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4831_senior, 'Unggul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4832_muda, 'Muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4832_muda, 'Junior seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4834_untuk_menyembunyikan_sesuatu, 'Untuk Menyembunyikan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4834_untuk_menyembunyikan_sesuatu, 'Untuk Menyembunyikan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4835_masa_pensiun, 'Masa pensiun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4835_masa_pensiun, 'Mundur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4836_untuk_menggantung_sesuatu, 'Untuk Menggantung Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4836_untuk_menggantung_sesuatu, 'Untuk Menggantung Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4837_untuk_mengganti, 'Untuk Mengganti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4837_untuk_mengganti, 'Untuk Pengganti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4837_untuk_mengganti, 'Untuk Beralih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4837_untuk_mengganti, 'Untuk Bertukar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4872_aktris, 'Aktris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4873_revolusioner, 'Revolusioner', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4873_revolusioner, 'Seorang Revolusioner', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4874_jaket_kulit, 'Jaket Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4875_prefektur_nagasaki, 'Prefektur Nagasaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4878_untuk_dipanggil, 'Untuk Dipanggil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4879_untuk_ditunjukkan, 'Untuk Ditunjukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4879_untuk_ditunjukkan, 'Untuk Mengungkapkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4880_pemandangan, 'Pemandangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4880_pemandangan, 'Lanskap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4880_pemandangan, 'Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4885_untuk_ada, 'Untuk Ada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4885_untuk_ada, 'Menjadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4896_kartu_nama, 'Kartu Nama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5064_gaji, 'Gaji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5064_gaji, 'Gaji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5064_gaji, 'Membayar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5067_pemotongan_gaji, 'Pemotongan Gaji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5077_seppuku, 'Seppuku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5077_seppuku, 'Ritual Bunuh Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5077_seppuku, 'Bunuh Diri Dengan Mengeluarkan Isi Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5189_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5189_sangat, 'Tanpa Gagal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5189_sangat, 'Tanpa syarat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5191_putus_asa, 'Putus asa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5191_putus_asa, 'Keputusasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5607_terlambat, 'Terlambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5607_terlambat, 'Sekarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6529_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6529_pakaian, 'Lapisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6529_pakaian, 'berkembang biak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6996_dingin, 'Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6996_dingin, 'Menyegarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7600_untuk_diperhatikan, 'Untuk Diperhatikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7600_untuk_diperhatikan, 'Untuk Survei', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7600_untuk_diperhatikan, 'Untuk Melihat Sekilas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7654_biasa, 'Biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7654_biasa, 'Tertib', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7654_biasa, 'Sistematis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7712_guru, 'guru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7712_guru, 'Pelatih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7712_guru, 'Guru Swasta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7713_ketidakteraturan, 'Ketidakteraturan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7713_ketidakteraturan, 'Tidak teratur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7713_ketidakteraturan, 'Kacau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7724_untuk_mencatat, 'Untuk Mencatat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7724_untuk_mencatat, 'Untuk Meluncurkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7724_untuk_mencatat, 'Untuk Menjatuhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7724_untuk_mencatat, 'Untuk Menurunkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7724_untuk_mencatat, 'Untuk Menurunkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7759_akan_berakhir, 'Akan Berakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7759_akan_berakhir, 'Untuk Mati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7759_akan_berakhir, 'Untuk Mengakhiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7767_gema, 'Gema', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7767_gema, 'Gema', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7767_gema, 'Pengaruh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7767_gema, 'Kumandang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7767_gema, 'Reaksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8680_untuk_menyimpan, 'Untuk Menyimpan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8680_untuk_menyimpan, 'Untuk Mencapai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8680_untuk_menyimpan, 'Untuk Mencetak Skor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8716_untuk_meningkatkan, 'Untuk Meningkatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8716_untuk_meningkatkan, 'Untuk Tumbuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8756_perkalian, 'Perkalian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8809_untuk_melampaui, 'Untuk Melampaui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8809_untuk_melampaui, 'Ke Unggul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8905_untuk_mencekik, 'Untuk Mencekik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8987_manusia_serigala, 'manusia serigala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9029_sangat_besar, 'Sangat besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9029_sangat_besar, 'Sangat besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9041_kastil_okayama, 'Kastil Okayama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9091_untuk_setiap, 'Untuk Setiap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9091_untuk_setiap, 'Pada Interval Dari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9091_untuk_setiap, 'Sekali Setiap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9242_aktif_bekerja, 'Aktif Bekerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9242_aktif_bekerja, 'Aktif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9248_kekakuan_bahu, 'Kekakuan Bahu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9248_kekakuan_bahu, 'Bahu Kaku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9248_kekakuan_bahu, 'Leher kaku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9280_jujur, 'Jujur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9280_jujur, 'Di muka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9280_jujur, 'Patuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9330_tua, 'Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9330_tua, 'Senior', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9330_tua, 'Usia Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9365_begitu_pula_dengan, 'Begitu pula dengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9365_begitu_pula_dengan, 'Dengan Cara Yang Sama Seperti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9365_begitu_pula_dengan, 'Menyukai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9365_begitu_pula_dengan, 'Seolah olah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9466_dimana, 'Dimana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9466_dimana, 'Kemana Seseorang Telah Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9466_dimana, 'Dimana Sesuatu Telah Hilang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9476_headbutt, 'Headbutt', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2642_bisnis_pemerintah, 'こうよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2847_bumi, 'ち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3699_karakter, 'じんかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3741_divisi, 'くぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3800_untuk_terlibat, 'かかわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3994_akan_dibangun, 'たつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4013_menghormati, 'こうえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4335_tahan_air, 'ぼうすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4336_pencegahan_kebakaran, 'ぼうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4539_kuitansi, 'じゅりょうしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4569_kondisi, 'じょうきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4578_untuk_menyelesaikan_sesuatu, 'すます', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4744_membatasi, 'げんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4747_untuk_membatasi, 'かぎる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4749_tenggat_waktu, 'きげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4750_tak_terbatas, 'むげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4763_untuk_menyerap, 'きゅうしゅうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4764_untuk_dibagi, 'われる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4765_diskon, 'わりびき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4766_untuk_mempersiapkan, 'じゅんびする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4767_untuk_bertekun, 'がんばる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4768_untuk_menarik_sesuatu_keluar, 'ぬく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4770_model_plastik, 'もけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4772_bonusnya, 'しょうよきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4773_untuk_menyertakan, 'ふくむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4774_implikasi, 'がんい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4775_bayangan, 'かげ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4776_resesi, 'ふきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4777_untuk_menyeberang, 'わたる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4779_untuk_gema, 'ひびく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4780_pengaruh, 'えいきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4781_suara, 'ひょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4782_untuk_memilih, 'とうひょうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4783_pemandangan, 'こうけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4784_iklim_bisnis, 'けいきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4788_untuk_menuntut, 'うったえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4789_pengaduan_pidana, 'こくそ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4790_gugatan, 'そしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4791_menangkap, 'たいほ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4792_untuk_melengkapi, 'おぎなう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4793_calon, 'こうほしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4794_iklim, 'きこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4795_cuaca, 'てんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4796_iklim_musiman, 'じこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4797_untuk_peduli, 'かまう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4798_komposisi, 'こうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4799_bagus, 'けっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4800_pola, 'もよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4802_segar, 'しんせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4803_jelas, 'あざやか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4804_ikan_segar, 'せんぎょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4805_menjadi_efektif, 'きく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4809_afiliasi, 'しょぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4811_logam, 'きんぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4812_menjadi_biasa, 'なれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4813_kebiasaan, 'しゅうかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4814_kaya, 'ゆたか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4815_montok, 'ほうまん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4816_puas, 'まんぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4817_bulan_purnama, 'まんげつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4818_rumah_penuh, 'まんいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4819_skor_sempurna, 'まんてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4820_kegemukan, 'ひまん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4821_pupuk, 'ひりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4822_untuk_berguling, 'まく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4823_satu_jilid, 'いっかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4824_jilid_terakhir, 'げかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4825_jilid_pertama, 'じょうかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4826_jilid_kedua, 'にかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4827_untuk_mencari, 'さがす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4828_investigasi_kriminal, 'そうさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4829_pembunuhan_dengan_mencekik, 'こうさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4830_untuk_memeras, 'しぼる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4831_senior, 'せんぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4832_muda, 'こうはい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4834_untuk_menyembunyikan_sesuatu, 'かくす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4835_masa_pensiun, 'いんきょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4836_untuk_menggantung_sesuatu, 'かける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4837_untuk_mengganti, 'かえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4872_aktris, 'じょゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4873_revolusioner, 'かくめいか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4874_jaket_kulit, 'かわじゃん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4874_jaket_kulit, 'かわジャン', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4875_prefektur_nagasaki, 'ながさきけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4878_untuk_dipanggil, 'よばれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4879_untuk_ditunjukkan, 'あらわす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4880_pemandangan, 'けしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4885_untuk_ada, 'いる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4896_kartu_nama, 'めいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5064_gaji, 'きゅうりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5067_pemotongan_gaji, 'げんきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5077_seppuku, 'せっぷく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5189_sangat, 'ぜったい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5191_putus_asa, 'ぜつぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5607_terlambat, 'いまさら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6529_pakaian, 'ころも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6529_pakaian, 'きぬ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6996_dingin, 'すずしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7600_untuk_diperhatikan, 'みわたす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7654_biasa, 'きそくただしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7712_guru, 'かていきょうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7713_ketidakteraturan, 'ふきそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7724_untuk_mencatat, 'おろす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7759_akan_berakhir, 'はてる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7767_gema, 'はんきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8680_untuk_menyimpan, 'おさめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8716_untuk_meningkatkan, 'ます', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8756_perkalian, 'かけざん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8809_untuk_melampaui, 'すぐれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8905_untuk_mencekik, 'しめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8987_manusia_serigala, 'じんろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9029_sangat_besar, 'ばくだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9041_kastil_okayama, 'おかやまじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9091_untuk_setiap, 'ごとに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9242_aktif_bekerja, 'げんえき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9248_kekakuan_bahu, 'かたこり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9280_jujur, 'すなお', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9330_tua, 'ねんぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9365_begitu_pula_dengan, 'のように', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9466_dimana, 'ゆくえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9476_headbutt, 'ずつき', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2642_bisnis_pemerintah, '今、公用でパリにきています。', 'Saya datang ke Paris sekarang untuk urusan resmi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2642_bisnis_pemerintah, 'これは公用のアカウントです。', 'Ini adalah akun resmi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2642_bisnis_pemerintah, 'オレたちがいただくのは公用の金だ。', 'Uang yang akan kita dapatkan adalah uang rakyat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2847_bumi, '雨のせいで地に水がたくさん入った。', 'Banyak air masuk ke dalam tanah karena hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2847_bumi, 'そのライオンは、大きなアフリカの地で生まれました。', 'Singa itu lahir di tanah luas Afrika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2847_bumi, 'ニックって、地に足がついてるよね。', 'Nick rendah hati, bukan begitu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3699_karakter, 'ビエトの人格を疑います！', 'Saya mempertanyakan karakter Viet!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3699_karakter, 'あの王様は人格者だ。', 'Raja itu adalah orang yang berintegritas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3699_karakter, '彼、ちょっと二重人格っぽいよね。', 'Sepertinya dia punya kepribadian ganda, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3741_divisi, 'この町では、校区が三区分に分けられています。', 'Di kota ini, distrik sekolah dibagi menjadi tiga divisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3741_divisi, 'これは予算区分の問題なので、私にはどうしようもありません。', 'Ini masalah klasifikasi anggaran, jadi saya tidak bisa berbuat apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3741_divisi, 'そういえば、マヤ文明の時代区分って、どうなっているんですか？　', 'Ngomong-ngomong, bagaimana struktur periodisasi peradaban Maya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3800_untuk_terlibat, 'ビエトがやばいそしきと係わっているのは知っているけど、そのはんざいに係わっていたとはやっぱり思えないんだよな。', 'Saya tahu Viet terlibat dengan organisasi berbahaya, tapi menurut saya dia masih tidak ada hubungannya dengan kejahatan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3800_untuk_terlibat, 'あのれん中には係わらない方がいいよ。', 'Jangan terlibat dengan orang-orang seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3800_untuk_terlibat, 'もし毒抜きをせずに河豚を食べたら、命に係わりますよ。', 'Jika Anda makan ikan buntal tanpa mengeluarkan racunnya, itu adalah masalah hidup dan mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3994_akan_dibangun, 'あそこには新しいビルが建つ予定です。', 'Sebuah gedung baru dijadwalkan akan dibangun di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3994_akan_dibangun, 'ようやくマイホームが建ちました！', 'Rumahku akhirnya dibangun!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3994_akan_dibangun, 'この土地には、昔から神社が建っています。', 'Sebuah kuil telah berdiri di tanah ini sejak lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4013_menghormati, 'こんなステキなチームで試合ができて光栄です。', 'Saya merasa terhormat bisa bermain di tim yang luar biasa ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4013_menghormati, 'この賞を受賞できたことは、私にとって大変光栄なことです。', 'Merupakan suatu kehormatan besar bagi saya untuk menerima penghargaan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4013_menghormati, 'ワニカニで働けることを、とても光栄に思っています。皆さんのお役に立てるよう努力していきます。どうぞよろしくお願いいたします。', 'Saya merasa sangat terhormat bisa bekerja di WaniKani. Saya akan berusaha untuk membantu semua orang. Terima kasih banyak atas dukungan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4335_tahan_air, '水害被災者達は、防水の家具をそろえておけばよかったと口をそろえて言いました。', 'Semua korban banjir mengatakan mereka berharap memiliki furnitur tahan air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4335_tahan_air, '完全防水するには、これを使うしかないよ。', 'Jika Anda ingin 100% kedap air, Anda tidak punya pilihan selain menggunakan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4335_tahan_air, 'この防水ブーツ、防水されているとはとても言えないな。この辺りを歩いてるだけで、足がビショビショになっちゃったよ。', 'Sepatu bot tahan air ini jauh dari kata tahan air. Kakiku basah kuyup karena hanya berjalan-jalan di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4336_pencegahan_kebakaran, '私なりの防火の心得を文章にまとめました。', 'Saya menuangkan pengetahuan saya tentang pencegahan kebakaran secara tertulis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4336_pencegahan_kebakaran, '木材にぬると完全防火するペンキを発明することができれば、大金持ちになれますよ。', 'Jika Anda mampu menemukan cat yang membuat kayu benar-benar tahan api, Anda bisa menjadi sangat kaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4336_pencegahan_kebakaran, 'トーフグはどのくらいの頻度で防火訓練を実施しますか？', 'Seberapa sering Tofugu mengadakan latihan kebakaran?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4539_kuitansi, '配達が完了したら、配達先から受領書を忘れずに受け取ってください。', 'Jika pengiriman sudah selesai, jangan lupa untuk mengambil slip konfirmasi pengiriman dari penerima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4539_kuitansi, '先週購入されたトーフグ製品の受領書を送って頂けませんか？', 'Bisakah Anda mengirimkan saya tanda terima produk Tofugu yang Anda beli dari kami minggu lalu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4539_kuitansi, '押す場所を間違えて何度も判をついたから、受領書が判子だらけになっちゃった。', 'Saya salah stempel di tempat berkali-kali kuitansinya ditutupi stempel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4569_kondisi, 'しっかりしろよ。状況はお前が思っているほど悪くないみたいだぜ。', 'Dapatkan pegangan! Situasinya tidak seburuk yang Anda kira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4569_kondisi, 'どろぼうを警察に渡した時の状況についてくわしく教えてください。', 'Tolong jelaskan secara rinci situasi ketika Anda menyerahkan pencuri itu ke polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4569_kondisi, 'ビルは状況の分析をするのが上手い。', 'Bill pandai menganalisis situasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4578_untuk_menyelesaikan_sesuatu, '買い物はオンラインで済ますことが多いです。', 'Saya sering berbelanja secara online.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4578_untuk_menyelesaikan_sesuatu, 'トイレは法律事務所で済ましてきました。', 'Saya pergi ke kamar mandi di kantor hukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4578_untuk_menyelesaikan_sesuatu, 'えっ、「ごめん」で済ますつもり？', 'Hah? Anda pikir Anda akan keluar dari ini hanya dengan "maaf"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4578_untuk_menyelesaikan_sesuatu, '出かける前に用事を済まさなきゃなんだよね。', 'Saya harus mengurus suatu keperluan sebelum pergi keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4744_membatasi, '限界を決めるのは、いつも自分自身なんですよ。', 'Orang yang menetapkan batasan selalu adalah diri Anda sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4744_membatasi, '仕事で限界まで自分を追いつめてしまい、今はちょっと休みを取っています。', 'Saya sedang istirahat sejenak dari pekerjaan sekarang karena saya terjatuh ke tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4744_membatasi, 'その野球選手は、自分の限界を感じて引退した。', 'Pemain baseball tersebut pensiun ketika dia merasa telah mencapai batas kemampuannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4747_untuk_membatasi, 'やっぱり、日本語の勉強はトーフグに限るよ。', 'Lagi pula, tidak ada yang bisa mengalahkan Tofugu dalam hal belajar bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4747_untuk_membatasi, 'こういう時に限って、忘れ物をしてしまう。', 'Hanya di saat seperti inilah aku melupakan sesuatu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4747_untuk_membatasi, 'あの新しいレストランは、料理は美味しいけどメニューが限られている。', 'Makanan di restoran baru itu enak, tapi menunya terbatas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4747_untuk_membatasi, 'ビエトが警察に追われるのは今回に限ったことではない。', 'Tak sebatas kali ini saja Viet dikejar polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4747_untuk_membatasi, 'お風呂の後はビールに限る！', 'Tidak ada yang mengalahkan bir setelah mandi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4749_tenggat_waktu, 'レポートの提出期限、いつだっけ？', 'Kapan esai itu jatuh tempo?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4749_tenggat_waktu, '期限を設けて仕事をしないと、いつまでたっても終わらないと思うんです。', 'Jika kami tidak menetapkan tenggat waktu untuk pekerjaan kami, saya rasa pekerjaan kami tidak akan pernah selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4749_tenggat_waktu, 'ビザの期限が切れるので、来月日本を出なくてはいけません。', 'Saya harus meninggalkan Jepang bulan depan karena visa saya akan habis masa berlakunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4750_tak_terbatas, '若者には、無限の可能性がある。', 'Kaum muda mempunyai kemungkinan yang tidak terbatas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4750_tak_terbatas, 'この世に無限なものなんてある？', 'Apakah ada sesuatu yang tidak terbatas di dunia ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4750_tak_terbatas, '今は絶好調のように思えるが、需要は無限には増加しないだろう？', 'Situasinya tampak cerah saat ini, namun permintaan tidak akan meningkat tanpa batas waktu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4763_untuk_menyerap, 'このオムツはどんな量のおしっこでも難なく吸収してくれる優れものです。', 'Popok ini sangat bagus karena dapat menyerap air kencing sebanyak apa pun tanpa masalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4763_untuk_menyerap, 'あの新人、新しいことを何でもすぐに吸収しちゃうから、あだ名がスポンジになったんだ。', 'Pekerja baru itu bisa menyerap sesuatu yang baru dengan sangat cepat, sehingga julukannya menjadi “spons”.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4763_untuk_menyerap, '全社員が新システムに関する知識を吸収する良い機会です。', 'Ini adalah peluang besar bagi seluruh pekerja untuk menyerap pengetahuan tentang sistem baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4764_untuk_dibagi, 'ガラス製のフグの置物が、テーブルから落ちて割れてしまった。', 'Ornamen kaca fugu jatuh dari meja dan pecah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4764_untuk_dibagi, 'プロジェクトの進め方について、メンバーの意見が真っ二つに割れてしまった。 ', 'Mengenai pendekatan terhadap proyek ini, pendapat para anggota terbagi menjadi dua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4764_untuk_dibagi, '「大変なことが起こった！」 「どうしたの？」「朝起きたらおしりが二つに割れていたんだ！」「なんだ、そんなこと？私なんか五つに割れているわよ。」	 ', '"Sesuatu yang buruk telah terjadi!" "Ada apa?" "Saat aku bangun, pantatku terbelah menjadi dua!" "Oh, itu bukan masalah besar. Bokongku terbelah menjadi lima."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4764_untuk_dibagi, 'ついに犯人の身元が割れたぞ！', 'Kami akhirnya mengungkap identitas penjahatnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4764_untuk_dibagi, '大便がしたくてたまらなかった彼は、ドアを拳で割れるほど強く叩いた。', 'Dia sangat ingin buang air besar hingga dia hampir mendobrak pintu karena menggedor-gedornya dengan tinjunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4765_diskon, '二割引の値札が付いてたはずですよ。', 'Saya yakin ada label yang bertuliskan diskon 20%.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4765_diskon, 'このスーパーでは、火曜日は学生証を持っている人は5%割引になります。', 'Di supermarket ini, pada hari Selasa, masyarakat yang memiliki ID pelajar mendapat diskon 5%.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4765_diskon, 'あの大きな型の冷蔵庫を買いたいんですが、一割でもいいんで割引してもらえませんか。', 'Saya ingin membeli kulkas berukuran besar itu. Bisakah Anda menambahkan diskon? 10% sudah cukup bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4765_diskon, 'ちょうどホームページへ割引クーポンの追加をしようと思ってたところだよ。', 'Saya akan mulai menambahkan kupon diskon ke situs web.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4766_untuk_mempersiapkan, '今日は金曜日だからお弁当を準備しなくちゃ。', 'Karena ini hari Jumat, aku perlu menyiapkan bento.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4766_untuk_mempersiapkan, '準備する前に先に朝ご飯食べちゃいなさい。', 'Selesaikan sarapan Anda sebelum bersiap-siap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4766_untuk_mempersiapkan, '新居を準備するのにかかる費用はいくらぐらいですか。', 'Kira-kira berapa biaya untuk menyiapkan rumah baru?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4767_untuk_bertekun, '「そのまま頑張って。あなたなら大丈夫よ。」', 'Bertahanlah, kamu bisa melakukan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4767_untuk_bertekun, '最近は、自分でシャツのボタンを掛けようと頑張っています。', 'Baru-baru ini, dia mencoba yang terbaik untuk mengancingkan kemejanya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4767_untuk_bertekun, '医者から規則正しい生活をして規則正しく食事をするようアドバイスされたので、今頑張っているんです。', 'Dokter saya menyarankan saya untuk menjalani hidup teratur dan makan secara teratur, jadi saya bekerja keras untuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4768_untuk_menarik_sesuatu_keluar, 'ワサビは抜いてもらえますか？', 'Bisakah Anda meninggalkan wasabi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4768_untuk_menarik_sesuatu_keluar, 'トゲを抜きたいんだけど、ピンセットどこにあるか知らない？', 'Saya ingin mencabut serpihannya, tahukah Anda di mana pinsetnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4768_untuk_menarik_sesuatu_keluar, '今日は親知らずを一気に四本抜きました。ワインのコルクを抜くみたいに、ポンッと抜けたよ！', 'Hari ini saya mencabut empat gigi bungsu sekaligus.  Mereka muncul seperti menarik gabus dari botol anggur!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4768_untuk_menarik_sesuatu_keluar, 'いやー、まさかお前が一位のランナーを抜くことができるとは！びっくりだよ。', 'Yah, saya tidak pernah berpikir Anda bisa menyalip pelari pertama! saya terkejut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4768_untuk_menarik_sesuatu_keluar, 'エアマットレスの空気を抜くのに気を取られて、バスタブの水を抜くの忘れてた。', 'Saking asyiknya mengangin-anginkan kasur udara hingga lupa mengalirkan air dari bak mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4770_model_plastik, 'おじいちゃんが、模型の飛行機を作ってくれたんだ。', 'Kakek saya membuatkan model pesawat untuk saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4770_model_plastik, '弟は模型を組み立てるのが得意です。', 'Adikku pandai merakit model.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4770_model_plastik, '祖父は、最初は従業員一人の小売模型店からこのビジネスを始めました。', 'Kakek saya memulai bisnisnya sebagai toko ritel model yang dikelola sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4772_bonusnya, '賞与金の話を聞いて、急に勉強する気になりました。', 'Saya merasakan dorongan untuk belajar setelah mendengar tentang bonus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4772_bonusnya, 'こんなに賞与金を出してくれるなんて、お前の会社は気前が良いんだなぁ。', 'Anda mendapat bonus sebanyak ini? Perusahaan Anda murah hati, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4772_bonusnya, '給料日は毎月五日と二十日で、会社の業績次第で賞与金が年末に支払われます。', 'Hari gajian kami adalah tanggal lima dan dua puluh setiap bulan, dan bonus dapat dibayarkan pada akhir tahun tergantung pada seberapa baik kinerja perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4773_untuk_menyertakan, 'この料金は、消費税を含みます。', 'Harga ini sudah termasuk pajak konsumsi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4773_untuk_menyertakan, '水銀を含むゴミは別に分けて出してください。', 'Harap pisahkan sampah yang mengandung merkuri dengan sampah lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4773_untuk_menyertakan, 'このマーガリンには、トランス脂肪酸は含まれていません。', 'Margarin ini tidak mengandung lemak trans.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4773_untuk_menyertakan, 'アルカリを含む温泉にはどのような効能があるのですか？', 'Apa saja manfaat sumber air panas yang mengandung alkali?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4774_implikasi, '言葉の使い方によって、政治的な含意が生じることがある。', 'Penggunaan bahasa terkadang dapat menimbulkan implikasi politik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4774_implikasi, '作者はこのタイトルにどんな含意を込めたのだろうか。', 'Entah implikasi apa yang penulis masukkan ke dalam judul ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4774_implikasi, 'そのタイミングで首相がその国を訪問したことには、大きな含意があった。', 'Ada implikasi yang signifikan dalam kunjungan perdana menteri ke negara tersebut pada waktu tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4774_implikasi, '誰にとっても含意を汲み取るのは難しいことだが、やはり人の言葉の含意を読み取ることが上手い人は出世しやすい傾向にあると言えるだろう。', 'Sulit bagi siapa pun untuk memahami implikasinya, namun dapat dikatakan bahwa orang yang pandai membaca implikasi dari perkataan orang lain cenderung berhasil dalam kariernya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4775_bayangan, '「もしやお化け？」「いや、ただの影でしょ。」', '"Apakah itu hantu?" “Tidak, itu hanya bayangan.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4775_bayangan, 'コウイチの後ろに黒い影がしのびよった。', 'Sebuah bayangan hitam merayap di belakang Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4775_bayangan, 'ワニカニのレビューをさぼると、忘れた漢字の影が近づいてくる…', 'Saat saya melewatkan ulasan WaniKani, bayangan kanji yang terlupakan semakin dekat…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4776_resesi, '不況の影響で、多くの企業が倒産した。', 'Akibat resesi, banyak perusahaan yang bangkrut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4776_resesi, '不況時に金の価格は上昇しやすい。', 'Harga emas cenderung naik saat resesi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4776_resesi, 'ワニカニは独特の思想を布教する一種のカルトのような日本語学習サイトなので、不況の中でも信者たちが支えてくれている。', 'Sebagai tempat pembelajaran bahasa Jepang dengan ideologi yang khas, WaniKani menyerupai sejenis aliran sesat, dan bahkan di saat ekonomi terpuruk, para peminatnya memberikan dukungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4777_untuk_menyeberang, 'ベトナムでは道を渡るのも一苦労です。', 'Di Vietnam, menyeberang jalan pun sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4777_untuk_menyeberang, 'ちゃんと横断歩道を渡ってください。', 'Silakan gunakan penyeberangan pejalan kaki untuk menyeberang jalan dengan benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4777_untuk_menyeberang, '橋を渡り終わったところで、右に曲がって下さい。', 'Setelah melewati jembatan, silakan belok kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4777_untuk_menyeberang, 'コウイチ、やめときなよ。いくらビエトが手伝ってくれるからって、泳いで太平洋を渡るなんて無理だって。', 'Hei, menyerahlah, Koichi. Bahkan jika Viet mau membantu Anda, mustahil untuk berenang dan menyeberangi samudra pasifik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4779_untuk_gema, '父の低い声が部屋中に響いた。', 'Suara rendah ayahku bergema di seluruh ruangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4779_untuk_gema, '動画が終わった後も、アリアナ・グランデの歌声が私の心にずっと響いていました。', 'Suara nyanyian Ariana Grande bergema di hati saya bahkan lama setelah videonya berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4779_untuk_gema, '大きな契約を勝ち取るには、顧客の心に響く素晴らしい提案書が必要だ。', 'Untuk memenangkan kontrak besar, kami memerlukan proposisi bisnis hebat yang dapat diterima di hati pelanggan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4780_pengaruh, '今、私が仕事を辞めても生活に影響はない。', 'Bahkan jika saya berhenti dari pekerjaan saya sekarang, hal itu tidak berpengaruh pada hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4780_pengaruh, 'トーフグが大企業に吸収されたら、私達にはどんな影響があると思う？', 'Jika Tofugu ditelan oleh sebuah bisnis besar, menurut Anda apa pengaruhnya terhadap kita?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4780_pengaruh, '残業は健康に悪影響を及ぼす可能性があるということを考えた方がいいですよ。', 'Anda harus mempertimbangkan bahwa bekerja lembur mungkin berdampak negatif pada kesehatan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4781_suara, '当選にはあと百票届かなかった。', 'Mereka kekurangan seratus suara untuk terpilih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4781_suara, 'どうやってそんなに大量の票をゲットしたの？', 'Bagaimana Anda bisa mendapatkan suara sebanyak itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4781_suara, 'そのアイドルは、総選挙で自分が得票数１位になったとき、とてもうれしそうに笑った。', 'Sang idola tersenyum bahagia saat menjadi penerima suara terbanyak dalam pemilihan umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4781_suara, 'コウイチは票の大半を得て相手候補者に圧勝し、アメリカ合衆国の大統領となった。', 'Koichi mengalahkan kandidat lainnya dengan suara terbanyak dan menjadi Presiden Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4782_untuk_memilih, '今回の選挙でも投票するつもり？', 'Apakah Anda berencana untuk memberikan suara pada pemilu ini juga?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4782_untuk_memilih, '住民票を移すのを忘れてたので、この町ではまだ投票できないんです。', 'Saya lupa memindahkan tempat tinggal saya, jadi saya belum bisa memilih di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4782_untuk_memilih, 'この会社では、毎年CEOを選ぶために全社員が投票することになっている。', 'Di perusahaan ini, setiap tahunnya seluruh pekerja harus melakukan pemungutan suara untuk memilih CEO.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4783_pemandangan, '毎日のように見ている光景なのに、それまで全く気づかなかったよ。', 'Itu adalah pemandangan yang kulihat setiap hari, namun aku tidak menyadarinya sama sekali hingga saat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4783_pemandangan, 'みなさんの心に深く残っている光景を教えてください。', 'Tolong beritahu saya tentang sebuah kejadian yang sangat membekas di hati Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4783_pemandangan, 'このような絵のように美しい光景は今までみたことがありません。', 'Saya belum pernah melihat tontonan seindah ini sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4783_pemandangan, 'あはは、これは中々シュールな光景だね。', 'Ahaha, sungguh pemandangan yang tidak nyata, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4784_iklim_bisnis, '日本の景況感が大きく上向くのは、まだまだ先のことだろう。', 'Butuh waktu lama sebelum kepercayaan bisnis di Jepang meningkat secara signifikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4784_iklim_bisnis, '銀行で働く友人に電話を掛けて、景況を聞きました。', 'Saya menelepon seorang teman yang bekerja di bank dan bertanya tentang iklim bisnis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4784_iklim_bisnis, '本レポートは、国内中小企業の景況動向について取りまとめたものです。', 'Laporan ini merangkum iklim usaha dalam negeri, usaha kecil dan menengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4784_iklim_bisnis, 'コウイチに聞いても教えてくれないので、マミにトーフグの景況についてこっそり教えてもらいました。', 'Koichi tidak mau memberitahuku tentang iklim ekonomi di Tofugu, jadi aku meminta Mami memberitahuku secara diam-diam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4784_iklim_bisnis, 'ジム・ロジャーズ氏は、日本の実際の景況感を自分の目で確認するために来日したのでしょう。', 'Tuan Jim Rogers kemungkinan besar datang ke Jepang untuk menilai kondisi perekonomian aktual negara tersebut dengan matanya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4788_untuk_menuntut, 'その記者は、記事を通して男女不平等について社会に訴えつづけました。', 'Jurnalis ini terus-menerus menghimbau terhadap ketidaksetaraan gender di masyarakat melalui artikel-artikelnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4788_untuk_menuntut, '多くの女子社員がセクハラを訴えたため、私の直属の上司は首になりました。', 'Atasan langsung saya diberhentikan karena banyak pekerja perempuan yang mengeluhkan pelecehan seksual yang dialaminya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4788_untuk_menuntut, 'サーモンはフグの不倫相手を訴えることにした。', 'Salmon memutuskan untuk menuntut pasangan Fugu yang berzina.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4789_pengaduan_pidana, 'あいつら、ビエトの組に対する告訴の手続きをしているみたいだぜ。', 'Rupanya mereka mengajukan tuntutan pidana terhadap kelompok yakuza Viet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4789_pengaduan_pidana, 'まだ告訴内容を聞いていないので分かりません。', 'Saya belum tahu karena saya belum mendengar detail tuntutan pidananya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4789_pengaduan_pidana, '毎月きちんとお金を払って頂けるなら、告訴はしません。', 'Saya tidak akan mengambil tindakan hukum selama Anda membayar saya setiap bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4790_gugatan, 'あの訴訟のせいで、かくしていた美味しいベーコンを全て失った。', 'Saya kehilangan semua daging lezat saya karena litigasi itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4790_gugatan, '訴訟には時間とお金がめっちゃかかるよ。', 'Tuntutan hukum sangat memakan waktu dan mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4790_gugatan, 'その訴訟に関する書類は、弁護士によって全てきちんとファイルされている。', 'Dokumen terkait gugatan semuanya telah diajukan dengan baik oleh pengacara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4791_menangkap, 'ビエトは、コウイチをペテンにかけて金を巻き上げた罪で逮捕された。', 'Viet ditangkap karena menipu uang Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4791_menangkap, 'ポートランド市警で働いている友達が、ビエトがそろそろ逮捕されるらしいという情報をこっそり教えてくれた。', 'Teman saya yang bekerja di Kepolisian Kota Portland diam-diam memberi tahu saya informasi bahwa Viet kemungkinan besar akan segera ditangkap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4791_menangkap, 'ラッシュ時の電車内で痴漢行為を働いたとして、危うく誤認逮捕されるところだった。', 'Saya hampir ditangkap secara tidak sengaja karena penganiayaan di kereta pada jam sibuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4792_untuk_melengkapi, 'もちろん、親からの仕送りだけでは足りなかったので、生活費はアルバイトで補っていました。', 'Tentu saja, tunjangan dari orang tua saya tidak cukup, jadi saya bekerja paruh waktu untuk menambah biaya hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4792_untuk_melengkapi, '野菜ジュースで、野菜不足を補うことはできるのでしょか。', 'Bisakah kita mengganti kekurangan sayur dengan minum jus sayur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4792_untuk_melengkapi, '欠員を補うために、ボーリングゲームに参加しました。', 'Untuk mengimbangi tempat yang kosong, saya mengikuti permainan bowling.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4792_untuk_melengkapi, '人は1日に約2500mlの水分を失います。それを補うためには、食べ物や飲み物から同じ量の水分を取り入れる必要があります。', 'Orang kehilangan sekitar 2500 ml cairan per hari. Untuk mengimbanginya, Anda perlu mengonsumsi cairan dalam jumlah yang sama dari makanan atau minuman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4793_calon, '全ての候補者がメガネを掛けていた。', 'Semua kandidat memakai kacamata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4793_calon, '候補者の中には、有名なモデルもいました。', 'Ada model terkenal di antara pelamar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4793_calon, '学歴的には、候補者として十分通用するはずが、彼は性格に難があるからね。', 'Secara akademis, kandidat tersebut akan sangat berguna, tapi dia memiliki kepribadian yang buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4794_iklim, '老後はおだやかな気候で知られるハワイに住みたいです。', 'Di masa pensiun saya, saya ingin tinggal di Hawaii, yang terkenal dengan iklimnya yang sejuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4794_iklim, 'ポートランドと東京の気候はどのぐらい違いますか。', 'Seberapa berbedakah iklim Portland dan Tokyo?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4794_iklim, '地球温暖化の影響により、北極圏の気候が変化しています。', 'Akibat dampak pemanasan global, iklim di kawasan Arktik berubah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4794_iklim, '気候は荒れ模様だが、新しい仕事ではいいスタートが切れた。', 'Saya memulai pekerjaan baru saya dengan baik, mengingat iklim yang mengancam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4795_cuaca, '当日の予定は、天候に左右されます。', 'Jadwal hari itu tergantung pada cuaca.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4795_cuaca, 'ここ一か月は天候が優れないみたいです。', 'Tampaknya cuaca tidak akan bagus selama sebulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4795_cuaca, '当日は、天候に恵まれました。', 'Cuacanya mendukung pada hari itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4795_cuaca, '悪天候のため、全便欠航となりました。', 'Semua penerbangan dibatalkan karena kondisi cuaca buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4795_cuaca, '繁忙期に旅行をすれば費用が嵩むのは分かっているけど、そうはいっても天候もその時期が一番いいからね。', 'Saya tahu akan ada biaya tambahan jika kita melakukan perjalanan selama musim puncak, namun cuaca akan menjadi yang terbaik pada saat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4796_iklim_musiman, '時候のあいさつは月によって変わります。', 'Salam musiman berubah tergantung bulannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4796_iklim_musiman, '北風にノッて、カラフルな木の葉がダンスを楽しむ時候となりましたが、みなさまお元気ですか？', 'Sekarang adalah musim di mana dedaunan berwarna-warni menari kegirangan, menunggangi angin utara. Bagaimana kabar semua orang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4796_iklim_musiman, '日本では、通常手紙は時候の挨拶から書き始められます。このウェブサイトには、時候の挨拶の例文がたくさん載っているので、時間のある時に確認してみて下さい。', 'Orang biasanya mengawali surat dengan sapaan musiman di Jepang. Situs web ini memiliki banyak contoh kalimat, jadi silakan lihat ketika Anda punya waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4796_iklim_musiman, '日本語では「時候」は「季節」の意味で使われますが、中国語では「時候」は「時」の意味で使われます。', 'Dalam bahasa Jepang, 時候 berarti "musim", sedangkan dalam bahasa Cina berarti "waktu".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4797_untuk_peduli, '最近仕事が忙しくて、全然子供に構ってあげられてないんだよね。', 'Akhir-akhir ini, aku begitu sibuk dengan pekerjaan sehingga aku tidak bisa menghabiskan waktu sama sekali bersama anak-anakku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4797_untuk_peduli, '君が僕のことをどう思おうと構わないけど、友達のことまで悪く言うのはやめてくれるかな？', 'Aku tidak keberatan dengan apa yang kamu pikirkan tentangku, tapi bisakah kamu berhenti menjelek-jelekkan teman-temanku juga?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4797_untuk_peduli, '構ってちゃんにはなりたくないなあ。', 'Saya tidak ingin menjadi pencari perhatian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4797_untuk_peduli, '「こちらの品は百万円ほどお高くなります。」「それでも構わないよ。それを頂くよ。」', '“Yang ini harganya sekitar satu juta yen lebih mahal.” “Aku masih tidak keberatan. Aku akan menerimanya.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4798_komposisi, 'この映画は二部構成になっている。', 'Film ini terdiri dari dua bagian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4798_komposisi, 'あなたの家族構成を教えてください。', 'Bagaimana struktur keluarga Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4798_komposisi, '構成のしっかりしたプロットでも、台詞がありきたりだと面白くなくなる。', 'Sekalipun plotnya terstruktur dengan baik, tidak akan menarik jika dialognya basi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4798_komposisi, 'この文を構成する文法は今まで見たことがありませんでした。', 'Saya belum pernah melihat tata bahasa yang menyusun kalimat ini sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4799_bagus, 'うわっ、結構大きいですね。持って帰れるかな？', 'Oh wow, ukurannya cukup besar. Saya ingin tahu apakah saya bisa membawanya pulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4799_bagus, '結構なお値段がするんですね。', 'Ini memiliki harga yang cukup mahal ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4799_bagus, '「何か飲みますか？」 「いいえ、結構です。」  ', '"Anda mau minum apa?" "Tidak, terima kasih. Aku baik-baik saja."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4799_bagus, '「今日は他には何か、ございませんか？」「いいえ。それだけで結構です。」  ', '"Apakah kamu menginginkan yang lain hari ini?" "Tidak, itu saja. Terima kasih."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4799_bagus, '「ベーコンを無料にすれば、犯罪は減ると思いますか？」「結構効果はあると思います。」', '"Apakah menurut Anda kejahatan akan berkurang jika bacon gratis?" "Menurutku itu akan membuat perbedaan besar."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4800_pola, '私の妻は、小さな花の模様が好きです。', 'Istri saya suka pola dengan bunga kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4800_pola, 'そろそろ部屋の模様替えをしたいな。', 'Saya ingin segera mengubah tata letak kamar saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4800_pola, 'コウイチが、コウイチの顔の模様のカーテンを作ろうとしてるんだけど、さすがにやめさせた方がいいよね？', 'Koichi mencoba membuat tirai dengan pola wajahnya, tapi mungkin yang terbaik adalah menghentikannya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4802_segar, '魚屋さんに行って、新鮮なマグロを買ってきてちょうだい。', 'Bisakah Anda pergi ke toko ikan dan membeli tuna segar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4802_segar, '今日はちょっと山に行って新鮮な空気をすってきました。', 'Hari ini, saya pergi ke gunung dan menghirup udara segar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4802_segar, '前の職場では、止めろと言われるまでいつも残業していたので、毎日五時に退社するのはとても新鮮です。', 'Saya selalu bekerja lembur di pekerjaan terakhir saya sampai saya disuruh berhenti, jadi sangat baru bagi saya untuk pulang kerja pada jam lima setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4803_jelas, 'こんなに鮮やかな赤のマニキュア、どこで買ったの？', 'Dari mana Anda mendapatkan cat kuku berwarna merah cerah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4803_jelas, '新しい人事部長は、強制的なサービス残業に関する問題を鮮やかに解決してのけた。', 'Manajer personalia yang baru dengan cemerlang memecahkan masalah mengenai kerja lembur wajib tanpa bayaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4803_jelas, '母との思い出は今でも鮮やかに心に残ってます。', 'Kenanganku bersama ibuku masih terpatri jelas di hatiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4804_ikan_segar, 'なぜかスーパーの鮮魚コーナーに列ができていました。', 'Orang-orang mengantri di bagian ikan segar di toko kelontong karena suatu alasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4804_ikan_segar, 'いつも天然の鮮魚を仕入れるようにしています。', 'Kami selalu berusaha mendapatkan ikan segar alami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4804_ikan_segar, 'うちのお造り五種盛りは、中央市場から直送してもらった獲れ立ての鮮魚で作ってるから、美味しいよ。', 'Piring kami yang berisi lima jenis sashimi dibuat dari ikan segar yang baru ditangkap, dikirim langsung dari pasar pusat, jadi lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4804_ikan_segar, '俺の魚屋で働いている限り、従業員は福利厚生として鮮魚をもらう権利を、放棄することはできないぜ。', 'Karyawan tidak dapat melepaskan haknya untuk menerima ikan segar sebagai keuntungan selama mereka bekerja di toko ikan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4805_menjadi_efektif, 'やっと薬が効いてきた。', 'Obatnya akhirnya mulai bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4805_menjadi_efektif, 'この温泉は肩こりによく効くらしいです。', 'Saya dengar pemandian air panas ini sangat efektif untuk bahu yang kaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4805_menjadi_efektif, 'いや、ブレーキが効かなかったんだよ！', 'Tidak, remnya tidak berfungsi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4805_menjadi_efektif, 'ようやく広告が効いてきたのかな？', 'Saya ingin tahu apakah iklan tersebut akhirnya mulai memberikan efek?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4805_menjadi_efektif, 'コウイチの昨日のお説教がマイケルに効いたみたいです。', 'Tampaknya serangan telinga Koichi kemarin efektif untuk Michael.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4809_afiliasi, '私は芸能事務所には所属していません。', 'Saya tidak berafiliasi dengan agensi hiburan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4809_afiliasi, 'コウイチはポートランドの剣道チームに所属しています。', 'Koichi termasuk dalam tim kendo di Portland.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4809_afiliasi, '病欠のときは、念の為、所属部署に診断書を提出しておいた方がいいよ。', 'Jika Anda tidak hadir karena sakit, Anda harus menyerahkan surat dokter ke departemen Anda untuk berjaga-jaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4811_logam, '私には金属アレルギーがあります。', 'Saya alergi terhadap logam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4811_logam, 'マイケルは、屋根に金属のハシゴを掛けた。', 'Michael berdiri di tangga logam di atap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4811_logam, '厳しい景況にもかかわらず、あの金属メッキ工場は成長を続けている。', 'Pabrik pelapisan logam tetap berkembang meskipun iklim bisnis sedang penuh tantangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4812_menjadi_biasa, 'あいつは気の代わりやすい女だけど、もう慣れたよ。', 'Dia wanita yang berubah-ubah, tapi aku sudah terbiasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4812_menjadi_biasa, '新しい環境にはもう慣れましたか。', 'Apakah Anda sudah terbiasa dengan lingkungan baru?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4812_menjadi_biasa, '裾上げをお願いできますか？自分ではあまり縫い物に慣れてなくて。', 'Bisakah Anda membawakan kelimannya untuk saya? Saya tidak terlalu terbiasa menjahit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4813_kebiasaan, 'ツメをかむのは、私の悪い習慣の一つです。', 'Menggigit kuku adalah salah satu kebiasaan buruk saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4813_kebiasaan, '私は毎日ジョギングをすることを習慣にしています。', 'Saya sudah membiasakan jogging setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4813_kebiasaan, '仕事の前にストレッチをすることは、生産性を高める良い習慣です。', 'Melakukan peregangan sebelum bekerja merupakan kebiasaan baik yang dapat meningkatkan produktivitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4813_kebiasaan, '「たばこ、止めたんじゃなかったの？」「まあ、ほら、『古い習慣はなかなかなくならない』って言うだろ。」', '"Kupikir kamu berhenti merokok." "Yah, kata mereka, kebiasaan lama sulit dihilangkan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4814_kaya, '80年前と比べると、日本は本当に豊かになりました。', 'Dibandingkan dengan 80 tahun yang lalu, Jepang telah menjadi sangat kaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4814_kaya, '九州は自然が豊かな所です。', 'Kyushu adalah tempat yang kaya akan alam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4814_kaya, '本を読むと心が豊かになりますよ。', 'Membaca buku akan memperkaya pikiran Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4815_montok, 'モデルみたいに細い人より、豊満な体つきの女性の方がタイプです。', 'Aku lebih suka wanita yang berbadan bulat, daripada yang kurus seperti model.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4815_montok, '私はふくよかで豊満なバストをもつ女性の絵をかくのが好きなんです。', 'Saya suka menggambar wanita dengan sosok montok dan payudara besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4815_montok, '彼女は豊満な胸をもっており、いつも美しい谷間をのぞかせている。', 'Dia memiliki payudara penuh dan selalu memamerkan belahan dadanya yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4816_puas, '満足な結果が得られて、社長は本当にうれしそうでした。', 'Tampaknya hasil yang sangat memuaskan ini membuat presiden kita sangat senang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4816_puas, '父は、その美しい景色を見て、満足そうな顔をしてうなずいた。', 'Ayahku mengangguk dengan wajah bahagia saat melihat pemandangan yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4816_puas, 'ビジネスが順調なので、ようやく満足しています。', 'Bisnis saya berjalan dengan baik sehingga saya akhirnya merasa puas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4817_bulan_purnama, '満月の夜は、星がきれいに見えます。', 'Bintang-bintang terlihat indah di malam bulan purnama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4817_bulan_purnama, 'フグって、満月の様に真ん丸い顔をしてるよね。', 'Fugu wajahnya bulat seperti bulan purnama ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4817_bulan_purnama, '明日の夜は満月なんだって。曇らないといいね。', 'Kudengar besok malam akan ada bulan purnama. Saya harap cuacanya tidak mendung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4818_rumah_penuh, 'できれば満員のバスには乗りたくない。', 'Jika memungkinkan, saya tidak ingin naik bus yang penuh sesak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4818_rumah_penuh, 'コンサート会場はやっぱり満員だった。', 'Aula konser penuh seperti yang diharapkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4818_rumah_penuh, '毎朝、新宿駅に着くまで、満員電車の中に立っていなくてはいけないのが苦痛です。', 'Saya benci harus berdiri di kereta yang penuh sesak sampai saya tiba di stasiun Shinjuku setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4819_skor_sempurna, '満点をとったら、先生に花丸をもらえるの。', 'Ketika saya mendapat nilai sempurna, guru saya menggambar bunga di kertas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4819_skor_sempurna, 'よくこんなにボリューム満点の朝ご飯が食べられるよね。', 'Saya kagum Anda bisa makan sarapan sebanyak itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4819_skor_sempurna, '効果的な勉強方法を見つけたおかげで、テストで満点を取ることができました。', 'Saya menemukan cara belajar yang efektif, dan berkat itu saya mendapat nilai sempurna dalam ujian itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4819_skor_sempurna, 'スリル満点の映画を見たらはらぺこになったよ。栄養満点の定食でも食べに行こうぜ！', 'Setelah menonton film yang penuh sensasi itu, saya kelaparan. Ayo makan set makanan yang kaya nutrisi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4820_kegemukan, 'まずは自分の肥満度をチェックしてみましょう！', 'Pertama, periksa tingkat obesitas Anda sendiri!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4820_kegemukan, '肥満の主な原因は、おそらく運動不足でしょうね。', 'Penyebab utama obesitas Anda mungkin adalah kurang berolahraga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4820_kegemukan, '体重は標準範囲内だけど体脂肪率が高い「隠れ肥満」の人が増えています。', 'Terdapat peningkatan jumlah penderita "obesitas tersembunyi" yang memiliki berat badan dalam kisaran standar namun memiliki persentase lemak tubuh yang tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4821_pupuk, '田んぼに肥料をまきました。', 'Saya menyebarkan pupuk kandang di sawah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4821_pupuk, '牛のフンはいい肥料になるんだよ。', 'Kotoran sapi akan menjadi pupuk yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4821_pupuk, '肥料工場での社員間のいざこざについて、どう対処していいか全くわかりませんでした。', 'Saya tidak tahu bagaimana menangani konflik antar pekerja di pabrik pupuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4822_untuk_berguling, 'どうしてラーメン屋さんはタオルを頭に巻いてることが多いのかな？', 'Entah kenapa para pekerja toko ramen sering membungkus kepala mereka dengan handuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4822_untuk_berguling, '肉巻きおにぎりを作りたかったんだけど、お肉がうまく巻けなかったの。', 'Saya ingin membuat bola-bola nasi yang dibungkus dengan daging, tetapi saya kesulitan membungkus daging di sekelilingnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4822_untuk_berguling, 'こんな感じで、お寿司を海苔でクルクル巻いていきます。', 'Beginilah cara kami membuat sushi - kami menggulungnya dengan rumput laut seperti ini... gulung, gulung, gulung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4822_untuk_berguling, '二時間かけて髪を巻いたが、それでもあまりうまく巻けなかった。', 'Aku menghabiskan dua jam mengeriting rambutku, tapi tetap saja tidak bisa dikeriting dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4823_satu_jilid, 'このマンガ、一巻しか持っていないんだよ。', 'Saya hanya punya satu volume manga ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4823_satu_jilid, 'この小説、一巻はすごく面白かったんだけどね。', 'Jilid pertama novel ini menarik banget, tapi tahukah kamu…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4823_satu_jilid, 'もちろん一巻から最新巻まで全部揃ってるよ！', 'Tentu saja, saya memiliki semua volume dari yang pertama hingga yang terbaru!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4823_satu_jilid, '一巻では、全ての引用に脚注がつけられ出典が記されています。', 'Pada jilid pertama, semua sumber dikutip pada catatan kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4824_jilid_terakhir, 'この経済学の教科書は上巻と下巻があるんだよ。', 'Buku ajar ilmu ekonomi ini mempunyai jilid pertama dan jilid terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4824_jilid_terakhir, '上巻を買ったつもりが下巻を買ってしまっていた。', 'Kukira aku membeli jilid pertama, tapi sebenarnya itu jilid terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4824_jilid_terakhir, '下巻では、主に田舎の景色について語られています。', 'Di jilid terakhir, pemandangan pedesaan menjadi topik utama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4825_jilid_pertama, '肩のこらない小説だったので、上巻は三十分で読めた。', 'Karena ini adalah novel ringan, aku bisa menyelesaikan volume pertama dalam tiga puluh menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4825_jilid_pertama, '上巻には、型にはまったような事ばかりが書かれていたよ。', 'Jilid pertama penuh dengan ekspresi stereotip.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4825_jilid_pertama, '上巻の終わりは、すごく続きが気になる感じで終わった。', 'Akhir dari volume pertama benar-benar sebuah cliffhanger.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4826_jilid_kedua, '楽しみにしていた小説の第二巻が発売されてうれしい。', 'Saya senang karena volume kedua dari novel yang saya nantikan akhirnya dijual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4826_jilid_kedua, 'どうして同じ本を二巻も持ってるの？', 'Mengapa Anda memiliki dua jilid dari buku yang sama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4826_jilid_kedua, '二巻では、引用の出典に関する別表が作成されました。', 'Pada jilid kedua, mereka membuat lampiran untuk seluruh sumber yang dikutip.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4827_untuk_mencari, 'アルツハイマー病の祖母が昨日から家に帰ってないんです。一緒に捜してもらえませんか？', 'Nenek saya yang mengidap penyakit Alzheimer, sejak kemarin belum pulang ke rumah. Bisakah Anda membantu saya mencarinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4827_untuk_mencari, '昨日から、警察や町の人たちが、山で行方不明の男の子を捜しているんだけど、まだ見つかってないらしいよ。', 'Sejak kemarin, polisi dan warga kota telah mencari anak laki-laki yang hilang di pegunungan, namun sepertinya dia belum ditemukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4827_untuk_mencari, '真犯人は必ずオレが捜し出してみせるさ。', 'Saya pasti akan menemukan pelaku sebenarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4828_investigasi_kriminal, '警察の捜査に協力したら、お礼にアメをもらいました。', 'Ketika saya bekerja sama dengan penyelidikan polisi, saya menerima permen sebagai tanda terima kasih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4828_investigasi_kriminal, '警察は、ビエトの部下が起こした事件について、捜査しています。', 'Polisi sedang menyelidiki kasus yang disebabkan oleh anak buah Viet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4828_investigasi_kriminal, 'ビエト達は、警察の捜査の手をたくみにかわした。', 'Viet dan gengnya dengan sigap menghindari perburuan polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4828_investigasi_kriminal, '捜査により、犯人のアリバイが偽物だと判明しました。', 'Hasil penyelidikan menunjukkan bahwa alibi tersangka tidak benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4828_investigasi_kriminal, '本日は捜査に関する重要書類を作成する予定です。', 'Saya akan menyiapkan beberapa dokumen penting untuk penyelidikan kriminal hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4829_pembunuhan_dengan_mencekik, '「あんた、もう少しであの男を絞殺しかけたのよ！」「ごめん。やりすぎたよ。」', '"Kamu hampir mencekik orang itu sampai mati!" “Maafkan aku. Aku bertindak terlalu jauh.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4829_pembunuhan_dengan_mencekik, '絞殺をまぬがれたビエトは、ひざをついて、肩で息をした。', 'Ketika Viet berhasil menghindari pembunuhan dengan cara dicekik, dia berlutut dan bernapas dengan berat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4829_pembunuhan_dengan_mencekik, 'しかし、犯人は絞殺死体となって海岸で発見された。', 'Namun pelakunya ditemukan tewas tercekik di tepi pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4829_pembunuhan_dengan_mencekik, '検死の結果、死因は「絞殺」と断定されました。', 'Penyebab kematiannya ditentukan sebagai "pencekikan" berdasarkan hasil otopsi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4830_untuk_memeras, '母乳を絞りながら、コンロにやかんをかけました。', 'Saya meletakkan ketel di atas kompor sambil memompa ASI saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4830_untuk_memeras, 'ぞうきんを絞った手を洗わないでそのまま食べ物を食べるなんて信じられない！', 'Saya tidak percaya Anda makan makanan dengan tangan yang tidak Anda cuci setelah diperas dengan kain lap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4830_untuk_memeras, '意地悪な上司との関係をどうやって保つか、毎日知恵を絞っています。', 'Saya memutar otak setiap hari tentang bagaimana mengatur hubungan saya dengan atasan saya yang jahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4831_senior, 'あの先輩と話をすると、いつも肩がこるんだよね。', 'Saya selalu merasa tegang ketika berbicara dengan senior itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4831_senior, '先輩に何を言われても、気にせず無視すればいいんだからね。', 'Jangan merasa terganggu dengan hal itu dan abaikan saja apa pun yang dikatakan oleh lulusan yang lebih tua itu tentang Anda, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4831_senior, '俺の先輩、悪い人では無いんだけどさ、ただちょっと俺とは反りが合わないんだよね。', 'Atasanku bukan orang jahat, tapi dia dan aku belum bisa cocok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4832_muda, 'あ、コイツ、オレの高校の時の後輩。', 'Oh, orang ini adalah juniorku dari SMA.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4832_muda, '明日、会社の後輩と飲みに行く予定なんだ。', 'Besok, aku berencana untuk pergi minum bersama rekan juniorku dari tempat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4832_muda, '先輩後輩の関係って、堅苦しくて好きじゃないんだよね。年、一つしか変わらないんだし、タメ語でいいよ。', 'Saya tidak terlalu menyukai formalitas hubungan senior-junior. Usia kami hanya terpaut satu tahun, jadi kamu bisa berbicara dengan santai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4832_muda, 'お前は俺のお気に入りの後輩だから、どんなことがあってもちゃんと面倒みてやるよ。', 'Aku akan menjagamu, apa pun yang terjadi karena kamu adalah adik kelas favoritku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4834_untuk_menyembunyikan_sesuatu, 'コウイチはドアにかぎを掛けた後、そのかぎを隠した。', 'Koichi mengunci pintu dan kemudian menyembunyikan kuncinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4834_untuk_menyembunyikan_sesuatu, '水戸黄門は本当の身分を隠して旅をしていた。', 'Mito Komon menyembunyikan identitas aslinya saat dia bepergian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4834_untuk_menyembunyikan_sesuatu, '秘密の花園への入口は隠されている。', 'Pintu masuk ke Secret Garden tersembunyi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4835_masa_pensiun, '私の父は隠居生活をエンジョイしていますよ。', 'Ayah saya telah menikmati masa pensiunnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4835_masa_pensiun, 'この里は、かつては隠居の地として人気がありました。', 'Desa ini dulunya merupakan tempat yang populer untuk retret.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4835_masa_pensiun, 'お前は本当に隠居したいのか？', 'Apakah Anda benar-benar ingin pensiun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4836_untuk_menggantung_sesuatu, 'トーフグのオフィスに、アヤがデザインしたカーテンが掛けられました。', 'Tirai baru yang dirancang Aya digantung di kantor Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4836_untuk_menggantung_sesuatu, 'コウイチっていっつもセーターを肩から掛けてて、プロデューサーみたいだよね。', 'Koichi seperti produser acara TV karena dia selalu menaruh sweternya di bahunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4836_untuk_menggantung_sesuatu, '彼が死んでから、もらった絵をどこに掛けたらいいか分からなくて困っているんです。 ', 'Sejak kematiannya, saya tidak tahu di mana saya harus menggantungkan foto yang dia berikan kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4836_untuk_menggantung_sesuatu, 'あの乾物屋さんは、日光がよく当たるように上手にケールをフェンスに掛けるので、とても美味しい乾燥ケールが出来上がるんですよ。', 'Toko makanan kering itu dengan terampil menggantung kangkung di pagar agar mendapat banyak sinar matahari, sehingga menghasilkan kangkung kering yang enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4837_untuk_mengganti, '成田空港でドルを円に替えました。', 'Saya menukar dolar ke yen di Bandara Narita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4837_untuk_mengganti, '見てろよ。オレは一秒でシャツを替えられるんだ！', 'Lihat saja. Saya bisa mengganti baju saya dalam satu detik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4837_untuk_mengganti, 'お父さんに電球を替えるようにもう頼んだよ。', 'Saya sudah meminta ayah untuk mengganti bola lampu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4872_aktris, 'その女優のマネージャーは、肩こりをほぐすのが上手だ。', 'Agen aktris tersebut ahli dalam menghilangkan kekakuan bahu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4872_aktris, '優しすぎる女優は成功しないというのはウソです。', 'Adalah suatu kebohongan bahwa seorang aktris dengan hati yang terlalu baik tidak akan berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4872_aktris, '「ホグワーツ魔法魔術学校にはもう行きたくない。女優になりたいの。」「もう、馬鹿なこと言わないで。ハーマイオニーったら。」', '"Saya tidak ingin bersekolah di Sekolah Sihir Hogwarts lagi. Saya ingin menjadi seorang aktris." "Oh, jangan konyol, Hermione."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4873_revolusioner, 'エルネスト・チェ・ゲバラはアルゼンチン出身の革命家です。', 'Ernesto Che Guevara adalah seorang revolusioner yang lahir di Argentina.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4873_revolusioner, '1959年4月、キューバ人革命家のフィデル・カストロが、ニューヨークにやってきました。', 'Pada bulan April 1959, revolusioner Kuba Fidel Castro tiba di New York.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4873_revolusioner, '革命家になりたければ、まずは効果的な話し方を身につけないといけないよ。', 'Jika Anda ingin menjadi seorang revolusioner, pertama-tama Anda harus mampu berbicara secara efektif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4873_revolusioner, '彼女は情熱的なフランス人革命家と恋に落ちた。', 'Dia jatuh cinta dengan seorang revolusioner Perancis yang bersemangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4874_jaket_kulit, '古着屋さんでビンテージものの革ジャンを見つけた。', 'Saya menemukan jaket kulit antik di toko pakaian bekas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4874_jaket_kulit, 'いや、あんな高い革ジャン買えるわけないじゃん。', 'Tidak mungkin, aku tidak mampu membeli jaket kulit semahal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4874_jaket_kulit, '雪が降ってきたので、ビエトは、コウイチに革ジャンを掛けてやった。', 'Salju mulai turun, jadi Viet menutupi Koichi dengan Jaket kulitnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4875_prefektur_nagasaki, 'いやー、世の中って狭いもんですね。まさか私の長崎県の友人がコウイチの友人の友人だったとは。', 'Wow, dunianya kecil sekali ya? Saya tidak pernah menyangka bahwa teman saya di prefektur Nagasaki adalah teman dari teman Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4875_prefektur_nagasaki, '長崎県に入ったところで、車のエンジンが掛からなくなったんです。', 'Saat saya memasuki prefektur Nagasaki, mesin mobil saya berhenti bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4875_prefektur_nagasaki, '私は長崎県の出身で、家族の墓も全部そこにあります。', 'Saya berasal dari prefektur Nagasaki dan kuburan keluarga saya juga terletak di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4878_untuk_dipanggil, 'ワニカニは別名クラビゲーターとも呼ばれている。', 'WaniKani disebut juga crabigator sebagai aliasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4878_untuk_dipanggil, '名前を呼ばれたが、聞こえないふりをして通り過ぎた。', 'Namaku dipanggil, tapi aku lewat begitu saja seolah tak mendengar apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4878_untuk_dipanggil, 'おばちゃんと呼ばれる年になってしまったことがちょっと悲しかった。', 'Saya sedikit sedih telah mencapai usia di mana saya bisa disebut sebagai wanita paruh baya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4879_untuk_ditunjukkan, 'ついにコウイチがコンサート会場に姿を現したよ！', 'Koichi akhirnya muncul di gedung konser!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4879_untuk_ditunjukkan, '勇者は正体を現したモンスターをやっつけた。', 'Pria pemberani itu mengalahkan monster yang menunjukkan wujud aslinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4879_untuk_ditunjukkan, '彼女は最後には本性を現すと思ってたよ。', 'Aku tahu dia akan menunjukkan sifat aslinya pada akhirnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4880_pemandangan, '家の近くに景色の良い公園があります。', 'Ada sebuah taman dengan pemandangan indah di dekat rumahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4880_pemandangan, 'ここから見る景色が大好きなんです。', 'Saya suka pemandangan yang bisa kita lihat dari sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4880_pemandangan, 'ちょっといつもと違った景色を見るために、今日は回り道をしてみない？', 'Apakah Anda ingin mengambil jalan memutar hari ini untuk melihat pemandangan yang berbeda dari biasanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4885_untuk_ada, 'お化けって本当に居ると思いますか？', 'Apakah menurut Anda hantu benar-benar ada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4885_untuk_ada, 'え？あの芸能人ってまだ居たの？今何才なんだろう？', 'Tunggu, selebriti itu masih ada? Aku ingin tahu berapa umurnya sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4885_untuk_ada, 'うちの猫は大抵二階の寝室に居るんです。', 'Kucing kami biasanya ada di kamar tidur kami di lantai atas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4896_kartu_nama, '新しい名刺を注文しました。', 'Saya sudah memesan kartu nama baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4896_kartu_nama, 'そういえば、新人の名刺を作る必要がありますね。', 'Kalau dipikir-pikir, kita perlu membuat kartu nama untuk karyawan baru, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4896_kartu_nama, 'あの会社の社長さんから名刺をもらいました。', 'Saya menerima kartu nama dari presiden perusahaan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5064_gaji, '給料は毎月五日に銀行に振りこまれます。', 'Gaji Anda akan disimpan di bank pada hari kelima setiap bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5064_gaji, 'お前、全然仕事できてねーじゃん。この給料どろぼう！', 'Anda tidak melakukan pekerjaan Anda sama sekali. Dasar pencuri gaji!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5064_gaji, '私の給料だけだと、今の生活スタイルのままじゃ赤字なんだよね。', 'Dengan hanya gaji saya, kami berada dalam posisi merah jika melanjutkan gaya hidup kami saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5064_gaji, '「君の上司が、君の給料を上げるつもりだって聞いたよ。」「まさか！そんなことあり得ないよ。」', '"Kudengar bosmu akan memberimu kenaikan gaji." “Benarkah? Itu akan menjadi harinya.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5067_pemotongan_gaji, '減給の原因は何だったんですか？', 'Apa alasan pemotongan gaji tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5067_pemotongan_gaji, 'これって、実質的には減給じゃないですか？', 'Bukankah ini pada dasarnya adalah pemotongan gaji?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5067_pemotongan_gaji, 'まさか減給があるなんて思いもしなかったから、旅の締めくくりに一流ホテルにとまっちゃったんだよね。', 'Saya tidak pernah mengharapkan pemotongan gaji, jadi saya menginap di hotel kelas satu untuk mengakhiri perjalanan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5067_pemotongan_gaji, '減給されるし、上司も嫌なヤツだし、会社を辞めて転職先をさがすことを本気で考えてるんだよね。', 'Gaji saya dipotong dan atasan saya jahat, jadi saya serius berpikir untuk berhenti dan mencari pekerjaan lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5077_seppuku, '切腹とか考えるだけで嫌だよね。', 'Memikirkan seppuku saja sudah mengerikan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5077_seppuku, 'どうして日本の武士は切腹をするようになったのでしょうか？', 'Mengapa prajurit samurai Jepang mulai melakukan seppuku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5077_seppuku, '昨日、サムライになって切腹する夢を見た。', 'Kemarin saya bermimpi menjadi seorang samurai dan melakukan ritual bunuh diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5077_seppuku, 'その年老いた武士は、切腹をすると言って、一歩も引かなかった。', 'Samurai tua itu mengatakan dia akan melakukan ritual bunuh diri dan menolak untuk mundur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5189_sangat, '絶対にワニカニレベル６０を達成してみせる！', 'Saya pasti akan mencapai WaniKani Level 60!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5189_sangat, 'いやいや、絶対無理でしょ。', 'Tidak mungkin, itu sangat mustahil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5189_sangat, 'そんなことないよ、君なら絶対大丈夫だよ！', 'Itu tidak benar! Anda pasti bisa melakukannya, saya percaya pada Anda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5189_sangat, '学校のある夜は、外出できないって言ってるでしょ。ダメだと言ったら絶対にダメだからね！', 'Anda tidak bisa keluar pada malam sekolah. Kalau saya bilang tidak bagus, sama sekali tidak bagus!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5191_putus_asa, '私は絶望的に歌が下手です。', 'Saya seorang penyanyi yang sangat buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5191_putus_asa, '先生にそう言われたとき、絶望感でいっぱいになりました。', 'Ketika guruku memberitahuku hal itu, aku merasa putus asa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5191_putus_asa, '今、彼氏にフラレて、絶望のどん底にいる。', 'Sekarang, setelah dicampakkan oleh pacarku, aku berada dalam keputusasaan yang mendalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5191_putus_asa, '相手チームに15点差で負けているので、かなり絶望的な状況です。', 'Tim lain unggul lima belas gol dari kami, jadi kami berada dalam situasi tanpa harapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5607_terlambat, '今更そんなことを言われても困るよ。', 'Sudah agak terlambat bagimu untuk memberitahuku hal itu sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5607_terlambat, 'こんな基本中の基本のこと、先生には今更聞けないよ。', 'Saya tidak bisa bertanya kepada guru saya tentang hal-hal mendasar seperti itu sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5607_terlambat, '今更ながら、Windows 7のサポートが終了していることに気づきました。', 'Setelah sekian lama, saya baru menyadari bahwa Windows 7 akhirnya berhenti menerima dukungan resmi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5607_terlambat, '今更ですが、マイ箸を持ち歩き始めました。', 'Mungkin agak terlambat, tapi aku mulai membawa sumpitku sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6529_pakaian, 'そろそろ衣がえの季節です。', 'Sudah hampir waktunya mengganti pakaian untuk musim ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6529_pakaian, '天ぷらの衣の作り方を教えてください。', 'Bisakah Anda memberi tahu saya cara membuat adonan tempura?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6529_pakaian, 'あの病院の先生は、歯に衣着せぬ物の言い方をすることで有名です。', 'Dokter di rumah sakit itu terkenal karena mengutarakan pikirannya tanpa menahan diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6996_dingin, '今日はとても涼しいですね。', 'Hari ini sangat keren, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6996_dingin, 'いいね、そのドレス。涼しそう。', 'Saya suka gaun itu. Tampak berangin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6996_dingin, '涼しい顔でよくそんなこと言えるね。', 'Bagaimana kamu bisa mengatakan hal seperti itu dengan wajah acuh tak acuh?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7600_untuk_diperhatikan, '辺りを見渡すと、たくさんの捜査員達に取り囲まれていた。', 'Ketika saya melihat sekeliling, saya melihat bahwa saya dikelilingi oleh banyak penyelidik polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7600_untuk_diperhatikan, '会社の社長には会社全体を見渡せる能力が必要です。', 'Seorang presiden perusahaan harus memiliki kemampuan untuk mensurvei seluruh perusahaannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7600_untuk_diperhatikan, '見渡す限り、向日葵畑が続いていた。', 'Ladang bunga matahari terbentang sejauh mata memandang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7654_biasa, '早寝早起きの規則正しい生活を送るよう、心がけてください。', 'Cobalah untuk menjaga pola hidup yang disiplin dan teratur dengan menjaga pola tidur dan bangun pagi yang teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7654_biasa, 'うちの子は、保育園に行き始めてから、規則正しい食事が取れるようになりました。', 'Anak saya sudah mengembangkan pola makan yang lebih teratur sejak mulai masuk ke tempat penitipan anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7654_biasa, '学生たちは規則正しく並んで教室に入っていった。', 'Para siswa berbaris dengan teratur dan memasuki ruang kelas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7712_guru, '家庭教師は、ホワイトボードをかべに立て掛けた。', 'Guru menempelkan papan tulis di dinding.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7712_guru, '家庭教師のアルバイトをしています。', 'Saya bekerja paruh waktu sebagai guru privat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7712_guru, '日本では拘束時間の短い家庭教師は大学生に人気のあるアルバイトの一つです。', 'Di Jepang, bimbingan belajar adalah salah satu pekerjaan paruh waktu yang paling populer bagi mahasiswa, karena jam kerjanya yang singkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7713_ketidakteraturan, '私の仕事は時間が不規則です。', 'Jam kerja saya tidak teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7713_ketidakteraturan, '寝る時間が不規則なのは良くないよ。', 'Tidak baik jika mempunyai waktu tidur yang tidak teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7713_ketidakteraturan, '不規則な生活で体調を崩してしまった。', 'Kesehatan saya dirusak oleh kehidupan saya yang tidak teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7724_untuk_mencatat, '荷物を降ろすのを手伝ってくれ。', 'Bisakah Anda membantu saya menurunkan barang bawaan saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7724_untuk_mencatat, '駅の前で降ろしてもらった。', 'Aku diturunkan di depan stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7724_untuk_mencatat, 'すみません、次の角で降ろしてください。', 'Permisi, tolong lepaskan saya di tikungan berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7759_akan_berakhir, 'いつ果てるともしれない命なんだから、大切にしないと。', 'Hidup bisa berakhir kapan saja, jadi kita harus menghargainya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7759_akan_berakhir, 'こんなところで果てるワケにはいかないと思ったんです。', 'Aku tidak boleh mati di tempat seperti ini, pikirku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7759_akan_berakhir, '日本のサラリーマンは、みんなくたびれ果てています。', 'Para pegawai Jepang semuanya kelelahan tak terkira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7767_gema, 'この記事への反響はとても大きかった。', 'Reaksi terhadap artikel ini sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7767_gema, 'トンネルの中にコウイチのさけび声が反響しました。', 'Suara teriakan Koichi bergema di dalam terowongan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7767_gema, 'この部屋は反響音が抑えられるように設計してあるんです。', 'Ruangan ini dirancang untuk mengurangi gema.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8680_untuk_menyimpan, '争いを収めるにはどうすればいいのだろう。', 'Apa yang harus saya lakukan untuk menyelesaikan pertarungan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8680_untuk_menyimpan, 'コウイチは今回の選挙で圧倒的に勝利を収めた。', 'Koichi mencetak kemenangan telak pada pemilihan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8680_untuk_menyimpan, 'ビエトの政治犯罪に関する証拠をファイルに収めました。', 'Saya menyimpan bukti kejahatan politik Viet di file.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8716_untuk_meningkatkan, '雨がふって川の水かさが増しました。', 'Hujan menyebabkan permukaan air sungai meningkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8716_untuk_meningkatkan, '最近、日本語教育業界でトーフグの勢いが増したとウワサになっています。', 'Saat ini, rumor bahwa Tofugu sedang berkembang pesat beredar di industri pendidikan bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8716_untuk_meningkatkan, '砂糖でさらに甘みが増しますよ。', 'Gula akan membuatnya lebih manis, lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8756_perkalian, '今日は家庭教師に掛け算を教えてもらいました。', 'Saya meminta tutor mengajari saya perkalian hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8756_perkalian, '今日は掛け算の問題を100問解いたよ。', 'Saya menyelesaikan 100 soal perkalian hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8756_perkalian, '明日、塾で掛け算のテストがあるんです。', 'Besok ada tes perkalian di sekolah menjejalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8809_untuk_melampaui, '日本には世界に通用する優れた技術者がたくさんいます。', 'Ada banyak insinyur hebat di Jepang yang diakui dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8809_untuk_melampaui, 'ワニカニはどういう点で他の漢字学習教材より優れていると言えますか？', 'Menurut Anda, dalam hal apa WaniKani melampaui materi pembelajaran kanji lainnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8809_untuk_melampaui, 'トーフグはユニークさにおいて、他の日本語学習教材より優れています。', 'Tofugu mengungguli materi pembelajaran bahasa Jepang lainnya dalam hal keunikannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8809_untuk_melampaui, 'この映画は、原作のテーマを見事に昇華した非常に優れた作品となっている。', 'Film ini adalah karya luar biasa yang mengangkat tema karya aslinya dengan indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8905_untuk_mencekik, '弟は羊に首を絞められた。', 'Adik laki-laki saya dicekik oleh seekor domba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8905_untuk_mencekik, '後から見れば、結局、自分で自分の首を絞めるようなシチュエーションを作ってたんだよね。', 'Kalau dipikir-pikir, pada dasarnya saya menciptakan situasi di mana saya menembak kaki saya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8905_untuk_mencekik, '生まれて初めて自分で鶏を絞めて、捌いて、食べるという経験をしました。', 'Saya mempunyai pengalaman membunuh, menyembelih, dan memakan ayam sendirian untuk pertama kalinya dalam hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8905_untuk_mencekik, '「真綿で首を絞める」とは、直接対峙したり攻撃したりすることなく、遠まわしに誰かをじわじわと責めたり、痛めつけたりすることのたとえです。', '"Mencekik seseorang dengan benang sutra" adalah metafora untuk mengkritik atau menyiksa seseorang secara halus dan perlahan, tanpa menghadapi atau menyerangnya secara langsung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8987_manusia_serigala, '人狼を見たことがありますか。', 'Pernahkah Anda melihat manusia serigala?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8987_manusia_serigala, '実は、このクラスの先生は人狼なんです。', 'Sebenarnya, guru kelas ini adalah manusia serigala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8987_manusia_serigala, '「人狼」ゲームは、味方かウソつきかを会話で見分けるパーティーゲームです。', '"Werewolf" adalah permainan pesta di mana Anda membedakan antara teman dan pembohong melalui percakapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9029_sangat_besar, '道路建設には莫大な費用がかかる。', 'Pembangunan jalan memerlukan biaya yang sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9029_sangat_besar, 'このままでは、コストが莫大になる可能性があります。', 'Jika situasi ini terus berlanjut, kerugian yang ditimbulkan bisa sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9029_sangat_besar, 'カニの像は美しいが、莫大な資金が使われたことについてはだれも喜ばないだろう。', 'Patung kepiting itu indah, tapi tak seorang pun akan senang dengan banyaknya dana yang dihabiskan untuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9041_kastil_okayama, '岡山城のライトアップ、めっちゃきれいだったよ！', 'Penerangan malam Kastil Okayama sungguh indah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9041_kastil_okayama, '日曜日、リニューアルした岡山城に行ってきました。', 'Pada hari Minggu, saya mengunjungi Kastil Okayama yang telah direnovasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9041_kastil_okayama, '天気が良ければ、ここからも岡山城がはっきり見えるんですよ。', 'Jika cuaca bagus, Kastil Okayama akan terlihat jelas dari sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9091_untuk_setiap, '100RT毎にプレゼントのアマギフを5枚追加するよ！', 'Saya akan menambahkan lima kartu hadiah Amazon lagi ke giveaway untuk setiap 100 retweet yang saya dapatkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9091_untuk_setiap, '今は大体三時間毎にミルクをあげてる。', 'Saat ini saya memberinya susu formula kira-kira setiap tiga jam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9091_untuk_setiap, 'うちの車は、一年毎に点検に出しています。', 'Kami memeriksa mobil kami setiap tahun sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9242_aktif_bekerja, 'お父さんは現役のプロレスラーです。', 'Ayah adalah pegulat profesional yang aktif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9242_aktif_bekerja, 'このマンガの作者は、現役高校生なんです。', 'Penulis manga ini masih seorang siswa SMA.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9242_aktif_bekerja, '現役で大学に入学しないで、一年間海外に行こうと思うんです。', 'Saya berpikir untuk pergi ke luar negeri selama setahun tanpa mendaftar kuliah langsung setelah lulus SMA.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9248_kekakuan_bahu, 'これは肩こりが楽になるストレッチです。', 'Ini adalah latihan peregangan yang membantu meredakan bahu kaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9248_kekakuan_bahu, '肩こりをほぐす良いマッサージがあります。', 'Ada teknik pijat yang bagus untuk mengendurkan bahu yang kaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9248_kekakuan_bahu, 'スマホゲームばっかりしてるから肩こりになるんだよ。', 'Anda mengalami bahu kaku karena terlalu banyak menghabiskan waktu bermain game ponsel pintar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9280_jujur, '素直に認めろよ。', 'Jujur saja dan akui saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9280_jujur, '君の素直な気持ちが聞けてうれしいよ。', 'Aku senang bisa mendengar perasaan jujurmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9280_jujur, '人のアドバイスを素直に受け入れられる素直さって大事だよね。', 'Penting untuk memiliki keterbukaan untuk menerima saran dari orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9330_tua, 'やっぱりこの時間は、年配の人が多いですね。', 'Benar saja, ada banyak orang tua di sini pada jam segini, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9330_tua, 'このゲームは、お子様からご年配の方まで楽しんでいただけます。', 'Permainan ini dapat dinikmati oleh anak-anak maupun orang tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9330_tua, 'この村にはもう年配者しか残っていないんですよ。', 'Sekarang hanya tersisa orang lanjut usia di desa ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9365_begitu_pula_dengan, '昨日の台風がウソの様に晴れてるね。', 'Cuacanya sangat cerah — hampir seperti topan kemarin tidak benar-benar terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9365_begitu_pula_dengan, 'うちのWiFiは光の様に速い。', 'Wi-Fi kami secepat cahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9365_begitu_pula_dengan, '彼は初めてのデートに王子の様に馬に乗って現れたの。', 'Dia muncul pada kencan pertama kami dengan menunggang kuda, seolah-olah dia adalah seorang pangeran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9466_dimana, 'あの人たちは、行方不明の人をさがしているんです。', 'Orang-orang itu sedang mencari orang hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9466_dimana, '警察はヘリで犯人の行方を追っているらしい。', 'Rupanya, polisi sedang mencari keberadaan pelaku dengan menggunakan helikopter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9466_dimana, '国民全員が、その事件の行方を見守っていました。', 'Seluruh bangsa menyaksikan bagaimana kasus ini akan terungkap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9466_dimana, 'お金の行方が分からないこと自体が、すでに問題なんですよ。しかもあなた個人のお金じゃなくて、血税ですよ？', 'Fakta bahwa tidak seorang pun tahu ke mana perginya uang itu sudah menjadi masalah tersendiri. Dan yang lebih penting lagi, ini bukan uang pribadi Anda – ini adalah uang hasil jerih payah para pembayar pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9476_headbutt, '頭突きをされて、ここがいたいんです。', 'Aku ditanduk, dan di sini sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9476_headbutt, 'アイツ、いきなり頭突きをくらわせてきたんだよ！', 'Orang itu baru saja menyundulku entah dari mana!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9476_headbutt, 'あまりのバグの多さに、PCに頭突きしたくなった。', 'Komputer saya sangat bermasalah sehingga saya ingin menyundulnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9476_headbutt, '頭突きを受けてから、少しめまいがしています。', 'Aku merasa sedikit pusing sejak aku ditanduk.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1006_sejahtera, id FROM items WHERE type = 'radical' AND (slug = '8769' OR id = '8769') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1006_sejahtera, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1248_membatasi, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1248_membatasi, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1249_memberi, id FROM items WHERE type = 'radical' AND (slug = '8766' OR id = '8766') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1249_memberi, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1250_termasuk, id FROM items WHERE type = 'radical' AND (slug = '238' OR id = '238') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1250_termasuk, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1251_bayangan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1251_bayangan, id FROM items WHERE type = 'radical' AND (slug = '299' OR id = '299') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1251_bayangan, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1252_kondisi, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1252_kondisi, id FROM items WHERE type = 'radical' AND (slug = '191' OR id = '191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1253_transit, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1253_transit, id FROM items WHERE type = 'radical' AND (slug = '8787' OR id = '8787') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1253_transit, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1254_gema, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1254_gema, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1254_gema, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1254_gema, id FROM items WHERE type = 'radical' AND (slug = '197' OR id = '197') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1255_suara, id FROM items WHERE type = 'radical' AND (slug = '424' OR id = '424') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1255_suara, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1256_pemandangan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1256_pemandangan, id FROM items WHERE type = 'radical' AND (slug = '299' OR id = '299') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1257_mengeluarkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1257_mengeluarkan, r_301_teman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1258_menuntut, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1258_menuntut, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1258_menuntut, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1259_gugatan, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1259_gugatan, id FROM items WHERE type = 'radical' AND (slug = '237' OR id = '237') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1260_menangkap, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1260_menangkap, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1260_menangkap, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1260_menangkap, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1261_suplemen, id FROM items WHERE type = 'radical' AND (slug = '9392' OR id = '9392') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1261_suplemen, r_300_pernikahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1262_iklim, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1262_iklim, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1262_iklim, id FROM items WHERE type = 'radical' AND (slug = '157' OR id = '157') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1262_iklim, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1263_mendirikan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1263_mendirikan, r_303_penjaga_pantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1264_imitasi, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1264_imitasi, r_356_rumah_kaca);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1265_menangkap, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1265_menangkap, r_300_pernikahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1266_segar, id FROM items WHERE type = 'radical' AND (slug = '150' OR id = '150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1266_segar, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1268_milik, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1268_milik, r_425_belalang_sembah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1269_biasa, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1269_biasa, id FROM items WHERE type = 'radical' AND (slug = '107' OR id = '107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1269_biasa, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1270_banyak, id FROM items WHERE type = 'radical' AND (slug = '185' OR id = '185') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1270_banyak, id FROM items WHERE type = 'radical' AND (slug = '181' OR id = '181') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1271_penuh, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1271_penuh, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1271_penuh, r_304_keduanya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1272_kegemukan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1272_kegemukan, id FROM items WHERE type = 'radical' AND (slug = '100' OR id = '100') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1273_menggulir, id FROM items WHERE type = 'radical' AND (slug = '8819' OR id = '8819') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1273_menggulir, id FROM items WHERE type = 'radical' AND (slug = '228' OR id = '228') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1274_mencari, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1274_mencari, id FROM items WHERE type = 'radical' AND (slug = '190' OR id = '190') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1274_mencari, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1275_mencekik, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1275_mencekik, id FROM items WHERE type = 'radical' AND (slug = '302' OR id = '302') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1276_kawan, id FROM items WHERE type = 'radical' AND (slug = '209' OR id = '209') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1276_kawan, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1277_bersembunyi, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1277_bersembunyi, id FROM items WHERE type = 'radical' AND (slug = '8772' OR id = '8772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1277_bersembunyi, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1277_bersembunyi, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1278_menggantung, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1278_menggantung, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1278_menggantung, id FROM items WHERE type = 'radical' AND (slug = '10' OR id = '10') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1279_mengganti, id FROM items WHERE type = 'radical' AND (slug = '146' OR id = '146') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1279_mengganti, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1280_hidup, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1280_hidup, id FROM items WHERE type = 'radical' AND (slug = '69' OR id = '69') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1345_gaji, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1345_gaji, id FROM items WHERE type = 'radical' AND (slug = '216' OR id = '216') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1371_kepunahan, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1371_kepunahan, id FROM items WHERE type = 'radical' AND (slug = '110' OR id = '110') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1954_dingin, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1954_dingin, id FROM items WHERE type = 'radical' AND (slug = '299' OR id = '299') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_9028_tak_ada_habisnya, r_356_rumah_kaca);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2642_bisnis_pemerintah, id FROM items WHERE type = 'kanji' AND (slug = '499' OR id = '499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2642_bisnis_pemerintah, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2847_bumi, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3699_karakter, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3699_karakter, id FROM items WHERE type = 'kanji' AND (slug = '920' OR id = '920') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3741_divisi, id FROM items WHERE type = 'kanji' AND (slug = '937' OR id = '937') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3741_divisi, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3800_untuk_terlibat, id FROM items WHERE type = 'kanji' AND (slug = '965' OR id = '965') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3994_akan_dibangun, id FROM items WHERE type = 'kanji' AND (slug = '946' OR id = '946') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4013_menghormati, id FROM items WHERE type = 'kanji' AND (slug = '567' OR id = '567') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4013_menghormati, k_1006_sejahtera);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4335_tahan_air, id FROM items WHERE type = 'kanji' AND (slug = '1117' OR id = '1117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4335_tahan_air, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4336_pencegahan_kebakaran, id FROM items WHERE type = 'kanji' AND (slug = '1117' OR id = '1117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4336_pencegahan_kebakaran, id FROM items WHERE type = 'kanji' AND (slug = '480' OR id = '480') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4539_kuitansi, id FROM items WHERE type = 'kanji' AND (slug = '711' OR id = '711') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4539_kuitansi, id FROM items WHERE type = 'kanji' AND (slug = '1171' OR id = '1171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4539_kuitansi, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4569_kondisi, id FROM items WHERE type = 'kanji' AND (slug = '1183' OR id = '1183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4569_kondisi, k_1252_kondisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4578_untuk_menyelesaikan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1124' OR id = '1124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4744_membatasi, k_1248_membatasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4744_membatasi, id FROM items WHERE type = 'kanji' AND (slug = '728' OR id = '728') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4747_untuk_membatasi, k_1248_membatasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4749_tenggat_waktu, id FROM items WHERE type = 'kanji' AND (slug = '839' OR id = '839') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4749_tenggat_waktu, k_1248_membatasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4750_tak_terbatas, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4750_tak_terbatas, k_1248_membatasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4763_untuk_menyerap, id FROM items WHERE type = 'kanji' AND (slug = '1177' OR id = '1177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4763_untuk_menyerap, id FROM items WHERE type = 'kanji' AND (slug = '1186' OR id = '1186') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4764_untuk_dibagi, id FROM items WHERE type = 'kanji' AND (slug = '1193' OR id = '1193') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4765_diskon, id FROM items WHERE type = 'kanji' AND (slug = '1193' OR id = '1193') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4765_diskon, id FROM items WHERE type = 'kanji' AND (slug = '507' OR id = '507') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4766_untuk_mempersiapkan, id FROM items WHERE type = 'kanji' AND (slug = '1200' OR id = '1200') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4766_untuk_mempersiapkan, id FROM items WHERE type = 'kanji' AND (slug = '1202' OR id = '1202') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4767_untuk_bertekun, id FROM items WHERE type = 'kanji' AND (slug = '927' OR id = '927') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4767_untuk_bertekun, id FROM items WHERE type = 'kanji' AND (slug = '1205' OR id = '1205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4768_untuk_menarik_sesuatu_keluar, k_1257_mengeluarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4770_model_plastik, k_1264_imitasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4770_model_plastik, id FROM items WHERE type = 'kanji' AND (slug = '1232' OR id = '1232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4772_bonusnya, id FROM items WHERE type = 'kanji' AND (slug = '884' OR id = '884') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4772_bonusnya, k_1249_memberi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4772_bonusnya, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4773_untuk_menyertakan, k_1250_termasuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4774_implikasi, k_1250_termasuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4774_implikasi, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4775_bayangan, k_1251_bayangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4776_resesi, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4776_resesi, k_1252_kondisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4777_untuk_menyeberang, k_1253_transit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4779_untuk_gema, k_1254_gema);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4780_pengaruh, k_1251_bayangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4780_pengaruh, k_1254_gema);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4781_suara, k_1255_suara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4782_untuk_memilih, id FROM items WHERE type = 'kanji' AND (slug = '686' OR id = '686') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4782_untuk_memilih, k_1255_suara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4783_pemandangan, id FROM items WHERE type = 'kanji' AND (slug = '567' OR id = '567') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4783_pemandangan, k_1256_pemandangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4784_iklim_bisnis, k_1256_pemandangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4784_iklim_bisnis, k_1252_kondisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4788_untuk_menuntut, k_1258_menuntut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4789_pengaduan_pidana, id FROM items WHERE type = 'kanji' AND (slug = '1031' OR id = '1031') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4789_pengaduan_pidana, k_1258_menuntut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4790_gugatan, k_1258_menuntut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4790_gugatan, k_1259_gugatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4791_menangkap, k_1260_menangkap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4791_menangkap, k_1265_menangkap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4792_untuk_melengkapi, k_1261_suplemen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4793_calon, k_1262_iklim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4793_calon, k_1261_suplemen);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4793_calon, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4794_iklim, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4794_iklim, k_1262_iklim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4795_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4795_cuaca, k_1262_iklim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4796_iklim_musiman, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4796_iklim_musiman, k_1262_iklim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4797_untuk_peduli, k_1263_mendirikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4798_komposisi, k_1263_mendirikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4798_komposisi, id FROM items WHERE type = 'kanji' AND (slug = '780' OR id = '780') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4799_bagus, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4799_bagus, k_1263_mendirikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4800_pola, k_1264_imitasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4800_pola, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4802_segar, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4802_segar, k_1266_segar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4803_jelas, k_1266_segar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4804_ikan_segar, k_1266_segar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4804_ikan_segar, id FROM items WHERE type = 'kanji' AND (slug = '674' OR id = '674') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4805_menjadi_efektif, id FROM items WHERE type = 'kanji' AND (slug = '1267' OR id = '1267') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4809_afiliasi, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4809_afiliasi, k_1268_milik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4811_logam, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4811_logam, k_1268_milik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4812_menjadi_biasa, k_1269_biasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4813_kebiasaan, id FROM items WHERE type = 'kanji' AND (slug = '746' OR id = '746') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4813_kebiasaan, k_1269_biasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4814_kaya, k_1270_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4815_montok, k_1270_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4815_montok, k_1271_penuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4816_puas, k_1271_penuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4816_puas, id FROM items WHERE type = 'kanji' AND (slug = '561' OR id = '561') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4817_bulan_purnama, k_1271_penuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4817_bulan_purnama, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4818_rumah_penuh, k_1271_penuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4818_rumah_penuh, id FROM items WHERE type = 'kanji' AND (slug = '821' OR id = '821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4819_skor_sempurna, k_1271_penuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4819_skor_sempurna, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4820_kegemukan, k_1272_kegemukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4820_kegemukan, k_1271_penuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4821_pupuk, k_1272_kegemukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4821_pupuk, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4822_untuk_berguling, k_1273_menggulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4823_satu_jilid, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4823_satu_jilid, k_1273_menggulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4824_jilid_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4824_jilid_terakhir, k_1273_menggulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4825_jilid_pertama, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4825_jilid_pertama, k_1273_menggulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4826_jilid_kedua, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4826_jilid_kedua, k_1273_menggulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4827_untuk_mencari, k_1274_mencari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4828_investigasi_kriminal, k_1274_mencari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4828_investigasi_kriminal, id FROM items WHERE type = 'kanji' AND (slug = '1130' OR id = '1130') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4829_pembunuhan_dengan_mencekik, k_1275_mencekik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4829_pembunuhan_dengan_mencekik, id FROM items WHERE type = 'kanji' AND (slug = '880' OR id = '880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4830_untuk_memeras, k_1275_mencekik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4831_senior, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4831_senior, k_1276_kawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4832_muda, id FROM items WHERE type = 'kanji' AND (slug = '636' OR id = '636') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4832_muda, k_1276_kawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4834_untuk_menyembunyikan_sesuatu, k_1277_bersembunyi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4835_masa_pensiun, k_1277_bersembunyi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4835_masa_pensiun, k_1280_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4836_untuk_menggantung_sesuatu, k_1278_menggantung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4837_untuk_mengganti, k_1279_mengganti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4872_aktris, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4872_aktris, id FROM items WHERE type = 'kanji' AND (slug = '1206' OR id = '1206') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4873_revolusioner, id FROM items WHERE type = 'kanji' AND (slug = '1188' OR id = '1188') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4873_revolusioner, id FROM items WHERE type = 'kanji' AND (slug = '789' OR id = '789') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4873_revolusioner, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4874_jaket_kulit, id FROM items WHERE type = 'kanji' AND (slug = '1188' OR id = '1188') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4875_prefektur_nagasaki, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4875_prefektur_nagasaki, id FROM items WHERE type = 'kanji' AND (slug = '1195' OR id = '1195') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4875_prefektur_nagasaki, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4878_untuk_dipanggil, id FROM items WHERE type = 'kanji' AND (slug = '1213' OR id = '1213') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4879_untuk_ditunjukkan, id FROM items WHERE type = 'kanji' AND (slug = '1211' OR id = '1211') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4880_pemandangan, k_1256_pemandangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4880_pemandangan, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4885_untuk_ada, k_1280_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4896_kartu_nama, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4896_kartu_nama, id FROM items WHERE type = 'kanji' AND (slug = '1296' OR id = '1296') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5064_gaji, k_1345_gaji);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5064_gaji, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5067_pemotongan_gaji, id FROM items WHERE type = 'kanji' AND (slug = '1059' OR id = '1059') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5067_pemotongan_gaji, k_1345_gaji);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5077_seppuku, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5077_seppuku, id FROM items WHERE type = 'kanji' AND (slug = '1317' OR id = '1317') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5189_sangat, k_1371_kepunahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5189_sangat, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5191_putus_asa, k_1371_kepunahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5191_putus_asa, id FROM items WHERE type = 'kanji' AND (slug = '908' OR id = '908') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5607_terlambat, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5607_terlambat, id FROM items WHERE type = 'kanji' AND (slug = '1431' OR id = '1431') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6529_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '1796' OR id = '1796') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6996_dingin, k_1954_dingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7600_untuk_diperhatikan, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7600_untuk_diperhatikan, k_1253_transit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7654_biasa, id FROM items WHERE type = 'kanji' AND (slug = '1191' OR id = '1191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7654_biasa, id FROM items WHERE type = 'kanji' AND (slug = '1201' OR id = '1201') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7654_biasa, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7712_guru, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7712_guru, id FROM items WHERE type = 'kanji' AND (slug = '814' OR id = '814') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7712_guru, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7712_guru, id FROM items WHERE type = 'kanji' AND (slug = '1198' OR id = '1198') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7713_ketidakteraturan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7713_ketidakteraturan, id FROM items WHERE type = 'kanji' AND (slug = '1191' OR id = '1191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7713_ketidakteraturan, id FROM items WHERE type = 'kanji' AND (slug = '1201' OR id = '1201') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7724_untuk_mencatat, id FROM items WHERE type = 'kanji' AND (slug = '1548' OR id = '1548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7759_akan_berakhir, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7767_gema, id FROM items WHERE type = 'kanji' AND (slug = '855' OR id = '855') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7767_gema, k_1254_gema);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8680_untuk_menyimpan, id FROM items WHERE type = 'kanji' AND (slug = '1186' OR id = '1186') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8716_untuk_meningkatkan, id FROM items WHERE type = 'kanji' AND (slug = '1148' OR id = '1148') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8756_perkalian, k_1278_menggantung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8756_perkalian, id FROM items WHERE type = 'kanji' AND (slug = '762' OR id = '762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8809_untuk_melampaui, id FROM items WHERE type = 'kanji' AND (slug = '1206' OR id = '1206') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8905_untuk_mencekik, k_1275_mencekik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8987_manusia_serigala, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8987_manusia_serigala, id FROM items WHERE type = 'kanji' AND (slug = '8967' OR id = '8967') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9029_sangat_besar, k_9028_tak_ada_habisnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9029_sangat_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9041_kastil_okayama, id FROM items WHERE type = 'kanji' AND (slug = '1137' OR id = '1137') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9041_kastil_okayama, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9041_kastil_okayama, id FROM items WHERE type = 'kanji' AND (slug = '1214' OR id = '1214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9091_untuk_setiap, id FROM items WHERE type = 'kanji' AND (slug = '572' OR id = '572') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9242_aktif_bekerja, id FROM items WHERE type = 'kanji' AND (slug = '1211' OR id = '1211') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9242_aktif_bekerja, id FROM items WHERE type = 'kanji' AND (slug = '685' OR id = '685') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9248_kekakuan_bahu, id FROM items WHERE type = 'kanji' AND (slug = '1226' OR id = '1226') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9280_jujur, id FROM items WHERE type = 'kanji' AND (slug = '1138' OR id = '1138') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9280_jujur, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9330_tua, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9330_tua, id FROM items WHERE type = 'kanji' AND (slug = '742' OR id = '742') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9365_begitu_pula_dengan, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9466_dimana, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9466_dimana, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9476_headbutt, id FROM items WHERE type = 'kanji' AND (slug = '771' OR id = '771') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9476_headbutt, id FROM items WHERE type = 'kanji' AND (slug = '1304' OR id = '1304') LIMIT 1;

END $$;
