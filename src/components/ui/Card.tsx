import React from 'react';

export interface CardProps extends React.HTMLAttributes<HTMLDivElement> {
  variant?: 'default' | 'glass' | 'subtle';
  padding?: 'none' | 'compact' | 'default' | 'spacious';
}

export function Card({
  variant = 'default',
  padding = 'default',
  className = '',
  children,
  ...props
}: CardProps) {
  const variantStyles = {
    default: 'bg-card border border-card-border shadow-xs',
    glass: 'glass-panel shadow-xs',
    subtle: 'bg-card-muted border border-card-border/60 shadow-none',
  };

  const paddingStyles = {
    none: 'p-0',
    compact: 'p-4 sm:p-5',
    default: 'p-5 sm:p-6 lg:p-8',
    spacious: 'p-6 sm:p-8 lg:p-10',
  };

  return (
    <div
      className={`rounded-2xl sm:rounded-3xl transition-colors duration-200 ${variantStyles[variant]} ${paddingStyles[padding]} ${className}`}
      {...props}
    >
      {children}
    </div>
  );
}

export function CardHeader({
  className = '',
  children,
  ...props
}: React.HTMLAttributes<HTMLDivElement>) {
  return (
    <div
      className={`flex flex-col space-y-1.5 pb-4 border-b border-card-border/60 ${className}`}
      {...props}
    >
      {children}
    </div>
  );
}

export function CardTitle({
  className = '',
  children,
  ...props
}: React.HTMLAttributes<HTMLHeadingElement>) {
  return (
    <h3
      className={`font-black text-lg sm:text-xl tracking-tight text-text-primary ${className}`}
      {...props}
    >
      {children}
    </h3>
  );
}

export function CardDescription({
  className = '',
  children,
  ...props
}: React.HTMLAttributes<HTMLParagraphElement>) {
  return (
    <p
      className={`text-xs sm:text-sm text-text-muted leading-relaxed ${className}`}
      {...props}
    >
      {children}
    </p>
  );
}

export function CardContent({
  className = '',
  children,
  ...props
}: React.HTMLAttributes<HTMLDivElement>) {
  return (
    <div className={`pt-4 ${className}`} {...props}>
      {children}
    </div>
  );
}

export function CardFooter({
  className = '',
  children,
  ...props
}: React.HTMLAttributes<HTMLDivElement>) {
  return (
    <div
      className={`flex items-center pt-4 border-t border-card-border/60 ${className}`}
      {...props}
    >
      {children}
    </div>
  );
}
