'use client';

import React from 'react';
import { ItemType } from '@/lib/types';

interface SrsLegendProps {
  itemType: ItemType;
}

export default function SrsLegend({ itemType }: SrsLegendProps) {
  let sampleChar = '本';
  if (itemType === 'radical') sampleChar = '一';
  if (itemType === 'kanji') sampleChar = '日';
  if (itemType === 'vocabulary') sampleChar = '日本';

  let lockedStyle = 'border-dashed border-radical/30 bg-hatched-radical text-radical/60';
  let lessonsStyle = 'border-solid border-radical/20 bg-radical/5 dark:bg-radical/10 text-radical';
  let reviewsStyle = 'border-solid border-radical/80 bg-radical text-white';

  if (itemType === 'kanji') {
    lockedStyle = 'border-dashed border-kanji/30 bg-hatched-kanji text-kanji/60';
    lessonsStyle = 'border-solid border-kanji/20 bg-kanji/5 dark:bg-kanji/10 text-kanji';
    reviewsStyle = 'border-solid border-kanji/80 bg-kanji text-white';
  } else if (itemType === 'vocabulary') {
    lockedStyle = 'border-dashed border-vocab/30 bg-hatched-vocab text-vocab/60';
    lessonsStyle = 'border-solid border-vocab/20 bg-vocab/5 dark:bg-vocab/10 text-vocab';
    reviewsStyle = 'border-solid border-vocab/80 bg-vocab text-white';
  }

  return (
    <section className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 bg-white dark:bg-slate-900 p-4 sm:px-6 sm:py-3.5 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm">
      <span className="text-xxs font-extrabold uppercase tracking-widest text-slate-400 dark:text-slate-500">
        Legenda Status Belajar
      </span>
      <div className="flex flex-wrap items-center gap-x-5 gap-y-2 text-xxs font-bold text-slate-550 dark:text-slate-400">
        {/* Locked */}
        <div className="flex items-center space-x-2">
          <div className={`w-6 h-6 rounded-md border flex items-center justify-center font-japanese font-black text-xxs ${lockedStyle}`}>
            {sampleChar}
          </div>
          <span>Locked</span>
        </div>

        {/* In Lessons */}
        <div className="flex items-center space-x-2">
          <div className={`w-6 h-6 rounded-md border flex items-center justify-center font-japanese font-black text-xxs ${lessonsStyle}`}>
            {sampleChar}
          </div>
          <span>In Lessons</span>
        </div>

        {/* In Reviews */}
        <div className="flex items-center space-x-2">
          <div className={`w-6 h-6 rounded-md border flex items-center justify-center font-japanese font-black text-xxs ${reviewsStyle}`}>
            {sampleChar}
          </div>
          <span>In Reviews</span>
        </div>

        {/* Burned */}
        <div className="flex items-center space-x-2">
          <div className="w-6 h-6 rounded-md border border-solid bg-burned-card flex items-center justify-center font-japanese font-black text-xxs text-white">
            {sampleChar}
          </div>
          <span>Burned</span>
        </div>
      </div>
    </section>
  );
}
