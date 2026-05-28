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
  Shield, ChevronDown, ChevronUp, Zap, ChevronRight, X, Info
} from 'lucide-react';
import { DashboardStats, Item } from '@/lib/types';

export default function Dashboard() {
  const [stats, setStats] = useState<DashboardStats | null>(null);
  const [loading, setLoading] = useState(true);
  const [username, setUsername] = useState('Pengguna');
  const [activeTab, setActiveTab] = useState<'schedule' | 'items'>('schedule');
  const [itemDetails, setItemDetails] = useState<any[]>([]);
  const [devMode, setDevMode] = useState<boolean>(false);
  const [devModeToast, setDevModeToast] = useState<boolean | null>(null);
  const [betaTester, setBetaTester] = useState<boolean>(false);
  const [resetting, setResetting] = useState(false);
  const router = useRouter();
  const [selectedHourIdx, setSelectedHourIdx] = useState<number>(0);
  const [kanjiDropdownOpen, setKanjiDropdownOpen] = useState(false);
  const [currentLevelKanjiList, setCurrentLevelKanjiList] = useState<any[]>([]);
  const [availableLessons, setAvailableLessons] = useState<any[]>([]);
  const [pickerOpen, setPickerOpen] = useState(false);
  const [selectedLessonIds, setSelectedLessonIds] = useState<string[]>([]);
  const [interleaveLessons, setInterleaveLessons] = useState(true);

  // Group lessons by level & type
  const getGroupedLessons = () => {
    const groups: Record<number, { radical: any[]; kanji: any[]; vocabulary: any[] }> = {};
    availableLessons.forEach(item => {
      const lvl = item.level || 1;
      if (!groups[lvl]) {
        groups[lvl] = { radical: [], kanji: [], vocabulary: [] };
      }
      const type = item.type as 'radical' | 'kanji' | 'vocabulary';
      if (groups[lvl][type]) {
        groups[lvl][type].push(item);
      }
    });
    return groups;
  };

  const toggleSelection = (itemId: string) => {
    setSelectedLessonIds(prev =>
      prev.includes(itemId) ? prev.filter(id => id !== itemId) : [...prev, itemId]
    );
  };

  const isLevelAllSelected = (levelNum: number) => {
    const levelItems = availableLessons.filter(i => i.level === levelNum);
    if (levelItems.length === 0) return false;
    return levelItems.every(i => selectedLessonIds.includes(i.id));
  };

  const isTypeAllSelected = (levelNum: number, type: string) => {
    const typeItems = availableLessons.filter(i => i.level === levelNum && i.type === type);
    if (typeItems.length === 0) return false;
    return typeItems.every(i => selectedLessonIds.includes(i.id));
  };

  const toggleLevelSelect = (levelNum: number) => {
    const levelIds = availableLessons.filter(i => i.level === levelNum).map(i => i.id);
    const isAllSel = isLevelAllSelected(levelNum);
    if (isAllSel) {
      setSelectedLessonIds(prev => prev.filter(id => !levelIds.includes(id)));
    } else {
      setSelectedLessonIds(prev => Array.from(new Set([...prev, ...levelIds])));
    }
  };

  const toggleTypeSelect = (levelNum: number, type: string) => {
    const typeIds = availableLessons.filter(i => i.level === levelNum && i.type === type).map(i => i.id);
    const isAllSel = isTypeAllSelected(levelNum, type);
    if (isAllSel) {
      setSelectedLessonIds(prev => prev.filter(id => !typeIds.includes(id)));
    } else {
      setSelectedLessonIds(prev => Array.from(new Set([...prev, ...typeIds])));
    }
  };

  const isAllGlobalSelected = availableLessons.length > 0 && availableLessons.every(i => selectedLessonIds.includes(i.id));
  const toggleAllGlobal = () => {
    if (isAllGlobalSelected) {
      setSelectedLessonIds([]);
    } else {
      setSelectedLessonIds(availableLessons.map(i => i.id));
    }
  };

  const startCustomLesson = () => {
    if (selectedLessonIds.length === 0) return;
    localStorage.setItem('custom-lesson-queue', JSON.stringify(selectedLessonIds));
    localStorage.setItem('custom-lesson-interleave', String(interleaveLessons));
    router.push('/lesson');
  };

  const formatDueTime = (nextReviewStr: string) => {
    const nextReview = new Date(nextReviewStr);
    const now = new Date();
    
    const options: Intl.DateTimeFormatOptions = {
      day: 'numeric',
      month: 'short',
      hour: '2-digit',
      minute: '2-digit',
      hour12: false
    };
    
    const formattedDate = nextReview.toLocaleDateString('id-ID', options);
    
    if (nextReview <= now) {
      return `Review Sekarang (Due: ${formattedDate})`;
    } else {
      const diffMs = nextReview.getTime() - now.getTime();
      const diffHours = Math.ceil(diffMs / (1000 * 60 * 60));
      if (diffHours < 24) {
        return `Due dalam ${diffHours} jam (${formattedDate})`;
      } else {
        const diffDays = Math.ceil(diffHours / 24);
        return `Due dalam ${diffDays} hari (${formattedDate})`;
      }
    }
  };

  useEffect(() => {
    // Read initial dev mode state
    setDevMode(localStorage.getItem('kanigani-dev-mode') === 'true');
    setBetaTester(localStorage.getItem('kanigani-beta-tester') === 'true');

    // Toggle dev mode with 'G' key — only when not typing in an input/textarea
    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === 'g' || e.key === 'G') {
        const tag = (document.activeElement as HTMLElement)?.tagName;
        if (tag === 'INPUT' || tag === 'TEXTAREA') return;
        const next = localStorage.getItem('kanigani-dev-mode') !== 'true';
        localStorage.setItem('kanigani-dev-mode', String(next));
        setDevMode(next);
        setDevModeToast(next);
        setTimeout(() => setDevModeToast(null), 2500);
      }
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
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

        // 2. Fetch all kanji to calculate dynamic user level
        const { data: allKanji, error: kanjiErr } = await supabase
          .from('items')
          .select('id, level, character, slug, type')
          .eq('type', 'kanji');

        if (kanjiErr) throw kanjiErr;

        // 2b. Fetch prerequisites for locked checks
        const { data: prereqs, error: prereqErr } = await supabase
          .from('item_prerequisites')
          .select('item_id, requires_item_id, items!requires_item_id(id, character, slug, level, type)');

        if (prereqErr) throw prereqErr;

        const progressGuruSet = new Set(
          (progresses || [])
            .filter((p: any) => p.srs_stage >= 5)
            .map((p: any) => p.item_id)
        );

        let userLevel = 1;
        while (userLevel <= 10) {
          const levelKanjiItems = allKanji ? allKanji.filter((k: any) => k.level === userLevel) : [];
          if (levelKanjiItems.length === 0) break;

          const passed = levelKanjiItems.filter((k: any) => progressGuruSet.has(k.id)).length;
          const ratio = passed / levelKanjiItems.length;
          if (ratio >= 0.9) {
            userLevel++;
          } else {
            break;
          }
        }

        // Calculate stats for current active level
        const currentLevelKanji = allKanji ? allKanji.filter((k: any) => k.level === userLevel) : [];
        const totalKanji = currentLevelKanji.length;
        const kanjiIds = currentLevelKanji.map(k => k.id);

        // Calculate Stats
        let lessonsAvailable = 0;
        let reviewsDue = 0;
        let kanjiPassed = 0;
        const lessonsList: any[] = [];

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
              lessonsList.push({
                id: item.id,
                character: item.character,
                type: item.type,
                level: item.level,
                slug: item.slug,
                lesson_position: item.lesson_position
              });
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

        // Group prerequisites by dependent item_id
        const prereqsMap = new Map<string, any[]>();
        if (prereqs) {
          prereqs.forEach((row: any) => {
            const reqItem = row.items;
            if (reqItem) {
              const depId = row.item_id;
              if (!prereqsMap.has(depId)) {
                prereqsMap.set(depId, []);
              }
              prereqsMap.get(depId)!.push(reqItem);
            }
          });
        }

        const progressMap = new Map(
          (progresses || []).map((p: any) => [p.item_id, p])
        );

        const kanjiList = currentLevelKanji.map((k: any) => {
          const progress = progressMap.get(k.id);
          const srs_stage = progress ? progress.srs_stage : 0;
          const next_review = progress ? progress.next_review : null;
          
          // Get all prerequisites
          const allPrereqs = prereqsMap.get(k.id) || [];
          
          // Filter those prerequisites that are NOT yet learned (srs_stage < 5)
          const unlearnedPrereqs = allPrereqs.filter((req: any) => {
            const reqProg = progressMap.get(req.id);
            const reqStage = reqProg ? reqProg.srs_stage : 0;
            return reqStage < 5;
          });

          return {
            id: k.id,
            character: k.character,
            slug: k.slug || 'kanji',
            srs_stage,
            next_review,
            unlearnedPrereqs: unlearnedPrereqs.map((u: any) => ({
              id: u.id,
              character: u.character,
              slug: u.slug || 'radical'
            }))
          };
        });

        setCurrentLevelKanjiList(kanjiList);

        setItemDetails(loadedItems);
        lessonsList.sort((a, b) => (a.level - b.level) || (a.lesson_position - b.lesson_position));
        setAvailableLessons(lessonsList);
        setStats({
          lessonsAvailable,
          reviewsDue,
          distribution,
          byType,
          level: userLevel,
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

  // Generate 24-hour hourly schedule for the bar chart
  const getHourlySchedule = () => {
    const now = new Date();
    
    // Create 24 hourly buckets starting from the current hour
    const buckets = Array.from({ length: 24 }, (_, i) => {
      const bucketDate = new Date(now);
      bucketDate.setHours(now.getHours() + i, 0, 0, 0); // Align to the start of the hour
      return {
        timestamp: bucketDate.getTime(),
        hourNum: bucketDate.getHours(),
        label: String(bucketDate.getHours()).padStart(2, '0') + ':00',
        count: 0,
        items: [] as any[]
      };
    });

    const oneHourMs = 60 * 60 * 1000;
    const nowTime = now.getTime();

    itemDetails.forEach(item => {
      if (item.next_review && item.srs_stage >= 1 && item.srs_stage <= 8) {
        const reviewDate = new Date(item.next_review);
        const reviewTime = reviewDate.getTime();

        // Overdue reviews go into the first bucket (index 0)
        if (reviewTime <= nowTime) {
          buckets[0].count++;
          buckets[0].items.push(item);
        } else {
          // Calculate the relative hour index
          const diffMs = reviewTime - buckets[0].timestamp;
          const bucketIndex = Math.floor(diffMs / oneHourMs);
          
          if (bucketIndex >= 0 && bucketIndex < 24) {
            buckets[bucketIndex].count++;
            buckets[bucketIndex].items.push(item);
          }
        }
      }
    });

    return buckets;
  };

  const getSrsLabel = (stage: number) => {
    if (stage === 0) return 'Terkunci';
    if (stage >= 1 && stage <= 4) return 'Kepiting Cilik';
    if (stage === 5 || stage === 6) return 'Kepiting Guru';
    if (stage === 7) return 'Kepiting Suhu';
    if (stage === 8) return 'Kepiting Sakti';
    return 'Kepiting Rebus 🦀🔥';
  };

  const getSrsColorClass = (stage: number) => {
    if (stage === 0) return 'bg-slate-200 text-slate-500 dark:bg-slate-800 dark:text-slate-500';
    if (stage === 1) return 'bg-blue-100 text-blue-400 dark:bg-blue-950 dark:text-blue-300';
    if (stage === 2) return 'bg-blue-200 text-blue-500 dark:bg-blue-900 dark:text-blue-300';
    if (stage === 3) return 'bg-blue-300 text-blue-700 dark:bg-blue-800 dark:text-blue-200';
    if (stage === 4) return 'bg-blue-400 text-white dark:bg-blue-700 dark:text-white';
    if (stage === 5) return 'bg-blue-500 text-white dark:bg-blue-600 dark:text-white';
    if (stage === 6) return 'bg-blue-600 text-white dark:bg-blue-500 dark:text-white';
    if (stage === 7) return 'bg-blue-700 text-white dark:bg-blue-400 dark:text-blue-950';
    if (stage === 8) return 'bg-blue-800 text-white dark:bg-blue-300 dark:text-blue-950';
    return 'bg-blue-900 text-white dark:bg-blue-200 dark:text-blue-950';
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
    { rank: 1, name: 'TanakaSan', level: 10, points: 1200, active: true },
    { rank: 2, name: 'BudiKanji', level: 8, points: 940, active: true },
    { rank: 3, name: 'SakuraChan', level: 7, points: 780, active: false },
    { rank: 4, name: 'KaniMaster', level: 6, points: 640, active: true },
    { rank: 5, name: 'WaniCrab', level: 5, points: 520, active: false },
    { rank: 6, name: username, level: stats?.level || 1, points: itemDetails.filter(i => i.srs_stage >= 5).length * 10 + itemDetails.filter(i => i.srs_stage > 0).length, active: true, isSelf: true },
    { rank: 7, name: 'GanyDev', level: 3, points: 210, active: true },
    { rank: 8, name: 'NihonLover', level: 1, points: 35, active: false },
    { rank: 9, name: 'WaniGuru', level: 1, points: 20, active: true },
  ].sort((a, b) => b.points - a.points).map((item, idx) => ({ ...item, rank: idx + 1 }));

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />
      <CrabBackground />

      {/* Dev Mode Toast Notification */}
      {devModeToast !== null && (
        <div
          className={`fixed bottom-6 left-1/2 -translate-x-1/2 z-50 flex items-center space-x-2 px-4 py-2.5 rounded-2xl shadow-xl border text-sm font-bold animate-fade-in transition-all ${
            devModeToast
              ? 'bg-amber-400 border-amber-500 text-amber-900'
              : 'bg-slate-800 border-slate-700 text-slate-200'
          }`}
        >
          <Zap className="w-4 h-4" />
          <span>{devModeToast ? 'Dev Mode ON ⚡' : 'Dev Mode OFF'}</span>
        </div>
      )}

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
              <span className="text-xxs font-bold text-rose-600 dark:text-rose-400 uppercase tracking-widest block">Kepiting Guru</span>
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
                Anda dapat mempercepat timer SRS untuk semua item yang telah Anda pelajari (Kepiting Cilik s/d Kepiting Sakti) menjadi saat ini. Hal ini akan memicu semua item tersebut langsung masuk ke antrean <strong>SRS Review Kuis</strong> untuk diuji segera.
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
                  <div className="flex items-center gap-2">
                    <button
                      onClick={() => {
                        setSelectedLessonIds([]);
                        setPickerOpen(true);
                      }}
                      className="px-4 py-2.5 bg-white/15 hover:bg-white/25 border border-white/20 text-white font-bold rounded-xl shadow-md flex items-center space-x-1.5 transition-all duration-200 select-none cursor-pointer"
                    >
                      <span className="text-sm">🤓</span>
                      <span>Advanced</span>
                      <ChevronRight className="w-4 h-4" />
                    </button>
                    <button
                      onClick={() => router.push('/lesson')}
                      className="px-5 py-2.5 bg-white text-teal-600 font-bold rounded-xl shadow-md hover:bg-cyan-50 flex items-center space-x-1.5 transition-all duration-200 cursor-pointer"
                    >
                      <span>Mulai</span>
                      <ArrowUpRight className="w-4 h-4" />
                    </button>
                  </div>
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

                <div className="flex items-center gap-2">
                  {betaTester && (
                    <button
                      onClick={handleResetTimers}
                      disabled={resetting}
                      title="Percepat Semua Review (Beta Tester)"
                      className="px-3 py-2.5 bg-white/15 hover:bg-white/25 backdrop-blur-md text-white font-bold rounded-xl flex items-center space-x-1.5 transition-all duration-200 disabled:opacity-50 border border-white/20"
                    >
                      <Zap className={`w-4 h-4 ${resetting ? 'animate-spin' : ''}`} />
                      <span className="text-xs hidden sm:inline">{resetting ? 'Memproses...' : 'Percepat'}</span>
                    </button>
                  )}

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
          </div>

        </section>

        {/* Level Up Progress Card */}
        <section className="bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm p-6 sm:p-8 space-y-4">
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
            <div>
              <div className="flex items-center space-x-2">
                <Award className="w-5 h-5 text-indigo-500" />
                <h3 className="font-extrabold text-lg tracking-tight">Kapan Saya Naik Level {stats ? stats.level + 1 : 2}?</h3>
              </div>
              <p className="text-xs text-slate-500 dark:text-slate-400 mt-0.5">
                KaniGani mensyaratkan kelulusan minimal 90% Kanji Level {stats ? stats.level : 1} ke status Kepiting Guru (Tahap 5) untuk naik level.
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
                className="bg-gradient-to-r from-kanji to-indigo-500 h-full rounded-full transition-all duration-500"
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
            <div className="space-y-3">
              <button
                onClick={() => setKanjiDropdownOpen(!kanjiDropdownOpen)}
                className="w-full text-left p-4.5 bg-indigo-50 dark:bg-indigo-950/25 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl text-sm text-indigo-750 dark:text-indigo-300 flex items-center justify-between transition-all duration-200 hover:bg-indigo-100/70 dark:hover:bg-indigo-950/40 focus:outline-none"
              >
                <div className="flex items-center space-x-2.5 font-bold">
                  <AlertCircle className="w-5 h-5 text-indigo-500 shrink-0" />
                  <span>
                    Butuh {Math.max(0, Math.ceil(stats.kanjiTotalInLevel * 0.9) - stats.kanjiPassedInLevel)} kanji lagi untuk naik Level {stats.level + 1}! Semangat belajar! (Klik untuk lihat daftar progres)
                  </span>
                </div>
                {kanjiDropdownOpen ? (
                  <ChevronUp className="w-5 h-5 text-indigo-500 shrink-0 transition-transform" />
                ) : (
                  <ChevronDown className="w-5 h-5 text-indigo-500 shrink-0 transition-transform" />
                )}
              </button>

              {kanjiDropdownOpen && (
                <div className="p-5 bg-slate-50 dark:bg-slate-900/40 border border-slate-150 dark:border-slate-800 rounded-2xl animate-fade-in space-y-3">
                  <div className="text-xxs font-extrabold uppercase tracking-widest text-slate-450 dark:text-slate-500">
                    Progres Kanji Level {stats.level}
                  </div>
                  
                  <div className="grid grid-cols-3 sm:grid-cols-6 md:grid-cols-8 gap-3">
                    {currentLevelKanjiList.map((kanji) => {
                      const isLocked = kanji.srs_stage === 0;
                      const isReadyForLesson = kanji.srs_stage === 1 && !kanji.next_review;
                      const isPassed = kanji.srs_stage >= 5;
                      
                      let cardClass = "";
                      let statusLabel = "";
                      let tooltipText = "";
                      
                      if (isLocked) {
                        cardClass = "bg-slate-100 text-slate-450 dark:bg-slate-800/40 dark:text-slate-550 border border-slate-200 dark:border-slate-800/80";
                        statusLabel = "Terkunci";
                        if (kanji.unlearnedPrereqs.length > 0) {
                          tooltipText = "belum belajar radikalnya: " + kanji.unlearnedPrereqs.map((r: any) => r.character).join(", ");
                        } else {
                          tooltipText = "belum belajar radikalnya";
                        }
                      } else if (isReadyForLesson) {
                        cardClass = "bg-kanji/10 text-kanji border border-kanji/30 animate-pulse-subtle font-extrabold";
                        statusLabel = "Tersedia Lesson";
                        tooltipText = "Tersedia untuk Pelajaran (Lesson)";
                      } else if (isPassed) {
                        cardClass = "bg-emerald-500 text-white font-extrabold border border-emerald-600 shadow-3xs";
                        statusLabel = `Kepiting Guru+ (${kanji.srs_stage})`;
                        tooltipText = kanji.next_review ? formatDueTime(kanji.next_review) : "Lulus";
                      } else {
                        cardClass = "bg-kanji text-white font-extrabold border border-kanji/80 shadow-3xs";
                        statusLabel = `Kepiting Cilik (${kanji.srs_stage})`;
                        tooltipText = kanji.next_review ? formatDueTime(kanji.next_review) : "Terkunci";
                      }
                      
                      return (
                        <div
                          key={kanji.id}
                          className="group relative flex flex-col items-center justify-center transition-all duration-200 hover:scale-105 select-none cursor-help"
                        >
                          <div className={`w-full flex flex-col items-center justify-center py-2 px-1 rounded-lg ${cardClass}`}>
                            <span className="text-xl font-black font-japanese tracking-normal leading-none mb-1">
                              {kanji.character}
                            </span>
                            <span className="text-[9px] uppercase font-bold tracking-wider truncate max-w-full text-center opacity-85 px-0.5">
                              {kanji.slug}
                            </span>
                          </div>
                          
                          <div className="absolute bottom-full mb-2 hidden group-hover:flex flex-col items-center z-50 pointer-events-none transition-all duration-200">
                            <div className="bg-slate-900 dark:bg-slate-950 text-white text-[10px] font-black tracking-wide py-1.5 px-3 rounded-xl shadow-lg border border-slate-800 dark:border-slate-800 whitespace-nowrap space-y-0.5 text-center">
                              <div className="text-slate-400 font-extrabold uppercase text-[8px] tracking-widest">{kanji.slug}</div>
                              <div className="text-white font-bold">{tooltipText}</div>
                              <div className="text-indigo-400 text-[8px] font-black uppercase tracking-wider">{statusLabel}</div>
                            </div>
                            <div className="w-2.5 h-2.5 bg-slate-900 dark:bg-slate-950 rotate-45 -mt-1.5 border-r border-b border-slate-800 dark:border-slate-800"></div>
                          </div>
                        </div>
                      );
                    })}
                  </div>
                </div>
              )}
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
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors ${activeTab === 'schedule'
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
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors ${activeTab === 'items'
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
                  /* 24-HOUR REVIEW SCHEDULE BAR CHART & BREAKDOWN */
                  <div className="space-y-6 animate-fade-in">
                    {(() => {
                      const maxCount = Math.max(...schedule.map(s => s.count), 0);
                      const chartMax = maxCount > 0 ? Math.ceil(maxCount * 1.25) : 5;
                      const total24h = schedule.reduce((acc, curr) => acc + curr.count, 0);

                      return (
                        <>
                          <div className="relative bg-slate-50/50 dark:bg-slate-950/30 rounded-2xl border border-slate-100 dark:border-slate-800/80 p-4 sm:p-6 overflow-hidden">
                            {/* Chart Header */}
                            <div className="flex justify-between items-center mb-4">
                              <div className="text-xs text-slate-400 dark:text-slate-500 font-semibold flex items-center space-x-1.5">
                                <span className="inline-block w-2 h-2 rounded-full bg-indigo-500 animate-pulse"></span>
                                <span>Ketuk balok untuk melihat item detail</span>
                              </div>
                              <div className="text-xs font-bold px-2.5 py-1 bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300 rounded-lg">
                                Total 24 Jam: {total24h} item
                              </div>
                            </div>

                            {/* Main Chart Area with Y-Axis and Gridlines */}
                            <div className="relative flex h-64 mt-2">
                              {/* Y-Axis Labels */}
                              <div className="flex flex-col justify-between text-right text-3xs font-extrabold text-slate-400 dark:text-slate-650 w-8 pr-2.5 select-none h-52 mt-1">
                                <span>{chartMax}</span>
                                <span>{Math.round(chartMax / 2)}</span>
                                <span>0</span>
                              </div>

                              {/* Chart Grid Lines and Bars Container */}
                              <div className="flex-1 relative h-52 mt-1">
                                {/* Grid Lines */}
                                <div className="absolute inset-0 flex flex-col justify-between pointer-events-none select-none">
                                  <div className="border-t border-slate-200/50 dark:border-slate-800/40 w-full h-0"></div>
                                  <div className="border-t border-dashed border-slate-200/40 dark:border-slate-800/20 w-full h-0"></div>
                                  <div className="border-t border-slate-200/50 dark:border-slate-800/40 w-full h-0"></div>
                                </div>

                                {/* Bars Horizontal Scroll Wrapper */}
                                <div className="absolute inset-0 overflow-x-hidden sm:overflow-x-auto select-none scrollbar-none flex items-end justify-between gap-1.5 px-1 pb-0.5">
                                  <div className="flex items-end justify-between w-full sm:min-w-[560px] h-full gap-1 sm:gap-2">
                                    {schedule.map((item, idx) => {
                                      const isSelected = selectedHourIdx === idx;
                                      const hasReviews = item.count > 0;
                                      const barHeightPct = hasReviews ? (item.count / chartMax) * 100 : 0;
                                      
                                      return (
                                        <div
                                          key={idx}
                                          onClick={() => setSelectedHourIdx(idx)}
                                          className={`flex-1 flex-col items-center justify-end h-full cursor-pointer group relative ${
                                            idx >= 12 ? 'hidden sm:flex' : 'flex'
                                          }`}
                                        >
                                          {/* Hover Count Bubble */}
                                          <div className="absolute -top-8 bg-slate-900 text-white dark:bg-white dark:text-slate-950 text-3xs font-black px-1.5 py-0.5 rounded-md shadow-md opacity-0 group-hover:opacity-100 transition-opacity duration-150 pointer-events-none whitespace-nowrap z-20">
                                            {item.count} {item.count === 1 ? 'item' : 'item'}
                                          </div>

                                          {/* Bar Column Outer Container (Slot) */}
                                          <div 
                                            className={`w-full h-full bg-slate-100/30 dark:bg-slate-900/10 border border-slate-200/20 dark:border-slate-800/20 rounded-t-md flex flex-col justify-end overflow-hidden transition-all duration-300 ${
                                              isSelected 
                                                ? 'ring-2 ring-indigo-500/80 ring-offset-2 dark:ring-offset-slate-950 bg-indigo-50/10 dark:bg-indigo-950/10' 
                                                : 'hover:bg-slate-200/20 dark:hover:bg-slate-800/20'
                                            }`}
                                          >
                                            {/* Bar Column Inner Value */}
                                            {hasReviews && (
                                              <div
                                                className={`w-full rounded-t-sm transition-all duration-500 bg-gradient-to-t ${
                                                  idx === 0 
                                                    ? 'from-pink-500 via-rose-500 to-indigo-500' // Highlight current/overdue hour
                                                    : 'from-indigo-600 to-pink-500 dark:from-indigo-500 dark:to-pink-500'
                                                } ${
                                                  isSelected ? 'brightness-110 shadow-lg shadow-indigo-500/20' : 'group-hover:brightness-105'
                                                }`}
                                                style={{ height: `${Math.max(4, barHeightPct)}%` }}
                                              />
                                            )}
                                          </div>

                                          {/* Mini Y-Axis Tick Line (under the bar) */}
                                          <div className={`w-0.5 h-1.5 mt-1 transition-colors ${isSelected ? 'bg-indigo-500' : 'bg-slate-350 dark:bg-slate-800'}`}></div>
                                        </div>
                                      );
                                    })}
                                  </div>
                                </div>
                              </div>
                            </div>

                            {/* X-Axis Time Labels Wrapper */}
                            <div className="flex border-t border-slate-200/30 dark:border-slate-800/40 pt-2 ml-8 pr-1">
                              <div className="flex justify-between w-full sm:min-w-[560px] text-3xs font-extrabold text-slate-400 dark:text-slate-500">
                                {schedule.map((item, idx) => {
                                  const isSelected = selectedHourIdx === idx;
                                  return (
                                    <div
                                      key={idx}
                                      onClick={() => setSelectedHourIdx(idx)}
                                      className={`flex-1 text-center cursor-pointer select-none transition-colors duration-200 ${
                                        isSelected 
                                          ? 'text-indigo-500 font-black' 
                                          : 'hover:text-slate-700 dark:hover:text-slate-350'
                                      } ${idx >= 12 ? 'hidden sm:block' : 'block'}`}
                                    >
                                      {idx === 0 ? 'Skrg' : item.label.split(':')[0]}
                                    </div>
                                  );
                                })}
                              </div>
                            </div>
                          </div>

                          {/* INTERACTIVE BREAKDOWN CARD */}
                          {(() => {
                            const selectedBucket = schedule[selectedHourIdx];
                            const overdueCount = selectedHourIdx === 0 
                              ? selectedBucket.items.filter((i: any) => {
                                  const nowTime = new Date().getTime();
                                  const rTime = new Date(i.next_review).getTime();
                                  return rTime <= nowTime;
                                }).length
                              : 0;

                            return (
                              <div className="bg-slate-55 dark:bg-slate-950/40 rounded-2xl border border-slate-100 dark:border-slate-800 p-4 sm:p-5 space-y-4 transition-all duration-300">
                                <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 border-b border-slate-200/40 dark:border-slate-800/60 pb-3">
                                  <div className="flex items-center space-x-2.5">
                                    <div className="p-2 bg-indigo-500/10 text-indigo-500 rounded-xl">
                                      <Clock className="w-4 h-4" />
                                    </div>
                                    <div>
                                      <h4 className="text-sm font-bold text-slate-800 dark:text-slate-250">
                                        {selectedHourIdx === 0 
                                          ? 'Detail Review Saat Ini (Sekarang)' 
                                          : `Detail Review Pukul ${selectedBucket.label} WIB`}
                                      </h4>
                                      <p className="text-3xs font-semibold text-slate-400 dark:text-slate-500 mt-0.5 uppercase tracking-widest">
                                        {selectedHourIdx === 0 ? 'Mencakup review lewat jatuh tempo' : 'Proyeksi jam ke-' + selectedHourIdx}
                                      </p>
                                    </div>
                                  </div>
                                  <div className="flex items-center gap-2">
                                    {overdueCount > 0 && (
                                      <span className="text-[10px] font-bold px-2 py-0.5 bg-rose-500/10 text-rose-500 dark:text-rose-450 border border-rose-500/20 rounded-md animate-pulse">
                                        {overdueCount} Overdue
                                      </span>
                                    )}
                                    <span className="text-xs font-black px-3 py-1 bg-indigo-500 text-white rounded-full">
                                      {selectedBucket.count} item siap
                                    </span>
                                  </div>
                                </div>

                                {selectedBucket.count > 0 ? (
                                  <div className="space-y-4 animate-fade-in">
                                    {/* Display breakdown indicators */}
                                    <div className="flex flex-wrap gap-4 text-3xs font-black uppercase tracking-widest text-slate-550 dark:text-slate-400">
                                      {selectedBucket.items.some((i: any) => i.type === 'radical') && (
                                        <div className="flex items-center space-x-1.5">
                                          <span className="w-2 h-2 rounded-full bg-radical"></span>
                                          <span>Radikal ({selectedBucket.items.filter((i: any) => i.type === 'radical').length})</span>
                                        </div>
                                      )}
                                      {selectedBucket.items.some((i: any) => i.type === 'kanji') && (
                                        <div className="flex items-center space-x-1.5">
                                          <span className="w-2 h-2 rounded-full bg-kanji"></span>
                                          <span>Kanji ({selectedBucket.items.filter((i: any) => i.type === 'kanji').length})</span>
                                        </div>
                                      )}
                                      {selectedBucket.items.some((i: any) => i.type === 'vocabulary') && (
                                        <div className="flex items-center space-x-1.5">
                                          <span className="w-2 h-2 rounded-full bg-vocab"></span>
                                          <span>Kosakata ({selectedBucket.items.filter((i: any) => i.type === 'vocabulary').length})</span>
                                        </div>
                                      )}
                                    </div>

                                    {/* Characters List Grid */}
                                    <div className="flex flex-wrap gap-2.5">
                                      {[...selectedBucket.items]
                                        .sort((a: any, b: any) => {
                                          const order = { radical: 1, kanji: 2, vocabulary: 3 };
                                          const rankA = order[a.type as 'radical' | 'kanji' | 'vocabulary'] || 4;
                                          const rankB = order[b.type as 'radical' | 'kanji' | 'vocabulary'] || 4;
                                          return rankA - rankB;
                                        })
                                        .map((item: any, idx: number) => (
                                          <div
                                            key={idx}
                                            className={`w-12 h-12 flex items-center justify-center rounded-xl border text-xl font-black select-none shadow-xxs transition-all hover:scale-110 hover:shadow-xs duration-150 ${
                                              item.type === 'radical'
                                                ? 'bg-radical/5 border-radical/15 text-radical dark:bg-radical/10/30'
                                                : item.type === 'kanji'
                                                  ? 'bg-kanji/5 border-kanji/15 text-kanji dark:bg-kanji/10/30'
                                                  : 'bg-vocab/5 border-vocab/15 text-vocab dark:bg-vocab/10/30'
                                            }`}
                                          >
                                            <span>{item.character}</span>
                                          </div>
                                        ))}
                                    </div>
                                  </div>
                                ) : (
                                  <div className="text-center py-6 text-slate-400 dark:text-slate-500">
                                    <BookOpen className="w-8 h-8 mx-auto opacity-20 mb-2 animate-pulse" />
                                    <p className="text-xs font-semibold">Tidak ada review esok hari dalam jam ini.</p>
                                    <p className="text-3xs mt-1 text-slate-400">Pilih jam lain pada grafik untuk melihat jadwal review berikutnya.</p>
                                  </div>
                                )}
                              </div>
                            );
                          })()}
                        </>
                      );
                    })()}
                  </div>
                ) : (
                  /* ACTIVE ITEM LISTING */
                  <div>
                    {itemDetails.filter(i => i.srs_stage > 0).length > 0 ? (
                      <div className="grid grid-cols-2 sm:grid-cols-3 gap-3">
                        {itemDetails.filter(i => i.srs_stage > 0).slice(0, 15).map((item, idx) => (
                          <div
                            key={idx}
                            className={`p-3 rounded-2xl flex flex-col justify-between items-center text-center border shadow-xxs ${item.type === 'radical'
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
                  { label: 'Kepiting Cilik', count: (stats?.distribution[1] || 0) + (stats?.distribution[2] || 0) + (stats?.distribution[3] || 0) + (stats?.distribution[4] || 0), color: 'bg-rose-500' },
                  { label: 'Kepiting Guru', count: (stats?.distribution[5] || 0) + (stats?.distribution[6] || 0), color: 'bg-purple-600' },
                  { label: 'Kepiting Suhu', count: stats?.distribution[7] || 0, color: 'bg-blue-600' },
                  { label: 'Kepiting Sakti', count: stats?.distribution[8] || 0, color: 'bg-teal-600' },
                  { label: 'Kepiting Rebus 🦀🔥', count: stats?.distribution[9] || 0, color: 'bg-slate-700 text-amber-400 border border-amber-500/20' },
                ].map((stage, idx) => (
                  <div key={idx} className="flex flex-col items-center justify-between p-4 bg-slate-50 dark:bg-slate-950 rounded-2xl border border-slate-100 dark:border-slate-800 text-center">
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

            <div className="bg-gradient-to-br from-indigo-900 to-slate-950 text-white rounded-3xl border border-slate-800 shadow-md p-6 sm:p-8 space-y-6">

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
              <div className="space-y-3.5 max-h-[295px] overflow-y-auto pr-1 scrollbar-thin scrollbar-thumb-slate-800 scrollbar-track-transparent">
                {leaderboard.map((user, idx) => (
                  <div
                    key={idx}
                    className={`flex items-center justify-between p-3 rounded-2xl transition-all duration-200 ${user.isSelf
                        ? 'bg-gradient-to-r from-pink-500/20 to-indigo-500/20 border border-indigo-500/30'
                        : 'bg-slate-900/50 border border-slate-800'
                      }`}
                  >
                    <div className="flex items-center space-x-3.5">
                      {/* Rank Number */}
                      <span className={`w-6 h-6 rounded-full flex items-center justify-center text-xs font-black ${idx === 0
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
                      </div>
                    </div>

                    <div className="flex items-center space-x-2.5">
                      <span className="text-3xs font-extrabold px-2 py-0.5 bg-slate-850/80 border border-slate-800 text-slate-300 rounded-md">
                        Level {user.level}
                      </span>
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

      {/* Lesson Picker Modal */}
      {pickerOpen && (
        <div className="fixed inset-0 z-50 bg-slate-950/80 backdrop-blur-md flex items-center justify-center p-4 animate-fade-in">
          <div className="max-w-4xl w-full bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl shadow-2xl flex flex-col max-h-[85vh] overflow-hidden animate-fade-in">
            
            {/* Modal Header */}
            <div className="p-6 border-b border-slate-200 dark:border-slate-800 flex justify-between items-start bg-slate-50 dark:bg-slate-900/50">
              <div>
                <div className="flex items-center space-x-2">
                  <span className="text-xl animate-pulse">🤓</span>
                  <h2 className="text-2xl font-black tracking-tight">Lesson Picker</h2>
                </div>
                <div className="flex items-center gap-3 text-xs font-bold text-indigo-500 mt-2">
                  <button onClick={toggleAllGlobal} className="hover:underline cursor-pointer">
                    {isAllGlobalSelected ? 'Hapus Semua Pilihan' : 'Pilih Semua'}
                  </button>
                  <span className="text-slate-350 dark:text-slate-700">•</span>
                  <span className="text-slate-500 dark:text-slate-400 font-semibold">
                    {selectedLessonIds.length} dari {availableLessons.length} item dipilih
                  </span>
                </div>
              </div>
              <button
                onClick={() => setPickerOpen(false)}
                className="p-1.5 hover:bg-slate-200 dark:hover:bg-slate-800 rounded-xl transition-all cursor-pointer text-slate-500 hover:text-slate-800 dark:text-slate-400 dark:hover:text-slate-200"
              >
                <X className="w-6 h-6" />
              </button>
            </div>

            {/* Scrollable Content */}
            <div className="p-6 sm:p-8 flex-1 overflow-y-auto space-y-6">
              
              {/* Instructions */}
              <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/40 rounded-2xl flex items-start space-x-3 text-xs leading-relaxed text-indigo-855 dark:text-indigo-300 animate-fade-in">
                <Info className="w-5 h-5 shrink-0 text-indigo-500 mt-0.5" />
                <div>
                  <p className="font-bold mb-1 text-indigo-900 dark:text-indigo-200">Kustomisasi Antrean Pelajaran Anda</p>
                  <p>Pilih item di bawah ini untuk membuat daftar pelajaran kustom Anda. Centang <strong>"Interleave Lessons"</strong> di bagian bawah untuk mencampur urutan belajar (misal: mencampur radikal, kanji, kosakata) atau biarkan tidak tercentang untuk belajar berurutan.</p>
                </div>
              </div>

              {/* Grouped Levels & Items */}
              {availableLessons.length === 0 ? (
                <div className="py-12 text-center text-slate-400 dark:text-slate-500 font-bold">
                  Tidak ada item lesson yang tersedia.
                </div>
              ) : (
                <div className="space-y-8">
                  {Object.entries(getGroupedLessons()).map(([levelNumStr, levelData]) => {
                    const levelNum = parseInt(levelNumStr);
                    const isLvlAll = isLevelAllSelected(levelNum);
                    
                    return (
                      <div key={levelNum} className="space-y-4 border border-slate-150 dark:border-slate-800/80 p-5 rounded-2xl bg-slate-50/30 dark:bg-slate-900/30">
                        
                        {/* Level Header Row */}
                        <div className="flex justify-between items-center border-b border-slate-200 dark:border-slate-800 pb-2">
                          <h3 className="text-lg font-black tracking-tight bg-gradient-to-r from-indigo-500 to-pink-500 bg-clip-text text-transparent">
                            Level {levelNum}
                          </h3>
                          <button
                            onClick={() => toggleLevelSelect(levelNum)}
                            className="text-xs font-bold text-indigo-500 hover:underline cursor-pointer"
                          >
                            {isLvlAll ? 'Hapus Level ini' : 'Pilih Semua Level ini'}
                          </button>
                        </div>

                        {/* Level content split by item type */}
                        <div className="space-y-5">
                          
                          {/* Radicals */}
                          {levelData.radical.length > 0 && (
                            <div className="space-y-2 animate-fade-in">
                              <div className="flex justify-between items-center text-xxs font-extrabold uppercase tracking-widest text-slate-455 dark:text-slate-500">
                                <span>Radikal ({levelData.radical.length})</span>
                                <button
                                  onClick={() => toggleTypeSelect(levelNum, 'radical')}
                                  className="text-[10px] font-bold text-indigo-500 hover:underline cursor-pointer lowercase"
                                >
                                  {isTypeAllSelected(levelNum, 'radical') ? 'hapus' : 'pilih semua'}
                                </button>
                              </div>
                              <div className="flex flex-wrap gap-2.5">
                                {levelData.radical.map(item => {
                                  const isSel = selectedLessonIds.includes(item.id);
                                  return (
                                    <button
                                      key={item.id}
                                      onClick={() => toggleSelection(item.id)}
                                      className={`flex flex-col items-center justify-center py-2.5 px-3 min-w-[3.5rem] rounded-xl transition-all duration-150 active:scale-95 select-none ${
                                        isSel
                                          ? 'bg-radical text-white border-2 border-white scale-105 shadow-md glow-radical cursor-pointer'
                                          : 'bg-radical/15 text-radical border border-dashed border-radical/30 hover:bg-radical/30 hover:text-radical cursor-pointer font-bold'
                                      }`}
                                    >
                                      <span className="text-xl font-black font-japanese leading-none mb-1">{item.character}</span>
                                      <span className="text-[8px] font-extrabold uppercase tracking-wider opacity-85 max-w-[4rem] truncate">{item.slug}</span>
                                    </button>
                                  );
                                })}
                              </div>
                            </div>
                          )}

                          {/* Kanji */}
                          {levelData.kanji.length > 0 && (
                            <div className="space-y-2 animate-fade-in">
                              <div className="flex justify-between items-center text-xxs font-extrabold uppercase tracking-widest text-slate-455 dark:text-slate-500">
                                <span>Kanji ({levelData.kanji.length})</span>
                                <button
                                  onClick={() => toggleTypeSelect(levelNum, 'kanji')}
                                  className="text-[10px] font-bold text-indigo-500 hover:underline cursor-pointer lowercase"
                                >
                                  {isTypeAllSelected(levelNum, 'kanji') ? 'hapus' : 'pilih semua'}
                                </button>
                              </div>
                              <div className="flex flex-wrap gap-2.5">
                                {levelData.kanji.map(item => {
                                  const isSel = selectedLessonIds.includes(item.id);
                                  return (
                                    <button
                                      key={item.id}
                                      onClick={() => toggleSelection(item.id)}
                                      className={`flex flex-col items-center justify-center py-2.5 px-3 min-w-[3.5rem] rounded-xl transition-all duration-150 active:scale-95 select-none ${
                                        isSel
                                          ? 'bg-kanji text-white border-2 border-white scale-105 shadow-md glow-kanji cursor-pointer'
                                          : 'bg-kanji/15 text-kanji border border-dashed border-kanji/30 hover:bg-kanji/30 hover:text-kanji cursor-pointer font-bold'
                                      }`}
                                    >
                                      <span className="text-xl font-black font-japanese leading-none mb-1">{item.character}</span>
                                      <span className="text-[8px] font-extrabold uppercase tracking-wider opacity-85 max-w-[4rem] truncate">{item.slug}</span>
                                    </button>
                                  );
                                })}
                              </div>
                            </div>
                          )}

                          {/* Vocabulary */}
                          {levelData.vocabulary.length > 0 && (
                            <div className="space-y-2 animate-fade-in">
                              <div className="flex justify-between items-center text-xxs font-extrabold uppercase tracking-widest text-slate-455 dark:text-slate-500">
                                <span>Kosakata ({levelData.vocabulary.length})</span>
                                <button
                                  onClick={() => toggleTypeSelect(levelNum, 'vocabulary')}
                                  className="text-[10px] font-bold text-indigo-500 hover:underline cursor-pointer lowercase"
                                >
                                  {isTypeAllSelected(levelNum, 'vocabulary') ? 'hapus' : 'pilih semua'}
                                </button>
                              </div>
                              <div className="flex flex-wrap gap-2.5">
                                {levelData.vocabulary.map(item => {
                                  const isSel = selectedLessonIds.includes(item.id);
                                  return (
                                    <button
                                      key={item.id}
                                      onClick={() => toggleSelection(item.id)}
                                      className={`flex flex-col items-center justify-center py-2.5 px-3 min-w-[3.5rem] rounded-xl transition-all duration-150 active:scale-95 select-none ${
                                        isSel
                                          ? 'bg-vocab text-white border-2 border-white scale-105 shadow-md glow-vocab cursor-pointer'
                                          : 'bg-vocab/15 text-vocab border border-dashed border-vocab/30 hover:bg-vocab/30 hover:text-vocab cursor-pointer font-bold'
                                      }`}
                                    >
                                      <span className="text-xl font-black font-japanese leading-none mb-1">{item.character}</span>
                                      <span className="text-[8px] font-extrabold uppercase tracking-wider opacity-85 max-w-[4rem] truncate">{item.slug}</span>
                                    </button>
                                  );
                                })}
                              </div>
                            </div>
                          )}

                        </div>

                      </div>
                    );
                  })}
                </div>
              )}

            </div>

            {/* Modal Footer */}
            <div className="p-6 border-t border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/80 flex flex-col sm:flex-row items-center justify-between gap-4">
              
              {/* Interleave Toggle */}
              <label className="flex items-center space-x-2.5 cursor-pointer select-none text-sm text-slate-700 dark:text-slate-350">
                <input
                  type="checkbox"
                  checked={interleaveLessons}
                  onChange={(e) => setInterleaveLessons(e.target.checked)}
                  className="w-4 h-4 rounded text-teal-600 focus:ring-teal-500 border-slate-300 dark:border-slate-700 dark:bg-slate-800 dark:checked:bg-teal-500 cursor-pointer"
                />
                <span className="font-bold">Interleave Lessons (Campur urutan pelajaran)</span>
              </label>

              {/* Action Buttons */}
              <div className="flex items-center space-x-3 w-full sm:w-auto">
                <button
                  type="button"
                  onClick={() => setPickerOpen(false)}
                  className="flex-1 sm:flex-none px-5 py-2.5 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-300 font-bold rounded-xl transition-colors cursor-pointer text-sm"
                >
                  Batal
                </button>
                <button
                  type="button"
                  disabled={selectedLessonIds.length === 0}
                  onClick={startCustomLesson}
                  className="flex-1 sm:flex-none px-6 py-2.5 bg-gradient-to-r from-teal-500 to-cyan-600 hover:from-teal-600 hover:to-cyan-700 text-white font-bold rounded-xl transition-all shadow-md shadow-teal-500/10 hover:shadow-teal-500/20 disabled:opacity-50 disabled:cursor-not-allowed cursor-pointer text-sm flex items-center justify-center space-x-1.5"
                >
                  <span>Batch, Please</span>
                  {selectedLessonIds.length > 0 && (
                    <span className="px-2 py-0.5 text-2xs font-extrabold bg-white/20 rounded-md">
                      {selectedLessonIds.length} Item
                    </span>
                  )}
                  <ChevronRight className="w-4 h-4" />
                </button>
              </div>

            </div>

          </div>
        </div>
      )}
    </div>
  );
}
