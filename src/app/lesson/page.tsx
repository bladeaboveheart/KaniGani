'use client';

import { useEffect, useState, useRef, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { useQuizStore } from '@/store/useQuizStore';
import { Item } from '@/lib/types';
import { useActiveTimer } from '@/hooks/useActiveTimer';
import CrabBackground from '@/components/CrabBackground';
import {
  ArrowLeft, ArrowRight, BookOpen, Award, Home
} from 'lucide-react';

// Import Shared Modular Quiz Components
import QuizHeader from '@/components/quiz/QuizHeader';
import QuizInput from '@/components/quiz/QuizInput';
import QuizFeedback from '@/components/quiz/QuizFeedback';
import QuizActionButtons from '@/components/quiz/QuizActionButtons';
import QuizInfoDrawer from '@/components/quiz/QuizInfoDrawer';

export default function LessonPage() {
  const router = useRouter();
  const { getAndResetSeconds } = useActiveTimer();

  // Zustand Store
  const {
    queue,
    activeCard,
    userInput,
    isAnswerSubmitted,
    isCorrect,
    showFeedback,
    incorrectActive,
    isAlmostCorrect,
    closestAcceptedMeaning,
    warningMsg,
    showItemInfo,
    wrongCounts,
    setUserInput,
    submitAnswer,
    proceedNext,
    toggleItemInfo,
    initializeSession,
    resetStore
  } = useQuizStore();

  // Lesson states
  const [lessons, setLessons] = useState<Item[]>([]);
  const [loading, setLoading] = useState(true);
  const [phase, setPhase] = useState<'learn' | 'quiz' | 'summary'>('learn');
  const [currentBatch, setCurrentBatch] = useState<Item[]>([]);
  const [itemIndex, setItemIndex] = useState(0); // Index item in active batch
  const [activeTab, setActiveTab] = useState<'info' | 'mnemonic'>('info');

  const [devMode, setDevMode] = useState(false);
  const [globalDevMode, setGlobalDevMode] = useState(false);

  // Read global dev mode setting
  useEffect(() => {
    setTimeout(() => {
      setGlobalDevMode(localStorage.getItem('kanigani-dev-mode') === 'true');
    }, 0);
  }, []);

  const getDevModeAnswer = () => {
    if (!activeCard) return '';
    if (activeCard.cardType === 'meaning') {
      return activeCard.item.accepted_meanings?.[0] || activeCard.item.primary_meaning || '';
    }
    return activeCard.item.accepted_readings?.[0] || activeCard.item.primary_reading || '';
  };

  const inputRef = useRef<HTMLInputElement>(null);
  const currentItem = currentBatch[itemIndex];

  const startQuiz = useCallback(() => {
    if (currentBatch.length === 0) return;
    initializeSession(currentBatch, 'lesson');
    setPhase('quiz');
  }, [currentBatch, initializeSession]);

  // Fetch lessons available
  useEffect(() => {
    async function loadLessons() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        // Check custom lesson queue
        const customQueueStr = localStorage.getItem('custom-lesson-queue');
        const customInterleaveStr = localStorage.getItem('custom-lesson-interleave');
        
        let customQueueIds: string[] | null = null;
        if (customQueueStr) {
          try {
            customQueueIds = JSON.parse(customQueueStr);
          } catch (e) {
            console.error('Failed to parse custom-lesson-queue from localStorage:', e);
          }
        }

        // Fetch lesson items (srs_stage = 1 & next_review = null)
        let query = supabase
          .from('user_progress')
          .select('item_id, srs_stage, unlocked_at, items(*)')
          .eq('user_id', user.id)
          .eq('srs_stage', 1)
          .is('next_review', null);

        if (customQueueIds && customQueueIds.length > 0) {
          query = query.in('item_id', customQueueIds);
        }

        const { data, error } = await query;

        if (error) throw error;
        if (!data || data.length === 0) {
          setLessons([]);
          setLoading(false);
          return;
        }

        const rawItems = data.map((row: any) => row.items).filter(Boolean);
        const itemIds = rawItems.map((i: any) => i.id);

        // Fetch detail meanings, readings, sentences
        const [meaningsRes, readingsRes, sentencesRes] = await Promise.all([
          supabase.from('item_meanings').select('*').in('item_id', itemIds),
          supabase.from('item_readings').select('*').in('item_id', itemIds),
          supabase.from('item_context_sentences').select('*').in('item_id', itemIds),
        ]);

        const meanings = meaningsRes.data || [];
        const readings = readingsRes.data || [];
        const sentences = sentencesRes.data || [];

        // Combine details
        const itemsWithDetails: Item[] = rawItems.map((item: any) => {
          const mList = meanings.filter((m) => m.item_id === item.id);
          const rList = readings.filter((r) => r.item_id === item.id);
          const sList = sentences.filter((s) => s.item_id === item.id);

          const primaryMeaning = mList.find((m) => m.primary_meaning)?.meaning || '';
          const primaryReading = rList.find((r) => r.primary_reading)?.reading || null;

          const progressRow = data.find((row: any) => row.item_id === item.id);
          const srsStage = progressRow ? progressRow.srs_stage : 1;

          return {
            ...item,
            srs_stage: srsStage,
            meanings: mList,
            readings: rList,
            context_sentences: sList,
            primary_meaning: primaryMeaning,
            primary_reading: primaryReading,
            accepted_meanings: mList.filter(m => m.accepted_answer).map(m => m.meaning.toLowerCase().trim()),
            accepted_readings: rList.filter(r => r.accepted_answer).map(r => r.reading.toLowerCase().trim()),
          };
        });

        // Sort: level (ASC), type (radical→kanji→vocab), lesson_position
        const typePriority: Record<string, number> = { radical: 0, kanji: 1, vocabulary: 2 };
        itemsWithDetails.sort((a, b) => {
          const levelDiff = a.level - b.level;
          if (levelDiff !== 0) return levelDiff;
          const typeDiff = (typePriority[a.type] ?? 3) - (typePriority[b.type] ?? 3);
          if (typeDiff !== 0) return typeDiff;
          return a.lesson_position - b.lesson_position;
        });

        // Interleave lessons if requested
        let finalLessons = itemsWithDetails;
        if (customInterleaveStr === 'true') {
          const radicals = itemsWithDetails.filter(i => i.type === 'radical');
          const kanjis = itemsWithDetails.filter(i => i.type === 'kanji');
          const vocabs = itemsWithDetails.filter(i => i.type === 'vocabulary');
          
          const interleaved: Item[] = [];
          const maxLen = Math.max(radicals.length, kanjis.length, vocabs.length);
          for (let i = 0; i < maxLen; i++) {
            if (i < radicals.length) interleaved.push(radicals[i]);
            if (i < kanjis.length) interleaved.push(kanjis[i]);
            if (i < vocabs.length) interleaved.push(vocabs[i]);
          }
          finalLessons = interleaved;
        }

        setLessons(finalLessons);

        // Get first batch of 5 items
        const batch = finalLessons.slice(0, 5);
        setCurrentBatch(batch);
        setItemIndex(0);

      } catch (err) {
        console.error('Error fetching lessons:', err);
      } finally {
        setLoading(false);
      }
    }

    loadLessons();
    return () => resetStore();
  }, [router, resetStore, initializeSession]);

  const handleQuizSubmitAction = () => {
    if (!isAnswerSubmitted) {
      if (userInput.trim() !== '') {
        submitAnswer();
      }
    } else {
      proceedNext();
    }
  };

  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === 'Enter') {
      e.preventDefault();
      if (!isAnswerSubmitted) {
        if (devMode && userInput.trim() === '') {
          setUserInput(getDevModeAnswer());
          setTimeout(() => {
            submitAnswer();
            inputRef.current?.focus();
          }, 20);
        } else if (userInput.trim() !== '') {
          submitAnswer();
          setTimeout(() => {
            inputRef.current?.focus();
          }, 20);
        }
      } else {
        proceedNext();
        setTimeout(() => {
          inputRef.current?.focus();
        }, 20);
      }
    }
  };

  // Focus input automatically (skip on mobile)
  useEffect(() => {
    if (phase === 'quiz' && activeCard && inputRef.current) {
      const isMobile = typeof window !== 'undefined' && (
        window.matchMedia('(pointer: coarse)').matches ||
        window.innerWidth < 768
      );
      if (!isMobile) {
        inputRef.current.focus({ preventScroll: true });
      }
    }
  }, [phase, activeCard, isAnswerSubmitted, incorrectActive]);

  // Hotkey 'f' to toggle detail drawer
  useEffect(() => {
    const handleGlobalKeyDown = (e: KeyboardEvent) => {
      if ((e.key === 'f' || e.key === 'F') && isAnswerSubmitted && phase === 'quiz') {
        const isInputActive = document.activeElement?.tagName === 'INPUT';
        const isInputReadOnly = document.activeElement?.hasAttribute('readonly');
        if (!isInputActive || isInputReadOnly) {
          e.preventDefault();
          toggleItemInfo();
        }
      }
    };
    window.addEventListener('keydown', handleGlobalKeyDown);
    return () => window.removeEventListener('keydown', handleGlobalKeyDown);
  }, [isAnswerSubmitted, toggleItemInfo, phase]);

  // Keyboard controls for learn phase
  useEffect(() => {
    const handleLearnKeyDown = (e: KeyboardEvent) => {
      if (phase !== 'learn') return;

      const isInputActive = document.activeElement?.tagName === 'INPUT' || document.activeElement?.tagName === 'TEXTAREA';
      if (isInputActive) return;

      if (e.key === 'ArrowLeft') {
        e.preventDefault();
        const hasMnemonic = currentItem && currentItem.type !== 'radical';

        if (hasMnemonic && activeTab !== 'info') {
          setActiveTab('info');
        } else {
          if (itemIndex > 0) {
            const prevIdx = itemIndex - 1;
            setItemIndex(prevIdx);
            const prevItem = currentBatch[prevIdx];
            if (prevItem && prevItem.type !== 'radical') {
              setActiveTab('mnemonic');
            } else {
              setActiveTab('info');
            }
          }
        }
      } else if (e.key === 'ArrowRight') {
        e.preventDefault();
        const hasMnemonic = currentItem && currentItem.type !== 'radical';

        if (hasMnemonic && activeTab === 'info') {
          setActiveTab('mnemonic');
        } else {
          if (itemIndex < currentBatch.length - 1) {
            setItemIndex((prev) => prev + 1);
            setActiveTab('info');
          } else {
            startQuiz();
          }
        }
      }
    };

    window.addEventListener('keydown', handleLearnKeyDown);
    return () => window.removeEventListener('keydown', handleLearnKeyDown);
  }, [phase, itemIndex, currentItem, activeTab, currentBatch, startQuiz]);

  const completeBatch = async () => {
    setLoading(true);
    try {
      const { data: { session } } = await supabase.auth.getSession();
      const token = session?.access_token;

      const itemIds = currentBatch.map(i => i.id);
      const durationSeconds = getAndResetSeconds();

      const res = await fetch('/api/lesson/complete', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({ itemIds, durationSeconds })
      });

      if (!res.ok) {
        throw new Error('Gagal menyimpan hasil lesson di server.');
      }

      // Remove learned items from custom queue
      const customQueueStr = localStorage.getItem('custom-lesson-queue');
      if (customQueueStr) {
        try {
          const customQueueIds = JSON.parse(customQueueStr) as string[];
          const remainingCustomIds = customQueueIds.filter(id => !itemIds.includes(id));
          if (remainingCustomIds.length === 0) {
            localStorage.removeItem('custom-lesson-queue');
            localStorage.removeItem('custom-lesson-interleave');
          } else {
            localStorage.setItem('custom-lesson-queue', JSON.stringify(remainingCustomIds));
          }
        } catch (e) {
          console.error('Error updating custom lesson queue:', e);
        }
      }

      setPhase('summary');
    } catch (err) {
      console.error(err);
      alert('Terjadi kesalahan saat menyimpan data kuis.');
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (phase === 'quiz' && queue.length === 0 && currentBatch.length > 0) {
      setTimeout(() => {
        completeBatch();
      }, 0);
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [phase, queue, currentBatch]);

  const handleNextBatch = () => {
    const remainingLessons = lessons.slice(currentBatch.length);
    if (remainingLessons.length > 0) {
      const nextBatch = remainingLessons.slice(0, 5);
      setLessons(remainingLessons);
      setCurrentBatch(nextBatch);
      setItemIndex(0);
      setPhase('learn');
      setActiveTab('info');
      resetStore();
    } else {
      router.push('/dashboard');
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
        <CrabBackground />
        <div className="flex flex-col items-center space-y-4 select-none">
          <div className="w-12 h-12 border-4 border-teal-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="font-semibold text-sm">Menyiapkan materi pembelajaran...</p>
        </div>
      </div>
    );
  }

  if (lessons.length === 0 && phase !== 'summary') {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center relative overflow-hidden bg-slate-50 dark:bg-slate-955 px-4">
        <CrabBackground />
        <div className="max-w-md w-full text-center bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6">
          <BookOpen className="w-16 h-16 mx-auto text-teal-500 animate-bounce" />
          <h2 className="text-2xl font-black">Semua Bersih!</h2>
          <p className="text-sm text-slate-500 dark:text-slate-400">
            Hebat! Tidak ada item lesson baru yang tersedia saat ini. Silakan kembali ke dashboard atau periksa level up prasyarat Anda.
          </p>
          <button
            onClick={() => {
              localStorage.removeItem('custom-lesson-queue');
              localStorage.removeItem('custom-lesson-interleave');
              router.push('/dashboard');
            }}
            className="w-full py-3 bg-teal-500 text-white font-bold rounded-2xl shadow-md hover:bg-teal-600 transition-colors cursor-pointer animate-pulse"
          >
            Kembali ke Dashboard
          </button>
        </div>
      </div>
    );
  }

  const getItemColorClass = (type: string) => {
    if (type === 'radical') return 'bg-radical border-radical/20 glow-radical';
    if (type === 'kanji') return 'bg-kanji border-kanji/20 glow-kanji';
    return 'bg-vocab border-vocab/20 glow-vocab';
  };

  const getItemBadgeName = (type: string) => {
    if (type === 'radical') return 'Radikal';
    if (type === 'kanji') return 'Kanji';
    return 'Kosakata';
  };

  const renderKaniGaniPrompt = () => {
    if (!activeCard) return null;
    const isMeaning = activeCard.cardType === 'meaning';

    if (activeCard.type === 'radical') {
      return (
        <span className="select-text">Nama <span className="font-black text-slate-850 dark:text-slate-100">Radikal</span></span>
      );
    }

    if (activeCard.type === 'kanji') {
      if (isMeaning) {
        return (
          <span className="select-text">Arti <span className="font-black text-slate-850 dark:text-slate-100">Kanji</span></span>
        );
      }
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find(r => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type;
      return expectedType === 'onyomi' ? (
        <span className="select-text">Bacaan Onyomi <span className="font-black text-slate-850 dark:text-slate-100">Kanji</span></span>
      ) : (
        <span className="select-text">Bacaan Kunyomi <span className="font-black text-slate-850 dark:text-slate-100">Kanji</span></span>
      );
    }

    if (isMeaning) {
      return (
        <span className="select-text">Arti <span className="font-black text-slate-850 dark:text-slate-100">Kosakata</span></span>
      );
    }
    return (
      <span className="select-text">Cara Baca <span className="font-black text-slate-850 dark:text-slate-100">Kosakata</span></span>
    );
  };

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <CrabBackground />

      <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-0 pb-6 sm:pb-12 transition-all duration-300">

        {/* PHASE 1: LEARN (INTRO STUDY SLIDES) */}
        {phase === 'learn' && currentItem && (
          <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in flex flex-col min-h-[500px]">

            {/* Header Colorful Character Card */}
            <div className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(currentItem.type)}`}>

              {/* Integrated Header Bar Inside the Card */}
              <div className="absolute top-4 left-4 right-4 flex items-center justify-between text-white select-none w-[calc(100%-2rem)]">
                <button
                  type="button"
                  onClick={() => {
                    if (confirm('Apakah Anda yakin ingin keluar dari sesi pembelajaran? Progres batch ini belum disimpan.')) {
                      localStorage.removeItem('custom-lesson-queue');
                      localStorage.removeItem('custom-lesson-interleave');
                      router.push('/dashboard');
                    }
                  }}
                  title="Keluar Sesi"
                  className="flex items-center justify-center text-white/85 hover:text-white hover:scale-105 active:scale-95 transition-all w-8 h-8 rounded-lg hover:bg-white/10 cursor-pointer"
                >
                  <Home className="w-5 h-5" />
                </button>

                <div className="text-xs sm:text-sm font-bold text-white/90">
                  Lesson ({itemIndex + 1}/{currentBatch.length})
                </div>
              </div>

              <h1 className="text-7xl font-black tracking-tight select-text text-center mt-6">{currentItem.character}</h1>
              <p className="text-lg font-bold tracking-wide mt-4 uppercase opacity-90">{currentItem.slug}</p>
            </div>

            {/* Explanation Navigation Tabs */}
            <div className="flex border-b border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50 select-none">
              <button
                onClick={() => setActiveTab('info')}
                className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors cursor-pointer ${activeTab === 'info'
                  ? 'border-teal-500 text-teal-500'
                  : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
                  }`}
              >
                Arti & Deskripsi
              </button>

              {currentItem.type !== 'radical' && (
                <button
                  onClick={() => setActiveTab('mnemonic')}
                  className={`flex-1 py-4 text-center text-sm font-bold border-b-2 focus:outline-none transition-colors cursor-pointer ${activeTab === 'mnemonic'
                    ? 'border-teal-500 text-teal-500'
                    : 'border-transparent text-slate-500 hover:text-slate-700 dark:hover:text-slate-200'
                    }`}
                >
                  Cara Baca
                </button>
              )}
            </div>

            {/* Tab Explanation Details */}
            <div className="p-6 sm:p-8 flex-1 space-y-6 text-sm leading-relaxed select-text">

              {/* TAB 1: MEANINGS & INFO */}
              {activeTab === 'info' && (
                <div className="space-y-4 animate-fade-in">
                  <div>
                    <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Arti Karakter</h3>
                    <p className="text-xl font-bold text-teal-600 dark:text-teal-400 mt-1 capitalize">
                      {currentItem.primary_meaning}
                    </p>
                  </div>

                  {currentItem.description && (
                    <div>
                      <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Deskripsi Detail</h3>
                      <p className="text-slate-600 dark:text-slate-350 mt-1">{currentItem.description}</p>
                    </div>
                  )}

                  {currentItem.meaning_mnemonic && (
                    <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl">
                      <h3 className="text-xs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block select-none">Mnemonic Jembatan Keledai (Arti)</h3>
                      <p className="text-teal-900 dark:text-teal-300 mt-1.5">{currentItem.meaning_mnemonic}</p>
                    </div>
                  )}
                </div>
              )}

              {/* TAB 2: READINGS & MNEMONICS */}
              {activeTab === 'mnemonic' && currentItem.type !== 'radical' && (
                <div className="space-y-4 animate-fade-in">
                  <div>
                    <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
                      {currentItem.type === 'kanji'
                        ? `Bacaan Jepang Utama (${currentItem.readings?.find((r: any) => r.primary_reading)?.reading_type === 'onyomi'
                          ? 'Onyomi'
                          : 'Kunyomi'
                        })`
                        : 'Bacaan Jepang Utama (Kana)'}
                    </h3>
                    <p className="text-2xl font-black text-indigo-600 dark:text-indigo-400 mt-1">
                      {currentItem.primary_reading}
                    </p>
                  </div>

                  {currentItem.readings && currentItem.readings.length > 1 && (
                    <div>
                      <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block mb-1 select-none">Variasi Bacaan Lainnya</h3>
                      <div className="flex flex-wrap gap-2 select-none">
                        {currentItem.readings.map((r, idx) => (
                          <span key={idx} className="px-3 py-1 bg-slate-105 dark:bg-slate-800 text-xs font-semibold rounded-lg">
                            {r.reading} {r.reading_type && `(${r.reading_type})`}
                          </span>
                        ))}
                      </div>
                    </div>
                  )}

                  {currentItem.reading_mnemonic && (
                    <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
                      <h3 className="text-xs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block select-none">Mnemonic Jembatan Keledai (Bacaan)</h3>
                      <p className="text-indigo-900 dark:text-indigo-300 mt-1.5">{currentItem.reading_mnemonic}</p>
                    </div>
                  )}

                  {/* Context sentence - Vocab only */}
                  {currentItem.type === 'vocabulary' && (
                    <div className="border-t border-slate-200 dark:border-slate-800 pt-6 mt-6 space-y-4">
                      <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Contoh Kalimat Kontekstual</h3>

                      {currentItem.context_sentences && currentItem.context_sentences.length > 0 ? (
                        <div className="space-y-4">
                          {currentItem.context_sentences.map((s, idx) => (
                            <div key={idx} className="p-4 bg-slate-50 dark:bg-slate-950/40 rounded-2xl border border-slate-200/60 dark:border-slate-800/80 space-y-2">
                              <p className="text-lg font-bold text-indigo-600 dark:text-indigo-400 select-all">{s.japanese}</p>
                              <p className="text-xs text-slate-505 dark:text-slate-400">{s.indonesian}</p>
                            </div>
                          ))}
                        </div>
                      ) : (
                        <p className="text-slate-400 text-xs italic select-none">Belum ada contoh kalimat untuk kosakata ini.</p>
                      )}
                    </div>
                  )}
                </div>
              )}

            </div>

            {/* Slide Navigation Buttons */}
            <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-55 dark:bg-slate-900 flex flex-col items-center gap-3 sm:gap-0 select-none">

              {/* Progress dots - Mobile Only */}
              <div className="flex space-x-1.5 sm:hidden">
                {currentBatch.map((_, idx) => (
                  <div
                    key={idx}
                    className={`w-2.5 h-2.5 rounded-full transition-all duration-300 ${idx === itemIndex
                      ? 'bg-teal-500 scale-125'
                      : idx < itemIndex
                        ? 'bg-teal-300 dark:bg-teal-800'
                        : 'bg-slate-200 dark:bg-slate-850'
                      }`}
                  ></div>
                ))}
              </div>

              {/* Navigation Controls Row */}
              <div className="flex items-center justify-between w-full">
                <button
                  disabled={itemIndex === 0}
                  onClick={() => {
                    const prevIdx = itemIndex - 1;
                    setItemIndex(prevIdx);
                    const prevItem = currentBatch[prevIdx];
                    if (prevItem && prevItem.type !== 'radical') {
                      setActiveTab('mnemonic');
                    } else {
                      setActiveTab('info');
                    }
                  }}
                  className="px-4 py-2 bg-slate-100 dark:bg-slate-700 hover:bg-slate-200 dark:hover:bg-slate-600 text-slate-700 dark:text-slate-200 disabled:opacity-30 disabled:cursor-not-allowed font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-colors shrink-0 cursor-pointer"
                >
                  <ArrowLeft className="w-4 h-4" />
                  <span>Sebelumnya</span>
                </button>

                {/* Progress dots - Desktop Only */}
                <div className="hidden sm:flex space-x-1.5">
                  {currentBatch.map((_, idx) => (
                    <div
                      key={idx}
                      className={`w-2.5 h-2.5 rounded-full transition-all duration-300 ${idx === itemIndex
                        ? 'bg-teal-500 scale-125'
                        : idx < itemIndex
                          ? 'bg-teal-300 dark:bg-teal-800'
                          : 'bg-slate-200 dark:bg-slate-850'
                        }`}
                    ></div>
                  ))}
                </div>

                {itemIndex < currentBatch.length - 1 ? (
                  <button
                    onClick={() => {
                      setItemIndex(itemIndex + 1);
                      setActiveTab('info');
                    }}
                    className="px-5 py-2 bg-teal-500 hover:bg-teal-600 text-white font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-all duration-200 shrink-0 cursor-pointer"
                  >
                    <span>Berikutnya</span>
                    <ArrowRight className="w-4 h-4" />
                  </button>
                ) : (
                  <button
                    onClick={startQuiz}
                    className="px-5 py-2 bg-teal-500 hover:bg-teal-600 text-white font-bold rounded-xl text-xs flex items-center space-x-1.5 transition-all duration-200 shrink-0 cursor-pointer"
                  >
                    <span>Mulai Kuis</span>
                    <Award className="w-4 h-4" />
                  </button>
                )}
              </div>
            </div>

          </div>
        )}

        {/* PHASE 2: BATCH QUIZ (ZUSTAND SESSION) */}
        {phase === 'quiz' && activeCard && (() => {
          const currentStage = activeCard.item.srs_stage || 1;
          const wrongCount = wrongCounts[activeCard.itemId] || 0;
          const getNewStage = () => {
            if (isCorrect) {
              if (wrongCount <= 0) {
                return Math.min(9, currentStage + 1);
              }
              const penaltyFactor = currentStage >= 5 ? 2 : 1;
              const penalty = Math.ceil(wrongCount / 2) * penaltyFactor;
              return Math.max(1, currentStage - penalty);
            } else {
              const penaltyFactor = currentStage >= 5 ? 2 : 1;
              const penalty = Math.ceil(wrongCount / 2) * penaltyFactor;
              return Math.max(1, currentStage - penalty);
            }
          };
          const displayedSrsStage = getNewStage();

          return (
            <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in min-h-[400px] flex flex-col justify-start">

              {/* Header quiz card with colors */}
              <div className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(activeCard.type)}`}>
                <QuizHeader
                  onExit={() => {
                    if (confirm('Keluar dari sesi kuis pembelajaran?')) {
                      localStorage.removeItem('custom-lesson-queue');
                      localStorage.removeItem('custom-lesson-interleave');
                      router.push('/dashboard');
                    }
                  }}
                  title={`Lesson Quiz (${queue.length} sisa)`}
                  globalDevMode={globalDevMode}
                  devMode={devMode}
                  setDevMode={setDevMode}
                />
                <h1 className="text-7xl font-black tracking-tight select-text text-center mt-6">{activeCard.character}</h1>
              </div>

              {/* Prompt Label KaniGani style */}
              <div className="w-full py-2.5 bg-slate-100 dark:bg-slate-800 border-y border-slate-200 dark:border-slate-700 flex items-center justify-center text-xs font-semibold text-slate-500 dark:text-slate-350 tracking-wider uppercase select-none">
                {renderKaniGaniPrompt()}
              </div>

              <QuizInput
                inputRef={inputRef}
                userInput={userInput}
                setUserInput={setUserInput}
                cardType={activeCard.cardType}
                isAnswerSubmitted={isAnswerSubmitted}
                incorrectActive={incorrectActive}
                warningMsg={warningMsg}
                onSubmit={handleQuizSubmitAction}
                devMode={devMode}
                getDevModeAnswer={getDevModeAnswer}
                onKeyDown={handleKeyDown}
              />

              {/* Action buttons (Undo, Info) */}
              <QuizActionButtons
                onUndo={proceedNext} // for lessons wrong correction, proceedNext acts as the main trigger
                isUndoDisabled={!isAnswerSubmitted}
                onToggleInfo={toggleItemInfo}
                infoActive={showItemInfo}
                isInfoDisabled={!isAnswerSubmitted}
                showUndo={false}
              />
 
              {/* Answer Feedbacks */}
              <QuizFeedback
                showFeedback={showFeedback}
                isCorrect={isCorrect}
                isAlmostCorrect={isAlmostCorrect}
                closestAcceptedMeaning={closestAcceptedMeaning}
                srsStage={displayedSrsStage}
                acceptedMeanings={activeCard.item.accepted_meanings}
                acceptedReadings={activeCard.item.accepted_readings}
                cardType={activeCard.cardType}
                showSrs={false}
              />
 
              {/* Collapsible Info Drawer */}
              {showItemInfo && (
                <QuizInfoDrawer
                  item={activeCard.item}
                  cardType={activeCard.cardType}
                />
              )}
 
            </div>
          );
        })()}

        {/* PHASE 3: BATCH COMPLETED SUMMARY */}
        {phase === 'summary' && (
          <div className="w-full max-w-md bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl p-8 text-center space-y-6 animate-fade-in my-12 select-none">
            <Award className="w-16 h-16 mx-auto text-teal-500 animate-bounce" />
            <h2 className="text-2xl font-black">Batch Selesai! 🎉</h2>
            <p className="text-sm text-slate-550 dark:text-slate-400">
              Selamat! Anda telah menyelesaikan pelajaran baru untuk batch ini. Semua item ini telah terdaftar di SRS dan siap diulas pada jadwal berikutnya.
            </p>

            <div className="bg-slate-50 dark:bg-slate-950 p-5 rounded-2xl border border-slate-150 dark:border-slate-850">
              <span className="text-3xs uppercase tracking-widest text-slate-400 block font-bold">Item yang Baru Dipelajari</span>
              <div className="flex flex-wrap gap-2 justify-center mt-3">
                {currentBatch.map((item, idx) => (
                  <span
                    key={idx}
                    className={`min-w-10 h-10 px-3 flex items-center justify-center rounded-xl font-black text-lg text-white whitespace-nowrap ${getItemColorClass(item.type)}`}
                  >
                    {item.character}
                  </span>
                ))}
              </div>
            </div>

            <div className="flex flex-col gap-3">
              {lessons.length > currentBatch.length ? (
                <button
                  onClick={handleNextBatch}
                  className="w-full py-3 bg-teal-500 hover:bg-teal-600 text-white font-extrabold rounded-2xl shadow-md transition-colors cursor-pointer"
                >
                  Lanjut Batch Berikutnya ({lessons.length - currentBatch.length} item sisa)
                </button>
              ) : null}

              <button
                onClick={() => {
                  localStorage.removeItem('custom-lesson-queue');
                  localStorage.removeItem('custom-lesson-interleave');
                  router.push('/dashboard');
                }}
                className="w-full py-3 bg-slate-105 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-200 font-extrabold rounded-2xl transition-colors cursor-pointer"
              >
                Selesai & Ke Dashboard
              </button>
            </div>
          </div>
        )}

      </main>
    </div>
  );
}
