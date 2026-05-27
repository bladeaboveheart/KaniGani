'use client';

export default function CrabBackground() {
  return (
    <div className="absolute inset-0 z-0 pointer-events-none opacity-15 dark:opacity-8">
      {/* Giant Floating Crab Left */}
      <svg className="absolute -left-20 top-20 w-80 h-80 text-rose-500 fill-current animate-pulse" viewBox="0 0 100 100">
        <path d="M50 30 C30 30 20 45 20 60 C20 70 30 80 50 80 C70 80 80 70 80 60 C80 45 70 30 50 30 Z" />
        <circle cx="35" cy="50" r="4" fill="white" />
        <circle cx="65" cy="50" r="4" fill="white" />
        {/* Eyes */}
        <circle cx="35" cy="50" r="2" fill="black" />
        <circle cx="65" cy="50" r="2" fill="black" />
        {/* Pincers (Cakar) */}
        <path d="M15 40 Q5 35 10 20 Q20 20 20 35 Z" />
        <path d="M85 40 Q95 35 90 20 Q80 20 80 35 Z" />
        {/* Legs */}
        <path d="M10 65 L2 70" stroke="currentColor" strokeWidth="3" strokeLinecap="round" />
        <path d="M12 73 L4 80" stroke="currentColor" strokeWidth="3" strokeLinecap="round" />
        <path d="M90 65 L98 70" stroke="currentColor" strokeWidth="3" strokeLinecap="round" />
        <path d="M88 73 L96 80" stroke="currentColor" strokeWidth="3" strokeLinecap="round" />
      </svg>

      {/* Small Floating Crab Right */}
      <svg className="absolute -right-10 bottom-20 w-60 h-60 text-indigo-500 fill-current" viewBox="0 0 100 100" style={{ transform: 'rotate(-15deg)' }}>
        <path d="M50 30 C30 30 20 45 20 60 C20 70 30 80 50 80 C70 80 80 70 80 60 C80 45 70 30 50 30 Z" />
        <circle cx="35" cy="50" r="3" fill="white" />
        <circle cx="65" cy="50" r="3" fill="white" />
        {/* Eyes */}
        <circle cx="35" cy="50" r="1.5" fill="black" />
        <circle cx="65" cy="50" r="1.5" fill="black" />
        {/* Pincers */}
        <path d="M15 40 Q5 35 10 20 Q20 20 20 35 Z" />
        <path d="M85 40 Q95 35 90 20 Q80 20 80 35 Z" />
        {/* Legs */}
        <path d="M10 65 L2 70" stroke="currentColor" strokeWidth="2" strokeLinecap="round" />
        <path d="M90 65 L98 70" stroke="currentColor" strokeWidth="2" strokeLinecap="round" />
      </svg>

      {/* Floating Bubble effects */}
      <div className="absolute top-1/3 left-1/4 w-6 h-6 rounded-full border-2 border-indigo-400/30 dark:border-indigo-500/10 animate-bounce" style={{ animationDuration: '4s' }}></div>
      <div className="absolute bottom-1/4 right-1/3 w-10 h-10 rounded-full border-2 border-rose-400/30 dark:border-rose-500/10 animate-bounce" style={{ animationDuration: '6s' }}></div>
      <div className="absolute top-2/3 right-10 w-4 h-4 rounded-full border-2 border-teal-400/30 dark:border-teal-500/10 animate-bounce" style={{ animationDuration: '3s' }}></div>
    </div>
  );
}
