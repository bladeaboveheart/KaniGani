'use client';

import { useEffect, useState, useRef, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import CharacterDisplay from '@/components/CharacterDisplay';
import { useQuizStore } from '@/store/useQuizStore';
import { Item } from '@/lib/types';
import { useActiveTimer } from '@/hooks/useActiveTimer';
import { useQuizShortcuts } from '@/hooks/useQuizShortcuts';
import { useSwipeGesture } from '@/hooks/useSwipeGesture';
import { useLessonSession } from '@/hooks/useLessonSession';
import CrabBackground from '@/components/CrabBackground';
import { BookOpen } from 'lucide-react';

// Modular Components
import LessonSlideViewer from '@/components/lesson/LessonSlideViewer';
import QuizHeader from '@/components/quiz/QuizHeader';
import QuizInput from '@/components/quiz/QuizInput';
import QuizFeedback from '@/components/quiz/QuizFeedback';
import QuizActionButtons from '@/components/quiz/QuizActionButtons';
import QuizInfoDrawer from '@/components/quiz/QuizInfoDrawer';
import QuizSummaryView from '@/components/quiz/QuizSummaryView';
import QuickItemEditorModal from '@/components/admin/QuickItemEditorModal';

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
    resetStore,
    addCustomSynonymAndValidate,
  } = useQuizStore();

  const [phase, setPhase] = useState<'learn' | 'quiz' | 'summary'>('learn');
  const [activeTab, setActiveTab] = useState<'info' | 'mnemonic' | 'kanjis'>('info');
  const [showAllKanjis, setShowAllKanjis] = useState(false);

  const [devMode, setDevMode] = useState(false);
  const [globalDevMode, setGlobalDevMode] = useState(false);
  const [editModalOpen, setEditModalOpen] = useState(false);

  // Lesson data hook
  const {
    lessons,
    setLessons,
    currentBatch,
    setCurrentBatch,
    itemIndex,
    setItemIndex,
    loading,
    setLoading,
  } = useLessonSession();

  // Reset showAllKanjis when switching item in batch
  useEffect(() => {
    setShowAllKanjis(false);
  }, [itemIndex]);

  const handleItemUpdated = (updatedItem: Item) => {
    setCurrentBatch((prev) => prev.map((it) => (it.id === updatedItem.id ? updatedItem : it)));
    setLessons((prev) => prev.map((it) => (it.id === updatedItem.id ? updatedItem : it)));

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

    useQuizStore.setState({
      queue: updatedQueue,
      originalItems: updatedOriginal,
    });
  };

  const audioPlayerRef = useRef<HTMLAudioElement | null>(null);
  const inputRef = useRef<HTMLInputElement>(null);
  const quizInfoDrawerRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (showItemInfo && quizInfoDrawerRef.current) {
      quizInfoDrawerRef.current.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
    }
  }, [showItemInfo]);

  const currentItem = currentBatch[itemIndex];

  // Play audio for current vocabulary item (supports learn and quiz phases)
  const playCurrentAudio = useCallback(() => {
    let targetItem: Item | undefined;
    if (phase === 'learn') {
      targetItem = currentItem;
    } else if (phase === 'quiz') {
      targetItem = activeCard?.item;
    }

    if (!targetItem || targetItem.type !== 'vocabulary') return;
    const audios = targetItem.audios || (targetItem as any).item_audios || [];
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
  }, [phase, currentItem, activeCard]);

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

  const startQuiz = useCallback(() => {
    if (currentBatch.length === 0) return;
    initializeSession(currentBatch, 'lesson');
    setPhase('quiz');
    setTimeout(() => {
      inputRef.current?.focus();
    }, 50);
  }, [currentBatch, initializeSession]);

  const handleNext = useCallback(() => {
    if (!currentItem) return;
    if (itemIndex === currentBatch.length - 1 && activeTab !== 'info') {
      return;
    }
    if (activeTab === 'info') {
      setActiveTab(currentItem.type === 'radical' ? 'kanjis' : 'mnemonic');
    } else {
      setItemIndex((prev) => prev + 1);
      setActiveTab('info');
    }
  }, [currentItem, itemIndex, currentBatch.length, activeTab, setItemIndex]);

  const handlePrev = useCallback(() => {
    if (itemIndex === 0 && activeTab === 'info') return;
    if (activeTab !== 'info') {
      setActiveTab('info');
    } else if (itemIndex > 0) {
      const prevIdx = itemIndex - 1;
      setItemIndex(prevIdx);
      const prevItem = currentBatch[prevIdx];
      if (prevItem && prevItem.type === 'radical') {
        setActiveTab('kanjis');
      } else {
        setActiveTab('mnemonic');
      }
    }
  }, [itemIndex, activeTab, currentBatch, setItemIndex]);

  const swipeHandlers = useSwipeGesture({
    onSwipeLeft: handleNext,
    onSwipeRight: handlePrev,
  });

  const handleProceedNext = () => {
    proceedNext();
    inputRef.current?.focus();
    setTimeout(() => {
      inputRef.current?.focus();
    }, 20);
  };

  const handleEnterAction = () => {
    if (phase !== 'quiz') return;
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

  const handleQuizSubmitAction = () => {
    handleEnterAction();
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

  // Keyboard shortcut hook
  useQuizShortcuts({
    onToggleInfo: toggleItemInfo,
    onAdvance: () => handleProceedNext(),
    onEnter: handleEnterAction,
    isAnswerSubmitted: phase === 'quiz' && isAnswerSubmitted,
    onPlayAudio: playCurrentAudio,
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

  // Keyboard controls for learn phase
  useEffect(() => {
    const handleLearnKeyDown = (e: KeyboardEvent) => {
      if (phase !== 'learn') return;

      const isInputActive =
        document.activeElement?.tagName === 'INPUT' ||
        document.activeElement?.tagName === 'TEXTAREA';
      if (isInputActive) return;

      if (e.key === 'ArrowLeft') {
        e.preventDefault();
        if (activeTab !== 'info') {
          setActiveTab('info');
        } else {
          if (itemIndex > 0) {
            const prevIdx = itemIndex - 1;
            setItemIndex(prevIdx);
            const prevItem = currentBatch[prevIdx];
            if (prevItem && prevItem.type === 'radical') {
              setActiveTab('kanjis');
            } else {
              setActiveTab('mnemonic');
            }
          }
        }
      } else if (e.key === 'ArrowRight') {
        e.preventDefault();
        if (activeTab === 'info') {
          setActiveTab(currentItem?.type === 'radical' ? 'kanjis' : 'mnemonic');
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
  }, [phase, itemIndex, currentItem, activeTab, currentBatch, startQuiz, setItemIndex]);

  const completeBatch = async () => {
    setLoading(true);
    try {
      const {
        data: { session },
      } = await supabase.auth.getSession();
      const token = session?.access_token;

      const itemIds = currentBatch.map((i) => i.id);
      const durationSeconds = getAndResetSeconds();

      const res = await fetch('/api/lesson/complete', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({ itemIds, durationSeconds }),
      });

      if (!res.ok) {
        throw new Error('Gagal menyimpan hasil lesson di server.');
      }

      // Remove learned items from custom queue
      const customQueueStr = localStorage.getItem('custom-lesson-queue');
      if (customQueueStr) {
        try {
          const customQueueIds = JSON.parse(customQueueStr) as string[];
          const remainingCustomIds = customQueueIds.filter((id) => !itemIds.includes(id));
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
      <div className="min-h-screen flex items-center justify-center relative bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
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
      <div className="min-h-screen flex flex-col items-center justify-center relative bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100 px-4">
        <CrabBackground />
        <div className="max-w-md w-full text-center bg-white dark:bg-slate-900 p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl space-y-6">
          <BookOpen className="w-16 h-16 mx-auto text-teal-500 animate-bounce" />
          <h2 className="text-2xl font-black">Semua Bersih!</h2>
          <p className="text-sm text-slate-500 dark:text-slate-400">
            Hebat! Tidak ada item lesson baru yang tersedia saat ini. Silakan kembali ke dashboard
            atau periksa level up prasyarat Anda.
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

  const renderKaniGaniPrompt = () => {
    if (!activeCard) return null;
    const isMeaning = activeCard.cardType === 'meaning';

    if (activeCard.type === 'radical') {
      return (
        <span className="select-text">
          Nama <span className="font-black text-slate-850 dark:text-slate-100">Radikal</span>
        </span>
      );
    }

    if (activeCard.type === 'kanji') {
      if (isMeaning) {
        return (
          <span className="select-text">
            Arti <span className="font-black text-slate-850 dark:text-slate-100">Kanji</span>
          </span>
        );
      }
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find((r) => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type;
      return expectedType === 'onyomi' ? (
        <span className="select-text">
          Bacaan <span className="font-black text-slate-850 dark:text-slate-100">Onyomi</span>
        </span>
      ) : (
        <span className="select-text">
          Bacaan <span className="font-black text-slate-850 dark:text-slate-100">Kunyomi</span>
        </span>
      );
    }

    return isMeaning ? (
      <span className="select-text">
        Arti <span className="font-black text-slate-850 dark:text-slate-100">Kosakata</span>
      </span>
    ) : (
      <span className="select-text">
        Bacaan <span className="font-black text-slate-850 dark:text-slate-100">Kosakata</span>
      </span>
    );
  };

  return (
    <div className="min-h-screen flex flex-col relative bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <CrabBackground />

      <main className="flex-1 max-w-4xl w-full mx-auto px-4 flex flex-col items-center justify-start pt-0 pb-6 sm:pb-12">
        {/* PHASE 1: BATCH LEARN SLIDES */}
        {phase === 'learn' && currentItem && (
          <LessonSlideViewer
            currentItem={currentItem}
            itemIndex={itemIndex}
            currentBatch={currentBatch}
            activeTab={activeTab}
            setActiveTab={setActiveTab}
            showAllKanjis={showAllKanjis}
            setShowAllKanjis={setShowAllKanjis}
            globalDevMode={globalDevMode}
            setEditModalOpen={setEditModalOpen}
            onExit={() => {
              if (
                confirm(
                  'Apakah Anda yakin ingin keluar dari sesi pembelajaran? Progres batch ini belum disimpan.'
                )
              ) {
                localStorage.removeItem('custom-lesson-queue');
                localStorage.removeItem('custom-lesson-interleave');
                router.push('/dashboard');
              }
            }}
            startQuiz={startQuiz}
            handleNext={handleNext}
            handlePrev={handlePrev}
            addCustomSynonymAndValidate={addCustomSynonymAndValidate}
            swipeHandlers={swipeHandlers}
          />
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
              {/* Header quiz card */}
              <div
                className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(
                  activeCard.type
                )}`}
              >
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
                <h1 className="text-7xl font-black tracking-tight select-text text-center mt-6 flex items-center justify-center">
                  <CharacterDisplay
                    character={activeCard.character}
                    slug={activeCard.item.slug}
                    imgClassName="w-20 h-20"
                  />
                </h1>
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

              {/* Action buttons (Undo, Info) */}
              <QuizActionButtons
                onUndo={proceedNext}
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
                <div ref={quizInfoDrawerRef}>
                  <QuizInfoDrawer
                    item={activeCard.item}
                    cardType={activeCard.cardType}
                    devMode={globalDevMode}
                    onEditItem={() => setEditModalOpen(true)}
                    onSynonymAdded={(synonym) =>
                      addCustomSynonymAndValidate(activeCard.itemId, synonym)
                    }
                  />
                </div>
              )}
            </div>
          );
        })()}

        {/* Quick Item Editor for Developer Mode */}
        {globalDevMode && (
          <QuickItemEditorModal
            isOpen={editModalOpen}
            setIsOpen={setEditModalOpen}
            item={phase === 'learn' ? currentItem : activeCard?.item || null}
            onItemUpdated={handleItemUpdated}
          />
        )}

        {/* PHASE 3: BATCH COMPLETED SUMMARY */}
        {phase === 'summary' && (
          <QuizSummaryView
            type="lesson"
            items={currentBatch}
            hasNextBatch={lessons.length > currentBatch.length}
            remainingLessonsCount={lessons.length - currentBatch.length}
            onNextBatch={handleNextBatch}
            onFinish={() => {
              localStorage.removeItem('custom-lesson-queue');
              localStorage.removeItem('custom-lesson-interleave');
              router.push('/dashboard');
            }}
          />
        )}
      </main>
    </div>
  );
}
