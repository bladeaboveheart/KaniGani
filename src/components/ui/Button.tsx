import React from 'react';
import { Loader2 } from 'lucide-react';

export interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  variant?:
    | 'primary'
    | 'secondary'
    | 'outline'
    | 'ghost'
    | 'danger'
    | 'radical'
    | 'kanji'
    | 'vocab';
  size?: 'sm' | 'md' | 'lg' | 'icon';
  loading?: boolean;
}

export const Button = React.forwardRef<HTMLButtonElement, ButtonProps>(
  (
    {
      variant = 'primary',
      size = 'md',
      loading = false,
      disabled = false,
      className = '',
      children,
      ...props
    },
    ref
  ) => {
    const variantStyles = {
      primary:
        'bg-indigo-600 hover:bg-indigo-700 text-white shadow-sm hover:shadow active:scale-[0.98] border border-transparent',
      secondary:
        'bg-card hover:bg-card-muted text-text-primary border border-card-border shadow-xs active:scale-[0.98]',
      outline:
        'bg-transparent hover:bg-card-muted text-text-primary border border-card-border active:scale-[0.98]',
      ghost:
        'bg-transparent hover:bg-card-muted text-text-secondary hover:text-text-primary border border-transparent',
      danger:
        'bg-rose-600 hover:bg-rose-700 text-white shadow-sm active:scale-[0.98] border border-transparent',
      radical:
        'bg-radical hover:bg-radical-hover text-white shadow-sm active:scale-[0.98] border border-transparent',
      kanji:
        'bg-kanji hover:bg-kanji-hover text-white shadow-sm active:scale-[0.98] border border-transparent',
      vocab:
        'bg-vocab hover:bg-vocab-hover text-white shadow-sm active:scale-[0.98] border border-transparent',
    };

    const sizeStyles = {
      sm: 'min-h-[40px] px-3.5 py-1.5 text-xs font-bold rounded-xl gap-1.5',
      md: 'min-h-[44px] px-4 sm:px-5 py-2.5 text-xs sm:text-sm font-bold rounded-xl sm:rounded-2xl gap-2',
      lg: 'min-h-[48px] px-6 py-3 text-sm sm:text-base font-extrabold rounded-2xl gap-2.5',
      icon: 'min-h-[40px] min-w-[40px] p-2 sm:p-2.5 rounded-xl justify-center',
    };

    return (
      <button
        ref={ref}
        disabled={disabled || loading}
        className={`inline-flex items-center justify-center font-bold transition-all duration-200 cursor-pointer select-none focus:outline-none focus-visible:ring-2 focus-visible:ring-indigo-500 disabled:opacity-50 disabled:cursor-not-allowed disabled:pointer-events-none ${variantStyles[variant]} ${sizeStyles[size]} ${className}`}
        {...props}
      >
        {loading && <Loader2 className="w-4 h-4 animate-spin shrink-0" />}
        {children}
      </button>
    );
  }
);

Button.displayName = 'Button';
