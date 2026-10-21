<div align="center">

# 🦀 KaniGani (カニガニ)

**Platform Pembelajaran Huruf Kanji & Kosakata Bahasa Jepang Berbasis Spaced Repetition System (SRS)**  
*Didesain khusus untuk pembelajar berbahasa Indonesia — Terinspirasi dari WaniKani*

[![Next.js](https://img.shields.io/badge/Next.js-16.2.6-black?style=flat&logo=next.js)](https://nextjs.org/)
[![React](https://img.shields.io/badge/React-19.2.4-blue?style=flat&logo=react)](https://react.dev/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-v4-38bdf8?style=flat&logo=tailwindcss)](https://tailwindcss.com/)
[![Supabase](https://img.shields.io/badge/Supabase-PostgreSQL-3ecf8e?style=flat&logo=supabase)](https://supabase.com/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5-3178c6?style=flat&logo=typescript)](https://www.typescriptlang.org/)
[![Vitest](https://img.shields.io/badge/Vitest-4.1.11-fcc72b?style=flat&logo=vitest)](https://vitest.dev/)

[🇮🇩 Bahasa Indonesia](#-bahasa-indonesia) • [🇬🇧 English](#-english) • [🇯🇵 日本語](#-日本語)

</div>

---

# 🇮🇩 Bahasa Indonesia

## 📖 Tentang KaniGani

**KaniGani** adalah platform pembelajaran huruf Kanji dan Kosakata Bahasa Jepang berbasis metode ilmiah **Spaced Repetition System (SRS)** yang diadaptasi khusus untuk pembelajar berbahasa Indonesia. Terinspirasi dari sistem WaniKani, KaniGani menyajikan materi radikal, kanji, dan kosakata berjenjang dari **Level 1 hingga Level 60** dengan jembatan keledai (*mnemonic*) serta makna kontekstual dalam Bahasa Indonesia.

---

## 🌟 Fitur Unggulan

### 1. 🧠 Sistem Pembelajaran SRS Berjenjang (Level 1–60)
Sistem interval memori bertahap untuk memastikan materi berpindah ke memori jangka panjang:
- **Terkunci (Stage 0)**: Item belum dibuka atau belum memenuhi prasyarat item sebelumnya.
- **Pemula (Stage 1–4 / Apprentice)**: Item baru yang sedang dilatih dengan interval pengulangan pendek (4 jam, 8 jam, 1 hari, 2 hari).
- **Lulus (Stage 5–6 / Guru)**: Item mulai melekat kuat; syarat membuka level berikutnya adalah minimal **90% kanji level saat ini mencapai status Lulus**.
- **Mahir (Stage 7 / Master)**: Interval ulasan mingguan hingga 1 bulan.
- **Ahli (Stage 8 / Enlightened)**: Interval ulasan multi-bulan (sekitar 4 bulan).
- **Tuntas (Stage 9 / Burned)**: Item telah dikuasai sempurna dan keluar dari antrean ulasan harian.

### 2. 📚 Kurikulum Database Terstandarisasi 100%
- **Arti Utama Tunggal yang Padat & Jelas**: Seluruh 1.300+ item dari Level 1 hingga 60 telah distandarisasi memiliki satu *Primary Meaning* yang bersih tanpa garis miring (`/`) atau koma (`,`).
- **Penyimpanan Definisi Alternatif**: Makna sekunder dan sinonim resmi tetap disimpan dalam tabel relasional `item_meanings` (`accepted_answer = true`), memastikan toleransi jawaban yang luas.
- **Sinonim Kustom Pengguna (*User Synonyms*)**: Fleksibilitas menambahkan sinonim pribadi dan catatan belajar sendiri pada setiap kartu.

### 3. 🎯 Engine Kuis & Pengalaman Pengguna Modern
- **Mode Lesson**: Pembelajaran per batch (5 item per kelompok), dilengkapi visualisasi stroke/radikal, jembatan keledai, dan kuis pemahaman instan.
- **Mode Review Komprehensif**: Ulasan harian dengan validasi otomatis romaji ke hiragana via Wanakana, deteksi salah ketik (*almost correct / shake animation*), dan fitur *Wrap Up* (menyelesaikan item aktif).
- **Advanced Review (Developer Mode)**:
  - Filter kustom berdasarkan rentang level (Level 1 s/d 60) dengan preset instan.
  - Filter kategori item (Radikal, Kanji, Kosakata).
  - Penghitung jatuh tempo real-time (*due count preview*) dan URL parameter yang dapat disimpan/dibagikan.
- **Navigasi Keyboard Cepat & Pintar**:
  - `Enter`: Kirim jawaban, lanjut ke kartu berikutnya, atau otomatis fokuskan kursor ke kotak jawaban meski fokus sedang terlepas (misal setelah membuka drawer info).
  - `ArrowRight`: Lanjut ke kartu berikutnya setelah kartu terjawab.
  - `F`: Membuka/menutup laci informasi detail item (*detail drawer*).
  - `J`: Memutar ulang audio pelafalan asli.
  - `G`: (*Dev Mode*) Pengisian instan kunci jawaban untuk keperluan pengujian.

### 4. 📱 GaniKani Modern Experience (`/ganikani`)
- Antarmuka kartu bergaya modern dengan batas *top-flush* yang mulus di perangkat mobile dan desktop.
- *Inline downward detail drawer* yang rapi tanpa popup overlay yang mengganggu.
- Dukungan gestur sentuh *swipe* untuk navigasi slide materi.
- Sakelar Tema Gelap & Terang (*Dark/Light Mode*) terintegrasi di pengaturan akun.

### 5. 🩸 Pelacak Item Kerap Keliru (*Leech Tracker & Cram Quiz*)
- **Formula Standar WaniKani**: $\text{Skor} = \frac{\text{incorrect\_count}}{\max(1, \text{current\_streak})^{1.5}}$ untuk mendeteksi item yang sering salah dan menghambat progres belajar.
- **Tingkat Keparahan**: Indikator visual *Kritis*, *Waspada*, dan *Minor*.
- **Mode Latihan Kilat (*Cram Quiz*)**: Melatih kembali item-item lintah secara intensif (`/review?mode=leech`) tanpa menurunkan tahapan SRS akun.

### 6. 🔊 Audio Pelafalan Penutur Asli
- Audio berkualitas tinggi dari penutur asli Jepang untuk kosakata: suara pria (*Kenichi*) dan suara wanita (*Kyoko*).
- Tombol audio interaktif dan pemutaran otomatis opsional saat kartu berhasil dijawab.

### 7. 📊 Dasbor Analitik & Sosial
- **Level Progression Tracker**: Visualisasi progres 90% kanji yang dibutuhkan untuk naik level.
- **Distribusi SRS 5 Tahap**: Grafik visual interaktif komposisi item aktif.
- **24-Hour Review Forecast**: Jadwal proyeksi jumlah item yang akan jatuh tempo setiap jam.
- **Activity Heatmap & Leaderboard**: Kalender konsistensi belajar harian dan peringkat pembelajar.
- **Google OAuth**: Integrasi masuk cepat dan aman menggunakan akun Google via Supabase Auth.

---

## 🛠️ Tech Stack

| Kategori | Teknologi | Deskripsi |
|---|---|---|
| **Framework** | [Next.js 16 (App Router)](https://nextjs.org/) | React Server Components, Turbopack, SSR/SSG |
| **Frontend Library** | [React 19](https://react.dev/) | React 19 Actions & Hooks |
| **Styling** | [Tailwind CSS v4](https://tailwindcss.com/) | CSS-first configuration, tema gelap/terang kustom |
| **Icons** | [Lucide React](https://lucide.dev/) | Kumpulan ikon minimalis dan modern |
| **State Management** | [Zustand 5](https://github.com/pmndrs/zustand) | Global state untuk sesi kuis dan preferensi pengguna |
| **Input Converter** | [Wanakana](https://wanakana.com/) | Konversi real-time Romaji ke Hiragana/Katakana |
| **Database & Auth** | [Supabase](https://supabase.com/) | PostgreSQL, RLS, Edge Functions, OAuth Google |
| **Testing** | [Vitest 4](https://vitest.dev/) | Unit & integration testing |
| **Bahasa** | [TypeScript 5](https://www.typescriptlang.org/) | Type safety menyeluruh |

---

## 🚀 Panduan Memulai Cepat

### 1. Prasyarat
- [Node.js](https://nodejs.org/) v20.x atau lebih baru
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
Salin template konfigurasi dan sesuaikan kredensial Supabase Anda:
```bash
cp .env.example .env.local
```
Isi variabel berikut di `.env.local`:
```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project-id.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-anon-key
```

### 5. Setup Database Supabase
Jalankan file migrasi SQL di Supabase SQL Editor:
1. Skema utama dan fungsi RLS di direktori `sql/` atau `supabase/migrations/`.
2. Seed data materi kurikulum Level 1–60 (`sql/seed_level1.sql` s/d `sql/seed_level60.sql`).
3. Indeks performa review (`sql/add_review_performance_indexes.sql`).

### 6. Menjalankan Tes
```bash
# Jalankan seluruh unit test
npm test

# Periksa kesesuaian tipe TypeScript
npx tsc --noEmit
```

### 7. Menjalankan Server Pengembangan
```bash
npm run dev
```
Buka [http://localhost:3000](http://localhost:3000) pada browser Anda.

---

# 🇬🇧 English

## 📖 About KaniGani

**KaniGani** is a Japanese Kanji and Vocabulary learning platform powered by the **Spaced Repetition System (SRS)**, tailored specifically for Indonesian-speaking learners. Inspired by WaniKani, KaniGani structures its curriculum from **Level 1 to Level 60**, providing curated mnemonics, radicals, kanji, and contextual vocabulary in Indonesian.

---

## 🌟 Key Features

### 1. 🧠 Comprehensive 60-Level SRS Architecture
Calculated review intervals that reinforce memory retention over optimal decay curves:
- **Locked (Stage 0)**: Unreached items or items with unfulfilled prerequisites.
- **Apprentice (Stages 1–4)**: Newly unlocked items undergoing short interval tests (4 hours, 8 hours, 1 day, 2 days).
- **Guru (Stages 5–6)**: Solidified items; reaching Guru status on at least **90% of the current level's kanji** unlocks the subsequent level.
- **Master (Stage 7)**: Monthly review intervals.
- **Enlightened (Stage 8)**: Multi-month intervals (~4 months).
- **Burned (Stage 9)**: Fully mastered items, retired from active review queues.

### 2. 📚 100% Standardized Curriculum Database
- **Concise Primary Meanings**: Over 1,300+ items across Levels 1–60 have been rigorously standardized to feature a single, uncluttered primary definition without slashes or comma noise.
- **Relational Alternative Meanings**: Secondary definitions, accepted variations, and user-submitted synonyms are managed via relational tables (`item_meanings`), maintaining complete evaluation tolerance.
- **User Synonyms & Notes**: Add personal study notes and custom synonyms to any item card at any time.

### 3. 🎯 High-Performance Quiz Engine
- **Lesson Mode**: 5-item batch learning sessions with interactive stroke/radical visualizers, mnemonics, and review quizzes.
- **Review Mode**: Real-time Romaji-to-Kana conversion via Wanakana, typo detection with visual shake effects, and *Wrap Up* sessions.
- **Advanced Review (Developer Mode)**:
  - Custom level range selector (Levels 1–60) with instant presets.
  - Item type filters (Radicals, Kanji, Vocabulary).
  - Real-time due count forecast with shareable and reload-safe URL parameters.
- **Ergonomic Keyboard Navigation**:
  - `Enter`: Submit answer, advance to the next card, or refocus the input box when focus is lost (e.g. after opening detail drawers).
  - `ArrowRight`: Advance to next card once an answer is submitted.
  - `F`: Toggle the item information drawer.
  - `J`: Play/replay native audio pronunciation.
  - `G`: (*Dev Mode*) Instant auto-answer fill for development and testing.

### 4. 📱 GaniKani Modern Mobile & Desktop UI (`/ganikani`)
- Responsive top-flush card container optimized for handheld devices and widescreen monitors.
- Seamless inline downward collapsible detail drawers without disruptive modal overlays.
- Smooth horizontal swipe gesture support for lesson slide navigation.
- Real-time Dark and Light Mode toggle stored in user preferences.

### 5. 🩸 Leech Tracker & Cram Quiz
- **WaniKani Standard Leech Formula**: $\text{Score} = \frac{\text{incorrect\_count}}{\max(1, \text{current\_streak})^{1.5}}$ accurately flags persistent memory leeches.
- **Severity Badges**: Visual breakdown into *Critical*, *Warning*, and *Minor*.
- **Cram Quiz Mode**: Intensive practice sessions (`/review?mode=leech`) targeting leeches without affecting the user's official SRS stages.

### 6. 🔊 Native Audio Pronunciation
- Native male (*Kenichi*) and female (*Kyoko*) voice recordings for Japanese vocabulary.
- Audio buttons and configurable auto-play upon successful quiz submission.

### 7. 📊 Analytics & Social Features
- **Level Progress Tracker**: Visual progress bar tracking the 90% kanji Guru requirement.
- **5-Stage SRS Distribution**: Interactive breakdown of active items across all stages.
- **24-Hour Review Forecast**: Hourly projected review count graph.
- **Activity Heatmap & Leaderboard**: GitHub-style daily study heatmap and global user rankings.
- **Google OAuth**: Fast, secure single-sign-on using Google accounts via Supabase Auth.

---

## 🛠️ Tech Stack

- **Framework**: [Next.js 16 (App Router)](https://nextjs.org/)
- **UI & Styling**: [React 19](https://react.dev/), [Tailwind CSS v4](https://tailwindcss.com/), [Lucide React](https://lucide.dev/)
- **State Management**: [Zustand 5](https://github.com/pmndrs/zustand)
- **Input IME**: [Wanakana](https://wanakana.com/)
- **Database & Auth**: [Supabase](https://supabase.com/) (PostgreSQL, RLS, OAuth)
- **Testing**: [Vitest 4](https://vitest.dev/)
- **Type Safety**: [TypeScript 5](https://www.typescriptlang.org/)

---

## 🚀 Quick Start Guide

```bash
# 1. Clone repository
git clone https://github.com/bladeaboveheart/KaniGani.git
cd KaniGani

# 2. Install dependencies
npm install

# 3. Setup environment variables in .env.local
# NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
# NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-key

# 4. Run tests
npm test
npx tsc --noEmit

# 5. Start dev server
npm run dev
```

---

# 🇯🇵 日本語

## 📖 KaniGani (カニガニ) について

**KaniGani** は、インドネシア語話者のために設計された、**間隔反復学習システム (SRS: Spaced Repetition System)** を採用した日本語の漢字および語彙学習プラットフォームです。WaniKaniの学習メソッドにインスパイアされ、**レベル1からレベル60**までの部首・漢字・単語を、体系的なインドネシア語の記憶術（ニーモニック）とともに段階的に学習できます。

---

## 🌟 主な機能

### 1. 🧠 60段階の本格的SRS学習システム
科学的な記憶の忘却曲線に基づき、適切な間隔で復習を出題します：
- **ロック中 (Stage 0 / Locked)**: 未開放、または前提条件となる部首・漢字が未習得の項目。
- **見習い (Stage 1–4 / Apprentice)**: 短い間隔（4時間、8時間、1日、2日）で繰り返し練習する学習初期段階。
- **合格 (Stage 5–6 / Guru)**: 記憶が定着し始めた段階。現在のレベルの**漢字の90%以上が「合格」に達すると次のレベルが開放**されます。
- **達人 (Stage 7 / Master)**: 1週間〜1ヶ月の間隔で復習。
- **悟り (Stage 8 / Enlightened)**: 約4ヶ月の長期記憶確認。
- **完了 (Stage 9 / Burned)**: 完全に習得され、日々の復習キューから卒業した項目。

### 2. 📚 100% 標準化された高品質カリキュラム
- **簡潔で明瞭な主要定義**: レベル1〜60の1,300項目以上すべてにおいて、スラッシュ（`/`）やカンマ（`,`）の混在を排除し、単一の明確な第一義（Primary Meaning）へと統一しました。
- **豊富な類義語・代替意味のサポート**: セカンダリ定義や別表記は `item_meanings` テーブルで管理されており、柔軟な正誤判定が維持されます。
- **カスタム類義語と学習メモ**: 各カードにユーザー独自の類義語や学習ノートを自由に追加できます。

### 3. 🎯 高速＆快適なクイズエンジン
- **レッスンモード**: 1バッチ5項目の集中学習。部首構成・書き順の可視化、ニーモニック、即時確認クイズを搭載。
- **復習（レビュー）モード**: Wanakanaによるリアルタイムのローマ字→ひらがな変換、スペルミス検出（揺れアニメーション）、キリの良いところで終了できる *Wrap Up* 機能を搭載。
- **高度な復習フィルター (Advanced Review / 開発者モード)**:
  - レベル範囲指定（レベル1〜60）およびワンクリックプリセット。
  - アイテム種別フィルター（部首、漢字、単語）。
  - リアルタイム出題数プレビュー＆URLパラメーター保存対応。
- **効率的なキーボードショートカット**:
  - `Enter`: 解答送信、次のカードへ進む、フォーカスが外れた際の入力欄自動フォーカス。
  - `ArrowRight`: 解答送信後の次のカードへの遷移。
  - `F`: 詳細情報ドロワーの開閉。
  - `J`: ネイティブ音声の再生・リピート。
  - `G`: (*開発者モード*) テスト用正解の自動入力。

### 4. 📱 GaniKani モダンUI (`/ganikani`)
- スマホおよびPC画面に最適化されたトップフラッシュデザイン。
- 画面を遮らないインライン展開型の詳細情報ドロワー。
- スワイプジェスチャーによる直感的なスライド切り替え。
- アカウント設定から切り替え可能なダークモード／ライトモード。

### 5. 🩸 苦手項目トラッカー (Leech Tracker & Cram Quiz)
- **WaniKani標準計算式**: $\text{スコア} = \frac{\text{incorrect\_count}}{\max(1, \text{current\_streak})^{1.5}}$ により、復習で頻繁に間違える苦手項目（リーチ）を自動特定。
- **重要度バッジ**: 「危険」「注意」「軽微」の3段階で可視化。
- **特訓モード (Cram Quiz)**: SRSステージの変動を気にせず、苦手な項目だけを集中的に練習可能 (`/review?mode=leech`)。

### 6. 🔊 ネイティブスピーカーによる発音音声
- 日本語単語カードに男性（*Kenichi*）および女性（*Kyoko*）のネイティブ高音質音声を収録。
- 正解時の音声自動再生オプションにも対応。

### 7. 📊 学習分析ダッシュボード & ソーシャル
- **レベル進捗バー**: 次のレベル開放に必要な漢字90%達成度をリアルタイム表示。
- **5段階SRS分布グラフ**: 現在学習中のアイテム構成を一目で把握。
- **24時間復習予測**: 今後24時間の出題予定数を1時間単位でグラフ表示。
- **学習ヒートマップ & リーダーボード**: 毎日の学習継続記録とランキング機能。
- **Google OAuth認証**: Supabase Authによる安全で素早いGoogleログイン。

---

## 🛠️ 技術スタック

- **フレームワーク**: [Next.js 16 (App Router)](https://nextjs.org/)
- **UI & スタイリング**: [React 19](https://react.dev/), [Tailwind CSS v4](https://tailwindcss.com/), [Lucide React](https://lucide.dev/)
- **状態管理**: [Zustand 5](https://github.com/pmndrs/zustand)
- **日本語入力変換**: [Wanakana](https://wanakana.com/)
- **データベース & 認証**: [Supabase](https://supabase.com/) (PostgreSQL, RLS, Google OAuth)
- **テスト**: [Vitest 4](https://vitest.dev/)
- **言語**: [TypeScript 5](https://www.typescriptlang.org/)

---

## 🚀 クイックスタート

```bash
# 1. リポジトリをクローン
git clone https://github.com/bladeaboveheart/KaniGani.git
cd KaniGani

# 2. 依存関係のインストール
npm install

# 3. 環境変数 (.env.local) の設定
# NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
# NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-key

# 4. テストの実行
npm test
npx tsc --noEmit

# 5. 開発サーバーの起動
npm run dev
```

ブラウザで [http://localhost:3000](http://localhost:3000) を開きます。

---

## 📄 Lisensi / License / ライセンス
KaniGani dikembangkan untuk tujuan edukasi dan pembelajaran bahasa Jepang.  
Educational project designed for Japanese language acquisition.  
本プロジェクトは日本語教育および学習支援を目的として開発されています。
