'use client';

import React from 'react';
import { Award, ArrowRight, Home } from 'lucide-react';
import { Item } from '@/lib/types';

interface QuizSummaryViewProps {
  type: 'lesson' | 'review';
  items: Item[];
  totalCompleted?: number;
  accuracyPct?: number;
  hasNextBatch?: boolean;
  remainingLessonsCount?: number;
  onNextBatch?: () => void;
  onFinish: () => void;
}

export default function QuizSummaryView({
  type,
  items,
  totalCompleted,
  accuracyPct,
  hasNextBatch,
  remainingLessonsCount = 0,
  onNextBatch,
  onFinish,
}: QuizSummaryViewProps) {
  const isLesson = type === 'lesson';

  const getItemColorClass = (itemType: string) => {
    if (itemType === 'radical') return 'bg-[#00a0f0]';
    if (itemType === 'kanji') return 'bg-[#f03e64]';
    return 'bg-[#a000f0]';
  };

  return (
    <div className="w-full max-w-md bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xl p-8 text-center space-y-6 animate-fade-in my-12 select-none">
      <Award className={`w-16 h-16 mx-auto animate-bounce ${isLesson ? 'text-teal-500' : 'text-pink-500'}`} />

      <div className="space-y-1">
        <h2 className="text-2xl font-black">
          {isLesson ? 'Batch Selesai! 🎉' : 'Review Selesai! 🎉'}
        </h2>
        <p className="text-sm text-slate-550 dark:text-slate-400">
          {isLesson
            ? 'Selamat! Anda telah menyelesaikan pelajaran baru untuk batch ini. Semua item ini telah terdaftar di SRS dan siap diulas pada jadwal berikutnya.'
            : 'Hebat! Anda telah menyelesaikan semua sesi kuis review yang jatuh tempo dengan sukses.'}
        </p>
      </div>

      {/* Review Mode Stats */}
      {!isLesson && accuracyPct !== undefined && (
        <div className="bg-slate-50 dark:bg-slate-955 p-4 rounded-2xl border border-slate-200 dark:border-slate-800 grid grid-cols-2 gap-4">
          <div className="flex flex-col justify-between items-center h-16 text-center select-none">
            <span className="text-4xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
              Total Item
            </span>
            <span className="text-xl font-black text-slate-800 dark:text-slate-200">
              {totalCompleted ?? items.length}
            </span>
          </div>
          <div className="flex flex-col justify-between items-center h-16 text-center select-none">
            <span className="text-4xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
              Akurasi Rata-rata
            </span>
            <span className="text-xl font-black text-pink-500">{accuracyPct}%</span>
          </div>
        </div>
      )}

      {/* Lesson Mode Items Learned */}
      {isLesson && items.length > 0 && (
        <div className="bg-slate-50 dark:bg-slate-950 p-5 rounded-2xl border border-slate-150 dark:border-slate-850">
          <span className="text-3xs uppercase tracking-widest text-slate-400 block font-bold">
            Item yang Baru Dipelajari
          </span>
          <div className="flex flex-wrap gap-2 justify-center mt-3">
            {items.map((item, idx) => (
              <span
                key={idx}
                className={`min-w-10 h-10 px-3 flex items-center justify-center rounded-xl font-black text-lg text-white whitespace-nowrap ${getItemColorClass(
                  item.type
                )}`}
              >
                {item.character}
              </span>
            ))}
          </div>
        </div>
      )}

      {/* Action Buttons */}
      <div className="flex flex-col gap-3">
        {isLesson && hasNextBatch && onNextBatch && (
          <button
            onClick={onNextBatch}
            className="w-full py-3 bg-teal-500 hover:bg-teal-600 text-white font-extrabold rounded-2xl shadow-md transition-colors cursor-pointer flex items-center justify-center space-x-2"
          >
            <span>Lanjut Batch Berikutnya ({remainingLessonsCount} item sisa)</span>
            <ArrowRight className="w-4 h-4" />
          </button>
        )}

        <button
          onClick={onFinish}
          className={`w-full py-3 font-extrabold rounded-2xl transition-colors cursor-pointer flex items-center justify-center space-x-2 ${
            isLesson && hasNextBatch
              ? 'bg-slate-105 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-200'
              : isLesson
              ? 'bg-teal-500 hover:bg-teal-600 text-white shadow-md'
              : 'bg-pink-500 hover:bg-pink-600 text-white shadow-md'
          }`}
        >
          <Home className="w-4 h-4" />
          <span>{isLesson && hasNextBatch ? 'Selesai & Ke Dashboard' : 'Kembali ke Dashboard'}</span>
        </button>
      </div>
    </div>
  );
}
