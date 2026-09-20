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
    <section className="bg-card p-3.5 sm:p-4 rounded-2xl sm:rounded-3xl border border-card-border shadow-xs flex flex-col md:flex-row gap-3 items-stretch md:items-center justify-between">
      {/* 1. Search Input */}
      <div className="relative flex-1">
        <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4 h-4 text-muted" />
        <input
          type="text"
          placeholder={placeholder}
          value={searchQuery}
          onChange={(e) => onSearchChange(e.target.value)}
          className={`w-full pl-10 pr-9 py-2.5 min-h-[44px] bg-card-muted/50 border border-card-border text-xs sm:text-sm font-semibold rounded-xl sm:rounded-2xl focus:outline-none focus:ring-2 ${ringFocusColor} text-primary placeholder-muted focus:border-transparent transition-all`}
        />
        {searchQuery && (
          <button
            type="button"
            onClick={() => onSearchChange('')}
            className="absolute right-3 top-1/2 -translate-y-1/2 p-1.5 min-h-[32px] min-w-[32px] flex items-center justify-center text-muted hover:text-primary transition-colors"
          >
            <X className="w-3.5 h-3.5" />
          </button>
        )}
      </div>

      {/* 2. Controls: SRS Filter & Display Mode Toggle */}
      <div className="flex flex-wrap items-center gap-2 sm:gap-3 shrink-0">
        {/* Display Mode Toggle (Kanji & Vocab only) */}
        {itemType !== 'radical' && (
          <div className="flex items-center p-1 bg-card-muted/50 border border-card-border rounded-xl sm:rounded-2xl">
            <button
              type="button"
              onClick={() => onDisplayModeChange('reading')}
              className={`px-3 py-1.5 min-h-[36px] rounded-lg sm:rounded-xl text-xs font-bold transition-all cursor-pointer ${
                displayMode === 'reading'
                  ? 'bg-card text-primary shadow-xs'
                  : 'text-muted hover:text-primary'
              }`}
            >
              Cara Baca
            </button>
            <button
              type="button"
              onClick={() => onDisplayModeChange('meaning')}
              className={`px-3 py-1.5 min-h-[36px] rounded-lg sm:rounded-xl text-xs font-bold transition-all cursor-pointer ${
                displayMode === 'meaning'
                  ? 'bg-card text-primary shadow-xs'
                  : 'text-muted hover:text-primary'
              }`}
            >
              Arti
            </button>
          </div>
        )}

        {/* SRS Status Dropdown Filter */}
        <div className="relative flex items-center">
          <select
            value={srsFilter}
            onChange={(e) => onSrsFilterChange(e.target.value)}
            className={`py-2 px-3 sm:px-4 min-h-[44px] bg-card-muted/50 border border-card-border text-xs font-bold rounded-xl sm:rounded-2xl focus:outline-none focus:ring-1 ${ringFocusColor} text-primary cursor-pointer`}
          >
            {srsOptions.map((opt) => (
              <option key={opt.value} value={opt.value} className="bg-card text-primary">
                {opt.label}
              </option>
            ))}
          </select>
        </div>

        {/* Results Counter Badge */}
        <span className="text-xs font-bold px-3 py-2 rounded-xl bg-card-muted text-muted border border-card-border">
          {totalResults.toLocaleString()} item
        </span>
      </div>
    </section>
  );
}
