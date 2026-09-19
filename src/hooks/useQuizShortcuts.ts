'use client';

import { useEffect } from 'react';

interface QuizShortcutsOptions {
  onToggleInfo?: () => void;
  onAdvance?: () => void;
  onPlayAudio?: () => void;
  isAnswerSubmitted?: boolean;
}

export function useQuizShortcuts({
  onToggleInfo,
  onAdvance,
  onPlayAudio,
  isAnswerSubmitted,
}: QuizShortcutsOptions) {
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      // When answer is submitted, allow 'F' to toggle info, 'J' to replay audio, and 'Space' to advance
      if (isAnswerSubmitted) {
        if ((e.key === 'f' || e.key === 'F') && onToggleInfo) {
          e.preventDefault();
          e.stopPropagation();
          onToggleInfo();
          return;
        }

        if ((e.key === 'j' || e.key === 'J') && onPlayAudio) {
          e.preventDefault();
          e.stopPropagation();
          onPlayAudio();
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
  }, [onToggleInfo, onAdvance, onPlayAudio, isAnswerSubmitted]);
}
