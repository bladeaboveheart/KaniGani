'use client';

import React from 'react';
import { BookOpen } from 'lucide-react';
import { UserSynonymsEditor } from '@/components/user-annotations';

interface ItemMeaningBlockProps {
  primaryMeaning: string;
  meanings: any[];
  itemId: string;
  userSynonyms?: any[];
  onItemUpdated?: (updatedFields: any) => void;
  variant?: 'modal' | 'full';
}

export default function ItemMeaningBlock({
  primaryMeaning,
  meanings,
  itemId,
  userSynonyms,
  onItemUpdated,
  variant = 'modal',
}: ItemMeaningBlockProps) {
  const altList = (meanings || [])
    .filter(
      (m: any) =>
        !m.primary_meaning &&
        m.meaning &&
        m.meaning.toLowerCase().trim() !== primaryMeaning.toLowerCase().trim()
    )
    .map((m: any) => m.meaning.trim());

  const uniqueAlts = Array.from(new Set(altList));
  const alternativeMeaningsText = uniqueAlts.length > 0 ? uniqueAlts.join(', ') : '-';

  if (variant === 'full') {
    return (
      <div className="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800/80 rounded-3xl p-6 sm:p-7 space-y-4 shadow-sm">
        <div className="flex items-center justify-between">
          <h2 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest flex items-center space-x-2">
            <BookOpen className="w-4 h-4 text-teal-500" />
            <span>Arti Karakter (Meanings)</span>
          </h2>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 bg-slate-50/70 dark:bg-slate-800/40 p-4 sm:p-5 rounded-2xl border border-slate-200/70 dark:border-slate-700/60">
          {/* Sub-kolom 1: Arti Utama */}
          <div>
            <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
              Arti Utama
            </h3>
            <p className="text-xl font-bold text-teal-600 dark:text-teal-400 mt-1 capitalize">
              {primaryMeaning}
            </p>
          </div>

          {/* Sub-kolom 2: Arti Alternatif */}
          <div className="border-t sm:border-t-0 sm:border-l border-slate-200/60 dark:border-slate-700/60 pt-3 sm:pt-0 sm:pl-5 space-y-3">
            <div>
              <h3 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">
                Arti Alternatif
              </h3>
              <p
                className={`text-sm font-semibold mt-1 ${
                  alternativeMeaningsText === '-'
                    ? 'text-slate-400 dark:text-slate-500'
                    : 'text-slate-800 dark:text-slate-200'
                }`}
              >
                {alternativeMeaningsText}
              </p>
            </div>

            {/* User Synonyms */}
            <div className="pt-2 border-t border-slate-200/60 dark:border-slate-700/60">
              <UserSynonymsEditor
                itemId={itemId}
                initialSynonyms={userSynonyms}
                onSynonymsChange={(syns) => {
                  if (onItemUpdated) {
                    onItemUpdated({ user_synonyms: syns });
                  }
                }}
              />
            </div>
          </div>
        </div>
      </div>
    );
  }

  // Modal variant
  return (
    <div className="space-y-2">
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-3.5 bg-card-muted/40 p-3.5 sm:p-4 rounded-2xl border border-card-border">
        {/* Sub-kolom 1: Arti Utama */}
        <div>
          <h3 className="text-xs font-bold text-muted uppercase tracking-widest block">
            Arti Utama
          </h3>
          <p className="text-lg font-bold text-teal-600 dark:text-teal-400 mt-1 capitalize">
            {primaryMeaning}
          </p>
        </div>

        {/* Sub-kolom 2: Arti Alternatif */}
        <div className="border-t sm:border-t-0 sm:border-l border-card-border pt-3 sm:pt-0 sm:pl-4 space-y-2">
          <div>
            <h3 className="text-xs font-bold text-muted uppercase tracking-widest block">
              Arti Alternatif
            </h3>
            <p
              className={`text-sm font-semibold mt-1 ${
                alternativeMeaningsText === '-' ? 'text-muted' : 'text-primary'
              }`}
            >
              {alternativeMeaningsText}
            </p>
          </div>

          {/* User Synonyms */}
          <div className="pt-2 border-t border-card-border">
            <UserSynonymsEditor
              itemId={itemId}
              initialSynonyms={userSynonyms}
              onSynonymsChange={(syns) => {
                if (onItemUpdated) {
                  onItemUpdated({ user_synonyms: syns });
                }
              }}
            />
          </div>
        </div>
      </div>
    </div>
  );
}
