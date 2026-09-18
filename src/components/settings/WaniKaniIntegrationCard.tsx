'use client';

import { useState, useEffect } from 'react';
import { supabase } from '@/lib/supabase';
import {
  Link2, CheckCircle2, AlertCircle, RefreshCw, Eye, EyeOff,
  Trash2, ExternalLink, ShieldCheck, Sparkles, Loader2
} from 'lucide-react';
import WaniKaniSyncModal from './WaniKaniSyncModal';
import { WaniKaniPreviewStats } from '@/lib/wanikani';

export default function WaniKaniIntegrationCard() {
  const [apiKey, setApiKey] = useState('');
  const [showKey, setShowKey] = useState(false);
  const [loadingStatus, setLoadingStatus] = useState(true);
  const [verifying, setVerifying] = useState(false);
  const [disconnecting, setDisconnecting] = useState(false);
  const [fetchingPreview, setFetchingPreview] = useState(false);

  // Integration state from server
  const [status, setStatus] = useState<{
    connected: boolean;
    username?: string;
    level?: number;
    lastSyncedAt?: string;
    maskedApiKey?: string;
  }>({ connected: false });

  // Feedback message
  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  // Modal state
  const [modalOpen, setModalOpen] = useState(false);
  const [previewData, setPreviewData] = useState<WaniKaniPreviewStats | null>(null);
  const [isSyncing, setIsSyncing] = useState(false);
  const [syncSuccess, setSyncSuccess] = useState(false);
  const [syncResultInfo, setSyncResultInfo] = useState<{ inserted: number; updated: number; total: number } | null>(null);

  // Standalone function for reloading status on demand (e.g. after sync or save)
  const refreshStatus = async () => {
    try {
      setLoadingStatus(true);
      const { data: { session } } = await supabase.auth.getSession();
      if (!session) return;

      const res = await fetch('/api/wanikani/status', {
        headers: {
          Authorization: `Bearer ${session.access_token}`,
        },
      });

      if (res.ok) {
        const data = await res.json();
        setStatus(data);
      }
    } catch (err: any) {
      console.error('Failed to reload WaniKani status:', err);
    } finally {
      setLoadingStatus(false);
    }
  };

  useEffect(() => {
    let isMounted = true;

    supabase.auth.getSession().then(({ data: { session } }) => {
      if (!session || !isMounted) {
        setLoadingStatus(false);
        return;
      }

      fetch('/api/wanikani/status', {
        headers: {
          Authorization: `Bearer ${session.access_token}`,
        },
      })
        .then((res) => (res.ok ? res.json() : null))
        .then((data) => {
          if (data && isMounted) {
            setStatus(data);
          }
        })
        .catch((err) => {
          console.error('Failed to load WaniKani status:', err);
        })
        .finally(() => {
          if (isMounted) {
            setLoadingStatus(false);
          }
        });
    });

    return () => {
      isMounted = false;
    };
  }, []);

  // Handle Verify & Save Token
  const handleVerifyAndSave = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!apiKey.trim()) {
      setMessage({ type: 'error', text: 'Silakan masukkan Personal Access Token WaniKani.' });
      return;
    }

    try {
      setVerifying(true);
      setMessage(null);

      const { data: { session } } = await supabase.auth.getSession();
      if (!session) {
        setMessage({ type: 'error', text: 'Sesi login tidak valid. Silakan muat ulang halaman.' });
        return;
      }

      const res = await fetch('/api/wanikani/verify', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${session.access_token}`,
        },
        body: JSON.stringify({ apiKey: apiKey.trim() }),
      });

      const data = await res.json();

      if (!res.ok) {
        throw new Error(data.error || 'Gagal memverifikasi token.');
      }

      setMessage({
        type: 'success',
        text: `Berhasil terhubung ke akun WaniKani (${data.user.username}, Level ${data.user.level})!`,
      });
      setApiKey('');
      await refreshStatus();
    } catch (err: any) {
      setMessage({ type: 'error', text: err.message || 'Gagal menyimpan token.' });
    } finally {
      setVerifying(false);
    }
  };

  // Handle Disconnect
  const handleDisconnect = async () => {
    if (!confirm('Apakah Anda yakin ingin memutuskan sambungan akun WaniKani? Progres yang sudah tersimpan di KaniGani tidak akan hilang.')) {
      return;
    }

    try {
      setDisconnecting(true);
      setMessage(null);

      const { data: { session } } = await supabase.auth.getSession();
      if (!session) return;

      const res = await fetch('/api/wanikani/disconnect', {
        method: 'POST',
        headers: {
          Authorization: `Bearer ${session.access_token}`,
        },
      });

      if (!res.ok) {
        const data = await res.json();
        throw new Error(data.error || 'Gagal memutuskan sambungan.');
      }

      setMessage({ type: 'success', text: 'Sambungan akun WaniKani berhasil dihapus.' });
      setStatus({ connected: false });
    } catch (err: any) {
      setMessage({ type: 'error', text: err.message || 'Terjadi kesalahan.' });
    } finally {
      setDisconnecting(false);
    }
  };

  // Handle Open Sync Preview
  const handleOpenSyncPreview = async () => {
    try {
      setFetchingPreview(true);
      setMessage(null);
      setSyncSuccess(false);
      setSyncResultInfo(null);

      const { data: { session } } = await supabase.auth.getSession();
      if (!session) return;

      const res = await fetch('/api/wanikani/preview', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${session.access_token}`,
        },
        body: JSON.stringify({ apiKey: apiKey.trim() || undefined }),
      });

      const data = await res.json();
      if (!res.ok) {
        throw new Error(data.error || 'Gagal mengambil pratinjau sinkronisasi.');
      }

      setPreviewData(data.stats);
      setModalOpen(true);
    } catch (err: any) {
      setMessage({ type: 'error', text: err.message || 'Gagal memuat pratinjau WaniKani.' });
    } finally {
      setFetchingPreview(false);
    }
  };

  // Execute Sync from Modal
  const handleExecuteSync = async () => {
    try {
      setIsSyncing(true);
      const { data: { session } } = await supabase.auth.getSession();
      if (!session) return;

      const res = await fetch('/api/wanikani/sync', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${session.access_token}`,
        },
        body: JSON.stringify({ apiKey: apiKey.trim() || undefined }),
      });

      const data = await res.json();
      if (!res.ok) {
        throw new Error(data.error || 'Gagal melakukan sinkronisasi data.');
      }

      setSyncSuccess(true);
      if (data.stats) {
        setSyncResultInfo(data.stats);
      }
      await refreshStatus();
    } catch (err: any) {
      alert(`Sinkronisasi gagal: ${err.message}`);
    } finally {
      setIsSyncing(false);
    }
  };

  return (
    <div className="bg-card border border-border rounded-2xl p-6 shadow-sm space-y-6">
      {/* Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
        <div className="flex items-center gap-3.5">
          <div className="w-12 h-12 rounded-xl bg-pink-500/10 border border-pink-500/20 flex items-center justify-center text-pink-600 dark:text-pink-400 shrink-0">
            <Link2 className="w-6 h-6" />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h3 className="text-base font-bold text-foreground">Integrasi Akun WaniKani</h3>
              {loadingStatus ? (
                <div className="h-4 w-16 bg-muted animate-pulse rounded-full" />
              ) : status.connected ? (
                <span className="inline-flex items-center gap-1 text-3xs font-extrabold px-2.5 py-0.5 rounded-full bg-emerald-500/15 text-emerald-600 dark:text-emerald-400 border border-emerald-500/25">
                  <CheckCircle2 className="w-3 h-3" /> Terhubung
                </span>
              ) : (
                <span className="text-3xs font-semibold px-2 py-0.5 rounded-full bg-muted text-muted-foreground border border-border">
                  Belum Terhubung
                </span>
              )}
            </div>
            <p className="text-xs text-muted-foreground mt-0.5">
              Hubungkan akun resmi WaniKani untuk menyinkronkan status SRS, jadwal review, dan level akun secara otomatis.
            </p>
          </div>
        </div>

        {/* WaniKani Settings Link */}
        <a
          href="https://www.wanikani.com/settings/personal_access_tokens"
          target="_blank"
          rel="noopener noreferrer"
          className="text-xs font-semibold text-primary hover:underline flex items-center gap-1 shrink-0 self-start sm:self-auto"
        >
          Dapatkan API Token di WaniKani <ExternalLink className="w-3 h-3" />
        </a>
      </div>

      {/* Notification Message */}
      {message && (
        <div
          className={`p-3.5 rounded-xl border flex items-start gap-3 text-xs ${
            message.type === 'success'
              ? 'bg-emerald-500/10 border-emerald-500/20 text-emerald-600 dark:text-emerald-400'
              : 'bg-destructive/10 border-destructive/20 text-destructive'
          }`}
        >
          {message.type === 'success' ? (
            <CheckCircle2 className="w-4 h-4 shrink-0 mt-0.5" />
          ) : (
            <AlertCircle className="w-4 h-4 shrink-0 mt-0.5" />
          )}
          <span>{message.text}</span>
        </div>
      )}

      {/* Connected Status Card */}
      {status.connected && (
        <div className="p-4 bg-muted/40 rounded-xl border border-border flex flex-col sm:flex-row sm:items-center justify-between gap-4">
          <div className="space-y-1">
            <div className="flex items-center gap-2">
              <span className="text-xs text-muted-foreground">Akun WaniKani:</span>
              <span className="text-sm font-extrabold text-foreground">{status.username}</span>
              <span className="text-3xs font-bold px-2 py-0.5 bg-primary/10 text-primary rounded-md border border-primary/20">
                Level {status.level}
              </span>
            </div>
            <div className="text-xs text-muted-foreground">
              Token tersimpan: <code className="font-mono text-xs px-1.5 py-0.5 bg-muted rounded border border-border/70">{status.maskedApiKey}</code>
            </div>
            {status.lastSyncedAt && (
              <div className="text-3xs text-muted-foreground">
                Terakhir disinkronkan: {new Date(status.lastSyncedAt).toLocaleString('id-ID', {
                  dateStyle: 'medium',
                  timeStyle: 'short',
                })}
              </div>
            )}
          </div>

          <div className="flex items-center gap-2.5 self-end sm:self-auto">
            <button
              type="button"
              onClick={handleDisconnect}
              disabled={disconnecting || fetchingPreview}
              className="px-3.5 py-2 text-xs font-semibold text-destructive hover:bg-destructive/10 border border-destructive/20 rounded-xl transition-colors cursor-pointer flex items-center gap-1.5 disabled:opacity-50"
            >
              {disconnecting ? <Loader2 className="w-3.5 h-3.5 animate-spin" /> : <Trash2 className="w-3.5 h-3.5" />}
              Putuskan
            </button>
            <button
              type="button"
              onClick={handleOpenSyncPreview}
              disabled={fetchingPreview || disconnecting}
              className="px-4 py-2 text-xs font-semibold bg-primary text-primary-foreground hover:bg-primary/90 rounded-xl shadow-xs transition-all cursor-pointer flex items-center gap-2 disabled:opacity-50"
            >
              {fetchingPreview ? (
                <>
                  <RefreshCw className="w-3.5 h-3.5 animate-spin" />
                  Mempersiapkan...
                </>
              ) : (
                <>
                  <RefreshCw className="w-3.5 h-3.5" />
                  Sinkronkan Sekarang
                </>
              )}
            </button>
          </div>
        </div>
      )}

      {/* Input Form for Adding/Updating Token */}
      <form onSubmit={handleVerifyAndSave} className="space-y-3">
        <label className="block text-xs font-semibold text-foreground">
          {status.connected ? 'Perbarui API Token WaniKani' : 'Personal Access Token WaniKani (v2)'}
        </label>
        <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-3">
          <div className="relative flex-1">
            <input
              type={showKey ? 'text' : 'password'}
              value={apiKey}
              onChange={(e) => setApiKey(e.target.value)}
              placeholder={status.connected ? 'Masukkan token baru jika ingin mengganti...' : 'Contoh: xxxxx-xxx-xxxx-xxxx-xxxx'}
              className="w-full px-3.5 py-2.5 pr-10 text-xs rounded-xl bg-background border border-input focus:border-primary focus:ring-2 focus:ring-primary/20 outline-hidden transition-all text-foreground placeholder:text-muted-foreground/60"
            />
            <button
              type="button"
              onClick={() => setShowKey(!showKey)}
              className="absolute right-3 top-1/2 -translate-y-1/2 text-muted-foreground hover:text-foreground transition-colors cursor-pointer"
            >
              {showKey ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
            </button>
          </div>
          <div className="flex items-center gap-2">
            <button
              type="submit"
              disabled={verifying || !apiKey.trim()}
              className="px-4 py-2.5 bg-secondary text-secondary-foreground font-semibold text-xs rounded-xl hover:bg-secondary/80 transition-colors cursor-pointer flex items-center justify-center gap-2 shrink-0 disabled:opacity-50 disabled:cursor-not-allowed border border-border"
            >
              {verifying ? (
                <>
                  <Loader2 className="w-3.5 h-3.5 animate-spin" />
                  Memverifikasi...
                </>
              ) : (
                <>
                  <ShieldCheck className="w-3.5 h-3.5 text-primary" />
                  {status.connected ? 'Perbarui Token' : 'Verifikasi & Hubungkan'}
                </>
              )}
            </button>
            {!status.connected && apiKey.trim() && (
              <button
                type="button"
                onClick={handleOpenSyncPreview}
                disabled={fetchingPreview}
                className="px-4 py-2.5 bg-primary text-primary-foreground font-semibold text-xs rounded-xl hover:bg-primary/90 shadow-xs transition-colors cursor-pointer flex items-center justify-center gap-2 shrink-0 disabled:opacity-50"
              >
                {fetchingPreview ? (
                  <RefreshCw className="w-3.5 h-3.5 animate-spin" />
                ) : (
                  <Sparkles className="w-3.5 h-3.5" />
                )}
                Pratinjau & Sinkronkan
              </button>
            )}
          </div>
        </div>
        <p className="text-3xs text-muted-foreground">
          Token disimpan secara aman di database dengan enkripsi koneksi dan dilindungi Row-Level Security (hanya Anda yang memiliki akses).
        </p>
      </form>

      {/* Sync Modal */}
      <WaniKaniSyncModal
        isOpen={modalOpen}
        onClose={() => setModalOpen(false)}
        previewData={previewData}
        onConfirmSync={handleExecuteSync}
        isSyncing={isSyncing}
        syncSuccess={syncSuccess}
        syncResultInfo={syncResultInfo}
      />
    </div>
  );
}
