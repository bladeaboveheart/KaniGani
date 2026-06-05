-- ============================================================
-- Fix remaining English meanings in item_meanings table
-- ============================================================
DO $$
DECLARE
  t TEXT[];
  eng TEXT;
  idn TEXT;
  translations TEXT[][] := ARRAY[
    -- Changed Person
    ARRAY['Changed Man', 'Orang yang Berubah'],
    ARRAY['Changed Person', 'Orang yang Berubah'],
    -- Nature / viewing
    ARRAY['Cherry Blossom Viewing', 'Melihat Bunga Sakura'],
    ARRAY['Sakura Viewing', 'Melihat Bunga Sakura'],
    -- Colors
    ARRAY['Chinese Letters', 'Karakter Kanji'],
    ARRAY['Color Brown', 'Warna Coklat'],
    ARRAY['Color Silver', 'Warna Perak'],
    ARRAY['Silver Color', 'Warna Perak'],
    ARRAY['Pure Black', 'Hitam Pekat'],
    -- Temporal
    ARRAY['Coming Days', 'Hari-hari Mendatang'],
    ARRAY['Coming To Work', 'Datang ke Kantor'],
    ARRAY['Every Time', 'Setiap Kali'],
    ARRAY['Just After', 'Tepat Setelah'],
    ARRAY['Last Night', 'Semalam'],
    ARRAY['Next Time', 'Lain Kali'],
    ARRAY['Immediately After', 'Langsung Setelah'],
    ARRAY['One Day', 'Satu Hari'],
    ARRAY['Time Period', 'Periode Waktu'],
    ARRAY['This Evening', 'Malam Ini'],
    ARRAY['Second Day', 'Hari Kedua'],
    ARRAY['Third Day', 'Hari Ketiga'],
    ARRAY['Seventh Day', 'Hari Ketujuh'],
    ARRAY['Eighth Day', 'Hari Kedelapan'],
    ARRAY['Ninth Day', 'Hari Kesembilan'],
    ARRAY['Tenth Day', 'Hari Kesepuluh'],
    -- Company / Organization
    ARRAY['Company Headquarters', 'Kantor Pusat Perusahaan'],
    ARRAY['Company Staff', 'Staf Perusahaan'],
    ARRAY['Government-Owned Company', 'Perusahaan Milik Pemerintah'],
    ARRAY['Entering A Company', 'Bergabung ke Perusahaan'],
    ARRAY['Official Business', 'Urusan Resmi'],
    ARRAY['Official Stance', 'Posisi Resmi'],
    ARRAY['Opening Of Business', 'Pembukaan Bisnis'],
    ARRAY['Starting A Business', 'Memulai Bisnis'],
    ARRAY['President Of A Company', 'Presiden Perusahaan'],
    -- Education
    ARRAY['Grad School', 'Sekolah Pascasarjana'],
    ARRAY['Grad Student', 'Mahasiswa Pascasarjana'],
    ARRAY['Med School', 'Sekolah Kedokteran'],
    ARRAY['Medical School', 'Sekolah Kedokteran'],
    ARRAY['Entrance Examination', 'Ujian Masuk'],
    ARRAY['Entrance Fee', 'Biaya Masuk'],
    ARRAY['Entrance Test', 'Tes Masuk'],
    ARRAY['Entry Fee', 'Biaya Masuk'],
    ARRAY['English Composition', 'Karangan Bahasa Inggris'],
    ARRAY['Study Room', 'Ruang Belajar'],
    -- Station
    ARRAY['Front Of The Station', 'Depan Stasiun'],
    ARRAY['In Front Of Station', 'Di Depan Stasiun'],
    ARRAY['In Front Of The Station', 'Di Depan Stasiun'],
    ARRAY['Station Front', 'Depan Stasiun'],
    ARRAY['Station Attendant', 'Petugas Stasiun'],
    ARRAY['Station Employee', 'Karyawan Stasiun'],
    ARRAY['Train Station Attendant', 'Petugas Stasiun Kereta'],
    ARRAY['Train Station Master', 'Kepala Stasiun Kereta'],
    ARRAY['Train Station Staff', 'Staf Stasiun Kereta'],
    ARRAY['Train Stationmaster', 'Kepala Stasiun'],
    -- Direction
    ARRAY['East Entrance', 'Pintu Timur'],
    ARRAY['East Gate', 'Gerbang Timur'],
    ARRAY['Eastern Direction', 'Arah Timur'],
    ARRAY['Eastern Entrance', 'Pintu Masuk Timur'],
    ARRAY['Eastern Exit', 'Pintu Keluar Timur'],
    ARRAY['South Entrance', 'Pintu Selatan'],
    ARRAY['South Gate', 'Gerbang Selatan'],
    ARRAY['Southern Entrance', 'Pintu Masuk Selatan'],
    ARRAY['Southern Exit', 'Pintu Keluar Selatan'],
    ARRAY['Left-Hand Side', 'Sisi Kiri'],
    ARRAY['Right-Hand Side', 'Sisi Kanan'],
    ARRAY['The East', 'Arah Timur'],
    -- Employment
    ARRAY['Office Worker', 'Pekerja Kantoran'],
    ARRAY['Shop Assistant', 'Asisten Toko'],
    ARRAY['Shop Employee', 'Karyawan Toko'],
    ARRAY['Store Employee', 'Karyawan Toko'],
    ARRAY['Store Staff', 'Staf Toko'],
    -- Negation/Negative
    ARRAY['Not Exceeding', 'Tidak Melebihi'],
    ARRAY['Not Good At', 'Tidak Pandai'],
    ARRAY['Not Many', 'Tidak Banyak'],
    ARRAY['Not Popular', 'Tidak Populer'],
    ARRAY['Not Skilled', 'Tidak Terampil'],
    ARRAY['Not Sufficient', 'Tidak Cukup'],
    ARRAY['Ill Will', 'Niat Jahat'],
    ARRAY['Saying Bad Things', 'Berkata Buruk'],
    ARRAY['It''s No Use', 'Percuma'],
    ARRAY['Out Of Stock', 'Habis Terjual'],
    ARRAY['Waiting In Vain', 'Menunggu sia-sia'],
    ARRAY['There''s No Other Way', 'Tidak Ada Cara Lain'],
    -- Products/Items
    ARRAY['New Item', 'Produk Baru'],
    ARRAY['New Product', 'Produk Baru'],
    ARRAY['Famous Goods', 'Barang Terkenal'],
    ARRAY['Famous Product', 'Produk Terkenal'],
    ARRAY['Food Sample', 'Sampel Makanan'],
    ARRAY['Genuine Article', 'Barang Asli'],
    ARRAY['Item Quality', 'Kualitas Barang'],
    ARRAY['Product Quality', 'Kualitas Produk'],
    ARRAY['Real Deal', 'Barang Nyata'],
    -- Body/Health
    ARRAY['Physical Power', 'Kekuatan Fisik'],
    ARRAY['Mind And Body', 'Jiwa dan Raga'],
    ARRAY['Self Reliance', 'Kemandirian'],
    ARRAY['Peace Of Mind', 'Ketenangan Pikiran'],
    -- Meeting/Gathering  
    ARRAY['Get Together', 'Berkumpul'],
    ARRAY['Getting Ready', 'Bersiap'],
    ARRAY['Good Friend', 'Teman Baik'],
    ARRAY['How Often', 'Seberapa Sering'],
    -- Lifestyle
    ARRAY['Drinking While Standing', 'Minum Sambil Berdiri'],
    ARRAY['Empty Parking Space', 'Tempat Parkir Kosong'],
    ARRAY['Hospital Admission', 'Rawat Inap'],
    ARRAY['Human Made', 'Buatan Manusia'],
    ARRAY['Man Made', 'Buatan Manusia'],
    ARRAY['Immediate Family', 'Keluarga Inti'],
    ARRAY['In The World', 'Di Dunia'],
    ARRAY['On Earth', 'Di Bumi'],
    ARRAY['On The Ground', 'Di Tanah'],
    ARRAY['One Generation', 'Satu Generasi'],
    ARRAY['One Lifetime', 'Seumur Hidup'],
    ARRAY['One''s Birthplace', 'Kampung Halaman'],
    ARRAY['One''s Hometown', 'Kampung Halaman'],
    ARRAY['Point Of View', 'Sudut Pandang'],
    ARRAY['Public Behaviour', 'Perilaku Publik'],
    ARRAY['Public Face', 'Wajah Publik'],
    ARRAY['Public Position', 'Jabatan Resmi'],
    -- Holidays/Vacations
    ARRAY['Spring Holiday', 'Liburan Musim Semi'],
    ARRAY['Spring Vacation', 'Liburan Musim Semi'],
    ARRAY['Summer Break', 'Liburan Musim Panas'],
    ARRAY['Summer Holiday', 'Liburan Musim Panas'],
    ARRAY['Winter Break', 'Liburan Musim Dingin'],
    ARRAY['Winter Vacation', 'Liburan Musim Dingin'],
    ARRAY['Noon Break', 'Istirahat Makan Siang'],
    -- Speaking/Writing
    ARRAY['Fast Speaker', 'Pembicara Cepat'],
    ARRAY['Fast Speaking', 'Berbicara Cepat'],
    ARRAY['Fast Talking', 'Bicara Cepat'],
    ARRAY['Speaking Style', 'Gaya Berbicara'],
    ARRAY['Talking Style', 'Gaya Berbicara'],
    ARRAY['Thought Process', 'Proses Berpikir'],
    ARRAY['Manner Of Writing', 'Cara Menulis'],
    ARRAY['Way Of Doing', 'Cara Melakukan'],
    ARRAY['Way Of Making', 'Cara Membuat'],
    ARRAY['Way Of Reading', 'Cara Membaca'],
    ARRAY['Way Of Talking', 'Cara Berbicara'],
    ARRAY['Way Of Using', 'Cara Menggunakan'],
    ARRAY['Way Of Writing', 'Cara Menulis'],
    ARRAY['Way To Make', 'Cara Membuat'],
    -- Family
    ARRAY['Family Name', 'Nama Keluarga'],
    ARRAY['Last Name', 'Nama Belakang'],
    -- Chinese/Kanji related
    ARRAY['Kanji Character', 'Karakter Kanji'],
    ARRAY['Chinese Character', 'Karakter Cina'],
    ARRAY['Lowercase Characters', 'Huruf Kecil'],
    -- Other
    ARRAY['Different Thing', 'Hal Berbeda'],
    ARRAY['Separate Thing', 'Hal Terpisah'],
    ARRAY['Epic Saga', 'Kisah Epik'],
    ARRAY['Magnum Opus', 'Karya Terbesar'],
    ARRAY['Rising Sun', 'Matahari Terbit'],
    ARRAY['Rice Paddy', 'Sawah'],
    ARRAY['Saltwater Fish', 'Ikan Laut'],
    ARRAY['Tea House', 'Rumah Teh'],
    ARRAY['Tea Store', 'Toko Teh'],
    ARRAY['Teacher''s Office', 'Ruang Guru'],
    ARRAY['Professor''s Office', 'Ruang Profesor'],
    ARRAY['That''s All', 'Itu Saja'],
    ARRAY['The Finish', 'Akhir'],
    ARRAY['The Last Train', 'Kereta Terakhir'],
    ARRAY['The Office', 'Kantor'],
    ARRAY['The Universe', 'Alam Semesta'],
    ARRAY['The World', 'Dunia'],
    ARRAY['Short Way', 'Jalan Pintas'],
    ARRAY['Skilled At', 'Pandai Dalam'],
    ARRAY['Something Begins', 'Sesuatu Dimulai'],
    ARRAY['Something Starts', 'Sesuatu Dimulai'],
    ARRAY['Serious Matter', 'Hal Serius'],
    ARRAY['United Kingdom', 'Inggris'],
    ARRAY['Water Line', 'Saluran Air'],
    ARRAY['Water Service', 'Layanan Air'],
    ARRAY['Western Clothing', 'Pakaian Barat'],
    ARRAY['Western Countries', 'Negara-negara Barat'],
    ARRAY['Western Style Clothes', 'Pakaian Gaya Barat'],
    ARRAY['Western Style Food', 'Makanan Gaya Barat'],
    ARRAY['What Temperature', 'Suhu Berapa'],
    ARRAY['White And Black', 'Hitam Putih'],
    ARRAY['Wicked Woman', 'Wanita Jahat'],
    ARRAY['With No', 'Tanpa'],
    ARRAY['Without Charge', 'Gratis'],
    ARRAY['Young Boy', 'Anak Laki-laki Muda'],
    ARRAY['Young Lady', 'Wanita Muda'],
    ARRAY['Young Man', 'Pria Muda'],
    ARRAY['Movie Theatre', 'Bioskop'],
    ARRAY['Limited Express', 'Kereta Ekspres Terbatas'],
    ARRAY['Hospital Admission', 'Rawat Inap'],
    -- "To ..." verbs
    ARRAY['To Attempt Something', 'Mencoba Sesuatu'],
    ARRAY['To Attend', 'Menghadiri'],
    ARRAY['To Be Built', 'Dibangun'],
    ARRAY['To Be Divided', 'Dibagi'],
    ARRAY['To Be Ill', 'Sakit'],
    ARRAY['To Be In A Photograph', 'Ada di Foto'],
    ARRAY['To Be Open', 'Terbuka'],
    ARRAY['To Be Projected', 'Diproyeksikan'],
    ARRAY['To Be Scattered About', 'Berserakan'],
    ARRAY['To Be Sufficient', 'Mencukupi'],
    ARRAY['To Break Up', 'Berpisah'],
    ARRAY['To Bring Near', 'Mendekatkan'],
    ARRAY['To Build', 'Membangun'],
    ARRAY['To Carry Something', 'Membawa Sesuatu'],
    ARRAY['To Cause Something', 'Menyebabkan Sesuatu'],
    ARRAY['To Climb', 'Mendaki'],
    ARRAY['To Come Across', 'Menemukan'],
    ARRAY['To Come Down With', 'Terjangkit'],
    ARRAY['To Create', 'Membuat'],
    ARRAY['To Do Away With Something', 'Menghilangkan Sesuatu'],
    ARRAY['To Drink', 'Minum'],
    ARRAY['To Dwell', 'Tinggal'],
    ARRAY['To Eat', 'Makan'],
    ARRAY['To Encounter', 'Bertemu'],
    ARRAY['To End Something', 'Mengakhiri Sesuatu'],
    ARRAY['To Enjoy Oneself', 'Menikmati Diri'],
    ARRAY['To Exchange Something', 'Menukar Sesuatu'],
    ARRAY['To Exist', 'Ada'],
    ARRAY['To Fall Down', 'Jatuh'],
    ARRAY['To Fall Ill', 'Jatuh Sakit'],
    ARRAY['To Focus', 'Fokus'],
    ARRAY['To Gather Something', 'Mengumpulkan Sesuatu'],
    ARRAY['To Give Something A Try', 'Mencoba Sesuatu'],
    ARRAY['To Go Back And Forth', 'Pergi Pulang'],
    ARRAY['To Go Home', 'Pulang'],
    ARRAY['To Happen', 'Terjadi'],
    ARRAY['To Have Fun', 'Bersenang-senang'],
    ARRAY['To Keep Someone Waiting', 'Membuat Seseorang Menunggu'],
    ARRAY['To Keep Something', 'Menyimpan Sesuatu'],
    ARRAY['To Lose Something', 'Kehilangan Sesuatu'],
    ARRAY['To Make Something', 'Membuat Sesuatu'],
    ARRAY['To Meet Unexpectedly', 'Bertemu Tidak Sengaja'],
    ARRAY['To Move', 'Bergerak'],
    ARRAY['To Open Something Up', 'Membuka Sesuatu'],
    ARRAY['To Operate', 'Mengoperasikan'],
    ARRAY['To Own Something', 'Memiliki Sesuatu'],
    ARRAY['To Part From', 'Berpisah Dari'],
    ARRAY['To Pass On', 'Meneruskan'],
    ARRAY['To Prevent Something', 'Mencegah Sesuatu'],
    ARRAY['To Put Off', 'Menunda'],
    ARRAY['To Put On', 'Memakai'],
    ARRAY['To Put Something Through', 'Menghubungkan Sesuatu'],
    ARRAY['To Reflect', 'Memantulkan'],
    ARRAY['To Rent', 'Menyewa'],
    ARRAY['To Reply', 'Membalas'],
    ARRAY['To Request', 'Memohon'],
    ARRAY['To Reside', 'Tinggal'],
    ARRAY['To Respond', 'Merespons'],
    ARRAY['To Return', 'Kembali'],
    ARRAY['To Rise', 'Naik'],
    ARRAY['To Run Into', 'Bertemu Tidak Sengaja'],
    ARRAY['To Say', 'Mengatakan'],
    ARRAY['To Sell', 'Menjual'],
    ARRAY['To Set Something Up', 'Mendirikan Sesuatu'],
    ARRAY['To Stand Up', 'Berdiri'],
    ARRAY['To Start Something', 'Memulai Sesuatu'],
    ARRAY['To Substitute Something', 'Menggantikan Sesuatu'],
    ARRAY['To Suffer From', 'Menderita Dari'],
    ARRAY['To Suffice', 'Mencukupi'],
    ARRAY['To Take A Picture', 'Mengambil Foto'],
    ARRAY['To Take A Trip', 'Bepergian'],
    ARRAY['To Take Lessons In', 'Mengikuti Pelajaran'],
    ARRAY['To Take Place', 'Berlangsung'],
    ARRAY['To The Letter', 'Kata per Kata'],
    ARRAY['To Transport', 'Mengangkut'],
    ARRAY['To Travel Along', 'Bepergian Sepanjang'],
    ARRAY['To Turn Something Over', 'Membalik Sesuatu'],
    ARRAY['To Unfold Something', 'Membentangkan Sesuatu'],
    ARRAY['To Use', 'Menggunakan'],
    ARRAY['To Wear', 'Memakai'],
    ARRAY['In The World', 'Di Dunia'],
    ARRAY['True Nature', 'Sifat Asli'],
    ARRAY['Feeling Bad', 'Perasaan Buruk'],
    ARRAY['Feeling Good', 'Perasaan Baik'],
    ARRAY['Feeling Terrible', 'Perasaan Sangat Buruk'],
    ARRAY['Mind And Body', 'Jiwa dan Raga']
  ];
BEGIN
  FOREACH t SLICE 1 IN ARRAY translations
  LOOP
    eng := t[1];
    idn := t[2];
    
    -- Update English → Indonesian (only if Indonesian doesn't already exist for that item)
    UPDATE public.item_meanings im
    SET meaning = idn
    WHERE im.meaning = eng
      AND NOT EXISTS (
        SELECT 1 FROM public.item_meanings im2
        WHERE im2.item_id = im.item_id AND im2.meaning = idn AND im2.id != im.id
      );
    
    -- Delete English if Indonesian already exists for that item
    DELETE FROM public.item_meanings im
    WHERE im.meaning = eng
      AND EXISTS (
        SELECT 1 FROM public.item_meanings im2
        WHERE im2.item_id = im.item_id AND im2.meaning = idn AND im2.id != im.id
      );
  END LOOP;
END $$;

-- Fix Air Hujan duplicate (already Indonesian but check if duplicated)
DELETE FROM public.item_meanings a
USING public.item_meanings b
WHERE a.item_id = b.item_id
  AND a.meaning = b.meaning
  AND a.ctid > b.ctid;

-- Also fix any single-word English meanings that slipped through
UPDATE public.item_meanings SET meaning = 'Tentang' WHERE meaning = 'About';
UPDATE public.item_meanings SET meaning = 'Luar Negeri' WHERE meaning = 'Abroad';
UPDATE public.item_meanings SET meaning = 'Aktivitas' WHERE meaning = 'Activity';
UPDATE public.item_meanings SET meaning = 'Penerimaan' WHERE meaning = 'Admission';
UPDATE public.item_meanings SET meaning = 'Kuno' WHERE meaning = 'Ancient';
UPDATE public.item_meanings SET meaning = 'Saluran Air' WHERE meaning = 'Aqueduct';
UPDATE public.item_meanings SET meaning = 'Lengan' WHERE meaning = 'Arm';
UPDATE public.item_meanings SET meaning = 'Pengaturan' WHERE meaning = 'Arrangements';
UPDATE public.item_meanings SET meaning = 'Pertemuan/Rakitan' WHERE meaning = 'Assembly';
UPDATE public.item_meanings SET meaning = 'Perhatian' WHERE meaning = 'Attention';
UPDATE public.item_meanings SET meaning = 'Anak Sapi' WHERE meaning = 'Baby Cow';
UPDATE public.item_meanings SET meaning = 'Gang Belakang' WHERE meaning = 'Backstreets';
UPDATE public.item_meanings SET meaning = 'Perilaku' WHERE meaning = 'Behavior';
UPDATE public.item_meanings SET meaning = 'Perilaku' WHERE meaning = 'Behaviour';
UPDATE public.item_meanings SET meaning = 'Permulaan' WHERE meaning = 'Beginning';
UPDATE public.item_meanings SET meaning = 'Sahabat' WHERE meaning = 'Best Friend';
UPDATE public.item_meanings SET meaning = 'Sepeda' WHERE meaning = 'Bike';
UPDATE public.item_meanings SET meaning = 'Tagihan' WHERE meaning = 'Bill';
UPDATE public.item_meanings SET meaning = 'Tagihan-tagihan' WHERE meaning = 'Bills';
UPDATE public.item_meanings SET meaning = 'Orang Berkulit Hitam' WHERE meaning = 'Black People';
UPDATE public.item_meanings SET meaning = 'Toko Buku' WHERE meaning = 'Bookshop';
UPDATE public.item_meanings SET meaning = 'Istirahat' WHERE meaning = 'Break';
UPDATE public.item_meanings SET meaning = 'Banteng' WHERE meaning = 'Bull';
UPDATE public.item_meanings SET meaning = 'Pembatalan' WHERE meaning = 'Cancellation';
UPDATE public.item_meanings SET meaning = 'Huruf Kapital' WHERE meaning = 'Capital Letters';
UPDATE public.item_meanings SET meaning = 'Karnivora' WHERE meaning = 'Carnivore';
UPDATE public.item_meanings SET meaning = 'Ketua' WHERE meaning = 'Chairman';
UPDATE public.item_meanings SET meaning = 'Perubahan' WHERE meaning = 'Change';
UPDATE public.item_meanings SET meaning = 'Bunga Sakura' WHERE meaning = 'Cherry Blossom';
UPDATE public.item_meanings SET meaning = 'Sumpit' WHERE meaning = 'Chopsticks';
UPDATE public.item_meanings SET meaning = 'Warga Negara' WHERE meaning = 'Citizen';
UPDATE public.item_meanings SET meaning = 'Balai Kota' WHERE meaning = 'City Hall';
UPDATE public.item_meanings SET meaning = 'Iklim' WHERE meaning = 'Climate';
UPDATE public.item_meanings SET meaning = 'Koleksi' WHERE meaning = 'Collection';
UPDATE public.item_meanings SET meaning = 'Mahasiswa' WHERE meaning = 'College Student';
UPDATE public.item_meanings SET meaning = 'Kenyamanan' WHERE meaning = 'Comfort';
UPDATE public.item_meanings SET meaning = 'Karyawan' WHERE meaning = 'Company Employee';
UPDATE public.item_meanings SET meaning = 'Kompetisi' WHERE meaning = 'Competition';
UPDATE public.item_meanings SET meaning = 'Kondisi' WHERE meaning = 'Condition';
UPDATE public.item_meanings SET meaning = 'Selamat' WHERE meaning = 'Congratulations';
UPDATE public.item_meanings SET meaning = 'Percakapan' WHERE meaning = 'Conversation';
UPDATE public.item_meanings SET meaning = 'Salinan' WHERE meaning = 'Copy';
UPDATE public.item_meanings SET meaning = 'Jenazah' WHERE meaning = 'Corpse';
UPDATE public.item_meanings SET meaning = 'Jenazah' WHERE meaning = 'Cadaver';
UPDATE public.item_meanings SET meaning = 'Imut' WHERE meaning = 'Cute';
UPDATE public.item_meanings SET meaning = 'Sehari-hari' WHERE meaning = 'Daily';
UPDATE public.item_meanings SET meaning = 'Gelap' WHERE meaning = 'Dark';
UPDATE public.item_meanings SET meaning = 'Lusa' WHERE meaning = 'Day After Tomorrow';
UPDATE public.item_meanings SET meaning = 'Kemarin Lusa' WHERE meaning = 'Day Before Yesterday';
UPDATE public.item_meanings SET meaning = 'Batas Waktu' WHERE meaning = 'Deadline';
UPDATE public.item_meanings SET meaning = 'Demokrasi' WHERE meaning = 'Democracy';
UPDATE public.item_meanings SET meaning = 'Desain' WHERE meaning = 'Design';
UPDATE public.item_meanings SET meaning = 'Dokter' WHERE meaning = 'Doctor';
UPDATE public.item_meanings SET meaning = 'Ganda' WHERE meaning = 'Double';
UPDATE public.item_meanings SET meaning = 'Draf' WHERE meaning = 'Draft';
UPDATE public.item_meanings SET meaning = 'Ekonomi' WHERE meaning = 'Economics';
UPDATE public.item_meanings SET meaning = 'Ekonomi' WHERE meaning = 'Economy';
UPDATE public.item_meanings SET meaning = 'Pendidikan' WHERE meaning = 'Education';
UPDATE public.item_meanings SET meaning = 'Usaha' WHERE meaning = 'Effort';
UPDATE public.item_meanings SET meaning = 'Pemilihan' WHERE meaning = 'Election';
UPDATE public.item_meanings SET meaning = 'Listrik' WHERE meaning = 'Electricity';
UPDATE public.item_meanings SET meaning = 'Sekolah Dasar' WHERE meaning = 'Elementary School';
UPDATE public.item_meanings SET meaning = 'Lift' WHERE meaning = 'Elevator';
UPDATE public.item_meanings SET meaning = 'Karyawan' WHERE meaning = 'Employee';
UPDATE public.item_meanings SET meaning = 'Pertukaran' WHERE meaning = 'Exchange';
UPDATE public.item_meanings SET meaning = 'Pengalaman' WHERE meaning = 'Experience';
UPDATE public.item_meanings SET meaning = 'Eksperimen' WHERE meaning = 'Experiment';
UPDATE public.item_meanings SET meaning = 'Penjelasan' WHERE meaning = 'Explanation';
UPDATE public.item_meanings SET meaning = 'Kereta Ekspres' WHERE meaning = 'Express Train';
UPDATE public.item_meanings SET meaning = 'Terkenal' WHERE meaning = 'Famous';
UPDATE public.item_meanings SET meaning = 'Ketakutan' WHERE meaning = 'Fear';
UPDATE public.item_meanings SET meaning = 'Festival' WHERE meaning = 'Festival';
UPDATE public.item_meanings SET meaning = 'Pertarungan' WHERE meaning = 'Fight';
UPDATE public.item_meanings SET meaning = 'Film' WHERE meaning = 'Film';
UPDATE public.item_meanings SET meaning = 'Pasar Ikan' WHERE meaning = 'Fish Market';
UPDATE public.item_meanings SET meaning = 'Datar' WHERE meaning = 'Flat';
UPDATE public.item_meanings SET meaning = 'Asing' WHERE meaning = 'Foreign';
UPDATE public.item_meanings SET meaning = 'Formulir' WHERE meaning = 'Form';
UPDATE public.item_meanings SET meaning = 'Teman' WHERE meaning = 'Friend';
UPDATE public.item_meanings SET meaning = 'Mulai Sekarang' WHERE meaning = 'From Now On';
UPDATE public.item_meanings SET meaning = 'Fungsi' WHERE meaning = 'Function';
UPDATE public.item_meanings SET meaning = 'Umum' WHERE meaning = 'General';
UPDATE public.item_meanings SET meaning = 'Hadiah' WHERE meaning = 'Gift';
UPDATE public.item_meanings SET meaning = 'Pemerintah' WHERE meaning = 'Government';
UPDATE public.item_meanings SET meaning = 'Secara Bertahap' WHERE meaning = 'Gradually';
UPDATE public.item_meanings SET meaning = 'Cucu' WHERE meaning = 'Grandchild';
UPDATE public.item_meanings SET meaning = 'Nenek' WHERE meaning = 'Grandmother';
UPDATE public.item_meanings SET meaning = 'Kelompok' WHERE meaning = 'Group';
UPDATE public.item_meanings SET meaning = 'Harmoni' WHERE meaning = 'Harmony';
UPDATE public.item_meanings SET meaning = 'Kesehatan' WHERE meaning = 'Health';
UPDATE public.item_meanings SET meaning = 'Herbivora' WHERE meaning = 'Herbivore';
UPDATE public.item_meanings SET meaning = 'SMA' WHERE meaning = 'High School';
UPDATE public.item_meanings SET meaning = 'Siswa SMA' WHERE meaning = 'High School Student';
UPDATE public.item_meanings SET meaning = 'Sejarah' WHERE meaning = 'History';
UPDATE public.item_meanings SET meaning = 'Hari Libur' WHERE meaning = 'Holiday';
UPDATE public.item_meanings SET meaning = 'Pekerjaan Rumah' WHERE meaning = 'Homework';
UPDATE public.item_meanings SET meaning = 'Rumah Sakit' WHERE meaning = 'Hospital';
UPDATE public.item_meanings SET meaning = 'Manusia' WHERE meaning = 'Human';
UPDATE public.item_meanings SET meaning = 'Penting' WHERE meaning = 'Important';
UPDATE public.item_meanings SET meaning = 'Tidak Mungkin' WHERE meaning = 'Impossible';
UPDATE public.item_meanings SET meaning = 'Terburu-buru' WHERE meaning = 'In A Hurry';
UPDATE public.item_meanings SET meaning = 'Secara Keseluruhan' WHERE meaning = 'In Total';
UPDATE public.item_meanings SET meaning = 'Kejadian' WHERE meaning = 'Incident';
UPDATE public.item_meanings SET meaning = 'Informasi' WHERE meaning = 'Information';
UPDATE public.item_meanings SET meaning = 'Minat' WHERE meaning = 'Interest';
UPDATE public.item_meanings SET meaning = 'Perkenalan' WHERE meaning = 'Introduction';
UPDATE public.item_meanings SET meaning = 'Penemuan' WHERE meaning = 'Invention';
UPDATE public.item_meanings SET meaning = 'Undangan' WHERE meaning = 'Invitation';
UPDATE public.item_meanings SET meaning = 'Makanan Jepang' WHERE meaning = 'Japanese Food';
UPDATE public.item_meanings SET meaning = 'Pekerjaan' WHERE meaning = 'Job';
UPDATE public.item_meanings SET meaning = 'Baik Hati' WHERE meaning = 'Kind';
UPDATE public.item_meanings SET meaning = 'Dapur' WHERE meaning = 'Kitchen';
UPDATE public.item_meanings SET meaning = 'Pengetahuan' WHERE meaning = 'Knowledge';
UPDATE public.item_meanings SET meaning = 'Besar' WHERE meaning = 'Large';
UPDATE public.item_meanings SET meaning = 'Pengacara' WHERE meaning = 'Lawyer';
UPDATE public.item_meanings SET meaning = 'Pembelajaran' WHERE meaning = 'Learning';
UPDATE public.item_meanings SET meaning = 'Surat' WHERE meaning = 'Letter';
UPDATE public.item_meanings SET meaning = 'Perpustakaan' WHERE meaning = 'Library';
UPDATE public.item_meanings SET meaning = 'Garis' WHERE meaning = 'Line';
UPDATE public.item_meanings SET meaning = 'Pinjaman' WHERE meaning = 'Loan';
UPDATE public.item_meanings SET meaning = 'Lokasi' WHERE meaning = 'Location';
UPDATE public.item_meanings SET meaning = 'Kerugian' WHERE meaning = 'Loss';
UPDATE public.item_meanings SET meaning = 'Peta' WHERE meaning = 'Map';
UPDATE public.item_meanings SET meaning = 'Pertandingan' WHERE meaning = 'Match';
UPDATE public.item_meanings SET meaning = 'Padang Rumput' WHERE meaning = 'Meadow';
UPDATE public.item_meanings SET meaning = 'Dokter' WHERE meaning = 'Medical Doctor';
UPDATE public.item_meanings SET meaning = 'Memori' WHERE meaning = 'Memory';
UPDATE public.item_meanings SET meaning = 'Pesan' WHERE meaning = 'Message';
UPDATE public.item_meanings SET meaning = 'SMP' WHERE meaning = 'Middle School';
UPDATE public.item_meanings SET meaning = 'Modern' WHERE meaning = 'Modern';
UPDATE public.item_meanings SET meaning = 'Film' WHERE meaning = 'Movie';
UPDATE public.item_meanings SET meaning = 'Bioskop' WHERE meaning = 'Movie Theater';
UPDATE public.item_meanings SET meaning = 'Musik' WHERE meaning = 'Music';
UPDATE public.item_meanings SET meaning = 'Kartu Nama' WHERE meaning = 'Name Card';
UPDATE public.item_meanings SET meaning = 'Alam' WHERE meaning = 'Nature';
UPDATE public.item_meanings SET meaning = 'Tahun Baru' WHERE meaning = 'New Year';
UPDATE public.item_meanings SET meaning = 'Malam' WHERE meaning = 'Night';
UPDATE public.item_meanings SET meaning = 'Tengah Hari' WHERE meaning = 'Noon';
UPDATE public.item_meanings SET meaning = 'Nomor' WHERE meaning = 'Number';
UPDATE public.item_meanings SET meaning = 'Perawat' WHERE meaning = 'Nurse';
UPDATE public.item_meanings SET meaning = 'Pekerjaan' WHERE meaning = 'Occupation';
UPDATE public.item_meanings SET meaning = 'Pendapat' WHERE meaning = 'Opinion';
UPDATE public.item_meanings SET meaning = 'Pesanan' WHERE meaning = 'Order';
UPDATE public.item_meanings SET meaning = 'Organisasi' WHERE meaning = 'Organization';
UPDATE public.item_meanings SET meaning = 'Luar Negeri' WHERE meaning = 'Overseas';
UPDATE public.item_meanings SET meaning = 'Rasa Sakit' WHERE meaning = 'Pain';
UPDATE public.item_meanings SET meaning = 'Parkir' WHERE meaning = 'Parking';
UPDATE public.item_meanings SET meaning = 'Pesta' WHERE meaning = 'Party';
UPDATE public.item_meanings SET meaning = 'Perdamaian' WHERE meaning = 'Peace';
UPDATE public.item_meanings SET meaning = 'Pertunjukan' WHERE meaning = 'Performance';
UPDATE public.item_meanings SET meaning = 'Izin' WHERE meaning = 'Permission';
UPDATE public.item_meanings SET meaning = 'Rencana' WHERE meaning = 'Plan';
UPDATE public.item_meanings SET meaning = 'Polisi' WHERE meaning = 'Police';
UPDATE public.item_meanings SET meaning = 'Polisi' WHERE meaning = 'Police Officer';
UPDATE public.item_meanings SET meaning = 'Kebijakan' WHERE meaning = 'Policy';
UPDATE public.item_meanings SET meaning = 'Partai Politik' WHERE meaning = 'Political Party';
UPDATE public.item_meanings SET meaning = 'Politik' WHERE meaning = 'Politics';
UPDATE public.item_meanings SET meaning = 'Kantor Pos' WHERE meaning = 'Post Office';
UPDATE public.item_meanings SET meaning = 'Latihan' WHERE meaning = 'Practice';
UPDATE public.item_meanings SET meaning = 'Persiapan' WHERE meaning = 'Preparation';
UPDATE public.item_meanings SET meaning = 'Harga' WHERE meaning = 'Price';
UPDATE public.item_meanings SET meaning = 'Profesor' WHERE meaning = 'Professor';
UPDATE public.item_meanings SET meaning = 'Kemajuan' WHERE meaning = 'Progress';
UPDATE public.item_meanings SET meaning = 'Proyek' WHERE meaning = 'Project';
UPDATE public.item_meanings SET meaning = 'Publik' WHERE meaning = 'Public';
UPDATE public.item_meanings SET meaning = 'Kelinci' WHERE meaning = 'Rabbit';
UPDATE public.item_meanings SET meaning = 'Rekaman' WHERE meaning = 'Recording';
UPDATE public.item_meanings SET meaning = 'Agama' WHERE meaning = 'Religion';
UPDATE public.item_meanings SET meaning = 'Sewa' WHERE meaning = 'Rent';
UPDATE public.item_meanings SET meaning = 'Laporan' WHERE meaning = 'Report';
UPDATE public.item_meanings SET meaning = 'Penelitian' WHERE meaning = 'Research';
UPDATE public.item_meanings SET meaning = 'Restoran' WHERE meaning = 'Restaurant';
UPDATE public.item_meanings SET meaning = 'Hubungan' WHERE meaning = 'Relationship';
UPDATE public.item_meanings SET meaning = 'Hasil' WHERE meaning = 'Result';
UPDATE public.item_meanings SET meaning = 'Peran' WHERE meaning = 'Role';
UPDATE public.item_meanings SET meaning = 'Aturan' WHERE meaning = 'Rule';
UPDATE public.item_meanings SET meaning = 'Keamanan' WHERE meaning = 'Safety';
UPDATE public.item_meanings SET meaning = 'Gaji' WHERE meaning = 'Salary';
UPDATE public.item_meanings SET meaning = 'Sampel' WHERE meaning = 'Sample';
UPDATE public.item_meanings SET meaning = 'Pemandangan' WHERE meaning = 'Scenery';
UPDATE public.item_meanings SET meaning = 'Jadwal' WHERE meaning = 'Schedule';
UPDATE public.item_meanings SET meaning = 'Sekolah' WHERE meaning = 'School';
UPDATE public.item_meanings SET meaning = 'Musim' WHERE meaning = 'Season';
UPDATE public.item_meanings SET meaning = 'Perkenalan Diri' WHERE meaning = 'Self Introduction';
UPDATE public.item_meanings SET meaning = 'Layanan' WHERE meaning = 'Service';
UPDATE public.item_meanings SET meaning = 'Tajam' WHERE meaning = 'Sharp';
UPDATE public.item_meanings SET meaning = 'Pendek' WHERE meaning = 'Short';
UPDATE public.item_meanings SET meaning = 'Kuil' WHERE meaning = 'Shrine';
UPDATE public.item_meanings SET meaning = 'Tanda' WHERE meaning = 'Sign';
UPDATE public.item_meanings SET meaning = 'Perlahan' WHERE meaning = 'Slowly';
UPDATE public.item_meanings SET meaning = 'Kecil' WHERE meaning = 'Small';
UPDATE public.item_meanings SET meaning = 'Masyarakat' WHERE meaning = 'Society';
UPDATE public.item_meanings SET meaning = 'Sesuatu' WHERE meaning = 'Something';
UPDATE public.item_meanings SET meaning = 'Lagu' WHERE meaning = 'Song';
UPDATE public.item_meanings SET meaning = 'Maaf' WHERE meaning = 'Sorry';
UPDATE public.item_meanings SET meaning = 'Jiwa' WHERE meaning = 'Soul';
UPDATE public.item_meanings SET meaning = 'Pidato' WHERE meaning = 'Speech';
UPDATE public.item_meanings SET meaning = 'Kecepatan' WHERE meaning = 'Speed';
UPDATE public.item_meanings SET meaning = 'Olahraga' WHERE meaning = 'Sport';
UPDATE public.item_meanings SET meaning = 'Musim Semi' WHERE meaning = 'Spring';
UPDATE public.item_meanings SET meaning = 'Stasiun' WHERE meaning = 'Station';
UPDATE public.item_meanings SET meaning = 'Cerita' WHERE meaning = 'Story';
UPDATE public.item_meanings SET meaning = 'Aneh' WHERE meaning = 'Strange';
UPDATE public.item_meanings SET meaning = 'Kuat' WHERE meaning = 'Strong';
UPDATE public.item_meanings SET meaning = 'Siswa' WHERE meaning = 'Student';
UPDATE public.item_meanings SET meaning = 'Belajar' WHERE meaning = 'Study';
UPDATE public.item_meanings SET meaning = 'Mata Pelajaran' WHERE meaning = 'Subject';
UPDATE public.item_meanings SET meaning = 'Kesuksesan' WHERE meaning = 'Success';
UPDATE public.item_meanings SET meaning = 'Musim Panas' WHERE meaning = 'Summer';
UPDATE public.item_meanings SET meaning = 'Supermarket' WHERE meaning = 'Supermarket';
UPDATE public.item_meanings SET meaning = 'Dukungan' WHERE meaning = 'Support';
UPDATE public.item_meanings SET meaning = 'Berenang' WHERE meaning = 'Swimming';
UPDATE public.item_meanings SET meaning = 'Sistem' WHERE meaning = 'System';
UPDATE public.item_meanings SET meaning = 'Tinggi' WHERE meaning = 'Tall';
UPDATE public.item_meanings SET meaning = 'Guru' WHERE meaning = 'Teacher';
UPDATE public.item_meanings SET meaning = 'Teknologi' WHERE meaning = 'Technology';
UPDATE public.item_meanings SET meaning = 'Suhu' WHERE meaning = 'Temperature';
UPDATE public.item_meanings SET meaning = 'Kuil Budha' WHERE meaning = 'Temple';
UPDATE public.item_meanings SET meaning = 'Ujian' WHERE meaning = 'Test';
UPDATE public.item_meanings SET meaning = 'Terima Kasih' WHERE meaning = 'Thank You';
UPDATE public.item_meanings SET meaning = 'Berpikir' WHERE meaning = 'Think';
UPDATE public.item_meanings SET meaning = 'Waktu' WHERE meaning = 'Time';
UPDATE public.item_meanings SET meaning = 'Hari Ini' WHERE meaning = 'Today';
UPDATE public.item_meanings SET meaning = 'Bersama' WHERE meaning = 'Together';
UPDATE public.item_meanings SET meaning = 'Besok' WHERE meaning = 'Tomorrow';
UPDATE public.item_meanings SET meaning = 'Terlalu Banyak' WHERE meaning = 'Too Much';
UPDATE public.item_meanings SET meaning = 'Topik' WHERE meaning = 'Topic';
UPDATE public.item_meanings SET meaning = 'Kota' WHERE meaning = 'Town';
UPDATE public.item_meanings SET meaning = 'Kereta' WHERE meaning = 'Train';
UPDATE public.item_meanings SET meaning = 'Terjemahan' WHERE meaning = 'Translation';
UPDATE public.item_meanings SET meaning = 'Transportasi' WHERE meaning = 'Transportation';
UPDATE public.item_meanings SET meaning = 'Perjalanan' WHERE meaning = 'Trip';
UPDATE public.item_meanings SET meaning = 'Kebenaran' WHERE meaning = 'Truth';
UPDATE public.item_meanings SET meaning = 'Dua Orang' WHERE meaning = 'Two People';
UPDATE public.item_meanings SET meaning = 'Payung' WHERE meaning = 'Umbrella';
UPDATE public.item_meanings SET meaning = 'Pemahaman' WHERE meaning = 'Understanding';
UPDATE public.item_meanings SET meaning = 'Tidak Terduga' WHERE meaning = 'Unexpected';
UPDATE public.item_meanings SET meaning = 'Unit' WHERE meaning = 'Unit';
UPDATE public.item_meanings SET meaning = 'Universitas' WHERE meaning = 'University';
UPDATE public.item_meanings SET meaning = 'Tidak Biasa' WHERE meaning = 'Unusual';
UPDATE public.item_meanings SET meaning = 'Liburan' WHERE meaning = 'Vacation';
UPDATE public.item_meanings SET meaning = 'Berbagai' WHERE meaning = 'Various';
UPDATE public.item_meanings SET meaning = 'Desa' WHERE meaning = 'Village';
UPDATE public.item_meanings SET meaning = 'Kunjungi' WHERE meaning = 'Visit';
UPDATE public.item_meanings SET meaning = 'Sukarelawan' WHERE meaning = 'Volunteer';
UPDATE public.item_meanings SET meaning = 'Air' WHERE meaning = 'Water';
UPDATE public.item_meanings SET meaning = 'Cuaca' WHERE meaning = 'Weather';
UPDATE public.item_meanings SET meaning = 'Lemah' WHERE meaning = 'Weak';
UPDATE public.item_meanings SET meaning = 'Selamat Datang' WHERE meaning = 'Welcome';
UPDATE public.item_meanings SET meaning = 'Gaya Barat' WHERE meaning = 'Western Style';
UPDATE public.item_meanings SET meaning = 'Kapan' WHERE meaning = 'When';
UPDATE public.item_meanings SET meaning = 'Di mana' WHERE meaning = 'Where';
UPDATE public.item_meanings SET meaning = 'Musim Dingin' WHERE meaning = 'Winter';
UPDATE public.item_meanings SET meaning = 'Khawatir' WHERE meaning = 'Worry';
UPDATE public.item_meanings SET meaning = 'Penulis' WHERE meaning = 'Writer';
UPDATE public.item_meanings SET meaning = 'Kemarin' WHERE meaning = 'Yesterday';
UPDATE public.item_meanings SET meaning = 'Muda' WHERE meaning = 'Young';
UPDATE public.item_meanings SET meaning = 'Nol' WHERE meaning = 'Zero';
UPDATE public.item_meanings SET meaning = 'Mengagumkan' WHERE meaning = 'Admirable';
UPDATE public.item_meanings SET meaning = 'Antisipasi' WHERE meaning = 'Anticipation';
UPDATE public.item_meanings SET meaning = 'Kecemasan' WHERE meaning = 'Anxiety';
UPDATE public.item_meanings SET meaning = 'Lamaran' WHERE meaning = 'Application';
UPDATE public.item_meanings SET meaning = 'Biru Muda' WHERE meaning = 'Aqua Blue';
UPDATE public.item_meanings SET meaning = 'Warna Biru Muda' WHERE meaning = 'Aqua Blue Color';
UPDATE public.item_meanings SET meaning = 'Tiba di Kantor' WHERE meaning = 'Arriving At The Office';
UPDATE public.item_meanings SET meaning = 'Mengenai Saya' WHERE meaning = 'As For Me';
UPDATE public.item_meanings SET meaning = 'Sekuat Tenaga' WHERE meaning = 'As Hard As One Can';
UPDATE public.item_meanings SET meaning = 'Perlengkapan' WHERE meaning = 'Arrangements';
UPDATE public.item_meanings SET meaning = 'Pemikiran' WHERE meaning = 'Thought';

-- Final cleanup: remove any duplicates created by above operations
DELETE FROM public.item_meanings a
USING public.item_meanings b
WHERE a.item_id = b.item_id
  AND a.meaning = b.meaning
  AND a.ctid > b.ctid;
