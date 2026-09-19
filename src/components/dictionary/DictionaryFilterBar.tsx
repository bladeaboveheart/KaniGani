'use client';

import React from 'react';
import { Search, Filter, Eye, X } from 'lucide-react';
import { ItemType } from '@/lib/types';

interface DictionaryFilterBarProps {
  searchQuery: string;
  onSearchChange: (value: string) => void;
  srsFilter: string;
  onSrsFilterChange: (srs: string) => void;
  displayMode: 'reading' | 'meaning';
  onDisplayModeChange: (mode: 'reading' | 'meaning') => void;
  itemType: ItemType;
  totalResults: number;
}

export default function DictionaryFilterBar({
  searchQuery,
  onSearchChange,
  srsFilter,
  onSrsFilterChange,
  displayMode,
  onDisplayModeChange,
  itemType,
  totalResults,
}: DictionaryFilterBarProps) {
  const placeholder = itemType === 'radical'
    ? 'Cari radikal (arti, nama)...'
    : itemType === 'kanji'
    ? 'Cari kanji (karakter, arti, cara baca)...'
    : 'Cari kosakata (kata, arti, kana)...';

  const ringFocusColor = itemType === 'radical'
    ? 'focus:ring-radical'
    : itemType === 'kanji'
    ? 'focus:ring-kanji'
    : 'focus:ring-vocab';

  const srsOptions = [
    { value: 'all', label: 'Semua Status' },
    { value: 'locked', label: '🔒 Terkunci' },
    { value: 'apprentice', label: '🌱 Apprentice (1–4)' },
    { value: 'guru', label: '🥋 Guru (5–6)' },
    { value: 'master', label: '🎓 Master (7)' },
    { value: 'enlightened', label: '✨ Enlightened (8)' },
    { value: 'burned', label: '🔥 Burned (9)' },
  ];

  return (
    <section className="bg-white dark:bg-slate-900 p-4 sm:p-5 rounded-3xl border border-slate-200 dark:border-slate-850 shadow-xs flex flex-col md:flex-row gap-3 sm:gap-4 items-stretch md:items-center justify-between">
      {/* 1. Search Input */}
      <div className="relative flex-1">
        <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
        <input
          type="text"
          placeholder={placeholder}
          value={searchQuery}
          onChange={(e) => onSearchChange(e.target.value)}
          className={`w-full pl-10 pr-9 py-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-xs sm:text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 ${ringFocusColor} focus:border-transparent transition-all`}
        />
        {searchQuery && (
          <button
            type="button"
            onClick={() => onSearchChange('')}
            className="absolute right-3 top-1/2 -translate-y-1/2 p-1 text-slate-400 hover:text-slate-600 dark:hover:text-slate-200"
          >
            <X className="w-3.5 h-3.5" />
          </button>
        )}
      </div>

      {/* 2. Controls: SRS Filter & Display Mode Toggle */}
      <div className="flex flex-wrap items-center gap-2 sm:gap-3 shrink-0">
        {/* Display Mode Toggle (Kanji & Vocab only) */}
        {itemType !== 'radical' && (
          <div className="flex items-center p-1 bg-slate-100 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
            <button
              type="button"
              onClick={() => onDisplayModeChange('reading')}
              className={`px-3 py-1.5 rounded-xl text-xxs font-black transition-all cursor-pointer ${
                displayMode === 'reading'
                  ? 'bg-white dark:bg-slate-850 text-slate-900 dark:text-white shadow-xs'
                  : 'text-slate-500 hover:text-slate-800 dark:hover:text-slate-200'
              }`}
            >
              Cara Baca (Kana)
            </button>
            <button
              type="button"
              onClick={() => onDisplayModeChange('meaning')}
              className={`px-3 py-1.5 rounded-xl text-xxs font-black transition-all cursor-pointer ${
                displayMode === 'meaning'
                  ? 'bg-white dark:bg-slate-850 text-slate-900 dark:text-white shadow-xs'
                  : 'text-slate-500 hover:text-slate-800 dark:hover:text-slate-200'
              }`}
            >
              Arti (Indonesia)
            </button>
          </div>
        )}

        {/* SRS Status Dropdown Filter */}
        <div className="relative flex items-center">
          <select
            value={srsFilter}
            onChange={(e) => onSrsFilterChange(e.target.value)}
            className={`py-2 px-3 sm:px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-xxs sm:text-xs font-bold rounded-2xl focus:outline-none focus:ring-1 ${ringFocusColor} text-slate-700 dark:text-slate-200 cursor-pointer`}
          >
            {srsOptions.map((opt) => (
              <option key={opt.value} value={opt.value}>
                {opt.label}
              </option>
            ))}
          </select>
        </div>

        {/* Results Counter Badge */}
        <span className="text-4xs sm:text-3xs font-extrabold px-3 py-2 rounded-xl bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-400">
          {totalResults.toLocaleString()} item
        </span>
      </div>
    </section>
  );
}
