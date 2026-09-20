'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { fetchAllUserProgress, fetchAllKanjiItems } from '@/lib/userProgress';
import { calculateUserLevel } from '@/lib/levelLogic';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import {
  User,
  Mail,
  Settings,
  Save,
  Award,
  BarChart2,
  Calendar,
  CheckCircle,
  Loader2,
  AlertCircle,
} from 'lucide-react';
import { Card, CardHeader, CardTitle, CardDescription, CardContent } from '@/components/ui/Card';
import { Badge } from '@/components/ui/Badge';
import { Button } from '@/components/ui/Button';
import { Input } from '@/components/ui/Input';
import WaniKaniIntegrationCard from '@/components/settings/WaniKaniIntegrationCard';

export default function SettingsPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [userProfile, setUserProfile] = useState<{ id: string; username: string; email: string } | null>(null);

  // Username form states
  const [newUsername, setNewUsername] = useState('');
  const [saveLoading, setSaveLoading] = useState(false);
  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  // Stats states
  const [stats, setStats] = useState({
    totalStudied: 0,
    apprentice: 0,
    guru: 0,
    master: 0,
    enlightened: 0,
    burned: 0,
    level: 1,
    joinedDate: '',
  });

  const loadUserData = async () => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) {
        router.push('/');
        return;
      }

      // Fast SWR hydration (0ms) from dashboard snapshot if available
      const cacheKey = `dashboard_snapshot_${user.id}`;
      let cachedSnapshot: any = null;
      if (typeof window !== 'undefined') {
        try {
          const stored = localStorage.getItem(cacheKey);
          if (stored) cachedSnapshot = JSON.parse(stored);
        } catch {}
      }

      if (cachedSnapshot) {
        const cStats = cachedSnapshot.stats;
        const dist = cStats?.distribution || {};
        const app = (dist[1] || 0) + (dist[2] || 0) + (dist[3] || 0) + (dist[4] || 0);
        const gur = (dist[5] || 0) + (dist[6] || 0);
        const mas = dist[7] || 0;
        const enl = dist[8] || 0;
        const bur = dist[9] || 0;
        const tot = app + gur + mas + enl + bur;

        setUserProfile({
          id: user.id,
          username: cachedSnapshot.username || 'User',
          email: user.email || '',
        });
        setNewUsername(cachedSnapshot.username || 'User');
        setStats((prev) => ({
          ...prev,
          totalStudied: tot,
          apprentice: app,
          guru: gur,
          master: mas,
          enlightened: enl,
          burned: bur,
          level: cStats?.level || 1,
        }));
        setLoading(false);
      }

      // Parallel fetch for fresh updates
      let allKanjiPromise: Promise<any>;
      const storedKanji = typeof window !== 'undefined' ? localStorage.getItem('catalog_kanji_all') : null;
      if (storedKanji) {
        try {
          allKanjiPromise = Promise.resolve(JSON.parse(storedKanji));
        } catch {
          allKanjiPromise = fetchAllKanjiItems('id, level');
        }
      } else {
        allKanjiPromise = fetchAllKanjiItems('id, level');
      }

      const [profileRes, progresses, allKanji] = await Promise.all([
        supabase.from('profiles').select('*').eq('id', user.id).maybeSingle(),
        fetchAllUserProgress(user.id, 'item_id, srs_stage, next_review'),
        allKanjiPromise,
      ]);

      const profile = profileRes.data;
      const currentUsername = profile?.username || user.user_metadata?.username || user.email?.split('@')[0] || 'User';
      setUserProfile({
        id: user.id,
        username: currentUsername,
        email: user.email || '',
      });
      setNewUsername(currentUsername);

      let apprentice = 0;
      let guru = 0;
      let master = 0;
      let enlightened = 0;
      let burned = 0;
      let totalStudied = 0;

      (progresses || []).forEach((row: any) => {
        const stage = row.srs_stage;
        const isStudied = stage > 1 || (stage === 1 && row.next_review);
        if (isStudied) {
          totalStudied++;
          if (stage >= 1 && stage <= 4) apprentice++;
          else if (stage >= 5 && stage <= 6) guru++;
          else if (stage === 7) master++;
          else if (stage === 8) enlightened++;
          else if (stage === 9) burned++;
        }
      });

      const progressGuruSet = new Set(
        (progresses || [])
          .filter((p: any) => p.srs_stage >= 5)
          .map((p: any) => p.item_id)
      );

      const userLevel = calculateUserLevel(allKanji || [], progressGuruSet, profile?.level);

      const joinedAt = new Date(profile?.created_at || user.created_at);
      const joinedString = joinedAt.toLocaleDateString('id-ID', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
      });

      setStats({
        totalStudied,
        apprentice,
        guru,
        master,
        enlightened,
        burned,
        level: userLevel,
        joinedDate: joinedString,
      });
    } catch (err) {
      console.error('Error loading settings page:', err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const fetchUserData = async () => {
      await loadUserData();
    };
    fetchUserData();
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
          throw new Error('Username sudah digunakan oleh pembelajar lain. Silakan pilih nama lain!');
        }
        throw error;
      }

      setUserProfile((prev) => (prev ? { ...prev, username: cleanUsername } : null));
      setMessage({ type: 'success', text: 'Username Anda berhasil diperbarui!' });

      // Dispatch storage event to force Navbar update in real time
      localStorage.setItem('kanigani-username-update', cleanUsername);
      window.dispatchEvent(new Event('storage'));
    } catch (err) {
      console.error('Error saving username:', err);
      setMessage({
        type: 'error',
        text: err instanceof Error ? err.message : 'Terjadi kesalahan sistem saat memperbarui profil.',
      });
    } finally {
      setSaveLoading(false);
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-background text-text-primary">
        <div className="flex flex-col items-center space-y-4">
          <Loader2 className="w-10 h-10 text-indigo-500 animate-spin" />
          <p className="font-semibold text-sm text-text-muted">Menyiapkan Pengaturan Akun...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-background text-text-primary transition-colors duration-200">
      <Navbar />

      <main className="flex-1 max-w-5xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-6 sm:py-10 space-y-6 sm:space-y-8 animate-fade-in">
        {/* Banner Title */}
        <section className="flex items-center space-x-3 sm:space-x-4 bg-card/60 backdrop-blur-md p-5 sm:p-7 rounded-2xl sm:rounded-3xl border border-card-border shadow-xs">
          <div className="p-3 bg-indigo-50 dark:bg-indigo-950/40 border border-indigo-200/60 dark:border-indigo-900/50 rounded-2xl shrink-0">
            <Settings className="w-7 h-7 sm:w-8 sm:h-8 text-indigo-600 dark:text-indigo-400" />
          </div>
          <div>
            <div className="flex items-center space-x-1.5 text-indigo-600 dark:text-indigo-400">
              <User className="w-4 h-4" />
              <span className="text-[11px] font-extrabold uppercase tracking-widest">Informasi Pengguna</span>
            </div>
            <h2 className="text-xl sm:text-3xl font-black tracking-tight text-text-primary">Pengaturan Akun</h2>
            <p className="text-xs sm:text-sm text-text-muted mt-0.5">
              Kelola profil KaniGani Anda, atur nama pengguna, dan pantau kemajuan belajar SRS komprehensif Anda.
            </p>
          </div>
        </section>

        {/* WANIKANI INTEGRATION SECTION */}
        <section>
          <WaniKaniIntegrationCard />
        </section>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6 sm:gap-8">
          {/* LEFT COLUMN: PROFILE FORM AND ACCOUNT DATA */}
          <div className="lg:col-span-1 space-y-6">
            <Card className="space-y-6">
              <div className="text-center pb-5 border-b border-card-border/60">
                <div className="w-20 h-20 bg-gradient-to-br from-pink-500 to-indigo-500 rounded-2xl mx-auto flex items-center justify-center text-white font-black text-2xl shadow-md">
                  {userProfile?.username.slice(0, 2).toUpperCase()}
                </div>
                <h3 className="font-extrabold text-lg mt-3 select-all text-text-primary">
                  {userProfile?.username}
                </h3>
                <Badge variant="indigo" size="sm" className="mt-2">
                  Level {stats.level} Pembelajar
                </Badge>
              </div>

              {/* Form edit username */}
              <form onSubmit={handleSaveUsername} className="space-y-4">
                <Input
                  label="Username Akun"
                  leftIcon={<User className="w-4 h-4" />}
                  placeholder="Username baru..."
                  value={newUsername}
                  onChange={(e) => setNewUsername(e.target.value)}
                />

                <Input
                  label="Alamat Email (Permanen)"
                  leftIcon={<Mail className="w-4 h-4" />}
                  type="email"
                  value={userProfile?.email}
                  readOnly
                  disabled
                />

                {/* Joined date info */}
                <div className="flex items-center space-x-2 text-xs text-text-muted font-bold pt-1">
                  <Calendar className="w-4 h-4" />
                  <span>Terdaftar: {stats.joinedDate}</span>
                </div>

                {/* Success/Error message banner */}
                {message && (
                  <div
                    className={`p-3 text-xs font-bold rounded-xl border flex items-center space-x-2 animate-fade-in ${
                      message.type === 'success'
                        ? 'bg-emerald-500/10 border-emerald-500/20 text-emerald-600 dark:text-emerald-400'
                        : 'bg-rose-500/10 border-rose-500/20 text-rose-600 dark:text-rose-400'
                    }`}
                  >
                    {message.type === 'success' ? (
                      <CheckCircle className="w-4 h-4 shrink-0" />
                    ) : (
                      <AlertCircle className="w-4 h-4 shrink-0" />
                    )}
                    <span>{message.text}</span>
                  </div>
                )}

                {/* Submit button */}
                <Button
                  type="submit"
                  disabled={saveLoading || newUsername.trim() === userProfile?.username}
                  loading={saveLoading}
                  className="w-full"
                >
                  <Save className="w-4 h-4" />
                  <span>Simpan Username</span>
                </Button>
              </form>
            </Card>
          </div>

          {/* RIGHT COLUMN: STATS AND LEARNING PROGRESS CARDS */}
          <div className="lg:col-span-2 space-y-6">
            <Card className="space-y-6">
              <CardHeader>
                <div className="flex items-center space-x-2">
                  <BarChart2 className="w-5 h-5 text-indigo-500" />
                  <CardTitle>Statistik Kemajuan SRS Pembelajaran</CardTitle>
                </div>
                <CardDescription>
                  Ringkasan item yang telah Anda kuasai dalam sistem Spaced Repetition KaniGani.
                </CardDescription>
              </CardHeader>

              {/* Progress Summary Big Widgets */}
              <div className="grid grid-cols-2 sm:grid-cols-3 gap-3.5 sm:gap-4">
                {[
                  {
                    label: 'Item Dipelajari',
                    count: stats.totalStudied,
                    style: 'text-indigo-600 dark:text-indigo-400 bg-indigo-50 dark:bg-indigo-950/30 border-indigo-200/50 dark:border-indigo-900/40',
                  },
                  {
                    label: 'Progres Lulus/Tuntas',
                    count: stats.guru + stats.master + stats.enlightened + stats.burned,
                    style: 'text-emerald-600 dark:text-emerald-400 bg-emerald-50 dark:bg-emerald-950/30 border-emerald-200/50 dark:border-emerald-900/40',
                  },
                  {
                    label: 'Item Pemula',
                    count: stats.apprentice,
                    style: 'text-rose-600 dark:text-rose-400 bg-rose-50 dark:bg-rose-950/30 border-rose-200/50 dark:border-rose-900/40',
                  },
                ].map((stat, idx) => (
                  <div
                    key={idx}
                    className={`p-4 rounded-2xl border text-center space-y-1 ${stat.style}`}
                  >
                    <span className="text-[10px] font-extrabold uppercase tracking-widest opacity-80 block">
                      {stat.label}
                    </span>
                    <span className="text-2xl sm:text-3xl font-black block">{stat.count}</span>
                  </div>
                ))}
              </div>

              {/* SRS Stage Detail Grid */}
              <div className="space-y-4 pt-2">
                <h4 className="text-xs font-bold text-text-muted uppercase tracking-wider block">
                  Distribusi Tahapan SRS
                </h4>

                <div className="space-y-3.5">
                  {[
                    {
                      label: 'Pemula (Tahap 1 - 4)',
                      count: stats.apprentice,
                      total: stats.totalStudied,
                      color: 'bg-rose-500',
                    },
                    {
                      label: 'Lulus (Tahap 5 - 6)',
                      count: stats.guru,
                      total: stats.totalStudied,
                      color: 'bg-purple-600',
                    },
                    {
                      label: 'Mahir (Tahap 7)',
                      count: stats.master,
                      total: stats.totalStudied,
                      color: 'bg-blue-600',
                    },
                    {
                      label: 'Ahli (Tahap 8)',
                      count: stats.enlightened,
                      total: stats.totalStudied,
                      color: 'bg-teal-600',
                    },
                    {
                      label: 'Tuntas (Tahap 9)',
                      count: stats.burned,
                      total: stats.totalStudied,
                      color: 'bg-slate-600 dark:bg-slate-500',
                    },
                  ].map((stage, idx) => {
                    const pct = stage.total > 0 ? Math.round((stage.count / stage.total) * 100) : 0;
                    return (
                      <div key={idx} className="space-y-1.5 text-xs font-semibold leading-relaxed">
                        <div className="flex items-center justify-between text-text-secondary">
                          <span className="font-extrabold text-text-primary">{stage.label}</span>
                          <span className="text-xs text-text-muted font-black">
                            {stage.count} item <span className="opacity-70">({pct}%)</span>
                          </span>
                        </div>
                        <div className="w-full bg-card-muted h-3 rounded-full overflow-hidden border border-card-border/60">
                          <div
                            className={`h-full rounded-full transition-all duration-500 ${stage.color}`}
                            style={{ width: `${pct}%` }}
                          />
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>

              {/* Info Tips */}
              <div className="p-4 bg-indigo-50/70 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/40 rounded-2xl text-xs text-text-muted flex items-center space-x-3 leading-relaxed">
                <Award className="w-7 h-7 text-indigo-500 shrink-0" />
                <p>
                  Kemajuan Anda disinkronkan secara realtime dengan server Supabase. Pastikan Anda menyelesaikan{' '}
                  <strong className="text-text-primary">SRS Review</strong> tepat waktu untuk menaikkan stage item kamus Anda menuju status{' '}
                  <strong className="text-text-primary">Tuntas</strong>!
                </p>
              </div>
            </Card>
          </div>
        </div>
      </main>

      <Footer />
    </div>
  );
}
