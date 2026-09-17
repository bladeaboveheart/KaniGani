'use client';

import { useEffect } from 'react';

interface QuizShortcutsOptions {
  onToggleInfo?: () => void;
  onAdvance?: () => void;
  isAnswerSubmitted?: boolean;
}

export function useQuizShortcuts({
  onToggleInfo,
  onAdvance,
  isAnswerSubmitted,
}: QuizShortcutsOptions) {
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      // When answer is submitted, allow 'F' to toggle info and 'Space' to advance even if input is focused
      if (isAnswerSubmitted) {
        if ((e.key === 'f' || e.key === 'F') && onToggleInfo) {
          e.preventDefault();
          e.stopPropagation();
          onToggleInfo();
          return;
        }

        if (e.key === ' ' && onAdvance) {
          e.preventDefault();
          e.stopPropagation();
          onAdvance();
          return;
        }
      }
    };

    window.addEventListener('keydown', handleKeyDown, true);
    return () => window.removeEventListener('keydown', handleKeyDown, true);
  }, [onToggleInfo, onAdvance, isAnswerSubmitted]);
}
