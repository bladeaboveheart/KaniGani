'use client';

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import ThemeToggle from '@/components/ThemeToggle';
import Footer from '@/components/Footer';
import CrabBackground from '@/components/CrabBackground';
import { Lock, ArrowRight, CheckCircle2, AlertCircle, Eye, EyeOff } from 'lucide-react';

export default function ResetPasswordPage() {
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);

  const [checking, setChecking] = useState(true);
  const [hasSession, setHasSession] = useState(false);
  const [loading, setLoading] = useState(false);
  const [errorMsg, setErrorMsg] = useState('');
  const [successMsg, setSuccessMsg] = useState('');

  const router = useRouter();

  useEffect(() => {
    let mounted = true;

    // Cek session awal
    async function checkInitialSession() {
      const { data: { session } } = await supabase.auth.getSession();
      if (session && mounted) {
        setHasSession(true);
        setChecking(false);
      }
    }
    checkInitialSession();

    // Dengar event auth dari Supabase (khususnya saat memproses link recovery)
    const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
      if (!mounted) return;
      if (session) {
        setHasSession(true);
      }
      setChecking(false);
    });

    // Timeout fallback untuk menghentikan status memeriksa jika tidak ada sesi
    const timer = setTimeout(() => {
      if (mounted) {
        setChecking(false);
      }
    }, 3000);

    return () => {
      mounted = false;
      subscription.unsubscribe();
      clearTimeout(timer);
    };
  }, []);

  const handleResetPassword = async (e: React.FormEvent) => {
    e.preventDefault();
    setErrorMsg('');
    setSuccessMsg('');

    if (password.length < 6) {
      setErrorMsg('Kata sandi minimal terdiri dari 6 karakter.');
      return;
    }

    if (password !== confirmPassword) {
      setErrorMsg('Konfirmasi kata sandi tidak cocok.');
      return;
    }

    setLoading(true);

    try {
      const { error } = await supabase.auth.updateUser({
        password: password,
      });

      if (error) throw error;

      setSuccessMsg('Kata sandi Anda berhasil diperbarui! Mengarahkan ke Halaman Masuk...');
      
      // Logout untuk membersihkan sesi pemulihan lama
      await supabase.auth.signOut();

      setTimeout(() => {
        router.push('/');
      }, 3000);
    } catch (err: any) {
      setErrorMsg(err.message || 'Gagal memperbarui kata sandi. Tautan mungkin telah kedaluwarsa.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen flex flex-col relative overflow-hidden bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      {/* Background Elements */}
      <CrabBackground />

      {/* Header */}
      <div className="w-full max-w-7xl mx-auto px-4 py-6 flex items-center justify-between z-10">
        <div className="flex items-center space-x-2">
          <span
            onClick={() => router.push('/')}
            className="text-3xl font-extrabold tracking-wider bg-gradient-to-r from-pink-500 via-purple-500 to-indigo-500 bg-clip-text text-transparent cursor-pointer"
          >
            KaniGani
          </span>
        </div>
        <ThemeToggle />
      </div>

      {/* Main content */}
      <main className="flex-1 flex items-center justify-center px-4 py-8 z-10">
        <div className="w-full max-w-md bg-white/70 dark:bg-slate-900/80 backdrop-blur-xl rounded-3xl border border-slate-200/80 dark:border-slate-800/80 shadow-2xl p-8 sm:p-10 animate-fade-in">
          
          <div className="text-center mb-8">
            <h1 className="text-3xl font-extrabold tracking-tight mb-2">
              Atur Ulang Kata Sandi
            </h1>
            <p className="text-sm text-slate-500 dark:text-slate-400">
              Buat kata sandi baru yang aman untuk akun KaniGani Anda
            </p>
          </div>

          {checking ? (
            <div className="flex flex-col items-center justify-center py-8 space-y-4">
              <div className="w-10 h-10 border-4 border-indigo-500 border-t-transparent rounded-full animate-spin"></div>
              <p className="text-sm text-slate-500 dark:text-slate-400">Memeriksa sesi pemulihan...</p>
            </div>
          ) : !hasSession ? (
            <div className="space-y-6">
              <div className="p-4 bg-rose-50 dark:bg-rose-950/30 border border-rose-200 dark:border-rose-900/50 rounded-2xl flex items-start space-x-3 text-sm text-rose-600 dark:text-rose-400">
                <AlertCircle className="w-5 h-5 mt-0.5 shrink-0" />
                <div>
                  <p className="font-bold mb-1">Sesi Tidak Valid</p>
                  <p>Tautan reset sandi tidak valid, telah kedaluwarsa, atau Anda tidak sedang dalam proses pemulihan akun.</p>
                </div>
              </div>
              <button
                onClick={() => router.push('/')}
                className="w-full py-3 bg-indigo-600 hover:bg-indigo-700 text-white font-bold rounded-2xl shadow-lg transition-all text-sm"
              >
                Kembali ke Halaman Masuk
              </button>
            </div>
          ) : (
            <>
              {errorMsg && (
                <div className="mb-6 p-4 bg-rose-50 dark:bg-rose-950/30 border border-rose-200 dark:border-rose-900/50 rounded-2xl flex items-start space-x-3 text-sm text-rose-600 dark:text-rose-400">
                  <AlertCircle className="w-5 h-5 mt-0.5 shrink-0" />
                  <span>{errorMsg}</span>
                </div>
              )}

              {successMsg && (
                <div className="mb-6 p-4 bg-emerald-50 dark:bg-emerald-950/30 border border-emerald-200 dark:border-emerald-900/50 rounded-2xl flex items-start space-x-3 text-sm text-emerald-600 dark:text-emerald-400">
                  <CheckCircle2 className="w-5 h-5 mt-0.5 shrink-0" />
                  <span>{successMsg}</span>
                </div>
              )}

              <form onSubmit={handleResetPassword} className="space-y-5">
                {/* Password Field */}
                <div className="space-y-1.5">
                  <label className="text-xs font-bold text-slate-500 uppercase tracking-wider block">
                    Kata Sandi Baru
                  </label>
                  <div className="relative">
                    <span className="absolute inset-y-0 left-0 pl-4 flex items-center text-slate-400 dark:text-slate-600">
                      <Lock className="w-5 h-5" />
                    </span>
                    <input
                      type={showPassword ? "text" : "password"}
                      required
                      placeholder="Minimal 6 karakter"
                      value={password}
                      onChange={(e) => setPassword(e.target.value)}
                      className="w-full pl-11 pr-12 py-3 rounded-2xl bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all"
                    />
                    <button
                      type="button"
                      onClick={() => setShowPassword((prev) => !prev)}
                      className="absolute inset-y-0 right-0 pr-4 flex items-center text-slate-400 dark:text-slate-600 hover:text-indigo-500 dark:hover:text-indigo-400 focus:outline-none transition-colors"
                    >
                      {showPassword ? (
                        <EyeOff className="w-5 h-5" />
                      ) : (
                        <Eye className="w-5 h-5" />
                      )}
                    </button>
                  </div>
                </div>

                {/* Confirm Password Field */}
                <div className="space-y-1.5">
                  <label className="text-xs font-bold text-slate-500 uppercase tracking-wider block">
                    Konfirmasi Kata Sandi Baru
                  </label>
                  <div className="relative">
                    <span className="absolute inset-y-0 left-0 pl-4 flex items-center text-slate-400 dark:text-slate-600">
                      <Lock className="w-5 h-5" />
                    </span>
                    <input
                      type={showConfirmPassword ? "text" : "password"}
                      required
                      placeholder="Masukkan kembali kata sandi baru"
                      value={confirmPassword}
                      onChange={(e) => setConfirmPassword(e.target.value)}
                      className="w-full pl-11 pr-12 py-3 rounded-2xl bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-800 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all"
                    />
                    <button
                      type="button"
                      onClick={() => setShowConfirmPassword((prev) => !prev)}
                      className="absolute inset-y-0 right-0 pr-4 flex items-center text-slate-400 dark:text-slate-600 hover:text-indigo-500 dark:hover:text-indigo-400 focus:outline-none transition-colors"
                    >
                      {showConfirmPassword ? (
                        <EyeOff className="w-5 h-5" />
                      ) : (
                        <Eye className="w-5 h-5" />
                      )}
                    </button>
                  </div>
                </div>

                {/* Submit Button */}
                <button
                  type="submit"
                  disabled={loading || successMsg.length > 0}
                  className="w-full py-3.5 bg-blue-600 hover:bg-blue-700 text-white font-bold rounded-2xl shadow-lg hover:shadow-xl focus:outline-none transition-all duration-300 disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center space-x-2 text-sm"
                >
                  {loading ? (
                    <span>Memproses...</span>
                  ) : (
                    <>
                      <span>Simpan Kata Sandi</span>
                      <ArrowRight className="w-4 h-4" />
                    </>
                  )}
                </button>
              </form>
            </>
          )}

        </div>
      </main>

      <Footer />
    </div>
  );
}
