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
      cardBg = 'bg-card-muted/60 dark:bg-card-muted/40 border-card-border text-muted opacity-75 hover:opacity-95';
      charColor = 'text-primary/70';
      meaningColor = 'text-muted';
    } else {
      cardBg = 'bg-radical text-white border-radical shadow-xs hover:shadow-md hover:brightness-105';
      charColor = 'text-white';
      meaningColor = 'text-white/90';
    }
  } else if (type === 'kanji') {
    if (isLocked) {
      cardBg = 'bg-card-muted/60 dark:bg-card-muted/40 border-card-border text-muted opacity-75 hover:opacity-95';
      charColor = 'text-primary/70';
      kanaColor = 'text-muted';
      meaningColor = 'text-muted';
    } else {
      cardBg = 'bg-kanji text-white border-kanji shadow-xs hover:shadow-md hover:brightness-105';
      charColor = 'text-white';
      kanaColor = 'text-white/95';
      meaningColor = 'text-white/85';
    }
  } else {
    // Vocabulary
    if (isLocked) {
      cardBg = 'bg-card-muted/60 dark:bg-card-muted/40 border-card-border text-muted opacity-75 hover:opacity-95';
      charColor = 'text-primary/70';
      kanaColor = 'text-muted';
      meaningColor = 'text-muted';
    } else {
      cardBg = 'bg-vocab text-white border-vocab shadow-xs hover:shadow-md hover:brightness-105';
      charColor = 'text-white';
      kanaColor = 'text-white/95';
      meaningColor = 'text-white/85';
    }
  }

  // Determine content
  const reading = type !== 'radical' ? (item.primary_reading || '') : '';
  const meaning = item.primary_meaning || item.slug || '';

  // Bottom SRS Indicator Bar (Using CSS tokens)
  let srsIndicatorBg = 'bg-transparent';
  if (stage >= 1 && stage <= 4) {
    srsIndicatorBg = 'bg-srs-apprentice'; // Apprentice
  } else if (stage >= 5 && stage <= 6) {
    srsIndicatorBg = 'bg-srs-guru'; // Guru
  } else if (stage === 7) {
    srsIndicatorBg = 'bg-srs-master'; // Master
  } else if (stage === 8) {
    srsIndicatorBg = 'bg-srs-enlightened'; // Enlightened
  } else if (stage === 9) {
    srsIndicatorBg = 'bg-srs-burned'; // Burned
  }

  const isDynamicWidth = type === 'vocabulary' || type === 'kanji';
  const sizeClasses = isDynamicWidth
    ? 'w-auto min-w-[76px] sm:min-w-[84px] max-w-full px-3.5 sm:px-4 py-2 sm:py-2.5 whitespace-nowrap shrink-0'
    : 'w-full min-h-[58px] sm:min-h-[66px] px-1.5 sm:px-2.5 py-2 sm:py-2.5';

  return (
    <div
      onClick={() => onClick(item)}
      className={`group relative rounded-xl sm:rounded-2xl border transition-all duration-200 hover:-translate-y-0.5 hover:scale-[1.02] active:scale-95 cursor-pointer select-none flex flex-col items-center justify-center text-center overflow-hidden ${sizeClasses} ${cardBg}`}
      title={`${item.character || item.slug}${reading ? ` (${reading})` : ''} • ${meaning}`}
    >
      {/* Top Character */}
      {(() => {
        const charLength = (item.character || item.slug || '').length;
        let charSize = 'text-xl sm:text-2xl md:text-3xl';
        let imgSize = 'w-6 h-6 sm:w-7 sm:h-7';
        if (charLength >= 6) {
          charSize = 'text-sm sm:text-base md:text-lg';
          imgSize = 'w-4 h-4 sm:w-5 sm:h-5';
        } else if (charLength >= 4) {
          charSize = 'text-base sm:text-lg md:text-xl';
          imgSize = 'w-5 h-5 sm:w-6 sm:h-6';
        } else if (charLength >= 2 && type === 'vocabulary') {
          charSize = 'text-lg sm:text-xl md:text-2xl';
        }

        return (
          <div className={`font-japanese font-black ${charSize} leading-none flex items-center justify-center transition-transform duration-200 group-hover:scale-105 ${charColor} mb-1 ${isDynamicWidth ? 'whitespace-nowrap px-1' : 'max-w-full truncate'}`}>
            <CharacterDisplay character={item.character} slug={item.slug} imgClassName={imgSize} />
          </div>
        );
      })()}

      {/* Kana Reading (Kanji & Vocab) */}
      {reading && (
        <div className={`text-[10px] sm:text-xs font-bold leading-tight font-japanese ${kanaColor} ${isDynamicWidth ? 'whitespace-nowrap px-1' : 'max-w-full truncate px-0.5'}`}>
          {reading}
        </div>
      )}

      {/* Meaning / Translation */}
      <div className={`text-[10px] sm:text-xs font-medium leading-tight ${meaningColor} ${reading ? 'mt-0.5' : 'mt-0.5'} ${isDynamicWidth ? 'whitespace-nowrap px-1' : 'max-w-full truncate px-0.5'}`}>
        {meaning}
      </div>

      {/* Lock Icon for Locked items */}
      {isLocked && (
        <div className="absolute top-1.5 right-1.5 text-muted opacity-80">
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
