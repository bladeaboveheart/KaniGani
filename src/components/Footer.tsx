'use client';

import { usePathname } from 'next/navigation';
import Link from 'next/link';
import { HelpCircle, Shield, Globe, Award } from 'lucide-react';

export default function Footer() {
  const pathname = usePathname();
  const isAuthPage = pathname === '/';

  // Jangan tampilkan footer di halaman kuis agar user bisa fokus penuh
  const isQuizPage = pathname === '/lesson' || pathname === '/review';
  if (isQuizPage) return null;

  return (
    <footer className={`w-full py-8 mt-auto border-t transition-colors duration-300 ${isAuthPage
      ? 'bg-transparent border-transparent text-slate-400'
      : 'bg-slate-100 border-slate-200 dark:bg-slate-900 dark:border-slate-800 text-slate-500 dark:text-slate-400'
      }`}>
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex flex-col md:flex-row items-center justify-between gap-4">
          {/* Brand & Motive */}
          <div className="flex items-center space-x-2">
            <span className="font-bold text-slate-700 dark:text-slate-300">KaniGani</span>
            <span className="text-slate-300 dark:text-slate-700">|</span>
            <span className="text-xs flex items-center">
              Dibuat oleh KaniGani untuk para senpai-senpai yang belajar kanji.
            </span>
          </div>

          {/* Quick links */}
          <div className="flex items-center space-x-6 text-xs font-medium">
            <span className="hover:text-indigo-500 transition-colors cursor-pointer flex items-center space-x-1">
              <HelpCircle className="w-3.5 h-3.5" />
              <span>Bantuan</span>
            </span>
            <span className="hover:text-indigo-500 transition-colors cursor-pointer flex items-center space-x-1">
              <Shield className="w-3.5 h-3.5" />
              <span>Privasi</span>
            </span>
            <span className="hover:text-indigo-500 transition-colors cursor-pointer flex items-center space-x-1">
              <Globe className="w-3.5 h-3.5" />
              <span>Bahasa Indonesia</span>
            </span>
          </div>
        </div>

        <div className="mt-4 pt-4 border-t border-slate-200/50 dark:border-slate-800/50 flex flex-col sm:flex-row items-center justify-between text-xxs text-slate-400 dark:text-slate-600 gap-2">
          <span>&copy; {new Date().getFullYear()} KaniGani Inc. All rights reserved.</span>
          <span className="flex items-center">
            Hak cipta materi Kanji & Kosakata Jepang dipegang oleh KaniGani.
          </span>
        </div>
      </div>
    </footer>
  );
}
