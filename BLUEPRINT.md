# 🦀 KaniWani Modern — Technical Architecture & Blueprint
*Companion App for KaniGani Ecosystem (Reverse SRS Learning)*

---

## 1. Ringkasan Eksekutif & Visi Produk
**KaniWani Modern** adalah platform pembelajaran Bahasa Jepang berbasis metode **Reverse Spaced Repetition System (Reverse SRS)** yang melengkapi KaniGani. 
- **KaniGani** fokus pada *Recognition / Passive Recall* (Melihat Kanji/Kosakata $\rightarrow$ Mengetik Arti/Bacaan).
- **KaniWani** fokus pada *Production / Active Recall* (Melihat Arti $\rightarrow$ Mengetik Bacaan Kana dan Mengingat Kanji).

Aplikasi ini dibangun dari nol (*clean-sheet modern rewrite*) menggunakan arsitektur **Turborepo Monorepo** dan berbagi infrastruktur dengan KaniGani (**Next.js 16, React 19, Tailwind CSS v4, Supabase, Zustand, dan Wanakana**).

---

## 2. Fitur Kunci & Diferensiasi
1. **Mode Hibrida (Dual-Path Ingestion)**:
   - **WaniKani Sync**: Mengambil item kosakata yang telah di-unlock dari akun resmi WaniKani melalui WaniKani API v2 (Read-Only).
   - **Standalone KaniGani**: Pengguna tanpa akun WaniKani tetap dapat belajar langsung menggunakan kurikulum 60 level KaniGani / JLPT N5–N1.
2. **Dukungan Dwibahasa (Bilingual ID/EN)**:
   - Pengguna bebas memilih bahasa prompt utama (Bahasa Indonesia atau Bahasa Inggris).
   - Fitur *Custom Synonyms* agar pengguna dapat menambahkan terjemahan/sinonim pribadi.
3. **Engine Kuis Cerdas & Disambiguasi**:
   - IME Wanakana untuk pengetikan Romaji-ke-Kana instan di browser.
   - Deteksi homofon & kata bersinonim dengan animasi *Disambiguation Shake* (mencegah penalti salah jika maksud kata berbeda).
   - Pengungkapan kartu Kanji interaktif dan pemutar audio suara asli (*Kenichi & Kyoko*).
4. **Siklus SRS Independen**:
   - Progres SRS KaniWani tidak mempengaruhi akun WaniKani/KaniGani.
   - Filter ambang batas unlock fleksibel (*Instant on Unlock* atau *Unlock after Guru*).

---

## 3. Arsitektur Repositori (Turborepo Monorepo)

```text
KaniGani/
├── apps/
│   ├── kanigani/                 # Next.js 16 (App Router) — Forward SRS
│   │   ├── src/app/
│   │   └── package.json
│   └── kaniwani/                 # Next.js 16 (App Router) — Reverse SRS
│       ├── src/app/
│       │   ├── (auth)/
│       │   ├── dashboard/
│       │   ├── review/           # Reverse Quiz Engine
│       │   ├── settings/sync/    # Pengaturan WaniKani API
│       │   └── vocab/
│       └── package.json
├── packages/
│   ├── database/                 # Supabase types, client, migration scripts
│   ├── srs-engine/               # Perhitungan interval SRS stage 0-9 & leech score
│   ├── wanakana-core/            # Konversi IME kana & algoritma disambiguasi
│   └── ui/                       # Design System bersama (Tailwind v4 primitives)
├── turbo.json
└── package.json
```

---

## 4. Skema Database (Shared Supabase Instance)

### `public.kaniwani_reviews`
Menyimpan progres review *reverse recall* pengguna:
- `id`: UUID (Primary Key)
- `user_id`: UUID (Foreign Key ke `auth.users`)
- `vocabulary_id`: UUID (Foreign Key ke `public.vocabulary`)
- `srs_stage`: SmallInt (0=Locked, 1-4=Apprentice, 5-6=Guru, 7=Master, 8=Enlightened, 9=Burned)
- `next_review_at`: Timestamp with time zone
- `incorrect_count`: Integer (Default: 0)
- `current_streak`: Integer (Default: 0)
- `custom_synonyms`: Text Array (Sinonim tambahan dari pengguna)
- `created_at` & `updated_at`: Timestamps

### `public.user_wanikani_sync`
Konfigurasi integrasi WaniKani per akun:
- `user_id`: UUID (Primary Key, Foreign Key ke `auth.users`)
- `api_key_encrypted`: Text (API Token v2)
- `sync_threshold`: Enum (`immediate`, `apprentice_4`, `guru`)
- `last_synced_at`: Timestamp with time zone
- `wanikani_level`: Integer

---

## 5. Matriks Orkestrasi Skill (`vibes-plug`)

| Tahap | Skill Spesialis | Aksi Teknis |
| :--- | :--- | :--- |
| **Monorepo Setup** | `monorepo-architect` | Konfigurasi Turborepo, pnpm workspaces, dan ekstraksi shared packages. |
| **Backend & DB** | `database-orm-expert`, `supabase-migration` | Penulisan file migrasi SQL untuk tabel KaniWani dan konfigurasi Row Level Security (RLS). |
| **API Client** | `api-design-expert`, `typescript-expert` | Pembuatan typed client untuk WaniKani API v2 dengan error resilience dan rate-limit handler. |
| **Frontend UI/UX** | `senior-frontend`, `design-system-architect` | Pembuatan halaman dashboard, review session, disambiguation shake animation, dan audio player. |
| **Testing** | `e2e-testing-expert` | Pengujian unit untuk logika pencocokan sinonim, disambiguasi, dan SRS staging. |

---

## 6. Log Keputusan (Decision Log)

| # | Keputusan | Alternatif Dipertimbangkan | Rasional |
|---|---|---|---|
| 1 | **Rebuild dengan Next.js 16 + Supabase** | Meng-clone repo Django/Elm asli KaniWani | Repo asli sudah legacy (2016-2018), berat, dan sulit di-maintain. Stack KaniGani jauh lebih modern, serverless, dan reaktif. |
| 2 | **Turborepo Monorepo** | Repo terpisah atau rute tunggal | Menghilangkan duplikasi kode kamus, audio CDN, dan komponen UI, sekaligus menjaga aplikasi tetap modular. |
| 3 | **Mode Hibrida (WaniKani + Standalone)** | WaniKani API Only | Memberi akses bagi pembelajar bahasa Jepang umum tanpa mewajibkan langganan WaniKani berbayar. |
| 4 | **Bilingual Prompt (ID & EN)** | English Only | Memberdayakan ribuan kosakata dan mnemonik Bahasa Indonesia yang sudah ada di database KaniGani. |
| 5 | **Wanakana Input + Disambiguasi** | Input Kanji Langsung via IME | Standar resmi KaniWani/WaniKani untuk kecepatan review, dilengkapi pencegahan salah paham homofon. |
