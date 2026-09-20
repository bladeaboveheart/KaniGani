# 🦀 KaniGani (カニガニ)

**KaniGani** adalah platform pembelajaran huruf Kanji dan Kosakata Bahasa Jepang berbasis metode **Spaced Repetition System (SRS)** yang diadaptasi khusus untuk pembelajar berbahasa Indonesia. Terinspirasi dari sistem WaniKani, KaniGani mengajarkan radikal, kanji, dan kosakata secara berjenjang dari Level 1 hingga Level 60 dengan jembatan keledai (mnemonic) dalam Bahasa Indonesia.

---

## 🌟 Fitur Utama

### 1. 🧠 Sistem Pembelajaran SRS Berjenjang (60 Level)
Tingkatan SRS KaniGani dirancang berjenjang, formal, dan mudah dipahami:
- **Terkunci (Stage 0)**: Belum dipelajari atau belum memenuhi prasyarat item.
- **Pemula (Stage 1–4 / Apprentice)**: Item baru yang sedang dihafal dengan interval ulasan pendek (Pemula 1 hingga Pemula 4).
- **Lulus (Stage 5–6 / Guru)**: Item mulai melekat kuat di memori; syarat untuk membuka level berikutnya (minimal 90% kanji level saat ini mencapai status Lulus).
- **Mahir (Stage 7 / Master)**: Interval ulasan mingguan hingga bulanan.
- **Ahli (Stage 8 / Enlightened)**: Interval ulasan multi-bulan.
- **Tuntas (Stage 9 / Burned)**: Item telah dikuasai penuh dan keluar dari antrean ulasan aktif.

### 2. 📚 Pustaka Kamus Terpadu & Minimalis
- **Kamus Radikal (Bushu)**: Pelajari komponen dasar pembentuk huruf Kanji lengkap dengan visual SVG kustom.
- **Kamus Kanji**: Cara baca terstruktur dalam tabel 3 kolom (*On'yomi*, *Kun'yomi*, dan *Nanori*), penanda bacaan utama (*Utama*), jembatan keledai visual, serta daftar radikal pembentuknya.
- **Kamus Kosakata**: Ribuan perbendaharaan kata dengan cara baca kana, makna, dan contoh kalimat kontekstual dalam Bahasa Indonesia.
- **Audio Pengucapan Asli**: Pemutar audio terintegrasi pada kosakata dengan pilihan pengisi suara pria (*Kenichi*) dan wanita (*Kyoko*).
- **Desain Kartu Dinamis & Minimalis**: Format kartu terpusat dengan karakter besar, bacaan kana, dan arti kata yang lebarnya fleksibel tanpa terpotong (*no text truncation*).
- **Pencarian Global Cepat**: Pencarian instan seluruh radikal, kanji, dan kosakata melalui modal pencarian di Navbar (`Ctrl+K` / ikon kaca pembesar).

### 3. 🎯 Engine Kuis & Pembelajaran Interaktif
- **Mode Lesson**: Pembelajaran batch terstruktur (5 item per batch) yang dapat di-*interleave* (campuran radikal, kanji, kosakata), dilengkapi slide mnemonik sebelum kuis.
- **Mode Review**: Ulasan berkala dengan deteksi salah ketik (*almost correct*), konversi otomatis romaji ke hiragana via Wanakana, fitur *Wrap Up*, dan shortcut keyboard (`Enter`, `Space`, `F` untuk buka drawer info).
- **Session Summary**: Tampilan ringkasan hasil belajar dengan persentase akurasi, perolehan XP, dan opsi lanjut ke batch berikutnya.

### 4. 📊 Dashboard & Analitik Belajar
- **Level Progression Tracker**: Menampilkan kemajuan kelulusan kanji level saat ini secara visual (syarat 90% kanji lulus ke tahap Lulus/Tahap 5 untuk naik level).
- **Distribusi SRS 5 Tahap**: Grafik visual interaktif pembagian item aktif di setiap tahap (*Pemula*, *Lulus*, *Mahir*, *Ahli*, *Tuntas*).
- **24-Hour Review Forecast**: Jadwal perkiraan item yang akan jatuh tempo dalam 24 jam ke depan.
- **Activity Heatmap & Leaderboard**: Kalender aktivitas harian (jumlah ulasan, lesson baru, durasi belajar) dan papan peringkat pengguna.

### 5. 🩸 Pelacak Item Kerap Keliru (Leech Tracker)
- **Kalkulasi Skor Leech Standar WaniKani**: $\text{Skor} = \frac{\text{incorrect\_count}}{\max(1, \text{current\_streak})^{1.5}}$ untuk mengidentifikasi item yang sering lupa dan sulit naik level.
- **Severity Badge**: Pengelompokan visual tingkat keparahan (*Kritis*, *Waspada*, *Minor*).
- **Modal Daftar Lengkap**: Fitur pencarian, pemfilteran berdasarkan tipe item (Radikal, Kanji, Kosakata), dan pengurutan cerdas (skor leech, total kesalahan, akurasi).
- **Sesi Latihan Kilat (Cram Quiz)**: Mode latihan mandiri (`/review?mode=leech`) untuk melatih item-item lintah secara intensif tanpa memengaruhi tingkatan SRS resmi pengguna.
- **Sinkronisasi Otomatis WaniKani**: Sinkronisasi riwayat `/review_statistics` dari akun WaniKani resmi pengguna ke database KaniGani.

### 6. 🧪 KaniGani Lab & Mode Pengembang
- **Mode Beta Tester**: Akses tombol percepat antrean review (*instant due*) untuk keperluan pengujian SRS (hingga tahap Lulus).
- **Dev Mode Tools**: Shortcut `G` untuk mengaktifkan autofill kunci jawaban pengujian dan alat inspeksi progres admin.

---

## 🛠️ Tech Stack

- **Framework**: [Next.js 16 (App Router)](https://nextjs.org/)
- **UI & Styling**: [React 19](https://react.dev/), [Tailwind CSS v4](https://tailwindcss.com/), [Lucide React](https://lucide.dev/)
- **State Management**: [Zustand](https://github.com/pmndrs/zustand)
- **Input Converter**: [Wanakana](https://wanakana.com/) (IME Romaji-to-Kana otomatis)
- **Database & Auth**: [Supabase](https://supabase.com/) (PostgreSQL, Row Level Security, Auth)
- **Testing**: [Vitest](https://vitest.dev/)
- **Language**: [TypeScript](https://www.typescriptlang.org/)

---

## 🚀 Memulai Proyek

### 1. Prasyarat
- [Node.js](https://nodejs.org/) versi 20 atau lebih baru
- Akun [Supabase](https://supabase.com/)

### 2. Kloning Repositori
```bash
git clone https://github.com/bladeaboveheart/KaniGani.git
cd KaniGani
```

### 3. Instal Dependensi
```bash
npm install
```

### 4. Konfigurasi Environment Variable
Buat file `.env.local` di direktori utama:
```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project-id.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-anon-key
```

### 5. Setup Database Supabase
Jalankan file-file SQL di folder `sql/` pada Supabase SQL Editor:
1. Skema tabel dan fungsi RLS (`sql/fix_rls_policies.sql`, `sql/add_user_level_and_leaderboard.sql`, dsb.)
2. Seed data materi Level 1 sampai 60 (`sql/seed_level1.sql` s/d `sql/seed_level60.sql`)

### 6. Jalankan Pengujian
```bash
# Menjalankan unit test
npm test

# Menjalankan pemeriksaan tipe TypeScript
npx tsc --noEmit
```

### 7. Jalankan Server Pengembangan
```bash
npm run dev
```
Buka [http://localhost:3000](http://localhost:3000) di browser.

---

## 📁 Struktur Direktori

```
src/
├── app/                  # Next.js App Router (Dashboard, Radical, Kanji, Vocab, Lesson, Review, Admin, Settings)
├── components/           # Komponen React modular
│   ├── audio/            # AudioPlayerButton (suara Kyoko & Kenichi)
│   ├── dictionary/       # ItemCard, ItemDetailModal, ItemFullPageView, SimilarKanjiSection, LevelTierBar, LevelGroupSection
│   ├── dashboard/        # LevelProgress, HourlySchedule, SrsDistribution, HeatmapCard, Leaderboard
│   ├── search/           # GlobalSearchModal
│   ├── quiz/             # QuizHeader, QuizInput, QuizFeedback, QuizSummaryView, InfoDrawer
│   └── admin/            # Manajemen kamus & pengguna
├── hooks/                # Custom React hooks (useDictionaryItems, useDashboardData, useQuizShortcuts, etc.)
├── lib/                  # Utilities, Types, SRS logic (srs.ts, levelLogic.ts, dateUtils.ts, supabase.ts)
├── services/             # Supabase queries & data access layer (itemsService, progressService, statsService, profileService)
└── store/                # Zustand quiz session store (useQuizStore.ts)
```

---

## 📄 Lisensi
Proyek ini dibuat untuk tujuan edukasi dan pembelajaran bahasa Jepang di Indonesia.
