'use client';

import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import {
  getGanikaniSettings,
  updateGanikaniSettings,
  GanikaniSettings,
} from '@/services/ganikaniService';
import {
  Settings,
  CheckCircle2,
  AlertCircle,
  Volume2,
  Eye,
  Keyboard,
  Compass,
  ArrowLeft,
  Loader2,
  Sun,
  Moon,
} from 'lucide-react';
import Link from 'next/link';

export default function GanikaniSettingsPage() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [successMsg, setSuccessMsg] = useState('');
  const [userId, setUserId] = useState<string | null>(null);

  const [theme, setTheme] = useState<'light' | 'dark'>('light');

  const [settings, setSettings] = useState<GanikaniSettings>({
    user_id: '',
    follow: true,
    unlock_stage: 5,
    auto_expand_details: false,
    auto_play_audio: false,
    keyboard_shortcuts: true,
  });

  useEffect(() => {
    const isDark = document.documentElement.classList.contains('dark');
    if (isDark) {
      setTheme('dark');
    } else {
      const stored = localStorage.getItem('theme');
      if (stored === 'dark') {
        setTheme('dark');
      } else {
        setTheme('light');
      }
    }
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

  useEffect(() => {
    async function load() {
      setLoading(true);
      try {
        const {
          data: { user },
        } = await supabase.auth.getUser();

        if (!user) {
          router.push('/login');
          return;
        }

        setUserId(user.id);
        const data = await getGanikaniSettings(user.id);
        setSettings(data);
      } catch (err) {
        console.error('Error loading settings:', err);
      } finally {
        setLoading(false);
      }
    }

    load();
  }, [router]);

  const handleToggle = async (key: keyof Omit<GanikaniSettings, 'user_id'>) => {
    if (!userId) return;
    const nextVal = !settings[key];
    const newSettings = { ...settings, [key]: nextVal };
    setSettings(newSettings);

    setSaving(true);
    setSuccessMsg('');
    try {
      await updateGanikaniSettings(userId, { [key]: nextVal });
      setSuccessMsg('Pengaturan berhasil disimpan');
      setTimeout(() => setSuccessMsg(''), 2500);
    } catch (err) {
      console.error('Failed to update settings:', err);
    } finally {
      setSaving(false);
    }
  };

  const handleStageChange = async (stage: number) => {
    if (!userId) return;
    const newSettings = { ...settings, unlock_stage: stage };
    setSettings(newSettings);

    setSaving(true);
    setSuccessMsg('');
    try {
      await updateGanikaniSettings(userId, { unlock_stage: stage });
      setSuccessMsg('Ambang batas berhasil diperbarui');
      setTimeout(() => setSuccessMsg(''), 2500);
    } catch (err) {
      console.error('Failed to update stage:', err);
    } finally {
      setSaving(false);
    }
  };

  if (loading) {
    return (
      <div className="flex-1 flex items-center justify-center p-8">
        <Loader2 className="w-8 h-8 animate-spin text-amber-500" />
      </div>
    );
  }

  return (
    <div className="max-w-3xl mx-auto w-full px-4 py-8 sm:py-12 space-y-8">
      {/* Header */}
      <div className="flex items-center justify-between border-b border-card-border pb-6">
        <div>
          <div className="flex items-center space-x-2">
            <Settings className="w-6 h-6 text-amber-500" />
            <h1 className="text-2xl font-black text-text-primary tracking-tight">
              Pengaturan GaniKani
            </h1>
          </div>
          <p className="text-text-secondary text-sm mt-1">
            Sesuaikan perilaku sinkronisasi otomatis, kriteria Lesson, dan preferensi sesi kuis.
          </p>
        </div>

        <Link
          href="/ganikani"
          className="flex items-center space-x-1.5 px-3 py-1.5 rounded-xl bg-card-muted/60 hover:bg-card-muted border border-card-border text-text-secondary hover:text-text-primary text-xs font-bold transition-all cursor-pointer shadow-xs"
        >
          <ArrowLeft className="w-3.5 h-3.5" />
          <span>Dashboard</span>
        </Link>
      </div>

      {successMsg && (
        <div className="p-3.5 rounded-2xl bg-emerald-500/10 border border-emerald-500/30 text-emerald-500 flex items-center space-x-2 text-xs font-bold animate-fade-in">
          <CheckCircle2 className="w-4 h-4" />
          <span>{successMsg}</span>
        </div>
      )}

      {/* 1. Tampilan & Tema (Dark / Light Mode) */}
      <div className="rounded-3xl border border-card-border bg-card p-6 sm:p-8 space-y-4 shadow-sm">
        <div className="flex items-start justify-between gap-4">
          <div className="flex items-start space-x-3.5">
            <div className={`p-2.5 rounded-2xl transition-colors ${
              theme === 'dark'
                ? 'bg-indigo-500/10 text-indigo-400 border border-indigo-500/20'
                : 'bg-amber-500/10 text-amber-500 border border-amber-500/20'
            }`}>
              {theme === 'dark' ? (
                <Moon className="w-5 h-5 animate-fade-in" />
              ) : (
                <Sun className="w-5 h-5 animate-fade-in" />
              )}
            </div>
            <div className="space-y-1">
              <div className="flex items-center space-x-2">
                <h3 className="font-bold text-base text-text-primary">
                  Tampilan & Tema
                </h3>
                <span className={`text-[10px] font-black uppercase tracking-wider px-2 py-0.5 rounded-md ${
                  theme === 'dark'
                    ? 'bg-indigo-500/15 text-indigo-400 border border-indigo-500/30'
                    : 'bg-amber-500/15 text-amber-600 dark:text-amber-400 border border-amber-500/30'
                }`}>
                  {theme === 'dark' ? 'Mode Gelap' : 'Mode Terang'}
                </span>
              </div>
              <p className="text-xs text-text-secondary leading-relaxed">
                Beralih antara mode tampilan gelap dan terang sesuai kenyamanan visual mata Anda saat belajar.
              </p>
            </div>
          </div>

          <button
            type="button"
            onClick={toggleTheme}
            aria-label="Toggle tema gelap atau terang"
            className={`w-14 h-8 flex items-center rounded-full p-1 cursor-pointer transition-colors duration-200 ease-in-out shrink-0 ${
              theme === 'dark' ? 'bg-indigo-600' : 'bg-amber-500'
            }`}
          >
            <div
              className={`bg-white w-6 h-6 rounded-full shadow-md flex items-center justify-center transform transition-transform duration-200 ease-in-out ${
                theme === 'dark' ? 'translate-x-6' : 'translate-x-0'
              }`}
            >
              {theme === 'dark' ? (
                <Moon className="w-3.5 h-3.5 text-indigo-600" />
              ) : (
                <Sun className="w-3.5 h-3.5 text-amber-500" />
              )}
            </div>
          </button>
        </div>
      </div>

      {/* 2. Follow WaniKani / KaniGani */}
      <div className="rounded-3xl border border-card-border bg-card p-6 sm:p-8 space-y-6 shadow-sm">
        <div className="flex items-start justify-between gap-4">
          <div className="space-y-1">
            <h3 className="font-bold text-base text-text-primary">
              Follow WaniKani / KaniGani
            </h3>
            <p className="text-xs text-text-secondary leading-relaxed">
              Secara otomatis menyinkronkan dan membuka kosakata baru di antrean Lesson segera setelah kosakata tersebut mencapai ambang batas stage di WaniKani atau KaniGani.
            </p>
            <p className="text-[11px] text-text-muted mt-2 italic">
              Matikan fitur ini jika kamu ingin menghentikan penambahan kata baru, atau saat ingin menyelesaikan sisa review sebelum mengakhiri langganan WK.
            </p>
          </div>

          <button
            type="button"
            onClick={() => handleToggle('follow')}
            disabled={saving}
            className={`w-12 h-6 flex items-center rounded-full p-1 cursor-pointer transition-colors duration-200 ease-in-out shrink-0 ${
              settings.follow ? 'bg-amber-500' : 'bg-card-muted border border-card-border'
            }`}
          >
            <div
              className={`bg-white w-4 h-4 rounded-full shadow-md transform transition-transform duration-200 ease-in-out ${
                settings.follow ? 'translate-x-6' : 'translate-x-0'
              }`}
            />
          </button>
        </div>

        {/* 2. Unlock Stage Threshold */}
        <div className="pt-6 border-t border-card-border/60 space-y-3">
          <div>
            <label className="block text-sm font-bold text-text-primary">
              Ambang Batas Buka Kunci Lesson
            </label>
            <p className="text-xs text-text-muted mt-0.5">
              Tingkat SRS minimum di KaniGani agar sebuah kosakata memenuhi syarat masuk antrean Lesson GaniKani.
            </p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-4 gap-2.5">
            {[
              { stage: 4, label: 'Apprentice 4', sub: 'Stage 4 (Cepat)' },
              { stage: 5, label: 'Guru 1', sub: 'Stage 5 (Rekomendasi)' },
              { stage: 6, label: 'Guru 2', sub: 'Stage 6 (Kuat)' },
              { stage: 7, label: 'Master', sub: 'Stage 7 (Sangat Matang)' },
            ].map((opt) => (
              <button
                key={opt.stage}
                type="button"
                onClick={() => handleStageChange(opt.stage)}
                disabled={saving}
                className={`p-3 rounded-2xl border text-left transition-all cursor-pointer ${
                  settings.unlock_stage === opt.stage
                    ? 'border-amber-500 bg-amber-500/10 text-amber-500 font-bold shadow-xs'
                    : 'border-card-border bg-card-muted/40 hover:bg-card-muted text-text-secondary hover:text-text-primary'
                }`}
              >
                <div className="text-xs font-bold">{opt.label}</div>
                <div className="text-[10px] text-text-muted mt-0.5">{opt.sub}</div>
              </button>
            ))}
          </div>
        </div>
      </div>

      {/* 3. Review Experience Preferences */}
      <div className="rounded-3xl border border-card-border bg-card p-6 sm:p-8 space-y-6 shadow-sm">
        <h3 className="font-bold text-base text-text-primary">
          Preferensi Kuis & Ulasan
        </h3>

        <div className="space-y-5">
          {/* Auto expand details */}
          <div className="flex items-center justify-between gap-4">
            <div className="flex items-start space-x-3">
              <Eye className="w-5 h-5 text-text-muted mt-0.5" />
              <div>
                <span className="text-sm font-bold text-text-primary block">
                  Buka Detail Otomatis Saat Benar
                </span>
                <span className="text-xs text-text-muted">
                  Secara default mati (tekan Enter langsung ke kartu berikutnya untuk pengalaman kilat).
                </span>
              </div>
            </div>
            <button
              type="button"
              onClick={() => handleToggle('auto_expand_details')}
              disabled={saving}
              className={`w-12 h-6 flex items-center rounded-full p-1 cursor-pointer transition-colors duration-200 ease-in-out shrink-0 ${
                settings.auto_expand_details
                  ? 'bg-amber-500'
                  : 'bg-card-muted border border-card-border'
              }`}
            >
              <div
                className={`bg-white w-4 h-4 rounded-full shadow-md transform transition-transform duration-200 ease-in-out ${
                  settings.auto_expand_details ? 'translate-x-6' : 'translate-x-0'
                }`}
              />
            </button>
          </div>

          {/* Auto play audio */}
          <div className="flex items-center justify-between gap-4 pt-4 border-t border-card-border/60">
            <div className="flex items-start space-x-3">
              <Volume2 className="w-5 h-5 text-text-muted mt-0.5" />
              <div>
                <span className="text-sm font-bold text-text-primary block">
                  Putar Audio Pengucapan Saat Benar
                </span>
                <span className="text-xs text-text-muted">
                  Memutar suara penutur asli Kenichi/Kyoko otomatis ketika jawaban benar disubmit.
                </span>
              </div>
            </div>
            <button
              type="button"
              onClick={() => handleToggle('auto_play_audio')}
              disabled={saving}
              className={`w-12 h-6 flex items-center rounded-full p-1 cursor-pointer transition-colors duration-200 ease-in-out shrink-0 ${
                settings.auto_play_audio
                  ? 'bg-amber-500'
                  : 'bg-card-muted border border-card-border'
              }`}
            >
              <div
                className={`bg-white w-4 h-4 rounded-full shadow-md transform transition-transform duration-200 ease-in-out ${
                  settings.auto_play_audio ? 'translate-x-6' : 'translate-x-0'
                }`}
              />
            </button>
          </div>

          {/* Keyboard shortcuts */}
          <div className="flex items-center justify-between gap-4 pt-4 border-t border-card-border/60">
            <div className="flex items-start space-x-3">
              <Keyboard className="w-5 h-5 text-text-muted mt-0.5" />
              <div>
                <span className="text-sm font-bold text-text-primary block">
                  Shortcut Keyboard Aktif
                </span>
                <span className="text-xs text-text-muted">
                  Gunakan tombol <kbd className="px-1 py-0.5 rounded bg-card-muted border border-card-border text-[10px] font-bold">F</kbd> untuk info, <kbd className="px-1 py-0.5 rounded bg-card-muted border border-card-border text-[10px] font-bold">W</kbd> untuk wrap up, dan <kbd className="px-1 py-0.5 rounded bg-card-muted border border-card-border text-[10px] font-bold">Backspace</kbd> untuk redo.
                </span>
              </div>
            </div>
            <button
              type="button"
              onClick={() => handleToggle('keyboard_shortcuts')}
              disabled={saving}
              className={`w-12 h-6 flex items-center rounded-full p-1 cursor-pointer transition-colors duration-200 ease-in-out shrink-0 ${
                settings.keyboard_shortcuts
                  ? 'bg-amber-500'
                  : 'bg-card-muted border border-card-border'
              }`}
            >
              <div
                className={`bg-white w-4 h-4 rounded-full shadow-md transform transition-transform duration-200 ease-in-out ${
                  settings.keyboard_shortcuts ? 'translate-x-6' : 'translate-x-0'
                }`}
              />
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
