'use client';

import { useEffect, useState, useRef } from 'react';
import Link from 'next/link';
import { useRouter, usePathname } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import ThemeToggle from './ThemeToggle';
import { LogOut, User, BookOpen, Layers, Settings, HelpCircle, Shield, Award } from 'lucide-react';

export default function Navbar() {
  const [username, setUsername] = useState<string>('');
  const [level, setLevel] = useState<number>(1);
  const [isLoading, setIsLoading] = useState(true);
  const [devMode, setDevMode] = useState<boolean>(false);
  const [isDropdownOpen, setIsDropdownOpen] = useState(false);
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
      const updatedUsername = localStorage.getItem('kanigani-username-update');
      if (updatedUsername) {
        setUsername(updatedUsername);
      }
    };
    handleStorageChange();
    window.addEventListener('storage', handleStorageChange);
    return () => window.removeEventListener('storage', handleStorageChange);
  }, []);

  const toggleDevMode = () => {
    const nextVal = !devMode;
    setDevMode(nextVal);
    localStorage.setItem('kanigani-dev-mode', String(nextVal));
    window.dispatchEvent(new Event('storage'));
  };

  useEffect(() => {
    async function fetchUserData() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (user) {
          // 1. Dapatkan username dari profile
          const { data: profile } = await supabase
            .from('profiles')
            .select('username')
            .eq('id', user.id)
            .maybeSingle();

          if (profile) {
            setUsername(profile.username);
          } else {
            // Fallback ke user metadata atau email prefix
            setUsername(user.user_metadata?.username || user.email?.split('@')[0] || 'User');
          }

          // 2. Dapatkan level saat ini (dari user progress maksimal level, default level 1)
          const { data: progress } = await supabase
            .from('user_progress')
            .select('items(level)')
            .eq('user_id', user.id)
            .limit(1);
          
          // default ke 1
          setLevel(1);
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
    <header className="sticky top-0 z-40 w-full bg-slate-900 border-b border-slate-800 text-white shadow-md">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between h-16 sm:h-20">
          {/* Logo & Level */}
          <div className="flex items-center space-x-4">
            <Link href="/dashboard" className="flex items-center space-x-2 group">
              <span className="text-2xl font-extrabold tracking-wider bg-gradient-to-r from-pink-500 via-purple-500 to-indigo-500 bg-clip-text text-transparent group-hover:scale-105 transition-transform duration-200">
                KaniGani
              </span>
              <span className="hidden sm:inline-block px-2 py-0.5 text-xs font-bold bg-indigo-600 rounded-full text-indigo-50 border border-indigo-500 animate-pulse">
                v2.0
              </span>
            </Link>
            
            {username && (
              <div className="flex items-center space-x-1.5 px-3 py-1 bg-slate-800 rounded-full border border-slate-700 text-slate-300 text-sm">
                <Layers className="w-4 h-4 text-indigo-400" />
                <span className="font-semibold">Level {level}</span>
              </div>
            )}
          </div>

          {/* Navigation Links - Colorful like WaniKani */}
          <nav className="hidden md:flex items-center space-x-1 text-sm font-medium">
            <Link 
              href="/dashboard" 
              className={`px-3 py-2 rounded-lg hover:bg-slate-800 transition-colors ${
                pathname === '/dashboard' ? 'text-indigo-400 bg-slate-800' : 'text-slate-300'
              }`}
            >
              Dashboard
            </Link>

            {/* Radical (Cyan) */}
            <Link 
              href="/radical" 
              className={`px-3 py-2 rounded-lg text-slate-300 hover:text-white hover:bg-radical/20 hover:shadow-[0_0_10px_rgba(0,160,240,0.2)] border border-transparent hover:border-radical/30 transition-all duration-200 cursor-pointer ${
                pathname === '/radical' ? 'text-radical font-bold bg-slate-800' : ''
              }`}
            >
              <span className="inline-block w-2.5 h-2.5 rounded-full bg-radical mr-2"></span>
              Radikal
            </Link>

            {/* Kanji (Pink) */}
            <Link 
              href="/kanji" 
              className={`px-3 py-2 rounded-lg text-slate-300 hover:text-white hover:bg-kanji/20 hover:shadow-[0_0_10px_rgba(240,0,160,0.2)] border border-transparent hover:border-kanji/30 transition-all duration-200 cursor-pointer ${
                pathname === '/kanji' ? 'text-kanji font-bold bg-slate-800' : ''
              }`}
            >
              <span className="inline-block w-2.5 h-2.5 rounded-full bg-kanji mr-2"></span>
              Kanji
            </Link>

            {/* Vocabulary (Purple) */}
            <Link 
              href="/vocabulary" 
              className={`px-3 py-2 rounded-lg text-slate-300 hover:text-white hover:bg-vocab/20 hover:shadow-[0_0_10px_rgba(160,0,240,0.2)] border border-transparent hover:border-vocab/30 transition-all duration-200 cursor-pointer ${
                pathname === '/vocabulary' ? 'text-vocab font-bold bg-slate-800' : ''
              }`}
            >
              <span className="inline-block w-2.5 h-2.5 rounded-full bg-vocab mr-2"></span>
              Kosakata
            </Link>

            <span className="px-3 py-2 rounded-lg text-slate-400 hover:text-slate-200 transition-colors cursor-pointer flex items-center space-x-1">
              <HelpCircle className="w-4 h-4" />
              <span>Bantuan</span>
            </span>
          </nav>

          {/* User Settings, Theme, Logout */}
          <div className="flex items-center space-x-4">
            <ThemeToggle />

            {!isLoading && username ? (
              <div className="flex items-center space-x-3">
                <div className="hidden lg:flex flex-col text-right">
                  <span className="text-sm font-semibold text-slate-200">{username}</span>
                  <span className="text-xxs text-slate-400">Pengguna KaniGani</span>
                </div>
                
                <div className="relative" ref={dropdownRef}>
                  <button 
                    onClick={() => setIsDropdownOpen((prev) => !prev)}
                    className="flex items-center justify-center w-10 h-10 rounded-xl bg-slate-800 hover:bg-slate-700 border border-slate-700 text-slate-200 focus:outline-none transition-all duration-200"
                  >
                    <User className="w-5 h-5" />
                  </button>
                  {/* Dropdown Menu Wrapper */}
                  {isDropdownOpen && (
                    <div className="absolute right-0 top-full pt-2 w-48 animate-fade-in z-50">
                      <div className="bg-slate-900 border border-slate-800 rounded-xl shadow-xl py-1 text-slate-300 text-sm">
                        <div className="px-4 py-2 border-b border-slate-800 text-slate-400 text-xs">
                          Menu Akun
                        </div>
                        <Link 
                          href="/dashboard" 
                          onClick={() => setIsDropdownOpen(false)}
                          className="flex items-center space-x-2 px-4 py-2 hover:bg-slate-800 hover:text-white transition-colors"
                        >
                          <BookOpen className="w-4 h-4 text-indigo-400" />
                          <span>Belajar</span>
                        </Link>
                        <Link 
                          href="/settings" 
                          onClick={() => setIsDropdownOpen(false)}
                          className="flex items-center space-x-2 px-4 py-2 hover:bg-slate-800 hover:text-white transition-colors cursor-pointer"
                        >
                          <Settings className="w-4 h-4 text-slate-400" />
                          <span>Pengaturan</span>
                        </Link>
                        <button 
                          onClick={toggleDevMode} 
                          className="w-full flex items-center justify-between px-4 py-2 hover:bg-slate-800 hover:text-white transition-colors text-left font-medium"
                        >
                          <span className="flex items-center space-x-2">
                            <Shield className={`w-4 h-4 ${devMode ? 'text-emerald-400 animate-pulse' : 'text-slate-400'}`} />
                            <span>Dev Mode</span>
                          </span>
                          <span className={`px-1.5 py-0.5 text-xxs font-extrabold rounded-md uppercase tracking-wider ${
                            devMode 
                              ? 'bg-emerald-500/20 text-emerald-400 border border-emerald-500/30' 
                              : 'bg-slate-800 text-slate-500 border border-slate-700'
                          }`}>
                            {devMode ? 'ON' : 'OFF'}
                          </span>
                        </button>
                        {devMode && (
                          <Link 
                            href="/admin" 
                            onClick={() => setIsDropdownOpen(false)}
                            className="flex items-center space-x-2 px-4 py-2 hover:bg-slate-800 hover:text-emerald-400 transition-colors text-left border-t border-slate-800"
                          >
                            <Layers className="w-4 h-4 text-emerald-400" />
                            <span className="font-bold">CRUD Database</span>
                          </Link>
                        )}
                        <button 
                          onClick={() => {
                            setIsDropdownOpen(false);
                            handleLogout();
                          }} 
                          className="w-full flex items-center space-x-2 px-4 py-2 hover:bg-red-900/30 hover:text-red-400 transition-colors text-left border-t border-slate-800"
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
    </header>
  );
}
