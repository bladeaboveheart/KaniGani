'use client';

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import ThemeToggle from '@/components/ThemeToggle';
import Footer from '@/components/Footer';
import CrabLogo from '@/components/CrabLogo';
import { Mail, Lock, User, ArrowRight, CheckCircle2, AlertCircle, Eye, EyeOff } from 'lucide-react';

export default function AuthPage() {
  const [isSignUp, setIsSignUp] = useState(false);
  const [email, setEmail] = useState('');
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [loginInput, setLoginInput] = useState(''); // Bisa email atau username
  const [showPassword, setShowPassword] = useState(false);

  // States
  const [errorMsg, setErrorMsg] = useState('');
  const [successMsg, setSuccessMsg] = useState('');
  const [loading, setLoading] = useState(false);
  const router = useRouter();

  useEffect(() => {
    // Jika user sudah login, arahkan langsung ke dashboard
    async function checkUser() {
      const { data: { session } } = await supabase.auth.getSession();
      if (session) {
        router.push('/dashboard');
      }
    }
    checkUser();

    // Check error dari redirect callback
    const params = new URLSearchParams(window.location.search);
    const err = params.get('error');
    if (err) {
      setErrorMsg(decodeURIComponent(err));
    }
  }, [router]);

  const handleSignIn = async (e: React.FormEvent) => {
    e.preventDefault();
    setErrorMsg('');
    setSuccessMsg('');
    setLoading(true);

    try {
      let targetEmail = loginInput.trim();

      // Cek apakah input berupa email atau username
      const isEmail = targetEmail.includes('@');
      if (!isEmail) {
        // Panggil endpoint /api/auth/check-username untuk mendapatkan email terkait username
        const res = await fetch('/api/auth/check-username', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ username: targetEmail }),
        });

        const data = await res.json();
        if (!res.ok) {
          throw new Error(data.error || 'Username tidak ditemukan');
        }
        targetEmail = data.email;
      }

      // Login ke Supabase
      const { error } = await supabase.auth.signInWithPassword({
        email: targetEmail,
        password,
      });

      if (error) throw error;

      setSuccessMsg('Masuk berhasil! Mengarahkan ke Dashboard...');
      setTimeout(() => {
        router.push('/dashboard');
      }, 1000);
    } catch (err: any) {
      setErrorMsg(err.message || 'Gagal masuk. Silakan periksa kembali akun Anda.');
    } finally {
      setLoading(false);
    }
  };

  const handleSignUp = async (e: React.FormEvent) => {
    e.preventDefault();
    setErrorMsg('');
    setSuccessMsg('');
    setLoading(true);

    try {
      if (username.trim().length < 3) {
        throw new Error('Username minimal terdiri dari 3 karakter.');
      }

      // Daftar ke Supabase Auth dengan custom metadata username
      const { error } = await supabase.auth.signUp({
        email: email.trim(),
        password,
        options: {
          data: {
            username: username.trim(),
          },
        },
      });

      if (error) throw error;

      setSuccessMsg('Pendaftaran berhasil! Akun Anda telah siap. Silakan masuk.');
      setIsSignUp(false);
      // Reset form
      setEmail('');
      setUsername('');
      setPassword('');
    } catch (err: any) {
      setErrorMsg(err.message || 'Pendaftaran gagal. Silakan periksa data yang Anda masukkan.');
    } finally {
      setLoading(false);
    }
  };

  const handleGoogleSignIn = async () => {
    setErrorMsg('');
    try {
      const { error } = await supabase.auth.signInWithOAuth({
        provider: 'google',
        options: {
          redirectTo: `${window.location.origin}/auth/callback`,
        },
      });
      if (error) throw error;
    } catch (err: any) {
      setErrorMsg(err.message || 'Gagal memulai login dengan Google.');
    }
  };

  return (
    <div className="min-h-screen flex flex-col relative bg-background text-primary transition-colors duration-300">

      {/* Decorative Crab-Themed Background Elements (Kepiting & Gelembung) */}
      <div className="absolute inset-0 z-0 pointer-events-none opacity-20 dark:opacity-10 overflow-hidden">
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

      {/* Top Header Controls */}
      <header className="w-full max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-5 flex items-center justify-between z-10">
        <div className="flex items-center space-x-2.5">
          <div className="w-9 h-9 rounded-xl overflow-hidden shadow-xs flex items-center justify-center shrink-0">
            <CrabLogo className="w-full h-full" showBadge={true} />
          </div>
          <span className="text-2xl sm:text-3xl font-black tracking-wider bg-gradient-to-r from-rose-500 via-pink-500 to-indigo-500 bg-clip-text text-transparent">
            KaniGani
          </span>
        </div>
        <ThemeToggle />
      </header>

      {/* Main Core Auth Card */}
      <main className="flex-1 flex items-center justify-center px-4 py-8 z-10">
        <div className="w-full max-w-md bg-card/90 backdrop-blur-xl rounded-3xl border border-card-border shadow-2xl p-6 sm:p-9 animate-fade-in">

          {/* Title Header */}
          <div className="text-center mb-6 flex flex-col items-center">
            <div className="w-14 h-14 mb-3 rounded-2xl shadow-xs overflow-hidden flex items-center justify-center">
              <CrabLogo className="w-full h-full" showBadge={true} />
            </div>
            <h1 className="text-2xl sm:text-3xl font-black tracking-tight mb-1 text-primary">
              {isSignUp ? 'Buat Akun Baru' : 'Selamat Datang Kembali'}
            </h1>
            <p className="text-xs sm:text-sm text-muted">
              {isSignUp
                ? 'Mulai perjalanan Anda menguasai Kanji Jepang hari ini'
                : 'Masuk untuk melanjutkan sesi belajar SRS Anda'}
            </p>
          </div>

          {/* Tab Switcher (Masuk vs Daftar) */}
          <div className="flex p-1 bg-card-muted/60 rounded-2xl border border-card-border mb-6">
            <button
              type="button"
              onClick={() => {
                setIsSignUp(false);
                setErrorMsg('');
                setSuccessMsg('');
              }}
              className={`flex-1 py-2 text-xs sm:text-sm font-bold rounded-xl transition-all cursor-pointer ${
                !isSignUp ? 'bg-card text-primary shadow-xs' : 'text-muted hover:text-primary'
              }`}
            >
              Masuk Akun
            </button>
            <button
              type="button"
              onClick={() => {
                setIsSignUp(true);
                setErrorMsg('');
                setSuccessMsg('');
              }}
              className={`flex-1 py-2 text-xs sm:text-sm font-bold rounded-xl transition-all cursor-pointer ${
                isSignUp ? 'bg-card text-primary shadow-xs' : 'text-muted hover:text-primary'
              }`}
            >
              Daftar Baru
            </button>
          </div>

          {/* Feedback Messages */}
          {errorMsg && (
            <div className="mb-5 p-3.5 bg-rose-500/10 border border-rose-500/20 rounded-2xl flex items-start space-x-2.5 text-xs sm:text-sm text-rose-600 dark:text-rose-400 animate-fade-in">
              <AlertCircle className="w-4 h-4 mt-0.5 shrink-0" />
              <span>{errorMsg}</span>
            </div>
          )}

          {successMsg && (
            <div className="mb-5 p-3.5 bg-emerald-500/10 border border-emerald-500/20 rounded-2xl flex items-start space-x-2.5 text-xs sm:text-sm text-emerald-600 dark:text-emerald-400 animate-fade-in">
              <CheckCircle2 className="w-4 h-4 mt-0.5 shrink-0" />
              <span>{successMsg}</span>
            </div>
          )}

          {/* Input Form */}
          <form onSubmit={isSignUp ? handleSignUp : handleSignIn} className="space-y-4">
            {isSignUp ? (
              // SIGN UP FORM
              <>
                <div className="space-y-1">
                  <label className="text-xs font-bold text-muted uppercase tracking-wider block">
                    Username
                  </label>
                  <div className="relative">
                    <span className="absolute inset-y-0 left-0 pl-3.5 flex items-center text-muted">
                      <User className="w-4 h-4" />
                    </span>
                    <input
                      type="text"
                      required
                      placeholder="Pilih username unik"
                      value={username}
                      onChange={(e) => setUsername(e.target.value)}
                      className="w-full min-h-[44px] pl-10 pr-4 py-2.5 rounded-xl sm:rounded-2xl bg-card-muted/40 border border-card-border text-primary placeholder-muted text-xs sm:text-sm focus:outline-none focus:ring-2 focus:ring-rose-500/30 focus:border-rose-500 transition-all"
                    />
                  </div>
                </div>

                <div className="space-y-1">
                  <label className="text-xs font-bold text-muted uppercase tracking-wider block">
                    Alamat Email
                  </label>
                  <div className="relative">
                    <span className="absolute inset-y-0 left-0 pl-3.5 flex items-center text-muted">
                      <Mail className="w-4 h-4" />
                    </span>
                    <input
                      type="email"
                      required
                      placeholder="nama@email.com"
                      value={email}
                      onChange={(e) => setEmail(e.target.value)}
                      className="w-full min-h-[44px] pl-10 pr-4 py-2.5 rounded-xl sm:rounded-2xl bg-card-muted/40 border border-card-border text-primary placeholder-muted text-xs sm:text-sm focus:outline-none focus:ring-2 focus:ring-rose-500/30 focus:border-rose-500 transition-all"
                    />
                  </div>
                </div>
              </>
            ) : (
              // SIGN IN FORM
              <div className="space-y-1">
                <label className="text-xs font-bold text-muted uppercase tracking-wider block">
                  Username atau Email
                </label>
                <div className="relative">
                  <span className="absolute inset-y-0 left-0 pl-3.5 flex items-center text-muted">
                    <User className="w-4 h-4" />
                  </span>
                  <input
                    type="text"
                    required
                    placeholder="Masukkan username atau email Anda"
                    value={loginInput}
                    onChange={(e) => setLoginInput(e.target.value)}
                    className="w-full min-h-[44px] pl-10 pr-4 py-2.5 rounded-xl sm:rounded-2xl bg-card-muted/40 border border-card-border text-primary placeholder-muted text-xs sm:text-sm focus:outline-none focus:ring-2 focus:ring-rose-500/30 focus:border-rose-500 transition-all"
                  />
                </div>
              </div>
            )}

            {/* Password Field (Sign In & Sign Up) */}
            <div className="space-y-1">
              <div className="flex items-center justify-between">
                <label className="text-xs font-bold text-muted uppercase tracking-wider block">
                  Kata Sandi
                </label>
                {!isSignUp && (
                  <span className="text-xs text-rose-500 hover:underline cursor-pointer">
                    Lupa sandi?
                  </span>
                )}
              </div>
              <div className="relative">
                <span className="absolute inset-y-0 left-0 pl-3.5 flex items-center text-muted">
                  <Lock className="w-4 h-4" />
                </span>
                <input
                  type={showPassword ? "text" : "password"}
                  required
                  placeholder="••••••••"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  className="w-full min-h-[44px] pl-10 pr-11 py-2.5 rounded-xl sm:rounded-2xl bg-card-muted/40 border border-card-border text-primary placeholder-muted text-xs sm:text-sm focus:outline-none focus:ring-2 focus:ring-rose-500/30 focus:border-rose-500 transition-all"
                />
                <button
                  type="button"
                  onClick={() => setShowPassword((prev) => !prev)}
                  className="absolute inset-y-0 right-0 pr-3.5 flex items-center text-muted hover:text-primary focus:outline-none transition-colors"
                >
                  {showPassword ? (
                    <EyeOff className="w-4 h-4" />
                  ) : (
                    <Eye className="w-4 h-4" />
                  )}
                </button>
              </div>
            </div>

            {/* Submit Button */}
            <button
              type="submit"
              disabled={loading}
              className="w-full min-h-[46px] mt-2 py-3 bg-gradient-to-r from-rose-500 to-indigo-600 hover:from-rose-600 hover:to-indigo-700 text-white font-bold rounded-xl sm:rounded-2xl shadow-md hover:shadow-lg active:scale-98 focus:outline-none transition-all duration-200 disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center space-x-2 text-sm cursor-pointer"
            >
              {loading ? (
                <span>Memproses...</span>
              ) : (
                <>
                  <span>{isSignUp ? 'Daftar Sekarang' : 'Masuk Akun'}</span>
                  <ArrowRight className="w-4 h-4" />
                </>
              )}
            </button>
          </form>

          {/* Divider & Google Login Button */}
          <div className="relative my-4 flex items-center justify-center">
            <div className="border-t border-card-border w-full"></div>
            <span className="bg-card px-3 text-xs text-muted uppercase font-medium absolute">atau</span>
          </div>

          <button
            type="button"
            onClick={handleGoogleSignIn}
            className="w-full min-h-[44px] py-2.5 px-4 bg-card-muted/40 hover:bg-card-muted/80 border border-card-border rounded-xl sm:rounded-2xl text-primary font-medium text-xs sm:text-sm flex items-center justify-center gap-3 transition-all duration-200 active:scale-98 cursor-pointer"
          >
            <svg className="w-4 h-4 shrink-0" viewBox="0 0 24 24">
              <path
                fill="#4285F4"
                d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
              />
              <path
                fill="#34A853"
                d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
              />
              <path
                fill="#FBBC05"
                d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.06H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.94l2.85-2.22.81-.63z"
              />
              <path
                fill="#EA4335"
                d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.06l3.66 2.84c.87-2.6 3.3-4.52 6.16-4.52z"
              />
            </svg>
            <span>{isSignUp ? 'Daftar dengan Google' : 'Masuk dengan Google'}</span>
          </button>

          {/* Footer Subtext */}
          <div className="mt-6 pt-5 border-t border-card-border text-center text-xs text-muted">
            {isSignUp ? (
              <span>
                Dengan mendaftar, Anda menyetujui seluruh ketentuan belajar di KaniGani.
              </span>
            ) : (
              <span>
                Platform belajar Kanji bahasa Indonesia dengan sistem Spaced Repetition (SRS).
              </span>
            )}
          </div>

        </div>
      </main>

      <Footer />
    </div>
  );
}
