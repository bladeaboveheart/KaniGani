'use client';

import React from 'react';
import { useRouter } from 'next/navigation';
import { Sparkles, Trophy, ArrowRight, BookOpen, X } from 'lucide-react';

interface LevelUpModalProps {
  newLevel: number;
  isOpen: boolean;
  onClose: () => void;
}

export default function LevelUpModal({ newLevel, isOpen, onClose }: LevelUpModalProps) {
  const router = useRouter();

  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-950/70 backdrop-blur-sm animate-fade-in">
      <div className="relative w-full max-w-md bg-white dark:bg-slate-900 border border-amber-200 dark:border-amber-800/40 rounded-3xl shadow-2xl overflow-hidden p-6 sm:p-8 text-center space-y-6 animate-scale-in">
        
        {/* Decorative background glow */}
        <div className="absolute -top-16 -left-16 w-36 h-36 bg-amber-400/20 rounded-full blur-3xl pointer-events-none" />
        <div className="absolute -bottom-16 -right-16 w-36 h-36 bg-pink-500/20 rounded-full blur-3xl pointer-events-none" />

        {/* Close button */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 p-2 text-slate-400 hover:text-slate-600 dark:hover:text-slate-200 transition-colors rounded-full hover:bg-slate-100 dark:hover:bg-slate-800 cursor-pointer"
          aria-label="Tutup modal"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Trophy icon with glowing badge */}
        <div className="relative inline-flex items-center justify-center">
          <div className="w-20 h-20 rounded-3xl bg-gradient-to-tr from-amber-500 to-amber-300 flex items-center justify-center shadow-lg shadow-amber-500/30 text-white animate-bounce">
            <Trophy className="w-10 h-10" />
          </div>
          <div className="absolute -bottom-2 px-3 py-0.5 bg-gradient-to-r from-pink-500 to-rose-500 text-white text-3xs font-black uppercase tracking-widest rounded-full shadow-md flex items-center space-x-1">
            <Sparkles className="w-3 h-3" />
            <span>LEVEL UP</span>
          </div>
        </div>

        {/* Heading & description */}
        <div className="space-y-2">
          <h2 className="text-2xl sm:text-3xl font-black tracking-tight text-slate-900 dark:text-white">
            Selamat! Naik ke Level {newLevel}! 🎉
          </h2>
          <p className="text-xs sm:text-sm text-slate-600 dark:text-slate-350 leading-relaxed max-w-sm mx-auto">
            Kerja keras Anda membuahkan hasil! Anda telah meluluskan minimal 90% Kanji level sebelumnya.
          </p>
        </div>

        {/* Unlocked feature highlight */}
        <div className="p-4 bg-amber-50/80 dark:bg-amber-950/20 border border-amber-200/60 dark:border-amber-800/30 rounded-2xl text-left space-y-1.5">
          <div className="flex items-center space-x-2 text-amber-700 dark:text-amber-300 font-bold text-xs">
            <BookOpen className="w-4 h-4 text-amber-500 shrink-0" />
            <span>Materi Baru Siap Dipelajari:</span>
          </div>
          <p className="text-xs text-slate-600 dark:text-slate-400 pl-6">
            Radikal dan materi pembentuk Level {newLevel} telah otomatis dibuka dan siap Anda pelajari di menu <strong>Lesson</strong>.
          </p>
        </div>

        {/* Action buttons */}
        <div className="flex flex-col gap-2.5 pt-2">
          <button
            onClick={() => {
              onClose();
              router.push('/lesson');
            }}
            className="w-full py-3.5 px-4 bg-gradient-to-r from-amber-500 to-amber-600 hover:from-amber-600 hover:to-amber-700 text-white font-black text-sm rounded-2xl shadow-lg shadow-amber-500/25 transition-all flex items-center justify-center space-x-2 cursor-pointer hover:scale-[1.02] active:scale-[0.98]"
          >
            <span>Mulai Lesson Level {newLevel}</span>
            <ArrowRight className="w-4 h-4" />
          </button>

          <button
            onClick={onClose}
            className="w-full py-3 px-4 text-xs font-bold text-slate-600 dark:text-slate-400 hover:text-slate-900 dark:hover:text-white transition-colors cursor-pointer"
          >
            Lanjutkan Sesi Review
          </button>
        </div>

      </div>
    </div>
  );
}
