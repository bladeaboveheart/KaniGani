'use client';

import React, { useState, useEffect, useRef, useTransition } from 'react';
import { useRouter } from 'next/navigation';
import { Search, X, Loader2, ArrowRight, CornerDownLeft, Sparkles, BookOpen } from 'lucide-react';
import { searchGlobalItems, GlobalSearchResultItem } from '@/services/itemsService';
import { ItemType } from '@/lib/types';
import CharacterDisplay from '@/components/CharacterDisplay';

interface GlobalSearchModalProps {
  isOpen: boolean;
  onClose: () => void;
}

const TYPE_CONFIG = {
  radical: {
    label: 'Radikal',
    kanjiLabel: '部首',
    badgeBg: 'bg-radical/10 dark:bg-radical/20 text-radical border-radical/20',
    itemBg: 'hover:border-radical/40 hover:bg-radical/5',
    charBg: 'bg-radical text-white',
  },
  kanji: {
    label: 'Kanji',
    kanjiLabel: '漢字',
    badgeBg: 'bg-kanji/10 dark:bg-kanji/20 text-kanji border-kanji/20',
    itemBg: 'hover:border-kanji/40 hover:bg-kanji/5',
    charBg: 'bg-kanji text-white',
  },
  vocabulary: {
    label: 'Kosakata',
    kanjiLabel: '語彙',
    badgeBg: 'bg-vocab/10 dark:bg-vocab/20 text-vocab border-vocab/20',
    itemBg: 'hover:border-vocab/40 hover:bg-vocab/5',
    charBg: 'bg-vocab text-white',
  },
};

export default function GlobalSearchModal({ isOpen, onClose }: GlobalSearchModalProps) {
  const router = useRouter();
  const [query, setQuery] = useState('');
  const [selectedType, setSelectedType] = useState<'all' | ItemType>('all');
  const [results, setResults] = useState<GlobalSearchResultItem[]>([]);
  const [isLoading, setIsLoading] = useState(false);
  const [selectedIndex, setSelectedIndex] = useState(0);
  const [_isPending, startTransition] = useTransition();

  const inputRef = useRef<HTMLInputElement>(null);
  const listRef = useRef<HTMLDivElement>(null);

  // Focus input when opened & lock scroll
  useEffect(() => {
    if (isOpen) {
      document.body.style.overflow = 'hidden';
      const timer = setTimeout(() => {
        inputRef.current?.focus();
      }, 50);
      return () => {
        clearTimeout(timer);
        document.body.style.overflow = '';
      };
    } else {
      document.body.style.overflow = '';
      const timer = setTimeout(() => {
        setQuery('');
        setResults([]);
        setSelectedIndex(0);
      }, 0);
      return () => {
        clearTimeout(timer);
        document.body.style.overflow = '';
      };
    }
  }, [isOpen]);

  // Debounced search
  useEffect(() => {
    if (!isOpen) return;

    const trimmed = query.trim();
    if (!trimmed) {
      const timer = setTimeout(() => {
        setResults([]);
        setIsLoading(false);
      }, 0);
      return () => clearTimeout(timer);
    }

    const timer = setTimeout(async () => {
      setIsLoading(true);
      try {
        const data = await searchGlobalItems(trimmed, selectedType, 25);
        startTransition(() => {
          setResults(data);
          setSelectedIndex(0);
          setIsLoading(false);
        });
      } catch (err) {
        console.error('Failed to search items:', err);
        setIsLoading(false);
      }
    }, 180);

    return () => clearTimeout(timer);
  }, [query, selectedType, isOpen]);

  // Handle keyboard navigation
  const handleKeyDown = (e: React.KeyboardEvent) => {
    if (e.key === 'Escape') {
      e.preventDefault();
      onClose();
      return;
    }

    if (results.length === 0) return;

    if (e.key === 'ArrowDown') {
      e.preventDefault();
      setSelectedIndex((prev) => (prev + 1) % results.length);
    } else if (e.key === 'ArrowUp') {
      e.preventDefault();
      setSelectedIndex((prev) => (prev - 1 + results.length) % results.length);
    } else if (e.key === 'Enter') {
      e.preventDefault();
      if (results[selectedIndex]) {
        handleSelectItem(results[selectedIndex]);
      }
    }
  };

  // Scroll active item into view
  useEffect(() => {
    if (!listRef.current) return;
    const activeEl = listRef.current.children[selectedIndex] as HTMLElement;
    if (activeEl) {
      activeEl.scrollIntoView({ block: 'nearest' });
    }
  }, [selectedIndex]);

  const handleSelectItem = (item: GlobalSearchResultItem) => {
    onClose();
    const identifier = encodeURIComponent(
      item.type === 'radical' ? item.slug || item.character : item.character || item.slug
    );
    router.push(`/${item.type}/${identifier}`);
  };

  if (!isOpen) return null;

  return (
    <div
      role="dialog"
      aria-modal="true"
      aria-label="Pencarian Kamus KaniGani"
      onClick={onClose}
      className="fixed inset-0 z-50 bg-slate-950/70 backdrop-blur-md flex items-start justify-center p-3 sm:p-4 md:p-6 pt-12 sm:pt-16 md:pt-20 transition-all duration-200 animate-fade-in"
    >
      <div
        onClick={(e) => e.stopPropagation()}
        className="w-full max-w-2xl bg-card rounded-2xl shadow-2xl border border-card-border overflow-hidden flex flex-col max-h-[82vh] transition-all"
      >
        {/* Search Bar Input */}
        <div className="flex items-center px-4 py-3.5 border-b border-card-border relative bg-card">
          <Search className="w-5 h-5 text-muted shrink-0 mr-3" />
          <input
            ref={inputRef}
            type="text"
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            onKeyDown={handleKeyDown}
            placeholder="Cari kanji, radikal, kosakata, arti, atau cara baca..."
            className="w-full bg-transparent text-primary placeholder-muted text-base sm:text-lg focus:outline-none"
          />

          <div className="flex items-center space-x-2 shrink-0 ml-2">
            {isLoading && (
              <Loader2 className="w-4 h-4 text-indigo-500 animate-spin" />
            )}

            {query && (
              <button
                type="button"
                onClick={() => {
                  setQuery('');
                  inputRef.current?.focus();
                }}
                className="min-h-[32px] min-w-[32px] p-1.5 rounded-lg text-muted hover:text-primary hover:bg-card-muted transition-colors flex items-center justify-center"
                title="Hapus"
              >
                <X className="w-4 h-4" />
              </button>
            )}

            <kbd className="hidden sm:inline-flex items-center px-2 py-0.5 text-xs font-bold text-muted bg-card-muted border border-card-border rounded-md">
              ESC
            </kbd>
          </div>
        </div>

        {/* Filter Pills */}
        <div className="flex items-center space-x-1.5 px-4 py-2.5 bg-card-muted/50 border-b border-card-border overflow-x-auto text-xs font-semibold">
          <button
            type="button"
            onClick={() => setSelectedType('all')}
            className={`px-3 py-1.5 rounded-lg transition-all cursor-pointer shrink-0 ${
              selectedType === 'all'
                ? 'bg-primary text-background shadow-xs'
                : 'text-muted hover:bg-card-muted hover:text-primary'
            }`}
          >
            Semua
          </button>
          <button
            type="button"
            onClick={() => setSelectedType('radical')}
            className={`px-3 py-1.5 rounded-lg transition-all cursor-pointer flex items-center space-x-1 shrink-0 ${
              selectedType === 'radical'
                ? 'bg-radical text-white shadow-xs'
                : 'text-radical hover:bg-radical/10'
            }`}
          >
            <span>部首</span>
            <span>Radikal</span>
          </button>
          <button
            type="button"
            onClick={() => setSelectedType('kanji')}
            className={`px-3 py-1.5 rounded-lg transition-all cursor-pointer flex items-center space-x-1 shrink-0 ${
              selectedType === 'kanji'
                ? 'bg-kanji text-white shadow-xs'
                : 'text-kanji hover:bg-kanji/10'
            }`}
          >
            <span>漢字</span>
            <span>Kanji</span>
          </button>
          <button
            type="button"
            onClick={() => setSelectedType('vocabulary')}
            className={`px-3 py-1.5 rounded-lg transition-all cursor-pointer flex items-center space-x-1 shrink-0 ${
              selectedType === 'vocabulary'
                ? 'bg-vocab text-white shadow-xs'
                : 'text-vocab hover:bg-vocab/10'
            }`}
          >
            <span>語彙</span>
            <span>Kosakata</span>
          </button>
        </div>

        {/* Search Results / Suggestion Body */}
        <div
          ref={listRef}
          className="flex-1 overflow-y-auto p-2 sm:p-3 space-y-1.5 min-h-[220px]"
        >
          {/* Initial / Empty Query State */}
          {!query.trim() && (
            <div className="py-8 px-4 text-center">
              <div className="inline-flex items-center justify-center w-12 h-12 rounded-2xl bg-indigo-500/10 text-indigo-500 mb-3">
                <Sparkles className="w-6 h-6" />
              </div>
              <h3 className="text-base font-bold text-primary">
                Pencarian Cepat Kamus KaniGani
              </h3>
              <p className="text-xs text-muted max-w-md mx-auto mt-1 leading-relaxed">
                Ketik huruf kanji (misal: <span className="font-semibold text-kanji">水</span>, <span className="font-semibold text-kanji">日</span>),
                arti bahasa Indonesia / Inggris (misal: <span className="font-semibold text-primary">air</span>, <span className="font-semibold text-primary">matahari</span>),
                atau cara baca Romaji & Kana (misal: <span className="font-semibold text-vocab">mizu</span>, <span className="font-semibold text-vocab">みず</span>).
              </p>

              <div className="flex flex-wrap items-center justify-center gap-2 mt-4 pt-3 border-t border-card-border">
                <span className="text-xs font-bold text-muted uppercase tracking-wider">Contoh cepat:</span>
                {['水', '日', '猫', 'mizu', 'melihat', 'senin'].map((sample) => (
                  <button
                    key={sample}
                    type="button"
                    onClick={() => {
                      setQuery(sample);
                      inputRef.current?.focus();
                    }}
                    className="px-2.5 py-1 rounded-lg text-xs font-semibold bg-card border border-card-border text-primary hover:bg-card-muted transition-colors"
                  >
                    {sample}
                  </button>
                ))}
              </div>
            </div>
          )}

          {/* No Results Found */}
          {query.trim() && !isLoading && results.length === 0 && (
            <div className="py-12 px-4 text-center">
              <BookOpen className="w-10 h-10 text-muted mx-auto mb-2 opacity-50" />
              <p className="text-sm font-semibold text-primary">
                Tidak ada item yang cocok dengan &quot;{query}&quot;
              </p>
              <p className="text-xs text-muted mt-1">
                Coba periksa ejaan, gunakan kata kunci lebih pendek, atau ganti tab kategori.
              </p>
            </div>
          )}

          {/* Results List */}
          {results.map((item, index) => {
            const cfg = TYPE_CONFIG[item.type];
            const isSelected = index === selectedIndex;

            return (
              <div
                key={`${item.type}-${item.id}`}
                onClick={() => handleSelectItem(item)}
                onMouseEnter={() => setSelectedIndex(index)}
                className={`group flex items-center justify-between p-2.5 sm:p-3 rounded-xl border transition-all cursor-pointer ${
                  isSelected
                    ? 'bg-card-muted border-card-border shadow-xs'
                    : 'bg-transparent border-transparent hover:bg-card-muted/40'
                } ${cfg.itemBg}`}
              >
                {/* Left: Character Badge & Info */}
                <div className="flex items-center space-x-3 sm:space-x-3.5 min-w-0">
                  <div
                    className={`w-11 h-11 sm:w-12 sm:h-12 rounded-xl flex items-center justify-center font-japanese font-bold text-xl sm:text-2xl shadow-xs shrink-0 select-none ${cfg.charBg}`}
                  >
                    <CharacterDisplay character={item.character} slug={item.slug} imgClassName="w-7 h-7" />
                  </div>

                  <div className="min-w-0">
                    <div className="flex items-center space-x-1.5 sm:space-x-2">
                      <span className="text-sm sm:text-base font-bold text-primary capitalize truncate">
                        {item.primary_meaning || item.slug}
                      </span>
                      <span className={`px-1.5 py-0.5 text-xs font-bold rounded uppercase tracking-wider border shrink-0 ${cfg.badgeBg}`}>
                        {cfg.label}
                      </span>
                      <span className="text-xs font-semibold text-muted shrink-0">
                        Lv. {item.level}
                      </span>
                    </div>

                    {item.primary_reading && (
                      <p className="text-xs text-muted font-japanese font-medium mt-0.5 truncate">
                        {item.primary_reading}
                      </p>
                    )}
                  </div>
                </div>

                {/* Right: Enter action indicator */}
                <div className="flex items-center space-x-1 text-muted group-hover:text-primary transition-colors shrink-0 pl-2">
                  <span className="hidden sm:inline text-xs font-semibold opacity-0 group-hover:opacity-100 transition-opacity">
                    Buka
                  </span>
                  <ArrowRight className="w-4 h-4" />
                </div>
              </div>
            );
          })}
        </div>

        {/* Modal Footer */}
        <div className="flex items-center justify-between px-4 py-2.5 bg-card-muted/50 border-t border-card-border text-xs text-muted font-medium">
          <div className="flex items-center space-x-3">
            <span className="flex items-center space-x-1">
              <kbd className="px-1.5 py-0.5 bg-card border border-card-border text-primary rounded shadow-2xs font-bold">
                ↑
              </kbd>
              <kbd className="px-1.5 py-0.5 bg-card border border-card-border text-primary rounded shadow-2xs font-bold">
                ↓
              </kbd>
              <span className="ml-1">Navigasi</span>
            </span>
            <span className="flex items-center space-x-1">
              <kbd className="px-1.5 py-0.5 bg-card border border-card-border text-primary rounded shadow-2xs font-bold flex items-center">
                <CornerDownLeft className="w-2.5 h-2.5 mr-0.5" /> Enter
              </kbd>
              <span className="ml-1">Pilih</span>
            </span>
          </div>

          <span className="hidden sm:inline text-muted">
            {results.length > 0 ? `${results.length} hasil ditemukan` : 'KaniGani Dictionary Search'}
          </span>
        </div>
      </div>
    </div>
  );
}
