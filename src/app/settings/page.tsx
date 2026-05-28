'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import {
  User, Mail, Settings, Save, Shield, Award, BarChart2,
  Calendar, CheckCircle, Loader2, Sparkles, AlertCircle, RefreshCw
} from 'lucide-react';

export default function SettingsPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [userProfile, setUserProfile] = useState<{ id: string; username: string; email: string } | null>(null);

  // Username form states
  const [newUsername, setNewUsername] = useState('');
  const [saveLoading, setSaveLoading] = useState(false);
  const [message, setMessage] = useState<{ type: 'success' | 'error', text: string } | null>(null);

  // Stats states
  const [stats, setStats] = useState({
    totalStudied: 0,
    apprentice: 0,
    guru: 0,
    master: 0,
    enlightened: 0,
    burned: 0,
    level: 1,
    joinedDate: ''
  });

  const loadUserData = async () => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) {
        router.push('/');
        return;
      }

      // 1. Fetch user profile
      const { data: profile, error: profErr } = await supabase
        .from('profiles')
        .select('*')
        .eq('id', user.id)
        .maybeSingle();

      if (profErr) throw profErr;

      const currentUsername = profile?.username || user.user_metadata?.username || user.email?.split('@')[0] || 'User';
      setUserProfile({
        id: user.id,
        username: currentUsername,
        email: user.email || ''
      });
      setNewUsername(currentUsername);

      // 2. Fetch user progress statistics & all Kanji to calculate dynamic user level
      const [progressRes, kanjiRes] = await Promise.all([
        supabase
          .from('user_progress')
          .select('item_id, srs_stage')
          .eq('user_id', user.id),
        supabase
          .from('items')
          .select('id, level')
          .eq('type', 'kanji')
      ]);

      if (progressRes.error) throw progressRes.error;
      if (kanjiRes.error) throw kanjiRes.error;

      const progresses = progressRes.data || [];
      const allKanji = kanjiRes.data || [];

      let apprentice = 0;
      let guru = 0;
      let master = 0;
      let enlightened = 0;
      let burned = 0;
      let totalStudied = 0;

      progresses.forEach((row: any) => {
        const stage = row.srs_stage;
        if (stage > 0) {
          totalStudied++;
          if (stage >= 1 && stage <= 4) apprentice++;
          else if (stage === 5 || stage === 6) guru++;
          else if (stage === 7) master++;
          else if (stage === 8) enlightened++;
          else if (stage === 9) burned++;
        }
      });

      const progressGuruSet = new Set(
        progresses
          .filter((p: any) => p.srs_stage >= 5)
          .map((p: any) => p.item_id)
      );

      let userLevel = 1;
      if (profile && profile.level !== null && profile.level !== undefined) {
        userLevel = profile.level;
      } else {
        while (userLevel <= 10) {
          const levelKanjiItems = allKanji.filter((k: any) => k.level === userLevel);
          if (levelKanjiItems.length === 0) break;

          const passed = levelKanjiItems.filter((k: any) => progressGuruSet.has(k.id)).length;
          const ratio = passed / levelKanjiItems.length;
          if (ratio >= 0.9) {
            userLevel++;
          } else {
            break;
          }
        }
      }

      // Format Joined Date
      const joinedAt = new Date(profile?.created_at || user.created_at);
      const joinedString = joinedAt.toLocaleDateString('id-ID', {
        year: 'numeric',
        month: 'long',
        day: 'numeric'
      });

      setStats({
        totalStudied,
        apprentice,
        guru,
        master,
        enlightened,
        burned,
        level: userLevel,
        joinedDate: joinedString
      });

    } catch (err) {
      console.error('Error loading settings page:', err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadUserData();
  }, [router]);

  // Handle Save Username
  const handleSaveUsername = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!newUsername.trim()) {
      setMessage({ type: 'error', text: 'Username tidak boleh kosong!' });
      return;
    }
    if (newUsername.trim().length < 3) {
      setMessage({ type: 'error', text: 'Username minimal terdiri dari 3 karakter!' });
      return;
    }

    setSaveLoading(true);
    setMessage(null);

    try {
      if (!userProfile) return;

      const cleanUsername = newUsername.trim();

      // Check unique constraint directly by trying to update
      const { error } = await supabase
        .from('profiles')
        .update({ username: cleanUsername })
        .eq('id', userProfile.id);

      if (error) {
        if (error.code === '23505') {
          // Unique key violation in postgres
          throw new Error('Username sudah digunakan oleh pembelajar lain. Silakan pilih nama lain!');
        }
        throw error;
      }

      setUserProfile(prev => prev ? { ...prev, username: cleanUsername } : null);
      setMessage({ type: 'success', text: 'Username Anda berhasil diperbarui!' });

      // Dispatch storage event to force Navbar update in real time
      localStorage.setItem('kanigani-username-update', cleanUsername);
      window.dispatchEvent(new Event('storage'));

    } catch (err) {
      console.error('Error saving username:', err);
      setMessage({
        type: 'error',
        text: err instanceof Error ? err.message : 'Terjadi kesalahan sistem saat memperbarui profil.'
      });
    } finally {
      setSaveLoading(false);
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-slate-50 dark:bg-slate-950 text-slate-900 dark:text-slate-100">
        <div className="flex flex-col items-center space-y-4">
          <Loader2 className="w-12 h-12 text-indigo-500 animate-spin" />
          <p className="font-semibold text-sm">Menyiapkan Pengaturan Akun...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />

      <main className="flex-1 max-w-5xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 space-y-8 animate-fade-in">

        {/* Banner Title */}
        <section className="flex items-center space-x-3 bg-white/50 dark:bg-slate-900/50 backdrop-blur-md p-6 sm:p-8 rounded-3xl border border-slate-200/50 dark:border-slate-800/50 shadow-sm shrink-0">
          <div className="p-3 bg-indigo-50 dark:bg-indigo-950/30 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
            <Settings className="w-8 h-8 text-indigo-500" />
          </div>
          <div>
            <div className="flex items-center space-x-1.5 text-indigo-500">
              <User className="w-4 h-4" />
              <span className="text-xs font-bold uppercase tracking-widest">Informasi Pengguna</span>
            </div>
            <h2 className="text-2xl sm:text-3xl font-extrabold tracking-tight">Pengaturan Akun</h2>
            <p className="text-xs text-slate-500 dark:text-slate-400">
              Kelola profil KaniGani Anda, atur preferensi nama, dan pantau kemajuan belajar SRS komprehensif Anda.
            </p>
          </div>
        </section>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">

          {/* LEFT COLUMN: PROFILE FORM AND ACCOUNT DATA */}
          <div className="lg:col-span-1 space-y-6">
            <div className="bg-white dark:bg-slate-900 p-6 sm:p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm space-y-6">

              <div className="text-center pb-4 border-b border-slate-100 dark:border-slate-800">
                <div className="w-20 h-20 bg-gradient-to-br from-pink-500 to-indigo-500 rounded-2xl mx-auto flex items-center justify-center text-white font-black text-3xl shadow-md">
                  {userProfile?.username.slice(0, 2).toUpperCase()}
                </div>
                <h3 className="font-extrabold text-lg mt-3 select-all">{userProfile?.username}</h3>
                <span className="text-3xs font-extrabold px-2.5 py-0.5 bg-indigo-50 dark:bg-indigo-950 text-indigo-600 dark:text-indigo-400 border border-indigo-100 dark:border-indigo-900/55 rounded-full mt-1.5 inline-block">
                  Level {stats.level} Pembelajar
                </span>
              </div>

              {/* Form edit username */}
              <form onSubmit={handleSaveUsername} className="space-y-4">

                {/* Username Input */}
                <div>
                  <label className="text-3xs font-black text-slate-400 uppercase tracking-widest mb-1.5 block">Username Akun</label>
                  <div className="relative">
                    <User className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4.5 h-4.5 text-slate-400" />
                    <input
                      type="text"
                      placeholder="Username baru..."
                      value={newUsername}
                      onChange={(e) => setNewUsername(e.target.value)}
                      className="w-full pl-10 pr-4 py-2.5 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-xs font-bold rounded-xl focus:outline-none focus:ring-1 focus:ring-indigo-500 transition-all"
                    />
                  </div>
                </div>

                {/* Email (Readonly) */}
                <div>
                  <label className="text-3xs font-black text-slate-450 uppercase tracking-widest mb-1.5 block">Alamat Email (Permanen)</label>
                  <div className="relative">
                    <Mail className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4.5 h-4.5 text-slate-400" />
                    <input
                      type="email"
                      value={userProfile?.email}
                      readOnly
                      className="w-full pl-10 pr-4 py-2.5 bg-slate-100/50 dark:bg-slate-950/50 border border-slate-200/50 dark:border-slate-850 text-xs font-semibold rounded-xl text-slate-455 cursor-not-allowed outline-none"
                    />
                  </div>
                </div>

                {/* Joined date info */}
                <div className="flex items-center space-x-2 text-xxs text-slate-450 font-bold">
                  <Calendar className="w-4 h-4 text-slate-400" />
                  <span>Terdaftar: {stats.joinedDate}</span>
                </div>

                {/* Success/Error message banner */}
                {message && (
                  <div className={`p-3 text-xxs font-bold rounded-xl border flex items-center space-x-2 animate-fade-in ${message.type === 'success'
                      ? 'bg-emerald-500/10 border-emerald-500/20 text-emerald-600 dark:text-emerald-400'
                      : 'bg-rose-500/10 border-rose-500/20 text-rose-600 dark:text-rose-450'
                    }`}>
                    {message.type === 'success' ? (
                      <CheckCircle className="w-4 h-4 text-emerald-500 shrink-0" />
                    ) : (
                      <AlertCircle className="w-4 h-4 text-rose-500 shrink-0" />
                    )}
                    <span>{message.text}</span>
                  </div>
                )}

                {/* Submit button */}
                <button
                  type="submit"
                  disabled={saveLoading || newUsername.trim() === userProfile?.username}
                  className="w-full py-3 bg-indigo-600 hover:bg-indigo-700 disabled:bg-slate-100 dark:disabled:bg-slate-800 disabled:text-slate-400 dark:disabled:text-slate-600 text-white font-extrabold rounded-xl text-xs flex items-center justify-center space-x-1.5 shadow-md shadow-indigo-600/5 transition-all cursor-pointer disabled:cursor-not-allowed"
                >
                  {saveLoading ? (
                    <>
                      <Loader2 className="w-4 h-4 animate-spin text-white" />
                      <span>Menyimpan...</span>
                    </>
                  ) : (
                    <>
                      <Save className="w-4 h-4" />
                      <span>Simpan Username</span>
                    </>
                  )}
                </button>

              </form>

            </div>
          </div>

          {/* RIGHT COLUMN: STATS AND LEARNING PROGRESS CARDS */}
          <div className="lg:col-span-2 space-y-6">
            <div className="bg-white dark:bg-slate-900 p-6 sm:p-8 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm space-y-6">

              <div className="flex items-center space-x-2 border-b border-slate-100 dark:border-slate-800 pb-3">
                <BarChart2 className="w-5 h-5 text-indigo-500" />
                <h3 className="font-extrabold text-base">Statistik Kemajuan SRS Pembelajaran</h3>
              </div>

              {/* Progress Summary Big Widgets */}
              <div className="grid grid-cols-2 sm:grid-cols-3 gap-4">
                {[
                  { label: 'Item Dipelajari', count: stats.totalStudied, color: 'text-indigo-650 bg-indigo-50 dark:bg-indigo-950/20' },
                  { label: 'Progres Guru/Rebus', count: stats.guru + stats.master + stats.enlightened + stats.burned, color: 'text-emerald-600 bg-emerald-50 dark:bg-emerald-950/20' },
                  { label: 'Item Kepiting Cilik', count: stats.apprentice, color: 'text-rose-500 bg-rose-50 dark:bg-rose-950/20' },
                ].map((stat, idx) => (
                  <div key={idx} className={`p-4.5 rounded-2xl border border-transparent shadow-3xs text-center space-y-1 ${stat.color}`}>
                    <span className="text-3xs font-extrabold uppercase tracking-widest text-slate-450 block">{stat.label}</span>
                    <span className="text-2xl font-black block">{stat.count}</span>
                  </div>
                ))}
              </div>

              {/* SRS Stage Detail Grid */}
              <div className="space-y-4">
                <h4 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Distribusi Tahapan SRS</h4>

                <div className="space-y-3.5">
                  {[
                    { label: 'Kepiting Cilik (Tahap 1 - 4)', count: stats.apprentice, total: stats.totalStudied, color: 'bg-rose-500' },
                    { label: 'Kepiting Guru (Tahap 5 - 6)', count: stats.guru, total: stats.totalStudied, color: 'bg-purple-600' },
                    { label: 'Kepiting Suhu (Tahap 7)', count: stats.master, total: stats.totalStudied, color: 'bg-blue-600' },
                    { label: 'Kepiting Sakti (Tahap 8)', count: stats.enlightened, total: stats.totalStudied, color: 'bg-teal-600' },
                    { label: 'Kepiting Rebus 🦀🔥 (Tahap 9)', count: stats.burned, total: stats.totalStudied, color: 'bg-slate-700' }
                  ].map((stage, idx) => {
                    const pct = stage.total > 0 ? Math.round((stage.count / stage.total) * 100) : 0;
                    return (
                      <div key={idx} className="space-y-1.5 text-xs font-semibold leading-relaxed">
                        <div className="flex items-center justify-between text-slate-650 dark:text-slate-350">
                          <span className="font-extrabold">{stage.label}</span>
                          <span className="text-xxs text-slate-500 font-black">
                            {stage.count} item <span className="opacity-60">({pct}%)</span>
                          </span>
                        </div>
                        <div className="w-full bg-slate-100 dark:bg-slate-950 h-3 rounded-full overflow-hidden border border-slate-200/50 dark:border-slate-850">
                          <div
                            className={`h-full rounded-full transition-all duration-500 ${stage.color}`}
                            style={{ width: `${pct}%` }}
                          ></div>
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>

              {/* Info Tips */}
              <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl text-xxs text-slate-500 dark:text-slate-400 flex items-center space-x-3 leading-relaxed">
                <Award className="w-8 h-8 text-indigo-500 shrink-0" />
                <p>
                  Kemajuan Anda disinkronkan secara realtime dengan server Supabase. Pastikan Anda menyelesaikan **SRS Review** tepat waktu untuk menaikkan stage item kamus Anda menuju status **Kepiting Rebus 🦀**!
                </p>
              </div>

            </div>
          </div>

        </div>

      </main>

      <Footer />
    </div>
  );
}
