'use client';

import React from 'react';
import { PartOfSpeechMeta, getPartOfSpeechMeta } from '@/lib/partsOfSpeech';

interface PartOfSpeechBadgeProps {
  item: PartOfSpeechMeta | string;
  size?: 'xs' | 'sm' | 'md';
  className?: string;
}

export const PartOfSpeechBadge: React.FC<PartOfSpeechBadgeProps> = ({
  item,
  size = 'sm',
  className = '',
}) => {
  const meta: PartOfSpeechMeta = typeof item === 'string' ? getPartOfSpeechMeta(item) : item;

  const sizeClasses = {
    xs: 'text-[10px] px-1.5 py-0.5 gap-1',
    sm: 'text-xs px-2.5 py-0.5 gap-1.5',
    md: 'text-sm px-3 py-1 gap-2',
  }[size];

  // Specific subtle styling accents if transitivity
  let variantClasses = 'bg-slate-100 text-slate-700 border-slate-200/80 dark:bg-slate-800/80 dark:text-slate-300 dark:border-slate-700/70';
  
  if (meta.isTransitivity) {
    if (meta.raw.includes('intransitive')) {
      variantClasses = 'bg-amber-500/10 text-amber-700 border-amber-500/20 dark:bg-amber-500/15 dark:text-amber-300 dark:border-amber-500/30';
    } else {
      variantClasses = 'bg-sky-500/10 text-sky-700 border-sky-500/20 dark:bg-sky-500/15 dark:text-sky-300 dark:border-sky-500/30';
    }
  }

  const tooltip = meta.description
    ? `${meta.englishLabel} • ${meta.description}`
    : meta.englishLabel;

  return (
    <span
      className={`inline-flex items-center font-medium rounded-full border transition-colors select-none ${sizeClasses} ${variantClasses} ${className}`}
      title={tooltip}
      aria-label={`Jenis kata: ${meta.label} (${meta.englishLabel})`}
    >
      {meta.isTransitivity && (
        <span
          className={`w-1.5 h-1.5 rounded-full ${
            meta.raw.includes('intransitive') ? 'bg-amber-500' : 'bg-sky-500'
          }`}
          aria-hidden="true"
        />
      )}
      <span>{meta.label}</span>
    </span>
  );
};

interface PartOfSpeechListProps {
  partsOfSpeech?: string[] | null;
  size?: 'xs' | 'sm' | 'md';
  className?: string;
}

export const PartOfSpeechList: React.FC<PartOfSpeechListProps> = ({
  partsOfSpeech,
  size = 'sm',
  className = '',
}) => {
  if (!partsOfSpeech || !Array.isArray(partsOfSpeech) || partsOfSpeech.length === 0) {
    return null;
  }

  return (
    <div className={`flex flex-wrap items-center gap-1.5 ${className}`}>
      {partsOfSpeech.map((pos, idx) => (
        <PartOfSpeechBadge key={`${pos}-${idx}`} item={pos} size={size} />
      ))}
    </div>
  );
};

export default PartOfSpeechBadge;
