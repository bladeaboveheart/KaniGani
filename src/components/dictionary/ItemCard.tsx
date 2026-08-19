'use client';

import React from 'react';
import { Lock } from 'lucide-react';
import CharacterDisplay from '@/components/CharacterDisplay';
import { DictionaryItem } from '@/hooks/useDictionaryItems';

interface ItemCardProps {
  item: DictionaryItem;
  onClick: (item: DictionaryItem) => void;
}

export default function ItemCard({ item, onClick }: ItemCardProps) {
  const isLocked = item.srs_stage === 0;
  const isInLessons = item.srs_stage === 1 && !item.next_review;
  const isInReviews = item.srs_stage !== undefined && item.srs_stage >= 1 && item.srs_stage <= 8 && item.next_review !== null;

  const type = item.type || 'radical';

  // Base theme classes per item type
  let cardStyles = '';
  let charBorderStyles = '';
  let textStyles = '';
  let readingTextStyles = '';
  let lockColor = '';

  if (type === 'radical') {
    lockColor = 'text-radical/50 dark:text-radical/40';
    if (isLocked) {
      cardStyles = 'bg-hatched-radical border-dashed border-radical/30 dark:border-radical/20 hover:border-radical/45';
      charBorderStyles = 'border-solid border-radical/30 text-radical/55';
      textStyles = 'text-slate-500 dark:text-slate-400 capitalize font-bold';
    } else if (isInLessons) {
      cardStyles = 'bg-radical/5 border-solid border-radical/20 dark:bg-radical/10 hover:border-radical/40 hover:shadow-radical/5';
      charBorderStyles = 'border-solid border-radical text-radical';
      textStyles = 'text-slate-750 dark:text-slate-200 capitalize font-black';
    } else if (isInReviews) {
      cardStyles = 'bg-radical border-solid border-radical/80 text-white shadow-3xs hover:shadow-2xs hover:bg-radical-hover';
      charBorderStyles = 'border-solid border-white/60 text-white';
      textStyles = 'text-white capitalize font-black';
    } else {
      cardStyles = 'bg-burned-card border-solid text-white shadow-3xs hover:shadow-2xs';
      charBorderStyles = 'border-solid border-white/60 text-white';
      textStyles = 'text-white capitalize font-black';
    }
  } else if (type === 'kanji') {
    lockColor = 'text-kanji/50 dark:text-kanji/40';
    if (isLocked) {
      cardStyles = 'bg-hatched-kanji border-dashed border-kanji/30 dark:border-kanji/20 hover:border-kanji/45';
      charBorderStyles = 'border-solid border-kanji/30 text-kanji/55';
      textStyles = 'text-slate-500 dark:text-slate-400 capitalize font-bold';
      readingTextStyles = 'text-slate-400 dark:text-slate-500';
    } else if (isInLessons) {
      cardStyles = 'bg-kanji/5 border-solid border-kanji/20 dark:bg-kanji/10 hover:border-kanji/40 hover:shadow-kanji/5';
      charBorderStyles = 'border-solid border-kanji text-kanji';
      textStyles = 'text-slate-750 dark:text-slate-200 capitalize font-black';
      readingTextStyles = 'text-kanji font-bold';
    } else if (isInReviews) {
      cardStyles = 'bg-kanji border-solid border-kanji/80 text-white shadow-3xs hover:shadow-2xs hover:bg-kanji-hover';
      charBorderStyles = 'border-solid border-white/60 text-white';
      textStyles = 'text-white capitalize font-black';
      readingTextStyles = 'text-white/80 font-medium';
    } else {
      cardStyles = 'bg-burned-card border-solid text-white shadow-3xs hover:shadow-2xs';
      charBorderStyles = 'border-solid border-white/60 text-white';
      textStyles = 'text-white capitalize font-black';
      readingTextStyles = 'text-white/80 font-medium';
    }
  } else {
    // vocabulary
    lockColor = 'text-vocab/50 dark:text-vocab/40';
    if (isLocked) {
      cardStyles = 'bg-hatched-vocab border-dashed border-vocab/30 dark:border-vocab/20 hover:border-vocab/45';
      charBorderStyles = 'border-solid border-vocab/30 text-vocab/55';
      textStyles = 'text-slate-500 dark:text-slate-400 capitalize font-bold';
      readingTextStyles = 'text-slate-400 dark:text-slate-500';
    } else if (isInLessons) {
      cardStyles = 'bg-vocab/5 border-solid border-vocab/20 dark:bg-vocab/10 hover:border-vocab/40 hover:shadow-vocab/5';
      charBorderStyles = 'border-solid border-vocab text-vocab';
      textStyles = 'text-slate-750 dark:text-slate-200 capitalize font-black';
      readingTextStyles = 'text-vocab font-bold';
    } else if (isInReviews) {
      cardStyles = 'bg-vocab border-solid border-vocab/80 text-white shadow-3xs hover:shadow-2xs hover:bg-vocab-hover';
      charBorderStyles = 'border-solid border-white/60 text-white';
      textStyles = 'text-white capitalize font-black';
      readingTextStyles = 'text-white/80 font-medium';
    } else {
      cardStyles = 'bg-burned-card border-solid text-white shadow-3xs hover:shadow-2xs';
      charBorderStyles = 'border-solid border-white/60 text-white';
      textStyles = 'text-white capitalize font-black';
      readingTextStyles = 'text-white/80 font-medium';
    }
  }

  const displayName = item.primary_meaning || item.slug || '';
  const displayReading = item.primary_reading || '';

  return (
    <div
      onClick={() => onClick(item)}
      className={`pt-3.5 pb-2.5 px-3.5 rounded-2xl border flex flex-col justify-between items-center text-center cursor-pointer transition-all duration-300 hover:-translate-y-0.5 relative overflow-hidden group min-w-[76px] select-none whitespace-nowrap ${
        type === 'radical' ? 'h-28' : 'h-32'
      } ${cardStyles}`}
    >
      {/* Character with Solid Border */}
      <div className={`px-3 py-1 border rounded-xl font-japanese font-black text-2xl mb-1 flex items-center justify-center transition-transform duration-300 group-hover:scale-105 ${charBorderStyles}`}>
        <CharacterDisplay character={item.character} slug={item.slug} imgClassName="w-7 h-7" />
      </div>

      {/* Reading (Kanji & Vocab only) */}
      {type !== 'radical' && displayReading && (
        <span className={`text-xxs font-japanese leading-none block truncate max-w-[80px] ${readingTextStyles}`}>
          {displayReading}
        </span>
      )}

      {/* Meaning / Slug */}
      <span className={`text-xs leading-none mt-1 block truncate max-w-[90px] ${textStyles}`} title={displayName}>
        {displayName}
      </span>

      {/* Mini Lock Icon for Locked */}
      {isLocked && (
        <div className={`absolute top-1 right-1.5 ${lockColor}`}>
          <Lock className="w-2.5 h-2.5" />
        </div>
      )}
    </div>
  );
}
