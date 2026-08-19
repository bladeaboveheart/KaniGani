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
      const activeTag = (document.activeElement as HTMLElement)?.tagName;
      const isTyping = activeTag === 'INPUT' || activeTag === 'TEXTAREA';

      // Press 'F' to toggle info drawer (only when answer is submitted or not actively typing)
      if ((e.key === 'f' || e.key === 'F') && !isTyping && onToggleInfo) {
        e.preventDefault();
        onToggleInfo();
      }

      // Press Space to advance when answer is submitted
      if (e.key === ' ' && isAnswerSubmitted && onAdvance && !isTyping) {
        e.preventDefault();
        onAdvance();
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [onToggleInfo, onAdvance, isAnswerSubmitted]);
}
