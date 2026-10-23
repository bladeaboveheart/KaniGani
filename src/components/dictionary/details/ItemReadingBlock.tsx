'use client';

import React from 'react';
import { Languages } from 'lucide-react';

interface ReadingItem {
  reading: string;
  reading_type?: 'onyomi' | 'kunyomi' | 'nanori' | string;
  primary_reading?: boolean;
}

interface ItemReadingBlockProps {
  type: 'radical' | 'kanji' | 'vocabulary' | string;
  readings: ReadingItem[];
  variant?: 'modal' | 'full';
}

export default function ItemReadingBlock({
  type,
  readings,
  variant = 'modal',
}: ItemReadingBlockProps) {
  if (!readings || readings.length === 0 || type === 'radical') {
    return null;
  }

  const isFull = variant === 'full';

  if (type === 'kanji') {
    const onyomiList = readings.filter(
      (r) =>
        r.reading_type === 'onyomi' ||
        (!r.reading_type && r.reading_type !== 'kunyomi' && r.reading_type !== 'nanori')
    );
    const kunyomiList = readings.filter((r) => r.reading_type === 'kunyomi');
    const nanoriList = readings.filter((r) => r.reading_type === 'nanori');

    const renderReadingPill = (r: ReadingItem, idx: number) => {
      const isPrimary = Boolean(r.primary_reading);
      return (
        <div
          key={idx}
          className={`${
            isFull ? 'px-3 py-1.5' : 'px-2.5 py-1'
          } rounded-xl border ${
            isFull ? 'text-sm' : 'text-xs'
          } font-japanese font-bold flex items-center space-x-1.5 transition-all ${
            isPrimary
              ? 'bg-pink-500/10 border-pink-500/30 text-pink-600 dark:text-pink-300 shadow-xs'
              : isFull
              ? 'bg-card border-card-border text-primary'
              : 'bg-card border-card-border text-primary'
          }`}
        >
          <span className={isFull ? 'text-base leading-none' : 'leading-none'}>{r.reading}</span>
          {isPrimary && (
            <span
              className={`text-[9px] font-black uppercase tracking-wider text-pink-500 bg-pink-100 dark:bg-pink-950/60 ${
                isFull ? 'px-1.5 py-0.5' : 'px-1 py-0.5'
              } rounded`}
            >
              Utama
            </span>
          )}
        </div>
      );
    };

    const renderSection = (title: string, list: ReadingItem[]) => (
      <div className={isFull ? 'space-y-2' : 'space-y-1.5'}>
        <span
          className={`${
            isFull ? 'text-xs font-bold' : 'text-[11px] font-extrabold'
          } text-muted uppercase tracking-widest block`}
        >
          {title}
        </span>
        {list.length > 0 ? (
          <div className="flex flex-wrap gap-1.5 sm:gap-2">
            {list.map(renderReadingPill)}
          </div>
        ) : (
          <span className={`${isFull ? 'text-sm' : 'text-xs'} font-medium text-muted italic block`}>
            None
          </span>
        )}
      </div>
    );

    return (
      <div
        className={
          isFull
            ? 'bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 sm:p-7 space-y-4 shadow-sm'
            : 'space-y-2'
        }
      >
        <div className="flex items-center justify-between">
          <h3
            className={`${
              isFull ? 'text-xs font-bold text-slate-400 dark:text-slate-500' : 'text-xs font-bold text-muted'
            } uppercase tracking-widest flex items-center space-x-2`}
          >
            <Languages className="w-4 h-4 text-pink-500" />
            <span>Cara Baca (Readings)</span>
          </h3>
        </div>

        <div
          className={`grid grid-cols-1 sm:grid-cols-3 ${
            isFull
              ? 'gap-4 bg-slate-50/70 dark:bg-slate-800/40 p-4 sm:p-5 border-slate-200/70 dark:border-slate-700/60'
              : 'gap-3 bg-card-muted/40 p-3.5 border-card-border'
          } rounded-2xl border`}
        >
          {renderSection('On’yomi', onyomiList)}
          {renderSection('Kun’yomi', kunyomiList)}
          {renderSection('Nanori', nanoriList)}
        </div>
      </div>
    );
  }

  // Vocabulary
  return (
    <div
      className={
        isFull
          ? 'bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 sm:p-7 space-y-4 shadow-sm'
          : 'space-y-2'
      }
    >
      <div className="flex items-center justify-between">
        <h3
          className={`${
            isFull ? 'text-xs font-bold text-slate-400 dark:text-slate-500' : 'text-xs font-bold text-muted'
          } uppercase tracking-widest flex items-center space-x-2`}
        >
          <Languages className="w-4 h-4 text-pink-500" />
          <span>Cara Baca (Readings)</span>
        </h3>
      </div>

      <div className={isFull ? 'flex flex-wrap gap-2.5' : 'flex flex-wrap gap-2'}>
        {readings.map((r, idx) => (
          <div
            key={idx}
            className={`${
              isFull
                ? 'px-4 py-2 rounded-2xl bg-purple-50 dark:bg-purple-950/40 border-purple-200 dark:border-purple-900/60 text-purple-700 dark:text-purple-300'
                : 'px-3 py-1.5 rounded-xl bg-purple-500/10 border-purple-500/30 text-purple-700 dark:text-purple-300'
            } border text-sm font-japanese font-bold flex items-center space-x-2 shadow-xs`}
          >
            <span className={isFull ? 'text-base' : 'text-xs'}>{r.reading}</span>
          </div>
        ))}
      </div>
    </div>
  );
}
