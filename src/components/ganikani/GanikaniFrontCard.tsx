'use client';

import React from 'react';
import { Item } from '@/lib/types';
import { formatMoraLabel } from '@/lib/moraCounter';
import { PartOfSpeechBadge } from '@/components/ui/PartOfSpeechBadge';
import { Sparkles } from 'lucide-react';

interface GanikaniFrontCardProps {
  item: Item;
  isAnswerSubmitted?: boolean;
  isCorrect?: boolean;
  showKanjiRevealed?: boolean;
}

export default function GanikaniFrontCard({
  item,
  isAnswerSubmitted = false,
  isCorrect = false,
  showKanjiRevealed = false,
}: GanikaniFrontCardProps) {
  // Primary meaning (Indonesian)
  const primaryMeaning =
    item.primary_meaning ||
    item.meanings?.find((m) => m.primary_meaning)?.meaning ||
    item.meanings?.[0]?.meaning ||
    '';

  // Alternative meanings (including English translations from WaniKani)
  const alternateMeanings = (item.meanings || [])
    .filter((m) => !m.primary_meaning && m.meaning.toLowerCase() !== primaryMeaning.toLowerCase())
    .map((m) => m.meaning);

  // User synonyms
  const userSynonyms = item.user_synonyms || [];

  // Mora calculation
  const primaryReading =
    item.primary_reading ||
    item.readings?.find((r) => r.primary_reading)?.reading ||
    item.readings?.[0]?.reading ||
    '';
  const moraLabel = formatMoraLabel(primaryReading);

  return (
    <div className="w-full flex flex-col items-center justify-center text-center px-4 py-8 select-none">
      {/* Header Badges: [ Part of Speech • X音 ] */}
      <div className="flex flex-wrap items-center justify-center gap-2 mb-6">
        {item.parts_of_speech && item.parts_of_speech.length > 0 ? (
          item.parts_of_speech.slice(0, 2).map((pos, idx) => (
            <PartOfSpeechBadge key={idx} item={pos} size="sm" />
          ))
        ) : (
          <span className="text-xs px-2.5 py-0.5 rounded-full font-medium bg-card-muted text-text-muted border border-card-border">
            Kosakata
          </span>
        )}

        {moraLabel && (
          <span className="inline-flex items-center text-xs font-bold px-2.5 py-0.5 rounded-full bg-amber-500/10 text-amber-500 dark:text-amber-400 border border-amber-500/25 tracking-wide">
            {moraLabel}
          </span>
        )}
      </div>

      {/* Primary Meaning (Large Hero Text) */}
      <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight text-text-primary capitalize mb-4 leading-tight drop-shadow-xs">
        {primaryMeaning}
      </h1>

      {/* Alternative Meanings & Synonyms Container */}
      {(alternateMeanings.length > 0 || userSynonyms.length > 0) && (
        <div className="flex flex-col items-center gap-2 max-w-xl text-sm">
          {/* Alternatif */}
          {alternateMeanings.length > 0 && (
            <p className="text-text-secondary font-medium">
              <span className="text-text-muted text-xs uppercase font-bold tracking-wider mr-1.5">
                Alternatif:
              </span>
              {alternateMeanings.slice(0, 5).join(', ')}
            </p>
          )}

          {/* User Synonyms */}
          {userSynonyms.length > 0 && (
            <div className="flex flex-wrap items-center justify-center gap-1.5 mt-1">
              <span className="text-text-muted text-[11px] uppercase font-bold tracking-wider flex items-center gap-1 mr-1">
                <Sparkles className="w-3 h-3 text-amber-500" />
                Sinonim:
              </span>
              {userSynonyms.map((syn, i) => (
                <span
                  key={i}
                  className="px-2 py-0.5 text-xs font-semibold rounded-md bg-amber-500/15 text-amber-600 dark:text-amber-300 border border-amber-500/25"
                >
                  {syn}
                </span>
              ))}
            </div>
          )}
        </div>
      )}

      {/* Optional revealed target characters upon correct answer */}
      {isAnswerSubmitted && isCorrect && showKanjiRevealed && (
        <div className="mt-8 animate-fade-in flex flex-col items-center gap-1.5">
          <span className="text-4xl sm:text-5xl font-black text-emerald-500 dark:text-emerald-400 tracking-wider">
            {item.character}
          </span>
          <span className="text-lg font-bold text-text-secondary tracking-widest">
            {primaryReading}
          </span>
        </div>
      )}
    </div>
  );
}
