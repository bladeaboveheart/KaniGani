'use client';

import { Home, ThumbsUp, Check, Inbox, Zap } from 'lucide-react';

interface QuizHeaderProps {
  onExit: () => void;
  title: string;
  accuracyPct?: number | null;
  completedCount?: number | null;
  remainingCount?: number | null;
  globalDevMode?: boolean;
  devMode?: boolean;
  setDevMode?: (val: boolean) => void;
}

export default function QuizHeader({
  onExit,
  title,
  accuracyPct = null,
  completedCount = null,
  remainingCount = null,
  globalDevMode = false,
  devMode = false,
  setDevMode
}: QuizHeaderProps) {
  return (
    <div className="absolute top-4 left-4 right-4 flex items-center justify-between text-white select-none w-[calc(100%-2rem)] z-20">
      <button
        type="button"
        onClick={onExit}
        title="Kembali ke Dashboard"
        className="flex items-center justify-center text-white/80 hover:text-white hover:scale-105 active:scale-95 transition-all w-8 h-8 rounded-lg hover:bg-white/10 cursor-pointer"
      >
        <Home className="w-5 h-5" />
      </button>

      <div className="flex items-center space-x-4 text-xs sm:text-sm font-bold text-white/90">
        {title && completedCount === null && (
          <span>{title}</span>
        )}

        {/* Accuracy stats - Reviews only */}
        {accuracyPct !== null && (
          <div className="flex items-center space-x-1" title="Akurasi Sesi">
            <ThumbsUp className="w-4 h-4 text-white/80" />
            <span>{accuracyPct}%</span>
          </div>
        )}

        {/* Completed count - Reviews only */}
        {completedCount !== null && (
          <div className="flex items-center space-x-1" title="Item Selesai">
            <Check className="w-4 h-4 text-white/85" />
            <span>{completedCount}</span>
          </div>
        )}

        {/* Remaining count - Reviews only */}
        {remainingCount !== null && (
          <div className="flex items-center space-x-1" title="Item Tersisa">
            <Inbox className="w-4 h-4 text-white/85" />
            <span>{remainingCount}</span>
          </div>
        )}

        {/* Dev Mode Toggle */}
        {globalDevMode && setDevMode && (
          <button
            type="button"
            onClick={() => setDevMode(!devMode)}
            title={devMode ? 'Dev Mode: ON (klik untuk matikan)' : 'Dev Mode: OFF (klik untuk aktifkan autofill)'}
            className={`flex items-center space-x-1 px-2 py-0.5 rounded-lg text-xs font-bold transition-all duration-200 cursor-pointer ${
              devMode
                ? 'bg-amber-400/90 text-amber-900 shadow-sm border border-amber-300'
                : 'bg-white/10 text-white/60 hover:bg-white/20 hover:text-white border border-transparent'
            }`}
          >
            <Zap className="w-3.5 h-3.5" />
            {devMode && <span>DEV</span>}
          </button>
        )}
      </div>
    </div>
  );
}
