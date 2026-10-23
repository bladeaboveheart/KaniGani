'use client';

import React from 'react';
import CharacterDisplay from '@/components/CharacterDisplay';
import QuizHeader from '@/components/quiz/QuizHeader';
import QuizInput from '@/components/quiz/QuizInput';
import QuizActionButtons from '@/components/quiz/QuizActionButtons';
import QuizFeedback from '@/components/quiz/QuizFeedback';
import QuizInfoDrawer from '@/components/quiz/QuizInfoDrawer';
import { QuizCard } from '@/store/useQuizStore';

interface ReviewQuizContainerProps {
  activeCard: QuizCard;
  isLeechMode: boolean;
  isAdvancedFilter: boolean;
  totalDueCount: number;
  totalItemsCount: number;
  accuracyPct: number;
  submittedItemIdsCount: number;
  displayRemainingReviews: number;
  globalDevMode: boolean;
  devMode: boolean;
  setDevMode: (val: boolean | ((prev: boolean) => boolean)) => void;
  onExit: () => void;
  inputRef: React.RefObject<HTMLInputElement | null>;
  userInput: string;
  setUserInput: (val: string) => void;
  isAnswerSubmitted: boolean;
  incorrectActive: boolean;
  warningMsg: string | null;
  handleQuizSubmitAction: () => void;
  getDevModeAnswer: () => string;
  handleKeyDown: (e: React.KeyboardEvent<HTMLInputElement>) => void;
  toggleWrapUp: () => void;
  wrapUpActive: boolean;
  undoActiveCard: () => void;
  toggleItemInfo: () => void;
  showItemInfo: boolean;
  showFeedback: boolean;
  isCorrect: boolean;
  isAlmostCorrect: boolean;
  closestAcceptedMeaning: string;
  displayedSrsStage: number;
  isClosingCard: boolean;
  infoDrawerRef: React.RefObject<HTMLDivElement | null>;
  onEditItem: () => void;
  onSynonymAdded: (synonym: string) => void;
}

export default function ReviewQuizContainer({
  activeCard,
  isLeechMode,
  isAdvancedFilter,
  totalDueCount,
  totalItemsCount,
  accuracyPct,
  submittedItemIdsCount,
  displayRemainingReviews,
  globalDevMode,
  devMode,
  setDevMode,
  onExit,
  inputRef,
  userInput,
  setUserInput,
  isAnswerSubmitted,
  incorrectActive,
  warningMsg,
  handleQuizSubmitAction,
  getDevModeAnswer,
  handleKeyDown,
  toggleWrapUp,
  wrapUpActive,
  undoActiveCard,
  toggleItemInfo,
  showItemInfo,
  showFeedback,
  isCorrect,
  isAlmostCorrect,
  closestAcceptedMeaning,
  displayedSrsStage,
  isClosingCard,
  infoDrawerRef,
  onEditItem,
  onSynonymAdded,
}: ReviewQuizContainerProps) {
  const getItemColorClass = (type: string) => {
    if (type === 'radical') return 'bg-radical border-radical/20 glow-radical';
    if (type === 'kanji') return 'bg-kanji border-kanji/20 glow-kanji';
    return 'bg-vocab border-vocab/20 glow-vocab';
  };

  const renderKaniGaniPrompt = () => {
    const isMeaning = activeCard.cardType === 'meaning';
    const keywordClass = isMeaning
      ? 'font-black text-slate-900 dark:text-white'
      : 'font-black text-white dark:text-slate-100';

    if (activeCard.type === 'radical') {
      return (
        <span className="select-text">
          Nama <span className={keywordClass}>Radikal</span>
        </span>
      );
    }

    if (activeCard.type === 'kanji') {
      if (isMeaning) {
        return (
          <span className="select-text">
            Arti <span className={keywordClass}>Kanji</span>
          </span>
        );
      }
      const readings = activeCard.item.readings || [];
      const primaryReadingObj = readings.find((r) => r.primary_reading);
      const expectedType = primaryReadingObj?.reading_type;
      return expectedType === 'onyomi' ? (
        <span className="select-text">
          Bacaan Onyomi <span className={keywordClass}>Kanji</span>
        </span>
      ) : (
        <span className="select-text">
          Bacaan Kunyomi <span className={keywordClass}>Kanji</span>
        </span>
      );
    }

    if (isMeaning) {
      return (
        <span className="select-text">
          Arti <span className={keywordClass}>Kosakata</span>
        </span>
      );
    }
    return (
      <span className="select-text">
        Cara Baca <span className={keywordClass}>Kosakata</span>
      </span>
    );
  };

  const headerTitle = isLeechMode
    ? 'Latihan Leech'
    : isAdvancedFilter
    ? totalDueCount > totalItemsCount
      ? `Batch ${totalItemsCount} (Filter ${totalDueCount})`
      : `Advanced Review (${totalDueCount} Item)`
    : totalDueCount > totalItemsCount
    ? `Batch ${totalItemsCount} Item`
    : 'Review';

  return (
    <div className="w-full bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl overflow-hidden animate-fade-in min-h-[420px] flex flex-col justify-start">
      {/* Header Colorful Character with Integrated Navbar */}
      <div
        className={`relative pt-16 pb-12 flex flex-col items-center justify-center text-white ${getItemColorClass(
          activeCard.type
        )}`}
      >
        <QuizHeader
          onExit={onExit}
          title={headerTitle}
          accuracyPct={accuracyPct}
          completedCount={submittedItemIdsCount}
          remainingCount={displayRemainingReviews}
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
      <div
        className={`w-full py-2.5 border-y flex items-center justify-center text-xs font-semibold tracking-wider uppercase select-none transition-colors duration-200 ${
          activeCard.cardType === 'meaning'
            ? 'bg-white dark:bg-slate-700/70 border-slate-200 dark:border-slate-650 text-slate-600 dark:text-slate-200 shadow-2xs'
            : 'bg-slate-800 dark:bg-slate-950 border-slate-700 dark:border-slate-850 text-slate-300 dark:text-slate-400'
        }`}
      >
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
        onWrapUp={toggleWrapUp}
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
        showSrs={isClosingCard}
      />

      {/* Sliding Detail Drawer Panel */}
      {showItemInfo && (
        <div ref={infoDrawerRef}>
          <QuizInfoDrawer
            item={activeCard.item}
            cardType={activeCard.cardType}
            devMode={globalDevMode}
            onEditItem={onEditItem}
            onSynonymAdded={onSynonymAdded}
          />
        </div>
      )}
    </div>
  );
}
