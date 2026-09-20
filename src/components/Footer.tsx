'use client';

import { usePathname } from 'next/navigation';
import { HelpCircle, Shield, Globe } from 'lucide-react';

export default function Footer() {
  const pathname = usePathname();
  const isAuthPage = pathname === '/';

  // Jangan tampilkan footer di halaman kuis agar user bisa fokus penuh
  const isQuizPage = pathname === '/lesson' || pathname === '/review';
  if (isQuizPage) return null;

  return (
    <footer className={`w-full py-8 mt-auto border-t transition-colors duration-300 ${isAuthPage
      ? 'bg-transparent border-transparent text-muted'
      : 'bg-card-muted/50 border-card-border text-muted'
      }`}>
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex flex-col md:flex-row items-center justify-between gap-4">
          {/* Brand & Motive */}
          <div className="flex items-center space-x-2">
            <span className="font-black text-primary">KaniGani</span>
            <span className="text-muted/40">|</span>
            <span className="text-xs flex items-center text-muted">
              Dibuat oleh Pencinta Kanji untuk para senpai-senpai yang belajar Kanji.
            </span>
          </div>

          {/* Quick links */}
          <div className="flex items-center space-x-6 text-xs font-semibold">
            <span className="hover:text-primary transition-colors cursor-pointer flex items-center space-x-1">
              <HelpCircle className="w-3.5 h-3.5" />
              <span>Bantuan</span>
            </span>
            <span className="hover:text-primary transition-colors cursor-pointer flex items-center space-x-1">
              <Shield className="w-3.5 h-3.5" />
              <span>Privasi</span>
            </span>
            <span className="hover:text-primary transition-colors cursor-pointer flex items-center space-x-1">
              <Globe className="w-3.5 h-3.5" />
              <span>Bahasa Indonesia</span>
            </span>
          </div>
        </div>

        <div className="mt-4 pt-4 border-t border-card-border flex flex-col sm:flex-row items-center justify-between text-xs text-muted gap-2">
          <span>&copy; {new Date().getFullYear()} KaniGani Inc. All rights reserved.</span>
          <span className="flex items-center">
            Hak cipta materi Kanji & Kosakata Jepang dipegang oleh KaniGani.
          </span>
        </div>
      </div>
    </footer>
  );
}
