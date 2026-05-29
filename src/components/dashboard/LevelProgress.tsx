'use client';

import { useState } from 'react';
import { Award, AlertCircle, ChevronDown, ChevronUp, CheckCircle2 } from 'lucide-react';
import { DashboardStats } from '@/lib/types';

interface LevelProgressProps {
  stats: DashboardStats | null;
  currentLevelKanjiList: any[];
  formatDueTime: (nextReviewStr: string) => string;
}

export default function LevelProgress({
  stats,
  currentLevelKanjiList,
  formatDueTime
}: LevelProgressProps) {
  const [kanjiDropdownOpen, setKanjiDropdownOpen] = useState(false);

  if (!stats) return null;

  const kanjiPct = stats.kanjiTotalInLevel > 0
    ? Math.round((stats.kanjiPassedInLevel / stats.kanjiTotalInLevel) * 100)
    : 0;

  const targetKanji = Math.ceil(stats.kanjiTotalInLevel * 0.9);
  const neededKanji = Math.max(0, targetKanji - stats.kanjiPassedInLevel);

  return (
    <section className="bg-white dark:bg-slate-900 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm p-6 sm:p-8 space-y-4">
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
        <div>
          <div className="flex items-center space-x-2">
            <Award className="w-5 h-5 text-indigo-500" />
            <h3 className="font-extrabold text-lg tracking-tight">
              Kapan Saya Naik Level {stats.level + 1}?
            </h3>
          </div>
          <p className="text-xs text-slate-500 dark:text-slate-400 mt-0.5">
            KaniGani mensyaratkan kelulusan minimal 90% Kanji Level {stats.level} ke status Kepiting Guru (Tahap 5) untuk naik level.
          </p>
        </div>
        <div className="text-right">
          <span className="text-xs font-semibold text-slate-400 dark:text-slate-500 block">Kanji Lulus</span>
          <span className="text-xl font-black text-indigo-500">
            {stats.kanjiPassedInLevel} / {stats.kanjiTotalInLevel}
          </span>
        </div>
      </div>

      {/* Progress Bar */}
      <div className="space-y-2">
        <div className="w-full bg-slate-100 dark:bg-slate-800 h-4 rounded-full overflow-hidden flex">
          <div
            className="bg-gradient-to-r from-[#f03e64] to-indigo-500 h-full rounded-full transition-all duration-500"
            style={{ width: `${Math.min(100, kanjiPct)}%` }}
          ></div>
        </div>

        <div className="flex justify-between items-center text-xxs font-bold text-slate-400 dark:text-slate-500">
          <span>Progress: {kanjiPct}%</span>
          <span>Target: 90% Lulus</span>
        </div>
      </div>

      {stats.kanjiPassedInLevel >= targetKanji ? (
        <div className="p-3 bg-emerald-50 dark:bg-emerald-950/20 border border-emerald-100 dark:border-emerald-900/50 rounded-2xl text-xs text-emerald-600 dark:text-emerald-400 flex items-center space-x-2 animate-fade-in">
          <CheckCircle2 className="w-4 h-4 shrink-0" />
          <span>Luar biasa! Anda telah memenuhi syarat kelulusan Kanji level {stats.level}. Tinggal menunggu pembukaan level berikutnya!</span>
        </div>
      ) : (
        <div className="space-y-3">
          <button
            onClick={() => setKanjiDropdownOpen(!kanjiDropdownOpen)}
            className="w-full text-left p-4.5 bg-indigo-50 dark:bg-indigo-950/25 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl text-sm text-indigo-750 dark:text-indigo-300 flex items-center justify-between transition-all duration-200 hover:bg-indigo-100/70 dark:hover:bg-indigo-950/40 focus:outline-none cursor-pointer"
          >
            <div className="flex items-center space-x-2.5 font-bold">
              <AlertCircle className="w-5 h-5 text-indigo-500 shrink-0 animate-pulse" />
              <span>
                Butuh {neededKanji} kanji lagi untuk naik Level {stats.level + 1}! Semangat belajar! (Klik untuk lihat daftar progres)
              </span>
            </div>
            {kanjiDropdownOpen ? (
              <ChevronUp className="w-5 h-5 text-indigo-500 shrink-0 transition-transform" />
            ) : (
              <ChevronDown className="w-5 h-5 text-indigo-500 shrink-0 transition-transform" />
            )}
          </button>

          {kanjiDropdownOpen && (
            <div className="p-5 bg-slate-50 dark:bg-slate-900/40 border border-slate-200 dark:border-slate-800 rounded-2xl animate-fade-in space-y-3">
              <div className="text-xxs font-extrabold uppercase tracking-widest text-slate-400 dark:text-slate-500">
                Progres Kanji Level {stats.level}
              </div>

              <div className="grid grid-cols-3 sm:grid-cols-6 md:grid-cols-8 gap-3">
                {currentLevelKanjiList.map((kanji) => {
                  const isLocked = kanji.srs_stage === 0;
                  const isReadyForLesson = kanji.srs_stage === 1 && !kanji.next_review;
                  const isPassed = kanji.srs_stage >= 5;

                  let cardClass = "";
                  let statusLabel = "";
                  let tooltipText = "";
                  if (isLocked) {
                    cardClass = "bg-slate-100 text-slate-400 dark:bg-slate-800 dark:text-slate-500 border border-dashed border-slate-200 dark:border-slate-800";
                    statusLabel = "Terkunci";
                    if (kanji.unlearnedPrereqs.length > 0) {
                      tooltipText = "belum belajar radikalnya: " + kanji.unlearnedPrereqs.map((r: any) => r.character).join(", ");
                    } else {
                      tooltipText = "belum belajar radikalnya";
                    }
                  } else if (isReadyForLesson) {
                    cardClass = "bg-[#f03e64]/5 text-[#f03e64] border border-solid border-[#f03e64]/20 font-extrabold";
                    statusLabel = "Tersedia Lesson";
                    tooltipText = "Tersedia untuk Pelajaran (Lesson)";
                  } else if (isPassed) {
                    cardClass = "bg-emerald-500 text-white font-extrabold border border-emerald-600 shadow-3xs";
                    statusLabel = `Kepiting Guru+ (${kanji.srs_stage})`;
                    tooltipText = kanji.next_review ? formatDueTime(kanji.next_review) : "Lulus";
                  } else {
                    cardClass = "bg-[#f03e64] text-white font-extrabold border border-[#f03e64]/80 shadow-3xs";
                    statusLabel = `Kepiting Cilik (${kanji.srs_stage})`;
                    tooltipText = kanji.next_review ? formatDueTime(kanji.next_review) : "Terkunci";
                  }

                  return (
                    <div
                      key={kanji.id}
                      className="group relative flex flex-col items-center justify-center transition-all duration-200 hover:scale-105 select-none cursor-help"
                    >
                      <div className={`w-full flex flex-col items-center justify-center py-2 px-1 rounded-lg ${cardClass}`}>
                        <span className="text-xl font-black font-japanese tracking-normal leading-none mb-1">
                          {kanji.character}
                        </span>
                        <span className="text-[9px] uppercase font-bold tracking-wider truncate max-w-full text-center opacity-85 px-0.5">
                          {kanji.slug}
                        </span>
                      </div>

                      <div className="absolute bottom-full mb-2 hidden group-hover:flex flex-col items-center z-50 pointer-events-none transition-all duration-200">
                        <div className="bg-slate-900 dark:bg-slate-950 text-white text-[10px] font-black tracking-wide py-1.5 px-3 rounded-xl shadow-lg border border-slate-800 dark:border-slate-800 whitespace-nowrap space-y-0.5 text-center">
                          <div className="text-slate-400 font-extrabold uppercase text-[8px] tracking-widest">{kanji.slug}</div>
                          <div className="text-white font-bold">{tooltipText}</div>
                          <div className="text-indigo-400 text-[8px] font-black uppercase tracking-wider">{statusLabel}</div>
                        </div>
                        <div className="w-2.5 h-2.5 bg-slate-900 dark:bg-slate-950 rotate-45 -mt-1.5 border-r border-b border-slate-800 dark:border-slate-800"></div>
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          )}
        </div>
      )}
    </section>
  );
}
