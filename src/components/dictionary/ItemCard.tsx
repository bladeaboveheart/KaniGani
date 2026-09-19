'use client';

import React from 'react';
import { Lock } from 'lucide-react';
import CharacterDisplay from '@/components/CharacterDisplay';
import { DictionaryItem } from '@/hooks/useDictionaryItems';

interface ItemCardProps {
  item: DictionaryItem;
  onClick: (item: DictionaryItem) => void;
  displayMode?: 'reading' | 'meaning';
}

export default function ItemCard({
  item,
  onClick,
}: ItemCardProps) {
  const stage = item.srs_stage || 0;
  const isLocked = stage === 0;
  const type = item.type || 'radical';

  // Base theme classes per item type
  let cardBg = '';
  let charColor = '';
  let kanaColor = '';
  let meaningColor = '';

  if (type === 'radical') {
    if (isLocked) {
      cardBg = 'bg-slate-100 dark:bg-slate-900 border-slate-200 dark:border-slate-850 text-slate-400 opacity-75 hover:opacity-90';
      charColor = 'text-slate-500 dark:text-slate-400';
      meaningColor = 'text-slate-400 dark:text-slate-500';
    } else {
      cardBg = 'bg-radical text-white border-radical shadow-xs hover:shadow-md hover:brightness-105';
      charColor = 'text-white';
      meaningColor = 'text-white/90';
    }
  } else if (type === 'kanji') {
    if (isLocked) {
      cardBg = 'bg-slate-100 dark:bg-slate-900 border-slate-200 dark:border-slate-850 text-slate-400 opacity-75 hover:opacity-90';
      charColor = 'text-slate-500 dark:text-slate-400';
      kanaColor = 'text-slate-400 dark:text-slate-500';
      meaningColor = 'text-slate-400 dark:text-slate-500';
    } else {
      cardBg = 'bg-kanji text-white border-kanji shadow-xs hover:shadow-md hover:brightness-105';
      charColor = 'text-white';
      kanaColor = 'text-white/95';
      meaningColor = 'text-white/80';
    }
  } else {
    // Vocabulary
    if (isLocked) {
      cardBg = 'bg-slate-100 dark:bg-slate-900 border-slate-200 dark:border-slate-850 text-slate-400 opacity-75 hover:opacity-90';
      charColor = 'text-slate-500 dark:text-slate-400';
      kanaColor = 'text-slate-400 dark:text-slate-500';
      meaningColor = 'text-slate-400 dark:text-slate-500';
    } else {
      cardBg = 'bg-vocab text-white border-vocab shadow-xs hover:shadow-md hover:brightness-105';
      charColor = 'text-white';
      kanaColor = 'text-white/95';
      meaningColor = 'text-white/80';
    }
  }

  // Determine content
  const reading = type !== 'radical' ? (item.primary_reading || '') : '';
  const meaning = item.primary_meaning || item.slug || '';

  // Bottom SRS Indicator Bar (WaniKani Style)
  let srsIndicatorBg = 'bg-transparent';
  if (stage >= 1 && stage <= 4) {
    srsIndicatorBg = 'bg-pink-400 dark:bg-pink-300'; // Apprentice
  } else if (stage >= 5 && stage <= 6) {
    srsIndicatorBg = 'bg-purple-400 dark:bg-purple-300'; // Guru
  } else if (stage === 7) {
    srsIndicatorBg = 'bg-blue-400 dark:bg-blue-300'; // Master
  } else if (stage === 8) {
    srsIndicatorBg = 'bg-cyan-300 dark:bg-cyan-200'; // Enlightened
  } else if (stage === 9) {
    srsIndicatorBg = 'bg-amber-400 dark:bg-amber-300'; // Burned
  }

  return (
    <div
      onClick={() => onClick(item)}
      className={`group relative rounded-2xl border transition-all duration-200 hover:-translate-y-1 hover:scale-102 cursor-pointer select-none flex flex-col items-center justify-center text-center overflow-hidden shrink-0 w-auto min-w-[76px] sm:min-w-[84px] px-3.5 sm:px-4 py-2.5 sm:py-3 whitespace-nowrap ${cardBg}`}
      title={`${item.character || item.slug}${reading ? ` (${reading})` : ''} • ${meaning}`}
    >
      {/* Top Character */}
      <div className={`font-japanese font-black text-2xl sm:text-3xl leading-none flex items-center justify-center transition-transform duration-200 group-hover:scale-105 ${charColor} mb-1.5`}>
        <CharacterDisplay character={item.character} slug={item.slug} imgClassName="w-7 h-7" />
      </div>

      {/* Kana Reading (Kanji & Vocab) */}
      {reading && (
        <div className={`text-3xs sm:text-xxs font-bold leading-tight font-japanese ${kanaColor}`}>
          {reading}
        </div>
      )}

      {/* Meaning / Translation */}
      <div className={`text-3xs sm:text-xxs font-medium leading-tight ${meaningColor} ${reading ? 'mt-0.5' : 'mt-1'}`}>
        {meaning}
      </div>

      {/* Lock Icon for Locked items */}
      {isLocked && (
        <div className="absolute top-1.5 right-1.5 text-slate-400 dark:text-slate-500">
          <Lock className="w-2.5 h-2.5" />
        </div>
      )}

      {/* Bottom SRS Stage Bar */}
      {!isLocked && (
        <div
          className={`absolute bottom-0 left-0 right-0 h-1 sm:h-1.5 ${srsIndicatorBg}`}
          title={`SRS Stage ${stage}`}
        />
      )}
    </div>
  );
}
