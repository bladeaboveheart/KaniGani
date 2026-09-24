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
      // If user is actively typing in an editable input or textarea, do NOT intercept any keys
      const target = e.target as HTMLElement | null;
      const isInputActive =
        target &&
        (target.tagName === 'INPUT' || target.tagName === 'TEXTAREA' || target.isContentEditable) &&
        !target.hasAttribute('readonly');

      if (isInputActive) {
        return;
      }

      // When answer is submitted and not typing, allow 'F' to toggle info and 'J' to replay audio
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
      }
    };

    window.addEventListener('keydown', handleKeyDown, true);
    return () => window.removeEventListener('keydown', handleKeyDown, true);
  }, [onToggleInfo, onAdvance, onPlayAudio, isAnswerSubmitted]);
}
