'use client';

import React from 'react';
import { Search, Layers } from 'lucide-react';
import { ItemType } from '@/lib/types';

interface DictionaryFilterBarProps {
  searchQuery: string;
  onSearchChange: (value: string) => void;
  selectedLevel: string;
  onLevelChange: (level: string) => void;
  itemType: ItemType;
  maxLevel?: number;
}

export default function DictionaryFilterBar({
  searchQuery,
  onSearchChange,
  selectedLevel,
  onLevelChange,
  itemType,
  maxLevel = 60,
}: DictionaryFilterBarProps) {
  const levelList = Array.from({ length: maxLevel }, (_, i) => String(i + 1));

  const placeholder = itemType === 'radical'
    ? 'Cari radikal berdasarkan simbol atau arti...'
    : itemType === 'kanji'
    ? 'Cari kanji berdasarkan karakter, arti, atau cara baca...'
    : 'Cari kosakata berdasarkan kata, arti, atau kana...';

  const ringFocusColor = itemType === 'radical'
    ? 'focus:ring-radical'
    : itemType === 'kanji'
    ? 'focus:ring-kanji'
    : 'focus:ring-vocab';

  return (
    <section className="bg-white dark:bg-slate-900 p-4 sm:p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col sm:flex-row gap-4 items-center justify-between">
      {/* Search Input */}
      <div className="relative w-full sm:max-w-md">
        <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
        <input
          type="text"
          placeholder={placeholder}
          value={searchQuery}
          onChange={(e) => onSearchChange(e.target.value)}
          className={`w-full pl-11 pr-4 py-3 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 ${ringFocusColor} focus:border-transparent transition-all`}
        />
      </div>

      {/* Level Dropdown Filter */}
      <div className="flex items-center space-x-3 w-full sm:w-auto shrink-0 justify-end">
        <div className="flex items-center space-x-1 px-3 py-2 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
          <Layers className="w-4 h-4 text-slate-450" />
          <span className="text-xxs font-bold text-slate-450 uppercase tracking-widest">Level</span>
        </div>
        <select
          value={selectedLevel}
          onChange={(e) => onLevelChange(e.target.value)}
          className={`py-2.5 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-xs font-bold rounded-2xl focus:outline-none focus:ring-1 ${ringFocusColor}`}
        >
          <option value="all">Semua Level</option>
          {levelList.map((lvl) => (
            <option key={lvl} value={lvl}>
              Level {lvl}
            </option>
          ))}
        </select>
      </div>
    </section>
  );
}
