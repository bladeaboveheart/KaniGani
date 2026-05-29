'use client';

import { XCircle, AlertCircle, ArrowUp, ArrowDown } from 'lucide-react';

interface QuizFeedbackProps {
  showFeedback: boolean;
  isCorrect: boolean;
  isAlmostCorrect: boolean;
  closestAcceptedMeaning: string;
  srsStage?: number;
  acceptedMeanings?: string[];
  acceptedReadings?: string[];
  cardType: 'meaning' | 'reading';
  showSrs?: boolean;
}

export default function QuizFeedback({
  showFeedback,
  isCorrect,
  isAlmostCorrect,
  closestAcceptedMeaning,
  srsStage,
  acceptedMeanings = [],
  acceptedReadings = [],
  cardType,
  showSrs = true
}: QuizFeedbackProps) {
  if (!showFeedback) return null;

  const getSrsStageName = (stage: number | undefined) => {
    if (stage === undefined) return '';
    if (stage === 1) return 'Kepiting Cilik 1';
    if (stage === 2) return 'Kepiting Cilik 2';
    if (stage === 3) return 'Kepiting Cilik 3';
    if (stage === 4) return 'Kepiting Cilik 4';
    if (stage === 5) return 'Kepiting Guru 1';
    if (stage === 6) return 'Kepiting Guru 2';
    if (stage === 7) return 'Kepiting Suhu';
    if (stage === 8) return 'Kepiting Sakti';
    if (stage === 9) return 'Kepiting Rebus';
    return 'Kepiting Cilik 1';
  };

  return (
    <div className={`p-5 text-center text-sm border-t font-semibold ${isCorrect
        ? isAlmostCorrect
          ? 'bg-amber-500/10 border-amber-500/20 text-amber-700 dark:text-amber-400'
          : 'bg-emerald-500/10 border-emerald-500/20 text-emerald-600 dark:text-emerald-400'
        : 'bg-rose-500/10 border-rose-500/20 text-rose-600 dark:text-rose-400'
      }`}>
      <div className="max-w-md mx-auto flex items-center justify-center space-x-2 select-text">
        {isCorrect ? (
          isAlmostCorrect ? (
            <div className="flex flex-col items-center space-y-1">
              <div className="flex items-center space-x-2 text-amber-600 dark:text-amber-400">
                <AlertCircle className="w-5 h-5 shrink-0" />
                <span className="font-extrabold text-sm">Hampir Benar (Diterima dengan syarat)!</span>
              </div>
              <span className="text-xs text-slate-500 dark:text-slate-400">
                Apakah maksud Anda: <span className="font-black text-amber-600 dark:text-amber-400 underline">{closestAcceptedMeaning}</span>?
              </span>
            </div>
          ) : (
            <span className="flex items-center flex-wrap justify-center gap-y-1">
              <span>Sangat Bagus! Jawaban Anda Benar.</span>
              {showSrs && srsStage !== undefined && (
                <span className="relative inline-flex items-center ml-2">
                  <span className="px-2.5 py-0.5 bg-emerald-500 text-white font-extrabold text-xs rounded-lg shadow-xxs flex items-center space-x-1">
                    <span>{getSrsStageName(srsStage)}</span>
                    <ArrowUp className="w-3 h-3 stroke-[3]" />
                  </span>
                </span>
              )}
            </span>
          )
        ) : (
          <div className="flex flex-col items-center space-y-1">
            <div className="flex items-center space-x-2 text-rose-600 dark:text-rose-400">
              <XCircle className="w-5 h-5 shrink-0" />
              <div className="flex items-center">
                <span>Jawaban Salah!</span>
                {showSrs && srsStage !== undefined && (
                  <span className="relative inline-flex items-center ml-2">
                    <span className="px-2.5 py-0.5 bg-rose-500 text-white font-extrabold text-xs rounded-lg shadow-xxs flex items-center space-x-1">
                      <span>{getSrsStageName(srsStage)}</span>
                      <ArrowDown className="w-3 h-3 stroke-[3]" />
                    </span>
                  </span>
                )}
              </div>
            </div>
            <span className="font-extrabold block text-sm mt-1 uppercase tracking-wide">
              Jawaban benar: {
                cardType === 'meaning'
                  ? acceptedMeanings.join(', ')
                  : acceptedReadings.join(', ')
              }
            </span>
          </div>
        )}
      </div>
    </div>
  );
}
