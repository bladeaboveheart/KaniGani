import React from 'react';

export interface InputProps extends React.InputHTMLAttributes<HTMLInputElement> {
  leftIcon?: React.ReactNode;
  rightIcon?: React.ReactNode;
  error?: string;
  label?: string;
}

export const Input = React.forwardRef<HTMLInputElement, InputProps>(
  ({ leftIcon, rightIcon, error, label, className = '', id, ...props }, ref) => {
    const inputId = id || (label ? label.toLowerCase().replace(/\s+/g, '-') : undefined);

    return (
      <div className="w-full space-y-1.5">
        {label && (
          <label
            htmlFor={inputId}
            className="block text-[11px] font-extrabold uppercase tracking-widest text-text-muted"
          >
            {label}
          </label>
        )}
        <div className="relative flex items-center">
          {leftIcon && (
            <div className="absolute left-3.5 flex items-center pointer-events-none text-text-muted">
              {leftIcon}
            </div>
          )}
          <input
            id={inputId}
            ref={ref}
            className={`w-full min-h-[44px] py-2.5 text-xs sm:text-sm font-semibold rounded-xl bg-card-muted/70 text-text-primary border transition-all duration-200 placeholder:text-text-muted/60 focus:outline-none focus:ring-2 focus:ring-indigo-500/40 focus:border-indigo-500 disabled:opacity-50 disabled:cursor-not-allowed ${
              leftIcon ? 'pl-10' : 'pl-4'
            } ${rightIcon ? 'pr-10' : 'pr-4'} ${
              error
                ? 'border-rose-500/80 focus:ring-rose-500/40 focus:border-rose-500'
                : 'border-card-border hover:border-slate-400 dark:hover:border-slate-600'
            } ${className}`}
            {...props}
          />
          {rightIcon && (
            <div className="absolute right-3.5 flex items-center text-text-muted">
              {rightIcon}
            </div>
          )}
        </div>
        {error && (
          <p className="text-xs font-semibold text-rose-500 animate-fade-in">
            {error}
          </p>
        )}
      </div>
    );
  }
);

Input.displayName = 'Input';
