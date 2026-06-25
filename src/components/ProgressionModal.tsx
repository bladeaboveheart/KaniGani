'use client';

import { useEffect, useState } from 'react';
import { Award, Star, ArrowUp, Sparkles } from 'lucide-react';

interface ProgressionModalProps {
  isOpen: boolean;
  onClose: () => void;
  type: 'rank' | 'level';
  newRankName: string;
}

export default function ProgressionModal({
  isOpen,
  onClose,
  type,
  newRankName,
}: ProgressionModalProps) {
  const [show, setShow] = useState(false);

  useEffect(() => {
    if (isOpen) {
      setShow(true);
    } else {
      setShow(false);
    }
  }, [isOpen]);

  if (!isOpen) return null;

  const isLevelUp = type === 'level';

  return (
    <div className={`fixed inset-0 z-50 flex items-center justify-center p-4 transition-opacity duration-300 ${show ? 'opacity-100' : 'opacity-0 pointer-events-none'}`}>
      {/* Backdrop with Blur */}
      <div 
        onClick={onClose}
        className="absolute inset-0 bg-slate-950/70 backdrop-blur-md transition-all duration-300"
      />

      {/* Floating Confetti Elements (CSS Only) */}
      <div className="absolute inset-0 overflow-hidden pointer-events-none select-none">
        {Array.from({ length: 24 }).map((_, i) => {
          const left = Math.random() * 100;
          const delay = Math.random() * 4;
          const duration = 2 + Math.random() * 3;
          const size = 6 + Math.random() * 10;
          const colors = ['bg-pink-500', 'bg-indigo-500', 'bg-yellow-400', 'bg-teal-400', 'bg-rose-400', 'bg-purple-500'];
          const randomColor = colors[Math.floor(Math.random() * colors.length)];
          
          return (
            <div
              key={i}
              className={`absolute top-0 rounded-full animate-fall ${randomColor}`}
              style={{
                left: `${left}%`,
                width: `${size}px`,
                height: `${size}px`,
                animationDelay: `${delay}s`,
                animationDuration: `${duration}s`,
                opacity: 0.8,
              }}
            />
          );
        })}
      </div>

      {/* Modal Container */}
      <div 
        className={`relative max-w-md w-full bg-white/90 dark:bg-slate-900/90 backdrop-blur-xl border border-slate-200 dark:border-slate-800 p-8 rounded-3xl shadow-2xl flex flex-col items-center text-center space-y-6 transform transition-all duration-500 select-none ${show ? 'scale-100 translate-y-0 opacity-100' : 'scale-90 translate-y-8 opacity-0'}`}
      >
        {/* Glow behind icon */}
        <div className="absolute top-0 left-1/2 -translate-x-1/2 -translate-y-12 w-24 h-24 bg-gradient-to-tr from-pink-500 to-indigo-500 rounded-3xl blur-xl opacity-40 animate-pulse" />

        {/* Icon Circle */}
        <div className="relative -mt-16 w-20 h-20 bg-gradient-to-tr from-pink-500 to-indigo-500 rounded-2xl flex items-center justify-center text-white shadow-lg animate-bounce">
          {isLevelUp ? (
            <Award className="w-10 h-10 text-white" />
          ) : (
            <Star className="w-10 h-10 text-white fill-white" />
          )}
          <Sparkles className="absolute -top-1 -right-1 w-6 h-6 text-yellow-300 animate-pulse" />
        </div>

        {/* Text Details */}
        <div className="space-y-2">
          <div className="flex items-center justify-center space-x-1 text-pink-500 dark:text-pink-400">
            <ArrowUp className="w-4 h-4 animate-bounce" />
            <span className="text-xs font-black uppercase tracking-widest">
              {isLevelUp ? 'Level Up' : 'Rank Up'}
            </span>
          </div>
          
          <h2 className="text-3xl font-black bg-gradient-to-r from-pink-500 to-indigo-500 bg-clip-text text-transparent tracking-tight">
            {isLevelUp ? 'NAIK TINGKAT!' : 'NAIK PANGKAT!'}
          </h2>
          
          <p className="text-sm text-slate-600 dark:text-slate-300 leading-relaxed px-2 pt-2">
            {isLevelUp ? (
              <>
                Selamat! Anda secara otomatis naik ke tingkat JLPT baru:{' '}
                <span className="font-extrabold text-indigo-600 dark:text-indigo-400 block text-lg mt-1">
                  {newRankName}
                </span>
                Materi pelajaran dan barisan kuis baru telah terbuka dan siap dipelajari!
              </>
            ) : (
              <>
                Luar biasa! Target kanji terpenuhi. Anda secara otomatis naik ke pangkat baru:{' '}
                <span className="font-extrabold text-pink-600 dark:text-pink-400 block text-lg mt-1">
                  {newRankName}
                </span>
                Materi radikal dan kanji pangkat ini telah dimasukkan ke antrean Lesson Anda!
              </>
            )}
          </p>
        </div>

        {/* Action Button */}
        <button
          onClick={onClose}
          className="w-full py-3.5 bg-gradient-to-r from-pink-500 to-indigo-500 text-white font-extrabold rounded-2xl shadow-md hover:from-pink-600 hover:to-indigo-600 transition-all transform hover:scale-[1.02] active:scale-[0.98] cursor-pointer"
        >
          Lanjutkan Belajar 🚀
        </button>
      </div>

      <style jsx global>{`
        @keyframes fall {
          0% {
            transform: translateY(-20px) rotate(0deg);
          }
          100% {
            transform: translateY(105vh) rotate(360deg);
          }
        }
        .animate-fall {
          animation: fall linear infinite;
        }
      `}</style>
    </div>
  );
}
