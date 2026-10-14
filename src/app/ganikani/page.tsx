'use client';

import React, { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import {
  getGanikaniDashboardStats,
  GanikaniDashboardStats,
} from '@/services/ganikaniService';
import {
  BookOpen,
  Layers,
  Sparkles,
  Clock,
  ArrowRight,
  Flame,
  CheckCircle2,
  RefreshCw,
} from 'lucide-react';

export default function GanikaniDashboardPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [stats, setStats] = useState<GanikaniDashboardStats | null>(null);
  const [userId, setUserId] = useState<string | null>(null);

  const loadDashboard = async () => {
    setLoading(true);
    try {
      const {
        data: { user },
      } = await supabase.auth.getUser();

      if (!user) {
        router.push('/login');
        return;
      }

      setUserId(user.id);
      const dashboardStats = await getGanikaniDashboardStats(user.id);
      setStats(dashboardStats);
    } catch (err) {
      console.error('Error loading Ganikani dashboard stats:', err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadDashboard();
  }, []);

  return (
    <div className="max-w-5xl mx-auto w-full px-4 py-8 sm:py-12 space-y-10">
      {/* Hero Welcome & Quick Intro */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-card-border pb-6">
        <div>
          <div className="flex items-center space-x-2">
            <span className="text-3xl">🦀</span>
            <h1 className="text-2xl sm:text-3xl font-black text-text-primary tracking-tight">
              GaniKani Dashboard
            </h1>
          </div>
          <p className="text-text-secondary text-sm mt-1">
            Pelatihan Active Recall: uji pemanggilan bacaan Kana langsung dari arti kosakata.
          </p>
        </div>

        <button
          onClick={loadDashboard}
          disabled={loading}
          className="self-start sm:self-auto flex items-center space-x-1.5 px-3 py-1.5 rounded-xl bg-card-muted/60 hover:bg-card-muted border border-card-border text-text-secondary hover:text-text-primary text-xs font-bold transition-all cursor-pointer shadow-xs"
        >
          <RefreshCw className={`w-3.5 h-3.5 ${loading ? 'animate-spin' : ''}`} />
          <span>Segarkan</span>
        </button>
      </div>

      {/* Main Action Cards: Lesson & Review */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        {/* Lesson Card */}
        <div className="relative group overflow-hidden rounded-3xl border border-card-border bg-gradient-to-br from-card via-card to-amber-500/5 p-6 sm:p-8 flex flex-col justify-between shadow-lg transition-all hover:border-amber-500/30">
          <div className="space-y-4">
            <div className="flex items-center justify-between">
              <div className="p-3 rounded-2xl bg-amber-500/10 text-amber-500 border border-amber-500/20">
                <BookOpen className="w-6 h-6" />
              </div>
              <span className="text-xs font-bold uppercase tracking-widest text-text-muted">
                Batch 5 Kata
              </span>
            </div>

            <div>
              <div className="text-4xl sm:text-5xl font-black text-text-primary tracking-tight">
                {loading ? '...' : stats?.lessonsAvailable ?? 0}
              </div>
              <p className="text-text-secondary font-semibold text-sm mt-1">
                Kosakata Baru Tersedia
              </p>
              <p className="text-text-muted text-xs mt-2 leading-relaxed">
                Item kosakata dari KaniGani yang telah mencapai stage Guru (atau ambang pilihanmu) siap dipelajari secara reverse.
              </p>
            </div>
          </div>

          <div className="mt-8">
            <Link
              href="/ganikani/lesson"
              className={`w-full flex items-center justify-center space-x-2 py-3.5 px-6 rounded-2xl font-bold text-sm transition-all cursor-pointer shadow-sm ${
                (stats?.lessonsAvailable ?? 0) > 0
                  ? 'bg-amber-500 hover:bg-amber-600 text-white shadow-amber-500/20'
                  : 'bg-card-muted text-text-muted border border-card-border pointer-events-none opacity-60'
              }`}
            >
              <span>Mulai Lesson</span>
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>

        {/* Review Card */}
        <div className="relative group overflow-hidden rounded-3xl border border-card-border bg-gradient-to-br from-card via-card to-indigo-500/5 p-6 sm:p-8 flex flex-col justify-between shadow-lg transition-all hover:border-indigo-500/30">
          <div className="space-y-4">
            <div className="flex items-center justify-between">
              <div className="p-3 rounded-2xl bg-indigo-500/10 text-indigo-500 border border-indigo-500/20">
                <Layers className="w-6 h-6" />
              </div>
              {stats?.nextReviewAt && (stats?.reviewsDue ?? 0) === 0 ? (
                <span className="flex items-center space-x-1 text-xs font-bold text-text-muted">
                  <Clock className="w-3.5 h-3.5 text-indigo-400" />
                  <span>
                    Berikutnya:{' '}
                    {new Date(stats.nextReviewAt).toLocaleTimeString([], {
                      hour: '2-digit',
                      minute: '2-digit',
                    })}
                  </span>
                </span>
              ) : (
                <span className="text-xs font-bold uppercase tracking-widest text-text-muted">
                  SRS Reverse
                </span>
              )}
            </div>

            <div>
              <div className="text-4xl sm:text-5xl font-black text-text-primary tracking-tight">
                {loading ? '...' : stats?.reviewsDue ?? 0}
              </div>
              <p className="text-text-secondary font-semibold text-sm mt-1">
                Ulasan Jatuh Tempo
              </p>
              <p className="text-text-muted text-xs mt-2 leading-relaxed">
                Kartu reverse recall yang jatuh tempo. Semua kartu dimuat langsung tanpa batching terpotong ala KaniWani.
              </p>
            </div>
          </div>

          <div className="mt-8">
            <Link
              href="/ganikani/review"
              className={`w-full flex items-center justify-center space-x-2 py-3.5 px-6 rounded-2xl font-bold text-sm transition-all cursor-pointer shadow-sm ${
                (stats?.reviewsDue ?? 0) > 0
                  ? 'bg-indigo-600 hover:bg-indigo-700 text-white shadow-indigo-600/20'
                  : 'bg-card-muted text-text-muted border border-card-border pointer-events-none opacity-60'
              }`}
            >
              <span>Mulai Review</span>
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>
      </div>

      {/* SRS Distribution Stages */}
      <div className="rounded-3xl border border-card-border bg-card p-6 sm:p-8 space-y-6 shadow-md">
        <div className="flex items-center justify-between">
          <div>
            <h2 className="text-base font-bold text-text-primary tracking-tight">
              Distribusi Progres SRS GaniKani
            </h2>
            <p className="text-xs text-text-muted mt-0.5">
              Tingkatan penguasaan reverse recall kosakata aktifmu.
            </p>
          </div>
        </div>

        <div className="grid grid-cols-2 sm:grid-cols-5 gap-3">
          {/* Pemula (1-4) */}
          <div className="p-4 rounded-2xl bg-card-muted/60 border border-card-border flex flex-col items-center text-center">
            <span className="text-xs font-bold text-pink-500 uppercase tracking-wider">
              Pemula
            </span>
            <span className="text-[10px] text-text-muted font-medium mb-1">
              Apprentice (1-4)
            </span>
            <span className="text-2xl font-black text-text-primary mt-1">
              {stats?.distribution.apprentice ?? 0}
            </span>
          </div>

          {/* Lulus (5-6) */}
          <div className="p-4 rounded-2xl bg-card-muted/60 border border-card-border flex flex-col items-center text-center">
            <span className="text-xs font-bold text-purple-500 uppercase tracking-wider">
              Lulus
            </span>
            <span className="text-[10px] text-text-muted font-medium mb-1">
              Guru (5-6)
            </span>
            <span className="text-2xl font-black text-text-primary mt-1">
              {stats?.distribution.guru ?? 0}
            </span>
          </div>

          {/* Mahir (7) */}
          <div className="p-4 rounded-2xl bg-card-muted/60 border border-card-border flex flex-col items-center text-center">
            <span className="text-xs font-bold text-blue-500 uppercase tracking-wider">
              Mahir
            </span>
            <span className="text-[10px] text-text-muted font-medium mb-1">
              Master (7)
            </span>
            <span className="text-2xl font-black text-text-primary mt-1">
              {stats?.distribution.master ?? 0}
            </span>
          </div>

          {/* Ahli (8) */}
          <div className="p-4 rounded-2xl bg-card-muted/60 border border-card-border flex flex-col items-center text-center">
            <span className="text-xs font-bold text-cyan-500 uppercase tracking-wider">
              Ahli
            </span>
            <span className="text-[10px] text-text-muted font-medium mb-1">
              Enlightened (8)
            </span>
            <span className="text-2xl font-black text-text-primary mt-1">
              {stats?.distribution.enlightened ?? 0}
            </span>
          </div>

          {/* Tuntas (9) */}
          <div className="col-span-2 sm:col-span-1 p-4 rounded-2xl bg-card-muted/60 border border-card-border flex flex-col items-center text-center">
            <span className="text-xs font-bold text-amber-500 uppercase tracking-wider">
              Tuntas
            </span>
            <span className="text-[10px] text-text-muted font-medium mb-1">
              Burned (9)
            </span>
            <span className="text-2xl font-black text-text-primary mt-1">
              {stats?.distribution.burned ?? 0}
            </span>
          </div>
        </div>
      </div>
    </div>
  );
}
