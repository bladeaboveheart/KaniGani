'use client';

import React from 'react';
import Link from 'next/link';
import { Layers } from 'lucide-react';
import CharacterDisplay from '@/components/CharacterDisplay';

interface RelationItem {
  id: string;
  character?: string;
  slug?: string;
  type?: string;
}

interface ItemRelationsBlockProps {
  type: 'radical' | 'kanji' | 'vocabulary' | string;
  radicals?: RelationItem[];
  kanjis?: RelationItem[];
  vocabularies?: RelationItem[];
  variant?: 'modal' | 'full';
  onNavigateItem?: (item: any) => void;
  onClose?: () => void;
}

export default function ItemRelationsBlock({
  type,
  radicals = [],
  kanjis = [],
  vocabularies = [],
  variant = 'modal',
  onNavigateItem,
  onClose,
}: ItemRelationsBlockProps) {
  const isFull = variant === 'full';

  const renderCard = (
    item: RelationItem,
    targetType: string,
    colorClass: { text: string; bg: string; border: string; borderHover: string }
  ) => {
    const content = (
      <>
        <span
          className={`${
            isFull ? 'text-3xl' : 'text-2xl'
          } font-black ${
            targetType !== 'radical' ? 'font-japanese' : ''
          } ${colorClass.text} group-hover:scale-110 transition-transform leading-tight block truncate max-w-full px-1`}
        >
          {targetType === 'radical' ? (
            <CharacterDisplay
              character={item.character || '—'}
              slug={item.slug}
              imgClassName={isFull ? 'w-8 h-8' : 'w-7 h-7'}
            />
          ) : (
            item.character || item.slug
          )}
        </span>
        <span
          className={`${
            isFull ? 'text-4xs text-slate-500 dark:text-slate-400 mt-1.5' : 'text-[10px] text-muted mt-1'
          } uppercase tracking-wider font-semibold truncate max-w-full block`}
        >
          {item.slug}
        </span>
      </>
    );

    const baseClassName = `${
      isFull ? 'p-3.5 rounded-2xl' : 'p-3 rounded-xl'
    } ${colorClass.bg} ${colorClass.border} ${colorClass.borderHover} hover:shadow-xs flex flex-col items-center justify-center text-center group cursor-pointer transition-all duration-200 hover:-translate-y-0.5`;

    if (isFull) {
      const identifier = encodeURIComponent(item.character || item.slug || '');
      return (
        <Link key={item.id} href={`/${targetType}/${identifier}`} className={baseClassName}>
          {content}
        </Link>
      );
    }

    return (
      <div
        key={item.id}
        onClick={() => {
          if (onNavigateItem) {
            onNavigateItem(item);
          } else if (onClose) {
            onClose();
          }
        }}
        className={baseClassName}
      >
        {content}
      </div>
    );
  };

  const renderSection = (
    title: string,
    items: RelationItem[],
    targetType: string,
    badgeColor: string,
    titleColor: string,
    colors: { text: string; bg: string; border: string; borderHover: string }
  ) => {
    if (!items || items.length === 0) return null;

    return (
      <div
        className={
          isFull
            ? 'bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 space-y-3 shadow-sm'
            : 'space-y-3 pt-4 border-t border-card-border'
        }
      >
        <div className="flex items-center justify-between">
          <h3
            className={`${
              isFull ? 'text-xxs' : 'text-xs'
            } font-bold ${titleColor} uppercase tracking-widest block flex items-center space-x-1.5`}
          >
            <Layers className="w-3.5 h-3.5" />
            <span>{title}</span>
          </h3>
          <span
            className={`${
              isFull ? 'text-xxs' : 'text-xs'
            } font-bold ${badgeColor} px-2 py-0.5 rounded-full border`}
          >
            {items.length}
          </span>
        </div>
        <div
          className={`grid grid-cols-2 ${
            isFull ? 'gap-2.5 max-h-[250px]' : 'gap-2 max-h-[220px]'
          } overflow-y-auto pr-1.5 custom-scrollbar`}
        >
          {items.map((it) => renderCard(it, targetType, colors))}
        </div>
      </div>
    );
  };

  return (
    <>
      {/* 1. Radicals composed in Kanji */}
      {renderSection(
        'Terdiri Dari Radikal',
        radicals,
        'radical',
        'text-cyan-600 dark:text-cyan-400 bg-cyan-50 dark:bg-cyan-950/40 border-cyan-200/60 dark:border-cyan-900/50',
        'text-cyan-500',
        {
          text: 'text-radical',
          bg: 'bg-radical/5 dark:bg-radical/10',
          border: 'border-radical/15',
          borderHover: 'hover:border-radical/40',
        }
      )}

      {/* 2. Kanjis in Vocab or Radicals in Kanji */}
      {renderSection(
        type === 'vocabulary' ? 'Terdiri Dari Kanji' : 'Ditemukan di Kanji',
        kanjis,
        'kanji',
        'text-pink-600 dark:text-pink-400 bg-pink-50 dark:bg-pink-950/40 border-pink-200/60 dark:border-pink-900/50',
        'text-pink-500',
        {
          text: 'text-kanji',
          bg: 'bg-kanji/5 dark:bg-kanji/10',
          border: 'border-kanji/15',
          borderHover: 'hover:border-kanji/40',
        }
      )}

      {/* 3. Vocabularies where Kanji is found */}
      {renderSection(
        'Ditemukan di Kosakata',
        vocabularies,
        'vocabulary',
        'text-purple-600 dark:text-purple-400 bg-purple-50 dark:bg-purple-950/40 border-purple-200/60 dark:border-purple-900/50',
        'text-purple-500',
        {
          text: 'text-vocab',
          bg: 'bg-vocab/5 dark:bg-vocab/10',
          border: 'border-vocab/15',
          borderHover: 'hover:border-vocab/40',
        }
      )}
    </>
  );
}
