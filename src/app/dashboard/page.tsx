'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import CrabBackground from '@/components/CrabBackground';
import { 
  BookOpen, Sparkles, AlertCircle, Clock, Calendar, CheckCircle2, 
  Flame, Award, ArrowUpRight, TrendingUp, BarChart2, Star, UserCheck,
  Shield
} from 'lucide-react';
import { DashboardStats, Item } from '@/lib/types';

export default function Dashboard() {
  const [stats, setStats] = useState<DashboardStats | null>(null);
  const [loading, setLoading] = useState(true);
  const [username, setUsername] = useState('Pengguna');
  const [activeTab, setActiveTab] = useState<'schedule' | 'items'>('schedule');
  const [itemDetails, setItemDetails] = useState<any[]>([]);
  const [devMode, setDevMode] = useState<boolean>(false);
  const [resetting, setResetting] = useState(false);
  const router = useRouter();

  useEffect(() => {
    const checkDevMode = () => {
      setDevMode(localStorage.getItem('kanigani-dev-mode') === 'true');
    };
    checkDevMode();
    window.addEventListener('storage', checkDevMode);
    return () => window.removeEventListener('storage', checkDevMode);
  }, []);

  const handleResetTimers = async () => {
    setResetting(true);
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) return;
      
      const now = new Date().toISOString();
      
      const { error } = await supabase
        .from('user_progress')
        .update({ next_review: now })
        .eq('user_id', user.id)
        .gte('srs_stage', 1)
        .lte('srs_stage', 8)
        .not('next_review', 'is', null);

      if (error) throw error;
      
      alert('Sukses! Semua item review yang sudah dipelajari telah dipercepat menjadi SEKARANG. Silakan review segera!');
      window.location.reload();
    } catch (err: any) {
      console.error('Error resetting review timers:', err);
      let errMsg = 'Gagal mempercepat review.';
      if (err) {
        if (err.message) {
          errMsg = err.message;
          if (err.details) {
            errMsg += ` (${err.details})`;
          }
        } else if (err instanceof Error) {
          errMsg = err.message;
        } else {
          errMsg = typeof err === 'object' ? JSON.stringify(err) : String(err);
        }
      }
      alert('Gagal mempercepat review: ' + errMsg);
    } finally {
      setResetting(false);
    }
  };

  useEffect(() => {
    async function loadDashboard() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        // Fetch username
        const { data: profile } = await supabase
          .from('profiles')
          .select('username')
          .eq('id', user.id)
          .maybeSingle();
        if (profile) setUsername(profile.username);

        const now = new Date().toISOString();

        // 1. Fetch user progress
        const { data: progresses, error: progErr } = await supabase
          .from('user_progress')
          .select('item_id, srs_stage, unlocked_at, next_review, items(*)')
          .eq('user_id', user.id);

        if (progErr) throw progErr;

        // 2. Fetch all level 1 kanji to check level-up requirement
        const { data: levelKanji, error: kanjiErr } = await supabase
          .from('items')
          .select('id')
          .eq('level', 1)
          .eq('type', 'kanji');

        if (kanjiErr) throw kanjiErr;

        const totalKanji = levelKanji ? levelKanji.length : 0;
        const kanjiIds = levelKanji ? levelKanji.map(k => k.id) : [];

        // Calculate Stats
        let lessonsAvailable = 0;
        let reviewsDue = 0;
        let kanjiPassed = 0;

        const distribution: Record<number, number> = {
          0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0
        };

        const byType = {
          radical: { total: 0, guru: 0 },
          kanji: { total: 0, guru: 0 },
          vocabulary: { total: 0, burned: 0 },
        };

        const loadedItems: any[] = [];

        if (progresses) {
          progresses.forEach((row: any) => {
            const stage = row.srs_stage;
            const item = row.items;
            if (!item) return;

            // Merged details for later schedules
            loadedItems.push({
              id: item.id,
              character: item.character,
              type: item.type,
              srs_stage: stage,
              next_review: row.next_review,
              name: item.slug || 'item',
            });

            // Count distribution
            distribution[stage] = (distribution[stage] || 0) + 1;

            if (item.type === 'radical') {
              byType.radical.total++;
              if (stage >= 5) byType.radical.guru++;
            } else if (item.type === 'kanji') {
              byType.kanji.total++;
              if (stage >= 5) byType.kanji.guru++;
            } else if (item.type === 'vocabulary') {
              byType.vocabulary.total++;
              if (stage === 9) byType.vocabulary.burned++;
            }

            // Lessons available: stage = 1 and next_review = null
            if (stage === 1 && !row.next_review) {
              lessonsAvailable++;
            }

            // Reviews due: stage >= 1 and stage <= 8 and next_review <= now
            if (stage >= 1 && stage <= 8 && row.next_review && row.next_review <= now) {
              reviewsDue++;
            }

            // Kanji passed (Guru or above, stage >= 5)
            if (item.type === 'kanji' && stage >= 5 && kanjiIds.includes(item.id)) {
              kanjiPassed++;
            }
          });
        }

        setItemDetails(loadedItems);
        setStats({
          lessonsAvailable,
          reviewsDue,
          distribution,
          byType,
          level: 1,
          kanjiPassedInLevel: kanjiPassed,
          kanjiTotalInLevel: totalKanji,
        });

      } catch (err) {
        console.error('Error loading dashboard stats:', err);
      } finally {
        setLoading(false);
      }
    }

    loadDashboard();
  }, [router]);

  // Generate hourly schedule
  const getHourlySchedule = () => {
    const hours: Record<string, number> = {};
    const now = new Date();

    itemDetails.forEach(item => {
      if (item.next_review && item.srs_stage >= 1 && item.srs_stage <= 8) {
        const reviewDate = new Date(item.next_review);
        const timeDiff = reviewDate.getTime() - now.getTime();
        
        if (timeDiff > 0) {
          // Bulatkan ke jam terdekat
          const hourLabel = reviewDate.toLocaleTimeString('id-ID', { hour: '2-digit', minute: '2-digit' });
          hours[hourLabel] = (hours[hourLabel] || 0) + 1;
        }
      }
    });

    return Object.entries(hours)
      .map(([time, count]) => ({ time, count }))
      .slice(0, 5); // Tampilkan 5 review terdekat saja
  };

  const getSrsLabel = (stage: number) => {
    if (stage === 0) return 'Terkunci';
    if (stage >= 1 && stage <= 4) return 'Apprentice';
    if (stage === 5 || stage === 6) return 'Guru';
    if (stage === 7) return 'Master';
    if (stage === 8) return 'Enlightened';
    return 'Burned 🔥';
  };

  const getSrsColorClass = (stage: number) => {
    if (stage === 0) return 'bg-slate-200 text-slate-500 dark:bg-slate-800 dark:text-slate-500';
    if (stage >= 1 && stage <= 4) return 'bg-rose-500 text-white';
    if (stage === 5 || stage === 6) return 'bg-purple-600 text-white';
    if (stage === 7) return 'bg-blue-600 text-white';
    if (stage === 8) return 'bg-teal-600 text-white';
    return 'bg-slate-700 text-amber-400 border border-amber-500/20';
  };

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-slate-50 dark:bg-slate-950 text-slate-900 dark:text-slate-100">
        <div className="flex flex-col items-center space-y-4">
          <div className="w-12 h-12 border-4 border-indigo-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="font-semibold text-sm">Menyiapkan Dashboard KaniGani Anda...</p>
        </div>
      </div>
    );
  }

  const schedule = getHourlySchedule();
  const kanjiPct = stats && stats.kanjiTotalInLevel > 0 
    ? Math.round((stats.kanjiPassedInLevel / stats.kanjiTotalInLevel) * 100) 
    : 0;

  // Dummy Leaderboard Data
  const leaderboard = [
    { rank: 1, name: 'BudiKanji', level: 8, points: 940, active: true },
    { rank: 2, name: 'WaniCrab', level: 5, points: 520, active: false },
    { rank: 3, name: username, level: 1, points: itemDetails.filter(i => i.srs_stage >= 5).length * 10 + itemDetails.filter(i => i.srs_stage > 0).length, active: true, isSelf: true },
    { rank: 4, name: 'NihonLover', level: 1, points: 35, active: false },
  ].sort((a, b) => b.points - a.points).map((item, idx) => ({ ...item, rank: idx + 1 }));

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />
      <CrabBackground />

      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 space-y-8 animate-fade-in">
        
        {/* User Welcome Section */}
        <section className="flex flex-col md:flex-row md:items-center justify-between gap-4 bg-white/50 dark:bg-slate-900/50 backdrop-blur-md p-6 sm:p-8 rounded-3xl border border-slate-200/50 dark:border-slate-800/50 shadow-sm">
          <div>
            <div className="flex items-center space-x-2">
              <Sparkles className="w-5 h-5 text-amber-500 animate-spin" style={{ animationDuration: '6s' }} />
              <span className="text-xs font-bold uppercase tracking-widest text-indigo-500">KaniGani Beranda</span>
            </div>
            <h2 className="text-2xl sm:text-3xl font-extrabold tracking-tight mt-1">
              Selamat Belajar, <span className="bg-gradient-to-r from-pink-500 to-indigo-500 bg-clip-text text-transparent">{username}</span>!
            </h2>
            <p className="text-sm text-slate-500 dark:text-slate-400 mt-1">
              Semoga latihan hari ini menyenangkan. Tetap jaga konsistensi SRS Anda!
            </p>
          </div>

          {/* Current Level Stats Info */}
          <div className="flex items-center space-x-4">
            <div className="p-4 bg-indigo-50 dark:bg-indigo-950/30 rounded-2xl border border-indigo-100 dark:border-indigo-900/50 text-center">
              <span className="text-xxs font-bold text-indigo-600 dark:text-indigo-400 uppercase tracking-widest block">Level Saat Ini</span>
              <span className="text-2xl font-black text-indigo-600 dark:text-indigo-400">1</span>
            </div>
            <div className="p-4 bg-rose-50 dark:bg-rose-950/30 rounded-2xl border border-rose-100 dark:border-rose-900/50 text-center">
              <span className="text-xxs font-bold text-rose-600 dark:text-rose-400 uppercase tracking-widest block">Guru Item</span>
              <span className="text-2xl font-black text-rose-600 dark:text-rose-400">
                {itemDetails.filter(i => i.srs_stage >= 5).length}
              </span>
            </div>
          </div>
        </section>
        
        {/* Developer Mode Admin Tools */}
        {devMode && (
          <section className="bg-gradient-to-r from-slate-900 via-indigo-950 to-slate-900 border border-indigo-500/30 p-6 rounded-3xl shadow-xl animate-fade-in space-y-4">
            <div className="flex items-center justify-between border-b border-indigo-500/20 pb-3">
              <div className="flex items-center space-x-2">
                <Shield className="w-5 h-5 text-emerald-400 animate-pulse" />
                <h3 className="text-lg font-black tracking-tight text-slate-100">🔧 Developer Mode Admin Tools</h3>
              </div>
              <span className="px-2 py-0.5 text-xxs font-extrabold bg-emerald-500/20 text-emerald-400 border border-emerald-500/30 rounded-md">
                ACTIVE
              </span>
            </div>
            <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
              <p className="text-xs text-indigo-200 max-w-xl leading-relaxed">
                Anda dapat mempercepat timer SRS untuk semua item yang telah Anda pelajari (Apprentice s/d Enlightened) menjadi saat ini. Hal ini akan memicu semua item tersebut langsung masuk ke antrean <strong>SRS Review Kuis</strong> untuk diuji segera.
              </p>
              <button
                onClick={handleResetTimers}
                disabled={resetting}
                className="px-5 py-3 bg-emerald-500 hover:bg-emerald-600 text-slate-950 font-black rounded-2xl shadow-lg shadow-emerald-500/10 hover:shadow-emerald-500/20 disabled:opacity-55 disabled:cursor-not-allowed transition-all duration-200 shrink-0 text-sm flex items-center justify-center space-x-2"
              >
                {resetting ? (
                  <>
                    <div className="w-4 h-4 border-2 border-slate-950 border-t-transparent rounded-full animate-spin"></div>
                    <span>Memproses...</span>
                  </>
                ) : (
                  <>
                    <Clock className="w-4 h-4" />
                    <span>Percepat Semua Review (Sekarang)</span>
                  </>
                )}
              </button>
            </div>
          </section>
        )}

        {/* Big Action Buttons (Lessons & Reviews) */}
        <section className="grid grid-cols-1 md:grid-cols-2 gap-6 sm:gap-8">
          
          {/* Lessons Card */}
          <div className="relative group overflow-hidden bg-gradient-to-br from-cyan-500 to-teal-600 dark:from-cyan-600 dark:to-teal-700 text-white rounded-3xl p-6 sm:p-8 shadow-lg hover:shadow-xl hover:-translate-y-0.5 transition-all duration-300">
            <div className="absolute right-0 bottom-0 translate-x-10 translate-y-10 opacity-10 group-hover:scale-110 transition-transform duration-300">
              <BookOpen className="w-60 h-60" />
            </div>
            <div className="flex flex-col h-full justify-between gap-6 z-10 relative">
              <div>
                <span className="inline-block px-3 py-1 bg-white/20 backdrop-blur-md rounded-full text-xs font-bold uppercase tracking-wider mb-2">
                  Lesson Pembelajaran
                </span>
                <h3 className="text-2xl font-bold tracking-tight mt-1">Belajar Item Baru</h3>
                <p className="text-xs text-cyan-50 dark:text-cyan-100 mt-2 max-w-sm">
                  Pelajari arti dan bacaan karakter linear baru secara berkelompok (5 item per batch) sebelum memulai kuis.
                </p>
              </div>

              <div className="flex items-center justify-between mt-4">
                <div>
                  <span className="text-3xl sm:text-4xl font-black tracking-tighter">
                    {stats?.lessonsAvailable || 0}
                  </span>
                  <span className="text-xs text-cyan-100 ml-1.5 font-semibold">item siap dipelajari</span>
                </div>

                {stats && stats.lessonsAvailable > 0 ? (
                  <button 
                    onClick={() => router.push('/lesson')}
                    className="px-5 py-2.5 bg-white text-teal-600 font-bold rounded-xl shadow-md hover:bg-cyan-50 flex items-center space-x-1.5 transition-all duration-200"
                  >
                    <span>Mulai</span>
                    <ArrowUpRight className="w-4 h-4" />
                  </button>
                ) : (
                  <div className="px-5 py-2.5 bg-white/10 backdrop-blur-md text-cyan-200 font-bold rounded-xl flex items-center space-x-1.5 cursor-not-allowed">
                    <span>Selesai</span>
                    <CheckCircle2 className="w-4 h-4 text-emerald-400" />
                  </div>
                )}
              </div>
            </div>
          </div>

          {/* Reviews Card */}
          <div className="relative group overflow-hidden bg-gradient-to-br from-pink-500 via-purple-500 to-indigo-600 dark:from-pink-600 dark:via-purple-600 dark:to-indigo-700 text-white rounded-3xl p-6 sm:p-8 shadow-lg hover:shadow-xl hover:-translate-y-0.5 transition-all duration-300">
            <div className="absolute right-0 bottom-0 translate-x-10 translate-y-10 opacity-10 group-hover:scale-110 transition-transform duration-300">
              <Flame className="w-60 h-60" />
            </div>
            <div className="flex flex-col h-full justify-between gap-6 z-10 relative">
              <div>
                <span className="inline-block px-3 py-1 bg-white/20 backdrop-blur-md rounded-full text-xs font-bold uppercase tracking-wider mb-2">
                  SRS Review Kuis
                </span>
                <h3 className="text-2xl font-bold tracking-tight mt-1">Latihan Harian</h3>
                <p className="text-xs text-pink-50 dark:text-pink-100 mt-2 max-w-sm">
                  Uji ingatan Anda pada item-item yang jatuh tempo. Menjawab dengan benar memperpanjang waktu review berikutnya.
                </p>
              </div>

              <div className="flex items-center justify-between mt-4">
                <div>
                  <span className="text-3xl sm:text-4xl font-black tracking-tighter">
                    {stats?.reviewsDue || 0}
                  </span>
                  <span className="text-xs text-pink-100 ml-1.5 font-semibold">item jatuh tempo</span>
                </div>

                {stats && stats.reviewsDue > 0 ? (
                  <button 
                    onClick={() => router.push('/review')}
                    className="px-5 py-2.5 bg-white text-indigo-600 font-bold rounded-xl shadow-md hover:bg-pink-50 flex items-center space-x-1.5 transition-all duration-200"
                  >
                    <span>Mulai</span>
                    <ArrowUpRight className="w-4 h-4" />
                  </button>
                ) : (
                  <div className="px-5 py-2.5 bg-white/10 backdrop-blur-md text-pink-200 font-bold rounded-xl flex items-center space-x-1.5 cursor-not-allowed">
                    <span>Semua Bersih</span>
                    <CheckCircle2 className="w-4 h-4 text-emerald-400" />
                  </div>
                )}
              </div>
            </div>
          </div>

        </section>

        {/* Level Up Progress Card */}
        <section className="bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm p-6 sm:p-8 space-y-4">
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
            <div>
              <div className="flex items-center space-x-2">
                <Award className="w-5 h-5 text-indigo-500" />
                <h3 className="font-extrabold text-lg tracking-tight">Kapan Saya Naik Level 2?</h3>
              </div>
              <p className="text-xs text-slate-500 dark:text-slate-400 mt-0.5">
                KaniGani mensyaratkan kelulusan minimal **90% Kanji Level 1** ke status **Guru (Stage 5)** untuk naik level.
              </p>
            </div>
            {stats && (
              <div className="text-right sm:text-right">
                <span className="text-xs font-semibold text-slate-400 dark:text-slate-500 block">Kanji Lulus</span>
                <span className="text-xl font-black text-indigo-500">
                  {stats.kanjiPassedInLevel} / {stats.kanjiTotalInLevel}
                </span>
              </div>
            )}
          </div>

          {/* Progress Bar */}
          <div className="space-y-2">
            <div className="w-full bg-slate-100 dark:bg-slate-800 h-4 rounded-full overflow-hidden flex">
              <div 
                className="bg-gradient-to-r from-pink-500 to-indigo-500 h-full rounded-full transition-all duration-500"
                style={{ width: `${Math.min(100, kanjiPct)}%` }}
              ></div>
            </div>
            
            <div className="flex justify-between items-center text-xxs font-bold text-slate-400 dark:text-slate-500">
              <span>Progress: {kanjiPct}%</span>
              <span>Target: 90% Lulus</span>
            </div>
          </div>

          {stats && stats.kanjiPassedInLevel >= Math.ceil(stats.kanjiTotalInLevel * 0.9) ? (
            <div className="p-3 bg-emerald-50 dark:bg-emerald-950/20 border border-emerald-100 dark:border-emerald-900/50 rounded-2xl text-xs text-emerald-600 dark:text-emerald-400 flex items-center space-x-2">
              <CheckCircle2 className="w-4 h-4 shrink-0" />
              <span>Luar biasa! Anda telah memenuhi syarat kelulusan Kanji level 1. Tinggal menunggu pembukaan level berikutnya!</span>
            </div>
          ) : stats ? (
            <div className="p-3 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl text-xs text-indigo-600 dark:text-indigo-400 flex items-center space-x-2">
              <AlertCircle className="w-4 h-4 shrink-0" />
              <span>
                Butuh {Math.max(0, Math.ceil(stats.kanjiTotalInLevel * 0.9) - stats.kanjiPassedInLevel)} kanji lagi untuk naik Level 2! Semangat belajar!
              </span>
            </div>
          ) : null}
        </section>

        {/* Dashboard Double Panels (Details & Leaderboards) */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          
          {/* Left Schedule & Item Grid */}
          <div className="lg:col-span-2 space-y-6">
            
            <div className="bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm overflow-hidden">
              {/* Tab Header */}
              <div className="flex border-b border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50">
                <button
                  onClick={() => setActiveTab('schedule')}
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors ${
                    activeTab === 'schedule'
                      ? 'border-indigo-500 text-indigo-500'
                      : 'border-transparent text-slate-500 dark:text-slate-400 hover:text-slate-700 dark:hover:text-slate-200'
                  }`}
                >
                  <div className="flex items-center justify-center space-x-1.5">
                    <Clock className="w-4 h-4" />
                    <span>Jadwal Review Esok Hari</span>
                  </div>
                </button>
                <button
                  onClick={() => setActiveTab('items')}
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors ${
                    activeTab === 'items'
                      ? 'border-indigo-500 text-indigo-500'
                      : 'border-transparent text-slate-500 dark:text-slate-400 hover:text-slate-700 dark:hover:text-slate-200'
                  }`}
                >
                  <div className="flex items-center justify-center space-x-1.5">
                    <Calendar className="w-4 h-4" />
                    <span>Daftar Item Aktif ({itemDetails.filter(i => i.srs_stage > 0).length})</span>
                  </div>
                </button>
              </div>

              {/* Tab Content */}
              <div className="p-6">
                
                {activeTab === 'schedule' ? (
                  /* REVIEW SCHEDULE TIMELINE */
                  <div className="space-y-6">
                    {schedule.length > 0 ? (
                      <div className="space-y-4">
                        {schedule.map((item, idx) => (
                          <div key={idx} className="flex items-center justify-between p-3.5 bg-slate-50 dark:bg-slate-950 rounded-2xl border border-slate-100 dark:border-slate-850">
                            <div className="flex items-center space-x-3">
                              <div className="w-2.5 h-2.5 rounded-full bg-indigo-500"></div>
                              <span className="text-sm font-semibold">{item.time}</span>
                            </div>
                            <span className="text-xs font-bold px-3 py-1 bg-indigo-50 dark:bg-indigo-950 text-indigo-600 dark:text-indigo-400 rounded-full">
                              +{item.count} item
                            </span>
                          </div>
                        ))}
                      </div>
                    ) : (
                      <div className="text-center py-8 text-slate-400 dark:text-slate-500">
                        <Clock className="w-10 h-10 mx-auto opacity-30 mb-2" />
                        <p className="text-sm">Tidak ada review esok hari dalam 24 jam ke depan.</p>
                      </div>
                    )}
                  </div>
                ) : (
                  /* ACTIVE ITEM LISTING */
                  <div>
                    {itemDetails.filter(i => i.srs_stage > 0).length > 0 ? (
                      <div className="grid grid-cols-2 sm:grid-cols-3 gap-3">
                        {itemDetails.filter(i => i.srs_stage > 0).slice(0, 15).map((item, idx) => (
                          <div 
                            key={idx} 
                            className={`p-3 rounded-2xl flex flex-col justify-between items-center text-center border shadow-xxs ${
                              item.type === 'radical' 
                                ? 'bg-radical/5 border-radical/10 text-radical dark:bg-radical/10'
                                : item.type === 'kanji'
                                ? 'bg-kanji/5 border-kanji/10 text-kanji dark:bg-kanji/10'
                                : 'bg-vocab/5 border-vocab/10 text-vocab dark:bg-vocab/10'
                            }`}
                          >
                            <span className="text-2xl font-black">{item.character}</span>
                            <span className="text-xxs font-semibold mt-1 text-slate-500 dark:text-slate-400 truncate max-w-full uppercase tracking-wider">
                              {item.name}
                            </span>
                            <span className={`text-3xs font-extrabold px-2 py-0.5 rounded-full mt-2 ${getSrsColorClass(item.srs_stage)}`}>
                              {getSrsLabel(item.srs_stage)}
                            </span>
                          </div>
                        ))}
                        {itemDetails.filter(i => i.srs_stage > 0).length > 15 && (
                          <div className="col-span-full text-center text-xs text-slate-400 mt-2 font-medium">
                            + dan {itemDetails.filter(i => i.srs_stage > 0).length - 15} item aktif lainnya...
                          </div>
                        )}
                      </div>
                    ) : (
                      <div className="text-center py-8 text-slate-400 dark:text-slate-500">
                        <Calendar className="w-10 h-10 mx-auto opacity-30 mb-2" />
                        <p className="text-sm">Belum ada item aktif. Silakan mulai Lesson!</p>
                      </div>
                    )}
                  </div>
                )}

              </div>
            </div>

            {/* SRS Stage distribution overview */}
            <div className="bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm p-6 sm:p-8 space-y-6">
              <div className="flex items-center space-x-2">
                <BarChart2 className="w-5 h-5 text-indigo-500" />
                <h3 className="font-extrabold text-lg tracking-tight">Status Tahap Belajar (SRS Stage)</h3>
              </div>

              <div className="grid grid-cols-2 sm:grid-cols-5 gap-4">
                {[
                  { label: 'Apprentice', count: (stats?.distribution[1]||0)+(stats?.distribution[2]||0)+(stats?.distribution[3]||0)+(stats?.distribution[4]||0), color: 'bg-rose-500' },
                  { label: 'Guru', count: (stats?.distribution[5]||0)+(stats?.distribution[6]||0), color: 'bg-purple-600' },
                  { label: 'Master', count: stats?.distribution[7]||0, color: 'bg-blue-600' },
                  { label: 'Enlightened', count: stats?.distribution[8]||0, color: 'bg-teal-600' },
                  { label: 'Burned 🔥', count: stats?.distribution[9]||0, color: 'bg-slate-700 text-amber-400 border border-amber-500/20' },
                ].map((stage, idx) => (
                  <div key={idx} className="flex flex-col items-center justify-between p-4 bg-slate-50 dark:bg-slate-950 rounded-2xl border border-slate-100 dark:border-slate-850 text-center">
                    <span className="text-xxs font-bold text-slate-500 dark:text-slate-400 uppercase tracking-widest">{stage.label}</span>
                    <span className="text-2xl font-black text-slate-800 dark:text-slate-200 my-2">{stage.count}</span>
                    <div className={`w-3 h-3 rounded-full ${stage.color.split(' ')[0]}`}></div>
                  </div>
                ))}
              </div>
            </div>

          </div>

          {/* Right Gamified Leaderboard */}
          <div className="space-y-6">
            
            <div className="bg-gradient-to-br from-indigo-900 to-slate-950 text-white rounded-3xl border border-slate-850 shadow-md p-6 sm:p-8 space-y-6">
              
              <div>
                <div className="flex items-center space-x-2">
                  <Star className="w-5 h-5 text-amber-400 fill-amber-400" />
                  <h3 className="font-extrabold text-lg tracking-tight text-white">Leaderboard KaniGani</h3>
                </div>
                <p className="text-2xs text-slate-400 mt-1">
                  Bersaing secara sehat dengan pembelajar Bahasa Jepang lainnya di Indonesia.
                </p>
              </div>

              {/* Leaderboard list */}
              <div className="space-y-3.5">
                {leaderboard.map((user, idx) => (
                  <div 
                    key={idx} 
                    className={`flex items-center justify-between p-3 rounded-2xl transition-all duration-200 ${
                      user.isSelf 
                        ? 'bg-gradient-to-r from-pink-500/20 to-indigo-500/20 border border-indigo-500/30' 
                        : 'bg-slate-900/50 border border-slate-800'
                    }`}
                  >
                    <div className="flex items-center space-x-3.5">
                      {/* Rank Number */}
                      <span className={`w-6 h-6 rounded-full flex items-center justify-center text-xs font-black ${
                        idx === 0 
                          ? 'bg-amber-400 text-slate-950 shadow-md shadow-amber-400/20' 
                          : idx === 1 
                          ? 'bg-slate-300 text-slate-950'
                          : idx === 2
                          ? 'bg-amber-700 text-slate-50'
                          : 'bg-slate-800 text-slate-400'
                      }`}>
                        {user.rank}
                      </span>
                      
                      <div>
                        <div className="flex items-center space-x-1.5">
                          <span className={`text-sm font-bold ${user.isSelf ? 'text-indigo-300' : 'text-slate-100'}`}>
                            {user.name}
                          </span>
                          {user.isSelf && <UserCheck className="w-3.5 h-3.5 text-indigo-400" />}
                        </div>
                        <span className="text-3xs font-semibold text-slate-400 uppercase tracking-widest block">
                          Level {user.level}
                        </span>
                      </div>
                    </div>

                    <div className="text-right">
                      <span className="text-xs font-black text-slate-200 block">{user.points} XP</span>
                      <span className={`inline-block w-1.5 h-1.5 rounded-full ${user.active ? 'bg-emerald-400 animate-pulse' : 'bg-slate-600'}`}></span>
                    </div>
                  </div>
                ))}
              </div>

              <div className="text-center">
                <span className="text-3xs uppercase tracking-widest text-indigo-400 font-bold block">Update Realtime</span>
                <span className="text-4xs text-slate-500">Nilai didasarkan pada total level & item Guru SRS</span>
              </div>

            </div>

          </div>

        </div>

      </main>

      <Footer />
    </div>
  );
}
