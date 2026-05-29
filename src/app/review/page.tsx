'use client';

import { useEffect, useState, useRef } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { useQuizStore } from '@/store/useQuizStore';
import { Item } from '@/lib/types';
import { useActiveTimer } from '@/hooks/useActiveTimer';
import CrabBackground from '@/components/CrabBackground';
import {
  Flame, Award, Inbox, Clock, Home, Zap
} from 'lucide-react';

// Import Modular Quiz Components
import QuizHeader from '@/components/quiz/QuizHeader';
import QuizInput from '@/components/quiz/QuizInput';
import QuizFeedback from '@/components/quiz/QuizFeedback';
import QuizActionButtons from '@/components/quiz/QuizActionButtons';
import QuizInfoDrawer from '@/components/quiz/QuizInfoDrawer';

export default function ReviewPage() {
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
    wrongCounts,
    itemProgress,
    wrapUpActive,
    isAlmostCorrect,
    closestAcceptedMeaning,
    warningMsg,
    showItemInfo,
    sessionTotalCards,
    setUserInput,
    submitAnswer,
    proceedNext,
    toggleItemInfo,
    toggleWrapUp,
    initializeSession,
    resetStore,
    undoActiveCard
  } = useQuizStore();

  const [loading, setLoading] = useState(true);
  const [phase, setPhase] = useState<'quiz' | 'summary'>('quiz');
  const [totalItemsCount, setTotalItemsCount] = useState(0);
  const [devMode, setDevMode] = useState(false);
  const [globalDevMode, setGlobalDevMode] = useState(false);

  // Track on-the-fly review submissions
  const [submittedItemIds, setSubmittedItemIds] = useState<string[]>([]);
  const [accuracyStats, setAccuracyStats] = useState({ correct: 0, wrong: 0 });

  const inputRef = useRef<HTMLInputElement>(null);

  // Fetch reviews due
  useEffect(() => {
    async function loadReviews() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        const now = new Date().toISOString();

        // Fetch review items due
        const { data, error } = await supabase
          .from('user_progress')
          .select('item_id, srs_stage, next_review, items(*)')
          .eq('user_id', user.id)
          .gte('srs_stage', 1)
          .lte('srs_stage', 8)
          .lte('next_review', now);

        if (error) throw error;
        if (!data || data.length === 0) {
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

        setTotalItemsCount(itemsWithDetails.length);
        initializeSession(itemsWithDetails, 'review');

      } catch (err) {
        console.error('Error loading reviews:', err);
      } finally {
        setLoading(false);
      }
    }

    loadReviews();
    return () => resetStore();
  }, [router, resetStore, initializeSession]);

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

  const handleQuizSubmitAction = () => {
    if (!isAnswerSubmitted) {
      if (userInput.trim() !== '') {
        submitAnswer();
      }
    } else {
      handleProceedNext();
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
        handleProceedNext();
        setTimeout(() => {
          inputRef.current?.focus();
        }, 20);
      }
    }
  };

  const handleProceedNext = async () => {
    if (!activeCard) return;

    const itemId = activeCard.itemId;
    proceedNext();

    // Refocus input to ensure virtual keyboard stays open
    setTimeout(() => {
      inputRef.current?.focus();
    }, 20);

    // Check if item is fully completed (both meaning & reading correct)
    setTimeout(async () => {
      const state = useQuizStore.getState();
      const prog = state.itemProgress[itemId];

      if (prog && prog.meaningCorrect && prog.readingCorrect && !submittedItemIds.includes(itemId)) {
        setSubmittedItemIds(prev => [...prev, itemId]);

        const durationSeconds = getAndResetSeconds();

        try {
          const { data: { session } } = await supabase.auth.getSession();
          const token = session?.access_token;
          const wrongCount = state.wrongCounts[itemId] || 0;

          // Track accuracy stats
          setAccuracyStats(prev => ({
            correct: prev.correct + (wrongCount === 0 ? 1 : 0),
            wrong: prev.wrong + (wrongCount > 0 ? 1 : 0)
          }));

          await fetch('/api/quiz/submit', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'Authorization': `Bearer ${token}`
            },
            body: JSON.stringify({ itemId, wrongCount, durationSeconds })
          });

        } catch (err) {
          console.error('Error progressively submitting review item:', err);
        }
      }
    }, 50);
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

  // Hotkey 'f' to toggle detail info drawer after submit
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


  // Finish review session
  useEffect(() => {
    if (!loading && phase === 'quiz' && queue.length === 0 && totalItemsCount > 0) {
      setTimeout(() => {
        setPhase('summary');
      }, 0);
    }
  }, [queue, phase, loading, totalItemsCount]);

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center relative overflow-hidden bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
        <CrabBackground />
        <div className="flex flex-col items-center space-y-4 select-none">
          <div className="w-12 h-12 border-4 border-pink-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="font-semibold text-sm">Menyiapkan berkas review kuis Anda...</p>
        </div>
      </div>
    );
  }

  if (totalItemsCount === 0 && phase !== 'summary') {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center relative overflow-hidden bg-slate-50 dark:bg-slate-955 px-4">
        <CrabBackground />
        <div className="max-w-md w-full text-center bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6">
          <Flame className="w-16 h-16 mx-auto text-pink-500 animate-bounce" />
          <h2 className="text-2xl font-black">Semua Bersih! 🔥</h2>
          <p className="text-sm text-slate-500 dark:text-slate-400">
            Hebat! Tidak ada item review yang jatuh tempo saat ini. Silakan kembali ke dashboard atau pelajari lesson baru Anda.
          </p>
          <button
            onClick={() => router.push('/dashboard')}
            className="w-full py-3 bg-pink-500 text-white font-bold rounded-2xl shadow-md hover:bg-pink-600 transition-colors cursor-pointer"
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

  const renderKaniGaniPrompt = () => {
    if (!activeCard) return null;
    const isMeaning = activeCard.cardType === 'meaning';

    if (activeCard.type === 'radical') {
      return (
        <span className="select-text">Nama <span className="font-black text-slate-800 dark:text-slate-100">Radikal</span></span>
      );
    }

    if (activeCard.type === 'kanji') {
      if (isMeaning) {
        return (
          <span className="select-text">Arti <span className="font-black text-slate-800 dark:text-slate-100">Kanji</span></span>
        );
      }
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find(r => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type;
      return expectedType === 'onyomi' ? (
        <span className="select-text">Bacaan Onyomi <span className="font-black text-slate-800 dark:text-slate-100">Kanji</span></span>
      ) : (
        <span className="select-text">Bacaan Kunyomi <span className="font-black text-slate-800 dark:text-slate-100">Kanji</span></span>
      );
    }

    if (isMeaning) {
      return (
        <span className="select-text">Arti <span className="font-black text-slate-800 dark:text-slate-100">Kosakata</span></span>
      );
    }
    return (
      <span className="select-text">Cara Baca <span className="font-black text-slate-800 dark:text-slate-100">Kosakata</span></span>
    );
  };

  const remainingCards = queue.length;
  const remainingItemsCount = Array.from(new Set(queue.map(c => c.itemId))).length;
  const accuracyPct = accuracyStats.correct + accuracyStats.wrong > 0
    ? Math.round((accuracyStats.correct / (accuracyStats.correct + accuracyStats.wrong)) * 100)
    : 100;

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-50 text-slate-900 dark:bg-slate-950 transition-colors duration-300">
      <CrabBackground />
      <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-0 pb-6 sm:pb-12 transition-all duration-300">

        {/* PHASE 1: QUIZ REVIEW SESSION */}
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
            <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in min-h-[420px] flex flex-col justify-start">

              {/* Header Colorful Character with Integrated Navbar */}
              <div className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(activeCard.type)}`}>
                <QuizHeader
                  onExit={() => {
                    if (confirm('Apakah Anda yakin ingin keluar? Semua item yang telah selesai dijawab BENAR KEDUA KARTUNYA sudah otomatis tersimpan progresnya secara aman di server.')) {
                      router.push('/dashboard');
                    }
                  }}
                  title="Review"
                  accuracyPct={accuracyPct}
                  completedCount={submittedItemIds.length}
                  remainingCount={remainingItemsCount}
                  globalDevMode={globalDevMode}
                  devMode={devMode}
                  setDevMode={setDevMode}
                />
                <h1 className="text-7xl font-black tracking-tight select-text text-center mt-6">{activeCard.character}</h1>
              </div>

              {/* Prompt Label */}
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

              <QuizActionButtons
                onWrapUp={() => toggleWrapUp(submittedItemIds.length)}
                wrapUpActive={wrapUpActive}
                onUndo={undoActiveCard}
                isUndoDisabled={!isAnswerSubmitted}
                onToggleInfo={toggleItemInfo}
                infoActive={showItemInfo}
                isInfoDisabled={!isAnswerSubmitted}
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
              />

              {/* Sliding Detail Drawer Panel */}
              {showItemInfo && (
                <QuizInfoDrawer
                  item={activeCard.item}
                  cardType={activeCard.cardType}
                />
              )}

            </div>
          );
        })()}

        {/* PHASE 2: SUMMARY REVIEW COMPLETED */}
        {phase === 'summary' && (
          <div className="w-full max-w-md bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl p-8 text-center space-y-6 animate-fade-in my-12 select-none">
            <Award className="w-16 h-16 mx-auto text-pink-500 animate-bounce" />
            <h2 className="text-2xl font-black">Review Selesai! 🎉</h2>
            <p className="text-sm text-slate-500 dark:text-slate-400">
              Hebat! Anda telah menyelesaikan semua sesi kuis review yang jatuh tempo dengan sukses.
            </p>

            <div className="bg-slate-50 dark:bg-slate-955 p-4 rounded-2xl border border-slate-200 dark:border-slate-800 grid grid-cols-2 gap-4">
              <div className="flex flex-col justify-between items-center h-16 text-center select-none">
                <span className="text-4xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Total Item</span>
                <span className="text-xl font-black text-slate-800 dark:text-slate-200">{submittedItemIds.length}</span>
              </div>
              <div className="flex flex-col justify-between items-center h-16 text-center select-none">
                <span className="text-4xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Akurasi Rata-rata</span>
                <span className="text-xl font-black text-pink-500">{accuracyPct}%</span>
              </div>
            </div>

            <button
              onClick={() => router.push('/dashboard')}
              className="w-full py-3 bg-pink-500 text-white font-bold rounded-2xl shadow-md hover:bg-pink-600 transition-colors cursor-pointer"
            >
              Kembali ke Dashboard
            </button>
          </div>
        )}

      </main>
    </div>
  );
}
