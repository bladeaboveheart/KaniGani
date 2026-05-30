'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import CrabBackground from '@/components/CrabBackground';
import {
  BookOpen, Sparkles, AlertCircle, Clock, Calendar, CheckCircle2,
  Flame, Award, ArrowUpRight, Shield, Zap, ChevronRight, FlaskConical
} from 'lucide-react';
import { DashboardStats } from '@/lib/types';

// Import Modularized Dashboard Components
import LevelProgress from '@/components/dashboard/LevelProgress';
import HourlySchedule from '@/components/dashboard/HourlySchedule';
import SrsDistribution from '@/components/dashboard/SrsDistribution';
import LeaderboardCard from '@/components/dashboard/LeaderboardCard';
import HeatmapCard from '@/components/dashboard/HeatmapCard';
import LessonPickerModal from '@/components/dashboard/LessonPickerModal';

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
  const [currentLevelKanjiList, setCurrentLevelKanjiList] = useState<any[]>([]);
  const [availableLessons, setAvailableLessons] = useState<any[]>([]);
  const [pickerOpen, setPickerOpen] = useState(false);
  const [selectedLessonIds, setSelectedLessonIds] = useState<string[]>([]);
  const [interleaveLessons, setInterleaveLessons] = useState(true);
  const [leaderboard, setLeaderboard] = useState<any[]>([]);
  const [reviewHeatmap, setReviewHeatmap] = useState<Record<string, number>>({});
  const [lessonHeatmap, setLessonHeatmap] = useState<Record<string, number>>({});
  const [durationHeatmap, setDurationHeatmap] = useState<Record<string, number>>({});

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
    const handleStorageChange = () => {
      setDevMode(localStorage.getItem('kanigani-dev-mode') === 'true');
      setBetaTester(localStorage.getItem('kanigani-beta-tester') === 'true');
    };
    handleStorageChange();
    window.addEventListener('storage', handleStorageChange);

    // Toggle dev mode with 'G' key — only when not typing in an input/textarea
    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === 'g' || e.key === 'G') {
        const tag = (document.activeElement as HTMLElement)?.tagName;
        if (tag === 'INPUT' || tag === 'TEXTAREA') return;
        const next = localStorage.getItem('kanigani-dev-mode') !== 'true';
        localStorage.setItem('kanigani-dev-mode', String(next));
        setDevMode(next);
        setDevModeToast(next);
        window.dispatchEvent(new Event('storage'));
        setTimeout(() => setDevModeToast(null), 2500);
      }
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => {
      window.removeEventListener('storage', handleStorageChange);
      window.removeEventListener('keydown', handleKeyDown);
    };
  }, []);

  const toggleBetaTester = () => {
    const nextVal = !betaTester;
    setBetaTester(nextVal);
    localStorage.setItem('kanigani-beta-tester', String(nextVal));
    window.dispatchEvent(new Event('storage'));
  };

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
        .lte('srs_stage', 6)
        .not('next_review', 'is', null);

      if (error) throw error;

      alert('Sukses! Item review s/d tingkat Kepiting Guru telah dipercepat menjadi SEKARANG. Silakan review segera!');
      window.location.reload();
    } catch (err: any) {
      console.error('Error resetting review timers:', err);
      alert('Gagal mempercepat review: ' + (err?.message || String(err)));
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

        // Fetch username & profile info
        const { data: profile } = await supabase
          .from('profiles')
          .select('username, created_at, level')
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
        if (profile && profile.level !== null && profile.level !== undefined) {
          userLevel = profile.level;
        } else {
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
        }

        // Self-healing check: unlock level <= userLevel radicals that are accidentally locked (srs_stage = 0)
        const lockedRadicalsToUnlock = progresses ? progresses.filter((row: any) => {
          const item = row.items;
          return item && item.type === 'radical' && item.level <= userLevel && row.srs_stage === 0;
        }) : [];

        if (lockedRadicalsToUnlock.length > 0) {
          const idsToUnlock = lockedRadicalsToUnlock.map((row: any) => row.item_id);
          const { error: healError } = await supabase
            .from('user_progress')
            .update({
              srs_stage: 1,
              unlocked_at: new Date().toISOString()
            })
            .eq('user_id', user.id)
            .in('item_id', idsToUnlock);

          if (!healError) {
            console.log('Successfully self-healed unlocked missing radicals:', idsToUnlock);
            window.location.reload();
            return;
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

            loadedItems.push({
              id: item.id,
              character: item.character,
              type: item.type,
              srs_stage: stage,
              next_review: row.next_review,
              name: item.slug || 'item',
            });

            const isStudied = stage > 1 || (stage === 1 && row.next_review);
            if (isStudied) {
              distribution[stage] = (distribution[stage] || 0) + 1;
            }

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

            if (stage >= 1 && stage <= 8 && row.next_review && row.next_review <= now) {
              reviewsDue++;
            }

            if (item.type === 'kanji' && stage >= 5 && kanjiIds.includes(item.id)) {
              kanjiPassed++;
            }
          });
        }

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

          const allPrereqs = prereqsMap.get(k.id) || [];
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

        // Build heatmap data
        const reviewMap: Record<string, number> = {};
        const lessonMap: Record<string, number> = {};
        const durationMap: Record<string, number> = {};

        const { data: activityLogs } = await supabase
          .from('activity_logs')
          .select('activity_type, item_count, created_at, duration_seconds')
          .eq('user_id', user.id);

        if (activityLogs && activityLogs.length > 0) {
          activityLogs.forEach((log: any) => {
            const dateKey = new Date(log.created_at).toISOString().split('T')[0];
            const count = log.item_count || 1;
            const duration = log.duration_seconds || 0;
            if (log.activity_type === 'review') {
              reviewMap[dateKey] = (reviewMap[dateKey] || 0) + count;
            } else if (log.activity_type === 'lesson') {
              dateKey && (lessonMap[dateKey] = (lessonMap[dateKey] || 0) + count);
            }
            durationMap[dateKey] = (durationMap[dateKey] || 0) + duration;
          });
        }

        if (progresses) {
          progresses.forEach((row: any) => {
            if (row.unlocked_at) {
              const dateKey = new Date(row.unlocked_at).toISOString().split('T')[0];
              lessonMap[dateKey] = (lessonMap[dateKey] || 0) + 1;
            }
          });
        }
        setReviewHeatmap(reviewMap);
        setLessonHeatmap(lessonMap);
        setDurationHeatmap(durationMap);

        let daysSinceLevelUp = 0;
        if (userLevel === 1) {
          const signupDate = profile?.created_at ? new Date(profile.created_at) : new Date(user.created_at);
          const diffMs = new Date().getTime() - signupDate.getTime();
          daysSinceLevelUp = Math.max(0, Math.floor(diffMs / (1000 * 60 * 60 * 24)));
        } else {
          const currentLevelProgresses = progresses ? progresses.filter((p: any) => p.items?.level === userLevel && p.unlocked_at) : [];
          if (currentLevelProgresses.length > 0) {
            const earliestUnlock = new Date(Math.min(...currentLevelProgresses.map((p: any) => new Date(p.unlocked_at).getTime())));
            const diffMs = new Date().getTime() - earliestUnlock.getTime();
            daysSinceLevelUp = Math.max(0, Math.floor(diffMs / (1000 * 60 * 60 * 24)));
          }
        }

        setStats({
          lessonsAvailable,
          reviewsDue,
          distribution,
          byType,
          level: userLevel,
          kanjiPassedInLevel: kanjiPassed,
          kanjiTotalInLevel: totalKanji,
          daysSinceLevelUp,
        });

        // Leaderboard load
        const { data: leaderboardData, error: leaderboardError } = await supabase
          .rpc('get_leaderboard');

        if (leaderboardData && !leaderboardError) {
          const mappedLeaderboard = leaderboardData.map((item: any, idx: number) => ({
            rank: idx + 1,
            name: item.username,
            level: item.level,
            points: item.points,
            active: true,
            isSelf: item.id === user.id
          }));
          setLeaderboard(mappedLeaderboard);
        } else {
          const dummy = [
            { rank: 1, name: 'TanakaSan', level: 10, points: 1200, active: true },
            { rank: 2, name: 'BudiKanji', level: 8, points: 940, active: true },
            { rank: 3, name: 'SakuraChan', level: 7, points: 780, active: false },
            { rank: 4, name: 'KaniMaster', level: 6, points: 640, active: true },
            { rank: 5, name: 'WaniCrab', level: 5, points: 520, active: false },
            { rank: 6, name: profile?.username || 'Pengguna', level: userLevel, points: progresses ? progresses.filter((i: any) => i.srs_stage >= 5).length * 10 + progresses.filter((i: any) => i.srs_stage > 0).length : 0, active: true, isSelf: true },
            { rank: 7, name: 'GanyDev', level: 3, points: 210, active: true },
            { rank: 8, name: 'NihonLover', level: 1, points: 35, active: false },
            { rank: 9, name: 'WaniGuru', level: 1, points: 20, active: true },
          ].sort((a, b) => b.points - a.points).map((item, idx) => ({ ...item, rank: idx + 1 }));
          setLeaderboard(dummy);
        }

      } catch (err) {
        console.error('Error loading dashboard stats:', err);
      } finally {
        setLoading(false);
      }
    }

    loadDashboard();
  }, [router]);

  const getHourlySchedule = () => {
    const now = new Date();
    const buckets = Array.from({ length: 24 }, (_, i) => {
      const bucketDate = new Date(now);
      bucketDate.setHours(now.getHours() + i, 0, 0, 0);
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

        if (reviewTime <= nowTime) {
          buckets[0].count++;
          buckets[0].items.push(item);
        } else {
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
    return 'Kepiting Rebus';
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

  const startCustomLesson = () => {
    if (selectedLessonIds.length === 0) return;
    localStorage.setItem('custom-lesson-queue', JSON.stringify(selectedLessonIds));
    localStorage.setItem('custom-lesson-interleave', String(interleaveLessons));
    router.push('/lesson');
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

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />
      <CrabBackground />

      {/* Dev Mode Toast Notification */}
      {devModeToast !== null && (
        <div
          className={`fixed bottom-6 left-1/2 -translate-x-1/2 z-50 flex items-center space-x-2 px-4 py-2.5 rounded-2xl shadow-xl border text-sm font-bold animate-fade-in transition-all ${devModeToast
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
            <div className="flex items-center space-x-2 select-none">
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

          <div className="flex items-center space-x-4 select-none">
            <div className="p-4 bg-indigo-50 dark:bg-indigo-950/30 rounded-2xl border border-indigo-100 dark:border-indigo-900/50 text-center">
              <span className="text-xxs font-bold text-indigo-600 dark:text-indigo-400 uppercase tracking-widest block">Level Saat Ini</span>
              <span className="text-2xl font-black text-indigo-600 dark:text-indigo-400">
                {stats?.level || 1}
              </span>
            </div>
            <div className="p-4 bg-rose-50 dark:bg-rose-950/30 rounded-2xl border border-rose-100 dark:border-rose-900/50 text-center">
              <span className="text-xxs font-bold text-rose-600 dark:text-rose-400 uppercase tracking-widest block">Hari Berlalu</span>
              <span className="text-2xl font-black text-rose-600 dark:text-rose-400">
                {stats?.daysSinceLevelUp !== undefined ? stats.daysSinceLevelUp : 0}
              </span>
            </div>
          </div>
        </section>

        {/* Big Action Buttons (Lessons & Reviews) */}
        <section className="grid grid-cols-1 md:grid-cols-2 gap-6 sm:gap-8">

          {/* Lessons Card */}
          <div className="relative group overflow-hidden bg-gradient-to-br from-cyan-500 to-teal-600 dark:from-cyan-600 dark:to-teal-700 text-white rounded-3xl p-6 sm:p-8 shadow-lg hover:shadow-xl hover:-translate-y-0.5 transition-all duration-300">
            <div className="absolute right-0 bottom-0 translate-x-10 translate-y-10 opacity-10 group-hover:scale-110 transition-transform duration-300 select-none pointer-events-none">
              <BookOpen className="w-60 h-60" />
            </div>
            <div className="flex flex-col h-full justify-between gap-6 z-10 relative">
              <div>
                <span className="inline-block px-3 py-1 bg-white/20 backdrop-blur-md rounded-full text-xs font-bold uppercase tracking-wider mb-2 select-none">
                  Lesson
                </span>
                <h3 className="text-2xl font-bold tracking-tight mt-1 select-none">Belajar Item Baru</h3>
                <p className="text-xs text-cyan-50 dark:text-cyan-100 mt-2 max-w-sm">
                  Pelajari arti dan bacaan karakter linear baru secara berkelompok (5 item per batch) sebelum memulai kuis.
                </p>
              </div>

              <div className="flex items-center justify-between mt-4">
                <div className="select-none">
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
                      className="px-4 py-2.5 bg-white/15 hover:bg-white/25 border border-white/20 text-white font-bold rounded-xl shadow-md flex items-center space-x-1.5 transition-all duration-200 select-none cursor-pointer text-xs sm:text-sm"
                    >
                      <span>Advanced</span>
                      <ChevronRight className="w-4 h-4" />
                    </button>
                    <button
                      onClick={() => router.push('/lesson')}
                      className="px-5 py-2.5 bg-white text-teal-600 font-bold rounded-xl shadow-md hover:bg-cyan-50 flex items-center space-x-1.5 transition-all duration-200 cursor-pointer text-xs sm:text-sm"
                    >
                      <span>Mulai</span>
                      <ArrowUpRight className="w-4 h-4" />
                    </button>
                  </div>
                ) : (
                  <div className="px-5 py-2.5 bg-white/10 backdrop-blur-md text-cyan-200 font-bold rounded-xl flex items-center space-x-1.5 cursor-not-allowed select-none">
                    <span>Selesai</span>
                    <CheckCircle2 className="w-4 h-4 text-emerald-400" />
                  </div>
                )}
              </div>
            </div>
          </div>

          {/* Reviews Card */}
          <div className="relative group overflow-hidden bg-gradient-to-br from-pink-500 via-purple-500 to-indigo-600 dark:from-pink-600 dark:via-purple-600 dark:to-indigo-700 text-white rounded-3xl p-6 sm:p-8 shadow-lg hover:shadow-xl hover:-translate-y-0.5 transition-all duration-300">
            <div className="absolute right-0 bottom-0 translate-x-10 translate-y-10 opacity-10 group-hover:scale-110 transition-transform duration-300 select-none pointer-events-none">
              <Flame className="w-60 h-60" />
            </div>
            <div className="flex flex-col h-full justify-between gap-6 z-10 relative">
              <div>
                <span className="inline-block px-3 py-1 bg-white/20 backdrop-blur-md rounded-full text-xs font-bold uppercase tracking-wider mb-2 select-none">
                  Review
                </span>
                <h3 className="text-2xl font-bold tracking-tight mt-1 select-none">Latihan Harian</h3>
                <p className="text-xs text-pink-50 dark:text-pink-100 mt-2 max-w-sm">
                  Uji ingatan Anda pada item-item yang jatuh tempo. Menjawab dengan benar memperpanjang waktu review berikutnya.
                </p>
              </div>

              <div className="flex items-center justify-between mt-4">
                <div className="select-none">
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
                      className="px-3 py-2.5 bg-white/15 hover:bg-white/25 backdrop-blur-md text-white font-bold rounded-xl flex items-center space-x-1.5 transition-all duration-200 disabled:opacity-50 border border-white/20 cursor-pointer"
                    >
                      <Zap className={`w-4 h-4 ${resetting ? 'animate-spin' : ''}`} />
                      <span className="text-xs hidden sm:inline">{resetting ? 'Memproses...' : 'Percepat'}</span>
                    </button>
                  )}

                  {stats && stats.reviewsDue > 0 ? (
                    <button
                      onClick={() => router.push('/review')}
                      className="px-5 py-2.5 bg-white text-indigo-600 font-bold rounded-xl shadow-md hover:bg-pink-50 flex items-center space-x-1.5 transition-all duration-200 cursor-pointer text-xs sm:text-sm"
                    >
                      <span>Mulai</span>
                      <ArrowUpRight className="w-4 h-4" />
                    </button>
                  ) : (
                    <div className="px-5 py-2.5 bg-white/10 backdrop-blur-md text-pink-200 font-bold rounded-xl flex items-center space-x-1.5 cursor-not-allowed select-none">
                      <span>Semua Bersih</span>
                      <CheckCircle2 className="w-4 h-4 text-emerald-400" />
                    </div>
                  )}
                </div>
              </div>
            </div>
          </div>

        </section>

        {/* KaniGani Laboratory — Beta Tester Card */}
        <section className="bg-gradient-to-br from-white via-slate-50/50 to-white dark:from-slate-900 dark:via-slate-900/80 dark:to-slate-900 border border-slate-200 dark:border-slate-800 p-6 sm:p-8 rounded-3xl shadow-sm hover:shadow-md transition-all duration-300 space-y-5 relative overflow-hidden group">
          {/* Subtle decorative absolute background element */}
          <div className="absolute right-0 top-0 -translate-y-12 translate-x-12 w-48 h-48 bg-violet-500/5 dark:bg-violet-500/10 rounded-full blur-3xl pointer-events-none group-hover:scale-110 transition-transform duration-500" />

          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-slate-100 dark:border-slate-800/80 pb-4 relative z-10">
            <div className="flex items-start space-x-3.5">
              <div className={`p-2.5 rounded-2xl transition-all duration-350 ${betaTester
                ? 'bg-violet-50 dark:bg-violet-950/40 text-violet-500 border border-violet-100 dark:border-violet-900/40 shadow-sm'
                : 'bg-slate-50 dark:bg-slate-950 text-slate-400 border border-slate-100 dark:border-slate-800'
                }`}>
                <FlaskConical className={`w-6 h-6 ${betaTester ? 'animate-pulse' : ''}`} />
              </div>
              <div>
                <div className="flex items-center gap-2 flex-wrap">
                  <h3 className="text-base font-extrabold tracking-tight text-slate-800 dark:text-slate-100">
                    🧪 KaniGani Lab: Mode Beta Tester
                  </h3>
                  <span className={`px-2 py-0.5 text-[9px] font-black rounded-md uppercase tracking-wider ${betaTester
                    ? 'bg-violet-500/10 text-violet-600 dark:bg-violet-500/20 dark:text-violet-400 border border-violet-200/30 dark:border-violet-500/20'
                    : 'bg-slate-100 text-slate-500 dark:bg-slate-800 dark:text-slate-400 border border-slate-200/40 dark:border-slate-700/50'
                    }`}>
                    {betaTester ? 'Aktif' : 'Nonaktif'}
                  </span>
                </div>
                <p className="text-xs text-slate-500 dark:text-slate-400 mt-0.5">
                  Ikut serta menguji fitur-fitur eksperimental terbaru sebelum dirilis secara publik.
                </p>
              </div>
            </div>

            {/* Premium Toggle Button */}
            <div className="flex items-center space-x-3 self-end sm:self-center shrink-0">
              <span className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest hidden xs:inline">
                Status Pengujian
              </span>
              <button
                type="button"
                onClick={toggleBetaTester}
                className={`relative inline-flex h-6 w-11 flex-shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-250 ease-in-out focus:outline-none ${betaTester ? 'bg-violet-600 dark:bg-violet-500' : 'bg-slate-200 dark:bg-slate-800'
                  }`}
              >
                <span
                  className={`pointer-events-none inline-block h-5 w-5 transform rounded-full bg-white shadow-md ring-0 transition duration-250 ease-in-out ${betaTester ? 'translate-x-5' : 'translate-x-0'
                    }`}
                />
              </button>
            </div>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5 relative z-10">
            <div className="space-y-2 text-xxs font-semibold leading-relaxed text-slate-600 dark:text-slate-350">
              <p>
                Mode Beta Tester membuka akses laboratorium pengembang bagi seluruh pengguna. Fitur ini dirancang khusus agar pembelajar dapat mempercepat jalannya proses uji coba sistem pembelajaran KaniGani.
              </p>
              <p className="text-[10px] text-slate-400 dark:text-slate-500 italic font-medium">
                *Catatan: Anda dapat menonaktifkan fitur ini kapan saja dari tombol di atas atau melalui menu Akun jika ingin kembali ke mode belajar reguler.
              </p>
            </div>

            <div className="p-4 bg-violet-50/40 dark:bg-violet-950/10 border border-violet-100/40 dark:border-violet-900/20 rounded-2xl space-y-2.5">
              <span className="text-[10px] font-black text-violet-600 dark:text-violet-400 uppercase tracking-widest block select-none">
                💡 Fitur Khusus Yang Didapatkan:
              </span>
              <ul className="space-y-2 text-xxs font-bold leading-relaxed text-slate-650 dark:text-slate-300">
                <li className="flex items-start space-x-2">
                  <span className="text-violet-500 select-none">⚡</span>
                  <span>
                    <strong className="text-slate-800 dark:text-slate-200">Tombol Percepat Review:</strong> Memunculkan opsi <span className="text-violet-600 dark:text-violet-400 font-black">"Percepat" ⚡</span> di kartu kuis latihan di bawah untuk mereset antrean review secara instan.
                  </span>
                </li>
                <li className="flex items-start space-x-2">
                  <span className="text-violet-500 select-none">🧪</span>
                  <span>
                    <strong className="text-slate-800 dark:text-slate-200">Eksperimental Labs:</strong> Mencoba pembaruan antarmuka dan sistem kuis lebih cepat dibanding pengguna reguler.
                  </span>
                </li>
              </ul>
            </div>
          </div>
        </section>

        {/* Developer Mode Admin Tools */}
        {devMode && (
          <section className="bg-gradient-to-br from-white via-slate-50/50 to-white dark:from-slate-900 dark:via-indigo-950/20 dark:to-slate-900 border border-slate-200 dark:border-emerald-500/30 p-6 rounded-3xl shadow-sm dark:shadow-emerald-500/5 hover:shadow-md transition-all duration-300 animate-fade-in space-y-4">
            <div className="flex items-center justify-between border-b border-slate-100 dark:border-emerald-500/20 pb-3 select-none">
              <div className="flex items-center space-x-2">
                <Shield className="w-5 h-5 text-emerald-500 dark:text-emerald-400 animate-pulse" />
                <h3 className="text-lg font-black tracking-tight text-slate-800 dark:text-slate-100">🔧 Developer Mode Admin Tools</h3>
              </div>
              <span className="px-2 py-0.5 text-xxs font-extrabold bg-emerald-500/10 text-emerald-600 dark:bg-emerald-500/20 dark:text-emerald-400 border border-emerald-200 dark:border-emerald-500/30 rounded-md">
                ACTIVE
              </span>
            </div>
            <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
              <p className="text-xs text-slate-500 dark:text-indigo-200 max-w-xl leading-relaxed">
                Anda dapat mempercepat timer SRS untuk item yang telah Anda pelajari (Kepiting Cilik s/d Kepiting Guru) menjadi saat ini. Item di atas tingkat Kepiting Guru (seperti Kepiting Suhu/Sakti) tidak dapat dipercepat.
              </p>
              <button
                onClick={handleResetTimers}
                disabled={resetting}
                className="px-5 py-3 bg-emerald-500 hover:bg-emerald-600 text-slate-950 font-black rounded-2xl shadow-lg shadow-emerald-500/10 hover:shadow-emerald-500/20 disabled:opacity-55 disabled:cursor-not-allowed transition-all duration-200 shrink-0 text-sm flex items-center justify-center space-x-2 cursor-pointer"
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

        {/* Level Up Progress Component */}
        <LevelProgress
          stats={stats}
          currentLevelKanjiList={currentLevelKanjiList}
          formatDueTime={formatDueTime}
        />

        {/* Dashboard Double Panels (Details & Leaderboards) */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">

          {/* Left Schedule & Item Grid */}
          <div className="lg:col-span-2 space-y-6">

            <div className="bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm overflow-hidden">
              {/* Tab Header */}
              <div className="flex border-b border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50">
                <button
                  onClick={() => setActiveTab('schedule')}
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors cursor-pointer ${activeTab === 'schedule'
                    ? 'border-indigo-500 text-indigo-500'
                    : 'border-transparent text-slate-500 dark:text-slate-400 hover:text-slate-700 dark:hover:text-slate-200'
                    }`}
                >
                  <div className="flex items-center justify-center space-x-1.5">
                    <Clock className="w-4 h-4" />
                    <span>Jadwal Review</span>
                  </div>
                </button>
                <button
                  onClick={() => setActiveTab('items')}
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors cursor-pointer ${activeTab === 'items'
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
                  <HourlySchedule
                    schedule={schedule}
                    selectedHourIdx={selectedHourIdx}
                    setSelectedHourIdx={setSelectedHourIdx}
                  />
                ) : (
                  /* ACTIVE ITEM LISTING */
                  <div>
                    {itemDetails.filter(i => i.srs_stage > 0).length > 0 ? (
                      <div className="grid grid-cols-2 sm:grid-cols-3 gap-3">
                        {itemDetails.filter(i => i.srs_stage > 0).slice(0, 15).map((item, idx) => (
                          <div
                            key={idx}
                            className={`p-3 rounded-2xl flex flex-col justify-between items-center text-center border shadow-xxs ${item.type === 'radical'
                              ? 'bg-[#00a0f0]/5 border-[#00a0f0]/10 text-[#00a0f0] dark:bg-[#00a0f0]/10'
                              : item.type === 'kanji'
                                ? 'bg-[#f03e64]/5 border-[#f03e64]/10 text-[#f03e64] dark:bg-[#f03e64]/10'
                                : 'bg-[#a000f0]/5 border-[#a000f0]/10 text-[#a000f0] dark:bg-[#a000f0]/10'
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
                          <div className="col-span-full text-center text-xs text-slate-400 mt-2 font-medium select-none">
                            + dan {itemDetails.filter(i => i.srs_stage > 0).length - 15} item aktif lainnya...
                          </div>
                        )}
                      </div>
                    ) : (
                      <div className="text-center py-8 text-slate-400 dark:text-slate-500 select-none">
                        <Calendar className="w-10 h-10 mx-auto opacity-30 mb-2" />
                        <p className="text-sm">Belum ada item aktif. Silakan mulai Lesson!</p>
                      </div>
                    )}
                  </div>
                )}
              </div>
            </div>

            {/* SRS Stage distribution component */}
            <SrsDistribution stats={stats} />

          </div>

          {/* Right Gamified Leaderboard */}
          <div className="space-y-6">
            <LeaderboardCard leaderboard={leaderboard} username={username} />
          </div>

        </div>

        {/* Activity Heatmap Component */}
        <HeatmapCard
          reviewHeatmap={reviewHeatmap}
          lessonHeatmap={lessonHeatmap}
          durationHeatmap={durationHeatmap}
        />

      </main>

      <Footer />

      {/* Lesson Picker Modal Component */}
      {pickerOpen && (
        <LessonPickerModal
          availableLessons={availableLessons}
          selectedLessonIds={selectedLessonIds}
          setSelectedLessonIds={setSelectedLessonIds}
          interleaveLessons={interleaveLessons}
          setInterleaveLessons={setInterleaveLessons}
          startCustomLesson={startCustomLesson}
          setPickerOpen={setPickerOpen}
        />
      )}
    </div>
  );
}
