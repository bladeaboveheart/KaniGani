'use client';

import { useEffect, useState, useRef, useCallback, Suspense } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { useQuizStore } from '@/store/useQuizStore';
import { Item } from '@/lib/types';
import { useActiveTimer } from '@/hooks/useActiveTimer';
import { useQuizShortcuts } from '@/hooks/useQuizShortcuts';
import { useReviewSession } from '@/hooks/useReviewSession';
import CrabBackground from '@/components/CrabBackground';
import { Flame, AlertTriangle, RotateCcw, ArrowLeft } from 'lucide-react';

// Modular Quiz Components
import ReviewQuizContainer from '@/components/quiz/ReviewQuizContainer';
import QuizSummaryView from '@/components/quiz/QuizSummaryView';
import LevelUpModal from '@/components/quiz/LevelUpModal';
import QuickItemEditorModal from '@/components/admin/QuickItemEditorModal';

function ReviewPageContent() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const isLeechMode = searchParams.get('mode') === 'leech';

  // Advanced Review Filters (Dev Mode)
  const minLevelParam = searchParams.get('minLevel');
  const maxLevelParam = searchParams.get('maxLevel');
  const typesParam = searchParams.get('types');
  const minLevel = minLevelParam ? parseInt(minLevelParam, 10) : null;
  const maxLevel = maxLevelParam ? parseInt(maxLevelParam, 10) : null;
  const filterTypes = typesParam
    ? typesParam.split(',').map((s) => s.trim()).filter(Boolean)
    : null;
  const isAdvancedFilter =
    (minLevel !== null && !isNaN(minLevel)) ||
    (maxLevel !== null && !isNaN(maxLevel)) ||
    (filterTypes !== null && filterTypes.length > 0 && filterTypes.length < 3);

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
    wrapUpActive,
    itemProgress,
    isAlmostCorrect,
    closestAcceptedMeaning,
    warningMsg,
    showItemInfo,
    setUserInput,
    submitAnswer,
    proceedNext,
    toggleItemInfo,
    toggleWrapUp,
    initializeSession,
    undoActiveCard,
    addCustomSynonymAndValidate,
  } = useQuizStore();

  const [phase, setPhase] = useState<'quiz' | 'summary'>('quiz');
  const [devMode, setDevMode] = useState(false);
  const [globalDevMode, setGlobalDevMode] = useState(false);
  const [editModalOpen, setEditModalOpen] = useState(false);

  // Custom Data & Session Hook
  const {
    loading,
    errorMessage,
    totalItemsCount,
    totalDueCount,
    submittedItemIds,
    setSubmittedItemIds,
    submittedIdsRef,
    accuracyStats,
    setAccuracyStats,
    levelUpData,
    setLevelUpData,
    showLevelUpModal,
    setShowLevelUpModal,
    loadReviews,
  } = useReviewSession({
    isLeechMode,
    isAdvancedFilter,
    minLevel,
    maxLevel,
    filterTypes,
    initializeSession,
  });

  const handleItemUpdated = (updatedItem: Item) => {
    const state = useQuizStore.getState();
    if (state.activeCard && state.activeCard.itemId === updatedItem.id) {
      useQuizStore.setState({
        activeCard: {
          ...state.activeCard,
          item: updatedItem,
          character: updatedItem.character,
        },
      });
    }

    const updatedQueue = state.queue.map((c) => {
      if (c.itemId === updatedItem.id) {
        return {
          ...c,
          item: updatedItem,
          character: updatedItem.character,
        };
      }
      return c;
    });

    const updatedOriginal = state.originalItems.map((it) =>
      it.id === updatedItem.id ? updatedItem : it
    );
    const updatedReserve = state.reserveItems.map((it) =>
      it.id === updatedItem.id ? updatedItem : it
    );

    useQuizStore.setState({
      queue: updatedQueue,
      originalItems: updatedOriginal,
      reserveItems: updatedReserve,
    });
  };

  const inputRef = useRef<HTMLInputElement>(null);
  const audioPlayerRef = useRef<HTMLAudioElement | null>(null);
  const infoDrawerRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (showItemInfo && infoDrawerRef.current) {
      infoDrawerRef.current.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
    }
  }, [showItemInfo]);

  const playCurrentAudio = useCallback(() => {
    if (!activeCard || activeCard.item.type !== 'vocabulary') return;
    const audios = activeCard.item.audios || (activeCard.item as any).item_audios || [];
    if (!audios.length) return;

    const preferred =
      typeof window !== 'undefined'
        ? localStorage.getItem('kanigani-preferred-voice') || 'Kyoko'
        : 'Kyoko';

    const kyoko = audios.find(
      (a: any) => a.voice_actor_name?.toLowerCase() === 'kyoko' || a.gender === 'female'
    );
    const kenichi = audios.find(
      (a: any) => a.voice_actor_name?.toLowerCase() === 'kenichi' || a.gender === 'male'
    );
    const target = preferred === 'Kyoko' ? kyoko || kenichi : kenichi || kyoko;

    if (target?.url) {
      if (!audioPlayerRef.current) {
        audioPlayerRef.current = new Audio();
      }
      audioPlayerRef.current.src = target.url;
      audioPlayerRef.current.play().catch((err) => console.error('Audio play error:', err));
    }
  }, [activeCard]);

  useEffect(() => {
    loadReviews();
    return () => {
      useQuizStore.getState().resetStore();
    };
  }, [loadReviews]);

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

  const handleProceedNext = async () => {
    if (!activeCard) return;

    const itemId = activeCard.itemId;
    proceedNext();

    // Refocus input
    setTimeout(() => {
      inputRef.current?.focus();
    }, 20);

    // Check if item is fully completed (both meaning & reading correct)
    setTimeout(async () => {
      const state = useQuizStore.getState();
      const prog = state.itemProgress[itemId];

      if (
        prog &&
        prog.meaningCorrect &&
        prog.readingCorrect &&
        !submittedIdsRef.current.has(itemId)
      ) {
        submittedIdsRef.current.add(itemId);
        setSubmittedItemIds((prev) => [...prev, itemId]);

        const durationSeconds = getAndResetSeconds();

        try {
          const {
            data: { session },
          } = await supabase.auth.getSession();
          const token = session?.access_token;
          const wrongCount = state.wrongCounts[itemId] || 0;
          const meaningWrongCount = state.meaningWrongCounts[itemId] || 0;
          const readingWrongCount = state.readingWrongCounts[itemId] || 0;

          setAccuracyStats((prev) => ({
            correct: prev.correct + (wrongCount === 0 ? 1 : 0),
            wrong: prev.wrong + (wrongCount > 0 ? 1 : 0),
          }));

          const res = await fetch('/api/quiz/submit', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              Authorization: `Bearer ${token}`,
            },
            body: JSON.stringify({
              itemId,
              wrongCount,
              meaningWrongCount,
              readingWrongCount,
              durationSeconds,
              mode: isLeechMode ? 'leech' : 'normal',
            }),
          });

          if (res.ok) {
            const resData = await res.json();
            if (resData.levelUpOccurred && resData.newLevel) {
              setLevelUpData({ newLevel: resData.newLevel });
              setShowLevelUpModal(true);
            }
          }
        } catch (err) {
          console.error('Error progressively submitting review item:', err);
        }
      }
    }, 50);
  };

  const handleEnterAction = () => {
    if (!isAnswerSubmitted) {
      if (devMode && userInput.trim() === '') {
        const devAnswer = getDevModeAnswer();
        setUserInput(devAnswer);
        submitAnswer();
        inputRef.current?.focus();
      } else if (userInput.trim() !== '') {
        submitAnswer();
        inputRef.current?.focus();
      } else {
        inputRef.current?.focus();
      }
    } else {
      handleProceedNext();
      inputRef.current?.focus();
    }
  };

  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === 'Enter') {
      e.preventDefault();
      handleEnterAction();
    } else if (isAnswerSubmitted && (e.key === 'f' || e.key === 'F')) {
      e.preventDefault();
      toggleItemInfo();
    }
  };

  // Keyboard shortcut handler
  useQuizShortcuts({
    onToggleInfo: toggleItemInfo,
    onAdvance: () => handleProceedNext(),
    onEnter: handleEnterAction,
    onPlayAudio: playCurrentAudio,
    isAnswerSubmitted,
  });

  // Focus input automatically (skip on mobile)
  useEffect(() => {
    if (phase === 'quiz' && activeCard && inputRef.current) {
      const isMobile =
        typeof window !== 'undefined' &&
        (window.matchMedia('(pointer: coarse)').matches || window.innerWidth < 768);
      if (!isMobile) {
        inputRef.current.focus({ preventScroll: true });
      }
    }
  }, [phase, activeCard, isAnswerSubmitted, incorrectActive]);

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
      <div className="min-h-screen flex items-center justify-center relative bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
        <CrabBackground />
        <div className="flex flex-col items-center space-y-4 select-none">
          <div className="w-12 h-12 border-4 border-pink-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="font-semibold text-sm">Menyiapkan berkas review kuis Anda...</p>
        </div>
      </div>
    );
  }

  if (errorMessage) {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center bg-slate-50 text-slate-900 dark:bg-slate-950 p-4">
        <CrabBackground />
        <div className="relative z-10 max-w-md w-full bg-white dark:bg-slate-900 p-6 rounded-3xl border border-rose-200 dark:border-rose-900/50 shadow-xl text-center space-y-4">
          <div className="w-14 h-14 bg-rose-100 dark:bg-rose-950/60 text-rose-500 rounded-2xl flex items-center justify-center mx-auto">
            <AlertTriangle className="w-7 h-7" />
          </div>
          <h2 className="text-xl font-black text-slate-900 dark:text-slate-100">
            Gagal Memuat Review
          </h2>
          <p className="text-sm text-slate-600 dark:text-slate-400 break-words">{errorMessage}</p>
          <div className="flex gap-3 pt-2">
            <button
              onClick={() => router.push('/dashboard')}
              className="flex-1 py-2.5 px-4 rounded-xl border border-slate-200 dark:border-slate-800 text-sm font-bold text-slate-700 dark:text-slate-300 hover:bg-slate-100 dark:hover:bg-slate-800 transition-colors flex items-center justify-center gap-2 cursor-pointer"
            >
              <ArrowLeft className="w-4 h-4" /> Dashboard
            </button>
            <button
              onClick={() => loadReviews()}
              className="flex-1 py-2.5 px-4 rounded-xl bg-pink-500 hover:bg-pink-600 text-white text-sm font-bold shadow-md hover:shadow-lg transition-all flex items-center justify-center gap-2 cursor-pointer"
            >
              <RotateCcw className="w-4 h-4" /> Coba Lagi
            </button>
          </div>
        </div>
      </div>
    );
  }

  if (totalItemsCount === 0 && phase !== 'summary') {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center relative bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100 px-4">
        <CrabBackground />
        <div className="max-w-md w-full text-center bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6">
          <Flame className="w-16 h-16 mx-auto text-pink-500 animate-bounce" />
          <h2 className="text-2xl font-black">
            {isLeechMode ? 'Hebat! Tidak Ada Leech 🔥' : 'Semua Bersih! 🔥'}
          </h2>
          <p className="text-sm text-slate-500 dark:text-slate-400">
            {isLeechMode
              ? 'Tidak ada item leech yang perlu dilatih saat ini. Seluruh materimu telah dikuasai dengan baik!'
              : 'Hebat! Tidak ada item review yang jatuh tempo saat ini. Silakan kembali ke dashboard atau pelajari lesson baru Anda.'}
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

  const displayRemainingReviews = Math.max(0, totalDueCount - submittedItemIds.length);
  const accuracyPct =
    accuracyStats.correct + accuracyStats.wrong > 0
      ? Math.round((accuracyStats.correct / (accuracyStats.correct + accuracyStats.wrong)) * 100)
      : 100;

  return (
    <div className="min-h-screen flex flex-col relative bg-slate-50 text-slate-900 dark:bg-slate-950 transition-colors duration-300">
      <CrabBackground />
      <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-0 pb-6 sm:pb-12">
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

          const prog = itemProgress[activeCard.itemId];
          const isClosingCard =
            activeCard.type === 'radical'
              ? true
              : activeCard.cardType === 'meaning'
              ? Boolean(prog?.readingCorrect)
              : Boolean(prog?.meaningCorrect);

          return (
            <ReviewQuizContainer
              activeCard={activeCard}
              isLeechMode={isLeechMode}
              isAdvancedFilter={isAdvancedFilter}
              totalDueCount={totalDueCount}
              totalItemsCount={totalItemsCount}
              accuracyPct={accuracyPct}
              submittedItemIdsCount={submittedItemIds.length}
              displayRemainingReviews={displayRemainingReviews}
              globalDevMode={globalDevMode}
              devMode={devMode}
              setDevMode={setDevMode}
              onExit={() => {
                if (
                  confirm(
                    'Apakah Anda yakin ingin keluar? Semua item yang telah selesai dijawab BENAR KEDUA KARTUNYA sudah otomatis tersimpan progresnya secara aman di server.'
                  )
                ) {
                  router.push('/dashboard');
                }
              }}
              inputRef={inputRef}
              userInput={userInput}
              setUserInput={setUserInput}
              isAnswerSubmitted={isAnswerSubmitted}
              incorrectActive={incorrectActive}
              warningMsg={warningMsg}
              handleQuizSubmitAction={handleEnterAction}
              getDevModeAnswer={getDevModeAnswer}
              handleKeyDown={handleKeyDown}
              toggleWrapUp={() => toggleWrapUp()}
              wrapUpActive={wrapUpActive}
              undoActiveCard={undoActiveCard}
              toggleItemInfo={toggleItemInfo}
              showItemInfo={showItemInfo}
              showFeedback={showFeedback}
              isCorrect={isCorrect}
              isAlmostCorrect={isAlmostCorrect}
              closestAcceptedMeaning={closestAcceptedMeaning}
              displayedSrsStage={displayedSrsStage}
              isClosingCard={isClosingCard}
              infoDrawerRef={infoDrawerRef}
              onEditItem={() => setEditModalOpen(true)}
              onSynonymAdded={(synonym) =>
                addCustomSynonymAndValidate(activeCard.itemId, synonym)
              }
            />
          );
        })()}

        {/* QUICK ITEM EDITOR MODAL (DEV MODE) */}
        <QuickItemEditorModal
          isOpen={editModalOpen}
          setIsOpen={setEditModalOpen}
          item={activeCard?.item || null}
          onItemUpdated={handleItemUpdated}
        />

        {/* PHASE 2: SUMMARY REVIEW COMPLETED */}
        {phase === 'summary' && (
          <QuizSummaryView
            type="review"
            items={[]}
            totalCompleted={submittedItemIds.length}
            accuracyPct={accuracyPct}
            hasNextBatch={totalDueCount > submittedItemIds.length}
            remainingLessonsCount={Math.max(0, totalDueCount - submittedItemIds.length)}
            onNextBatch={() => {
              loadReviews();
            }}
            levelUpLevel={levelUpData?.newLevel}
            onFinish={() => router.push('/dashboard')}
          />
        )}

        {/* LEVEL UP CELEBRATION MODAL */}
        {levelUpData && (
          <LevelUpModal
            newLevel={levelUpData.newLevel}
            isOpen={showLevelUpModal}
            onClose={() => setShowLevelUpModal(false)}
          />
        )}
      </main>
    </div>
  );
}

export default function ReviewPage() {
  return (
    <Suspense
      fallback={
        <div className="min-h-screen flex items-center justify-center bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
          <div className="w-12 h-12 border-4 border-pink-500 border-t-transparent rounded-full animate-spin"></div>
        </div>
      }
    >
      <ReviewPageContent />
    </Suspense>
  );
}
