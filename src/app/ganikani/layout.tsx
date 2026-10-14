'use client';

import React from 'react';
import Link from 'next/navigation';
import { usePathname } from 'next/navigation';
import LinkComponent from 'next/link';
import { ArrowLeft, BookOpen, Layers, Settings, Compass } from 'lucide-react';

export default function GanikaniLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const pathname = usePathname();

  const navLinks = [
    { href: '/ganikani', label: 'Dashboard', icon: Compass },
    { href: '/ganikani/lesson', label: 'Lesson', icon: BookOpen },
    { href: '/ganikani/review', label: 'Review', icon: Layers },
    { href: '/ganikani/settings', label: 'Pengaturan', icon: Settings },
  ];

  return (
    <div className="min-h-screen bg-background text-text-primary flex flex-col font-sans transition-colors duration-200">
      {/* Minimalist Spartan Header */}
      <header className="sticky top-0 z-40 bg-card/85 backdrop-blur-md border-b border-card-border">
        <div className="max-w-6xl mx-auto px-4 h-16 flex items-center justify-between">
          {/* Sisi Kiri: Brand GaniKani */}
          <LinkComponent
            href="/ganikani"
            className="flex items-center space-x-2 group cursor-pointer"
          >
            <span className="text-2xl group-hover:scale-110 transition-transform">🦀</span>
            <div className="flex flex-col">
              <span className="font-black text-lg tracking-tight text-text-primary group-hover:text-amber-500 transition-colors">
                GaniKani
              </span>
              <span className="text-[10px] font-bold text-amber-500 uppercase tracking-widest -mt-1">
                Reverse SRS
              </span>
            </div>
          </LinkComponent>

          {/* Sisi Tengah: Tautan Cepat */}
          <nav className="hidden sm:flex items-center space-x-1">
            {navLinks.map((link) => {
              const Icon = link.icon;
              const isActive = pathname === link.href;
              return (
                <LinkComponent
                  key={link.href}
                  href={link.href}
                  className={`flex items-center space-x-1.5 px-3.5 py-1.5 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                    isActive
                      ? 'bg-amber-500/15 text-amber-500 border border-amber-500/30 shadow-xs'
                      : 'text-text-secondary hover:text-text-primary hover:bg-card-muted'
                  }`}
                >
                  <Icon className="w-3.5 h-3.5" />
                  <span>{link.label}</span>
                </LinkComponent>
              );
            })}
          </nav>

          {/* Sisi Kanan: Keluar Kembali ke KaniGani */}
          <div className="flex items-center space-x-2">
            <LinkComponent
              href="/dashboard"
              className="flex items-center space-x-1.5 px-3 py-1.5 rounded-xl bg-card-muted/70 hover:bg-card-muted text-text-secondary hover:text-text-primary border border-card-border text-xs font-bold transition-all cursor-pointer shadow-xs"
              title="Kembali ke Beranda Belajar KaniGani"
            >
              <ArrowLeft className="w-3.5 h-3.5" />
              <span className="hidden md:inline">Kembali ke KaniGani</span>
              <span className="md:hidden">Keluar</span>
            </LinkComponent>
          </div>
        </div>
      </header>

      {/* Main Content Area */}
      <main className="flex-1 flex flex-col">{children}</main>
    </div>
  );
}
