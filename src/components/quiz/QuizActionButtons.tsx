'use client';

import { useState, useEffect } from 'react';
import { Clock, RotateCcw, Eye } from 'lucide-react';

interface QuizActionButtonsProps {
  onWrapUp?: () => void;
  wrapUpActive?: boolean;
  onUndo?: () => void;
  isUndoDisabled?: boolean;
  onToggleInfo: () => void;
  isInfoDisabled: boolean;
  infoActive: boolean;
  showUndo?: boolean;
}

export default function QuizActionButtons({
  onWrapUp,
  wrapUpActive = false,
  onUndo,
  isUndoDisabled = false,
  onToggleInfo,
  isInfoDisabled,
  infoActive,
  showUndo = true
}: QuizActionButtonsProps) {
  const [isPressed, setIsPressed] = useState(false);

  const triggerUndoEffect = () => {
    setIsPressed(true);
    setTimeout(() => {
      setIsPressed(false);
    }, 350); // Matches CSS animation duration
  };

  const handleUndoClick = () => {
    triggerUndoEffect();
    onUndo?.();
  };

  useEffect(() => {
    if (!showUndo) return;
    const handleKeyDown = (e: KeyboardEvent) => {
      if (isUndoDisabled) return;
      if (e.key === '=') {
        const isInputFocused = document.activeElement?.tagName === 'INPUT';
        const isReadOnly = document.activeElement?.hasAttribute('readonly');
        if (!isInputFocused || isReadOnly) {
          e.preventDefault();
          triggerUndoEffect();
          onUndo?.();
        }
      }
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [isUndoDisabled, onUndo, showUndo]);

  return (
    <div className="flex justify-center items-center gap-3.5 w-full max-w-md mx-auto pt-0 pb-2 select-none z-10 self-center">
      {/* 1. Wrap Up Button (Reviews Only) */}
      {onWrapUp && (
        <button
          type="button"
          onClick={onWrapUp}
          title="Wrap Up (Selesaikan 10 item terakhir)"
          className={`w-12 h-12 flex items-center justify-center rounded-2xl border shadow-xxs transition-all duration-200 active:scale-90 cursor-pointer ${wrapUpActive
            ? 'bg-amber-500 border-amber-500 text-white shadow-md shadow-amber-500/10'
            : 'bg-white dark:bg-slate-950 border-slate-200 dark:border-slate-800 text-slate-500 dark:text-slate-400 hover:bg-slate-50 dark:hover:bg-slate-900'
            }`}
        >
          <Clock className="w-5 h-5" />
        </button>
      )}

      {/* 2. Undo Button */}
      {showUndo && (
        <button
          type="button"
          disabled={isUndoDisabled}
          onClick={handleUndoClick}
          title="Undo Jawaban (=)"
          className={`w-12 h-12 flex items-center justify-center rounded-2xl border shadow-xxs transition-all duration-200 cursor-pointer disabled:opacity-30 disabled:cursor-not-allowed ${
            isPressed
              ? 'animate-undo-press bg-indigo-50 dark:bg-indigo-950/40 border-indigo-400 dark:border-indigo-500 text-indigo-600 dark:text-indigo-400'
              : 'bg-white dark:bg-slate-950 border-slate-200 dark:border-slate-800 text-slate-500 dark:text-slate-400 hover:bg-slate-50 dark:hover:bg-slate-900'
          }`}
        >
          <RotateCcw className={`w-5 h-5 ${isPressed ? 'animate-undo-rotate' : ''}`} />
        </button>
      )}

      {/* 3. Eye Button (Toggle Info Drawer) */}
      <button
        type="button"
        disabled={isInfoDisabled}
        onClick={onToggleInfo}
        title="Tampilkan Info Detail (F)"
        className={`w-12 h-12 flex items-center justify-center rounded-2xl border shadow-xxs transition-all duration-200 active:scale-90 cursor-pointer ${infoActive
          ? 'bg-indigo-600 border-indigo-600 text-white shadow-md shadow-indigo-500/10'
          : 'bg-white dark:bg-slate-950 border-slate-200 dark:border-slate-800 text-slate-500 dark:text-slate-400 hover:bg-slate-50 dark:hover:bg-slate-900'
          } disabled:opacity-30 disabled:cursor-not-allowed`}
      >
        <Eye className="w-5 h-5" />
      </button>
    </div>
  );
}
