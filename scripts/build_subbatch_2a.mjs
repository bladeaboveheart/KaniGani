import fs from 'fs';

const rawItems = JSON.parse(fs.readFileSync('scratch/batch2_raw_items.json', 'utf8'));

// Helper to sanitize and normalize
function cleanStr(s) {
  return (s || '').trim();
}

function toSlug(s) {
  return s
    .toLowerCase()
    .replace(/[^\w\s-]/g, '')
    .trim()
    .replace(/\s+/g, '-');
}

// Complete manual verified dictionary for Levels 21-25 (242 items)
export const dictionary2A = {
  // === LEVEL 21 ===
  // Kanji
  "件": { primary: "Kasus", alts: ["Perkara", "Masalah", "Urusan", "Matter", "Affair"] },
  "任": { primary: "Tanggung Jawab", alts: ["Tugas", "Kewajiban", "Amanah", "Duty"] },
  "判": { primary: "Menilai", alts: ["Cap", "Menghakimi", "Cap Segel", "Judge"] },
  "断": { primary: "Memutus", alts: ["Menolak", "Memutuskan", "Memotong", "Cut Off"] },
  "条": { primary: "Pasal", alts: ["Klausul", "Syarat", "Ayat", "Clause"] },
  "派": { primary: "Fraksi", alts: ["Aliran", "Sekte", "Kelompok", "Sect", "Faction"] },
  "済": { primary: "Selesai", alts: ["Lunas", "Beres", "Tamat", "Come To An End"] },
  "省": { primary: "Kementerian", alts: ["Introspeksi", "Departemen", "Menghemat", "Conserve", "Ministry"] },
  "素": { primary: "Unsur", alts: ["Elemen", "Bahan", "Polos", "Element"] },
  "総": { primary: "Total", alts: ["Keseluruhan", "Semua", "Umum", "Whole"] },
  "責": { primary: "Menyalahkan", alts: ["Tanggung Jawab", "Menuntut", "Blame", "Responsibility"] },
  "資": { primary: "Modal", alts: ["Sumber Daya", "Dana", "Aset", "Resources"] },
  "餌": { primary: "Pakan", alts: ["Umpan", "Pakan Hewan", "Makanan Hewan", "Feed", "Bait"] },
  // Vocabulary
  "いい加減にしろ": { primary: "Hentikan", alts: ["Cukup", "Jangan Keterlaluan", "Sudahi", "Cut It Out"] },
  "乱す": { primary: "Mengacaukan", alts: ["Merusak Ketertiban", "Membuat Kacau", "To Put In Disorder"] },
  "事件": { primary: "Peristiwa", alts: ["Kasus", "Insiden", "Kejadian", "Incident", "Case"] },
  "企てる": { primary: "Merencanakan", alts: ["Merancang", "Berniat", "To Plan"] },
  "務める": { primary: "Bertugas Sebagai", alts: ["Menjabat", "Bekerja Sebagai", "Menjabat Sebagai", "To Work As"] },
  "埋め合わせる": { primary: "Menebus", alts: ["Mengganti Rugi", "Menambal", "Kompensasi", "To Compensate For"] },
  "増える": { primary: "Bertambah", alts: ["Meningkat", "Membanyak", "To Increase"] },
  "増加": { primary: "Peningkatan", alts: ["Pertambahan", "Kenaikan", "Increase"] },
  "外れ": { primary: "Meleset", alts: ["Zonk", "Tidak Kena", "Pinggiran", "A Miss"] },
  "強制": { primary: "Pemaksaan", alts: ["Wajib", "Paksaan", "Komparasi", "Forcing", "Compulsion"] },
  "挙がる": { primary: "Terangkat", alts: ["Disebutkan", "Dicalonkan", "To Be Raised"] },
  "検問する": { primary: "Memeriksa", alts: ["Merazia", "Mengecek", "To Inspect"] },
  "混乱する": { primary: "Kacau", alts: ["Panik", "Bingung", "Kebingungan", "To Be Confused"] },
  "目覚める": { primary: "Terbangun", alts: ["Sadar", "Bangun", "Terjaga", "To Wake Up"] },
  "省く": { primary: "Memangkas", alts: ["Melewatkan", "Menghilangkan", "Menghapus", "To Omit"] },
  "立ち去る": { primary: "Pergi", alts: ["Meninggalkan Tempat", "Berlalu", "To Leave"] },
  "結ぶ": { primary: "Mengikat", alts: ["Menjalin", "Menyambung", "To Tie", "To Connect"] },
  "羨む": { primary: "Iri", alts: ["Cemburu", "Iri Hati", "Dengki", "To Envy"] },
  "設ける": { primary: "Mendirikan", alts: ["Menyediakan", "Membangun", "Menyiapkan", "To Establish"] },
  "設定する": { primary: "Mengatur", alts: ["Menyetel", "Menetapkan", "Setting", "To Set"] },
  "認める": { primary: "Mengakui", alts: ["Menyetujui", "Mengizinkan", "To Acknowledge", "To Admit"] },
  "説得する": { primary: "Membujuk", alts: ["Meyakinkan", "Persuasi", "To Persuade"] },
  "責める": { primary: "Menyalahkan", alts: ["Menuntut", "Mengkritik", "Menegur", "To Blame"] },
  "貰う": { primary: "Menerima", alts: ["Mendapatkan", "Diberi", "To Receive"] },
  "資料": { primary: "Dokumen", alts: ["Bahan Data", "Data", "Materi", "Bahan", "Material"] },
  "返済": { primary: "Pelunasan", alts: ["Pembayaran Kembali", "Cicilan", "Pengembalian", "Repayment"] },

  // === LEVEL 22 ===
  // Kanji
  "副": { primary: "Wakil", alts: ["Sekunder", "Tambahan", "Vice", "Side"] },
  "勢": { primary: "Kekuatan", alts: ["Daya", "Momentum", "Tenaga", "Force"] },
  "吸": { primary: "Menghisap", alts: ["Menghirup", "Suck", "Inhale"] },
  "姿": { primary: "Sosok", alts: ["Bentuk Tubuh", "Rupa", "Figure", "Appearance"] },
  "寝": { primary: "Tidur", alts: ["Berbaring", "Lie Down", "Sleep"] },
  "態": { primary: "Kondisi", alts: ["Sikap", "Bentuk", "Wujud", "Appearance", "State"] },
  "提": { primary: "Mengajukan", alts: ["Mengusulkan", "Menyajikan", "Present", "Submit"] },
  "示": { primary: "Menunjukkan", alts: ["Memperlihatkan", "Menandakan", "Indicate", "Show"] },
  "策": { primary: "Siasat", alts: ["Rencana", "Strategi", "Plan"] },
  "脱": { primary: "Melepas", alts: ["Menanggalkan", "Lepas", "Kabur", "Undress", "Escape"] },
  "観": { primary: "Pandangan", alts: ["Menonton", "Melihat", "Sudut Pandang", "View"] },
  "評": { primary: "Menilai", alts: ["Mengkritik", "Evaluasi", "Kritik", "Evaluate"] },
  "過": { primary: "Melampaui", alts: ["Melewati", "Kelewat", "Surpass"] },
  // Vocabulary
  "一応": { primary: "Untuk Sementara", alts: ["Setidaknya", "Untuk Saat Ini", "Kurang Lebih", "For Now", "Just In Case"] },
  "不機嫌": { primary: "Cemberut", alts: ["Bad Mood", "Murung", "Kesal", "Bad Mood", "Grumpy"] },
  "倒れる": { primary: "Tumbang", alts: ["Roboh", "Jatuh", "Pingsan", "To Collapse", "To Fall"] },
  "刺さる": { primary: "Tertusuk", alts: ["Menancap", "Tertikam", "To Pierce Into", "To Stick In"] },
  "勢い": { primary: "Momentum", alts: ["Daya", "Kekuatan", "Semangat", "Force", "Momentum"] },
  "勢力": { primary: "Pengaruh", alts: ["Kekuatan Pengaruh", "Dominasi", "Kekuasaan", "Influence", "Force"] },
  "反応": { primary: "Reaksi", alts: ["Tanggapan", "Respon", "Reaction", "Response"] },
  "吸う": { primary: "Menghisap", alts: ["Menghirup", "Merokok", "To Smoke", "To Suck", "To Inhale"] },
  "営む": { primary: "Menjalankan Usaha", alts: ["Mengelola", "Berbisnis", "To Run A Business"] },
  "圧倒する": { primary: "Menguasai", alts: ["Memukau", "Menaklukkan", "To Overwhelm"] },
  "変態": { primary: "Mesum", alts: ["Metamorfosis", "Penyimpangan", "Pervert", "Transformation"] },
  "失態": { primary: "Blunder", alts: ["Kecerobohan", "Kesalahan", "Aib", "Disgrace"] },
  "姿勢": { primary: "Postur", alts: ["Postur Tubuh", "Sikap", "Pendirian", "Posture", "Attitude"] },
  "嫌味": { primary: "Sindiran", alts: ["Sarkasme", "Ucapan Menyakitkan", "Sarcasm", "Hurtful Words"] },
  "寝る": { primary: "Tidur", alts: ["Berbaring", "Merebahkan Diri", "To Sleep", "To Lie Down"] },
  "寝坊": { primary: "Kesiangan", alts: ["Bangun Terlambat", "Oversleeping"] },
  "対応": { primary: "Penanganan", alts: ["Merespons", "Pelayanan", "Response", "Dealing With"] },
  "提出": { primary: "Pengajuan", alts: ["Pengumpulan", "Penyerahan", "Submission"] },
  "提案": { primary: "Usulan", alts: ["Saran", "Proposal", "Proposition", "Suggestion"] },
  "案外": { primary: "Tak Disangka", alts: ["Di Luar Dugaan", "Ternyata", "Unexpectedly"] },
  "混む": { primary: "Padat", alts: ["Penuh Sesak", "Macet", "Ramai", "To Be Crowded"] },
  "確かめる": { primary: "Memastikan", alts: ["Mengonfirmasi", "Mengecek", "To Make Sure Of", "To Confirm"] },
  "素敵": { primary: "Menawan", alts: ["Bagus Sekali", "Hebat", "Indah", "Lovely", "Wonderful"] },
  "経つ": { primary: "Berlalu", alts: ["Lewat", "Berjalan (Waktu)", "To Pass", "To Elapse"] },
  "結び付く": { primary: "Terhubung", alts: ["Terkait Erat", "Tersambung", "To Be Connected"] },
  "脱字": { primary: "Huruf Hilang", alts: ["Typo", "Karakter Kurang", "Omitted Character"] },
  "被る": { primary: "Mengenakan", alts: ["Menanggung", "Memakai", "To Put On", "To Wear"] },
  "観る": { primary: "Menonton", alts: ["Menyaksikan", "Melihat", "To View", "To Watch"] },
  "過ぎる": { primary: "Melampaui Batas", alts: ["Berlebihan", "Kelewat", "To Pass", "To Be Too Much"] },
  "震える": { primary: "Gemetar", alts: ["Menggigil", "Berdasar", "To Shake", "To Shiver"] },
  "非難する": { primary: "Mengecam", alts: ["Mencela", "Menyalahkan", "To Criticize", "To Blame"] },
  "面倒臭い": { primary: "Merepotkan", alts: ["Sangat Merepotkan", "Mager", "Malas", "Troublesome", "Annoying"] },
  "飛ばす": { primary: "Menerbangkan", alts: ["Melompati", "Melewatkan", "To Let Something Fly", "To Skip"] },

  // === LEVEL 23 ===
  // Kanji
  "割": { primary: "Membagi", alts: ["Membelah", "Porsi", "Divide"] },
  "呼": { primary: "Memanggil", alts: ["Mengundang", "Menyapa", "Call"] },
  "張": { primary: "Membentangkan", alts: ["Meregangkan", "Memasang", "Stretch"] },
  "演": { primary: "Melakonkan", alts: ["Memperagakan", "Pentas", "Acting", "Perform"] },
  "現": { primary: "Masa Kini", alts: ["Menampakkan Diri", "Muncul", "Sekarang", "Present Time", "Appear"] },
  "看": { primary: "Merawat", alts: ["Mengawasi", "Melihat", "Watch Over"] },
  "突": { primary: "Menusuk", alts: ["Tiba-tiba", "Menerjang", "Stab", "Sudden"] },
  "裁": { primary: "Mengadili", alts: ["Menilai", "Memotong", "Judge"] },
  // Radicals
  "交": { primary: "Campur", alts: ["Persimpangan", "Mix"] },
  "鬼": { primary: "Oni", alts: ["Iblis", "Iblis Jepang", "Demon", "Ogre"] },
  // Vocabulary
  "〜宅": { primary: "Kediaman", alts: ["Rumah", "Rumah Tinggal", "House", "Home"] },
  "作用": { primary: "Efek", alts: ["Cara Kerja", "Reaksi", "Pengaruh", "Action", "Operation"] },
  "保護する": { primary: "Melindungi", alts: ["Melestarikan", "Menjaga", "To Conserve", "To Protect"] },
  "公社": { primary: "Perum", alts: ["Badan Usaha Publik", "BUMN", "Perusahaan Negara", "Government-Run Company"] },
  "割る": { primary: "Membelah", alts: ["Memecahkan", "Membagi", "To Divide", "To Split"] },
  "加わる": { primary: "Bertambah", alts: ["Ikut Bergabung", "Masuk", "To Be Added To", "To Join In"] },
  "効果": { primary: "Khasiat", alts: ["Efek", "Hasil", "Dampak", "Effect"] },
  "反則": { primary: "Pelanggaran", alts: ["Kecurangan", "Foul", "Violation"] },
  "収まる": { primary: "Masuk Pas", alts: ["Muat", "Mereda", "Tersimpan", "To Fit Inside", "To Settle Down"] },
  "台詞": { primary: "Dialog", alts: ["Naskah Dialog", "Kalimat", "Lines", "Remarks"] },
  "叶える": { primary: "Mengabulkan", alts: ["Mewujudkan", "Memenuhi", "To Grant", "To Fulfill"] },
  "吸血鬼": { primary: "Vampir", alts: ["Drakula", "Penghisap Darah", "Vampire"] },
  "呼ぶ": { primary: "Memanggil", alts: ["Mengundang", "To Call"] },
  "埋まる": { primary: "Terkubur", alts: ["Tertimbun", "Terisi", "Penuh", "To Be Buried"] },
  "増やす": { primary: "Menambah", alts: ["Memperbanyak", "Meningkatkan", "To Increase"] },
  "導く": { primary: "Membimbing", alts: ["Menuntun", "Mengarahkan", "To Lead", "To Guide"] },
  "張る": { primary: "Membentangkan", alts: ["Memasang", "Meregangkan", "To Stretch", "To Spread"] },
  "心得る": { primary: "Memahami", alts: ["Menginsafi", "Menyadari", "To Know", "To Understand"] },
  "挙げる": { primary: "Mengangkat", alts: ["Memberi Contoh", "Menyebutkan", "To Raise", "To Cite"] },
  "断つ": { primary: "Memutus", alts: ["Menghentikan", "Menyudahi", "To Cut Off", "To Quit"] },
  "有職": { primary: "Bekerja", alts: ["Berpenghasilan", "Memiliki Pekerjaan", "Employed", "Having A Job"] },
  "法則": { primary: "Hukum Alam", alts: ["Kaidah", "Prinsip", "Physical Law", "Law"] },
  "混じる": { primary: "Bercampur", alts: ["Terbaur", "Tercampur", "To Be Mixed In"] },
  "済む": { primary: "Selesai", alts: ["Beres", "Tuntas", "To Be Finished", "To Be Done"] },
  "演ずる": { primary: "Memerankan", alts: ["Melakonkan", "Mementaskan", "To Perform", "To Play"] },
  "現在": { primary: "Masa Kini", alts: ["Sekarang", "Saat Ini", "Present", "Current"] },
  "現場": { primary: "Lokasi Kejadian", alts: ["TKP", "Lokasi Proyek", "Tempat Kerja", "Scene", "Workplace"] },
  "町外れ": { primary: "Pinggiran Kota", alts: ["Ujung Kota", "Pinggiran", "Outskirts"] },
  "皮革": { primary: "Kulit Olahan", alts: ["Kulit Samakan", "Kulit", "Leather", "Hides"] },
  "秀でる": { primary: "Unggul", alts: ["Menonjol", "Istimewa", "To Excel", "To Surpass"] },
  "自ら": { primary: "Diri Sendiri", alts: ["Secara Pribadi", "Sendiri", "Oneself", "Personally"] },
  "自宅": { primary: "Rumah Sendiri", alts: ["Kediaman Pribadi", "Rumah Pribadi", "One's Home"] },
  "裁く": { primary: "Mengadili", alts: ["Menghakimi", "Memutuskan Perkara", "To Judge"] },
  "裁判": { primary: "Pengadilan", alts: ["Sidang Pengadilan", "Peradilan", "Trial"] },

  // === LEVEL 24 ===
  // Kanji
  "供": { primary: "Persembahan", alts: ["Pengiring", "Sesajen", "Offer", "Accompany"] },
  "審": { primary: "Meneliti", alts: ["Mengadili", "Meninjau", "Judge", "Examine"] },
  "届": { primary: "Mengantar", alts: ["Menyampaikan", "Kirim", "Deliver"] },
  "展": { primary: "Memamerkan", alts: ["Mengembangkan", "Bentang", "Expand", "Exhibit"] },
  "庁": { primary: "Badan Pemerintah", alts: ["Kantor Pemerintah", "Instansi", "Agency"] },
  "担": { primary: "Memikul", alts: ["Mengemban", "Menanggung", "Carry", "Bear"] },
  "載": { primary: "Memuat", alts: ["Menerbitkan", "Menaruh", "Place On", "Publish"] },
  "述": { primary: "Menyatakan", alts: ["Mengemukakan", "Menyebutkan", "Mention", "State"] },
  "違": { primary: "Berbeda", alts: ["Menyimpang", "Salah", "Different"] },
  "額": { primary: "Jumlah Uang", alts: ["Dahi", "Bingkai", "Nominal", "Amount", "Forehead", "Frame"] },
  // Vocabulary
  "上述": { primary: "Tersebut di Atas", alts: ["Tertera Sebelumnya", "Above Mentioned"] },
  "不燃ゴミ": { primary: "Sampah Anorganik", alts: ["Sampah Non-Bakar", "Sampah Tak Terbakar", "Nonburnable Garbage"] },
  "供える": { primary: "Mempersembahkan", alts: ["Menyajikan Sesajen", "Sesaji", "To Make An Offering"] },
  "価値観": { primary: "Pandangan Nilai", alts: ["Prinsip Hidup", "Nilai Moral", "Values"] },
  "全額": { primary: "Jumlah Penuh", alts: ["Seluruh Biaya", "Total", "Full Amount"] },
  "典型的": { primary: "Tipikal", alts: ["Khas", "Biasa", "Typical"] },
  "原型": { primary: "Prototipe", alts: ["Bentuk Asli", "Model Awal", "Prototype"] },
  "可燃ゴミ": { primary: "Sampah Organik", alts: ["Sampah Bakar", "Sampah Mudah Terbakar", "Burnable Garbage"] },
  "営業する": { primary: "Menjalankan Usaha", alts: ["Buka Toko", "Berbisnis", "To Run A Business"] },
  "営業中": { primary: "Buka", alts: ["Sedang Buka", "Beroperasi", "Open For Business"] },
  "官庁": { primary: "Instansi Pemerintah", alts: ["Kementerian", "Kantor Pemerintah", "Government Office"] },
  "定量": { primary: "Takaran Tetap", alts: ["Dosis", "Jumlah Tertentu", "Fixed Quantity"] },
  "定額": { primary: "Tarif Tetap", alts: ["Jumlah Tetap", "Biaya Pasti", "Flat Rate", "Fixed Amount"] },
  "寝坊する": { primary: "Kesiangan", alts: ["Bangun Terlambat", "To Oversleep"] },
  "審判": { primary: "Wasit", alts: ["Pengadilan", "Keputusan Wasit", "Referee", "Judgment"] },
  "審査": { primary: "Penjurian", alts: ["Seleksi", "Audit", "Pemeriksaan", "Examination", "Inspection"] },
  "対策": { primary: "Solusi", alts: ["Langkah Penanggulangan", "Pencegahan", "Countermeasure"] },
  "届く": { primary: "Sampai", alts: ["Tiba", "Terkirim", "To Be Delivered", "To Arrive"] },
  "展開": { primary: "Perkembangan", alts: ["Gelaran", "Pemekaran", "Development", "Unfolding"] },
  "差す": { primary: "Menyinari", alts: ["Membuka Payung", "Menusuk", "To Shine"] },
  "年額": { primary: "Biaya Tahunan", alts: ["Tarif Per Tahun", "Nominal Tahunan", "Annual Amount"] },
  "応援する": { primary: "Mendukung", alts: ["Menyemangati", "Menyoraki", "To Root For", "To Cheer On"] },
  "応援団": { primary: "Pemandu Sorak", alts: ["Tim Pemandu Sorak", "Suporter", "Cheer Squad"] },
  "感触": { primary: "Sensasi Sentuhan", alts: ["Tekstur Rasa", "Rabaan", "Feel", "Touch"] },
  "担ぐ": { primary: "Memikul", alts: ["Memanggul", "Memikul di Bahu", "To Carry", "To Shoulder"] },
  "担当": { primary: "Penanggung Jawab", alts: ["Pengampu", "PIC", "In Charge"] },
  "提供": { primary: "Penyediaan", alts: ["Penawaran", "Sponsor", "Pemberian", "Offering", "Providing"] },
  "提案する": { primary: "Mengusulkan", alts: ["Menyarankan", "Mengajukan", "To Propose"] },
  "月額": { primary: "Biaya Bulanan", alts: ["Tarif Per Bulan", "Nominal Bulanan", "Monthly Amount"] },
  "果たして": { primary: "Benarkah", alts: ["Apakah Benar", "Sungguhkah", "Really"] },
  "残額": { primary: "Sisa Saldo", alts: ["Sisa Uang", "Saldo Sisa", "Balance", "Remaining Amount"] },
  "燃やす": { primary: "Membakar", alts: ["Menyalakan Api", "To Burn Something"] },
  "空腹": { primary: "Kelaparan", alts: ["Perut Kosong", "Lapar", "Hunger", "Empty Stomach"] },
  "築く": { primary: "Membangun", alts: ["Menjalin", "Mendirikan", "To Build", "To Construct"] },
  "置き場": { primary: "Tempat Penyimpanan", alts: ["Tempat Penitipan", "Tempat Menaruh", "Place To Put Something"] },
  "脱ぐ": { primary: "Melepas", alts: ["Menanggalkan Pakaian", "Buka Baju", "To Undress", "To Take Off Clothes"] },
  "触る": { primary: "Menyentuh", alts: ["Meraba", "Memegang", "To Touch"] },
  "記載": { primary: "Pencatatan", alts: ["Pemuatan Tertulis", "Pendaftaran", "Record"] },
  "記述": { primary: "Uraian", alts: ["Deskripsi", "Catatan Tertulis", "Description", "Writing Down"] },
  "載る": { primary: "Dimuat", alts: ["Tercatat", "Naik Kendaraan", "To Be Placed On", "To Be Recorded"] },
  "述べる": { primary: "Menyatakan", alts: ["Mengemukakan", "Menjelaskan", "To Mention", "To State"] },
  "通販": { primary: "Belanja Daring", alts: ["Pesan Antar", "Pesanan Pos", "Mail Order"] },
  "違う": { primary: "Berbeda", alts: ["Salah", "Keliru", "To Be Different", "To Be Wrong"] },
  "量る": { primary: "Mengukur", alts: ["Menimbang", "Takir", "To Measure", "To Weigh"] },

  // === LEVEL 25 ===
  // Kanji
  "候": { primary: "Iklim", alts: ["Musim", "Tanda", "Kandidat", "Climate", "Weather"] },
  "居": { primary: "Tinggal", alts: ["Berada", "Menetap", "Alive", "Reside"] },
  "属": { primary: "Tergabung", alts: ["Kelompok", "Afiliasi", "Belong"] },
  "巻": { primary: "Gulungan", alts: ["Jilid", "Buku", "Scroll"] },
  "抜": { primary: "Mencabut", alts: ["Melewati", "Menarik Keluar", "Pull Out"] },
  "掛": { primary: "Menggantung", alts: ["Memasang", "Mengaitkan", "Hang"] },
  "栄": { primary: "Makmur", alts: ["Berjaya", "Kejayaan", "Prosper", "Flourish"] },
  "構": { primary: "Struktur", alts: ["Rancangan", "Kerangka", "Set Up"] },
  "模": { primary: "Pola", alts: ["Bentuk Tiruan", "Model", "Imitation"] },
  "況": { primary: "Kondisi", alts: ["Situasi", "Keadaan", "Condition"] },
  "渡": { primary: "Menyeberang", alts: ["Menyerahkan", "Melintas", "Transit", "Cross"] },
  "絞": { primary: "Memeras", alts: ["Mencekik", "Menjepit", "Strangle", "Squeeze"] },
  "肥": { primary: "Gemuk", alts: ["Subur", "Pupuk", "Obese", "Fertile"] },
  "莫": { primary: "Sangat Besar", alts: ["Tak Terhingga", "Luas Sekali", "Endless", "Vast"] },
  "補": { primary: "Melengkapi", alts: ["Menambal", "Kompensasi", "Supplement"] },
  "豊": { primary: "Melimpah", alts: ["Makmur", "Kaya", "Plentiful", "Abundant"] },
  "輩": { primary: "Rekan", alts: ["Angkatan", "Golongan", "Comrade"] },
  "鮮": { primary: "Segar", alts: ["Cerah", "Segar Bugar", "Fresh"] },
  // Vocabulary
  "〜の様に": { primary: "Bagaikan", alts: ["Seperti Halnya", "Seolah-olah", "Seperti", "Similarly To", "Like"] },
  "〜毎に": { primary: "Setiap", alts: ["Setiap Kali", "Tiap-tiap", "Tiap", "For Every"] },
  "まぐれ": { primary: "Hoki", alts: ["Kebetulan Mujur", "Mujur", "Kebetulan", "Fluke"] },
  "不況": { primary: "Resesi", alts: ["Kemerosotan Ekonomi", "Kelesuan", "Recession"] },
  "今更": { primary: "Terlambat", alts: ["Sudah Terlambat", "Sekarang Baru", "Too Late"] },
  "光栄": { primary: "Kehormatan", alts: ["Suatu Kehormatan", "Merasa Terhormat", "Honor"] },
  "割れる": { primary: "Pecah", alts: ["Terbelah", "Retak", "To Be Divided", "To Break"] },
  "効く": { primary: "Manjur", alts: ["Berkhasiat", "Efektif", "Ampuh", "To Be Effective"] },
  "反響": { primary: "Gema", alts: ["Gaung", "Reaksi Publik", "Resonansi", "Echo"] },
  "収める": { primary: "Menyimpan", alts: ["Meraih", "Mendapatkan", "To Store", "To Achieve"] },
  "居る": { primary: "Ada", alts: ["Berada", "Tinggal", "To Exist", "To Be"] },
  "巻く": { primary: "Menggulung", alts: ["Membebat", "Melilit", "To Roll", "To Wind"] },
  "所属": { primary: "Afiliasi", alts: ["Keanggotaan", "Naungan", "Affiliation", "Belong To"] },
  "抜く": { primary: "Mencabut", alts: ["Melepaskan", "Melewati", "To Pull Out"] },
  "掛ける": { primary: "Menggantungkan", alts: ["Memasang", "Mengalikan", "To Hang"] },
  "構う": { primary: "Mempedulikan", alts: ["Menghiraukan", "Peduli", "To Care About", "To Mind"] },
  "涼しい": { primary: "Sejuk", alts: ["Menyegarkan", "Dingin Nyaman", "Cool", "Refreshing"] },
  "済ます": { primary: "Menuntaskan", alts: ["Menyelesaikan", "Membereskan", "To Finish", "To Settle"] },
  "渡る": { primary: "Menyeberang", alts: ["Melintasi", "To Cross"] },
  "満員": { primary: "Penuh", alts: ["Penuh Sesak", "Terjual Habis", "Full House"] },
  "現す": { primary: "Menampakkan", alts: ["Menunjukkan", "Memperlihatkan", "To Show", "To Reveal"] },
  "結構": { primary: "Cukup", alts: ["Lumayan", "Tidak Perlu", "Bagus", "Fine", "Quite"] },
  "絞める": { primary: "Mencekik", alts: ["Mengencangkan", "To Strangle"] },
  "絞る": { primary: "Memeras", alts: ["Mempersempit", "Memeras Otak", "To Wring Out", "To Squeeze"] },
  "肥満": { primary: "Obesitas", alts: ["Kegemukan", "Gemuk Sekali", "Obesity"] },
  "草原": { primary: "Padang Rumput", alts: ["Sabana", "Stepa", "Grass Field", "Meadow"] },
  "草食": { primary: "Herbivora", alts: ["Pemakan Tumbuhan", "Herbivorous"] },
  "行方": { primary: "Keberadaan", alts: ["Jejak", "Arah Tujuan", "Whereabouts"] },
  "補う": { primary: "Melengkapi", alts: ["Menutupi", "Menambal", "To Supplement"] },
  "見渡す": { primary: "Memandang Jauh", alts: ["Menatap Lepas", "Meninjau", "To Look Out Over"] },
  "豊か": { primary: "Melimpah", alts: ["Makmur", "Kaya Raya", "Rich", "Plentiful"] },
  "降ろす": { primary: "Menurunkan", alts: ["Mendaratkan", "Menurunkan Penumpang", "To Take Down", "To Lower"] },
  "響く": { primary: "Bergema", alts: ["Terngiang", "Berdampak", "To Echo", "To Reverberate"] },
  "頑張る": { primary: "Berjuang", alts: ["Berjuang Keras", "Berusaha", "Semangat", "To Persevere", "Do One's Best"] },
  "鮮やか": { primary: "Cemerlang", alts: ["Cerah Memikat", "Vivid", "Brilliant"] },
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
  const subbatch2A = rawItems.filter(i => i.level >= 21 && i.level <= 25);
  console.log(`Processing Sub-batch 2A: ${subbatch2A.length} items`);

  const processed = [];
  const missing = [];

  for (const item of subbatch2A) {
    const entry = dictionary2A[item.character];
    if (!entry) {
      missing.push(item);
      continue;
    }

    const newPrimary = entry.primary;
    const newSlug = toSlug(newPrimary);

    // Collect all alternative meanings:
    // 1. All parts of the old composite meaning
    const oldParts = item.current_meaning
      .split(/[/,]/)
      .map(s => s.replace(/\(.*?\)/g, '').trim())
      .filter(s => s.length > 0 && s.toLowerCase() !== newPrimary.toLowerCase());

    // 2. Extra dictionary alternatives
    const dictAlts = (entry.alts || []).filter(s => s.toLowerCase() !== newPrimary.toLowerCase());

    // Combine and deduplicate case-insensitively
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

  // Split by Level into 5 SQL parts
  for (let lvl = 21; lvl <= 25; lvl++) {
    const partItems = processed.filter(i => i.level === lvl);
    const partNum = lvl - 20; // 1 to 5
    const fileName = `sql/migration_batch2_part${partNum}.sql`;
    const sqlContent = generateSql(partItems, `Migration: Batch 2 Part ${partNum} (Level ${lvl})`);
    fs.writeFileSync(fileName, sqlContent, 'utf8');
    console.log(`Wrote ${partItems.length} items to ${fileName}`);
  }
}

main();
