import fs from 'fs';

const rawItems = JSON.parse(fs.readFileSync('scratch/batch2_raw_items.json', 'utf8'));

function toSlug(s) {
  return s
    .toLowerCase()
    .replace(/[^\w\s-]/g, '')
    .trim()
    .replace(/\s+/g, '-');
}

export const dictionary2B = {
  // === LEVEL 26 ===
  // Kanji
  "占": { primary: "Ramalan", alts: ["Meramal", "Menduduki", "Fortune", "Occupy"] },
  "垂": { primary: "Menjuntai", alts: ["Terkulai", "Menggantung", "Droop", "Dangle"] },
  "従": { primary: "Mematuhi", alts: ["Mengikuti", "Menuruti", "Obey", "Follow"] },
  "我": { primary: "Aku", alts: ["Diri Sendiri", "Saya", "Diriku", "I", "Me"] },
  "挫": { primary: "Terkilir", alts: ["Patah Semangat", "Keseleo", "Sprain"] },
  "捻": { primary: "Memilin", alts: ["Memutar Otak", "Memelintir", "Twist"] },
  "接": { primary: "Menempel", alts: ["Menghubungkan", "Kontak", "Adjoin"] },
  "故": { primary: "Sebab", alts: ["Almarhum", "Alasan", "Mendiang", "Reason", "Circumstance"] },
  // Vocabulary
  "お祝い": { primary: "Perayaan", alts: ["Ucapan Selamat", "Hadiah Selamat", "Selamat", "Celebration"] },
  "お菓子": { primary: "Camilan", alts: ["Makanan Ringan", "Kue", "Snack", "Sweets"] },
  "万年筆": { primary: "Pena", alts: ["Pena Bulpen", "Fountain Pen", "Pulpen"] },
  "任せる": { primary: "Mempercayakan", alts: ["Menyerahkan Kepada", "Menyerahkan", "Pasrah", "To Entrust"] },
  "何故": { primary: "Mengapa", alts: ["Kenapa", "Alasan Apa", "Why"] },
  "占い": { primary: "Ramalan", alts: ["Meramal Nasib", "Astrologi", "Fortune Telling"] },
  "占める": { primary: "Menduduki", alts: ["Mengambil Porsi", "Menguasai", "To Occupy"] },
  "差し上げる": { primary: "Memberikan", alts: ["Mempersembahkan", "Menghaturkan", "To Give"] },
  "従う": { primary: "Mematuhi", alts: ["Menuruti", "Mengikuti", "To Obey"] },
  "我": { primary: "Aku", alts: ["Diriku", "Saya", "Diri Sendiri", "I", "Me"] },
  "担う": { primary: "Memikul", alts: ["Tanggung Jawab", "Memikul Beban", "To Take Responsibility", "To Bear"] },
  "拭く": { primary: "Mengelap", alts: ["Menyeka", "Membersihkan", "To Wipe"] },
  "振る": { primary: "Mengayunkan", alts: ["Melambaikan", "Memutuskan Pasangan", "Mencampakkan", "To Shake", "To Wave"] },
  "捻出": { primary: "Mengusahakan Dana", alts: ["Memeras Otak Mencari Biaya", "Mencari Dana", "Scraping Together"] },
  "捻挫": { primary: "Keseleo", alts: ["Terkilir", "Sprain"] },
  "故": { primary: "Alasan", alts: ["Oleh Karena Itu", "Sebab", "Karena", "Reason"] },
  "故意": { primary: "Sengaja", alts: ["Kesengajaan", "Disengaja", "Intentional", "Deliberate"] },
  "替わる": { primary: "Berganti", alts: ["Tertukar", "Tergantikan", "To Be Replaced"] },
  "栄える": { primary: "Makmur", alts: ["Berkembang Pesat", "Berjaya", "To Flourish", "To Prosper"] },
  "気違い": { primary: "Gila", alts: ["Tidak Waras", "Edan", "Crazy"] },
  "渡す": { primary: "Menyerahkan", alts: ["Menyeberangkan", "Memberikan", "To Hand Over"] },
  "載せる": { primary: "Memuat", alts: ["Menaruh di Atas", "Menumpangkan", "To Place On", "To Record"] },
  "造る": { primary: "Membuat", alts: ["Memproduksi", "Menyeduh", "Membangun", "To Construct", "To Brew"] },
  "過ごす": { primary: "Menghabiskan Waktu", alts: ["Melewati Hari", "Tinggal", "To Pass Time", "To Spend Time"] },
  "鉛": { primary: "Timbal", alts: ["Timah Hitam", "Lead"] },
  "間違い": { primary: "Kesalahan", alts: ["Kekeliruan", "Salah", "Mistake"] },
  "障る": { primary: "Mengganggu", alts: ["Mengganggu Kesehatan", "Merugikan", "To Irritate", "To Affect"] },
  "面接": { primary: "Wawancara", alts: ["Wawancara Kerja", "Interview", "Tes Lisan"] },

  // === LEVEL 27 ===
  // Kanji
  "就": { primary: "Menjabat", alts: ["Mulai Bekerja", "Bekerja", "Get A Position"] },
  "屈": { primary: "Tunduk", alts: ["Membungkuk", "Menyerah", "Yield"] },
  "康": { primary: "Sehat", alts: ["Damai", "Kebugaran", "Ease", "Peace"] },
  "憧": { primary: "Mengagumi", alts: ["Mendambakan", "Merindukan", "Long For", "Yearn"] },
  "招": { primary: "Mengundang", alts: ["Mengisyaratkan", "Memanggil", "Beckon", "Invite"] },
  "昇": { primary: "Naik", alts: ["Meningkat", "Terbit", "Ascend"] },
  "極": { primary: "Kutub", alts: ["Titik Puncak", "Ekstrem", "Puncak", "Extreme"] },
  "段": { primary: "Tingkatan", alts: ["Anak Tangga", "Langkah", "Steps", "Stairs"] },
  "濃": { primary: "Pekat", alts: ["Kental", "Tebal", "Dense", "Thick"] },
  "眠": { primary: "Tidur", alts: ["Mengantuk", "Terlelap", "Sleep"] },
  "睡": { primary: "Mengantuk", alts: ["Tidur", "Terlelap", "Drowsy"] },
  "端": { primary: "Ujung", alts: ["Tepi", "Pinggir", "Edge"] },
  "締": { primary: "Mengencangkan", alts: ["Menyimpulkan", "Mengikat", "Tighten"] },
  "訪": { primary: "Mengunjungi", alts: ["Bertamu", "Menjenguk", "Visit"] },
  "誘": { primary: "Mengajak", alts: ["Menggoda", "Membujuk", "Invite", "Lure"] },
  "迫": { primary: "Mendesak", alts: ["Mendekati", "Menekan", "Urge", "Coerce"] },
  "迷": { primary: "Tersesat", alts: ["Ragu-ragu", "Bimbang", "Astray", "Lost"] },
  "途": { primary: "Rute", alts: ["Jalan", "Tengah Jalan", "Perjalanan", "Route"] },
  // Vocabulary
  "お任せ": { primary: "Omakase", alts: ["Pasrah Rekomendasi Koki", "Pilihan Koki", "Serahkan Kepada Koki", "Chef's Choice"] },
  "お構いなく": { primary: "Jangan Repot-repot", alts: ["Jangan Hiraukan Saya", "Jangan Khawatir", "Don't Mind Me"] },
  "お腹が空く": { primary: "Lapar", alts: ["Perut Kosong", "Kelaparan", "To Get Hungry"] },
  "不眠症": { primary: "Insomnia", alts: ["Susah Tidur", "Gangguan Tidur"] },
  "与える": { primary: "Memberikan", alts: ["Menganugerahkan", "Menghadiahkan", "To Give", "To Grant"] },
  "中途半端": { primary: "Setengah-setengah", alts: ["Nanggung", "Belum Tuntas", "Half Finished"] },
  "先端": { primary: "Ujung Terdepan", alts: ["Mutakhir", "Canggih", "Cutting Edge", "Tip"] },
  "分解": { primary: "Pembongkaran", alts: ["Penguraian", "Dekomposisi", "Disassembling", "Breakdown"] },
  "切迫": { primary: "Genting", alts: ["Mendesak", "Darurat", "Urgency"] },
  "取り替える": { primary: "Mengganti", alts: ["Menukar", "Menggantikan", "To Replace", "To Exchange"] },
  "図る": { primary: "Mengupayakan", alts: ["Merencanakan", "Mencoba", "To Work Toward", "To Plan"] },
  "就業": { primary: "Jam Kerja", alts: ["Menjalani Pekerjaan", "Bekerja", "Working", "Employment"] },
  "就職": { primary: "Mendapatkan Pekerjaan", alts: ["Mulai Bekerja", "Masuk Kerja", "Finding Employment"] },
  "屈む": { primary: "Membungkuk", alts: ["Berjongkok", "Menunduk", "To Bend Down", "To Squat"] },
  "履歴書": { primary: "Curriculum Vitae", alts: ["Riwayat Hidup", "CV", "Resume", "Daftar Riwayat Hidup"] },
  "建前": { primary: "Tatemae", alts: ["Basa-basi", "Sikap Publik", "Etika Sosial", "Public Behavior"] },
  "従える": { primary: "Membawa Serta", alts: ["Memimpin", "Membawa Bawahan", "To Be Accompanied By"] },
  "応える": { primary: "Memenuhi", alts: ["Membalas", "Menjawab Harapan", "To Respond To", "To Live Up To"] },
  "怒鳴る": { primary: "Membentak", alts: ["Berteriak Marah", "Menghardik", "To Yell", "To Shout"] },
  "憧れる": { primary: "Mengagumi", alts: ["Mendambakan", "Mengidolakan", "To Long For", "To Admire"] },
  "抜き出す": { primary: "Mencabut Keluar", alts: ["Memilah", "Mengekstrak", "To Pull Out", "To Extract"] },
  "抜ける": { primary: "Terlepas", alts: ["Lepas", "Keluar", "Rontok", "To Come Out"] },
  "捕まえる": { primary: "Menangkap", alts: ["Memegang Erat", "Membekuk", "To Catch", "To Grab"] },
  "掛かる": { primary: "Tergantung", alts: ["Membutuhkan", "Memakan Waktu", "To Be Hung", "To Take (Time)"] },
  "昇進": { primary: "Promosi", alts: ["Kenaikan Pangkat", "Promosi Jabatan", "Promotion"] },
  "更ける": { primary: "Larut Malam", alts: ["Malam Kian Larut", "Malam Larut", "To Grow Late"] },
  "極端": { primary: "Ekstrem", alts: ["Berlebih-lebihan", "Terlalu", "Extreme"] },
  "段々": { primary: "Bertahap", alts: ["Secara Bertahap", "Berangsur-angsur", "Perlahan", "Gradually"] },
  "段階": { primary: "Tahapan", alts: ["Fase", "Tingkat", "Stage", "Phase"] },
  "濃い": { primary: "Pekat", alts: ["Kental", "Tajam", "Dense", "Thick"] },
  "究極": { primary: "Pamungkas", alts: ["Paling Utama", "Tertinggi", "Ultimate"] },
  "端": { primary: "Ujung", alts: ["Tepian", "Pinggir", "Edge", "End"] },
  "結構です": { primary: "Tidak Usah", alts: ["Terima Kasih", "Sudah Cukup", "No Thank You"] },
  "締める": { primary: "Mengencangkan", alts: ["Memakai Dasi", "Mengikat", "To Tighten", "To Tie"] },
  "締結する": { primary: "Menyepakati", alts: ["Menandatangani", "Mengikat Perjanjian", "To Conclude"] },
  "腰抜け": { primary: "Pengecut", alts: ["Lemah Nyali", "Penakut", "Coward"] },
  "見抜く": { primary: "Melihat Tembus", alts: ["Mengetahui Gelagat", "Menebak Tepat", "To See Through"] },
  "訪ねる": { primary: "Mengunjungi", alts: ["Bertamu", "Menjenguk", "To Visit"] },
  "訪問": { primary: "Kunjungan", alts: ["Bertamu", "Sowan", "Visit"] },
  "誘惑": { primary: "Godaan", alts: ["Bujukan Rayu", "Pikat", "Temptation", "Seduction"] },
  "貸し切り": { primary: "Carter", alts: ["Sewa Khusus", "Booking Penuh", "Charter", "Private Reservation"] },
  "貸す": { primary: "Meminjamkan", alts: ["Menyewakan", "To Lend", "To Rent Out"] },
  "費やす": { primary: "Menghabiskan", alts: ["Menghabiskan Waktu", "Menghabiskan Uang", "Mengeluarkan", "To Spend"] },
  "迫る": { primary: "Mendesak", alts: ["Mendekat Cepat", "Mengepung", "To Urge", "To Approach"] },
  "迷う": { primary: "Tersesat", alts: ["Bimbang", "Ragu", "To Get Lost", "To Waver"] },
  "迷子": { primary: "Anak Hilang", alts: ["Tersesat", "Anak Tersesat", "Lost Child"] },
  "迷惑": { primary: "Gangguan", alts: ["Merepotkan", "Mengganggu", "Kerepotan", "Trouble", "Nuisance"] },
  "退屈": { primary: "Membosankan", alts: ["Menjemukan", "Bosan", "Boring", "Boredom"] },
  "途中": { primary: "Di Tengah Jalan", alts: ["Saat Perjalanan", "Dalam Perjalanan", "On The Way"] },
  "間抜け": { primary: "Konyol", alts: ["Bodoh", "Teledor", "Idiot", "Dumb"] },
  "隠居する": { primary: "Pensiun", alts: ["Mengasingkan Diri", "Mundur dari Dunia", "To Retire"] },
  "頑張れ": { primary: "Semangat", alts: ["Berjuanglah", "Semangat!", "Do Your Best", "Hang In There"] },

  // === LEVEL 28 ===
  // Kanji
  "並": { primary: "Sejajar", alts: ["Berbaris", "Biasa", "Line Up", "Ordinary"] },
  "修": { primary: "Memperbaiki", alts: ["Mempelajari", "Menekuni", "Mastering", "Repair"] },
  "処": { primary: "Menangani", alts: ["Mengolah", "Mengatasi", "Deal With"] },
  "博": { primary: "Pameran", alts: ["Judi", "Luas", "Exhibition", "Doctor"] },
  "妙": { primary: "Aneh", alts: ["Menakjubkan", "Ganjil", "Peculiar"] },
  "幼": { primary: "Belia", alts: ["Masa Kanak-kanak", "Kanak-kanak", "Infancy", "Childhood"] },
  "揃": { primary: "Lengkap", alts: ["Mengumpulkan", "Kompak", "Complete"] },
  "攻": { primary: "Menyerang", alts: ["Menekuni", "Agresi", "Aggression", "Attack"] },
  "程": { primary: "Kadar", alts: ["Tingkatan", "Jarak", "Extent"] },
  "稚": { primary: "Belum Dewasa", alts: ["Kanak-kanak", "Dangkal", "Immature"] },
  "衆": { primary: "Masyarakat", alts: ["Khalayak", "Massa", "Populace"] },
  "逆": { primary: "Terbalik", alts: ["Berlawanan", "Kebalikan", "Reverse", "Opposite"] },
  // Vocabulary
  "並": { primary: "Standar", alts: ["Biasa", "Porsi Sedang", "Ordinary", "Average"] },
  "並ぶ": { primary: "Berbaris", alts: ["Mengantre", "Sejajar", "To Line Up"] },
  "並列": { primary: "Paralel", alts: ["Sejajar", "Berdampingan", "Parallel", "Side By Side"] },
  "修理": { primary: "Reparasi", alts: ["Perbaikan", "Service", "Repair"] },
  "入隊": { primary: "Wajib Militer", alts: ["Masuk Pasukan", "Masuk Dinas Militer", "Enlistment"] },
  "処分": { primary: "Pembuangan", alts: ["Sanksi Disiplin", "Hukuman", "Disposal", "Punishment"] },
  "処理": { primary: "Pemrosesan", alts: ["Penanganan", "Pengolahan", "Processing", "Handling"] },
  "前売り券": { primary: "Tiket Presale", alts: ["Beli di Muka", "Tiket Awal", "Advance Ticket"] },
  "回数券": { primary: "Kupon Tiket", alts: ["Kupon Tiket Komuter", "Bundel Tiket", "Book Of Tickets"] },
  "大衆": { primary: "Masyarakat Umum", alts: ["Publik", "Khalayak", "General Public"] },
  "妙": { primary: "Aneh", alts: ["Ganjil", "Unik", "Peculiar", "Odd"] },
  "専攻": { primary: "Jurusan", alts: ["Jurusan Kuliah", "Bidang Peminatan", "Major"] },
  "履く": { primary: "Mengenakan", alts: ["Memakai Sepatu", "Memakai Celana", "To Put On Shoes"] },
  "幼い": { primary: "Belia", alts: ["Kanak-kanak", "Polos", "Young", "Childish"] },
  "幼稚": { primary: "Kekanak-kanakan", alts: ["Dangkal", "Tergolong Anak", "Childish", "Immature"] },
  "微妙": { primary: "Ragu-ragu", alts: ["Kurang Pas", "Samar", "Halus", "Subtle", "Delicate"] },
  "揃う": { primary: "Lengkap", alts: ["Lengkap Berkumpul", "Kompak", "To Be Complete"] },
  "攻める": { primary: "Menyerang", alts: ["Menyerbu", "To Attack"] },
  "日程": { primary: "Jadwal", alts: ["Jadwal Kegiatan", "Agenda Harian", "Agenda", "Schedule"] },
  "極める": { primary: "Mendalami", alts: ["Mendalami Penuh", "Mencapai Puncak", "To Perfect", "To Reach The Peak"] },
  "潔い": { primary: "Ksatria", alts: ["Berjiwa Sportif", "Ikhlas", "Honorable", "Dignified"] },
  "無我夢中": { primary: "Tenggelam Asyik", alts: ["Lupa Diri", "Khusyuk", "Total Absorption"] },
  "独り言": { primary: "Monolog", alts: ["Bicara Sendiri", "Gumam", "Talking To Oneself"] },
  "痛む": { primary: "Terasa Sakit", alts: ["Terluka", "Nyeri", "To Ache", "To Hurt"] },
  "程": { primary: "Batasan", alts: ["Kira-kira", "Kadar", "Extent"] },
  "程度": { primary: "Derajat", alts: ["Tingkat", "Kadar", "Degree", "Extent"] },
  "解凍": { primary: "Mencairkan", alts: ["Pencairan", "Ekstrak File", "Thawing", "Unzip"] },
  "身振り": { primary: "Gestur", alts: ["Bahasa Tubuh", "Gerak Tubuh", "Body Language", "Gesture"] },
  "逆": { primary: "Kebalikan", alts: ["Berlawanan", "Terbalik", "Reverse", "Opposite"] },
  "逆らう": { primary: "Menentang", alts: ["Melawan Arus", "Membangkang", "To Go Against", "To Oppose"] },
  "逆効果": { primary: "Bumerang", alts: ["Berdampak Terbalik", "Efek Berlawanan", "Opposite Effect", "Counterproductive"] },
  "逆説": { primary: "Paradoks", alts: ["Kontradiksi", "Paradox"] },
  "進撃": { primary: "Penyerbuan", alts: ["Menyerbu Maju", "Serangan Kilat", "Advance", "Charge"] },
  "降る": { primary: "Turun", alts: ["Turun Hujan", "Turun Salju", "To Fall"] },
  "限度": { primary: "Batas", alts: ["Batas Maksimal", "Limit"] },

  // === LEVEL 29 ===
  // Kanji
  "促": { primary: "Mendorong", alts: ["Mendesak", "Memicu", "Urge"] },
  "催": { primary: "Menyelenggarakan", alts: ["Mengadakan", "Sponsor"] },
  "杯": { primary: "Cangkir", alts: ["Gelas", "Takaran Minuman", "Cup Of Liquid"] },
  "江": { primary: "Muara", alts: ["Teluk Kecil", "Ceruk", "Inlet", "Bay"] },
  "督": { primary: "Mengawasi", alts: ["Memimpin", "Mengarahkan", "Direct", "Supervise"] },
  "臣": { primary: "Menteri", alts: ["Abdi Negara", "Pelayan", "Servant", "Retainer"] },
  "詰": { primary: "Menjejalkan", alts: ["Mengisi Penuh", "Mengemas", "Stuffed"] },
  "請": { primary: "Memohon", alts: ["Meminta", "Mengajukan", "Request"] },
  "雄": { primary: "Jantan", alts: ["Perkasa", "Gagah", "Male", "Brave"] },
  // Radicals
  "玄": { primary: "Misterius", alts: ["Gelap", "Mysterious"] },
  // Vocabulary
  "一杯": { primary: "Secangkir", alts: ["Satu Cangkir", "Penuh", "Banyak", "One Cup", "Full"] },
  "三杯": { primary: "Tiga Cangkir", alts: ["Tiga Gelas", "Three Cups"] },
  "主催": { primary: "Penyelenggara", alts: ["Tuan Rumah Acara", "Penyelenggaraan", "Host", "Sponsor"] },
  "二杯": { primary: "Dua Cangkir", alts: ["Dua Gelas", "Two Cups"] },
  "促す": { primary: "Mendorong", alts: ["Mengingatkan", "Merangsang", "Menganjurkan", "To Urge", "To Prompt"] },
  "催促": { primary: "Tagihan", alts: ["Menagih", "Mendesak", "Mengingatkan", "Urge", "Demand"] },
  "催告": { primary: "Somasi", alts: ["Surat Teguran", "Pemberitahuan Resmi", "Notice"] },
  "入り江": { primary: "Teluk Kecil", alts: ["Ceruk Pantai", "Inlet", "Cove"] },
  "申請": { primary: "Permohonan", alts: ["Pengajuan Permohonan", "Pendaftaran", "Aplikasi", "Application"] },
  "監督": { primary: "Sutradara", alts: ["Manajer", "Pelatih Kepala", "Pengawas", "Director", "Supervision"] },
  "直航": { primary: "Penerbangan Langsung", alts: ["Pelayaran Langsung", "Langsung", "Nonstop Flight", "Direct Voyage"] },
  "腹が立つ": { primary: "Marah", alts: ["Kesal", "Naik Darah", "Dongkol", "To Get Angry", "To Get Mad"] },
  "英雄": { primary: "Pahlawan", alts: ["Ksatria", "Hero"] },
  "見極める": { primary: "Memastikan", alts: ["Memastikan Kebenaran", "Menilai Tepat", "To Get To The Bottom Of"] },
  "診る": { primary: "Memeriksa Pasien", alts: ["Memeriksa", "Mendiagnosis", "To Examine A Patient"] },
  "詰める": { primary: "Menjejalkan", alts: ["Mengemas", "Bekerja Terus", "To Stuff In", "To Pack"] },
  "請ける": { primary: "Menyanggupi", alts: ["Menerima Tugas", "Mengambil Tugas", "To Take On", "To Undertake"] },
  "請求": { primary: "Penagihan", alts: ["Klaim Pembayaran", "Tagihan", "Request", "Claim"] },

  // === LEVEL 30 ===
  // Kanji
  "乏": { primary: "Langka", alts: ["Kurang", "Miskin", "Scarce"] },
  "懐": { primary: "Nostalgia", alts: ["Saku Dada", "Rasa Rindu", "Rindu", "Bosom Pocket"] },
  "押": { primary: "Mendorong", alts: ["Menekan", "Memencet", "Push"] },
  "渇": { primary: "Haus", alts: ["Kering", "Dahaga", "Dry Up", "Thirst"] },
  "濡": { primary: "Basah", alts: ["Lembap", "Wet", "Damp"] },
  "符": { primary: "Karcis", alts: ["Simbol", "Tanda", "Token"] },
  "背": { primary: "Punggung", alts: ["Tinggi Badan", "Belakang", "Back", "Height"] },
  "覧": { primary: "Melihat", alts: ["Membaca", "Meninjau", "Look At"] },
  "越": { primary: "Melampaui", alts: ["Melewati", "Menyeberang", "Go Beyond"] },
  "預": { primary: "Menitipkan", alts: ["Menabung", "Menyerahkan", "Deposit"] },
  // Radicals
  "片": { primary: "Pecahan", alts: ["Sebelah", "Serpihan", "One Sided", "Fragment"] },
  // Vocabulary
  "ご覧": { primary: "Silakan Lihat", alts: ["Melihat", "Menyaksikan", "Looking At"] },
  "バイキング": { primary: "Prasmanan", alts: ["All You Can Eat", "Buffet", "Smorgasbord"] },
  "一覧": { primary: "Daftar", alts: ["Daftar Lengkap", "Ikhtisar", "Ringkasan", "A List", "Overview"] },
  "乏しい": { primary: "Langka", alts: ["Serba Kekurangan", "Kurang", "Miskin", "Scarce"] },
  "処置": { primary: "Tindakan", alts: ["Penanganan Medis", "Perlakuan", "Treatment", "Measure"] },
  "切符": { primary: "Tiket", alts: ["Karcis", "Karcis Kereta", "Ticket"] },
  "匂う": { primary: "Berbau", alts: ["Menguarkan Bau", "Mencurigakan", "To Smell"] },
  "懐かしい": { primary: "Bernostalgia", alts: ["Dirindukan", "Bikin Kangen", "Kangen", "Nostalgic"] },
  "成程": { primary: "Pantas Saja", alts: ["Masuk Akal", "Naruhodo", "Oh Begitu", "I See"] },
  "我が〜": { primary: "Milik Kami", alts: ["Kami", "Punya Kami", "Our"] },
  "押さえる": { primary: "Menahan", alts: ["Memegang Erat", "Menekan", "To Hold Down"] },
  "押す": { primary: "Mendorong", alts: ["Menekan", "Memencet", "To Push"] },
  "更生": { primary: "Rehabilitasi", alts: ["Menata Hidup Baru", "Insaf", "Rehabilitation"] },
  "欠乏": { primary: "Kelangkaan", alts: ["Defisit", "Kekurangan", "Scarcity", "Deficiency"] },
  "浮気": { primary: "Selingkuh", alts: ["Main Mata", "Serong", "Cheat", "Affair"] },
  "渇く": { primary: "Haus", alts: ["Tenggorokan Kering", "Dahaga", "To Become Thirsty"] },
  "濡らす": { primary: "Membasahi", alts: ["Menjadikan Basah", "To Wet", "To Moisten"] },
  "玄米": { primary: "Beras Merah", alts: ["Beras Cokelat", "Pecah Kulit", "Brown Rice", "Unpolished Rice"] },
  "背": { primary: "Tinggi Badan", alts: ["Punggung", "Tinggi", "Height", "Back"] },
  "背後": { primary: "Bagian Belakang", alts: ["Di Balik Layar", "Latar Belakang", "Background"] },
  "観覧": { primary: "Menonton", alts: ["Menyaksikan Acara", "Melihat Pameran", "Viewing", "Watching"] },
  "詰まる": { primary: "Tersumbat", alts: ["Terisi Penuh", "Buntu", "Macet", "To Be Stuffed", "To Be Clogged"] },
  "越える": { primary: "Melampaui", alts: ["Melewati", "Menyeberangi", "To Go Beyond", "To Cross Over"] },
  "越権": { primary: "Penyalahgunaan Wewenang", alts: ["Melampaui Batas Kuasa", "Overstepping Authority"] },
  "退ける": { primary: "Menyingkirkan", alts: ["Menepis", "Menolak", "To Repel", "To Dismiss"] },
  "適当": { primary: "Tepat", alts: ["Cocok", "Asal-asalan", "Appropriate", "Suitable"] },
  "鉄板": { primary: "Plat Besi", alts: ["Teppan", "Pasti Sukses", "Pasti Mantap", "Iron Plate"] },
  "預ける": { primary: "Menitipkan", alts: ["Menyerahkan Sementara", "Menitip", "To Deposit", "To Entrust"] },
  "預金": { primary: "Tabungan", alts: ["Tabungan Bank", "Deposito", "Bank Deposit", "Deposit"] },
};

function escapeSql(str) {
  return (str || '').replace(/'/g, "''");
}

function generateSql(items, title) {
  let sql = `-- ${title}\n-- Total items: ${items.length}\n\nDO $$\nBEGIN\n\n`;

  for (const item of items) {
    const primaryEsc = escapeSql(item.newPrimary);
    const slugEsc = escapeSql(item.newSlug);

    sql += `  -- [${item.type.toUpperCase()}] ${item.character} (Level ${item.level})\n`;
    sql += `  UPDATE item_meanings SET meaning = '${primaryEsc}', primary_meaning = true, accepted_answer = true WHERE id = '${item.meaning_id}';\n`;
    sql += `  UPDATE items SET slug = '${slugEsc}' WHERE id = '${item.item_id}';\n`;

    for (const alt of item.alternatives) {
      const altEsc = escapeSql(alt);
      sql += `  IF NOT EXISTS (SELECT 1 FROM item_meanings WHERE item_id = '${item.item_id}' AND LOWER(TRIM(meaning)) = LOWER(TRIM('${altEsc}'))) THEN\n`;
      sql += `    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES ('${item.item_id}', '${altEsc}', false, true);\n`;
      sql += `  END IF;\n`;
    }
    sql += `\n`;
  }

  sql += `END $$;\n`;
  return sql;
}

async function main() {
  const subbatch2B = rawItems.filter(i => i.level >= 26 && i.level <= 30);
  console.log(`Processing Sub-batch 2B: ${subbatch2B.length} items`);

  const processed = [];
  const missing = [];

  for (const item of subbatch2B) {
    const entry = dictionary2B[item.character];
    if (!entry) {
      missing.push(item);
      continue;
    }

    const newPrimary = entry.primary;
    const newSlug = toSlug(newPrimary);

    const oldParts = item.current_meaning
      .split(/[/,]/)
      .map(s => s.replace(/\(.*?\)/g, '').trim())
      .filter(s => s.length > 0 && s.toLowerCase() !== newPrimary.toLowerCase());

    const dictAlts = (entry.alts || []).filter(s => s.toLowerCase() !== newPrimary.toLowerCase());

    const seen = new Set([newPrimary.toLowerCase()]);
    const alternatives = [];

    for (const alt of [...dictAlts, ...oldParts]) {
      const lower = alt.toLowerCase();
      if (!seen.has(lower)) {
        seen.add(lower);
        alternatives.push(alt);
      }
    }

    processed.push({
      item_id: item.item_id,
      meaning_id: item.meaning_id,
      character: item.character,
      level: item.level,
      type: item.type,
      newPrimary,
      newSlug,
      alternatives
    });
  }

  if (missing.length > 0) {
    console.error(`Missing dictionary entries for ${missing.length} items:`, missing.map(m => `[${m.type} L${m.level}] ${m.character}`));
    process.exit(1);
  }

  console.log(`Successfully mapped all ${processed.length} items!`);

  // Split by Level into 5 SQL parts (part 6 to 10)
  for (let lvl = 26; lvl <= 30; lvl++) {
    const partItems = processed.filter(i => i.level === lvl);
    const partNum = lvl - 20; // 6 to 10
    const fileName = `sql/migration_batch2_part${partNum}.sql`;
    const sqlContent = generateSql(partItems, `Migration: Batch 2 Part ${partNum} (Level ${lvl})`);
    fs.writeFileSync(fileName, sqlContent, 'utf8');
    console.log(`Wrote ${partItems.length} items to ${fileName}`);
  }
}

main();
