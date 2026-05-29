'use client';

import React from 'react';
import { ArrowRight, AlertCircle } from 'lucide-react';
import * as wanakana from 'wanakana';

interface QuizInputProps {
  inputRef: React.RefObject<HTMLInputElement | null>;
  userInput: string;
  setUserInput: (val: string) => void;
  cardType: 'meaning' | 'reading';
  isAnswerSubmitted: boolean;
  incorrectActive: boolean;
  warningMsg: string;
  onSubmit: () => void;
  devMode: boolean;
  getDevModeAnswer: () => string;
  onKeyDown: (e: React.KeyboardEvent<HTMLInputElement>) => void;
}

export default function QuizInput({
  inputRef,
  userInput,
  setUserInput,
  cardType,
  isAnswerSubmitted,
  incorrectActive,
  warningMsg,
  onSubmit,
  devMode,
  getDevModeAnswer,
  onKeyDown
}: QuizInputProps) {
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    let value = e.target.value;
    if (cardType === 'reading') {
      // Real-time Romaji to Hiragana conversion
      value = wanakana.toKana(value, { IMEMode: true });
    }
    setUserInput(value);
  };

  const handleActionClick = () => {
    if (!isAnswerSubmitted) {
      if (devMode && userInput.trim() === '') {
        setUserInput(getDevModeAnswer());
        setTimeout(() => {
          onSubmit();
        }, 20);
      } else {
        onSubmit();
      }
    } else {
      onSubmit(); // calls proceedNext
    }
  };

  return (
    <div className="pt-6 pb-2 px-6 sm:pt-6 sm:pb-2 sm:px-8 flex flex-col items-center space-y-4 w-full">
      <div className="w-full max-w-md relative select-none mx-auto">
        <input
          ref={inputRef}
          type="text"
          placeholder={
            cardType === 'meaning'
              ? 'Ketik arti ...'
              : 'Ketik bacaan ...'
          }
          value={userInput}
          onChange={handleInputChange}
          onKeyDown={onKeyDown}
          readOnly={isAnswerSubmitted && !incorrectActive}
          className={`w-full py-3.5 pl-14 pr-14 rounded-2xl text-center text-lg font-bold border shadow-xs transition-all focus:outline-none focus:ring-2 focus:ring-indigo-500/50 focus:border-transparent ${
            warningMsg
              ? 'bg-amber-50 dark:bg-amber-950/20 border-amber-500 text-amber-700 dark:text-amber-400 animate-shake'
              : isAnswerSubmitted
                ? incorrectActive
                  ? 'bg-rose-50 dark:bg-rose-950/20 border-rose-500 text-rose-600 dark:text-rose-400 animate-shake'
                  : 'bg-emerald-50 dark:bg-emerald-950/20 border-emerald-500 text-emerald-600 dark:text-emerald-400'
                : 'bg-slate-50 dark:bg-slate-950 border-slate-200 dark:border-slate-800 text-slate-800 dark:text-slate-100'
          }`}
          autoComplete="off"
          autoCorrect="off"
          autoCapitalize="off"
          spellCheck="false"
        />

        {/* Integrated Submit Action Button inside the input box */}
        <button
          type="button"
          disabled={!isAnswerSubmitted && userInput.trim() === '' && !devMode}
          onClick={handleActionClick}
          className={`absolute right-2 top-1/2 -translate-y-1/2 w-10 h-10 flex items-center justify-center rounded-xl shadow-xs transition-all duration-250 active:scale-95 disabled:opacity-20 disabled:cursor-not-allowed z-10 ${
            isAnswerSubmitted
              ? incorrectActive
                ? 'bg-rose-500 hover:bg-rose-600 text-white shadow-md'
                : 'bg-emerald-500 hover:bg-emerald-600 text-white shadow-md'
              : 'bg-indigo-600 hover:bg-indigo-700 text-white shadow-md shadow-indigo-500/10 cursor-pointer'
          }`}
        >
          <ArrowRight className="w-5 h-5" />
        </button>
      </div>

      {warningMsg && (
        <div className="w-full max-w-md p-4 bg-amber-50 dark:bg-amber-950/30 border border-amber-200 dark:border-amber-900/50 text-xs font-bold text-amber-700 dark:text-amber-400 rounded-2xl animate-fade-in flex items-center space-x-2">
          <AlertCircle className="w-4 h-4 shrink-0 animate-bounce text-amber-500" />
          <span>{warningMsg}</span>
        </div>
      )}
    </div>
  );
}
