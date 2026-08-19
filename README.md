# 🦀 KaniGani (カニガニ)

**KaniGani** adalah platform pembelajaran huruf Kanji dan Kosakata Bahasa Jepang berbasis metode **Spaced Repetition System (SRS)** yang diadaptasi khusus untuk pembelajar berbahasa Indonesia. Terinspirasi dari sistem WaniKani, KaniGani mengajarkan radikal, kanji, dan kosakata secara berjenjang dari Level 1 hingga Level 60 dengan jembatan keledai (mnemonic) dalam Bahasa Indonesia.

---

## 🌟 Fitur Utama

### 1. 🧠 Sistem Pembelajaran SRS Berjenjang (60 Level)
Tingkatan SRS KaniGani bertema kepiting:
- **Terkunci (Stage 0)**: Belum dipelajari atau belum memenuhi prasyarat item.
- **Kepiting Cilik (Stage 1–4 / Apprentice)**: Item baru yang sedang dihafal dengan interval ulasan pendek.
- **Kepiting Guru (Stage 5–6 / Guru)**: Item mulai melekat kuat di memori; syarat untuk membuka level dan kanji/kosakata berikutnya.
- **Kepiting Suhu (Stage 7 / Master)**: Interval ulasan mingguan hingga bulanan.
- **Kepiting Sakti (Stage 8 / Enlightened)**: Interval ulasan multi-bulan.
- **Kepiting Rebus (Stage 9 / Burned)**: Item telah dikuasai penuh dan keluar dari antrean ulasan aktif.

### 2. 📚 Pustaka Kamus Terpadu (Radikal, Kanji, Kosakata)
- **Kamus Radikal (Bushu)**: Pelajari komponen dasar pembentuk huruf Kanji lengkap dengan visual SVG custom.
- **Kamus Kanji**: Cara baca *On'yomi* & *Kun'yomi*, makna utama & alternatif, jembatan keledai visual, serta relasi radikal pembentuknya.
- **Kamus Kosakata**: Ribuan perbendaharaan kata dengan cara baca kana, makna, dan contoh kalimat kontekstual dalam Bahasa Indonesia.
- **Pencarian & Filter Cepat**: Filter berdasarkan level (1–60) atau cari langsung berdasarkan karakter, kana, maupun arti.

### 3. 🎯 Engine Kuis & Pembelajaran Interaktif
- **Mode Lesson**: Pembelajaran batch terstruktur (5 item per batch) yang dapat di-*interleave* (campur radikal, kanji, kosakata), dilengkapi slide mnemonik sebelum kuis.
- **Mode Review**: Ulasan berkala dengan deteksi typo (*almost correct*), auto-convert romaji ke hiragana via Wanakana, fitur *Wrap Up*, dan shortcut keyboard (`Enter`, `Space`, `F` untuk buka drawer info).
- **Session Summary**: Tampilan ringkasan hasil belajar dengan persentase akurasi dan opsi lanjut batch berikutnya.

### 4. 📊 Dashboard & Analitik Belajar
- **Level Progression Tracker**: Menampilkan progres kelulusan kanji level saat ini (syarat 90% kanji lulus ke tahap Kepiting Guru untuk naik level).
- **24-Hour Review Forecast**: Jadwal perkiraan item yang akan jatuh tempo dalam 24 jam ke depan.
- **Distribusi SRS**: Grafik visual pembagian item yang sedang aktif di setiap tingkatan SRS.
- **Activity Heatmap & Leaderboard**: Kalender aktivitas harian (jumlah ulasan, lesson baru, durasi belajar) dan papan peringkat pengguna.

### 5. 🧪 KaniGani Lab & Mode Pengembang
- **Mode Beta Tester**: Akses tombol percepat antrean review (*instant due*) untuk keperluan testing SRS.
- **Dev Mode Tools**: Shortcut `G` untuk mengaktifkan autofill kunci jawaban pengujian dan alat admin.

---

## 🛠️ Tech Stack

- **Framework**: [Next.js 16 (App Router)](https://nextjs.org/)
- **UI & Styling**: [React 19](https://react.dev/), [Tailwind CSS v4](https://tailwindcss.com/), [Lucide React](https://lucide.dev/)
- **State Management**: [Zustand](https://github.com/pmndrs/zustand)
- **Input Converter**: [Wanakana](https://wanakana.com/) (IME Romaji-to-Kana otomatis)
- **Database & Auth**: [Supabase](https://supabase.com/) (PostgreSQL, Row Level Security, Auth)
- **Language**: [TypeScript](https://www.typescriptlang.org/)

---

## 🚀 Memulai Proyek

### 1. Prasyarat
- Node.js versi 20 atau lebih baru
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

### 6. Jalankan Server Pengembangan
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
│   ├── dictionary/       # ItemCard, ItemDetailModal, FilterBar, SrsLegend, LevelGroup
│   ├── dashboard/        # LevelProgress, HourlySchedule, SrsDistribution, HeatmapCard, Leaderboard
│   ├── quiz/             # QuizHeader, QuizInput, QuizFeedback, QuizSummaryView, InfoDrawer
│   └── admin/            # Manajemen kamus & pengguna
├── hooks/                # Custom React hooks (useDictionaryItems, useDashboardData, useQuizShortcuts, etc.)
├── lib/                  # Utilities, Types, SRS calculations (srs.ts, dateUtils.ts, supabase.ts)
├── services/             # Supabase queries & data access layer (itemsService, progressService, statsService, profileService)
└── store/                # Zustand quiz session store (useQuizStore.ts)
```

---

## 📄 Lisensi
Proyek ini dibuat untuk tujuan edukasi dan pembelajaran bahasa Jepang di Indonesia.
