'use client';

import { useState } from 'react';
import { Award, AlertCircle, ChevronDown, ChevronUp, CheckCircle2 } from 'lucide-react';
import { DashboardStats } from '@/lib/types';
import { Card } from '@/components/ui/Card';

interface LevelProgressProps {
  stats: DashboardStats | null;
  currentLevelKanjiList: any[];
  formatDueTime: (nextReviewStr: string) => string;
}

export default function LevelProgress({
  stats,
  currentLevelKanjiList,
  formatDueTime,
}: LevelProgressProps) {
  const [kanjiDropdownOpen, setKanjiDropdownOpen] = useState(false);

  if (!stats) return null;

  const kanjiPct =
    stats.kanjiTotalInLevel > 0
      ? Math.round((stats.kanjiPassedInLevel / stats.kanjiTotalInLevel) * 100)
      : 0;

  const targetKanji = Math.ceil(stats.kanjiTotalInLevel * 0.9);
  const neededKanji = Math.max(0, targetKanji - stats.kanjiPassedInLevel);

  const isMaxLevel = stats.level >= 60;
  const isLevelPassed = stats.kanjiPassedInLevel >= targetKanji;

  return (
    <Card className="space-y-4">
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
        <div>
          <div className="flex items-center space-x-2">
            <Award className={`w-5 h-5 ${isMaxLevel && isLevelPassed ? 'text-amber-500' : 'text-indigo-500'}`} />
            <h3 className="font-extrabold text-base sm:text-lg tracking-tight text-text-primary">
              {isMaxLevel
                ? isLevelPassed
                  ? '👑 Selamat! Anda Telah Menamatkan Level 60 (Master)'
                  : 'Puncak Pembelajaran: Menuntaskan Level 60'
                : `Kapan Saya Naik Level ${stats.level + 1}?`}
            </h3>
          </div>
          <p className="text-xs text-text-muted mt-0.5 leading-relaxed">
            {isMaxLevel
              ? 'Kelulusan 90% Kanji Level 60 menandai penyelesaian kurikulum utama KaniGani.'
              : `KaniGani mensyaratkan kelulusan minimal 90% Kanji Level ${stats.level} ke status Lulus (Tahap 5) untuk naik level.`}
          </p>
        </div>
        <div className="text-left sm:text-right">
          <span className="text-xs font-semibold text-text-muted block">Kanji Lulus</span>
          <span className={`text-xl font-black ${isMaxLevel && isLevelPassed ? 'text-amber-500' : 'text-indigo-500'}`}>
            {stats.kanjiPassedInLevel} / {stats.kanjiTotalInLevel}
          </span>
        </div>
      </div>

      {/* Progress Bar */}
      <div className="space-y-2">
        <div className="w-full bg-card-muted h-3.5 sm:h-4 rounded-full overflow-hidden flex border border-card-border/60">
          <div
            className={`h-full rounded-full transition-all duration-500 ${
              isMaxLevel && isLevelPassed
                ? 'bg-gradient-to-r from-amber-500 to-yellow-400'
                : 'bg-gradient-to-r from-kanji to-indigo-500'
            }`}
            style={{ width: `${Math.min(100, kanjiPct)}%` }}
          />
        </div>

        <div className="flex justify-between items-center text-xs font-bold text-text-muted">
          <span>Progress: {kanjiPct}%</span>
          <span>Target: 90% Lulus</span>
        </div>
      </div>

      {isLevelPassed ? (
        <div className={`p-3 rounded-2xl text-xs flex items-center space-x-2 animate-fade-in ${
          isMaxLevel
            ? 'bg-amber-50 dark:bg-amber-950/25 border border-amber-300 dark:border-amber-800 text-amber-800 dark:text-amber-300'
            : 'bg-emerald-50 dark:bg-emerald-950/20 border border-emerald-200/50 dark:border-emerald-900/40 text-emerald-600 dark:text-emerald-400'
        }`}>
          <CheckCircle2 className="w-4 h-4 shrink-0" />
          <span>
            {isMaxLevel
              ? 'Luar biasa! Anda telah menamatkan seluruh materi Kanji Level 60! Terus lakukan review berkala untuk mempertahankan ingatan hingga Burned!'
              : `Luar biasa! Anda telah memenuhi syarat kelulusan Kanji level ${stats.level}. Tinggal menunggu pembukaan level berikutnya!`}
          </span>
        </div>
      ) : (
        <div className="space-y-3">
          <button
            onClick={() => setKanjiDropdownOpen(!kanjiDropdownOpen)}
            className="w-full text-left p-3.5 sm:p-4 bg-indigo-50/70 dark:bg-indigo-950/25 border border-indigo-100 dark:border-indigo-900/40 rounded-2xl text-xs sm:text-sm text-indigo-700 dark:text-indigo-300 flex items-center justify-between transition-all duration-200 hover:bg-indigo-100/70 dark:hover:bg-indigo-950/40 focus:outline-none cursor-pointer"
          >
            <div className="flex items-center space-x-2.5 font-bold">
              <AlertCircle className="w-4 h-4 sm:w-5 sm:h-5 text-indigo-500 shrink-0 animate-pulse" />
              <span>
                {isMaxLevel
                  ? `Butuh ${neededKanji} kanji lagi untuk menamatkan Level 60! (Klik untuk lihat daftar progres)`
                  : `Butuh ${neededKanji} kanji lagi untuk naik Level ${stats.level + 1}! (Klik untuk lihat daftar progres)`}
              </span>
            </div>
            {kanjiDropdownOpen ? (
              <ChevronUp className="w-5 h-5 text-indigo-500 shrink-0 transition-transform" />
            ) : (
              <ChevronDown className="w-5 h-5 text-indigo-500 shrink-0 transition-transform" />
            )}
          </button>

          {kanjiDropdownOpen && (
            <div className="p-4 sm:p-5 bg-card-muted/70 border border-card-border rounded-2xl animate-fade-in space-y-3">
              <div className="text-[11px] font-extrabold uppercase tracking-wider text-text-muted">
                Progres Kanji Level {stats.level}
              </div>

              <div className="grid grid-cols-3 sm:grid-cols-6 md:grid-cols-8 gap-2.5 sm:gap-3">
                {currentLevelKanjiList.map((kanji) => {
                  const isLocked = kanji.srs_stage === 0;
                  const isReadyForLesson = kanji.srs_stage === 1 && !kanji.next_review;
                  const isPassed = kanji.srs_stage >= 5;

                  let cardClass = '';
                  let statusLabel = '';
                  let tooltipText = '';
                  if (isLocked) {
                    cardClass =
                      'bg-card-muted text-text-muted border border-dashed border-card-border';
                    statusLabel = 'Terkunci';
                    if (kanji.unlearnedPrereqs.length > 0) {
                      tooltipText =
                        'belum belajar radikalnya: ' +
                        kanji.unlearnedPrereqs
                          .map((r: any) =>
                            r.character && r.character.startsWith('/') ? r.slug || 'radikal' : r.character
                          )
                          .join(', ');
                    } else {
                      tooltipText = 'belum belajar radikalnya';
                    }
                  } else if (isReadyForLesson) {
                    cardClass =
                      'bg-kanji/10 text-kanji border border-solid border-kanji/30 font-extrabold';
                    statusLabel = 'Tersedia Lesson';
                    tooltipText = 'Tersedia untuk Pelajaran (Lesson)';
                  } else if (isPassed) {
                    cardClass =
                      'bg-emerald-500 text-white font-extrabold border border-emerald-600 shadow-xs';
                    statusLabel = `Lulus+ (${kanji.srs_stage})`;
                    tooltipText = kanji.next_review ? formatDueTime(kanji.next_review) : 'Lulus';
                  } else {
                    cardClass =
                      'bg-kanji text-white font-extrabold border border-kanji/80 shadow-xs';
                    statusLabel = `Pemula (${kanji.srs_stage})`;
                    tooltipText = kanji.next_review ? formatDueTime(kanji.next_review) : 'Terkunci';
                  }

                  return (
                    <div
                      key={kanji.id}
                      className="group relative flex flex-col items-center justify-center transition-all duration-200 hover:scale-105 select-none cursor-help"
                    >
                      <div className={`w-full flex flex-col items-center justify-center py-2 px-1 rounded-xl ${cardClass}`}>
                        <span className="text-xl font-black font-japanese tracking-normal leading-none mb-1">
                          {kanji.character}
                        </span>
                        <span className="text-[9px] uppercase font-bold tracking-wider truncate max-w-full text-center opacity-85 px-0.5">
                          {kanji.slug}
                        </span>
                      </div>

                      <div className="absolute bottom-full mb-2 hidden group-hover:flex flex-col items-center z-50 pointer-events-none transition-all duration-200">
                        <div className="bg-slate-900 text-white text-[10px] font-black tracking-wide py-1.5 px-3 rounded-xl shadow-lg border border-slate-800 whitespace-nowrap space-y-0.5 text-center">
                          <div className="text-slate-400 font-extrabold uppercase text-[8px] tracking-widest">
                            {kanji.slug}
                          </div>
                          <div className="text-white font-bold">{tooltipText}</div>
                          <div className="text-indigo-400 text-[8px] font-black uppercase tracking-wider">
                            {statusLabel}
                          </div>
                        </div>
                        <div className="w-2.5 h-2.5 bg-slate-900 rotate-45 -mt-1.5 border-r border-b border-slate-800" />
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          )}
        </div>
      )}
    </Card>
  );
}
