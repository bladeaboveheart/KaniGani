'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { ItemType } from '@/lib/types';
import { Layers, Sparkles, BookOpen } from 'lucide-react';

interface WaniKaniSubNavProps {
  currentType: ItemType;
  counts?: {
    radical?: number;
    kanji?: number;
    vocabulary?: number;
  };
}

export default function WaniKaniSubNav({ currentType, counts }: WaniKaniSubNavProps) {
  const pathname = usePathname();

  const tabs: {
    type: ItemType;
    label: string;
    japanese: string;
    href: string;
    count: number;
    color: string;
    activeBg: string;
    activeText: string;
    activeBorder: string;
  }[] = [
    {
      type: 'radical',
      label: 'Radikal',
      japanese: '部首',
      href: '/radical',
      count: counts?.radical || 479,
      color: 'text-radical',
      activeBg: 'bg-radical/10 dark:bg-radical/20',
      activeText: 'text-radical font-black',
      activeBorder: 'border-radical',
    },
    {
      type: 'kanji',
      label: 'Kanji',
      japanese: '漢字',
      href: '/kanji',
      count: counts?.kanji || 2102,
      color: 'text-kanji',
      activeBg: 'bg-kanji/10 dark:bg-kanji/20',
      activeText: 'text-kanji font-black',
      activeBorder: 'border-kanji',
    },
    {
      type: 'vocabulary',
      label: 'Kosakata',
      japanese: '単語',
      href: '/vocabulary',
      count: counts?.vocabulary || 6800,
      color: 'text-vocab',
      activeBg: 'bg-vocab/10 dark:bg-vocab/20',
      activeText: 'text-vocab font-black',
      activeBorder: 'border-vocab',
    },
  ];

  return (
    <nav className="w-full bg-white dark:bg-slate-900 border-b border-slate-200 dark:border-slate-800 shadow-xs sticky top-0 z-30 backdrop-blur-md bg-white/90 dark:bg-slate-900/90">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between overflow-x-auto no-scrollbar py-2.5 sm:py-3 gap-2 sm:gap-4">
          <div className="flex items-center space-x-1.5 sm:space-x-3 shrink-0">
            {tabs.map((t) => {
              const isActive = currentType === t.type;
              return (
                <Link
                  key={t.type}
                  href={t.href}
                  className={`flex items-center space-x-2 px-3.5 sm:px-5 py-2 sm:py-2.5 rounded-2xl text-xs sm:text-sm font-extrabold transition-all duration-200 border cursor-pointer shrink-0 ${
                    isActive
                      ? `${t.activeBg} ${t.activeText} ${t.activeBorder} shadow-xs scale-102`
                      : 'border-transparent text-slate-500 hover:text-slate-900 dark:text-slate-400 dark:hover:text-white hover:bg-slate-100 dark:hover:bg-slate-800/60'
                  }`}
                >
                  <span className="font-japanese opacity-85 text-xs sm:text-sm">{t.japanese}</span>
                  <span>{t.label}</span>
                  <span className={`px-2 py-0.5 text-4xs sm:text-3xs font-black rounded-full ${
                    isActive
                      ? 'bg-slate-900/10 dark:bg-white/10'
                      : 'bg-slate-200/60 dark:bg-slate-800 text-slate-500'
                  }`}>
                    {t.count.toLocaleString()}
                  </span>
                </Link>
              );
            })}
          </div>

          <div className="hidden md:flex items-center space-x-2 text-xxs font-bold text-slate-400 dark:text-slate-500">
            <Sparkles className="w-3.5 h-3.5 text-amber-500" />
            <span>Kurikulum Resmi Level 1–60</span>
          </div>
        </div>
      </div>
    </nav>
  );
}
