import React from 'react';
import { getSrsLabel, getSrsColorClass } from '@/lib/srs';

export interface SrsBadgeProps extends React.HTMLAttributes<HTMLSpanElement> {
  stage: number;
  size?: 'sm' | 'md';
  showStageNumber?: boolean;
}

export function SrsBadge({
  stage,
  size = 'md',
  showStageNumber = false,
  className = '',
  ...props
}: SrsBadgeProps) {
  const label = getSrsLabel(stage);
  const colorClass = getSrsColorClass(stage);

  const sizeStyles = {
    sm: 'text-[10px] font-bold px-2 py-0.5 rounded-md tracking-wider uppercase',
    md: 'text-xs font-bold px-2.5 py-1 rounded-lg tracking-wide',
  };

  return (
    <span
      className={`inline-flex items-center justify-center font-bold transition-colors select-none ${colorClass} ${sizeStyles[size]} ${className}`}
      {...props}
    >
      {label}
      {showStageNumber && stage > 0 && stage <= 8 && (
        <span className="ml-1 opacity-70 text-[9px]">({stage})</span>
      )}
    </span>
  );
}
