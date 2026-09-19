'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { SimilarKanji } from '@/lib/types';
import CharacterDisplay from '@/components/CharacterDisplay';
import { AlertCircle, ExternalLink, ArrowRightLeft, X } from 'lucide-react';

interface SimilarKanjiSectionProps {
  currentKanji?: {
    character?: string;
    slug?: string;
    level?: number;
    primary_meaning?: string;
    primary_reading?: string | null;
  };
  similarKanjis: SimilarKanji[];
  onSelectKanji?: (kanji: SimilarKanji) => void;
  className?: string;
  variant?: 'modal' | 'drawer' | 'lesson' | 'full';
}

export default function SimilarKanjiSection({
  currentKanji,
  similarKanjis,
  onSelectKanji,
  className = '',
  variant = 'modal',
}: SimilarKanjiSectionProps) {
  const router = useRouter();
  const [comparingKanji, setComparingKanji] = useState<SimilarKanji | null>(null);

  if (!similarKanjis || similarKanjis.length === 0) return null;

  const handleKanjiClick = (item: SimilarKanji) => {
    if (onSelectKanji) {
      onSelectKanji(item);
    } else {
      router.push(`/kanji?character=${encodeURIComponent(item.character)}`);
    }
  };

  return (
    <div className={`space-y-3 pt-4 border-t border-slate-200/50 dark:border-slate-800/50 ${className}`}>
      {/* Header */}
      <div className="flex items-center justify-between">
        <div className="flex items-center space-x-1.5">
          <div className="p-1 rounded-md bg-amber-500/10 text-amber-600 dark:text-amber-400">
            <AlertCircle className="w-3.5 h-3.5" />
          </div>
          <h3 className="text-xxs font-extrabold text-amber-700 dark:text-amber-400 uppercase tracking-widest">
            Awas Tertukar! (Kanji Mirip)
          </h3>
        </div>
        <span className="text-4xs font-bold px-2 py-0.5 rounded-full bg-amber-500/10 text-amber-700 dark:text-amber-300">
          {similarKanjis.length} karakter serupa
        </span>
      </div>

      <p className="text-xxs text-slate-500 dark:text-slate-400">
        Kanji-kanji ini memiliki kemiripan bentuk visual. Cermati perbedaan arti dan cara bacanya:
      </p>

      {/* Grid of Similar Kanji Cards */}
      <div className={`grid gap-2.5 ${
        variant === 'drawer'
          ? 'grid-cols-1 sm:grid-cols-2'
          : 'grid-cols-1 sm:grid-cols-2 lg:grid-cols-3'
      }`}>
        {similarKanjis.map((item) => (
          <div
            key={item.id}
            className="group/card relative p-3 rounded-2xl bg-amber-500/5 hover:bg-amber-500/10 dark:bg-amber-950/20 dark:hover:bg-amber-950/35 border border-amber-500/20 hover:border-amber-500/40 transition-all duration-200 text-left flex flex-col justify-between shadow-xs hover:shadow-md"
          >
            {/* Top row: Character & Level */}
            <div className="flex items-start justify-between">
              <button
                type="button"
                onClick={() => handleKanjiClick(item)}
                className="flex items-center space-x-2.5 text-left cursor-pointer group-hover/card:opacity-95"
                title="Buka kanji ini"
              >
                <span className="text-3xl font-black font-japanese text-amber-600 dark:text-amber-400 group-hover/card:scale-110 transition-transform duration-200">
                  <CharacterDisplay character={item.character} slug={item.slug} />
                </span>
                <div>
                  <span className="text-xs font-bold text-slate-800 dark:text-slate-100 block capitalize group-hover/card:text-amber-600 dark:group-hover/card:text-amber-400 transition-colors">
                    {item.primary_meaning || item.slug}
                  </span>
                  {item.primary_reading && (
                    <span className="text-xs font-japanese font-semibold text-slate-500 dark:text-slate-400 block mt-0.5">
                      {item.primary_reading}
                    </span>
                  )}
                </div>
              </button>

              <div className="flex flex-col items-end space-y-1">
                <span className="px-1.5 py-0.5 text-4xs font-black rounded-md bg-amber-500/15 text-amber-700 dark:text-amber-300">
                  Lvl {item.level}
                </span>

                {currentKanji && (
                  <button
                    type="button"
                    onClick={(e) => {
                      e.stopPropagation();
                      setComparingKanji(item);
                    }}
                    className="p-1 rounded-md bg-slate-200/50 dark:bg-slate-800 text-slate-500 hover:text-amber-600 dark:hover:text-amber-400 text-4xs font-bold flex items-center space-x-1 cursor-pointer transition-colors"
                    title="Bandingkan berdampingan"
                  >
                    <ArrowRightLeft className="w-3 h-3" />
                  </button>
                )}
              </div>
            </div>

            {/* Quick navigate link footer */}
            <div className="mt-2.5 pt-2 border-t border-amber-500/10 dark:border-amber-500/15 flex items-center justify-between text-4xs text-slate-450 dark:text-slate-400">
              <span className="font-semibold">{item.slug}</span>
              <button
                type="button"
                onClick={() => handleKanjiClick(item)}
                className="flex items-center space-x-0.5 font-bold text-amber-700 dark:text-amber-400 hover:underline cursor-pointer"
              >
                <span>Lihat Kanji</span>
                <ExternalLink className="w-2.5 h-2.5" />
              </button>
            </div>
          </div>
        ))}
      </div>

      {/* Side-by-Side Comparison Modal */}
      {comparingKanji && currentKanji && (
        <div className="fixed inset-0 z-50 bg-slate-950/70 backdrop-blur-xs flex items-center justify-center p-4 animate-fade-in">
          <div className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl max-w-lg w-full p-6 shadow-2xl space-y-6">
            <div className="flex items-center justify-between pb-3 border-b border-slate-100 dark:border-slate-800">
              <div className="flex items-center space-x-2 text-amber-600 dark:text-amber-400">
                <ArrowRightLeft className="w-4 h-4" />
                <h4 className="text-sm font-black uppercase tracking-wider">
                  Komparasi Berdampingan
                </h4>
              </div>
              <button
                type="button"
                onClick={() => setComparingKanji(null)}
                className="p-1.5 rounded-full hover:bg-slate-100 dark:hover:bg-slate-800 text-slate-400 hover:text-slate-600 dark:hover:text-slate-200 transition-colors"
              >
                <X className="w-4 h-4" />
              </button>
            </div>

            {/* Comparison Columns */}
            <div className="grid grid-cols-2 gap-4 text-center">
              {/* Kanji 1: Current */}
              <div className="p-4 rounded-2xl bg-slate-50 dark:bg-slate-850/50 border border-slate-200 dark:border-slate-800 space-y-2">
                <span className="text-4xs font-bold uppercase tracking-wider text-slate-400 block">
                  Kanji Saat Ini (Lvl {currentKanji.level})
                </span>
                <span className="text-5xl font-black font-japanese text-slate-900 dark:text-white block">
                  {currentKanji.character}
                </span>
                <span className="text-sm font-bold text-teal-600 dark:text-teal-400 block capitalize">
                  {currentKanji.primary_meaning || currentKanji.slug}
                </span>
                {currentKanji.primary_reading && (
                  <span className="text-xs font-japanese font-semibold text-slate-500 dark:text-slate-400 block">
                    {currentKanji.primary_reading}
                  </span>
                )}
              </div>

              {/* Kanji 2: Similar */}
              <div className="p-4 rounded-2xl bg-amber-500/10 border border-amber-500/30 space-y-2">
                <span className="text-4xs font-bold uppercase tracking-wider text-amber-600 dark:text-amber-400 block">
                  Kanji Serupa (Lvl {comparingKanji.level})
                </span>
                <span className="text-5xl font-black font-japanese text-amber-600 dark:text-amber-400 block">
                  {comparingKanji.character}
                </span>
                <span className="text-sm font-bold text-amber-700 dark:text-amber-300 block capitalize">
                  {comparingKanji.primary_meaning || comparingKanji.slug}
                </span>
                {comparingKanji.primary_reading && (
                  <span className="text-xs font-japanese font-semibold text-amber-600/80 dark:text-amber-300/80 block">
                    {comparingKanji.primary_reading}
                  </span>
                )}
              </div>
            </div>

            <div className="p-3 rounded-xl bg-slate-100 dark:bg-slate-800/60 text-xxs text-slate-600 dark:text-slate-300 text-center">
              💡 <em>Tips: Perhatikan bentuk goresan radikal di sisi kiri atau atas untuk membedakan kedua karakter ini.</em>
            </div>

            <div className="flex space-x-3">
              <button
                type="button"
                onClick={() => setComparingKanji(null)}
                className="flex-1 py-2.5 text-xs font-bold rounded-xl border border-slate-200 dark:border-slate-800 hover:bg-slate-50 dark:hover:bg-slate-800 text-slate-700 dark:text-slate-300 transition-colors"
              >
                Tutup
              </button>
              <button
                type="button"
                onClick={() => {
                  setComparingKanji(null);
                  handleKanjiClick(comparingKanji);
                }}
                className="flex-1 py-2.5 text-xs font-bold rounded-xl bg-amber-600 hover:bg-amber-500 text-white shadow-md transition-all"
              >
                Buka Detail {comparingKanji.character}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
