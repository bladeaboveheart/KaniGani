'use client';

import { useEffect, useState, useRef } from 'react';
import Link from 'next/link';
import { useRouter, usePathname } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { LogOut, User, BookOpen, Settings, HelpCircle, FlaskConical, Database, Sun, Moon, Search } from 'lucide-react';
import GlobalSearchModal from '@/components/search/GlobalSearchModal';
import CrabLogo from '@/components/CrabLogo';

export default function Navbar() {
  const [username, setUsername] = useState<string>('');
  const [isLoading, setIsLoading] = useState(true);
  const [devMode, setDevMode] = useState<boolean>(false);
  const [betaTester, setBetaTester] = useState<boolean>(false);
  const [_betaResetting, setBetaResetting] = useState(false);
  const [theme, setTheme] = useState<'light' | 'dark'>('light');
  const [isDropdownOpen, setIsDropdownOpen] = useState(false);
  const [isSearchOpen, setIsSearchOpen] = useState(false);
  const dropdownRef = useRef<HTMLDivElement>(null);

  const router = useRouter();
  const pathname = usePathname();

  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target as Node)) {
        setIsDropdownOpen(false);
      }
    }
    document.addEventListener('mousedown', handleClickOutside);
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, []);

  useEffect(() => {
    const handleStorageChange = () => {
      setDevMode(localStorage.getItem('kanigani-dev-mode') === 'true');
      setBetaTester(localStorage.getItem('kanigani-beta-tester') === 'true');
      const updatedUsername = localStorage.getItem('kanigani-username-update');
      if (updatedUsername) {
        setUsername(updatedUsername);
      }
    };
    handleStorageChange();
    window.addEventListener('storage', handleStorageChange);
    return () => window.removeEventListener('storage', handleStorageChange);
  }, []);

  const _toggleDevMode = () => {
    const nextVal = !devMode;
    setDevMode(nextVal);
    localStorage.setItem('kanigani-dev-mode', String(nextVal));
    window.dispatchEvent(new Event('storage'));
  };

  useEffect(() => {
    const isDark = document.documentElement.classList.contains('dark');
    if (isDark) {
      setTimeout(() => {
        setTheme('dark');
      }, 0);
    }
  }, []);

  // Global keyboard shortcut for search (Ctrl+K, Cmd+K, or '/')
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if ((e.ctrlKey || e.metaKey) && e.key.toLowerCase() === 'k') {
        e.preventDefault();
        setIsSearchOpen((prev) => !prev);
        return;
      }
      if (
        e.key === '/' &&
        !['INPUT', 'TEXTAREA', 'SELECT'].includes((e.target as HTMLElement)?.tagName)
      ) {
        e.preventDefault();
        setIsSearchOpen(true);
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, []);

  const toggleTheme = () => {
    if (theme === 'light') {
      document.documentElement.classList.add('dark');
      localStorage.setItem('theme', 'dark');
      setTheme('dark');
    } else {
      document.documentElement.classList.remove('dark');
      localStorage.setItem('theme', 'light');
      setTheme('light');
    }
  };

  const toggleBetaTester = () => {
    const nextVal = !betaTester;
    setBetaTester(nextVal);
    localStorage.setItem('kanigani-beta-tester', String(nextVal));
    window.dispatchEvent(new Event('storage'));
  };

  const _handleAccelerateReviews = async () => {
    if (!confirm('Percepat review menjadi SEKARANG (Hanya untuk item s/d tingkat Lulus)?')) return;
    setBetaResetting(true);
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) return;
      const now = new Date().toISOString();
      const { error } = await supabase
        .from('user_progress')
        .update({ next_review: now })
        .eq('user_id', user.id)
        .gte('srs_stage', 1)
        .lte('srs_stage', 6)
        .not('next_review', 'is', null);
      if (error) throw error;
      setIsDropdownOpen(false);
      alert('Sukses! Semua review dipercepat. Selamat belajar!');
      window.location.reload();
    } catch (err: any) {
      alert('Gagal: ' + (err?.message || 'Error tidak diketahui'));
    } finally {
      setBetaResetting(false);
    }
  };

  useEffect(() => {
    async function fetchUserData() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (user) {
          // Dapatkan username dari profile
          const { data: profile } = await supabase
            .from('profiles')
            .select('username')
            .eq('id', user.id)
            .maybeSingle();

          if (profile?.username) {
            setUsername(profile.username);
          } else {
            // Fallback ke user metadata atau email prefix
            setUsername(user.user_metadata?.username || user.email?.split('@')[0] || 'User');
          }
        }
      } catch (err) {
        console.error('Error fetching navbar user data:', err);
      } finally {
        setIsLoading(false);
      }
    }

    fetchUserData();
  }, []);

  const handleLogout = async () => {
    await supabase.auth.signOut();
    router.push('/');
  };

  const isAuthPage = pathname === '/';

  if (isAuthPage) return null;

  return (
    <header className="sticky top-0 z-40 w-full bg-white/80 dark:bg-slate-900/80 backdrop-blur-md border-b border-slate-200 dark:border-slate-800 text-slate-800 dark:text-white shadow-sm transition-all duration-300">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between h-16 sm:h-20">
          {/* Logo */}
          <div className="flex items-center space-x-4">
            <Link href="/dashboard" className="flex items-center space-x-2.5 group">
              <div className="relative w-9 h-9 sm:w-10 sm:h-10 rounded-xl overflow-hidden shadow-sm group-hover:scale-105 group-hover:shadow-rose-500/20 group-hover:shadow-md transition-all duration-300 flex items-center justify-center shrink-0">
                <CrabLogo className="w-full h-full" showBadge={true} />
              </div>
              <div className="flex flex-col items-start justify-center group cursor-pointer">
                {/* Sub-teks kecil aksen Jepang */}
                <span className="text-[9px] font-bold tracking-[0.3em] text-slate-400 uppercase leading-none mb-0.5 transform group-hover:translate-x-0.5 transition-transform duration-300">
                  カニガニ
                </span>
                <span className="text-xl sm:text-2xl tracking-tight text-slate-800 dark:text-white transition-all duration-200 leading-tight">
                  <span className="font-black">Kani</span>
                  {/* Mengubah warna dari indigo menjadi rose (merah modern yang estetik) */}
                  <span className="font-light text-rose-500 dark:text-rose-400">Gani</span>
                </span>
              </div>
            </Link>
          </div>

          {/* Navigation Links - Colorful like KaniGani */}
          <nav className="flex items-center space-x-1 sm:space-x-1.5 text-xs sm:text-sm font-medium">
            {/* Radical (Cyan) */}
            <Link
              href="/radical"
              className={`px-2 sm:px-3 py-1.5 sm:py-2 rounded-lg transition-all duration-200 cursor-pointer flex items-center ${pathname === '/radical'
                ? 'text-radical font-bold bg-radical/10 dark:bg-slate-800 border border-radical/20 dark:border-slate-700 shadow-xs'
                : 'text-slate-650 dark:text-slate-300 hover:text-white hover:bg-radical/20 hover:shadow-[0_0_10px_rgba(0,160,240,0.2)] border border-transparent hover:border-radical/30'
                }`}
            >
              <span>部首</span>
              <span className="hidden sm:inline ml-1">Radikal</span>
            </Link>

            {/* Kanji (Pink) */}
            <Link
              href="/kanji"
              className={`px-2 sm:px-3 py-1.5 sm:py-2 rounded-lg transition-all duration-200 cursor-pointer flex items-center ${pathname === '/kanji'
                ? 'text-kanji font-bold bg-kanji/10 dark:bg-slate-800 border border-kanji/20 dark:border-slate-700 shadow-xs'
                : 'text-slate-650 dark:text-slate-300 hover:text-white hover:bg-kanji/20 hover:shadow-[0_0_10px_rgba(240,0,160,0.2)] border border-transparent hover:border-kanji/30'
                }`}
            >
              <span>漢字</span>
              <span className="hidden sm:inline ml-1">Kanji</span>
            </Link>

            {/* Vocabulary (Purple) */}
            <Link
              href="/vocabulary"
              className={`px-2 sm:px-3 py-1.5 sm:py-2 rounded-lg transition-all duration-200 cursor-pointer flex items-center ${pathname === '/vocabulary'
                ? 'text-vocab font-bold bg-vocab/10 dark:bg-slate-800 border border-vocab/20 dark:border-slate-700 shadow-xs'
                : 'text-slate-650 dark:text-slate-300 hover:text-white hover:bg-vocab/20 hover:shadow-[0_0_10px_rgba(160,0,240,0.2)] border border-transparent hover:border-vocab/30'
                }`}
            >
              <span>語彙</span>
              <span className="hidden sm:inline ml-1">Kosakata</span>
            </Link>

            <span className="hidden md:flex px-3 py-2 rounded-lg text-slate-500 hover:text-slate-900 dark:text-slate-400 dark:hover:text-slate-200 hover:bg-slate-100 dark:hover:bg-slate-800 transition-colors cursor-pointer items-center space-x-1">
              <HelpCircle className="w-4 h-4" />
              <span>Bantuan</span>
            </span>
          </nav>

          {/* User Settings, Search, Theme, Logout */}
          <div className="flex items-center space-x-2 sm:space-x-3">
            {/* Search Button (Replaced former Theme Toggle spot) */}
            <button
              onClick={() => setIsSearchOpen(true)}
              className="p-2 sm:p-2.5 rounded-xl bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-300 transition-all duration-200 shadow-sm border border-slate-200 dark:border-slate-700 cursor-pointer flex items-center space-x-2 group"
              aria-label="Cari item kamus"
              title="Cari Radikal, Kanji, atau Kosakata (Ctrl+K)"
            >
              <Search className="w-5 h-5 text-slate-600 dark:text-slate-400 group-hover:text-indigo-600 dark:group-hover:text-indigo-400 transition-colors" />
              <span className="hidden xl:inline text-xs text-slate-400 dark:text-slate-500 font-medium">
                Cari... <kbd className="ml-1 px-1.5 py-0.5 text-xxs font-bold bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-700 rounded text-slate-500 dark:text-slate-400">Ctrl K</kbd>
              </span>
            </button>

            {!isLoading && !username && (
              <button
                onClick={toggleTheme}
                className="p-2 sm:p-2.5 rounded-xl bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-300 transition-all duration-200 shadow-sm border border-slate-200 dark:border-slate-700 cursor-pointer"
                aria-label="Toggle tema gelap/terang"
              >
                {theme === 'light' ? (
                  <Moon className="w-5 h-5 text-indigo-600" />
                ) : (
                  <Sun className="w-5 h-5 text-amber-400" />
                )}
              </button>
            )}

            {!isLoading && username ? (
              <div className="flex items-center space-x-3">
                <div className="hidden lg:flex flex-col text-right">
                  <span className="text-sm font-semibold text-slate-800 dark:text-slate-200">{username}</span>
                  <span className="text-xxs text-slate-450 dark:text-slate-500 font-semibold">Pengguna KaniGani</span>
                </div>

                <div className="relative" ref={dropdownRef}>
                  <button
                    onClick={() => setIsDropdownOpen((prev) => !prev)}
                    className="flex items-center justify-center w-10 h-10 rounded-xl bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 border border-slate-200 dark:border-slate-700 text-slate-700 dark:text-slate-200 focus:outline-none transition-all duration-200 cursor-pointer"
                  >
                    <User className="w-5 h-5" />
                  </button>
                  {/* Dropdown Menu Wrapper */}
                  {isDropdownOpen && (
                    <div className="absolute right-0 top-full pt-2 w-48 animate-fade-in z-50">
                      <div className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-xl shadow-xl py-1 text-slate-700 dark:text-slate-300 text-sm">
                        <div className="px-4 py-2 border-b border-slate-100 dark:border-slate-800 text-slate-500 dark:text-slate-400 text-xs font-semibold">
                          Menu Akun
                        </div>
                        <Link
                          href="/dashboard"
                          onClick={() => setIsDropdownOpen(false)}
                          className="flex items-center space-x-2 px-4 py-2 hover:bg-slate-100 dark:hover:bg-slate-800 hover:text-slate-950 dark:hover:text-white transition-colors"
                        >
                          <BookOpen className="w-4 h-4 text-indigo-500 dark:text-indigo-400" />
                          <span>Belajar</span>
                        </Link>
                        <Link
                          href="/settings"
                          onClick={() => setIsDropdownOpen(false)}
                          className="flex items-center space-x-2 px-4 py-2 hover:bg-slate-100 dark:hover:bg-slate-800 hover:text-slate-950 dark:hover:text-white transition-colors cursor-pointer"
                        >
                          <Settings className="w-4 h-4 text-slate-400 dark:text-slate-450" />
                          <span>Pengaturan</span>
                        </Link>
                        <Link
                          href="/admin"
                          onClick={() => setIsDropdownOpen(false)}
                          className="flex items-center space-x-2 px-4 py-2 hover:bg-slate-100 dark:hover:bg-slate-800 hover:text-emerald-600 dark:hover:text-emerald-400 transition-colors text-left border-t border-slate-100 dark:border-slate-800 cursor-pointer"
                        >
                          <Database className="w-4 h-4 text-emerald-500" />
                          <span className="font-bold">Database Studio</span>
                        </Link>
                        {/* Theme Toggle inside Menu Akun */}
                        <button
                          onClick={toggleTheme}
                          className="w-full flex items-center justify-between px-4 py-2 hover:bg-slate-100 dark:hover:bg-slate-800 hover:text-slate-950 dark:hover:text-white transition-colors text-left border-t border-slate-100 dark:border-slate-800 cursor-pointer"
                        >
                          <span className="flex items-center space-x-2">
                            {theme === 'dark' ? (
                              <Moon className="w-4 h-4 text-indigo-400" />
                            ) : (
                              <Sun className="w-4 h-4 text-amber-500" />
                            )}
                            <span>Mode Tema</span>
                          </span>
                          <span className={`px-1.5 py-0.5 text-xxs font-extrabold rounded-md uppercase tracking-wider ${
                            theme === 'dark'
                              ? 'bg-indigo-500/10 text-indigo-600 dark:bg-indigo-500/20 dark:text-indigo-400 border border-indigo-200 dark:border-indigo-500/30'
                              : 'bg-amber-500/10 text-amber-600 dark:bg-amber-500/20 dark:text-amber-400 border border-amber-200 dark:border-amber-500/30'
                          }`}>
                            {theme === 'dark' ? 'GELAP' : 'TERANG'}
                          </span>
                        </button>
                        {/* Beta Tester Toggle */}
                        <button
                          onClick={toggleBetaTester}
                          className="w-full flex items-center justify-between px-4 py-2 hover:bg-slate-100 dark:hover:bg-slate-800 hover:text-slate-950 dark:hover:text-white transition-colors text-left border-t border-slate-100 dark:border-slate-800 cursor-pointer"
                        >
                          <span className="flex items-center space-x-2">
                            <FlaskConical className={`w-4 h-4 ${betaTester ? 'text-violet-500 dark:text-violet-400' : 'text-slate-400'}`} />
                            <span className={betaTester ? 'text-violet-650 dark:text-violet-300 font-semibold' : ''}>Beta Tester</span>
                          </span>
                          <span className={`px-1.5 py-0.5 text-xxs font-extrabold rounded-md uppercase tracking-wider ${betaTester
                            ? 'bg-violet-500/10 text-violet-600 dark:bg-violet-500/20 dark:text-violet-400 border border-violet-200 dark:border-violet-500/30'
                            : 'bg-slate-100 text-slate-500 dark:bg-slate-800 dark:text-slate-500 border border-slate-200 dark:border-slate-700'
                            }`}>
                            {betaTester ? 'ON' : 'OFF'}
                          </span>
                        </button>

                        <button
                          onClick={() => {
                            setIsDropdownOpen(false);
                            handleLogout();
                          }}
                          className="w-full flex items-center space-x-2 px-4 py-2 hover:bg-red-50 dark:hover:bg-red-950/30 hover:text-red-600 dark:hover:text-red-400 transition-colors text-left border-t border-slate-100 dark:border-slate-800 cursor-pointer"
                        >
                          <LogOut className="w-4 h-4" />
                          <span>Keluar</span>
                        </button>
                      </div>
                    </div>
                  )}
                </div>
              </div>
            ) : null}
          </div>
        </div>
      </div>

      {/* Global Dictionary Search Modal */}
      <GlobalSearchModal
        isOpen={isSearchOpen}
        onClose={() => setIsSearchOpen(false)}
      />
    </header>
  );
}
