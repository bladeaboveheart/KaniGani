import React from 'react';

export type BadgeVariant =
  | 'neutral'
  | 'radical'
  | 'kanji'
  | 'vocab'
  | 'indigo'
  | 'rose'
  | 'emerald'
  | 'amber';

export interface BadgeProps extends React.HTMLAttributes<HTMLSpanElement> {
  variant?: BadgeVariant;
  size?: 'sm' | 'md';
}

export function Badge({
  variant = 'neutral',
  size = 'md',
  className = '',
  children,
  ...props
}: BadgeProps) {
  const variantStyles: Record<BadgeVariant, string> = {
    neutral:
      'bg-slate-100 dark:bg-slate-800 text-slate-700 dark:text-slate-300 border border-slate-200 dark:border-slate-700',
    radical:
      'bg-radical/10 text-radical border border-radical/25 dark:border-radical/30',
    kanji:
      'bg-kanji/10 text-kanji border border-kanji/25 dark:border-kanji/30',
    vocab:
      'bg-vocab/10 text-vocab border border-vocab/25 dark:border-vocab/30',
    indigo:
      'bg-indigo-50 dark:bg-indigo-950/50 text-indigo-600 dark:text-indigo-400 border border-indigo-200/60 dark:border-indigo-900/60',
    rose:
      'bg-rose-50 dark:bg-rose-950/50 text-rose-600 dark:text-rose-400 border border-rose-200/60 dark:border-rose-900/60',
    emerald:
      'bg-emerald-50 dark:bg-emerald-950/50 text-emerald-600 dark:text-emerald-400 border border-emerald-200/60 dark:border-emerald-900/60',
    amber:
      'bg-amber-50 dark:bg-amber-950/50 text-amber-600 dark:text-amber-400 border border-amber-200/60 dark:border-amber-900/60',
  };

  const sizeStyles = {
    sm: 'text-[10px] font-bold px-2 py-0.5 rounded-md tracking-wider uppercase',
    md: 'text-xs font-bold px-2.5 py-1 rounded-lg tracking-wide',
  };

  return (
    <span
      className={`inline-flex items-center justify-center font-semibold transition-colors duration-150 select-none ${variantStyles[variant]} ${sizeStyles[size]} ${className}`}
      {...props}
    >
      {children}
    </span>
  );
}
