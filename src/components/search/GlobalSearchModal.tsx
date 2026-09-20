'use client';

import React, { useState, useEffect, useRef, useTransition } from 'react';
import { useRouter } from 'next/navigation';
import { Search, X, Loader2, ArrowRight } from 'lucide-react';
import { searchGlobalItems, GlobalSearchResultItem } from '@/services/itemsService';
import CharacterDisplay from '@/components/CharacterDisplay';

interface GlobalSearchModalProps {
  isOpen: boolean;
  onClose: () => void;
}

const TYPE_CONFIG = {
  radical: {
    label: 'Radikal',
    badgeBg: 'bg-radical/10 text-radical border-radical/20',
    itemBg: 'hover:border-radical/40 hover:bg-radical/5',
    charBg: 'bg-radical text-white',
  },
  kanji: {
    label: 'Kanji',
    badgeBg: 'bg-kanji/10 text-kanji border-kanji/20',
    itemBg: 'hover:border-kanji/40 hover:bg-kanji/5',
    charBg: 'bg-kanji text-white',
  },
  vocabulary: {
    label: 'Kosakata',
    badgeBg: 'bg-vocab/10 text-vocab border-vocab/20',
    itemBg: 'hover:border-vocab/40 hover:bg-vocab/5',
    charBg: 'bg-vocab text-white',
  },
};

export default function GlobalSearchModal({ isOpen, onClose }: GlobalSearchModalProps) {
  const router = useRouter();
  const [query, setQuery] = useState('');
  const [results, setResults] = useState<GlobalSearchResultItem[]>([]);
  const [isLoading, setIsLoading] = useState(false);
  const [selectedIndex, setSelectedIndex] = useState(0);
  const [_isPending, startTransition] = useTransition();

  const modalRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLInputElement>(null);
  const listRef = useRef<HTMLDivElement>(null);

  // Focus input when opened & lock scroll
  useEffect(() => {
    if (isOpen) {
      document.body.style.overflow = 'hidden';
      const timer = setTimeout(() => {
        inputRef.current?.focus();
      }, 30);
      return () => {
        clearTimeout(timer);
        document.body.style.overflow = '';
      };
    } else {
      document.body.style.overflow = '';
      setQuery('');
      setResults([]);
      setSelectedIndex(0);
    }
  }, [isOpen]);

  // Click outside to cancel / close
  useEffect(() => {
    if (!isOpen) return;

    const handlePointerDownOutside = (e: MouseEvent | TouchEvent) => {
      if (modalRef.current && !modalRef.current.contains(e.target as Node)) {
        onClose();
      }
    };

    document.addEventListener('mousedown', handlePointerDownOutside);
    document.addEventListener('touchstart', handlePointerDownOutside);

    return () => {
      document.removeEventListener('mousedown', handlePointerDownOutside);
      document.removeEventListener('touchstart', handlePointerDownOutside);
    };
  }, [isOpen, onClose]);

  // Debounced search
  useEffect(() => {
    if (!isOpen) return;

    const trimmed = query.trim();
    if (!trimmed) {
      setResults([]);
      setIsLoading(false);
      return;
    }

    const timer = setTimeout(async () => {
      setIsLoading(true);
      try {
        const data = await searchGlobalItems(trimmed, 'all', 20);
        startTransition(() => {
          setResults(data);
          setSelectedIndex(0);
          setIsLoading(false);
        });
      } catch (err) {
        console.error('Failed to search items:', err);
        setIsLoading(false);
      }
    }, 150);

    return () => clearTimeout(timer);
  }, [query, isOpen]);

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
      className="fixed inset-0 z-50 bg-slate-950/60 backdrop-blur-sm flex items-start justify-center p-3 sm:p-4 pt-16 sm:pt-24 transition-all duration-200 animate-fade-in"
    >
      <div
        ref={modalRef}
        className="w-full max-w-xl bg-card rounded-2xl shadow-2xl border border-card-border overflow-hidden flex flex-col transition-all duration-200"
      >
        {/* Minimalist Floating Search Input Bar */}
        <div className="flex items-center px-4 py-3.5 relative bg-card">
          <Search className="w-5 h-5 text-muted shrink-0 mr-3" />
          <input
            ref={inputRef}
            type="text"
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            onKeyDown={handleKeyDown}
            placeholder="Cari kanji, radikal, kosakata, arti..."
            className="w-full bg-transparent text-primary placeholder-muted text-sm sm:text-base focus:outline-none"
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
                className="p-1 rounded-lg text-muted hover:text-primary hover:bg-card-muted transition-colors flex items-center justify-center cursor-pointer"
                title="Hapus pencarian"
              >
                <X className="w-4 h-4" />
              </button>
            )}

            <kbd
              onClick={onClose}
              className="inline-flex items-center px-2 py-0.5 text-[10px] font-bold text-muted bg-card-muted border border-card-border rounded-md cursor-pointer hover:text-primary"
              title="Tutup (ESC)"
            >
              ESC
            </kbd>
          </div>
        </div>

        {/* Dynamic Results Container (only shown when user types) */}
        {query.trim().length > 0 && (
          <div
            ref={listRef}
            className="border-t border-card-border max-h-[60vh] overflow-y-auto p-2 space-y-1 divide-y divide-card-border/30"
          >
            {/* No Results Message */}
            {!isLoading && results.length === 0 && (
              <div className="py-8 px-4 text-center">
                <p className="text-xs sm:text-sm font-medium text-muted">
                  Tidak ada item yang cocok dengan &quot;{query}&quot;
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
                  className={`group flex items-center justify-between p-2.5 rounded-xl border transition-all cursor-pointer ${
                    isSelected
                      ? 'bg-card-muted border-card-border shadow-xs'
                      : 'bg-transparent border-transparent hover:bg-card-muted/40'
                  } ${cfg.itemBg}`}
                >
                  {/* Left: Character Badge & Info */}
                  <div className="flex items-center space-x-3 min-w-0">
                    <div
                      className={`w-10 h-10 rounded-xl flex items-center justify-center font-japanese font-bold text-lg shadow-xs shrink-0 select-none ${cfg.charBg}`}
                    >
                      <CharacterDisplay character={item.character} slug={item.slug} imgClassName="w-6 h-6" />
                    </div>

                    <div className="min-w-0">
                      <div className="flex items-center space-x-2">
                        <span className="text-sm font-bold text-primary capitalize truncate">
                          {item.primary_meaning || item.slug}
                        </span>
                        <span className={`px-1.5 py-0.5 text-[10px] font-bold rounded uppercase tracking-wider border shrink-0 ${cfg.badgeBg}`}>
                          {cfg.label}
                        </span>
                        <span className="text-[11px] font-medium text-muted shrink-0">
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

                  {/* Right: Select indicator */}
                  <div className="flex items-center space-x-1 text-muted group-hover:text-primary transition-colors shrink-0 pl-2">
                    <ArrowRight className="w-4 h-4" />
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}
