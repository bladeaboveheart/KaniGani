-- ====================================================
-- KaniGani — Seed Data Level 15 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 15) ============
  r_242_ayat UUID; r_244_masa_lalu UUID; r_245_berjalan UUID; r_408_tinggi UUID; r_437_keberanian UUID; r_8783_rumput UUID; r_8824_orang_orangan_sawah UUID; r_9329_lagi UUID; r_9391_sapu UUID;

  -- ============ KANJI IDs (Level 15) ============
  k_834_cahaya_matahari UUID; k_867_keberuntungan UUID; k_919_keahlian UUID; k_922_teknik UUID; k_928_kuil UUID; k_929_batu_besar UUID; k_930_kembali_ke_rumah UUID; k_931_musim_semi UUID; k_932_siang UUID; k_933_membersihkan UUID; k_934_musim_gugur UUID; k_935_ukuran UUID; k_936_baris UUID; k_937_daerah UUID; k_938_lereng UUID; k_939_upacara UUID; k_940_meyakini UUID; k_941_keberanian UUID; k_942_sederhana UUID; k_943_direktur UUID; k_944_mengubah UUID; k_945_suami UUID; k_947_sebelumnya UUID; k_948_racun UUID; k_949_metode UUID; k_950_menangis UUID; k_951_dangkal UUID; k_952_akun UUID; k_953_inggris UUID; k_954_tentara UUID; k_955_makanan UUID; k_956_budha UUID; k_958_malam UUID; k_959_kucing UUID; k_1608_membayar UUID; k_1891_hewan_kecil UUID; k_2083_tinggi UUID; k_9381_menjilat UUID;

  -- ============ VOCABULARY IDs (Level 15) ============
  v_2902_untuk_memperbaiki UUID; v_2955_penulis UUID; v_3138_mitra UUID; v_3371_matahari UUID; v_3575_untuk_disukai UUID; v_3589_tayangan UUID; v_3601_bermacam_macam UUID; v_3616_fukushima UUID; v_3681_teknik UUID; v_3682_keahlian UUID; v_3683_khusus UUID; v_3703_struktur_tulang UUID; v_3726_seni UUID; v_3727_seni_rupa UUID; v_3729_budha UUID; v_3730_agama_buddha UUID; v_3731_patung_buddha_raksasa UUID; v_3732_percaya UUID; v_3733_kepercayaan_diri UUID; v_3734_lampu_lalu_lintas UUID; v_3735_keyakinan UUID; v_3736_memercayai UUID; v_3737_ketidakpercayaan UUID; v_3738_membalas UUID; v_3739_keberanian UUID; v_3740_daerah UUID; v_3742_daerah UUID; v_3743_hanya UUID; v_3744_kata UUID; v_3745_bos UUID; v_3746_lereng UUID; v_3747_aneh UUID; v_3748_eksentrik UUID; v_3749_mengubah UUID; v_3750_kematian_tidak_wajar UUID; v_3751_serius UUID; v_3752_insiden UUID; v_3753_suami UUID; v_3754_batu_besar UUID; v_3755_untuk_kembali_ke_rumah UUID; v_3758_upacara UUID; v_3759_musim_semi UUID; v_3760_liburan_musim_semi UUID; v_3761_hari_hari_ini UUID; v_3762_kemarin UUID; v_3763_siang UUID; v_3764_malam UUID; v_3765_selamat_malam UUID; v_3766_setiap_malam UUID; v_3767_untuk_menjernihkan UUID; v_3768_racun UUID; v_3769_peracunan UUID; v_3770_beracun UUID; v_3771_keracunan_makanan UUID; v_3772_gas_beracun UUID; v_3773_metode UUID; v_3774_tata_bahasa UUID; v_3775_liar UUID; v_3776_menangis UUID; v_3777_dangkal UUID; v_3778_kucing UUID; v_3779_anak_kucing UUID; v_3780_musim_gugur UUID; v_3782_abad UUID; v_3783_era_umum UUID; v_3784_bahasa_inggris UUID; v_3785_percakapan_bahasa_inggris UUID; v_3786_penulisan_bahasa_inggris UUID; v_3787_britania UUID; v_3788_bahasa_inggris_jepang UUID; v_3789_jam_tangan UUID; v_3790_total UUID; v_3791_rencana UUID; v_3792_perhitungan UUID; v_3793_tentara UUID; v_3794_angkatan_laut UUID; v_3795_makanan UUID; v_3796_makanan UUID; v_3893_kikuk UUID; v_3894_sebuah_permintaan UUID; v_3895_minum_sepuasnya UUID; v_3896_makan_sepuasnya UUID; v_3898_pembunuhan UUID; v_3899_pembunuh UUID; v_3900_cincin UUID; v_3901_gelang_karet UUID; v_3904_untuk_menghafal UUID; v_3905_untuk_berlatih UUID; v_3928_gagal_dalam_ujian UUID; v_3932_insiden_tak_terduga UUID; v_3942_sinkronisasi UUID; v_3943_kuil UUID; v_4218_menjadi_proporsional UUID; v_4464_untuk_dipecahkan UUID; v_5501_lezat UUID; v_5715_memahami UUID; v_5927_untuk_membayar UUID; v_5983_untuk_mengubah_sesuatu UUID; v_6809_penghitung_hewan_kecil UUID; v_6810_empat_hewan_kecil UUID; v_7277_kokoh UUID; v_7278_tinggi UUID; v_7280_padat UUID; v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya UUID; v_7542_tentara UUID; v_7543_garis UUID; v_7544_perantara UUID; v_7640_menderita UUID; v_7697_untuk_menembak UUID; v_7754_untuk_mengatur UUID; v_8670_istirahat_makan_siang UUID; v_8707_cuaca_cerah UUID; v_8751_tahun_lalu UUID; v_8952_untuk_menghapus UUID; v_9017_untuk_membayar UUID; v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya UUID; v_9049_penumpang UUID; v_9050_menunggang_kuda UUID; v_9066_asal UUID; v_9244_meragukan UUID; v_9249_untuk_turun UUID; v_9257_untuk_mempertanyakan_sesuatu UUID; v_9269_untuk_menerima_sesuatu UUID; v_9369_teh_hijau UUID; v_9382_menjilat UUID; v_9485_tuan_tanah UUID;

BEGIN

  DELETE FROM items WHERE level = 15;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '句', 'ayat', 15, 1, 'Di penjara, mulut Anda tidak diperbolehkan berbicara dengan bebas. Ambil selembar kertas untuk digunakan sebagai pengganti mulut Anda dan mulailah menuliskan pemikiran Anda dalam bentuk <radikal>paragraf</radikal>!')
    RETURNING id INTO r_242_ayat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '去', 'masa-lalu', 15, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>masa lalu</radikal>.')
    RETURNING id INTO r_244_masa_lalu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '歩', 'berjalan', 15, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>berjalan</radikal>.')
    RETURNING id INTO r_245_berjalan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丈', 'tinggi', 15, 4, 'Anda melihat seekor narwhal berjuang dengan pita pengukur, mencoba mengukur <radikal>tinggi badannya</radikal>! Siripnya tidak bisa mencapai ujung pita, tapi tentu saja dia ingin menyertakan gadingnya yang megah. Mengukur tinggi badan bukanlah tugas yang mudah… eh, tugas bagi seekor narwhal, tapi dia akan mengetahuinya. Mungkin.')
    RETURNING id INTO r_408_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '勇', 'keberanian', 15, 5, 'Ketika seorang mama menjaga seorang pria, hal itu memberinya <radikal>keberanian</radikal> yang dibutuhkannya untuk menghadapi musuh apa pun.')
    RETURNING id INTO r_437_keberanian;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '𭕄', 'rumput', 15, 6, 'Jangan bingung membedakannya dengan triceratops. <radical>Rumput</radical> lebih rapat, dan sedikit lebih lebat, seperti ini. Ini juga lebih acak dan terjepit di beberapa bagian. Jika Anda melihat semak dengan garis seperti ini, kemungkinan besar itu adalah rumput.')
    RETURNING id INTO r_8783_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '畐', 'orang-orangan-sawah', 15, 7, 'Tanaman menjalar di sawah? Itu hanya <radikal>orang-orangan sawah</radikal>!')
    RETURNING id INTO r_8824_orang_orangan_sawah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '亦', 'lagi', 15, 8, 'Apa yang ada di balik tutup panci masak Anda? Kaki dan sirip. <radikal>Lagi</radikal>. Yang Anda tahu cara memasaknya hanyalah kaki (ayam) dan sirip, jadi Anda memasaknya berulang kali. Anda akan menyantapnya untuk makan malam malam ini, dan lagi besok, dan lagi keesokan harinya. Kaki dan sirip, lagi dan lagi dan lagi, selama sisa hari-harimu.

Alternatifnya, Anda juga bisa menganggap ini sebagai gantungan cucian dengan sepasang celana dan dua kaus kaki kecil yang mengepak seperti sirip. Karena mencuci adalah sesuatu yang harus Anda lakukan berulang kali… suka atau tidak!')
    RETURNING id INTO r_9329_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '帚', 'sapu', 15, 9, 'Inilah yang dimaksud dengan <radikal>sapu</radikal> radikal, karena bagian atasnya tampak seperti sapu tangan yang menyamping dan bagian bawahnya tampak seperti pengki.

Alternatifnya, Anda dapat mengingat yang satu ini dengan komponen-komponennya: Wolverine menyeka dahinya dengan handuk setiap kali mengambil sapu, karena menyapu membuatnya cepat berkeringat. Orang malang bisa melawan penjahat super sepanjang hari, tapi beri dia sapu dan dia langsung kelelahan.')
    RETURNING id INTO r_9391_sapu;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_242_ayat, 'Ayat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_244_masa_lalu, 'Masa lalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_245_berjalan, 'Berjalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_408_tinggi, 'Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_437_keberanian, 'Keberanian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8783_rumput, 'Rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8824_orang_orangan_sawah, 'orang-orangan sawah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_9329_lagi, 'Lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_9391_sapu, 'Sapu', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陽', 'cahaya-matahari', 15, 10, '<radical>Gedung</radical> ini memiliki akses <radical>mudah</radical> ke <kanji>sinar matahari</kanji>. <kanji>sinar matahari</kanji> langsung bersinar, karena bangunannya bening.', '<kanji>sinar matahari</kanji> masuk ke dalam gedung dengan sangat mudah, hingga mengenai <read>yo</reading>gurt (よう) Anda. Sinar matahari membuat yogurt...menjijikkan.')
    RETURNING id INTO k_834_cahaya_matahari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '福', 'keberuntungan', 15, 11, 'Saat <radikal>roh</radikal> memutuskan untuk tinggal di <radikal>orang-orangan sawah</radikal> Anda, Anda akan diberikan <kanji>keberuntungan</kanji> dan <kanji>keberuntungan</kanji> yang baik. Gagak tidak akan berkeliaran di peternakan Anda. Segala sesuatu yang Anda tanam akan menjadi besar dan lezat. Namun tidak semua orang seberuntung itu karena ada roh yang memutuskan untuk tinggal di orang-orangan sawah mereka. Jadi mungkin keberuntungan ada pada diri Anda selama ini!', 'Anda ingin memeriksa orang-orangan sawah untuk memastikan <kanji>keberuntungan</kanji> Anda baru-baru ini berasal darinya, jadi Anda menendangnya. "<reading>F***</reading> (ふく) kamu!" itu berteriak. Oh ya, ada roh di sana.')
    RETURNING id INTO k_867_keberuntungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '技', 'keahlian', 15, 12, 'Anda dapat membuat <radical>jari</radical> <radical>cabang</radical> Anda keluar. Ini adalah <kanji>keahlian</kanji> khusus Anda, sebuah <kanji>teknik</kanji> yang sangat canggih. Jari-jari Anda bercabang menjadi jari-jari yang lebih kecil dan Anda dapat memegang benda dengan sangat baik. Anda bisa mengetik super duper dengan cepat. Dan Anda bisa memenangkan pertarungan apa pun. Ini adalah keterampilan yang Anda miliki berkat jari-jari Anda yang bercabang.', 'Sayangnya, <kanji>keterampilan</kanji> ini terlalu berat untuk ditangani oleh orang biasa yang tidak memiliki keterampilan, jadi mereka mengeluarkan <read>gui</reading>llotine (ぎ). Saya kira mereka akan memotong jari-jari terampil Anda karena itu agak menakutkan.')
    RETURNING id INTO k_919_keahlian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '術', 'teknik', 15, 13, 'Ada <radical>pergi</radikal> beberapa <radikal>malaikat</radikal> dengan <radikal>jatuhan</radikal> di bahu mereka. Membawa barang seperti itu memerlukan <kanji>teknik</kanji>. Ini adalah <kanji>seni</kanji> yang nyata.', 'Malaikat sangat ahli dalam hal ini karena mereka terlatih dalam nin<reading>jutsu</reading> (じゅつ), atau "teknik ninja". Semua orang tahu bahwa ninja pandai membawa barang-barang saat bepergian!')
    RETURNING id INTO k_922_teknik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寺', 'kuil', 15, 14, 'Kanji <radikal>kuil</radikal> dan kanji <kanji>kuil</kanji> sama persis! Cemerlang.', 'Seseorang meninggal. Anda bertanya bagaimana orang ini meninggal, orang yang dikuburkan di <kanji>kuil</kanji>. Pendeta/biksu mengatakan bahwa itu terjadi dalam serangan <reading>teror</reading> (てら) yang tragis.')
    RETURNING id INTO k_928_kuil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '岩', 'batu-besar', 15, 15, '<radikal>gunung</radikal> <radikal>batu</radikal> mungkin akan menjadi batu yang sangat besar. Kita berbicara tentang <kanji>batu besar</kanji> di sini.', '"<kanji>Batu</kanji>!!!" teriak sebuah suara dari belakangmu. "<reading>Eee, apa</reading>...?" (いわ) kamu membalas. Anda melihat ke atas dan melihat sebuah batu besar jatuh dari tebing di atas Anda. "Eeeeee! Apa!?," teriakmu lagi sambil berlari dan berteriak kali ini.')
    RETURNING id INTO k_929_batu_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '帰', 'kembali-ke-rumah', 15, 16, 'Anda mengambil <radical>pisau</radical> dan <radical>sapu</radical> karena Anda bersiap untuk <kanji>pulang</kanji>. Akan ada banyak pekerjaan yang harus dilakukan ketika Anda kembali ke rumah — memasak, membersihkan, memperbaiki barang-barang — jadi pisau dan sapu Anda pasti berguna.', 'Agar Anda <kanji>pulang</kanji>, keluarga Anda harus meminta dunia untuk <reading>返</reading>す (かえ) Anda kepada mereka. Anda merasa berada di rumah bersama keluarga Anda - dunia luar hanya meminjam Anda, dan pada akhirnya dunia perlu melindungi Anda dan membiarkan Anda kembali ke rumah.')
    RETURNING id INTO k_930_kembali_ke_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '春', 'musim-semi', 15, 17, 'Saat Anda melihat <radical>musim semi</radical> <radical>matahari</radical> Anda tahu bahwa ini akhirnya adalah musim <kanji>musim semi</kanji>.', 'Anda juga tahu bahwa <kanji>musim semi</kanji> telah tiba ketika Anda mulai <reading>hallu</reading>cinating (はる). Dengan banyaknya serbuk sari yang beterbangan di sekitar, tidak dapat dihindari bahwa musim semi akan membuat Anda berhalusinasi - ini hanyalah bagian dari musim.')
    RETURNING id INTO k_931_musim_semi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '昼', 'siang', 15, 18, '<radical>udang</radical> raksasa muncul di atas <radical>matahari</radical> setelah ia naik tinggi di atas <radical>tanah</radical>, dan inilah cara Anda mengetahui bahwa ini <kanji>siang</kanji>. Udang muncul di bawah sinar matahari tepat pada siang hari setiap hari, untuk mengumumkan bahwa hari sudah siang.', 'Pada <kanji>siang</kanji>, udang juga mengenakan <reading>tumit</reading> yang tinggi (ひる). Ia ingin terlihat bagus untuk udang lain yang akan diajak makan siang. Tengah hari? Lebih mirip sepatu hak tinggi, kan?')
    RETURNING id INTO k_932_siang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '晴', 'membersihkan', 15, 19, '<radical>matahari</radikal> telah terbit, langit <radikal>biru</radikal>, segalanya mulai <kanji>cerah</kanji>!', 'Ketika mulai <kanji>jelas</kanji>, Anda berseru, "<reading>Hah</reading> (は)! Sudah kubilang begitu!" Kamu punya firasat bahwa masalah ini akan beres, tapi tidak ada seorang pun yang mempercayaimu, jadi sekarang kamu harus berteriak "Hah!" dan gosokkan kebenaranmu ke wajah semua orang.')
    RETURNING id INTO k_933_membersihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '秋', 'musim-gugur', 15, 20, '<radical>Biji-bijian</radical> terlihat seperti <radical>berapi</radical> di <kanji>musim gugur</kanji>. Semuanya berubah menjadi merah, oranye, dan coklat, warna api. Menyenangkan juga membakar biji-bijian di musim gugur, karena cuaca semakin dingin.', 'Saat biji-bijian terbakar dan musim berganti ke musim gugur, bayangkan mereka berteriak kesakitan: "<reading>ACK</reading> (あき)!"')
    RETURNING id INTO k_934_musim_gugur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '計', 'ukuran', 15, 21, 'Jika Anda ingin <radical>mengatakan</radical> seberapa besar <radical>cross</radical>, Anda harus <kanji>mengukur</kanji> itu. Anda tidak dapat mengetahui ukuran suatu benda tanpa mengukurnya terlebih dahulu.', 'Anda perlu <kanji>mengukur</kanji> salib ini tetapi yang Anda miliki hanyalah <reading>ca</reading>ke (けい). Cukup bagus! Saya yakin semua kue memiliki ukuran yang sama persis, sehingga merupakan satuan ukuran yang dapat diandalkan.')
    RETURNING id INTO k_935_ukuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '列', 'baris', 15, 22, 'Ambil <radical>yakuza</radical> <radical>pisau</radical> Anda dan letakkan di <kanji>baris</kanji> bersama yang lain.', 'Haruskah kita menempatkannya dalam satu <kanji>baris</kanji>? <read>Ayo</reading> (れつ) letakkan mereka dalam satu baris!')
    RETURNING id INTO k_936_baris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '区', 'daerah', 15, 23, '<radical>kandang</radikal> dengan <radikal>harta</radikal> di dalamnya sebenarnya adalah peta <kanji>distrik</kanji> tempat harta karun itu berada.', 'Ada satu <kanji>distrik</kanji> yang Anda minati, dan itulah distrik <reading>coo</reading>kie (く).')
    RETURNING id INTO k_937_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '坂', 'lereng', 15, 24, '<radical>Kotoran</radikal> menjadi <radikal>anti</radikal>-sosial jika berbentuk <kanji>lereng</kanji>. Coba pikirkan — adakah yang lebih menyebalkan daripada harus mendaki lereng yang curam? Mengapa tanah di sini membentuk lereng?! Karena kotoran bersifat anti-sosial, dan kemiringan adalah cara yang memberitahu Anda untuk menjauh.', 'Anda perlu mengetahui hal-hal berikut tentang <kanji>kemiringan</kanji> jika Anda ingin bermain <reading>sepak bola</reading> (さか). Sepak bola ternyata sangat intensif lerengnya.')
    RETURNING id INTO k_938_lereng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '式', 'upacara', 15, 25, '<radikal>upacara</radikal> yang baik sedang dalam <radikal>konstruksi</radikal> untuk waktu yang lama. Anda tidak bisa langsung membuat upacara baru. Upacara dilakukan dengan cara tertentu karena memang selalu demikian. Singkatnya, untuk membangun sebuah upacara, Anda harus membuat <kanji>ritual</kanji> terlebih dahulu. Kemudian, ritual tersebut dapat dikonstruksi menjadi <kanji>upacara</kanji> yang lebih besar dan mewah.

Kanji ini juga berarti <kanji>persamaan</kanji> karena alasan tertentu. Bayangkan saja sebuah upacara yang melibatkan mengerjakan matematika dan menyelesaikan persamaan. Betapa anehnya hal itu? Anggaplah Anda berada di upacara ini.', 'Jadi, Anda berada di <kanji>ritual</kanji>, tapi bukan sembarang ritual lama. Ini adalah <kanji>upacara</kanji> yang lengkap dan sangat <read>cantik</reading> (しき). Bayangkan betapa cantiknya itu. Cobalah — kali ini saya akan membiarkan Anda menunjukkan kecanggihannya (ini adalah praktik yang bagus).')
    RETURNING id INTO k_939_upacara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '信', 'meyakini', 15, 26, 'Kepada <radical>pemimpin</radikal> Anda, Anda <radikal>mengatakan</radikal>: "<kanji>Percaya</kanji> dan <kanji>percaya</kanji> kepada saya." Pemimpin berpikir Anda tidak dapat menangani tugas Anda, jadi Anda harus mengatakan ini kepadanya. Anda ingin dia percaya dan percaya bahwa Anda bertanggung jawab. Anda dapat menangani tugas ini.', 'Saat Anda menghadap pemimpin Anda dan berkata "<kanji>Percaya</kanji> dan <kanji>percaya</kanji> kepada saya," Anda berlutut di setiap <read>tulang kering</reading> (しん). Anda menderita shin splints, jadi agak sakit, tapi Anda tetap melakukannya untuk menunjukkan betapa seriusnya Anda.')
    RETURNING id INTO k_940_meyakini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '勇', 'keberanian', 15, 27, 'Kata radikal untuk <radical>keberanian</radikal> dan kanji untuk <kanji>keberanian</kanji> sama persis.', 'Seorang pria membutuhkan <kanji>keberanian</kanji> untuk melawan semua <reading>kamu</reading>di dunia. Jumlahnya sangat banyak dan sulit dipahami, namun pria dapat menghadapinya dengan berani berkat ibunya.')
    RETURNING id INTO k_941_keberanian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '単', 'sederhana', 15, 28, 'Kanji <radikal>sederhana</radikal> dan kanji <kanji>sederhana</kanji> adalah sama!', 'Salah satu hal paling <kanji>sederhana</kanji> di dunia adalah <reading>tan</reading> (たん). Yang harus Anda lakukan adalah berdiri di luar cukup lama. Tidak peduli apa jenis kulit yang Anda miliki atau seperti apa cuacanya. Pada akhirnya, jika Anda berdiri di sana cukup lama, kulit Anda akan menjadi cokelat.')
    RETURNING id INTO k_942_sederhana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '司', 'direktur', 15, 29, 'Lemparkan <radical>jubah</radikal> ke <radikal>menjalar</radikal>, dan tiba-tiba mereka berpikir bahwa mereka adalah <kanji>sutradara</kanji> yang hebat. Mereka berkeliling menyebut diri mereka direktur pelaksana ini, direktur jenderal itu. Mereka menyusup ke dalam pertemuan-pertemuan dan upacara-upacara dan mencoba mengarahkan jalannya acara, semua karena jubah bodoh itu.', 'Setelah tanaman merambat ini mengenakan jubah, mereka memutuskan untuk menjadi <kanji>Direktur</kanji> dari <reading>Shee</reading>p (し). Mulai sekarang semua bisnis yang berhubungan dengan domba, kebijakan pemerintah, dan hukum akan ditentukan oleh tanaman merambat bertanduk ini, karena mereka adalah Direktur Domba.')
    RETURNING id INTO k_943_direktur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '変', 'mengubah', 15, 30, '<radical>Berkali-kali</radical> dan lagi, <radical>musim dingin</radical> <kanji>mengubah</kanji> Anda setiap tahun.', 'Anda tahu apa lagi yang <kanji>berubah</kanji> setiap musim dingin? <read>Ayam</reading> (へん)! Mereka terus-menerus bertelur, yang kemudian (mungkin) berubah menjadi ayam baru.')
    RETURNING id INTO k_944_mengubah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '夫', 'suami', 15, 31, 'Kanji <radikal>suami</radikal> dan kanji <kanji>suami</kanji> adalah sama. Betapa bermanfaatnya, tidak seperti beberapa suami, menurut saya.', 'Apa yang disukai semua <kanji>suami</kanji>? <read>Bodoh</reading>d (ふう)! Bisakah kamu mendengar calon suamimu? Dia berkata, "Foooood! FOOOOOD!" seperti sejenis zombie yang mengidam makanan.')
    RETURNING id INTO k_945_suami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '昨', 'sebelumnya', 15, 32, 'Setelah <radical>matahari</radikal> muncul, Anda dapat menggunakan <radical>kunci</radikal> ini untuk membukanya dan membawa Anda ke <kanji>hari sebelumnya</kanji>, bahkan hanya <kanji>kemarin</kanji>! Matahari bertanggung jawab atas perubahan hari, jadi jika Anda menggunakan kunci untuk membukanya, Anda dapat mengontrol aliran waktu dan kembali ke kemarin, atau hari sebelumnya di masa lalu. Lihatlah kekuatan matahari.', 'Perjalanan waktu ke waktu <kanji>sebelumnya</kanji>, seperti <kanji>kemarin</kanji>, dapat terasa berat bagi tubuh. Oleh karena itu, Anda mengenakan <reading>karung</reading> (さく) kecil untuk menyimpan barang-barang berharga Anda saat Anda menjelajahi pasir waktu. Karung menjaga barang-barang penting anda agar tidak hilang. Karung itu juga menyimpan kuncimu menuju matahari.')
    RETURNING id INTO k_947_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '毒', 'racun', 15, 33, 'Sebuah <radical>sangkar tulang rusuk</radikal> yang tergantung di <radikal>jendela</radikal> sebuah toko menunjukkan bahwa mereka menjual <kanji>racun</kanji>. Itu adalah tanda universal, seperti tiang tukang cukur atau tanda salib di apotek.', 'Tanyakan kepada penjual <kanji>racun</kanji> mana pun: di tengah teka-teki Su<reading>doku</reading> (どく) adalah waktu terbaik untuk meracuni seseorang. Mereka akan berkonsentrasi begitu keras pada teka-teki Sudoku sehingga mereka bahkan tidak menyadari racunnya mulai masuk… sampai semuanya terlambat.')
    RETURNING id INTO k_948_racun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '法', 'metode', 15, 34, '<radical>Tsunami</radical> di <radical>masa lalu</radical> mengubah <kanji>metode</kanji> dan <kanji>hukum</kanji> saat ini.', '<kanji>metode</kanji> dan <kanji>hukum</kanji> ini paling memengaruhi <membaca>ho</reading>saya (ほう) Anda sendiri.')
    RETURNING id INTO k_949_metode;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '泣', 'menangis', 15, 35, '<radikal>tsunami</radikal> mendekat, dan siapa pun yang berani <radikal>berdiri</radikal> di depannya pasti akan <kanji>menangis</kanji>. Tsunami itu akan menghantam Anda dengan keras, dan merenggut Anda dari tempat Anda berdiri. Siapa yang tidak menangis?', 'Tahukah Anda satu-satunya cara untuk menghentikan diri Anda <kanji>menangis</kanji> setelah tsunami? Benar sekali, <read>na</reading>chos (な)! Nacho adalah satu-satunya cara yang terbukti dapat menghibur orang-orang setelah dilanda tsunami.')
    RETURNING id INTO k_950_menangis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '浅', 'dangkal', 15, 36, 'Setelah <radikal>tsunami</radikal>, jika Anda pergi ke <radikal>bar</radikal>, Anda akan mendapati diri Anda berdiri di perairan <kanji>dangkal</kanji>. Anda hanya mencoba menikmati minuman, tetapi dengan kaki yang terus-menerus basah kuyup, rasanya tidak enak. Kami berharap percakapan dengan teman kencan Anda tidak dangkal juga!', 'Bir apa yang Anda minum di bar ini sambil berdiri di perairan <kanji>dangkal</kanji>? Anda sedang minum <read>Asa</reading>hai (あさ), bir pegawai kantoran. Asahi sangat kering, sehingga mengalihkan perhatian Anda dari perairan dangkal.')
    RETURNING id INTO k_951_dangkal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紀', 'akun', 15, 37, '<radical>utas</radikal> yang Anda jalin bersama untuk memberi tahu orang lain tentang <radikal>diri Anda</radikal> adalah <kanji>akun</kanji> hidup Anda. Ini adalah <kanji>narasi</kanji> Anda sendiri, yang menyatukan semua yang telah Anda lalui.', 'Anda mengambil <kanji>akun</kanji> ini dan menguncinya dengan <reading>key</reading> khusus (き). Kunci ini hanya kamu berikan kepada orang yang benar-benar kamu percaya, agar mereka bisa membaca kisah hidupmu dan benar-benar memahamimu.')
    RETURNING id INTO k_952_akun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '英', 'inggris', 15, 38, 'Ada banyak <radical>bunga</radical> di <radical>pusat</radikal> <kanji>Inggris</kanji>. Pada awalnya mungkin tampak hujan dan kelabu, tetapi jika Anda berjalan tepat ke pusat kota, Anda akan melihat semua bunga yang tumbuh di tengah negara tersebut.

Kanji ini juga berarti <kanji>Bahasa Inggris</kanji>, yang sangat mirip dengan Inggris. Bayangkan saja semua orang Inggris berjalan ke pusat bunga, di mana bunga-bunga itu berada, dan berbicara bahasa Inggris kepada mereka untuk membantu mereka tumbuh.', 'Anda terus berjalan ke pusat <kanji>Inggris</kanji> dan melihat <read>a</reading>jagung (えい) raksasa ditanam di tengah tanah. Biji pohon ek ini adalah sumber dari semua bunga dan kehidupan di Inggris.')
    RETURNING id INTO k_953_inggris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '軍', 'tentara', 15, 39, 'Anda bertemu <radical>dahi</radical> seseorang dengan <radical>mobil</radical> Anda. Dahi besar yang Anda pukul adalah milik Kim Jong Un. Anda tahu bahwa sekarang seluruh <kanji>tentara</kanji> Korea Utara akan mengejar Anda.', '<kanji>tentara</kanji> mengejarmu. Setiap tentara memiliki <reading>senjata</reading> (ぐん) dan mereka ingin menggunakan senjata mereka untuk menembak mati Anda! Anda membunuh pemimpin mereka dengan mobil dan sekarang mereka akan membalas Anda dengan senjata!')
    RETURNING id INTO k_954_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '飯', 'makanan', 15, 40, 'Anda mungkin ingin <radikal>makan</radikal>, namun sikap <radikal>anti</radikal> makan Anda berarti <kanji>makanan</kanji> Anda akan tetap berada di depan Anda, tidak dimakan. Makanan dimaksudkan untuk dimakan! Berhentilah mencoba berpuasa dan makanlah.', 'Saat Anda menatap <kanji>makanan</kanji>, <reading>Han</reading> (はん) Solo muncul di hadapan Anda dan menggigitnya! Inilah yang terjadi jika Anda tidak memakan makanan Anda, maka orang lain akan memakannya.')
    RETURNING id INTO k_955_makanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '仏', 'budha', 15, 41, '<radical>Pemimpin</radikal> Anda di <radikal>pribadi</radikal> adalah <kanji>Buddha</kanji>. Anda tidak merasa perlu memberi tahu semua orang. Namun ketika Anda sendirian, Anda memberikan waktu Anda kepada Buddha dan membiarkan Dia memimpin hidup Anda.', '<kanji>Buddha</kanji> pribadi Anda sedikit berbeda dari gagasan orang lain tentang dirinya. Buddha Anda mengenakan <reading>sepatu bot</reading> (ぶつ). Mereka besar dan kenyal, dan terlihat luar biasa saat dikenakan padanya.')
    RETURNING id INTO k_956_budha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '晩', 'malam', 15, 42, '<radical>matahari</radikal> memiliki <radikal>alasan</radikal> untuk menghilang di <kanji>malam</kanji>. Matahari menjadi sangat lelah, sama seperti orang lain – jadi ketika malam tiba, matahari minta diri dan pergi tidur. Itu alasan yang sah.', 'Sayangnya, kamu juga punya riwayat terlalu banyak bekerja, jadi kamu langsung <reading>dilarang</reading>ned (ばん) untuk muncul di <kanji>malam</kanji>.')
    RETURNING id INTO k_958_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '猫', 'kucing', 15, 43, 'Jika Anda melihat <radical>hewan</radikal> di antara <radikal>bunga</radikal> di <radikal>sawah</radikal>, kemungkinan besar itu adalah <kanji>kucing</kanji>. Kucing menyukai bunga sawah, sama seperti mereka menyukai tanaman catnip.', 'Tunggu sebentar… <kanji>kucing</kanji> ini terlihat cukup aneh. Anda melihat lebih dekat, ternyata ia tidak memiliki <reading>leher</reading> (ねこ). Anda ingin mengelusnya, tetapi area kepalanya sangat sensitif, yang pada dasarnya adalah wajah yang terhubung ke tubuh...')
    RETURNING id INTO k_959_kucing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '払', 'membayar', 15, 44, '<radical>jari</radical> Anda bersifat <radical>pribadi</radical>, tidak ada yang dapat melihatnya kecuali mereka <kanji>membayar</kanji>! Dan Anda memutuskan apakah yang mereka bayarkan cukup untuk mengintip.', 'Jika seseorang mencoba melihat tanpa membayar, itu <reading>hara</reading>ssment (はら)! Tidak ada seorang pun yang dapat melihat milik Anda tanpa pembayaran yang layak, tetapi yang lebih penting, persetujuan Anda!')
    RETURNING id INTO k_1608_membayar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '匹', 'hewan-kecil', 15, 45, 'Di dalam <radical>kandang</radikal> terdapat beberapa <radikal>kaki</radikal>. Itu adalah kaki yang melekat pada <kanji>binatang kecil</kanji>.', 'Anda melihat ke atas melalui kain, dan melihat seekor kucing tak berbulu. <kanji>hewan kecil</kanji> ini tidak berbulu, namun yang paling mengejutkan adalah <reading>cupang</reading> (ひき).')
    RETURNING id INTO k_1891_hewan_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '丈', 'tinggi', 15, 46, 'Radikal <radikal>tinggi</radikal> dan kanji <kanji>tinggi</kanji> adalah sama!

Meski begitu, ada arti sekunder dari kanji <kanji>sepuluh kaki</kanji> ini. Jadi, ketika Anda memikirkan tinggi badan, bayangkan tinggi tersebut sebagai sepuluh kaki (atau <kanji>tiga meter</kanji>).', 'Ketika Anda memikirkan <kanji>tinggi</kanji>, pikirkan teman besar buruh tani kita, <reading>Joe</reading> (じょう). Dia pria besar, dan dia memiliki banyak tinggi badan. Faktanya, tingginya <kanji>sepuluh kaki</kanji>.')
    RETURNING id INTO k_2083_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '舐', 'menjilat', 15, 47, 'Anggota <radical>lidah</radikal> <radikal>klan</radikal> suka melakukan satu hal: <kanji>menjilat</kanji>. Mereka berkeliling menjilati segalanya untuk menandai wilayah klan lidah mereka, lho? Mereka bahkan saling menjilat pipi sebagai tanda salam.', 'Sayangnya, anggota klan lidah juga <kanji>menjilat</kanji> <reading>na</reading>chos (な) Anda. Anda telah menyimpan nacho itu! Itu adalah jatah perjalananmu. Sekarang setiap nacho telah dijilat hingga bersih.')
    RETURNING id INTO k_9381_menjilat;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_834_cahaya_matahari, 'Cahaya matahari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_834_cahaya_matahari, 'Sinar matahari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_867_keberuntungan, 'Keberuntungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_867_keberuntungan, 'Harta benda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_919_keahlian, 'Keahlian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_919_keahlian, 'Teknik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_922_teknik, 'Teknik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_922_teknik, 'Seni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_928_kuil, 'Kuil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_929_batu_besar, 'Batu besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_930_kembali_ke_rumah, 'Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_930_kembali_ke_rumah, 'Kembali ke Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_931_musim_semi, 'Musim semi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_932_siang, 'Siang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_933_membersihkan, 'Membersihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_934_musim_gugur, 'Musim gugur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_934_musim_gugur, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_935_ukuran, 'Ukuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_935_ukuran, 'Pengukuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_936_baris, 'Baris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_937_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_937_daerah, 'Bangsal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_938_lereng, 'Lereng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_939_upacara, 'Upacara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_939_upacara, 'Upacara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_939_upacara, 'Persamaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_940_meyakini, 'Meyakini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_940_meyakini, 'Memercayai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_941_keberanian, 'Keberanian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_941_keberanian, 'Keberanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_942_sederhana, 'Sederhana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_943_direktur, 'Direktur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_944_mengubah, 'Mengubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_944_mengubah, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_945_suami, 'Suami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_947_sebelumnya, 'Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_947_sebelumnya, 'Kemarin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_948_racun, 'Racun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_949_metode, 'Metode', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_949_metode, 'Hukum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_950_menangis, 'Menangis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_951_dangkal, 'Dangkal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_952_akun, 'Akun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_952_akun, 'Cerita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_953_inggris, 'Inggris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_953_inggris, 'Bahasa inggris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_953_inggris, 'Unggul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_954_tentara, 'Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_955_makanan, 'Makanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_955_makanan, 'Makanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_956_budha, 'Budha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_958_malam, 'Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_958_malam, 'Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_959_kucing, 'Kucing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1608_membayar, 'Membayar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1891_hewan_kecil, 'Hewan Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1891_hewan_kecil, 'Penghitung Hewan Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2083_tinggi, 'Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2083_tinggi, 'Sepuluh Kaki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2083_tinggi, 'Tiga Meter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9381_menjilat, 'Menjilat', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_834_cahaya_matahari, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_834_cahaya_matahari, 'ひ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_834_cahaya_matahari, 'はる', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_867_keberuntungan, 'ふく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_919_keahlian, 'ぎ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_919_keahlian, 'わざ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_922_teknik, 'じゅつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_922_teknik, 'すべ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_928_kuil, 'てら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_928_kuil, 'じ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_929_batu_besar, 'いわ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_929_batu_besar, 'がん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_930_kembali_ke_rumah, 'かえ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_930_kembali_ke_rumah, 'き', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_931_musim_semi, 'はる', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_931_musim_semi, 'しゅん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_932_siang, 'ひる', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_932_siang, 'ちゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_933_membersihkan, 'は', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_933_membersihkan, 'せい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_934_musim_gugur, 'あき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_934_musim_gugur, 'しゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_935_ukuran, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_935_ukuran, 'はか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_936_baris, 'れつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_937_daerah, 'く', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_938_lereng, 'さか', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_938_lereng, 'はん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_939_upacara, 'しき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_940_meyakini, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_941_keberanian, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_941_keberanian, 'いさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_942_sederhana, 'たん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_943_direktur, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_943_direktur, 'つかさど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_944_mengubah, 'へん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_944_mengubah, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_945_suami, 'ふう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_945_suami, 'ふ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_945_suami, 'おっと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_947_sebelumnya, 'さく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_948_racun, 'どく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_949_metode, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_950_menangis, 'な', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_950_menangis, 'きゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_951_dangkal, 'あさ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_951_dangkal, 'せん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_952_akun, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_953_inggris, 'えい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_954_tentara, 'ぐん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_955_makanan, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_955_makanan, 'めし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_956_budha, 'ぶつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_956_budha, 'ほとけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_958_malam, 'ばん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_959_kucing, 'ねこ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1608_membayar, 'はら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1608_membayar, 'ふつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1891_hewan_kecil, 'ひき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1891_hewan_kecil, 'ひつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2083_tinggi, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2083_tinggi, 'たけ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9381_menjilat, 'な', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9381_menjilat, 'ねぶ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9381_menjilat, 'し', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直す', 'untuk-memperbaiki', 15, 48, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Ingat bagaimana 直 juga bisa berarti <kanji>memperbaiki</kanji>? Nah, kata ini menggunakan arti itu, jadi <vocabulary>to fix</vocabulary>. Ini adalah saat Anda memperbaiki sesuatu, seperti melakukan tindakan fisik sebenarnya untuk memperbaiki.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda perlu <vocabulary>untuk memperbaiki</vocabulary> sesuatu <reading>sekarang</reading> (なお)! Serius, ini mendesak! Jika Anda tidak memperbaikinya sekarang, ini akan menimbulkan masalah besar bagi semua orang, jadi lakukan sekarang juga!!!', 'Untuk Memperbaiki, Untuk Memperbaiki, Untuk Memperbaiki')
    RETURNING id INTO v_2902_untuk_memperbaiki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '作家', 'penulis', 15, 49, 'Ini memang aneh, tapi hanya pada pandangan pertama. Anda <kanji>membuat</kanji> sebuah <kanji>rumah</kanji>. Anda mungkin mengira ini berarti sesuatu seperti "membangun rumah" atau "konstruksi" atau semacamnya. Sebaliknya, itu berarti penulis. Anggap saja begini: Seorang <vocabulary>writer</vocabulary> <kanji>membuat</kanji> (menulis dan menciptakan karya) di <kanji>rumah</kanji> mereka. Penulis tidak membuat kata-kata mereka ajaib di kantor perusahaan!

作家 umumnya digunakan untuk menyebut seseorang yang menulis secara profesional sebagai suatu pekerjaan, khususnya di bidang sastra. Kata ini juga dapat digunakan secara lebih luas untuk merujuk pada pencipta yang menghasilkan karya seni atau kerajinan individu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena pembacaan さく dari 作 menjadi さっ di sini, kami telah membuatkan mnemonik agar Anda dapat mengingat bacaan ini:

<vocabulary>Penulis</vocabulary>kecintaan <reading>sepak bola</reading> (さっか). Faktanya, bermain sepak bola adalah cara mereka mendapatkan inspirasi. Cobalah bermain sepak bola, mungkin Anda juga akan menjadi <vocabulary>kreator</vocabulary>!', 'Penulis, Pengarang, Pencipta')
    RETURNING id INTO v_2955_penulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '相手', 'mitra', 15, 50, 'Ingat bagaimana 手 bisa berarti "pelaku"? Sekarang, menurut Anda <kanji>saling</kanji> <kanji>pelaku</kanji> Anda apa? Itu adalah seseorang yang berbagi aktivitas atau tugas yang sama dengan Anda. Orang ini bisa menjadi <vocabulary>mitra</vocabulary> Anda, <vocabulary>pendamping</vocabulary>, atau bahkan <vocabulary>lawan</vocabulary> dalam situasi tertentu.', 'Bacaannya adalah bacaan kun''yomi. Bagi 手, itu tidak masalah bagimu. Untuk 相, itu lebih menjadi masalah karena Anda mempelajari bacaan on''yomi untuk itu. Pikirkan seperti ini: 

Pasangan Anda tidak akan menjadi pasangan Anda tanpa Anda. Pasangan Anda adalah: <reading>Saya</reading> (あい) dan Anda. Ingatlah hal itu saat Anda menatap mata pasangan Anda. "Aku dan kamu."', 'Mitra, Pendamping, Lawan')
    RETURNING id INTO v_3138_mitra;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '太陽', 'matahari', 15, 51, 'Benda <kanji>lemak</kanji> <kanji>sinar matahari</kanji> yang ada di langit... apa namanya? Oh, benar. Itu adalah <vocabulary>matahari</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari cara membaca たい dengan kanji 太, jadi inilah mnemonik yang dapat membantu Anda:

Saat <vocabulary>matahari</vocabulary> terbit, lepaskan <reading>dasi</reading> Anda (たい). Pernahkah Anda mengenakan dasi di luar saat cuaca cerah dan panas? Itu tidak menyenangkan. Dasi biasanya masih dapat ditoleransi sampai matahari terbit - maka Anda akan sangat menyadari betapa panas dan tidak nyamannya dasi tersebut. Silakan, lepaskan dasimu.', 'Matahari')
    RETURNING id INTO v_3371_matahari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '好む', 'untuk-disukai', 15, 52, 'Anda tahu bahwa 好き adalah "seperti". Meskipun 好き sudah seperti kata kerja, ini sudah pasti merupakan kata kerja. Bisa berupa <vocabulary>menyukai</vocabulary> atau <vocabulary>menyukai</vocabulary>.', 'Bacaannya aneh, berbeda dengan apa pun yang pernah dipelajari, kanji on''yomi atau vocab kun''yomi. Bacaannya この, jadi pikirkan ini: 

<vocabulary>yang mudah untuk disukai</vocabulary> apa? <membaca>子</membaca>? <reading>Tidak</reading> (この), bukan untukmu. Anda selalu mengatakan "子? Tidak!" Kebanyakan orang menyukai anak-anak, setidaknya anak mereka sendiri, tetapi Anda tidak. Bising, kuman, miskin 子? Tidak, tidak, terima kasih!', 'Untuk Disukai, Menyukai')
    RETURNING id INTO v_3575_untuk_disukai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感想', 'tayangan', 15, 53, '<kanji>perasaan</kanji> yang Anda <kanji>renungkan</kanji> tentang suatu subjek adalah <vocabulary>kesan</vocabulary> dan <vocabulary>pemikiran</vocabulary> Anda terhadap subjek tersebut.

感想 adalah tentang apa yang Anda pikirkan atau rasakan setelah mengalami sesuatu, seperti setelah membaca buku, menonton film, atau pergi ke suatu acara.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tayangan, Kesan Seseorang, Pikiran')
    RETURNING id INTO v_3589_tayangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '様々', 'bermacam-macam', 15, 54, 'Yang ini agak rumit. Anda telah mempelajari bahwa 様 adalah "pengakhiran nama formal", namun bisa juga berarti "cara", seperti cara Anda melakukan sesuatu. Jadi, jika Anda memiliki banyak tata krama, Anda memiliki banyak <vocabulary>berbagai</vocabulary> cara dalam melakukan sesuatu!', 'Bacaannya hanyalah bacaan yang Anda pelajari dengan kanji. Yang kedua adalah ざま, yang berperan dalam arti "berbagai" dari kata tersebut. Bahkan ada berbagai cara untuk membaca さま di kata ini!', 'Bermacam-macam')
    RETURNING id INTO v_3601_bermacam_macam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '福島', 'fukushima', 15, 55, '<kanji>keberuntungan</kanji> <kanji>pulau</kanji> sebenarnya tidak terlalu beruntung. Di sinilah <vocabulary>Fukushima</vocabulary> tempat krisis nuklir terjadi setelah gempa bumi tahun 2011. Jadi, ketika Anda memikirkan "pulau keberuntungan", di sinilah Anda harus berpikir.', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji. Jika ada satu hal yang beruntung, mungkin itu adalah hal itu.', 'Fukushima')
    RETURNING id INTO v_3616_fukushima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '技', 'teknik', 15, 56, 'Apa itu <kanji>keterampilan</kanji>? Itu adalah sesuatu yang dapat Anda lakukan, dan lakukan dengan cukup baik. Ini adalah <vocabulary>teknik</vocabulary> yang dapat Anda wujudkan dengan mudah.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda melakukan <vocabulary>teknik</vocabulary> Anda pada orang jahat, mendatangi Anda. Anda membalikkannya dan menjatuhkannya. Dia <reading>tadinya</reading> (わざ) adalah ancaman, tapi sekarang tidak lagi. Anda melihat lebih dekat pada orang jahat itu. Ternyata itu adalah <read>Woz</reading>, salah satu pendiri Apple. Dia hanya mencoba memberi Anda iPhone12, bukan meraih pergelangan tangan Anda. Ups!', 'Teknik, Seni, Keahlian')
    RETURNING id INTO v_3681_teknik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '技能', 'keahlian', 15, 57, '<kanji>keterampilan</kanji> dan <kanji>kemampuan</kanji> Anda serupa. Itu sebabnya kata ini berarti salah satu atau. Kemampuan keterampilan Anda adalah <vocabulary>keterampilan</vocabulary> dan <vocabulary>kemampuan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keahlian, Kemampuan')
    RETURNING id INTO v_3682_keahlian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '特技', 'khusus', 15, 58, '<kanji>keahlian</kanji> <kanji>khusus</kanji> Anda adalah <vocabulary>keahlian</vocabulary> Anda. Jadi, apa 特技mu?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Khusus')
    RETURNING id INTO v_3683_khusus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '骨格', 'struktur-tulang', 15, 59, '<kanji>tulang</kanji> <kanji>status</kanji> Anda adalah <vocabulary>struktur tulang</vocabulary> Anda. Begitulah cara semua tulang di <vocabulary>kerangka</vocabulary> Anda disusun dan disatukan!

骨格 adalah kata yang relatif formal yang mengacu pada struktur kerangka atau kerangka yang mendasari sesuatu. Kata ini secara harafiah dapat mendeskripsikan bentuk fisik seseorang, atau dapat digunakan secara kiasan untuk berbicara tentang <vocabulary>kerangka</vocabulary> dasar dari sebuah rencana, argumen, atau sebuah tulisan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan saja bahwa こつ berubah menjadi こっ.', 'Struktur Tulang, Kerangka, Kerangka')
    RETURNING id INTO v_3703_struktur_tulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芸術', 'seni', 15, 60, 'Anda memerlukan <kanji>seni</kanji> <kanji>teknik</kanji> untuk membuat <vocabulary>art</vocabulary>. Tanpa teknik seni, <vocabulary>seni</vocabulary> dan <vocabulary>fine art</vocabulary> tidak akan ada.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seni, Seni, Seni Rupa')
    RETURNING id INTO v_3726_seni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '美術', 'seni-rupa', 15, 61, 'Saat Anda menciptakan <kanji>keindahan</kanji> dengan <kanji>teknik</kanji> Anda, itulah <vocabulary>seni rupa</vocabulary>, atau sekadar <vocabulary>seni</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seni Rupa, Seni')
    RETURNING id INTO v_3727_seni_rupa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仏', 'budha', 15, 62, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda naik ke <vocabulary>Buddha</vocabulary>. Anda ingin menggosok kepalanya untuk mendapatkan keberuntungan, karena menurut Anda itulah yang baik untuk dilakukan. Tepat sebelum Anda menyentuhnya, dia mundur dan berkata, "Wah! Aku <reading>panas, oke</reading>?" (ほとけ). Anda menyentuhnya dan itu membakar tangan Anda hingga bersih. 

Bayangkan berkata "panas, oke?" dengan aksen yang aneh untuk membantu Anda mengingat.', 'Budha')
    RETURNING id INTO v_3729_budha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仏教', 'agama-buddha', 15, 63, '<kanji>buddha</kanji> <kanji>ajaran</kanji>adalah apa yang harus Anda pelajari ketika Anda mempelajari <vocabulary>Buddhisme</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa 仏 diubah menjadi ぶっ untuk yang satu ini.', 'agama Buddha')
    RETURNING id INTO v_3730_agama_buddha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大仏', 'patung-buddha-raksasa', 15, 64, '<kanji>besar</kanji> <kanji>Buddha</kanji> tidak masuk akal jika Anda tidak mengetahui konteksnya. Terdapat patung Buddha raksasa, yang disebut Daibutsu, sehingga kata ini diterjemahkan menjadi <vocabulary>Buddha Besar</vocabulary> atau <vocabulary>Patung Buddha Raksasa</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Patung Buddha Raksasa, Daibutsu, Buddha Agung')
    RETURNING id INTO v_3731_patung_buddha_raksasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '信じる', 'percaya', 15, 65, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>percaya</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to believe</vocabulary>.', 'Pembacaan untuk 信 adalah しん, apa pun yang terjadi! Lihat, jika Anda percaya, hal-hal baik akan terjadi. Anda harus bisa membaca ini.', 'Percaya, Untuk Percaya')
    RETURNING id INTO v_3732_percaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自信', 'kepercayaan-diri', 15, 66, 'Saat Anda <kanji>percaya</kanji> pada <kanji>diri</kanji> Anda, Anda memiliki banyak <vocabulary>kepercayaan diri</vocabulary> (atau <vocabulary>kepercayaan diri</vocabulary>). Ini adalah hal yang baik untuk dimiliki!', 'Berapa banyak 自信 yang Anda miliki sehingga Anda sudah tahu cara membaca kata ini? Saya yakin Anda setidaknya punya beberapa! Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kepercayaan diri, Percaya Diri')
    RETURNING id INTO v_3733_kepercayaan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '信号', 'lampu-lalu-lintas', 15, 67, 'Jika Anda <kanji>yakin</kanji> pada <kanji>angka</kanji> tersebut, maka tidak akan terjadi kemacetan karena <vocabulary>lampu lalu lintas</vocabulary> akan berfungsi dengan baik. Lampu lalu lintas didasarkan pada data dan nomor lalu lintas. Anda hanya harus percaya dan berharap semuanya berhasil dalam hal lampu lalu lintas ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lampu lalu lintas, Sinyal, Sinyal Lalu Lintas, Lampu lalu lintas, Tiang sinyal')
    RETURNING id INTO v_3734_lampu_lalu_lintas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '信心', 'keyakinan', 15, 68, 'Apa yang Anda <kanji>yakini</kanji> di <kanji>hati</kanji> Anda, dan bukan di kepala Anda, adalah <vocabulary>iman</vocabulary> Anda. Ini adalah sesuatu yang tidak mengikuti logika, itu semua adalah keyakinan hati, itu semua adalah <kosakata>iman</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan saja bahwa しん berubah menjadi じん.', 'Keyakinan, Keyakinan')
    RETURNING id INTO v_3735_keyakinan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '信用', 'memercayai', 15, 69, 'Ketika seseorang <kanji>percaya</kanji> pada <kanji>tugas</kanji> Anda, itu berarti mereka memiliki <vocabulary>kepercayaan</vocabulary> yang besar terhadap apa yang Anda lakukan. Anda jelas telah memperoleh banyak <vocabulary>kredibilitas</vocabulary> melalui tugas-tugas Anda sebelumnya.

信用 mengacu pada kepercayaan yang diberikan satu pihak pada integritas dan kemampuan pihak lain untuk memenuhi kewajiban. Kata ini sering digunakan untuk menggambarkan keandalan dalam tindakan, kesetiaan dalam hubungan, atau kelayakan kredit dalam transaksi keuangan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memercayai, Kredibilitas')
    RETURNING id INTO v_3736_memercayai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不信', 'ketidakpercayaan', 15, 70, 'Jika Anda tidak bisa (<kanji>tidak</kanji>) <kanji>percaya</kanji> pada seseorang, itu karena Anda <vocabulary>tidak mempercayai</vocabulary> mereka. Mungkin seseorang <vocabulary>mendiskreditkan</vocabulary> mereka dan sekarang Anda <vocabulary>tidak mempercayai</vocabulary> semua yang mereka katakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ketidakpercayaan, Ketidakpercayaan, Mendiskreditkan, Ketidaksetiaan')
    RETURNING id INTO v_3737_ketidakpercayaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '返信', 'membalas', 15, 71, 'Anda harus <kanji>yakin</kanji> itu akan <kanji>kembali</kanji>. Apa yang Anda yakini untuk kembali? <vocabulary>balasan</vocabulary>. Anda membuat permintaan untuk sesuatu (munculkan sesuatu yang sangat Anda inginkan tetapi harus diminta). Sekarang Anda menunggu jawabannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Membalas, Menjawab')
    RETURNING id INTO v_3738_membalas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勇気', 'keberanian', 15, 72, '<kanji>Perasaan</kanji> dari <kanji>keberanian</kanji> adalah <vocabulary>keberanian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keberanian, Keberanian, Keberanian, Keberanian')
    RETURNING id INTO v_3739_keberanian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '区', 'daerah', 15, 73, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji!', 'Daerah, Bangsal')
    RETURNING id INTO v_3740_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地区', 'daerah', 15, 74, '<kanji>bumi</kanji> <kanji>distrik</kanji> bukanlah tata surya kita atau semacamnya. Kita berbicara tentang bagian tertentu dari bumi, dan menamainya sebagai sebuah distrik. Jadi, apa sepetak bumi ini? Itu adalah <vocabulary>distrik</vocabulary>, <vocabulary>area</vocabulary>, atau <vocabulary>zone</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Daerah, Daerah, Daerah')
    RETURNING id INTO v_3742_daerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '単に', 'hanya', 15, 75, 'Jika Anda beralih ke (に) <kanji>sederhana</kanji>, Anda mengucapkan <vocabulary>simple</vocabulary>, <vocabulary>hanya</vocabulary>, atau <vocabulary>only</vocabulary>.', 'Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hanya, Hanya, Hanya')
    RETURNING id INTO v_3743_hanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '単語', 'kata', 15, 76, 'Bagian <kanji>sederhana</kanji> dari <kanji>bahasa</kanji> adalah <vocabulary>kata</vocabulary> individual. Jika dipikir-pikir, ini benar. Pertama-tama, jumlahnya banyak sekali. Kedua, mereka kecil. Itu hanya sedikit bahasa dan "kata" untuk bagian kecil ini adalah <vocabulary>kata</vocabulary>.

Jadi apa perbedaan antara ini dan 言葉? Ya, 言葉 dapat mencakup rangkaian kata apa pun yang bermakna – mulai dari kata, kalimat, paragraf, hingga keseluruhan teks dan bahkan bahasa. 単語, di sisi lain, adalah bagian dari 言葉 yang secara khusus mengacu pada kata-kata tunggal yang berbeda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kata, Kosakata')
    RETURNING id INTO v_3744_kata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上司', 'bos', 15, 77, '<kanji>direktur</kanji> yang berada <kanji>di atas</kanji> Anda adalah <vocabulary>bos</vocabulary> atau <vocabulary>atasan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bos, Unggul')
    RETURNING id INTO v_3745_bos;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '坂', 'lereng', 15, 78, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan yang Anda pelajari dengan kanji sama dengan yang ini.', 'Lereng, Bukit')
    RETURNING id INTO v_3746_lereng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変', 'aneh', 15, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ini lebih merupakan arti "aneh", bukan arti "perubahan". Seperti halnya, kamu 変な猫！', 'Bacaannya adalah yang Anda pelajari dengan kanji. Aneh sekali! Atau tidak.', 'Aneh, Aneh')
    RETURNING id INTO v_3747_aneh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変人', 'eksentrik', 15, 80, '<kanji>aneh</kanji> <kanji>orang</kanji> adalah <vocabulary>seorang eksentrik</vocabulary>. Mereka juga merupakan <vocabulary>aneh</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Eksentrik, Eksentrik, Aneh')
    RETURNING id INTO v_3748_eksentrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変化', 'mengubah', 15, 81, '<kanji>Perubahan</kanji> dan <kanji>perubahan</kanji> sama dengan lebih banyak <vocabulary>perubahan</vocabulary>.

変化 umumnya mengacu pada perubahan alami atau spontan, seperti perubahan akibat pertumbuhan atau penuaan, perubahan kondisi cuaca, atau perubahan emosi seseorang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mengubah, Transformasi')
    RETURNING id INTO v_3749_mengubah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変死', 'kematian-tidak-wajar', 15, 82, '<kanji>aneh</kanji> <kanji>kematian</kanji> adalah sesuatu yang tampaknya tidak benar. Ini adalah <vocabulary>kematian yang tidak wajar</vocabulary>, dan mungkin <vocabulary>kematian yang tidak disengaja</vocabulary> (yaitu tidak disebabkan oleh sebab alamiah).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kematian Tidak Wajar, Kematian karena Kecelakaan')
    RETURNING id INTO v_3750_kematian_tidak_wajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大変', 'serius', 15, 83, '<kanji>besar</kanji> <kanji>perubahan</kanji> adalah hal yang sangat <vocabulary>serius</vocabulary>. Dan orang-orang juga tidak menyukai perubahan, sehingga menjadikannya peristiwa yang <vocabulary>mengerikan</vocabulary>. 

Selain itu, dalam sejarah yang lebih baru, kata ini juga berarti <vocabulary>very</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Serius, Sangat buruk, Sangat, Sulit, Keras, Sibuk sekali')
    RETURNING id INTO v_3751_serius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '事変', 'insiden', 15, 84, 'Sebuah <kanji>kejadian</kanji> yang menyebabkan <kanji>perubahan</kanji> juga bisa disebut <vocabulary>insiden</vocabulary>. 

事変 adalah kata formal untuk insiden besar dan tak terduga yang mengganggu dan kacau. Hal ini dapat berupa bencana alam, kerusuhan mendadak, atau gangguan berskala besar lainnya yang memerlukan intervensi militer. Ini juga bisa merujuk pada peperangan yang tidak diumumkan.

Kemungkinan besar Anda akan melihat kata ini digunakan dalam nama peristiwa bersejarah, seperti Manshuu Jihen (満州事変), atau Insiden Manchuria. Kanji 変 menyiratkan "perubahan", jadi tahukah Anda 事変 hanya digunakan untuk kejadian bersejarah yang cukup besar untuk membuat segalanya berubah!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Insiden')
    RETURNING id INTO v_3752_insiden;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夫', 'suami', 15, 85, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Pikirkan tentang <vocabulary>suami</vocabulary> Anda meskipun Anda tidak memilikinya. Siapa namanya? Itu <reading>Otto</reading> (おっと), dan dia selalu meninggalkanmu di rumah karena dia bekerja di toko <reading>oto</reading> (おっと).', 'Suami')
    RETURNING id INTO v_3753_suami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '岩', 'batu-besar', 15, 86, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang kamu pelajari dengan kanji, jadi kamu bisa membaca yang ini!', 'Batu besar, Batu')
    RETURNING id INTO v_3754_batu_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '帰る', 'untuk-kembali-ke-rumah', 15, 87, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>pulang</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to return home</vocabulary>, <vocabulary>to return</vocabulary>, atau <vocabulary>to go home</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Anda dapat pulang ke rumah dengan gembira, mengetahui cara membaca kata ini! 

Kata ini memiliki kata kerja berpasangan, jadi sebaiknya ingat akhiran る. Bayangkan saja bagaimana <reading>ru</reading>de (る) ketika seseorang pulang ke rumah tanpa pamit. Saraf!', 'Untuk Kembali ke Rumah, Untuk Kembali, Untuk Pulang')
    RETURNING id INTO v_3755_untuk_kembali_ke_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '式', 'upacara', 15, 88, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Faktanya, on''yomi DAN kun''yomi kanji ini adalah しき, jadi kamu tidak akan pernah salah.', 'Upacara, Upacara, Persamaan, Gaya')
    RETURNING id INTO v_3758_upacara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '春', 'musim-semi', 15, 89, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini sama dengan yang Anda pelajari dengan kanji. Ah, indahnya musim semi! Err... はる, maksudku.', 'Musim semi')
    RETURNING id INTO v_3759_musim_semi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '春休み', 'liburan-musim-semi', 15, 90, 'Anda pernah melihat 夏休み dan 冬休み. Jika itu belum cukup, Anda dapat melihat bahwa ini adalah semacam <kanji>mata air</kanji> <kanji>istirahat</kanji>. Itu akan menjadi <vocabulary>liburan musim semi</vocabulary> atau <vocabulary>liburan musim semi</vocabulary>.', 'Pembacaan 春 sama dengan yang Anda pelajari dengan kanji. Bagian 休み sama dengan vocab kata 休み, semoga bisa kalian baca! Jika Anda mengetahui bacaan tersebut, Anda dapat membaca ini juga.', 'liburan musim semi, Liburan Musim Semi, Liburan Musim Semi')
    RETURNING id INTO v_3760_liburan_musim_semi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昨今', 'hari-hari-ini', 15, 91, '<kanji>Sebelumnya</kanji> dari <kanji>sekarang</kanji> adalah waktu di sekitar sekarang. Itu adalah <vocabulary>saat ini</vocabulary>, <vocabulary>saat ini</vocabulary>, atau <vocabulary>baru-baru ini</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan saja bahwa さく berubah menjadi さっ seperti yang dilakukan banyak bunyi kolom-K dalam situasi seperti ini.', 'Hari-hari ini, Dewasa ini, Baru-baru ini')
    RETURNING id INTO v_3761_hari_hari_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昨日', 'kemarin', 15, 92, '<kanji>kemarin</kanji> <kanji>hari</kanji> adalah <vocabulary>kemarin</vocabulary>. Sungguh sebuah ledakan dari masa lalu!', 'Aduh. Pembacaan kata ini tidak masuk akal. Anda harus melupakan semua yang telah Anda pelajari tentang pembacaan kanji dan langsung menggunakan mnemonik untuk kata itu sendiri. Oke. Pikirkan tentang apa yang Anda lakukan kemarin, sepanjang hari. Kamu bermain <read>keno</reading> (きのう), mempertaruhkan uang nenekmu. Kemarin adalah hari terburuk karena Anda kehilangan segalanya saat bermain Keno. Hari ini berbeda, tidak seperti kemarin kan?', 'Kemarin')
    RETURNING id INTO v_3762_kemarin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昼', 'siang', 15, 93, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

昼 mengacu pada bagian tengah hari ketika matahari terbit. Tergantung pada konteksnya, kata ini bisa berarti sekitar <vocabulary>noon</vocabulary> khususnya atau lebih luasnya <vocabulary>daytime</vocabulary>. Ini juga bisa berarti makan siang, terutama bila digunakan dengan awalan kehormatan お, seperti dalam お昼.', 'Bacaan kata ini sama dengan kanji asalnya, jadi kalian harus bisa membacanya!', 'Siang, Siang hari')
    RETURNING id INTO v_3763_siang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '晩', 'malam', 15, 94, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya disini sama dengan bacaan kanji!', 'Malam, Malam')
    RETURNING id INTO v_3764_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今晩は', 'selamat-malam', 15, 95, 'Kata ini terbuat dari <kanji>sekarang</kanji> dan <kanji>malam</kanji> dengan hiragana は di akhir.は di sini diucapkan sebagai わ (pengucapan lama). Saat Anda mengatakan "sekarang malam!" kamu benar-benar mengucapkan <vocabulary>selamat malam</vocabulary>.

Ingatlah bahwa menulis 今晩は adalah sesuatu yang kuno. Saat ini hampir selalu ditulis sebagai こんばんは.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perlu diketahui bahwa は di akhir sebenarnya adalah partikel は sehingga diucapkan seperti わ.', 'Selamat malam')
    RETURNING id INTO v_3765_selamat_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毎晩', 'setiap-malam', 15, 96, '<kanji>Setiap</kanji> <kanji>malam</kanji> hanyalah <vocabulary>setiap malam</vocabulary>. Apa yang kamu lakukan setiap malam?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Setiap Malam, Malam')
    RETURNING id INTO v_3766_setiap_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '晴れる', 'untuk-menjernihkan', 15, 97, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menjernihkan</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to clear up</vocabulary>. Itu juga berarti <vocabulary>menjadi cerah</vocabulary> juga.', 'Bacaan yang Anda pelajari dengan kanji adalah yang Anda gunakan di sini. Salah satu kata yang membuat kun''yomi menjadi lebih berguna.', 'Untuk Menjernihkan, Menjadi Cerah')
    RETURNING id INTO v_3767_untuk_menjernihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毒', 'racun', 15, 98, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

毒 mengacu pada segala jenis <vocabulary>racun</vocabulary>, buatan manusia atau alami. Bahkan termasuk <vocabulary>racun</vocabulary> yang dihasilkan oleh hewan atau serangga. Kata ini juga dapat secara kiasan menggambarkan hal-hal yang secara perlahan merusak kesehatan atau pikiran Anda, seperti kebiasaan buruk atau pengaruh racun. Mereka tidak mematikan, tapi tetap baik untuk Anda.', 'Bacaan kata ini sama dengan bacaan kanji.', 'Racun, Bisa ular')
    RETURNING id INTO v_3768_racun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中毒', 'peracunan', 15, 99, 'Anda berada di <kanji>tengah</kanji> dari <kanji>racun</kanji>, artinya Anda memiliki <vocabulary>keracunan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peracunan, Kecanduan')
    RETURNING id INTO v_3769_peracunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '有毒', 'beracun', 15, 100, 'Hal-hal yang <kanji>memiliki</kanji> <kanji>racun</kanji> adalah <vocabulary>beracun</vocabulary>. 

有毒 adalah kata yang relatif formal yang umumnya digunakan untuk menggambarkan bahan atau zat beracun. Ini juga dapat digunakan untuk klasifikasi formal seperti 有毒植物 (tanaman <vocabulary>beracun</vocabulary>) atau 有毒動物 (hewan beracun dan berbisa).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Beracun, Beracun')
    RETURNING id INTO v_3770_beracun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食中毒', 'keracunan-makanan', 15, 101, 'Jika Anda <kanji>makan</kanji> dan mendapati diri Anda berada di <kanji>tengah</kanji> <kanji>racun</kanji>, Anda mungkin mengalami <vocabulary>keracunan makanan</vocabulary>. Tidak menyenangkan ketika kamu mendapatkan ini :(', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keracunan Makanan')
    RETURNING id INTO v_3771_keracunan_makanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毒ガス', 'gas-beracun', 15, 102, '<kanji>Racun</kanji> Gas adalah hal yang buruk. Itu adalah <vocabulary>gas beracun</vocabulary>.', 'Bacaannya sama dengan kanji asalnya.ガス tentu saja adalah "gas".', 'Gas Beracun')
    RETURNING id INTO v_3772_gas_beracun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '方法', 'metode', 15, 103, '<kanji>cara</kanji> <kanji>metode</kanji> atau <kanji>metode</kanji> <kanji>cara</kanji> adalah <vocabulary>metode</vocabulary> atau <vocabulary>cara</vocabulary>. Ini adalah kata yang bagus untuk berbicara tentang bagaimana melakukan sesuatu. Apa itu 方法? Baiklah, pertama-tama kamu...', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Metode, Jalan')
    RETURNING id INTO v_3773_metode;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文法', 'tata-bahasa', 15, 104, '<kanji>metode</kanji> dalam <kanji>menulis</kanji> adalah cara Anda menulis. Anda dapat memiliki kosakata, tetapi Anda harus dapat menggabungkannya menggunakan suatu metode. Metode ini kebetulan adalah <vocabulary>tata bahasa</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.ほう berubah menjadi ぽう.', 'Tata bahasa')
    RETURNING id INTO v_3774_tata_bahasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不法', 'liar', 15, 105, '<kanji>bukan</kanji> <kanji>hukum</kanji> adalah sesuatu yang melanggar hukum. Itu <vocabulary>ilegal</vocabulary> atau <vocabulary>melanggar hukum</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Liar, Melanggar hukum')
    RETURNING id INTO v_3775_liar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泣く', 'menangis', 15, 106, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menangis</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to cry</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Jika Anda ingat bacaan kanji Anda tidak akan kesulitan dengan kata ini.', 'Menangis')
    RETURNING id INTO v_3776_menangis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '浅い', 'dangkal', 15, 107, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>dangkal</kanji>? Itu <vocabulary>dangkal</vocabulary>.', 'Pembacaannya adalah yang Anda pelajari dengan kanji, membuat <reading>あさ</reading>い ini.', 'Dangkal')
    RETURNING id INTO v_3777_dangkal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '猫', 'kucing', 15, 108, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Meong!', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Neko neko neko! Kawaiiiii.', 'Kucing')
    RETURNING id INTO v_3778_kucing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '子猫', 'anak-kucing', 15, 109, '<kanji>anak</kanji> <kanji>kucing</kanji> adalah <vocabulary>anak kucing</vocabulary> yang menggemaskan. Ya ampun!', 'Bacaannya adalah vocab kata 子 (こ) dan bacaan untuk kucing (ねこ).', 'Anak kucing, kucing')
    RETURNING id INTO v_3779_anak_kucing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '秋', 'musim-gugur', 15, 110, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji, <reading>あき</reading>.', 'Musim gugur, Jatuh')
    RETURNING id INTO v_3780_musim_gugur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '世紀', 'abad', 15, 111, '<kanji>akun</kanji> dari <kanji>generasi</kanji>... ini mencakup seluruh generasi, dan mengingat berapa lama orang Jepang hidup, total akun ini adalah <vocabulary>abad</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Abad')
    RETURNING id INTO v_3782_abad;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紀元後', 'era-umum', 15, 112, 'Apa <kanji>narasi</kanji> <kanji>asal</kanji> yang muncul <kanji>setelah</kanji>? Nah, cara kita menghitung tahun selama beberapa milenium terakhir memiliki narasi spesifik pada asal usulnya, dan segala sesuatu yang muncul setelahnya adalah <vocabulary>Common Era</vocabulary>, alias <vocabulary>AD</vocabulary>, atau <vocabulary>anno Domini</vocabulary>.

Kalau-kalau Anda tidak tahu narasi apa yang sedang kita bicarakan: itu adalah narasi kelahiran Yesus, yang merupakan tahun dimulainya Tarikh Masehi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Era Umum, CE, IKLAN, Anno Domini')
    RETURNING id INTO v_3783_era_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '英語', 'bahasa-inggris', 15, 113, '<kanji>Bahasa Inggris</kanji> <kanji>Bahasa</kanji> adalah bahasa yang Anda baca saat ini. Ini adalah <vocabulary>bahasa Inggris</vocabulary>. Ini adalah <vocabulary>Bahasa Inggris</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bahasa Inggris, Bahasa inggris')
    RETURNING id INTO v_3784_bahasa_inggris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '英会話', 'percakapan-bahasa-inggris', 15, 114, '<kanji>Bahasa Inggris</kanji> <kanji>bertemu</kanji>dan <kanji>berbicara</kanji>satu sama lain. Ini adalah <vocabulary>Percakapan Bahasa Inggris</vocabulary>. Ini banyak digunakan ketika berbicara tentang "berbicara dalam bahasa Inggris" untuk belajar bahasa Inggris dan yang lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Percakapan Bahasa Inggris')
    RETURNING id INTO v_3785_percakapan_bahasa_inggris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '英文', 'penulisan-bahasa-inggris', 15, 115, '<kanji>Inggris</kanji> <kanji>tulisan</kanji> adalah <vocabulary>Tulisan Bahasa Inggris</vocabulary> (atau jika Anda ingin mahir, <vocabulary>Komposisi Bahasa Inggris</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penulisan Bahasa Inggris, Komposisi Bahasa Inggris')
    RETURNING id INTO v_3786_penulisan_bahasa_inggris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '英国', 'britania', 15, 116, '<kanji>Inggris</kanji> <kanji>negara</kanji> adalah tempat Inggris berada. Kata ini bisa merujuk pada <vocabulary>Inggris</vocabulary>, <vocabulary>Inggris</vocabulary> dan <vocabulary>Inggris</vocabulary>!

Perhatikan bahwa イギリス lebih umum untuk "Inggris" - namun, karena ini adalah situs pembelajaran kanji, Anda harus mempelajari kata ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Britania, Inggris, Inggris Raya, Inggris')
    RETURNING id INTO v_3787_britania;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '英和', 'bahasa-inggris-jepang', 15, 117, 'Hal ini terlihat pada hal-hal seperti kamus. Ketika Anda memiliki kamus <kanji>Bahasa Inggris</kanji> dan <kanji>Jepang</kanji> (gaya), misalnya. Anda juga akan melihatnya sebaliknya, tetapi yang satu ini adalah <vocabulary>Bahasa Inggris dan Jepang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bahasa Inggris Jepang')
    RETURNING id INTO v_3788_bahasa_inggris_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時計', 'jam-tangan', 15, 118, 'Sesuatu yang memberi Anda <kanji>waktu</kanji> <kanji>pengukuran</kanji> adalah <vocabulary>jam</vocabulary> atau <vocabulary>jam</vocabulary>. Kebanyakan orang sekarang memilikinya di ponsel mereka, bukan di pergelangan tangan mereka.', 'Pembacaan untuk ini cukup aneh. 計 semuanya bagus dan normal, tapi 時 adalah と karena alasan tertentu. Itu mungkin berasal dari kosakata 時 (とき), begitulah tebakan saya. Tapi kalaupun ya, itu dipersingkat, membuatnya selangkah lebih rumit. Mungkin lebih baik membayangkan <vocabulary>watch</vocabulary> Anda adalah walky <reading>talky</reading> (とけい) dan menjalankannya?', 'Jam tangan, Jam')
    RETURNING id INTO v_3789_jam_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '合計', 'total', 15, 119, 'Saat Anda <kanji>menggabungkan</kanji> semua <kanji>pengukuran</kanji>Anda bersama-sama, Anda memiliki <vocabulary>total</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Total, Jumlah')
    RETURNING id INTO v_3790_total;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '計画', 'rencana', 15, 120, 'Anda memerlukan <kanji>pengukuran</kanji> dan <kanji>gambar</kanji> untuk membuat <vocabulary>rencana</vocabulary>. Anda tidak dapat mengikuti rencana tanpa pengukuran dan gambar sebagai acuan, bukan? Setiap rencana yang bagus memiliki pengukuran dan gambar.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun bacaan untuk 画 adalah bacaan sekunder (かく), jadi perhatikanlah itu.', 'Rencana, Perencanaan, Proyek')
    RETURNING id INTO v_3791_rencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '計算', 'perhitungan', 15, 121, 'Saat Anda <kanji>mengukur</kanji> dan kemudian <kanji>menghitung</kanji> sesuatu, Anda sedang membuat <vocabulary>perhitungan</vocabulary>. Misalnya, Anda mengukur panjang seekor katak, lalu menghitung berapa banyak katak yang Anda perlukan untuk mencapai bulan. Apa itu? Tentu saja sebuah perhitungan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perhitungan')
    RETURNING id INTO v_3792_perhitungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '軍人', 'tentara', 15, 122, '<kanji>tentara</kanji> <kanji>orang</kanji> adalah seseorang di dalam tentara. Apa sebutan orang-orang itu? Mereka adalah <vocabulary>prajurit</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tentara, Personil Militer')
    RETURNING id INTO v_3793_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '海軍', 'angkatan-laut', 15, 123, '<kanji>laut</kanji> <kanji>tentara</kanji> adalah cabang militer yang memiliki perahu dan melakukan urusan laut/laut. Apa itu? <kosa kata>Angkatan Laut</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Angkatan laut')
    RETURNING id INTO v_3794_angkatan_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飯', 'makanan', 15, 124, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Kata ini juga mengacu pada <vocabulary>nasi yang dimasak</vocabulary>, karena Anda harus makan nasi setiap kali makan, jadi pada dasarnya ini identik dengan "makanan" itu sendiri.

Kata ini memiliki kesan yang sedikit kasar sehingga sering digunakan dalam situasi informal.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda sedang makan <vocabulary>makanan</vocabulary>... MMmm, enak! Apa yang kamu makan? Ya, itu adalah jaring <reading>Mesh</reading> (めし). Cicipi jaringnya. Rasanya tidak enak. Ini adalah makanan yang buruk. Rasakan di mulut Anda. Ini aneh dan berbelit-belit.', 'Makanan, Nasi, Makanan')
    RETURNING id INTO v_3795_makanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ご飯', 'makanan', 15, 125, 'Tanda ご membuat kata ini lebih sopan dan mewah — dua kualitas penting dalam hal makanan. Kata ini memiliki arti yang sama dengan kanji (<kanji>makanan</kanji>), yaitu <vocabulary>makanan</vocabulary>, namun dapat juga berarti <vocabulary>nasi yang dimasak</vocabulary>. Jadi, "Ayo makan ご飯" bisa berarti "ayo makan nasimu" atau "ayo makan makananmu" — atau keduanya, karena sebagian besar makanan Jepang selalu dilengkapi dengan nasi.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Sekarang bagaimana kalau kamu memberiku semangkuk nasi lagi?', 'Makanan, Nasi')
    RETURNING id INTO v_3796_makanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不器用', 'kikuk', 15, 126, 'Anda tahu bagaimana 器用 berarti "cekatan" dan "terampil"? Nah, inilah saatnya Anda <kanji>tidak</kanji> melakukan hal-hal tersebut. Bila Anda tidak cekatan, Anda <vocabulary>kikuk</vocabulary> dan bila Anda tidak terampil, Anda <vocabulary>tidak terampil</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perlu diingat bahwa pembacaan 不 berubah dari ふ menjadi ぶ. Jika Anda kikuk, Anda akan mendapat banyak <reading>boo</reading>-boos (ぶ), paham?', 'Kikuk, Tidak terampil, Canggung')
    RETURNING id INTO v_3893_kikuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お願い', 'sebuah-permintaan', 15, 127, 'Bentuk kata benda dari <kanji>permintaan</kanji> (jangan tertipu oleh い di akhir, itu bukan kata sifat). Jadi, permintaan masuk ke <vocabulary>permintaan</vocabulary>.', 'Bacaannya sama seperti お願いします. Semoga Anda sudah bisa membacanya sekarang sehingga Anda juga bisa membacanya.', 'Sebuah Permintaan, Meminta, Mengharapkan, Silakan')
    RETURNING id INTO v_3894_sebuah_permintaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飲み放題', 'minum-sepuasnya', 15, 128, '<kanji>Minum</kanji><kanji>sebanyak yang kamu mau</kanji> memang enak, tapi jangan sampai sakit. Saat Anda melihat kata ini, Anda tahu bahwa Anda sedang berada di tempat <vocabulary>sepuasnya</vocabulary>. Tip: Biasanya ada batasan waktu, jadi minumlah sebanyak-banyaknya!', 'Bacaannya berasal dari kata 放題 (ほうだい) dan 飲む (のむ). Selama Anda mengetahui kosakata tersebut, Anda pasti bisa membacanya juga.', 'Minum Sepuasnya')
    RETURNING id INTO v_3895_minum_sepuasnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食べ放題', 'makan-sepuasnya', 15, 129, 'Saat Anda <kanji>makan</kanji> <kanji>sebanyak yang Anda mau</kanji>, Anda mendapatkan penawaran <vocabulary>makan sepuasnya</vocabulary>.', 'Bacaannya terdiri dari bacaan 食べる dan 放題. Jika Anda mengetahuinya, Anda seharusnya bisa membaca ini juga.', 'Makan Sepuasnya')
    RETURNING id INTO v_3896_makan_sepuasnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人殺し', 'pembunuhan', 15, 130, 'Saat Anda <kanji>membunuh</kanji> seorang <kanji>orang</kanji>, itulah <vocabulary>pembunuhan</vocabulary>.', 'Bacaannya adalah bacaan kosakata kun''yomi. Jadi, jika kalian mengetahui bacaan 人 sebagai kosakata dan bacaan 殺す, kalian pasti bisa membaca kata tersebut. Perhatikan saja bahwa ころし menjadi ごろし karena rendaku.', 'Pembunuhan, Pembunuh')
    RETURNING id INTO v_3898_pembunuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '殺人者', 'pembunuh', 15, 131, 'Mudah-mudahan Anda pernah melihat 殺人 (pembunuhan) dari level 13. Jadi, <kanji>seseorang</kanji> yang melakukan <kanji>pembunuhan</kanji> itu apa? <vocabulary>pembunuh</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembunuh, Pembunuh')
    RETURNING id INTO v_3899_pembunuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指輪', 'cincin', 15, 132, '<kanji>jari</kanji> <kanji>cincin</kanji> adalah jenis <vocabulary>cincin</vocabulary> yang akan Anda pasang di jari Anda. Itu hanyalah sebuah "dering", jadi Anda harus mengetahui apa "dering" itu melalui konteksnya.', 'Bacaannya berasal dari bacaan kosakata masing-masing, 指 dan 輪. Dalam bahasa Inggris kita tidak membedakan cincin lain dengan "cincin jari" tetapi dalam bahasa Jepang, Anda dapat menganggap ini sebagai dua kata terpisah yang digabungkan menjadi satu kata, itulah sebabnya ia menggunakan pembacaan kosakata kun''yomi seperti ini. Jadi, jika Anda mengetahui masing-masing kata, Anda seharusnya bisa mengetahui bahwa kata tersebut dibaca sebagai <reading>ゆびわ</reading>.', 'Cincin')
    RETURNING id INTO v_3900_cincin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '輪ゴム', 'gelang-karet', 15, 133, '<kanji>cincin</kanji> dari permen karet (ゴム) (yang sering disebut orang Jepang sebagai karet) adalah cincin dari karet. Cincin karet apa yang sering digunakan orang? Itu adalah <vocabulary>karet gelang</vocabulary>.', 'Bacaan 輪 merupakan bacaan vocab kun''yomi yaitu わ sehingga menjadikan kata ini <bacaan>わ</bacaan>ゴム.', 'Gelang karet, Pita elastis')
    RETURNING id INTO v_3901_gelang_karet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暗記する', 'untuk-menghafal', 15, 134, 'Semoga Anda pernah melihat 暗記 sebelumnya. Artinya "menghafal". Jadi, ubah itu menjadi kata kerja dan Anda harus <vocabulary>menghafal</vocabulary>.', 'Bacaannya berasal dari 暗記. Ini juga merupakan bacaan yang Anda pelajari dengan kanji juga.', 'Untuk Menghafal')
    RETURNING id INTO v_3904_untuk_menghafal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '練習する', 'untuk-berlatih', 15, 135, 'Anda mungkin pernah melihat 練習, yang artinya "latihan". Jadi, kalau kamu menjadikannya kata kerja, kamu harus <vocabulary>berlatih</vocabulary>.', 'Bacaannya berasal dari kanji dan juga dari vocab kata 練習. Anda harus bisa membaca ini!', 'Untuk Berlatih')
    RETURNING id INTO v_3905_untuk_berlatih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不合格', 'gagal-dalam-ujian', 15, 136, 'Anda sudah belajar 合格する (untuk lulus ujian). Nah, tampar 不 (bukan) di depan 合格 dan kamu akan <vocabulary>gagal dalam ujian</vocabulary>.

Satu hal yang perlu diperhatikan: tidak seperti 合格, 不合格 tidak bisa digabungkan dengan する untuk dijadikan kata kerja. Biasanya hanya digunakan sebagai kata benda untuk menggambarkan keadaan gagal atau ditolak. Jadi jika Anda lulus ujian, jangan ragu untuk meneriakkan sesuatu seperti 合格した! Namun jika gagal, lebih baik bergumam saja 不合格だった...', 'Jika Anda mengetahui bacaan 合格, Anda hanya perlu menambahkan 不 ke dalamnya! Anda telah mempelajari semua bacaan ini, yay!', 'Gagal dalam Ujian, Gagal dalam Ujian, Penolakan')
    RETURNING id INTO v_3928_gagal_dalam_ujian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変事', 'insiden-tak-terduga', 15, 137, 'Anda tahu 変 berarti "perubahan", tetapi bisa juga berarti "aneh". Jadi <kanji>kejadian</kanji> yang aneh</kanji> adalah kejadian yang tidak mungkin terjadi. Dengan kata lain, <vocabulary>insiden yang tidak terduga</vocabulary> atau <vocabulary>insiden yang tidak biasa</vocabulary>.

変事 adalah kata formal yang digunakan untuk menggambarkan kejadian tiba-tiba dan tidak biasa yang mengganggu kondisi normal, seperti bencana alam, keadaan darurat, atau krisis. Anda tidak akan sering melihat kata ini, namun mungkin masih menemukannya dalam tulisan formal.

Dengan 変事, pikirkan bagaimana 変 didahulukan untuk menekankan keanehan kejadian tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Insiden Tak Terduga, Insiden Tidak Biasa')
    RETURNING id INTO v_3932_insiden_tak_terduga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同期中', 'sinkronisasi', 15, 138, 'Anda membuat sesuatu di dua tempat berbeda menjadi <kanji>sama</kanji> untuk <kanji>jangka waktu tertentu</kanji>. Anda berada di <kanji>tengah</kanji> dari proses yang disebut <vocabulary>syncing</vocabulary>. Anda dapat melihat banyak 同期中 dalam konteks komputer, atau jika Anda mengubah bahasa perangkat ke bahasa Jepang. (Bukannya saya menyarankan itu...)', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sinkronisasi, Sinkronisasi')
    RETURNING id INTO v_3942_sinkronisasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寺', 'kuil', 15, 139, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya juga sama kanjinya! Sungguh beruntung — Anda pasti sedang berdoa kepada Benzaiten di kuil setempat.', 'Kuil, Kuil Budha')
    RETURNING id INTO v_3943_kuil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '比例', 'menjadi-proporsional', 15, 140, 'Anda <kanji>membandingkan</kanji> <kanji>contoh</kanji>, mencoba mencari tahu bagaimana <vocabulary>menjadi proporsional</vocabulary>. Anda tahu bahwa contoh-contoh yang Anda bandingkan ini memiliki <vocabulary>proporsi</vocabulary> satu sama lain, Anda hanya perlu mencari tahu caranya. 

Gunakan 比例 ketika berbicara tentang bagaimana suatu hal berubah secara proporsional dengan hal lain. Misalnya, harga suatu barang sebanding dengan penawaran dan permintaannya. Lihat kombinasi kata umum dan kalimat konteks kami untuk beberapa contoh!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menjadi Proporsional, Proporsi')
    RETURNING id INTO v_4218_menjadi_proporsional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '解ける', 'untuk-dipecahkan', 15, 141, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menyelesaikan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to besolve</vocabulary>. Dengan cara serupa, ini juga bisa berarti <kosa kata>dibersihkan</vocabulary>, seperti kesalahpahaman atau ketegangan di dalam ruangan.

解ける merupakan kata kerja intransitif sehingga tidak memerlukan objek langsung. Dengan kata lain, Anda menggunakannya untuk mengatakan sesuatu telah terpecahkan atau terpecahkan. Anda dapat mengingat hal ini karena Anda tidak cukup <reading>peduli</reading> (ける) untuk menyelesaikan masalah sendiri, Anda hanya membiarkan masalah terselesaikan dengan sendirinya.', 'Anda sudah belajar cara membaca 解く, dan ini menggunakan bacaan yang sama untuk kanjinya. Beruntungnya kamu!', 'Untuk Dipecahkan, Untuk Dibersihkan')
    RETURNING id INTO v_4464_untuk_dipecahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '美味しい', 'lezat', 15, 142, 'Sesuatu yang <kanji>keindahan</kanji> <kanji>rasa</kanji> adalah sesuatu yang benar-benar <vocabulary>lezat</vocabulary> atau <vocabulary>lezat</vocabulary>. Mmmm, enak!

Meskipun sebagian besar 美味しい menggambarkan makanan lezat, terkadang Anda juga melihatnya digunakan untuk kesepakatan atau situasi manis yang menguntungkan Anda.', 'Pembacaan ini tidak masuk akal sama sekali. Anda harus mempelajarinya secara langsung, kecuali Anda sudah mengetahui kata おいしい, yang banyak orang lakukan seperti yang digunakan dalam setiap kalimat lain di setiap variety show Jepang. Jika Anda belum mengetahui kata ini, bayangkan diri Anda sedang makan sesuatu yang <vocabulary>lezat</vocabulary>. Enak sekali sampai membuatmu marah, aku tidak tahu kenapa. Kamu berteriak pada kokinya: "<reading>OI</reading> (おい). OI! KENAPA INI SANGAT LEZAT????"', 'Lezat, Lezat')
    RETURNING id INTO v_5501_lezat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '了解', 'memahami', 15, 143, 'Saat Anda <kanji>menyelesaikan</kanji><kanji>memecahkan</kanji>sesuatu, Anda telah sampai pada titik <vocabulary>pemahaman</vocabulary>. 

了解 sering digunakan untuk menunjukkan pemahaman Anda terhadap informasi atau instruksi yang telah disampaikan kepada Anda, mirip dengan "<vocabulary>Mengerti</vocabulary>" atau "<vocabulary>Dipahami</vocabulary>." Bisa juga digunakan untuk menunjukkan persetujuan, persetujuan, atau persetujuan, karena hal-hal tersebut tentu saja bergantung pada saling pengertian juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Memahami, Mengerti, Dipahami')
    RETURNING id INTO v_5715_memahami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '払う', 'untuk-membayar', 15, 144, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membayar</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to pay</vocabulary>.

Kata ini juga berarti <vocabulary>menyingkirkan</vocabulary>, seperti saat Anda menyikat kotoran atau debu pada sesuatu.', 'Pembacaannya berasal dari apa yang Anda pelajari dengan kanji.', 'Untuk Membayar, Untuk Menyingkirkan')
    RETURNING id INTO v_5927_untuk_membayar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変える', 'untuk-mengubah-sesuatu', 15, 145, 'Kanjinya adalah <kanji>mengubah</kanji>, dan kata kerjanya adalah <vocabulary>untuk mengubah sesuatu</vocabulary>. Jika Anda mengubah satu hal dengan hal lain, Anda akan <vocabulary>mengubah</vocabulary> hal tersebut. Kata ini mengacu pada mengubah satu hal untuk hal serupa.

変える dan 代える terdengar sama dan terkadang digunakan dalam konteks serupa, namun nuansanya berbeda. 変える mengacu pada tindakan membuat sesuatu berbeda, dan melibatkan perubahan sifat atau keadaan sesuatu. Misalnya saja mengubah tata letak suatu ruangan atau mengubah cara pandang seseorang terhadap suatu permasalahan. 代える berarti mengganti atau menukar suatu barang dengan barang lain yang diharapkan dapat memenuhi peran, kegunaan atau tujuan yang sama, seperti mengganti pekerja dengan pengganti.', 'Kata ini menggunakan kun''yomi, yang tidak Anda pelajari dengan kanji, jadi inilah mnemonik untuk membantu Anda.

Anda ingin <vocabulary>mengubah sesuatu</vocabulary> pada <reading>ca</reading>r (か) Anda, tetapi Anda belum tahu apa yang harus dilakukan. Mungkin mobil Anda harus memiliki fitur yang sangat keren, seperti bak mandi air panas atau layar raksasa. Coba pikirkan cara paling konyol untuk mengganti mobil Anda.', 'Untuk Mengubah Sesuatu, Untuk Berubah')
    RETURNING id INTO v_5983_untuk_mengubah_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜匹', 'penghitung-hewan-kecil', 15, 146, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Penghitung Hewan Kecil, Counter Untuk Hewan Kecil')
    RETURNING id INTO v_6809_penghitung_hewan_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四匹', 'empat-hewan-kecil', 15, 147, '<kanji>Empat</kanji> <kanji>hewan kecil</kanji> adalah <vocabulary>empat hewan kecil</vocabulary>. Gunakan ini untuk menghitung empat anjing, atau kucing, atau apa pun.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji kun''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Empat Hewan Kecil')
    RETURNING id INTO v_6810_empat_hewan_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '丈夫', 'kokoh', 15, 148, 'Dengan <kanji>tinggi</kanji> dari <kanji>suami</kanji> saya, dia sangat <vocabulary>tegas</vocabulary>. Cobalah untuk mendorongnya. Mustahil. Dia sangat tinggi dan <vocabulary>kokoh</vocabulary> karena tinggi badannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.', 'Kokoh, Tegas, Sehat')
    RETURNING id INTO v_7277_kokoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '丈', 'tinggi', 15, 149, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Kata ini biasanya digunakan untuk <vocabulary>tinggi</vocabulary> dan <vocabulary>panjang</vocabulary>.', 'Bacaannya berbeda dengan yang Anda pelajari dengan kanji. Ingat kata 竹? Bacaannya sama dengan ini. Bayangkan saja setiap orang mengukur ketinggian suatu benda dengan tiang <reading>bambu</reading> (たけ) yang diberi spidol. Oke, yang ini tingginya 5 batang bambu!', 'Tinggi, Panjang')
    RETURNING id INTO v_7278_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頑丈', 'padat', 15, 150, '<kanji>keras kepala</kanji> <kanji>tinggi</kanji> adalah tinggi yang lebih pendek dan kekar. Hal ini membuat seseorang menjadi <vocabulary>kokoh</vocabulary>, <vocabulary>firm</vocabulary>, dan <vocabulary>stout</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Padat, Tegas, Bayak, Kokoh')
    RETURNING id INTO v_7280_padat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見返す', 'untuk-menunjukkan-kepada-seseorang-apa-yang-dapat-dilakukannya', 15, 151, 'Ketika Anda <kanji>melihat</kanji> seseorang meragukan Anda dan <kanji>mengembalikan</kanji> sesuatu yang berhasil, itu adalah <vocabulary>untuk menunjukkan kepada seseorang apa yang dapat dilakukan</vocabulary> atau lebih sederhananya <vocabulary>untuk menunjukkan kepada seseorang</vocabulary>. Dengan kata lain, Anda menunjukkan kepada seseorang yang meragukan Anda atau memperlakukan Anda dengan tidak adil mengenai kemampuan Anda sebenarnya.

Ada beberapa arti lain juga. Ini bisa berarti <vocabulary>untuk melihat kembali sesuatu</vocabulary>, seperti jawaban tes kanji yang ingin Anda periksa ulang, dan terkadang <vocabulary>untuk membalas tatapan seseorang</vocabulary>. Anda dapat melihat bagaimana semua makna ini berhubungan dengan kanji, bukan?', 'Bacaannya berasal dari kata 見 dan 返す yang disatukan.', 'Untuk Menunjukkan kepada Seseorang Apa yang Dapat Dilakukannya, Untuk Menunjukkan kepada Seseorang, Untuk Melihat Kembali Sesuatu, Untuk Membalas Tatapan Seseorang')
    RETURNING id INTO v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '軍', 'tentara', 15, 152, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Tentara, Pasukan, Memaksa')
    RETURNING id INTO v_7542_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '列', 'garis', 15, 153, 'Ketika sesuatu diletakkan dalam sebuah <kanji>baris</kanji> mereka akhirnya membentuk sebuah <vocabulary>baris</vocabulary>. Ini bisa berupa barisan orang yang menunggu di <vocabulary>antrian</vocabulary>, <vocabulary>barisan</vocabulary> kursi di bioskop, atau <vocabulary>kolom</vocabulary> di Excel dan spreadsheet lainnya.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Garis, Antre, Baris, Kolom')
    RETURNING id INTO v_7543_garis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伝', 'perantara', 15, 154, 'Saat Anda membuat seseorang <kanji>mentransmisikan</kanji> informasi, mereka adalah sejenis <vocabulary>perantara</vocabulary>, <vocabulary>perantara</vocabulary>, jika Anda mau.', 'Jika sebuah kata vocab berbentuk kanji tunggal tanpa okurigana, dibutuhkan pembacaan kun''yomi. Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda mengingat: 

Saat <vocabulary>perantara</vocabulary> kembali dan akan menceritakan semua yang dikatakan kelompok lain kepada Anda, dia memerlukan <reading>dua ta</reading>kes (つて) untuk menyelesaikan semuanya dengan benar. Kelompok lain punya banyak hal untuk dikatakan dan dia kesulitan menyampaikan semuanya pada pengambilan pertama, tetapi dia benar-benar berhasil pada pengambilan kedua.

Catatan kecil: kata ini sebenarnya lebih umum dalam katakana, seperti pada ツテ, atau hiragana, seperti pada つて. Namun, Anda mungkin juga melihatnya dalam huruf kanji, dan ada baiknya jika Anda bisa membacanya!', 'Perantara, Koneksi, Kontak, Pergi Antara')
    RETURNING id INTO v_7544_perantara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '情けない', 'menderita', 15, 155, 'Anda telah melihat bagaimana kata 情け berarti kasihan, jadi menambahkan ない pada kata tersebut akan mengubahnya menjadi kata sifat yang berarti <vocabulary>menyedihkan</vocabulary> dan <vocabulary>sengsara</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Menderita, Menyedihkan, Memalukan, Tercela, Malang, Sedih, Menyedihkan')
    RETURNING id INTO v_7640_menderita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '放つ', 'untuk-menembak', 15, 156, 'Ingat 放す (melepaskan) dan 放れる (melepaskan)? 放つ adalah kata kerja transitif lain dari keluarga <kanji>pelepasan</kanji>, namun ini adalah jenis pelepasan yang lebih dinamis, jadi artinya <vocabulary>menyalakan</vocabulary> sesuatu. 

Anda dapat mengingat hal ini karena biasanya Anda membutuhkan つ (dua) tangan untuk menembakkan sesuatu dengan benar, entah itu ketapel atau pukulan dalam permainan bisbol.

放つ sering kali berarti membebaskan sesuatu dengan paksaan atau dampak. Kata ini digunakan untuk mendeskripsikan hal-hal seperti menembakkan anak panah, menembakkan peluru, melepaskan hewan ke alam liar, atau bahkan mengeluarkan sesuatu seperti cahaya atau bau yang tidak sedap. Secara lebih kiasan, kata ini dapat menggambarkan tindakan merilis sesuatu ke dunia, baik itu karya kreatif yang Anda ungkapkan atau karya menarik yang Anda sebarkan di media sosial.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Untuk Menembak, Untuk Melepaskan, Untuk Memancarkan, Untuk Membebaskan')
    RETURNING id INTO v_7697_untuk_menembak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '整える', 'untuk-mengatur', 15, 157, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengatur</kanji>, dan versi verbanya juga berarti <vocabulary>to arrange</vocabulary> atau <vocabulary>to put order</vocabulary>. Hal ini berkaitan dengan meletakkan barang-barang pada tempatnya, membereskan urusan, atau bahkan menyiapkan peralatan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Segala sesuatu di kamar Anda akhirnya <vocabulary>ditertibkan</vocabulary>. Saat Anda selesai, Anda mendengar suara tabrakan dan berbalik untuk melihat anjing Anda melompat ke meja Anda. "<reading>Toto tidak</reading> (ととの)!" kamu berteriak saat dia menjatuhkan semuanya. Sepertinya Anda harus <vocabulary>mengatur</vocabulary> semuanya lagi. Sialan Toto.', 'Untuk Mengatur, Untuk Menertibkan')
    RETURNING id INTO v_7754_untuk_mengatur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昼休み', 'istirahat-makan-siang', 15, 158, 'Ingat bagaimana Anda mengetahui bahwa 休み berarti "istirahat?" Saat Anda istirahat di <kanji>siang</kanji>, itulah <vocabulary>istirahat makan siang</vocabulary> Anda! Atau, jika Anda tidak lapar, <vocabulary>istirahat siang</vocabulary> sebagai gantinya.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda sudah mempelajarinya, jadi Anda harus bisa membacanya juga!', 'Istirahat Makan Siang, Istirahat Siang')
    RETURNING id INTO v_8670_istirahat_makan_siang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '晴れ', 'cuaca-cerah', 15, 159, 'Jika Anda mengatakan sesuatu akan <kanji>beres</kanji>, biasanya yang Anda maksud adalah cuaca. Hal ini membuat <vocabulary>cuaca cerah</vocabulary> atau <vocabulary>cerah</vocabulary>.

Mungkin karena konotasi tersebut, 晴れ juga bisa digunakan untuk menggambarkan acara-acara khusus yang biasanya bersifat publik. Misalnya, pernikahan atau pertunjukan besar bisa disebut 晴れの場 (acara khusus). Demikian pula, pakaian khusus yang Anda kenakan untuk acara tersebut disebut 晴れ着 (pakaian formal).', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Cuaca Cerah, Cerah')
    RETURNING id INTO v_8707_cuaca_cerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昨年', 'tahun-lalu', 15, 160, '<kanji>Tahun</kanji> kemarin</kanji> sebenarnya adalah <vocabulary>tahun lalu</vocabulary>. Kalau begitu, hari ini pasti Tahun Baru!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tahun Lalu')
    RETURNING id INTO v_8751_tahun_lalu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外す', 'untuk-menghapus', 15, 161, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanji 外 berarti <kanji>di luar</kanji>, dan arti kata kerja ini agak berkaitan. Artinya <vocabulary>menghapus</vocabulary> sesuatu. Anggap saja seperti ini — jika Anda melepas jam tangan, Anda meletakkannya "di luar" tempat biasanya (pergelangan tangan Anda), bukan?

Seperti banyak kata kerja yang berakhiran す, kata kerja ini bersifat transitif. Ini digunakan ketika Anda dengan sengaja mengambil sesuatu dan meletakkannya di luar tempat seharusnya — jadi bergantung pada konteksnya, ini juga bisa berarti <vocabulary>mengecualikan</vocabulary> seseorang, atau bahkan <vocabulary>melewatkan sesuatu</vocabulary> (seperti target). Lihat bagaimana semua makna ini berhubungan dengan gagasan tentang sesuatu yang berakhir di luar tempat yang dimaksudkan?', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa itu mungkin bacaan kun''yomi. Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda:

Jika kamu ingin <vocabulary>menghilangkan</vocabulary> sesuatu dari tempatnya biasanya, sebaiknya kamu mengenakan setelan <reading>haz</reading>mat (はず) kamu. Anda tahu, pakaian berwarna kuning yang dikenakan orang-orang untuk memastikan mereka tidak bersentuhan dengan bahan berbahaya. Anda tidak tahu sudah berapa lama benda yang Anda keluarkan itu berada di sana — atau benda beracun aneh apa yang mungkin terkumpul di sekitarnya — jadi lebih baik aman daripada menyesal.', 'Untuk Menghapus, Untuk Mengecualikan, Untuk Melewatkan Sesuatu')
    RETURNING id INTO v_8952_untuk_menghapus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '支払う', 'untuk-membayar', 15, 162, 'Hiragana diakhiri dengan bunyi う, sehingga Anda tahu bahwa ini adalah kata kerja. Untuk <kanji>mendukung</kanji> <kanji>membayar</kanji> adalah cara lain untuk mengatakan <vocabulary>membayar</vocabulary>.

支払う adalah kata umum yang digunakan ketika membayar sesuatu, seperti tagihan, biaya, atau pembelian. Kata ini dapat digunakan dalam konteks santai dan formal, namun terasa lebih lengkap dan pantas dibandingkan 払う. Misalnya, dalam percakapan santai, Anda akan lebih cenderung mengucapkan 私が払うよ (saya yang bayar), namun Anda juga bisa menggunakan 支払う — ini akan terdengar sedikit lebih sopan.', 'Ini hanyalah pembacaan on''yomi dari 支 yang ditambahkan ke 払う. Anda mempelajari membaca itu dengan kanji, jadi Anda seharusnya baik-baik saja di sini.', 'Untuk Membayar')
    RETURNING id INTO v_9017_untuk_membayar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '初耳', 'sesuatu-yang-didengar-untuk-pertama-kalinya', 15, 163, '<kanji>pertama</kanji> saat sesuatu mencapai <kanji>telinga</kanji> Anda, itu adalah <vocabulary>sesuatu yang didengar untuk pertama kalinya</vocabulary>. Jika hal ini belum pernah terdengar di telinga Anda sebelumnya, itu adalah <vocabulary>berita</vocabulary> bagi Anda!', 'Ini adalah kata jukugo yang menggunakan kun''yomi dan bukan on''yomi, karena 初 berperilaku lebih seperti awalan di sini. Anda sudah tahu cara membaca 耳, tapi Anda belum mempelajari kun''yomi untuk 初, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Apapun itu, <vocabulary>sesuatu yang pertama kali didengar</vocabulary> ini, pastikan untuk tetap memegang <reading>topi</reading> (はつ) Anda! Ini akan menjadi sesuatu yang besar, dan saya yakin ini juga akan menjadi <vocabulary>berita</vocabulary> bagi saya.', 'Sesuatu yang Didengar Untuk Pertama Kalinya, Berita')
    RETURNING id INTO v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乗客', 'penumpang', 15, 164, 'Jika Anda mengambil <kanji>naik</kanji> sebagai <kanji>tamu</kanji> (atau <kanji>pelanggan</kanji>), itu menjadikan Anda <vocabulary>penumpang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Mudah-mudahan Anda mempelajari on''yomi untuk 乗 dengan kata 乗馬, tapi berikut ini mnemonik untuk membantu Anda untuk berjaga-jaga:

Anda melihat <vocabulary>penumpang</vocabulary> naik di halte Anda. Siapa itu? Aroma khas dari hewan kandang dan kotoran langsung menunjukkannya: itu adalah <reading>Joe</reading> (じょう), si buruh tani!', 'Penumpang')
    RETURNING id INTO v_9049_penumpang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乗馬', 'menunggang-kuda', 15, 165, 'Jika Anda <kanji>menunggang</kanji> <kanji>kuda</kanji>, itu adalah <vocabulary>menunggang kuda</vocabulary> atau, di beberapa bagian dunia, cukup <vocabulary>menunggang kuda</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 乗, jadi inilah mnemonik untuk membantu Anda:

Tahu siapa yang suka <vocabulary>menunggang kuda</vocabulary>? Benar sekali, <reading>Joe</reading> (じょう) si buruh tani. Masuk akal, karena dia adalah seorang buruh tani dan sebagainya.', 'Menunggang Kuda, Menunggang Kuda')
    RETURNING id INTO v_9050_menunggang_kuda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '由来', 'asal', 15, 166, 'Apa <kanji>alasan</kanji> sesuatu <kanji>terjadi</kanji>? <vocabulary>asal</vocabulary>-nya, tentu saja. Tidak ada sesuatu pun yang bisa muncul di dunia ini tanpa <vocabulary>sumber</vocabulary>, karena <vocabulary>berasal dari</vocabulary> selalu ada di suatu tempat.', 'Anda tidak mempelajari bacaan ini untuk 由 jadi inilah mnemonik untuk membantu Anda:

Cara terbaik untuk mendekati <vocabulary>asal</vocabulary> atau <vocabulary>source</vocabulary> sesuatu adalah dengan berpindah ke <reading>yu</reading>rt (ゆ). Yurt mudah untuk dipindahkan, sehingga Anda selalu bisa dekat dengan sumbernya, di mana pun berada.', 'Asal, Sumber, Berasal dari')
    RETURNING id INTO v_9066_asal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '疑う', 'meragukan', 15, 167, 'Kanji berarti <kanji>keraguan</kanji>, jadi ini hanyalah kata kerja. Jadi ini berarti <vocabulary>meragukan</vocabulary>, <vocabulary>mencurigai</vocabulary>, atau <vocabulary>mencurigai</vocabulary>.', 'Ada alasan <vocabulary>meragukan</vocabulary> bahwa Anda dapat mengajarkan log <reading>u</reading>ni <reading>Taga</reading> (うたが), tetapi setelah Anda mencobanya, sebenarnya tidak terlalu sulit. Bagaimanapun, mereka adalah pendengar yang baik.', 'Meragukan, Untuk Tersangka, Menjadi Curiga')
    RETURNING id INTO v_9244_meragukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下りる', 'untuk-turun', 15, 168, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>di bawah</kanji>, yang merupakan petunjuk arah kata kerja gerakan ini: ini adalah <vocabulary>turun</vocabulary> atau <vocabulary>turun</vocabulary>. Dalam beberapa kasus, hal ini juga bisa berarti <vocabulary>dikeluarkan</vocabulary>, terutama dalam situasi di mana semacam hibah atau tunjangan dikeluarkan oleh pihak yang berwenang.

Anda mungkin memperhatikan bahwa ini mirip dengan 下る (くだる), dan Anda dapat menggunakan keduanya untuk menggambarkan turun gunung. Bedanya, 下る menyiratkan gerakan miring yang bertahap, seperti melayang di sungai, sedangkan Anda akan mengucapkan 下りる jika Anda melompat dari pohon!', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi, yang tidak Anda pelajari dengan kanji. Berikut ini mnemonik untuk membantu Anda:

Anda terjebak di gunung yang sangat besar, dan satu-satunya cara <vocabulary>untuk turun</vocabulary> adalah dengan menggunakan <reading>o</reading>bi (お). Jadi kamu harus <vocabulary>turun</vocabulary> seluruh gunung ini hanya dengan membawa obi, yang berfungsi sebagai tali. Semoga beruntung!', 'Untuk Turun, Untuk Turun, Akan Dikeluarkan')
    RETURNING id INTO v_9249_untuk_turun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '問う', 'untuk-mempertanyakan-sesuatu', 15, 169, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>masalah</kanji> dan kata kerja ini berarti <vocabulary>menanyakan sesuatu</vocabulary>. Itu karena ketika Anda ingin menyelesaikan suatu masalah, Anda mempertanyakan banyak hal.

問う memiliki kesan sastra yang formal dan cenderung membawa kesan mengajukan pertanyaan yang bermakna atau berbobot. Anda akan melihatnya dalam esai, artikel berita, dan tulisan filosofis ketika seseorang memikirkan isu-isu yang lebih dalam, seperti mempertanyakan nilai-nilai, masyarakat, atau keberadaan sesuatu. Ini juga bisa berarti <kosa kata>bertanya</vocabulary>, tetapi akan terdengar lebih kaku dan kuno dibandingkan 聞く standar.', 'Karena kata ini memiliki okurigana (hiragana yang dilampirkan pada kanji), Anda tahu kemungkinan besar kata ini akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>mempertanyakan sesuatu</vocabulary> boleh saja, namun Anda harus berhati-hati agar tidak menginjak <read>toe</reading>s (と) orang lain dengan melakukan hal tersebut. Mempertanyakan hal-hal tertentu dapat menyinggung perasaan orang, terutama jika itu adalah sesuatu yang sangat mereka sukai! Jadi berhati-hatilah dengan jari kaki itu.', 'Untuk Mempertanyakan Sesuatu, Untuk Bertanya')
    RETURNING id INTO v_9257_untuk_mempertanyakan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '受け入れる', 'untuk-menerima-sesuatu', 15, 170, 'Ingat 受ける (menerima sesuatu) dan 入れる (memasukkan)? Ini hanya menggabungkan keduanya. Anda menerima sesuatu, dan memasukkannya ke dalam hati Anda. Anda menerimanya. Jadi kata kerja ini berarti <vocabulary>menerima sesuatu</vocabulary> atau <vocabulary>to take in</vocabulary>. 

Anda dapat menggunakan kata kerja ini untuk semua jenis penerimaan, seperti menerima permintaan maaf, menerima pertukaran siswa ke sekolah Anda, dll.', 'Anda harus tahu cara membaca 受ける dan 入れる, jadi Anda sebaiknya melakukannya dengan baik!', 'Untuk Menerima Sesuatu, Untuk Menerima')
    RETURNING id INTO v_9269_untuk_menerima_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緑茶', 'teh-hijau', 15, 171, '<kanji>Hijau</kanji> <kanji>teh</kanji> adalah <vocabulary>teh hijau</vocabulary>.

緑茶 secara teknis mengacu pada semua jenis teh hijau (yaitu teh yang tidak teroksidasi). Namun dalam bahasa Jepang sehari-hari, kata tersebut biasanya berarti teh berwarna hijau yang dibuat dari infus daun, biasanya sencha.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari cara membaca りょく untuk 緑, jadi inilah mnemonik yang dapat membantu Anda:

Anda sangat menyukai <vocabulary>teh hijau</vocabulary> sehingga Anda <reading>mengunci</reading> (りょく) di brankas di rumah Anda. Tidak ada seorang pun yang bisa menikmati teh hijau itu kecuali Anda - teh itu disimpan dengan ketat setiap saat.', 'Teh hijau')
    RETURNING id INTO v_9369_teh_hijau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '舐める', 'menjilat', 15, 172, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menjilat</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>menjilat</vocabulary>.

舐める juga memiliki arti slang <vocabulary>meremehkan</vocabulary> atau <vocabulary>meremehkan</vocabulary>. Dalam hal ini sering kali ditulis sebagai ナメる atau terkadang なめる. Anda mungkin melihatnya di manga atau mendengar karakter di film mengatakan なめんなよ (jangan remehkan saya). Pikirkan arti gaulnya seperti ini: Anda harus benar-benar meremehkan seseorang untuk berpikir Anda bisa menjilatnya begitu saja tanpa konsekuensi, bukan?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belajar membaca itu dengan kanji, jadi sebaiknya Anda pergi ke sini!', 'Menjilat, Untuk Meremehkan, Untuk Diremehkan')
    RETURNING id INTO v_9382_menjilat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大家', 'tuan-tanah', 15, 173, 'Orang <kanji>besar</kanji> yang memiliki <kanji>rumah</kanji> Anda adalah <vocabulary>tuan tanah</vocabulary> atau <vocabulary>induk semang</vocabulary> Anda.

Anda akan sering mendengar ini dengan nama ender さん, seperti dalam 大家さん, untuk merujuk pada tuan tanah atau induk semang.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari pembacaan 大 おお dengan 大きい dan pembacaan 家 や dengan 空き家, namun inilah mnemonik jika Anda lupa:

Ketika <vocabulary>pemilik</vocabulary> Anda meminta uang sewa, Anda berkata, "<reading>Oh yah</reading> (おおや). Oh ya. Saya memilikinya, dan saya akan segera memberikannya kepada Anda. Oh yah, jangan khawatir." Lalu, Anda berpura-pura tidak berada di rumah selama beberapa minggu ke depan.', 'Tuan tanah, Induk semang')
    RETURNING id INTO v_9485_tuan_tanah;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2902_untuk_memperbaiki, 'Untuk Memperbaiki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2902_untuk_memperbaiki, 'Untuk Memperbaiki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2902_untuk_memperbaiki, 'Untuk Memperbaiki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2955_penulis, 'Penulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2955_penulis, 'Pengarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2955_penulis, 'Pencipta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3138_mitra, 'Mitra', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3138_mitra, 'Pendamping', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3138_mitra, 'Lawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3371_matahari, 'Matahari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3575_untuk_disukai, 'Untuk Disukai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3575_untuk_disukai, 'Menyukai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3589_tayangan, 'Tayangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3589_tayangan, 'Kesan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3589_tayangan, 'Pikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3601_bermacam_macam, 'Bermacam-macam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3616_fukushima, 'Fukushima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3681_teknik, 'Teknik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3681_teknik, 'Seni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3681_teknik, 'Keahlian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3682_keahlian, 'Keahlian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3682_keahlian, 'Kemampuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3683_khusus, 'Khusus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3703_struktur_tulang, 'Struktur Tulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3703_struktur_tulang, 'Kerangka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3703_struktur_tulang, 'Kerangka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3726_seni, 'Seni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3726_seni, 'Seni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3726_seni, 'Seni Rupa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3727_seni_rupa, 'Seni Rupa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3727_seni_rupa, 'Seni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3729_budha, 'Budha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3730_agama_buddha, 'agama Buddha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3731_patung_buddha_raksasa, 'Patung Buddha Raksasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3731_patung_buddha_raksasa, 'Daibutsu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3731_patung_buddha_raksasa, 'Buddha Agung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3732_percaya, 'Percaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3732_percaya, 'Untuk Percaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3733_kepercayaan_diri, 'Kepercayaan diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3733_kepercayaan_diri, 'Percaya Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3734_lampu_lalu_lintas, 'Lampu lalu lintas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3734_lampu_lalu_lintas, 'Sinyal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3734_lampu_lalu_lintas, 'Sinyal Lalu Lintas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3734_lampu_lalu_lintas, 'Lampu lalu lintas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3734_lampu_lalu_lintas, 'Tiang sinyal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3735_keyakinan, 'Keyakinan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3735_keyakinan, 'Keyakinan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3736_memercayai, 'Memercayai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3736_memercayai, 'Kredibilitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3737_ketidakpercayaan, 'Ketidakpercayaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3737_ketidakpercayaan, 'Ketidakpercayaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3737_ketidakpercayaan, 'Mendiskreditkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3737_ketidakpercayaan, 'Ketidaksetiaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3738_membalas, 'Membalas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3738_membalas, 'Menjawab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3739_keberanian, 'Keberanian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3739_keberanian, 'Keberanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3739_keberanian, 'Keberanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3739_keberanian, 'Keberanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3740_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3740_daerah, 'Bangsal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3742_daerah, 'Daerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3742_daerah, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3742_daerah, 'Daerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3743_hanya, 'Hanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3743_hanya, 'Hanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3743_hanya, 'Hanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3744_kata, 'Kata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3744_kata, 'Kosakata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3745_bos, 'Bos', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3745_bos, 'Unggul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3746_lereng, 'Lereng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3746_lereng, 'Bukit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3747_aneh, 'Aneh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3747_aneh, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3748_eksentrik, 'Eksentrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3748_eksentrik, 'Eksentrik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3748_eksentrik, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3749_mengubah, 'Mengubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3749_mengubah, 'Transformasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3750_kematian_tidak_wajar, 'Kematian Tidak Wajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3750_kematian_tidak_wajar, 'Kematian karena Kecelakaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3751_serius, 'Serius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3751_serius, 'Sangat buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3751_serius, 'Sangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3751_serius, 'Sulit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3751_serius, 'Keras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3751_serius, 'Sibuk sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3752_insiden, 'Insiden', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3753_suami, 'Suami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3754_batu_besar, 'Batu besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3754_batu_besar, 'Batu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3755_untuk_kembali_ke_rumah, 'Untuk Kembali ke Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3755_untuk_kembali_ke_rumah, 'Untuk Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3755_untuk_kembali_ke_rumah, 'Untuk Pulang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3758_upacara, 'Upacara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3758_upacara, 'Upacara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3758_upacara, 'Persamaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3758_upacara, 'Gaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3759_musim_semi, 'Musim semi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3760_liburan_musim_semi, 'liburan musim semi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3760_liburan_musim_semi, 'Liburan Musim Semi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3760_liburan_musim_semi, 'Liburan Musim Semi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3761_hari_hari_ini, 'Hari-hari ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3761_hari_hari_ini, 'Dewasa ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3761_hari_hari_ini, 'Baru-baru ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3762_kemarin, 'Kemarin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3763_siang, 'Siang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3763_siang, 'Siang hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3764_malam, 'Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3764_malam, 'Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3765_selamat_malam, 'Selamat malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3766_setiap_malam, 'Setiap Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3766_setiap_malam, 'Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3767_untuk_menjernihkan, 'Untuk Menjernihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3767_untuk_menjernihkan, 'Menjadi Cerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3768_racun, 'Racun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3768_racun, 'Bisa ular', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3769_peracunan, 'Peracunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3769_peracunan, 'Kecanduan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3770_beracun, 'Beracun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3770_beracun, 'Beracun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3771_keracunan_makanan, 'Keracunan Makanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3772_gas_beracun, 'Gas Beracun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3773_metode, 'Metode', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3773_metode, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3774_tata_bahasa, 'Tata bahasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3775_liar, 'Liar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3775_liar, 'Melanggar hukum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3776_menangis, 'Menangis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3777_dangkal, 'Dangkal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3778_kucing, 'Kucing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3779_anak_kucing, 'Anak kucing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3779_anak_kucing, 'kucing', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3780_musim_gugur, 'Musim gugur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3780_musim_gugur, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3782_abad, 'Abad', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3783_era_umum, 'Era Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3783_era_umum, 'CE', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3783_era_umum, 'IKLAN', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3783_era_umum, 'Anno Domini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3784_bahasa_inggris, 'Bahasa Inggris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3784_bahasa_inggris, 'Bahasa inggris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3785_percakapan_bahasa_inggris, 'Percakapan Bahasa Inggris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3786_penulisan_bahasa_inggris, 'Penulisan Bahasa Inggris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3786_penulisan_bahasa_inggris, 'Komposisi Bahasa Inggris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3787_britania, 'Britania', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3787_britania, 'Inggris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3787_britania, 'Inggris Raya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3787_britania, 'Inggris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3788_bahasa_inggris_jepang, 'Bahasa Inggris Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3789_jam_tangan, 'Jam tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3789_jam_tangan, 'Jam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3790_total, 'Total', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3790_total, 'Jumlah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3791_rencana, 'Rencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3791_rencana, 'Perencanaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3791_rencana, 'Proyek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3792_perhitungan, 'Perhitungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3793_tentara, 'Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3793_tentara, 'Personil Militer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3794_angkatan_laut, 'Angkatan laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3795_makanan, 'Makanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3795_makanan, 'Nasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3795_makanan, 'Makanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3796_makanan, 'Makanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3796_makanan, 'Nasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3893_kikuk, 'Kikuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3893_kikuk, 'Tidak terampil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3893_kikuk, 'Canggung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3894_sebuah_permintaan, 'Sebuah Permintaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3894_sebuah_permintaan, 'Meminta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3894_sebuah_permintaan, 'Mengharapkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3894_sebuah_permintaan, 'Silakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3895_minum_sepuasnya, 'Minum Sepuasnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3896_makan_sepuasnya, 'Makan Sepuasnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3898_pembunuhan, 'Pembunuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3898_pembunuhan, 'Pembunuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3899_pembunuh, 'Pembunuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3899_pembunuh, 'Pembunuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3900_cincin, 'Cincin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3901_gelang_karet, 'Gelang karet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3901_gelang_karet, 'Pita elastis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3904_untuk_menghafal, 'Untuk Menghafal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3905_untuk_berlatih, 'Untuk Berlatih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3928_gagal_dalam_ujian, 'Gagal dalam Ujian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3928_gagal_dalam_ujian, 'Gagal dalam Ujian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3928_gagal_dalam_ujian, 'Penolakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3932_insiden_tak_terduga, 'Insiden Tak Terduga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3932_insiden_tak_terduga, 'Insiden Tidak Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3942_sinkronisasi, 'Sinkronisasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3942_sinkronisasi, 'Sinkronisasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3943_kuil, 'Kuil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3943_kuil, 'Kuil Budha', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4218_menjadi_proporsional, 'Menjadi Proporsional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4218_menjadi_proporsional, 'Proporsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4464_untuk_dipecahkan, 'Untuk Dipecahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4464_untuk_dipecahkan, 'Untuk Dibersihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5501_lezat, 'Lezat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5501_lezat, 'Lezat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5715_memahami, 'Memahami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5715_memahami, 'Mengerti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5715_memahami, 'Dipahami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5927_untuk_membayar, 'Untuk Membayar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5927_untuk_membayar, 'Untuk Menyingkirkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5983_untuk_mengubah_sesuatu, 'Untuk Mengubah Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5983_untuk_mengubah_sesuatu, 'Untuk Berubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6809_penghitung_hewan_kecil, 'Penghitung Hewan Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6809_penghitung_hewan_kecil, 'Counter Untuk Hewan Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6810_empat_hewan_kecil, 'Empat Hewan Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7277_kokoh, 'Kokoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7277_kokoh, 'Tegas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7277_kokoh, 'Sehat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7278_tinggi, 'Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7278_tinggi, 'Panjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7280_padat, 'Padat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7280_padat, 'Tegas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7280_padat, 'Bayak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7280_padat, 'Kokoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, 'Untuk Menunjukkan kepada Seseorang Apa yang Dapat Dilakukannya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, 'Untuk Menunjukkan kepada Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, 'Untuk Melihat Kembali Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, 'Untuk Membalas Tatapan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7542_tentara, 'Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7542_tentara, 'Pasukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7542_tentara, 'Memaksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7543_garis, 'Garis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7543_garis, 'Antre', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7543_garis, 'Baris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7543_garis, 'Kolom', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7544_perantara, 'Perantara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7544_perantara, 'Koneksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7544_perantara, 'Kontak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7544_perantara, 'Pergi Antara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7640_menderita, 'Menderita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7640_menderita, 'Menyedihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7640_menderita, 'Memalukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7640_menderita, 'Tercela', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7640_menderita, 'Malang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7640_menderita, 'Sedih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7640_menderita, 'Menyedihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7697_untuk_menembak, 'Untuk Menembak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7697_untuk_menembak, 'Untuk Melepaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7697_untuk_menembak, 'Untuk Memancarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7697_untuk_menembak, 'Untuk Membebaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7754_untuk_mengatur, 'Untuk Mengatur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7754_untuk_mengatur, 'Untuk Menertibkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8670_istirahat_makan_siang, 'Istirahat Makan Siang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8670_istirahat_makan_siang, 'Istirahat Siang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8707_cuaca_cerah, 'Cuaca Cerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8707_cuaca_cerah, 'Cerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8751_tahun_lalu, 'Tahun Lalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8952_untuk_menghapus, 'Untuk Menghapus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8952_untuk_menghapus, 'Untuk Mengecualikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8952_untuk_menghapus, 'Untuk Melewatkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9017_untuk_membayar, 'Untuk Membayar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya, 'Sesuatu yang Didengar Untuk Pertama Kalinya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya, 'Berita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9049_penumpang, 'Penumpang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9050_menunggang_kuda, 'Menunggang Kuda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9050_menunggang_kuda, 'Menunggang Kuda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9066_asal, 'Asal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9066_asal, 'Sumber', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9066_asal, 'Berasal dari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9244_meragukan, 'Meragukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9244_meragukan, 'Untuk Tersangka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9244_meragukan, 'Menjadi Curiga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9249_untuk_turun, 'Untuk Turun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9249_untuk_turun, 'Untuk Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9249_untuk_turun, 'Akan Dikeluarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9257_untuk_mempertanyakan_sesuatu, 'Untuk Mempertanyakan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9257_untuk_mempertanyakan_sesuatu, 'Untuk Bertanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9269_untuk_menerima_sesuatu, 'Untuk Menerima Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9269_untuk_menerima_sesuatu, 'Untuk Menerima', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9369_teh_hijau, 'Teh hijau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9382_menjilat, 'Menjilat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9382_menjilat, 'Untuk Meremehkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9382_menjilat, 'Untuk Diremehkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9485_tuan_tanah, 'Tuan tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9485_tuan_tanah, 'Induk semang', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2902_untuk_memperbaiki, 'なおす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2955_penulis, 'さっか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3138_mitra, 'あいて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3371_matahari, 'たいよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3575_untuk_disukai, 'このむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3589_tayangan, 'かんそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3601_bermacam_macam, 'さまざま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3616_fukushima, 'ふくしま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3681_teknik, 'わざ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3682_keahlian, 'ぎのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3683_khusus, 'とくぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3703_struktur_tulang, 'こっかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3726_seni, 'げいじゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3727_seni_rupa, 'びじゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3729_budha, 'ほとけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3730_agama_buddha, 'ぶっきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3731_patung_buddha_raksasa, 'だいぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3732_percaya, 'しんじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3733_kepercayaan_diri, 'じしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3734_lampu_lalu_lintas, 'しんごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3735_keyakinan, 'しんじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3736_memercayai, 'しんよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3737_ketidakpercayaan, 'ふしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3738_membalas, 'へんしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3739_keberanian, 'ゆうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3740_daerah, 'く', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3742_daerah, 'ちく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3743_hanya, 'たんに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3744_kata, 'たんご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3745_bos, 'じょうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3746_lereng, 'さか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3747_aneh, 'へん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3748_eksentrik, 'へんじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3749_mengubah, 'へんか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3750_kematian_tidak_wajar, 'へんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3751_serius, 'たいへん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3752_insiden, 'じへん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3753_suami, 'おっと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3754_batu_besar, 'いわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3755_untuk_kembali_ke_rumah, 'かえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3758_upacara, 'しき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3759_musim_semi, 'はる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3760_liburan_musim_semi, 'はるやすみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3761_hari_hari_ini, 'さっこん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3762_kemarin, 'きのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3762_kemarin, 'さくじつ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3763_siang, 'ひる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3764_malam, 'ばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3765_selamat_malam, 'こんばんは', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3766_setiap_malam, 'まいばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3767_untuk_menjernihkan, 'はれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3768_racun, 'どく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3769_peracunan, 'ちゅうどく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3770_beracun, 'ゆうどく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3771_keracunan_makanan, 'しょくちゅうどく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3772_gas_beracun, 'どくがす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3772_gas_beracun, 'どくガス', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3773_metode, 'ほうほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3774_tata_bahasa, 'ぶんぽう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3775_liar, 'ふほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3776_menangis, 'なく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3777_dangkal, 'あさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3778_kucing, 'ねこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3779_anak_kucing, 'こねこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3780_musim_gugur, 'あき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3782_abad, 'せいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3783_era_umum, 'きげんご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3784_bahasa_inggris, 'えいご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3785_percakapan_bahasa_inggris, 'えいかいわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3786_penulisan_bahasa_inggris, 'えいぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3787_britania, 'えいこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3788_bahasa_inggris_jepang, 'えいわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3789_jam_tangan, 'とけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3790_total, 'ごうけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3791_rencana, 'けいかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3792_perhitungan, 'けいさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3793_tentara, 'ぐんじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3794_angkatan_laut, 'かいぐん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3795_makanan, 'めし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3796_makanan, 'ごはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3893_kikuk, 'ぶきよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3894_sebuah_permintaan, 'おねがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3895_minum_sepuasnya, 'のみほうだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3896_makan_sepuasnya, 'たべほうだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3898_pembunuhan, 'ひとごろし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3899_pembunuh, 'さつじんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3900_cincin, 'ゆびわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3901_gelang_karet, 'わごむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3901_gelang_karet, 'わゴム', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3904_untuk_menghafal, 'あんきする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3905_untuk_berlatih, 'れんしゅうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3928_gagal_dalam_ujian, 'ふごうかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3932_insiden_tak_terduga, 'へんじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3942_sinkronisasi, 'どうきちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3943_kuil, 'てら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4218_menjadi_proporsional, 'ひれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4464_untuk_dipecahkan, 'とける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5501_lezat, 'おいしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5715_memahami, 'りょうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5927_untuk_membayar, 'はらう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5983_untuk_mengubah_sesuatu, 'かえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6809_penghitung_hewan_kecil, 'ひき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6810_empat_hewan_kecil, 'よんひき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7277_kokoh, 'じょうぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7278_tinggi, 'たけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7280_padat, 'がんじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, 'みかえす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7542_tentara, 'ぐん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7543_garis, 'れつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7544_perantara, 'つて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7640_menderita, 'なさけない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7697_untuk_menembak, 'はなつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7754_untuk_mengatur, 'ととのえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8670_istirahat_makan_siang, 'ひるやすみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8707_cuaca_cerah, 'はれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8751_tahun_lalu, 'さくねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8952_untuk_menghapus, 'はずす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9017_untuk_membayar, 'しはらう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya, 'はつみみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9049_penumpang, 'じょうきゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9050_menunggang_kuda, 'じょうば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9066_asal, 'ゆらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9244_meragukan, 'うたがう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9249_untuk_turun, 'おりる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9257_untuk_mempertanyakan_sesuatu, 'とう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9269_untuk_menerima_sesuatu, 'うけいれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9369_teh_hijau, 'りょくちゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9382_menjilat, 'なめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9485_tuan_tanah, 'おおや', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2902_untuk_memperbaiki, 'このパソコン、直せますか？', 'Bisakah Anda memperbaiki komputer ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2902_untuk_memperbaiki, 'トイレを直さなければいけない。', 'Saya harus memperbaiki toilet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2902_untuk_memperbaiki, '考え直します。', 'Saya akan mempertimbangkannya kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2955_penulis, 'あの男の人は、有名なベストセラー作家です。', 'Pria itu adalah penulis buku terlaris yang terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2955_penulis, 'この本の作家さんから、サインをもらいました。', 'Saya mendapat tanda tangan dari penulis buku ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2955_penulis, 'この作家のファンは、三十才以上の女の人が多いです。', 'Banyak penggemar penulis ini adalah wanita berusia di atas tiga puluh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3138_mitra, '今回のゲームの相手は強そうだ。', 'Lawan dari game ini sepertinya kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3138_mitra, '母の話し相手は、ペットの毛虫です。', 'Teman ngobrol ibu saya adalah ulat peliharaannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3138_mitra, 'フラッシュモブでプロポーズされる相手のことも、きちんと考えなよ。', 'Bagaimana kalau memikirkan baik-baik orang yang Anda lamar dengan flash mob?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3371_matahari, 'あっ、太陽の光が出てきましたね。', 'Oh, matahari sudah terbit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3371_matahari, '太陽の温度って何度ぐらいあるか知っていますか？', 'Tahukah Anda berapa suhu matahari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3371_matahari, '日本万国博覧会のシンボルは、岡本太郎が作った「太陽の塔」で、それは今も日本の大阪の吹田にある万博公園にそびえ立っています。', 'Simbol Expo ''70 adalah Menara Matahari, yang dibuat oleh Taro Okamoto, dan masih berdiri di Taman Peringatan Expo di Suita, Osaka, Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3575_untuk_disukai, '彼はクラシック音楽を好む人です。', 'Dia adalah seseorang yang lebih menyukai musik klasik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3575_untuk_disukai, 'コウイチは、黒ニンニクを好んで食べます。', 'Koichi suka makan bawang putih hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3575_untuk_disukai, 'うちのネコは一人でいることを好みます。', 'Kucing saya lebih suka menyendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3589_tayangan, 'よかったら、感想を聞かせてください。', 'Jika Anda tidak keberatan, beri tahu saya pendapat Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3589_tayangan, '宿題はこの本の感想文です。', 'Pekerjaan rumahnya adalah resensi buku untuk buku ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3589_tayangan, 'それってただのあなたの感想ですよね？', 'Itu hanya pendapat Anda, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3601_bermacam_macam, '色んな人がいるので、様々な意見が出るのは当たり前です。', 'Karena ada banyak orang yang berbeda, maka wajar jika pendapat yang dikemukakan berbeda-beda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3601_bermacam_macam, 'その発言に対しては様々な受けとり方ができると思います。', 'Saya pikir ada berbagai cara untuk menafsirkan pernyataan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3601_bermacam_macam, 'これについては、まだ様々な問題があります。', 'Masih terdapat berbagai permasalahan mengenai hal ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3601_bermacam_macam, 'やっぱり、好きなものは、人様々ですね。', 'Tentu saja, orang menyukai hal yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3601_bermacam_macam, '同じ家で育った兄弟でも性格は様々です。', 'Bahkan saudara kandung yang dibesarkan dalam satu rumah pun memiliki kepribadian yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3616_fukushima, 'このバンドのボーカルは、福島の出身です。', 'Vokalis band ini berasal dari Fukushima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3616_fukushima, '福島は日本の東北地方にあります。', 'Fukushima terletak di wilayah Tohoku Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3616_fukushima, '福島には美しい自然がたくさんあります。', 'Fukushima memiliki banyak keindahan alam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3681_teknik, 'ワオ！すごい技をマスターしたね。', 'Wow! Anda telah menguasai keterampilan yang luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3681_teknik, 'どんな技を使って彼女をゲットしたの？', 'Teknik apa yang Anda gunakan untuk memenangkan hatinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3681_teknik, 'さすが、プロの技だね。すごいわ。', 'Seperti yang diharapkan, itu adalah keterampilan profesional. Sangat mengesankan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3682_keahlian, '私は日本で技能実習生として働いています。', 'Saya bekerja sebagai magang teknis di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3682_keahlian, 'バイクの技能試験は一発合格でした。', 'Saya lulus tes keterampilan sepeda motor sekaligus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3682_keahlian, 'リーディング、ライティング、リスニング、スピーキングの四つの技能をバランスよく勉強しなくてはいけません。', 'Anda perlu mempelajari keempat keterampilan – membaca, menulis, mendengarkan, dan berbicara – secara seimbang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3683_khusus, '私の特技セキセイインコの鳴きマネです。', 'Keahlian khusus saya adalah meniru teriakan burung budgerigar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3683_khusus, '僕には特技は一つもありません。', 'Saya tidak memiliki keahlian khusus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3683_khusus, '彼女の特技はパン作りです。パン作りが好きな理由は、みんなのハッピーな顔を見るのが好きだからだそうです。', 'Keahlian khususnya adalah membuat roti. Dia suka membuat roti karena dia senang melihat wajah bahagia semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3703_struktur_tulang, 'ガッシリした骨格の男性がタイプです。', 'Saya suka pria dengan tubuh kokoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3703_struktur_tulang, '私、顔の骨格がゆがんでる気がするんだよね。', 'Saya merasa struktur tulang wajah saya bengkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3703_struktur_tulang, '僕はアゴの骨格がズレてるって言われたよ。', 'Saya diberitahu bahwa struktur tulang rahang saya tidak selaras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3726_seni, '彼女には芸術の才能があります。', 'Dia memiliki bakat di bidang seni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3726_seni, '私の妹は、芸大でタイ芸術を学んでいます。', 'Adik perempuan saya sedang belajar seni Thailand di universitas seni rupa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3726_seni, '芸術の世界で成功するには運も必要だよ。', 'Anda memerlukan sedikit keberuntungan untuk sukses di dunia seni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3727_seni_rupa, '私は大学で美術を学んでいます。', 'Saya sedang belajar seni di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3727_seni_rupa, 'よかったら、美術部に入らない？', 'Apakah Anda ingin bergabung dengan klub seni?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3727_seni_rupa, '彼は美術の本を読んで、様々な画家について学んでいます。', 'Dia membaca buku seni untuk belajar tentang berbagai pelukis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3729_budha, 'ビエトはヤクザをやめて、仏の道に入ることを決意しました。', 'Viet telah memutuskan untuk keluar dari kelompok Yakuza dan mengikuti ajaran Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3729_budha, 'あの人は仏のような人ですが、「仏の顔も三度まで」ですよ。', 'Orang tersebut mungkin terlihat setenang Buddha, namun bahkan Buddha pun bisa kehilangan kesabaran setelah tiga kejadian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3729_budha, '私はイヤなことは知らずに、「知らぬが仏」でいる方がいいよ。', 'Seringkali lebih baik hidup dengan prinsip ''ketidaktahuan adalah kebahagiaan'' dan tetap mengabaikan hal-hal yang tidak menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3730_agama_buddha, '仏教は古代インドから始まりました。', 'Agama Buddha berasal dari India kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3730_agama_buddha, '私は仏教の教えに共感します。', 'Saya selaras dengan ajaran Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3730_agama_buddha, '私の友人は仏教学者で、大学で仏教学を教えています。', 'Teman saya adalah seorang sarjana Buddhis dan mengajar studi Buddhis di sebuah universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3731_patung_buddha_raksasa, 'その大仏の高さは約15メートルです。', 'Buddha Agung tingginya sekitar lima belas meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3731_patung_buddha_raksasa, 'この大仏は、とても有名な大仏です。', 'Buddha Agung ini sangat terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3731_patung_buddha_raksasa, 'いや、大仏はゼッタイ見ておいた方がいいですよ。', 'Tidak, Anda benar-benar harus melihat Buddha Agung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3732_percaya, '本当かウソか分かんなくても、大切な人から言われたことなら、信じるしかないよね。', 'Entah itu benar atau salah, jika itu dikatakan oleh orang penting, kita tidak punya pilihan selain mempercayainya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3732_percaya, '信じられないかもしれないが、実はビエトはスパイだったんだよ。', 'Percaya atau tidak, Viet ternyata adalah mata-mata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3732_percaya, '自分がサンタクロースのことを信じなくなったのは、一体いつからだろう。', 'Saya bertanya-tanya kapan tepatnya saya berhenti percaya pada Sinterklas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3733_kepercayaan_diri, '自信なんて、これっぽっちもないよ。', 'Saya tidak memiliki sedikit pun rasa percaya diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3733_kepercayaan_diri, 'もっと自信を持った方がいいよ！', 'Anda harus lebih percaya diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3733_kepercayaan_diri, '俺は誰よりも君を大切にできる自信があります。だから、ずっと俺といてください。', 'Aku yakin aku bisa menyayangimu lebih dari orang lain. Jadi, kumohon, tetaplah bersamaku selamanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3734_lampu_lalu_lintas, 'あ、あそこに信号がある。', 'Oh, ada lampu lalu lintas di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3734_lampu_lalu_lintas, '赤信号ではちゃんと止まりましょう。', 'Mari kita pastikan untuk berhenti di lampu merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3734_lampu_lalu_lintas, '日本では緑信号とは言わずに青信号って言うんだよ。', 'Di Jepang, mereka mengatakan "lampu biru" bukannya "lampu hijau".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3735_keyakinan, '私の母は信心深い人です。', 'Ibu saya adalah orang yang sangat religius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3735_keyakinan, 'いいですか、皆さん。信心を大切にすることで、心が強くなるんです。', 'Baiklah, semuanya? Dengan menjunjung tinggi iman, hati kita menjadi lebih kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3735_keyakinan, '私は神への信心がある人ともない人とも、みんなと助け合って生きていきたいです。', 'Saya ingin hidup dengan membantu orang lain, baik mereka beriman kepada Tuhan atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3736_memercayai, '彼の言葉には信用があります。', 'Kata-katanya membawa kredibilitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3736_memercayai, '彼女は社内のみんなから信用されています。', 'Dia dipercaya oleh semua orang di perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3736_memercayai, '二回もウソをついたせいで、彼らの信用を失ってしまったんです。', 'Saya kehilangan kepercayaan mereka karena saya berbohong dua kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3737_ketidakpercayaan, '正直、その店員の言葉には、少し不信感を感じました。', 'Sejujurnya, saya merasa sedikit tidak percaya pada kata-kata penjaga toko itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3737_ketidakpercayaan, '私はそのことがきっかけで、人間不信になってしまいました。', 'Akibat kejadian itu, saya menjadi tidak percaya pada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3737_ketidakpercayaan, '色々な方から話を聞くたびに、この国の医者への不信はつのるばかりです。', 'Setiap kali saya mendengar pendapat orang yang berbeda, ketidakpercayaan saya terhadap dokter di negeri ini semakin bertambah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3738_membalas, 'いや、まだ返信してない。', 'Tidak, saya belum menjawabnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3738_membalas, 'いつまでたっても返信が来ないんだよね。', 'Butuh waktu lama untuk mendapat balasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3738_membalas, '返信したつもりだったんだけど、送信できてなかった。', 'Saya pikir saya membalas, tetapi ternyata tidak terkirim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3739_keberanian, '勇気を持って新しいことにチャレンジしてみましょう。', 'Mari kita berani mencoba hal baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3739_keberanian, '勇気を出して声を上げた人に、そんなこと言うのは良くないよ。', 'Tidak baik mengatakan hal itu kepada seseorang yang sudah mengumpulkan keberanian untuk berbicara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3739_keberanian, 'ワニカニユーザーは、コウイチのスピーチに勇気づけられました。', 'Pengguna WaniKani terdorong oleh pidato Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3740_daerah, '私は、中央区の区役所で働いています。', 'Saya bekerja di kantor lingkungan Chuo-ku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3740_daerah, '東京23区、全部言えますか？', 'Bisakah Anda menyebutkan dua puluh tiga distrik di Tokyo?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3740_daerah, '私の家は世田谷区にあります。世田谷区は住みやすいエリアとして知られています。', 'Rumah saya berlokasi di Kelurahan Setagaya. Lingkungan Setagaya dikenal sebagai kawasan tempat tinggal yang nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3742_daerah, 'この地区はファミリー向けで住みやすいです。', 'Distrik ini berorientasi pada keluarga dan mudah untuk ditinggali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3742_daerah, '彼は、去年の大会で地区の代表に選ばれた選手です。', 'Dia adalah pemain yang terpilih sebagai wakil distrik pada turnamen tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3742_daerah, 'その地区の住民は、みんな地区の行事に協力的です。', 'Warga di distrik tersebut semuanya kooperatif dalam hal acara di distrik tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3743_hanya, '単にラッキーだっただけですよ。', 'Itu murni keberuntungan, itu saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3743_hanya, '単にフラれただけですよ。', 'Saya baru saja dicampakkan, polos dan sederhana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3743_hanya, '彼は単に勉強ができるだけでなく、スポーツや音楽にも才能があります。', 'Ia tidak hanya unggul di bidang akademik namun ia juga memiliki bakat di bidang olah raga dan musik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3744_kata, '日本語の単語学習には、ワニカニがいいですよ。', 'WaniKani bagus untuk mempelajari kosakata bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3744_kata, 'その単語、初めて聞いたかも。どういう意味？', 'Mungkin saya baru pertama kali mendengar kata itu. Apa maksudnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3744_kata, 'テストにもよく出てくる「まぎらわしい英単語」をまとめました。', 'Saya menyusun daftar "kata-kata bahasa Inggris yang membingungkan" yang sering muncul dalam ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3745_bos, '彼は私の上司です。', 'Dia adalah bos saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3745_bos, '今日は上司とのミーティングがあります。', 'Saya ada pertemuan dengan bos saya hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3745_bos, 'まずは上司にアドバイスを聞いてみるのはどうですか。', 'Bagaimana kalau meminta nasihat atasan Anda terlebih dahulu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3746_lereng, 'その寺なら、この坂を上ったところにありますよ。', 'Kuil itu berdiri di puncak bukit ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3746_lereng, 'ビエトは自転車でゆるやかな坂を下るのが好きです。', 'Viet suka menuruni lereng yang landai dengan sepedanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3746_lereng, 'その坂はランニングのトレーニングにピッタリです。', 'Kemiringannya sempurna untuk latihan lari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3747_aneh, 'それってちょっと変じゃない？', 'Bukankah itu agak tidak biasa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3747_aneh, 'なんかあそこに変な人がいる。', 'Ada seseorang yang aneh di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3747_aneh, '変だなぁ。僕のメールボックスには、君が送ったと言っているメールがどこにも見当たらないよ。', 'Itu aneh. Saya tidak dapat menemukan email yang Anda kirimkan kepada saya di mana pun di kotak surat saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3748_eksentrik, 'この町には変人が多いらしい。', 'Kudengar ada banyak orang aneh di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3748_eksentrik, '変人だと思われがちだけど、彼は天才だ。', 'Orang mengira dia aneh, padahal dia jenius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3748_eksentrik, 'あのアーティストは変人で有名だが、彼女のアートは本当にすごい。', 'Seniman itu terkenal eksentrik, tapi karya seninya sungguh menakjubkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3749_mengubah, '時間とともに気持ちが変化することは自然なことです。', 'Wajar jika perasaan berubah seiring berjalannya waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3749_mengubah, 'テクノロジーの進歩により、交通システムも大きく変化しています。', 'Kemajuan teknologi juga mengubah sistem transportasi secara dramatis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3749_mengubah, '変化がなければ、何も生まれません。変化により、新しいビジネスチャンスが生まれるんです。', 'Tanpa perubahan, tidak ada yang tercipta. Perubahan menciptakan peluang bisnis baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3750_kematian_tidak_wajar, 'やば！「返信ください」がタイプミスでオートコレクトされて「変死してください」になってた。', 'Astaga! "Tolong balas" salah ketik dan dikoreksi otomatis menjadi "Tolong mati secara tidak wajar."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3750_kematian_tidak_wajar, '今朝、社長が車で変死しているのが見つかったんだって！', 'Pagi ini, mereka menemukan presiden tewas di mobilnya dalam keadaan yang tidak wajar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3750_kematian_tidak_wajar, 'あそこの山でエイリアンの変死体が発見されたというウワサがあります。', 'Ada rumor yang mengatakan bahwa ada mayat alien yang ditemukan di pegunungan sebelah sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3751_serius, 'えー、めっちゃ大変だったんだね！', 'Oh, itu sungguh sulit, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3751_serius, '皆様には、大変心配をおかけいたしました。', 'Saya minta maaf karena membuat Anda semua begitu khawatir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3751_serius, '日本語をマスターするのは大変ですが、がんばってくださいね。', 'Menguasai bahasa Jepang itu sulit, tapi lakukan yang terbaik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3752_insiden, '上海事変は何年に起こりましたか。', 'Tahun berapa Insiden Shanghai terjadi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3752_insiden, '私は東京事変というバンドが好きです。', 'Saya suka band bernama Tokyo Jihen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3752_insiden, 'この事変は、中国では九一八事変として知られています。', 'Peristiwa ini dikenal dengan nama Insiden Mukden di Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3753_suami, '夫はスポーツが好きです。', 'Suamiku suka olahraga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3753_suami, '夫に聞いてみます。', 'Aku akan bertanya pada suamiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3753_suami, '私の夫の歯は、とても丈夫です。', 'Suami saya memiliki gigi yang sangat sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3754_batu_besar, 'そこには大きな岩がたくさんあります。', 'Ada banyak batu-batu besar di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3754_batu_besar, 'あの岩の上でサンドイッチを食べました。', 'Saya makan sandwich di batu itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3754_batu_besar, 'その岩、めっちゃツルツルしてるから気をつけて。', 'Hati-hati dengan batu itu, sangat licin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3755_untuk_kembali_ke_rumah, '今日は七時には帰るよ。', 'Aku akan pulang jam tujuh hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3755_untuk_kembali_ke_rumah, '昨日は車で家に帰りました。', 'Saya berkendara pulang kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3755_untuk_kembali_ke_rumah, 'え、サラ、日本から帰ってきてるの？会いたい！', 'Oh, apakah Sarah kembali dari Jepang? Saya ingin melihatnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3758_upacara, 'いったい式場はどこなんだ？', 'Dimana sih upacaranya diadakan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3758_upacara, '開会式は九時にスタートする予定です。', 'Upacara pembukaan dijadwalkan pada jam 9 pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3758_upacara, 'この計算の式、なんかちょっとおかしくない？', 'Apakah ada yang sedikit salah dengan rumus perhitungan ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3759_musim_semi, '鳥のさえずりに、春の気配を感じました。', 'Aku merasakan datangnya musim semi dalam kicauan burung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3759_musim_semi, '二人で、色とりどりの春の花の中を歩きました。', 'Kami berdua berjalan di antara bunga musim semi yang berwarna-warni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3759_musim_semi, 'あーあ、早く春にならないかな。寒い冬は苦手なんだよね。', 'Ah, kuharap musim semi akan segera datang. Aku tidak pandai menghadapi musim dingin yang dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3760_liburan_musim_semi, '春休みには家族で日本に行く予定です。', 'Kami berencana pergi ke Jepang bersama keluarga selama liburan musim semi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3760_liburan_musim_semi, '春休み中に本をたくさん読むつもりです。', 'Saya berencana membaca banyak buku selama liburan musim semi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3760_liburan_musim_semi, '春休みの間は、僕はずっとバイトをしてました。', 'Saya bekerja paruh waktu sepanjang liburan musim semi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3761_hari_hari_ini, '昨今は、SNS中毒の人が多くなっています。', 'Saat ini, banyak orang yang kecanduan media sosial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3761_hari_hari_ini, '今日は昨今の社会の変化についてみんなで語り合いましょう。', 'Mari kita berdiskusi bersama mengenai perubahan yang terjadi di masyarakat saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3761_hari_hari_ini, 'それは女性の社会進出が進んでいる昨今ならではの問題ですよね。', 'Itu adalah masalah yang unik saat ini, seiring dengan kemajuan perempuan dalam masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3762_kemarin, '昨日はジムに行きました。', 'Saya pergi ke gym kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3762_kemarin, '昨日は、夜中から朝まで、ずっとカラオケしてました。', 'Kemarin, saya bernyanyi karaoke sepanjang malam hingga pagi hari');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3762_kemarin, '昨日の日本代表の試合、すごかったね！見た？', 'Laga timnas Jepang kemarin sungguh luar biasa ya? Apakah kamu menontonnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3763_siang, '今日の昼、あそこの定食屋でランチしない？', 'Mengapa kita tidak makan siang bersama di restoran itu saat istirahat makan siang hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3763_siang, '目ざまし時計が鳴らなくて、起きたらすでに昼だった。', 'Alarmku tidak berbunyi dan hari sudah siang ketika aku bangun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3763_siang, '昼休みの終わりには、必ずコーヒーを飲むようにしています。', 'Saya selalu memastikan untuk minum kopi di akhir istirahat makan siang saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3764_malam, 'あの晩、何があったんだ？', 'Apa yang terjadi malam itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3764_malam, '三日前の晩から熱があるんです。', 'Saya demam sejak tiga malam yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3764_malam, '昨日の晩はフグの毒にあたって死ぬところでした。', 'Tadi malam, saya hampir mati karena racun ikan buntal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3765_selamat_malam, '今晩は。こんな所で何してるの？', 'Selamat malam. Apa yang kamu lakukan di tempat seperti ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3765_selamat_malam, '「あ、今晩は。」「今晩は。昨日の社長とのミーティング、どうだった？」', '"Oh, hei, selamat malam." "Selamat malam. Bagaimana pertemuan dengan presiden kemarin?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3765_selamat_malam, '今晩は家でゆっくり映画でも見るつもりです。', 'Malam ini, saya berencana untuk bersantai di rumah dan menonton film.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3766_setiap_malam, '彼は毎晩ジョギングをしてから夕食を食べます。', 'Dia pergi jogging setiap malam sebelum makan malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3766_setiap_malam, '私たちは毎晩リビングでテレビを見ながらくつろぎます。', 'Kami bersantai setiap malam di ruang tamu sambil menonton TV.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3766_setiap_malam, 'もちろん、皆さんは毎晩ワニカニをしていますよね？', 'Tentu saja semua orang melakukan WaniKani setiap malam, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3767_untuk_menjernihkan, '明日、晴れるといいな。', 'Saya berharap besok akan cerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3767_untuk_menjernihkan, '昨日はよく晴れて良かったですね。', 'Untunglah kemarin cuacanya sangat cerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3767_untuk_menjernihkan, '天気が晴れると、気分も晴れますね。', 'Saat cuaca cerah, mood kamu juga cerah kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3768_racun, '働きすぎは体に毒ですよ。', 'Bekerja terlalu banyak berbahaya bagi tubuh Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3768_racun, 'すごい！毒リンゴみたいな赤さのリンゴだね。', 'Wow! Apel ini sangat merah sehingga terlihat seperti apel beracun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3768_racun, 'そのクモには毒があるから気をつけて！', 'Laba-laba itu berbisa, jadi hati-hati!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3768_racun, 'トーフグ社員のデスクの引き出しには、いつもフグの毒が入ったビンがあるって本当ですか？', 'Benarkah selalu ada sebotol racun fugu di laci meja pegawai Tofugu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3769_peracunan, '彼は食物中毒により入院することになりました。', 'Dia akhirnya dirawat di rumah sakit karena keracunan makanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3769_peracunan, 'ガス中毒にならないよう気を付けてくださいね。', 'Hati-hati jangan sampai keracunan gas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3769_peracunan, '彼女は薬物中毒のリハビリ中です。', 'Dia sedang menjalani rehabilitasi karena kecanduan narkoba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3770_beracun, 'ガラガラヘビって有毒なんですか？', 'Apakah ular derik itu berbisa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3770_beracun, 'これ、タバコより有毒なんだよ。知らないの？', 'Ini lebih beracun daripada tembakau, lho? Apakah kamu tidak tahu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3770_beracun, 'どうやら有毒なガスが発生しているようです。', 'Tampaknya gas beracun sedang dikeluarkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3771_keracunan_makanan, '食中毒で会社を休んでしまいました。', 'Saya bolos kerja karena keracunan makanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3771_keracunan_makanan, 'あのレストランで食中毒が起きたそうです。', 'Rupanya keracunan makanan telah terjadi di restoran itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3771_keracunan_makanan, 'ドキュメンタリーで食中毒のリスクがあるのを知ってから、生のレタスは食べないようにしてるんです。', 'Sejak saya mengetahui tentang risiko keracunan makanan di film dokumenter, saya menghindari makan selada mentah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3772_gas_beracun, '彼のオナラはいつも毒ガスのようにくさい。', 'Kentutnya selalu berbau seperti gas beracun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3772_gas_beracun, '毒ガスまかれるかもしれないんで、マスクをつけてるんです。', 'Saya memakai masker karena gas beracun mungkin keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3772_gas_beracun, '毒ガスは第一次世界大戦で使われ始めたらしいです。', 'Saya membaca bahwa gas beracun pertama kali digunakan pada Perang Dunia I.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3773_metode, 'へー、色々な方法があるんですね。', 'Wah, caranya bermacam-macam ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3773_metode, 'こんな方法があるなんて、思ってもみなかったです。', 'Saya tidak pernah menyangka akan ada metode seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3773_metode, 'シンプルな方法なんで、良かったらやってみてください。', 'Caranya sederhana, jadi jika Anda tertarik, silakan mencobanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3774_tata_bahasa, '日本語の文法の本をさがしています。', 'Saya mencari buku tata bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3774_tata_bahasa, '文法を学べば学ぶほど、文章をかくのが上手になりますよ。', 'Semakin banyak tata bahasa yang Anda pelajari, semakin baik tulisan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3774_tata_bahasa, '今日の午後は明日の文法のテストに向けて勉強をする予定です。', 'Sore ini, saya berencana belajar untuk ujian tata bahasa besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3775_liar, 'それって不法コピーじゃないの？', 'Bukankah itu salinan ilegal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3775_liar, 'その人、不法なビジネスをやってるってウワサなんで、近づかない方がいいですよ。', 'Ada rumor bahwa orang tersebut terlibat dalam bisnis ilegal, jadi lebih baik menjauhinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3775_liar, 'その男は、マシンガンやドラッグを不法に売買しようとしていました。', 'Pria itu mencoba membeli dan menjual senapan mesin dan obat-obatan secara ilegal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3776_menangis, 'そんなことで泣くなよ。', 'Jangan menangisi hal seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3776_menangis, 'ヤバイ。うれしすぎて、泣きそう。', 'Aduh. Aku sangat senang hingga aku hampir menangis!!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3776_menangis, 'クビになっちゃって泣いてます。早く次の会社、見つけなきゃ。', 'Saya dipecat dan saya menangis. Saya perlu mencari perusahaan lain dengan cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3777_dangkal, '小さい子用の浅いプールもありますよ。', 'Ada juga kolam dangkal untuk anak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3777_dangkal, 'この川は浅いところと深いところがあるから、気をつけてね。', 'Sungai ini memiliki daerah yang dangkal dan dalam, jadi berhati-hatilah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3777_dangkal, '考えの浅い人間にはなりたくありません。', 'Saya tidak ingin menjadi orang yang berpikiran dangkal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3778_kucing, 'とてもかわいい猫ちゃんですね。', 'Dia adalah kucing yang sangat lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3778_kucing, 'この猫は人なつっこい性格です。', 'Kucing ini mempunyai kepribadian yang ramah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3778_kucing, '猫も家族の一員です。', 'Kucing juga merupakan bagian dari keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3779_anak_kucing, 'この子猫はまだおねしょをします。', 'Anak kucing ini masih mengalami kecelakaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3779_anak_kucing, '子猫が時計回りにクルクル歩き回っている動画をYoutubeにアップロードしました。', 'Saya mengunggah video ke Youtube tentang seekor kucing yang berjalan searah jarum jam, berputar-putar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3779_anak_kucing, '今日、かわいい子猫を三匹拾いました。', 'Saya menemukan dan membawa pulang tiga anak kucing lucu hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3780_musim_gugur, '今日は秋っぽいファッションだね。', 'Mode saat ini sangat musim gugur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3780_musim_gugur, '秋の夜は星がきれいです。', 'Malam musim gugur memiliki bintang-bintang yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3780_musim_gugur, '秋になり木々が色づいても、君からの返事はまだ来なかった。', 'Meskipun saat itu musim gugur dan pepohonan berubah warna, aku tetap tidak menerima balasan darimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3782_abad, '「今って何世紀だっけ？」「二十一世紀だよ。」', '“Sekarang abad berapa?” “Ini abad ke-21.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3782_abad, 'コウイチは少なくとも一世紀は生きたいと思っている。', 'Koichi ingin hidup setidaknya satu abad.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3782_abad, '今世紀にはAIやロボットの進歩が注目されています。', 'Kemajuan dalam kecerdasan buatan dan robotika sedang diawasi dengan ketat pada abad ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3783_era_umum, '紀元後64年にローマで大火事が発生したのを知っていますか？', 'Tahukah Anda bahwa pada tahun 64 M terjadi kebakaran besar di Roma?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3783_era_umum, 'パピルスは紀元後10世紀ぐらいまで使われていた。', 'Papirus digunakan sampai sekitar abad ke-10 M.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3783_era_umum, 'え、こないだ会った時より日本語めっちゃ上手になってない？紀元前と紀元後くらいちがうじゃん。', 'Oh, bahasa Jepangmu jauh lebih baik dibandingkan terakhir kali kita bertemu, bukan? Ini seperti dua era yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3784_bahasa_inggris, '私は英語を勉強しています。', 'Saya belajar bahasa Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3784_bahasa_inggris, '彼女は英語がペラペラです。', 'Dia berbicara bahasa Inggris dengan lancar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3784_bahasa_inggris, 'あなたの英語の発音はとても良いですね。', 'Pengucapan bahasa Inggris Anda sangat bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3785_percakapan_bahasa_inggris, '私の兄は、英会話は上手だけど、計算は苦手なんです。', 'Kakak laki-laki saya pandai percakapan bahasa Inggris, tapi buruk dalam perhitungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3785_percakapan_bahasa_inggris, 'まさか。また英会話のテストに落ちちゃったよ。ショックすぎる。', 'Oh tidak, saya tidak percaya saya gagal lagi dalam tes percakapan bahasa Inggris. Saya sangat terkejut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3785_percakapan_bahasa_inggris, '私は英会話教室でビジネス英語を教えています。', 'Saya mengajar bahasa Inggris bisnis di sekolah percakapan bahasa Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3786_penulisan_bahasa_inggris, '彼女の英文は分かりやすくて読みやすいです。', 'Tulisan bahasa Inggrisnya mudah dipahami dan dibaca.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3786_penulisan_bahasa_inggris, '月末までに英文でレポートを仕上げなくてはいけません。', 'Saya harus menyelesaikan laporan saya dalam bahasa Inggris pada akhir bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3786_penulisan_bahasa_inggris, 'うちの子は、英文の作文コンテストで賞を受賞しました。', 'Anak saya memenangkan penghargaan dalam kontes esai bahasa Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3787_britania, '彼は英国出身です。', 'Dia berasal dari Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3787_britania, '私は英国の大学で英文学を学んでいます。', 'Saya sedang belajar Sastra Inggris di sebuah universitas di Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3787_britania, '英国は今日も雨です。', 'Hari ini hujan lagi turun di Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3788_bahasa_inggris_jepang, 'これ、英和だっけ？', 'Ini bahasa Inggris-Jepang, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3788_bahasa_inggris_jepang, 'ゲ、英和だと思って買ったら、和英だった！', 'Oh tidak, saya kira itu bahasa Inggris-Jepang, tapi ternyata bahasa Jepang-ke-Inggris!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3788_bahasa_inggris_jepang, '彼女は英和女学院に通っています。', 'Dia bersekolah di Akademi Wanita Inggris-Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3789_jam_tangan, 'うちの社長の時計はロレックスです。', 'Presiden perusahaan saya memakai jam tangan Rolex.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3789_jam_tangan, '時計台の下で、三時に待ち合わせね！', 'Kita akan bertemu di menara jam jam 3 sore, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3789_jam_tangan, 'この時計の音、うるさくない？気になって集中できない。', 'Bukankah suara jam ini nyaring? Itu mengganggu konsentrasiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3790_total, '合計で三千円になります。', 'Totalnya adalah tiga ribu yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3790_total, '1から10までの数字の合計は55です。', 'Jumlah bilangan dari satu sampai sepuluh adalah lima puluh lima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3790_total, '今日のイベントに来た人の人数を合計すると、予想以上の人数でした。', 'Jika kami menjumlahkan jumlah orang yang datang ke acara hari ini, ternyata lebih dari yang kami perkirakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3791_rencana, '夏休みに海に行こうと計画しています。', 'Kami berencana pergi ke pantai selama liburan musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3791_rencana, '計画を立てるのは大好きなんですけど、計画したことを実行するのはきらいなんです。', 'Aku suka membuat rencana, tapi aku tidak suka melaksanakan apa yang sudah aku rencanakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3791_rencana, 'この計画にはリスクがありますが、成功すれば大きいです。', 'Rencana ini mengandung risiko, namun jika berhasil, manfaatnya besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3792_perhitungan, '彼は計算が速いです。', 'Dia cepat dalam perhitungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3792_perhitungan, 'この計算、合ってる？', 'Apakah perhitungan ini benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3792_perhitungan, 'あの女は計算高いことで有名です。', 'Wanita itu terkenal penuh perhitungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3793_tentara, 'うちの父は元軍人です。', 'Ayah saya adalah mantan tentara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3793_tentara, '見て、あそこに軍人さんがたくさんいる。どうしたんだろう？', 'Lihat, ada banyak prajurit di sana. Aku ingin tahu apa yang terjadi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3793_tentara, 'その戦争では、50万人以上の軍人が命を落としました。', 'Dalam perang tersebut, lebih dari 500.000 prajurit kehilangan nyawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3794_angkatan_laut, '僕のおじいちゃんは、海軍の軍人だったそうです。', 'Saya mendengar bahwa kakek saya adalah seorang pelaut di Angkatan Laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3794_angkatan_laut, 'これは、第二次世界大戦の時に、イギリスの海軍が使っていたものです。', 'Ini adalah sesuatu yang digunakan oleh Angkatan Laut Inggris selama Perang Dunia II.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3794_angkatan_laut, '日本の海軍は、週に一度カレーを食べていました。このカレーは、今では「海軍カレー」としてレトルトでも売られています。', 'Angkatan Laut Jepang biasa makan kari seminggu sekali. Kari ini sekarang dijual dengan nama "Kari Angkatan Laut" bahkan dalam kantong retort.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3795_makanan, '今度、飯でも行かない？', 'Bagaimana kalau kita pergi makan kapan-kapan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3795_makanan, 'ねー、飯まだ？ハラペコなんだけど。', 'Hei, masih belum ada makanan? saya kelaparan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3795_makanan, 'この社員は三度の飯より仕事をするのが好きです。', 'Karyawan ini lebih memilih bekerja daripada makan tiga kali sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3796_makanan, 'お昼はいつも外でご飯を食べます', 'Saya selalu makan di luar untuk makan siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3796_makanan, 'しまった！ご飯こぼしちゃった。', 'Brengsek! Aku baru saja menumpahkan nasiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3796_makanan, '今日の夜ご飯は何を作ろうかな。', 'Aku ingin tahu apa yang harus dibuat untuk makan malam malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3893_kikuk, '彼は不器用で、新しいことを学ぶのが苦手です。', 'Dia canggung dan kesulitan mempelajari hal-hal baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3893_kikuk, '不器用ながらも、彼女は決してあきらめませんでした。', 'Meski canggung, dia tidak pernah menyerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3893_kikuk, '彼は不器用な言葉で、親に感謝の気持ちを伝えました。', 'Dengan kata-kata janggal, ia mengungkapkan rasa terima kasihnya kepada orang tuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3894_sebuah_permintaan, 'お願い！手伝って！', 'Silakan! Bantu aku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3894_sebuah_permintaan, 'ちょっとお願いがあるんだけど、聞いてもらえる？', 'Ada yang ingin kutanyakan padamu, maukah kamu mendengarkanku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3894_sebuah_permintaan, 'お願いだから、その話はもうやめて。', 'Tolong, mari kita berhenti membicarakan hal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3895_minum_sepuasnya, 'このレストランは飲み放題があるみたいだよ。', 'Sepertinya restoran ini memiliki pilihan minuman sepuasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3895_minum_sepuasnya, '飲み放題プランは2000円からです。', 'Paket minuman sepuasnya mulai dari 2.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3895_minum_sepuasnya, '飲み放題付きのコースを予約しました。', 'Kami memesan kursus yang mencakup minuman sepuasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3896_makan_sepuasnya, 'このホテルの朝食は食べ放題です。', 'Sarapan hotel ini adalah makan sepuasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3896_makan_sepuasnya, '食べ放題のピザ屋に行こう。', 'Ayo pergi ke tempat pizza makan sepuasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3896_makan_sepuasnya, '日本にはケーキ食べ放題のカフェがあります。', 'Di Jepang, ada kafe yang menawarkan kue sepuasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3898_pembunuhan, 'その男は人殺しです。', 'Pria itu adalah seorang pembunuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3898_pembunuhan, '自分の子を戦場に送り出して、人殺しをさせたい人なんていませんよ。', 'Tidak ada seorang pun yang mau mengirim anaknya sendiri ke medan perang untuk menjadi seorang pembunuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3898_pembunuhan, 'SNSで悪口を言ってる人は全員、自分が人殺しをしているかもしれないってことを考えた方がいいよ。', 'Orang yang menjelek-jelekkan orang lain di media sosial harus mempertimbangkan bahwa mereka mungkin melakukan pembunuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3899_pembunuh, 'この殺人者は、有名なシリアルキラーです。', 'Pembunuh ini adalah pembunuh berantai yang terkenal kejam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3899_pembunuh, '信じてください。息子は誰かに殺人者に仕立て上げられただけなんです。', 'Percayalah, anak saya baru saja dijebak sebagai pembunuh oleh seseorang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3899_pembunuh, 'あなたは家族が殺人者だった人の苦しみについて、考えたことはありますか？', 'Pernahkah Anda memikirkan kepedihan seseorang yang anggota keluarganya adalah seorang pembunuh?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3900_cincin, 'その指輪は彼女の指にぴったり合っていました。', 'Cincin itu sangat pas di jarinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3900_cincin, '指輪が指から外れなくなってしまいました。', 'Aku tidak bisa melepaskan cincin ini dari jariku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3900_cincin, '「ボーナスが出たら、ダイヤモンドの指輪を買ってやるよ。」「あなたはいつも口先ばかりでしょ。」', '"Saat aku mendapat bonus, aku akan membelikanmu cincin berlian." “Kamu selalu mengatakan itu, tapi kata-kata hanyalah kata-kata.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3901_gelang_karet, 'この輪ゴムはとても丈夫です。', 'Pita elastis ini sangat tahan lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3901_gelang_karet, '彼女はヘアゴムの代わりに輪ゴムを使いました。', 'Dia menggunakan karet gelang sebagai pengganti ikat rambut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3901_gelang_karet, '輪ゴムなら、あのデスクの上に何本かあるはずですよ。', 'Jika yang Anda cari adalah karet gelang, pasti ada beberapa di meja itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3904_untuk_menghafal, 'え、これ全部暗記するの？', 'Oh, apakah kamu harus menghafal semua ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3904_untuk_menghafal, 'ワニカニを使えば、日本語の単語を楽に暗記することができます。', 'Dengan menggunakan WaniKani, Anda dapat dengan mudah menghafal kosakata bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3904_untuk_menghafal, '明日までに、台本のセリフを暗記しなければいけないんです。', 'Saya harus menghafal dialog saya dari naskah besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3905_untuk_berlatih, 'どこで練習するの？', 'Di mana kamu akan berlatih?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3905_untuk_berlatih, '後から「もっとたくさん練習しておけば良かった」と思いたくないんで、今たくさん練習しています。', 'Saya tidak ingin menyesalinya nanti dengan berpikir "Saya seharusnya berlatih lebih banyak," jadi saya banyak berlatih sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3905_untuk_berlatih, '昨日、肉って言葉の発音を六時間も練習したんだぜ。', 'Saya berlatih mengucapkan kata "daging" selama enam jam kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3928_gagal_dalam_ujian, 'カンニングしたのがバレて不合格になってしまった。', 'Mereka mengetahui bahwa saya curang dan akhirnya gagal dalam ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3928_gagal_dalam_ujian, 'みんな合格したのに、私だけ不合格でした。', 'Semua orang lulus, tapi hanya saya yang gagal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3928_gagal_dalam_ujian, 'もしよければ、不合格になった理由を教えてもらえませんか？', 'Jika Anda tidak keberatan, bisakah Anda memberi tahu saya alasan saya tidak diterima?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3928_gagal_dalam_ujian, '本命の公立大学は不合格だったが、すべり止めで受けた私立大学に合格しました。', 'Saya tidak diterima di universitas negeri pilihan pertama saya, tetapi saya masuk ke universitas swasta yang saya lamar sebagai alasan keamanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3932_insiden_tak_terduga, 'その年に、変事が起きたんです。', 'Sebuah kejadian yang tidak biasa terjadi tahun itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3932_insiden_tak_terduga, '変事が発生した場合のシミュレーションをしておくべきだと思います。', 'Saya pikir kita harus melakukan simulasi apa yang harus dilakukan jika terjadi sesuatu yang aneh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3932_insiden_tak_terduga, 'トーフグに何か変事が起きたんじゃないかと、全ワニカニユーザーが心配していたんですよ。', 'Seluruh pengguna WaniKani khawatir ada kejadian tidak biasa yang menimpa Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3942_sinkronisasi, 'ごめん、今データ同期中だからちょっと待って。', 'Maaf, saya sedang menyinkronkan data, jadi harap tunggu sebentar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3942_sinkronisasi, 'Dropbox、いつも同期中にフリーズしちゃうんだよね。何でだろう。', 'Dropbox selalu macet saat sinkronisasi karena alasan tertentu. Kenapa ya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3942_sinkronisasi, '昨日はGoogleドライブがずっと同期中で午前中仕事にならなかった。', 'Kemarin, saya tidak bisa menyelesaikan pekerjaan apa pun di pagi hari karena Google Drive terus melakukan sinkronisasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3943_kuil, 'その町には古い寺があります。', 'Ada sebuah kuil tua di kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3943_kuil, 'お正月にお寺でおみくじを引いてみるつもりです。', 'Saya berencana menggambar slip keberuntungan di kuil selama Tahun Baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3943_kuil, 'その寺の入り口には、サクラの木が一本立っていました。', 'Ada pohon sakura berdiri di pintu masuk kuil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4218_menjadi_proporsional, 'それに比例して、コストも上がります。', 'Biaya juga akan meningkat secara proporsional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4218_menjadi_proporsional, 'これがyの大きさに比例するのは分かりますか？', 'Apakah Anda melihat bagaimana hal ini sebanding dengan nilai y?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4218_menjadi_proporsional, 'ボクは、仕事の大変さと楽しさは比例すると思うんだ。', 'Saya pikir kenikmatan yang saya peroleh dari pekerjaan sebanding dengan betapa sulitnya itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4218_menjadi_proporsional, '外国語能力は、学習時間に比例して高くなるというワケではない。', 'Kemahiran bahasa asing tidak serta merta meningkat sebanding dengan jumlah waktu yang dihabiskan untuk belajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4464_untuk_dipecahkan, 'もしここにマリアがいたら、こんな数学の問題五秒で解けちゃうよ。マリアにとってはちょちょいのちょいだね。', 'Jika Maria ada di sini, soal matematika ini akan terselesaikan dalam waktu lima detik. Itu sangat mudah untuknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4464_untuk_dipecahkan, 'そのナゾナゾ、めっちゃむずかしいよ！一時間かかってやっと解けた。', 'Teka-teki itu sangat sulit! Butuh waktu satu jam untuk akhirnya diselesaikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4464_untuk_dipecahkan, '早くナゾが解けるといいんだけど。', 'Saya harap misteri ini akan segera terpecahkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5501_lezat, 'この料理はとても美味しいです。', 'Hidangan ini sangat lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5501_lezat, 'そのベーカリーのクロワッサンは、とても美味しかったです。', 'Croissant dari toko roti itu enak sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5501_lezat, '正直、この会社のこのチームで働けるのはかなり美味しいです。', 'Sejujurnya, bekerja dengan tim di perusahaan ini cukup beruntung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5715_memahami, '了解しました。', 'Dipahami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5715_memahami, '了解！今すぐそっちに向かうよ。', 'Mengerti! Aku akan menuju ke sana sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5715_memahami, '了解です。明日ゆっくり話し合いましょう。', 'Dipahami. Mari luangkan waktu untuk membahasnya besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5715_memahami, 'うちのオフィスには、マミのベーコンを勝手に食べてはいけないという暗黙の了解がある。', 'Di kantor kami, ada pemahaman diam-diam bahwa kami tidak boleh makan daging Mami tanpa izinnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5927_untuk_membayar, 'あ、いいよ。オレが払うよ。', 'Oh, tidak apa-apa. Saya akan membayarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5927_untuk_membayar, 'ここは私が代わりに払っておきます！', 'Saya akan membayar atas nama Anda untuk saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5927_untuk_membayar, '女王は、サッとホコリを払って、イスに座った。', 'Ratu segera membersihkan kursinya dan duduk di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5927_untuk_membayar, 'メールを送る前に、文法やスペルミスに注意を払いましょう。', 'Sebelum mengirim email, perhatikan kesalahan tata bahasa dan ejaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5983_untuk_mengubah_sesuatu, '大人になると、考え方を変えることはむずかしいです。', 'Ketika Anda beranjak dewasa, sulit mengubah cara berpikir Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5983_untuk_mengubah_sesuatu, '彼女は部屋のインテリアを変えて、気分を変えました。', 'Dia mengubah interior ruangan untuk mengubah suasana hatinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5983_untuk_mengubah_sesuatu, 'あっ、トーフグのくちびるの形は変えないでください。それはコウイチの好物のタラコをモチーフにしているんです。', 'Oh, tolong jangan ubah bentuk bibir Tofugu. Mereka terinspirasi dari makanan favorit Koichi, telur ikan cod.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6809_penghitung_hewan_kecil, '男は、三匹のネズミに向かって大声を上げた。', 'Pria itu berteriak pada ketiga tikus itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6809_penghitung_hewan_kecil, '一体、女王様のペットのヘビは何匹いるんだ？', 'Berapa banyak ular peliharaan yang dimiliki ratu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6809_penghitung_hewan_kecil, '大きい方の犬はガレージにいて、もう一匹は室内にいるよ。', 'Kami memelihara anjing yang lebih besar di garasi dan yang lainnya di rumah kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6810_empat_hewan_kecil, '東京タワーの上に、四匹のドラゴンが止まっていた。', 'Ada empat naga di Menara Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6810_empat_hewan_kecil, 'マチルダさんの家には、黒猫が四匹もいる。', 'Ada empat kucing hitam di rumah Matilda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6810_empat_hewan_kecil, 'ここにいるコオロギ、四匹ずつください。', 'Saya ingin empat dari masing-masing jangkrik ini di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7277_kokoh, '息子はあまり体が丈夫ではなく、よく病気になります。', 'Anak saya tidak terlalu sehat dan dia sering sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7277_kokoh, 'このイスはとても丈夫なので、力士にもピッタリです。', 'Kursi ini sangat kokoh sehingga cocok bahkan untuk pegulat sumo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7277_kokoh, '毎日しっかりデンタルケアをしてくださいね！丈夫な歯は一生の宝物ですよ。', 'Pastikan untuk melakukan perawatan gigi yang benar setiap hari! Gigi yang kuat adalah harta seumur hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7278_tinggi, 'ユニクロで、七分丈のパンツを買いました。', 'Saya membeli celana panjang tiga perempat di UNIQLO.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7278_tinggi, 'そのズボン、ちょっと丈が短いんじゃない？', 'Bukankah panjang celana itu agak pendek?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7278_tinggi, '今年は、女子高生の間でスカートの丈を長くするのが流行っています。', 'Tren di kalangan siswi SMA tahun ini adalah memakai rok yang lebih panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7280_padat, '土台はできるだけ頑丈にしておいた方がいいですよ。', 'Anda harus membuat fondasi sekuat mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7280_padat, 'この車はとても頑丈にできています。', 'Mobil ini dibuat dengan kokoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7280_padat, 'メガネ屋さんで、とても頑丈なメガネを作ってもらいました。', 'Saya memiliki kacamata yang sangat bagus yang dibuat oleh ahli kacamata saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, 'テストを最後に見返すクセをつけた方がいいですよ。', 'Merupakan ide bagus untuk mengembangkan kebiasaan meninjau tes setelahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, '子猫にイワシをあげたら、「本当にいいの？」って感じの顔でマジマジと見返してきたのがマジかわいかった。', 'Saat aku memberi anak kucing itu sarden, dia kembali menatapku dengan wajah yang berkata, "Apakah ini benar-benar untukku?!" dan itu sangat lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, 'トーフグの社長になって、コウイチを見返してやるぞ！', 'Saya akan menjadi presiden Tofugu dan menunjukkan kepada Koichi, yang meremehkan saya, apa yang bisa saya lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7542_tentara, '彼は軍に入ることを決心した。', 'Dia memutuskan untuk bergabung dengan militer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7542_tentara, 'その国は軍を強化しているようだ。', 'Negara itu sepertinya sedang memperkuat militernya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7542_tentara, 'どう、軍の生活は？トレーニングはやっぱり大変？', 'Bagaimana kehidupan di militer? Apakah latihannya sulit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7543_garis, 'チケットを買うために列にならびました。', 'Saya mengantri untuk membeli tiket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7543_garis, 'そのレジの前には長い列ができていました。', 'Antrean panjang terbentuk di depan mesin kasir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7543_garis, 'え、テイラースイフトのコンサート、前から二列目だったんですか？', 'Apa? Apakah Anda berada di baris kedua saat konser Taylor Swift?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7544_perantara, 'いい伝があれば良かったんだけどね。', 'Akan sangat bagus jika saya memiliki koneksi yang bagus, tapi oh baiklah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7544_perantara, 'ザッカーバーグをインタビューするための伝をさがしています。', 'Saya mencari koneksi untuk mewawancarai Zuckerberg.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7544_perantara, 'トーフグには誰の伝で入社したの？', 'Melalui rujukan siapa Anda dipekerjakan oleh Tofugu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7640_menderita, '今日もまたプレゼンでうまく話せなかったので、自分のことを情けないなと思いました。', 'Saya merasa sedih lagi hari ini karena saya tidak bisa berbicara dengan baik selama presentasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7640_menderita, '彼はその時、とても情けなさそうにしていました。', 'Saat itu, dia terlihat sangat menyedihkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7640_menderita, '情けないんですが、すぐに人を信じる性格なので、よくだまされるんです。', 'Sedih memang, tapi saya mempunyai sifat yang sangat percaya, sehingga saya sering ditipu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7697_untuk_menembak, 'あの選手はすごいホームランを放つらしいですよ。', 'Saya mendengar pemain itu benar-benar melakukan home run.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7697_untuk_menembak, 'この鳥をいつかカゴから放つつもりですか。', 'Apakah Anda berniat melepaskan burung ini dari sangkarnya suatu saat nanti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7697_untuk_menembak, 'SNSに放つ言葉は、ちゃんと選んだ方が良いですよ。', 'Anda harus berhati-hati saat memilih kata-kata yang Anda keluarkan di media sosial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7754_untuk_mengatur, 'ビエトは、ヒゲを整えるのが上手です。', 'Viet pandai merawat janggutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7754_untuk_mengatur, '私は心を整えるために、毎朝メディテーションとマインドフルネスをしています。', 'Saya berlatih meditasi dan perhatian setiap pagi untuk memusatkan pikiran saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7754_untuk_mengatur, 'ホルモンバランスを整えるために、運動したり、食事のバランスに気をつけたりしています。', 'Saya berolahraga dan menjaga pola makan untuk menyeimbangkan hormon saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8670_istirahat_makan_siang, '大変だ！あと五分で昼休みだ。', 'Ya ampun! Istirahat makan siang lima menit lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8670_istirahat_makan_siang, '昼休みにはいつも外でランチを食べます。', 'Saya selalu makan siang di luar saat istirahat makan siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8670_istirahat_makan_siang, '昼休みに、スマホでそのニュースをチェックしてみます。', 'Saat istirahat makan siang, aku akan mengecek berita di ponsel pintarku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8707_cuaca_cerah, '晴れの日はピクニックに行きたくなります。', 'Hari yang cerah membuatku ingin pergi piknik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8707_cuaca_cerah, '明日も晴れみたいだよ。', 'Sepertinya besok akan cerah lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8707_cuaca_cerah, 'このアプリでは「晴れのちくもり」になってるよ。', 'Aplikasi ini mengatakan "Akan cerah, lalu berawan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8751_tahun_lalu, 'この二十四時間スーパーは、昨年オープンしました。', 'Supermarket 24 jam ini dibuka tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8751_tahun_lalu, '昨年は旅行でグアムに行きました。', 'Saya melakukan perjalanan ke Guam tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8751_tahun_lalu, 'ようやく昨年から、だんだん仕事がうまくいき出したんです。', 'Akhirnya, semuanya mulai berjalan baik dengan pekerjaan saya sejak tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8952_untuk_menghapus, 'おっマスク外すと別人だね。', 'Wah, kamu menjadi orang yang berbeda saat melepas topengnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8952_untuk_menghapus, 'またターゲットを外してしまった。', 'Saya meleset dari sasaran lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8952_untuk_menghapus, 'どうしてキョーコをチームから外したんですか？', 'Mengapa Anda mengeluarkan Kyoko dari tim?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8952_untuk_menghapus, 'エンジンを外しましょう。', 'Ayo lepas mesinnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9017_untuk_membayar, 'アメックスで支払えますか？', 'Bisakah saya membayar dengan American Express?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9017_untuk_membayar, '代金はクレジットカードで支払う予定です。', 'Saya berencana membayar biayanya dengan kartu kredit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9017_untuk_membayar, '分かりました。期日までに支払ってくださいね。', 'Mengerti. Harap pastikan untuk membayar sebelum tanggal jatuh tempo, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya, 'ええっ、それは初耳です。', 'Huh, itu pertama kalinya aku mendengarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya, 'マジ？そんな話、初耳だぞ！？', 'Dengan serius? Itu semua berita baru bagiku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya, 'この言葉は、初耳の人も多いかもしれませんね。', 'Istilah ini mungkin masih asing bagi banyak dari Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9049_penumpang, 'そのバスにはたくさんの乗客が乗っていました。', 'Ada banyak penumpang di bus itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9049_penumpang, 'タクシードライバーとのおしゃべりを楽しみにしている乗客もいる。', 'Beberapa penumpang menantikan untuk mengobrol dengan pengemudi taksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9049_penumpang, 'ホームには女性の乗客が一人で待っていた。', 'Seorang penumpang wanita sedang menunggu sendirian di peron.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9050_menunggang_kuda, '今朝、乗馬をしました。', 'Pagi ini, saya pergi menunggang kuda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9050_menunggang_kuda, '乗馬を体験してみたい。', 'Saya ingin merasakan pengalaman menunggang kuda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9050_menunggang_kuda, '最近は、乗馬クラブに通っています。', 'Baru-baru ini, saya menghadiri klub berkuda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9066_asal, 'この場所の名前の由来を知っていますか？', 'Tahukah anda asal usul nama tempat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9066_asal, '自然由来の材料を使っています。', 'Kami menggunakan bahan-bahan dari sumber alami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9066_asal, 'この単語は、ラテン語に由来しています。', 'Kata ini berasal dari bahasa Latin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9244_meragukan, 'なんで私ばかり疑うの？', 'Mengapa kamu hanya mencurigaiku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9244_meragukan, 'それは自分の目を疑うようなニュースでした。', 'Itu adalah berita yang akan membuat Anda meragukan mata Anda sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9244_meragukan, 'たまに、うちの犬の中には人間が入ってるんじゃないかなと疑うことがあります。', 'Terkadang saya curiga bahwa anjing kita sebenarnya adalah manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9249_untuk_turun, 'ハシゴを下りるのがこわいんです。', 'Aku takut menuruni tangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9249_untuk_turun, 'お父さんはジャンプしてフェンスから下りた。', 'Ayah melompat turun dari pagar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9249_untuk_turun, 'やっとフィアンセのビザが下りました。', 'Visa tunangan saya akhirnya dikeluarkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9257_untuk_mempertanyakan_sesuatu, '社会と人間のあり方を問うテーマです。', 'Ini adalah tema yang mempertanyakan bagaimana seharusnya masyarakat dan manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9257_untuk_mempertanyakan_sesuatu, 'その選手は来週の試合で実力が問われるだろう。', 'Kemampuan pemain itu kemungkinan besar akan diuji pada pertandingan pekan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9257_untuk_mempertanyakan_sesuatu, '今、学校のあり方が問われています。', 'Saat ini, cara sekolah beroperasi sedang dipertanyakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9269_untuk_menerima_sesuatu, '彼は全てを受け入れる心の広さを持っています。', 'Dia memiliki keterbukaan pikiran untuk menerima segalanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9269_untuk_menerima_sesuatu, '人は自分を受け入れることでしか成長できません。', 'Orang hanya bisa tumbuh dengan menerima dirinya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9269_untuk_menerima_sesuatu, 'この学校はインターナショナルな学生も受け入れています。', 'Sekolah ini juga menerima siswa internasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9369_teh_hijau, 'コンビニでペットボトルの緑茶買って来てくれない？', 'Bisakah kamu membelikanku sebotol teh hijau di toserba?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9369_teh_hijau, '最近は緑茶で毎日うがいしてるんです。', 'Akhir-akhir ini saya berkumur dengan teh hijau setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9369_teh_hijau, '両方ともカフェインが強いけど、コーヒーよりも緑茶の方が好きなんです。', 'Keduanya mengandung banyak kafein, tapi saya lebih suka teh hijau daripada kopi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9369_teh_hijau, '厳密に言うと、ほうじ茶や抹茶も「緑茶」と言うカテゴリーに入ります。', 'Secara teknis, hojicha dan matcha juga termasuk dalam kategori “teh non-oksidasi”.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9382_menjilat, '赤ちゃんは何でも舐める。', 'Bayi menjilat semuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9382_menjilat, 'お酒は舐めるくらいだったら飲めます。', 'Saya boleh minum alkohol asalkan rasanya sedikit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9382_menjilat, '自分の方がワニカニのレベル高いからって、舐めんじゃねぇよ！', 'Jangan berani-berani meremehkanku hanya karena level WaniKani-mu lebih tinggi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9382_menjilat, '正直なところ、トーフグ大学の入学試験は舐めてたんです。あーあ、もっと勉強すれば良かった。', 'Sejujurnya, saya meremehkan ujian masuk Universitas Tofugu. Ugh… Aku seharusnya belajar lebih banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9485_tuan_tanah, '水もれのこと、大家さんに言ったほうがいいよ。', 'Anda harus memberi tahu pemilik rumah tentang kebocoran tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9485_tuan_tanah, 'うちのアパートの大家と少しトラブルがあったんだよね。', 'Saya punya sedikit masalah dengan pemilik apartemen saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9485_tuan_tanah, 'ゴミの出し方を大家さんに聞いたら親切に教えてくれた。', 'Ketika saya bertanya kepada pemilik rumah bagaimana cara membuang sampah saya, mereka dengan ramah memberi tahu saya apa yang harus saya lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9485_tuan_tanah, '大家さんがいつも見てる気がして、ちょっと気味が悪い。', 'Aku merasa induk semangku selalu mengawasiku dan itu agak menyeramkan.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_834_cahaya_matahari, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_834_cahaya_matahari, id FROM items WHERE type = 'radical' AND (slug = '172' OR id = '172') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_867_keberuntungan, id FROM items WHERE type = 'radical' AND (slug = '80' OR id = '80') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_867_keberuntungan, r_8824_orang_orangan_sawah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_919_keahlian, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_919_keahlian, id FROM items WHERE type = 'radical' AND (slug = '81' OR id = '81') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_922_teknik, id FROM items WHERE type = 'radical' AND (slug = '111' OR id = '111') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_922_teknik, id FROM items WHERE type = 'radical' AND (slug = '130' OR id = '130') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_922_teknik, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_928_kuil, id FROM items WHERE type = 'radical' AND (slug = '192' OR id = '192') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_929_batu_besar, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_929_batu_besar, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_930_kembali_ke_rumah, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_930_kembali_ke_rumah, r_9391_sapu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_931_musim_semi, id FROM items WHERE type = 'radical' AND (slug = '8779' OR id = '8779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_931_musim_semi, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_932_siang, id FROM items WHERE type = 'radical' AND (slug = '215' OR id = '215') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_932_siang, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_932_siang, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_933_membersihkan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_933_membersihkan, id FROM items WHERE type = 'radical' AND (slug = '120' OR id = '120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_934_musim_gugur, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_934_musim_gugur, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_935_ukuran, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_935_ukuran, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_936_baris, id FROM items WHERE type = 'radical' AND (slug = '132' OR id = '132') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_936_baris, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_937_daerah, id FROM items WHERE type = 'radical' AND (slug = '217' OR id = '217') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_937_daerah, id FROM items WHERE type = 'radical' AND (slug = '31' OR id = '31') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_938_lereng, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_938_lereng, id FROM items WHERE type = 'radical' AND (slug = '218' OR id = '218') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_939_upacara, id FROM items WHERE type = 'radical' AND (slug = '79' OR id = '79') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_939_upacara, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_940_meyakini, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_940_meyakini, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_941_keberanian, r_437_keberanian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_942_sederhana, id FROM items WHERE type = 'radical' AND (slug = '199' OR id = '199') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_943_direktur, id FROM items WHERE type = 'radical' AND (slug = '8780' OR id = '8780') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_943_direktur, id FROM items WHERE type = 'radical' AND (slug = '8781' OR id = '8781') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_944_mengubah, r_9329_lagi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_944_mengubah, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_945_suami, id FROM items WHERE type = 'radical' AND (slug = '146' OR id = '146') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_947_sebelumnya, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_947_sebelumnya, id FROM items WHERE type = 'radical' AND (slug = '122' OR id = '122') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_948_racun, id FROM items WHERE type = 'radical' AND (slug = '9452' OR id = '9452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_948_racun, id FROM items WHERE type = 'radical' AND (slug = '107' OR id = '107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_949_metode, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_949_metode, r_244_masa_lalu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_950_menangis, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_950_menangis, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_951_dangkal, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_951_dangkal, id FROM items WHERE type = 'radical' AND (slug = '8782' OR id = '8782') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_952_akun, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_952_akun, id FROM items WHERE type = 'radical' AND (slug = '228' OR id = '228') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_953_inggris, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_953_inggris, id FROM items WHERE type = 'radical' AND (slug = '231' OR id = '231') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_954_tentara, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_954_tentara, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_955_makanan, id FROM items WHERE type = 'radical' AND (slug = '139' OR id = '139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_955_makanan, id FROM items WHERE type = 'radical' AND (slug = '218' OR id = '218') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_956_budha, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_956_budha, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_958_malam, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_958_malam, id FROM items WHERE type = 'radical' AND (slug = '208' OR id = '208') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_959_kucing, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_959_kucing, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_959_kucing, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1608_membayar, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1608_membayar, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1891_hewan_kecil, id FROM items WHERE type = 'radical' AND (slug = '217' OR id = '217') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1891_hewan_kecil, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2083_tinggi, r_408_tinggi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9381_menjilat, id FROM items WHERE type = 'radical' AND (slug = '174' OR id = '174') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9381_menjilat, id FROM items WHERE type = 'radical' AND (slug = '147' OR id = '147') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2902_untuk_memperbaiki, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2955_penulis, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2955_penulis, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3138_mitra, id FROM items WHERE type = 'kanji' AND (slug = '730' OR id = '730') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3138_mitra, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3371_matahari, id FROM items WHERE type = 'kanji' AND (slug = '505' OR id = '505') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3371_matahari, k_834_cahaya_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3575_untuk_disukai, id FROM items WHERE type = 'kanji' AND (slug = '779' OR id = '779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3589_tayangan, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3589_tayangan, id FROM items WHERE type = 'kanji' AND (slug = '861' OR id = '861') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3601_bermacam_macam, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3601_bermacam_macam, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3616_fukushima, k_867_keberuntungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3616_fukushima, id FROM items WHERE type = 'kanji' AND (slug = '822' OR id = '822') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3681_teknik, k_919_keahlian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3682_keahlian, k_919_keahlian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3682_keahlian, id FROM items WHERE type = 'kanji' AND (slug = '921' OR id = '921') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3683_khusus, id FROM items WHERE type = 'kanji' AND (slug = '807' OR id = '807') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3683_khusus, k_919_keahlian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3703_struktur_tulang, id FROM items WHERE type = 'kanji' AND (slug = '924' OR id = '924') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3703_struktur_tulang, id FROM items WHERE type = 'kanji' AND (slug = '920' OR id = '920') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3726_seni, id FROM items WHERE type = 'kanji' AND (slug = '916' OR id = '916') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3726_seni, k_922_teknik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3727_seni_rupa, id FROM items WHERE type = 'kanji' AND (slug = '732' OR id = '732') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3727_seni_rupa, k_922_teknik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3729_budha, k_956_budha);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3730_agama_buddha, k_956_budha);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3730_agama_buddha, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3731_patung_buddha_raksasa, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3731_patung_buddha_raksasa, k_956_budha);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3732_percaya, k_940_meyakini);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3733_kepercayaan_diri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3733_kepercayaan_diri, k_940_meyakini);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3734_lampu_lalu_lintas, k_940_meyakini);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3734_lampu_lalu_lintas, id FROM items WHERE type = 'kanji' AND (slug = '533' OR id = '533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3735_keyakinan, k_940_meyakini);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3735_keyakinan, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3736_memercayai, k_940_meyakini);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3736_memercayai, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3737_ketidakpercayaan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3737_ketidakpercayaan, k_940_meyakini);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3738_membalas, id FROM items WHERE type = 'kanji' AND (slug = '858' OR id = '858') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3738_membalas, k_940_meyakini);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3739_keberanian, k_941_keberanian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3739_keberanian, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3740_daerah, k_937_daerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3742_daerah, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3742_daerah, k_937_daerah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3743_hanya, k_942_sederhana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3744_kata, k_942_sederhana);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3744_kata, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3745_bos, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3745_bos, k_943_direktur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3746_lereng, k_938_lereng);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3747_aneh, k_944_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3748_eksentrik, k_944_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3748_eksentrik, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3749_mengubah, k_944_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3749_mengubah, id FROM items WHERE type = 'kanji' AND (slug = '607' OR id = '607') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3750_kematian_tidak_wajar, k_944_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3750_kematian_tidak_wajar, id FROM items WHERE type = 'kanji' AND (slug = '617' OR id = '617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3751_serius, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3751_serius, k_944_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3752_insiden, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3752_insiden, k_944_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3753_suami, k_945_suami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3754_batu_besar, k_929_batu_besar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3755_untuk_kembali_ke_rumah, k_930_kembali_ke_rumah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3758_upacara, k_939_upacara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3759_musim_semi, k_931_musim_semi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3760_liburan_musim_semi, k_931_musim_semi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3760_liburan_musim_semi, id FROM items WHERE type = 'kanji' AND (slug = '542' OR id = '542') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3761_hari_hari_ini, k_947_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3761_hari_hari_ini, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3762_kemarin, k_947_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3762_kemarin, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3763_siang, k_932_siang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3764_malam, k_958_malam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3765_selamat_malam, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3765_selamat_malam, k_958_malam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3766_setiap_malam, id FROM items WHERE type = 'kanji' AND (slug = '572' OR id = '572') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3766_setiap_malam, k_958_malam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3767_untuk_menjernihkan, k_933_membersihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3768_racun, k_948_racun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3769_peracunan, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3769_peracunan, k_948_racun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3770_beracun, id FROM items WHERE type = 'kanji' AND (slug = '615' OR id = '615') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3770_beracun, k_948_racun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3771_keracunan_makanan, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3771_keracunan_makanan, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3771_keracunan_makanan, k_948_racun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3772_gas_beracun, k_948_racun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3773_metode, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3773_metode, k_949_metode);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3774_tata_bahasa, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3774_tata_bahasa, k_949_metode);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3775_liar, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3775_liar, k_949_metode);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3776_menangis, k_950_menangis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3777_dangkal, k_951_dangkal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3778_kucing, k_959_kucing);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3779_anak_kucing, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3779_anak_kucing, k_959_kucing);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3780_musim_gugur, k_934_musim_gugur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3782_abad, id FROM items WHERE type = 'kanji' AND (slug = '527' OR id = '527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3782_abad, k_952_akun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3783_era_umum, k_952_akun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3783_era_umum, id FROM items WHERE type = 'kanji' AND (slug = '498' OR id = '498') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3783_era_umum, id FROM items WHERE type = 'kanji' AND (slug = '636' OR id = '636') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3784_bahasa_inggris, k_953_inggris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3784_bahasa_inggris, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3785_percakapan_bahasa_inggris, k_953_inggris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3785_percakapan_bahasa_inggris, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3785_percakapan_bahasa_inggris, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3786_penulisan_bahasa_inggris, k_953_inggris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3786_penulisan_bahasa_inggris, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3787_britania, k_953_inggris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3787_britania, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3788_bahasa_inggris_jepang, k_953_inggris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3788_bahasa_inggris_jepang, id FROM items WHERE type = 'kanji' AND (slug = '712' OR id = '712') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3789_jam_tangan, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3789_jam_tangan, k_935_ukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3790_total, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3790_total, k_935_ukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3791_rencana, k_935_ukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3791_rencana, id FROM items WHERE type = 'kanji' AND (slug = '629' OR id = '629') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3792_perhitungan, k_935_ukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3792_perhitungan, id FROM items WHERE type = 'kanji' AND (slug = '762' OR id = '762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3793_tentara, k_954_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3793_tentara, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3794_angkatan_laut, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3794_angkatan_laut, k_954_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3795_makanan, k_955_makanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3796_makanan, k_955_makanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3893_kikuk, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3893_kikuk, id FROM items WHERE type = 'kanji' AND (slug = '876' OR id = '876') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3893_kikuk, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3894_sebuah_permintaan, id FROM items WHERE type = 'kanji' AND (slug = '888' OR id = '888') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3895_minum_sepuasnya, id FROM items WHERE type = 'kanji' AND (slug = '755' OR id = '755') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3895_minum_sepuasnya, id FROM items WHERE type = 'kanji' AND (slug = '791' OR id = '791') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3895_minum_sepuasnya, id FROM items WHERE type = 'kanji' AND (slug = '872' OR id = '872') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3896_makan_sepuasnya, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3896_makan_sepuasnya, id FROM items WHERE type = 'kanji' AND (slug = '791' OR id = '791') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3896_makan_sepuasnya, id FROM items WHERE type = 'kanji' AND (slug = '872' OR id = '872') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3898_pembunuhan, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3898_pembunuhan, id FROM items WHERE type = 'kanji' AND (slug = '880' OR id = '880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3899_pembunuh, id FROM items WHERE type = 'kanji' AND (slug = '880' OR id = '880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3899_pembunuh, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3899_pembunuh, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3900_cincin, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3900_cincin, id FROM items WHERE type = 'kanji' AND (slug = '885' OR id = '885') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3901_gelang_karet, id FROM items WHERE type = 'kanji' AND (slug = '885' OR id = '885') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3904_untuk_menghafal, id FROM items WHERE type = 'kanji' AND (slug = '864' OR id = '864') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3904_untuk_menghafal, id FROM items WHERE type = 'kanji' AND (slug = '664' OR id = '664') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3905_untuk_berlatih, id FROM items WHERE type = 'kanji' AND (slug = '869' OR id = '869') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3905_untuk_berlatih, id FROM items WHERE type = 'kanji' AND (slug = '746' OR id = '746') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3928_gagal_dalam_ujian, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3928_gagal_dalam_ujian, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3928_gagal_dalam_ujian, id FROM items WHERE type = 'kanji' AND (slug = '920' OR id = '920') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3932_insiden_tak_terduga, k_944_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3932_insiden_tak_terduga, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3942_sinkronisasi, id FROM items WHERE type = 'kanji' AND (slug = '568' OR id = '568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3942_sinkronisasi, id FROM items WHERE type = 'kanji' AND (slug = '839' OR id = '839') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3942_sinkronisasi, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3943_kuil, k_928_kuil);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4218_menjadi_proporsional, id FROM items WHERE type = 'kanji' AND (slug = '1088' OR id = '1088') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4218_menjadi_proporsional, id FROM items WHERE type = 'kanji' AND (slug = '896' OR id = '896') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4464_untuk_dipecahkan, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5501_lezat, id FROM items WHERE type = 'kanji' AND (slug = '732' OR id = '732') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5501_lezat, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5715_memahami, id FROM items WHERE type = 'kanji' AND (slug = '465' OR id = '465') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5715_memahami, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5927_untuk_membayar, k_1608_membayar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5983_untuk_mengubah_sesuatu, k_944_mengubah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6809_penghitung_hewan_kecil, k_1891_hewan_kecil);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6810_empat_hewan_kecil, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6810_empat_hewan_kecil, k_1891_hewan_kecil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7277_kokoh, k_2083_tinggi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7277_kokoh, k_945_suami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7278_tinggi, k_2083_tinggi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7280_padat, id FROM items WHERE type = 'kanji' AND (slug = '927' OR id = '927') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7280_padat, k_2083_tinggi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7540_untuk_menunjukkan_kepada_seseorang_apa_yang_dapat_dilakukannya, id FROM items WHERE type = 'kanji' AND (slug = '858' OR id = '858') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7542_tentara, k_954_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7543_garis, k_936_baris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7544_perantara, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7640_menderita, id FROM items WHERE type = 'kanji' AND (slug = '891' OR id = '891') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7697_untuk_menembak, id FROM items WHERE type = 'kanji' AND (slug = '791' OR id = '791') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7754_untuk_mengatur, id FROM items WHERE type = 'kanji' AND (slug = '863' OR id = '863') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8670_istirahat_makan_siang, k_932_siang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8670_istirahat_makan_siang, id FROM items WHERE type = 'kanji' AND (slug = '542' OR id = '542') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8707_cuaca_cerah, k_933_membersihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8751_tahun_lalu, k_947_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8751_tahun_lalu, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8952_untuk_menghapus, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9017_untuk_membayar, id FROM items WHERE type = 'kanji' AND (slug = '678' OR id = '678') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9017_untuk_membayar, k_1608_membayar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya, id FROM items WHERE type = 'kanji' AND (slug = '784' OR id = '784') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9036_sesuatu_yang_didengar_untuk_pertama_kalinya, id FROM items WHERE type = 'kanji' AND (slug = '552' OR id = '552') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9049_penumpang, id FROM items WHERE type = 'kanji' AND (slug = '722' OR id = '722') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9049_penumpang, id FROM items WHERE type = 'kanji' AND (slug = '723' OR id = '723') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9050_menunggang_kuda, id FROM items WHERE type = 'kanji' AND (slug = '722' OR id = '722') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9050_menunggang_kuda, id FROM items WHERE type = 'kanji' AND (slug = '692' OR id = '692') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9066_asal, id FROM items WHERE type = 'kanji' AND (slug = '648' OR id = '648') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9066_asal, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9244_meragukan, id FROM items WHERE type = 'kanji' AND (slug = '894' OR id = '894') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9249_untuk_turun, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9257_untuk_mempertanyakan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '859' OR id = '859') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9269_untuk_menerima_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '711' OR id = '711') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9269_untuk_menerima_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9369_teh_hijau, id FROM items WHERE type = 'kanji' AND (slug = '868' OR id = '868') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9369_teh_hijau, id FROM items WHERE type = 'kanji' AND (slug = '643' OR id = '643') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9382_menjilat, k_9381_menjilat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9485_tuan_tanah, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9485_tuan_tanah, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;

END $$;
