'use client';

import {
  X, RefreshCw, AlertTriangle, CheckCircle2,
  Clock, ShieldCheck
} from 'lucide-react';
import { WaniKaniPreviewStats } from '@/lib/wanikani';

interface WaniKaniSyncModalProps {
  isOpen: boolean;
  onClose: () => void;
  previewData: WaniKaniPreviewStats | null;
  onConfirmSync: () => Promise<void>;
  isSyncing: boolean;
  syncSuccess: boolean;
  syncResultInfo?: { inserted: number; updated: number; total: number } | null;
}

export default function WaniKaniSyncModal({
  isOpen,
  onClose,
  previewData,
  onConfirmSync,
  isSyncing,
  syncSuccess,
  syncResultInfo,
}: WaniKaniSyncModalProps) {
  if (!isOpen || !previewData) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/70 backdrop-blur-xs animate-in fade-in duration-200">
      <div className="relative w-full max-w-xl bg-card border border-border rounded-2xl shadow-2xl overflow-hidden flex flex-col max-h-[90vh]">
        {/* Header */}
        <div className="flex items-center justify-between p-5 border-b border-border bg-card-header/50">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-xl bg-primary/10 flex items-center justify-center text-primary border border-primary/20">
              <RefreshCw className={`w-5 h-5 ${isSyncing ? 'animate-spin text-primary' : ''}`} />
            </div>
            <div>
              <h2 className="text-lg font-bold text-foreground flex items-center gap-2">
                Pratinjau Sinkronisasi WaniKani
              </h2>
              <p className="text-xs text-muted-foreground">
                Periksa data akun yang akan dicerminkan ke KaniGani
              </p>
            </div>
          </div>
          {!isSyncing && (
            <button
              onClick={onClose}
              className="p-2 text-muted-foreground hover:text-foreground hover:bg-muted rounded-lg transition-colors cursor-pointer"
            >
              <X className="w-5 h-5" />
            </button>
          )}
        </div>

        {/* Content Body */}
        <div className="p-6 overflow-y-auto space-y-5 text-sm">
          {/* User Account Info Pill */}
          <div className="flex items-center justify-between p-3.5 bg-muted/50 rounded-xl border border-border/70">
            <div className="flex items-center gap-3">
              <div className="w-8 h-8 rounded-full bg-primary/20 flex items-center justify-center text-primary font-bold text-xs">
                {previewData.user.username.slice(0, 2).toUpperCase()}
              </div>
              <div>
                <div className="font-semibold text-foreground flex items-center gap-2">
                  <span>{previewData.user.username}</span>
                  <span className="text-3xs px-2 py-0.5 rounded-full bg-primary/15 text-primary border border-primary/25 font-bold">
                    Level {previewData.user.level}
                  </span>
                </div>
                <div className="text-xs text-muted-foreground">
                  Paket Langganan: <span className="capitalize text-foreground font-medium">{previewData.user.subscriptionType}</span>
                </div>
              </div>
            </div>
            <div className="text-right">
              <div className="text-xs text-muted-foreground">Total Item Aktif</div>
              <div className="text-base font-extrabold text-foreground">{previewData.totalAssignments.toLocaleString()}</div>
            </div>
          </div>

          {/* Success Banner */}
          {syncSuccess ? (
            <div className="p-4 bg-emerald-500/10 border border-emerald-500/20 rounded-xl text-center space-y-2 animate-in zoom-in-95 duration-200">
              <CheckCircle2 className="w-10 h-10 text-emerald-500 mx-auto" />
              <h3 className="font-bold text-emerald-600 dark:text-emerald-400 text-base">
                Sinkronisasi Berhasil Selesai!
              </h3>
              <p className="text-xs text-muted-foreground">
                Level akun telah disesuaikan ke Level {previewData.user.level}, dan seluruh {previewData.totalAssignments} item SRS serta jadwal review telah diperbarui.
              </p>
              {syncResultInfo && (
                <div className="text-xs font-medium text-emerald-600 dark:text-emerald-400 pt-1">
                  Item Baru: {syncResultInfo.inserted} | Item Diperbarui: {syncResultInfo.updated}
                </div>
              )}
            </div>
          ) : (
            <>
              {/* SRS Stage Breakdown Grid */}
              <div className="space-y-2">
                <div className="flex items-center justify-between text-xs font-semibold text-muted-foreground">
                  <span>Distribusi Tahapan SRS</span>
                  <span>{previewData.totalAssignments} subjek</span>
                </div>
                <div className="grid grid-cols-2 sm:grid-cols-3 gap-2.5">
                  <div className="p-3 bg-pink-500/10 border border-pink-500/20 rounded-xl">
                    <div className="text-3xs font-bold uppercase tracking-wider text-pink-600 dark:text-pink-400">
                      Apprentice (1–4)
                    </div>
                    <div className="text-lg font-black text-pink-600 dark:text-pink-400 mt-1">
                      {previewData.byStage.apprentice}
                    </div>
                    <div className="text-3xs text-muted-foreground">Pemula</div>
                  </div>

                  <div className="p-3 bg-purple-500/10 border border-purple-500/20 rounded-xl">
                    <div className="text-3xs font-bold uppercase tracking-wider text-purple-600 dark:text-purple-400">
                      Guru (5–6)
                    </div>
                    <div className="text-lg font-black text-purple-600 dark:text-purple-400 mt-1">
                      {previewData.byStage.guru}
                    </div>
                    <div className="text-3xs text-muted-foreground">Lulus</div>
                  </div>

                  <div className="p-3 bg-blue-500/10 border border-blue-500/20 rounded-xl">
                    <div className="text-3xs font-bold uppercase tracking-wider text-blue-600 dark:text-blue-400">
                      Master (7)
                    </div>
                    <div className="text-lg font-black text-blue-600 dark:text-blue-400 mt-1">
                      {previewData.byStage.master}
                    </div>
                    <div className="text-3xs text-muted-foreground">Mahir</div>
                  </div>

                  <div className="p-3 bg-cyan-500/10 border border-cyan-500/20 rounded-xl">
                    <div className="text-3xs font-bold uppercase tracking-wider text-cyan-600 dark:text-cyan-400">
                      Enlightened (8)
                    </div>
                    <div className="text-lg font-black text-cyan-600 dark:text-cyan-400 mt-1">
                      {previewData.byStage.enlightened}
                    </div>
                    <div className="text-3xs text-muted-foreground">Ahli</div>
                  </div>

                  <div className="p-3 bg-amber-500/10 border border-amber-500/20 rounded-xl">
                    <div className="text-3xs font-bold uppercase tracking-wider text-amber-600 dark:text-amber-400">
                      Burned (9)
                    </div>
                    <div className="text-lg font-black text-amber-600 dark:text-amber-400 mt-1">
                      {previewData.byStage.burned}
                    </div>
                    <div className="text-3xs text-muted-foreground">Tuntas</div>
                  </div>

                  <div className="p-3 bg-emerald-500/10 border border-emerald-500/20 rounded-xl">
                    <div className="text-3xs font-bold uppercase tracking-wider text-emerald-600 dark:text-emerald-400 flex items-center gap-1">
                      <Clock className="w-3 h-3" /> Review Siap
                    </div>
                    <div className="text-lg font-black text-emerald-600 dark:text-emerald-400 mt-1">
                      {previewData.reviewsDueNow}
                    </div>
                    <div className="text-3xs text-muted-foreground">Jadwal saat ini</div>
                  </div>
                </div>
              </div>

              {/* Subject Types Summary */}
              <div className="flex items-center justify-around p-3 bg-muted/40 rounded-xl border border-border/70 text-xs">
                <div className="text-center">
                  <div className="text-muted-foreground">Radikal</div>
                  <div className="font-bold text-foreground mt-0.5">{previewData.byType.radical}</div>
                </div>
                <div className="h-6 w-px bg-border" />
                <div className="text-center">
                  <div className="text-muted-foreground">Kanji</div>
                  <div className="font-bold text-foreground mt-0.5">{previewData.byType.kanji}</div>
                </div>
                <div className="h-6 w-px bg-border" />
                <div className="text-center">
                  <div className="text-muted-foreground">Kosakata</div>
                  <div className="font-bold text-foreground mt-0.5">{previewData.byType.vocabulary}</div>
                </div>
              </div>

              {/* Warning Notice */}
              <div className="p-3.5 bg-amber-500/10 border border-amber-500/20 rounded-xl flex items-start gap-3 text-xs text-amber-700 dark:text-amber-300">
                <AlertTriangle className="w-4 h-4 shrink-0 mt-0.5 text-amber-500" />
                <div>
                  <span className="font-bold">Perhatian Kebijakan Sinkronisasi:</span> Status SRS dan jadwal review di KaniGani akan disamakan (100% full overwrite mirroring) sesuai data WaniKani saat ini. Level profil Anda di KaniGani juga akan diupdate ke <strong>Level {previewData.user.level}</strong>.
                </div>
              </div>
            </>
          )}

          {/* Syncing Progress Animation */}
          {isSyncing && (
            <div className="space-y-2 py-2">
              <div className="flex items-center justify-between text-xs text-muted-foreground font-medium">
                <span className="flex items-center gap-2 text-foreground font-semibold">
                  <RefreshCw className="w-3.5 h-3.5 animate-spin text-primary" />
                  Sedang menyinkronkan data dengan Supabase...
                </span>
                <span>Proses Cepat</span>
              </div>
              <div className="h-2 w-full bg-muted rounded-full overflow-hidden">
                <div className="h-full bg-primary rounded-full animate-pulse w-3/4 transition-all duration-500" />
              </div>
            </div>
          )}
        </div>

        {/* Footer Actions */}
        <div className="p-5 border-t border-border bg-card-header/30 flex items-center justify-end gap-3">
          {syncSuccess ? (
            <button
              onClick={() => {
                onClose();
                window.location.reload();
              }}
              className="w-full sm:w-auto px-5 py-2.5 bg-primary text-primary-foreground font-semibold text-xs rounded-xl shadow-md hover:bg-primary/90 transition-all cursor-pointer flex items-center justify-center gap-2"
            >
              <CheckCircle2 className="w-4 h-4" />
              Selesai & Muat Ulang Halaman
            </button>
          ) : (
            <>
              <button
                type="button"
                onClick={onClose}
                disabled={isSyncing}
                className="px-4 py-2 text-xs font-semibold text-muted-foreground hover:text-foreground hover:bg-muted rounded-xl transition-colors cursor-pointer disabled:opacity-50"
              >
                Batal
              </button>
              <button
                type="button"
                onClick={onConfirmSync}
                disabled={isSyncing}
                className="px-5 py-2.5 bg-primary text-primary-foreground font-semibold text-xs rounded-xl shadow-md hover:bg-primary/90 transition-all cursor-pointer flex items-center gap-2 disabled:opacity-50 disabled:cursor-not-allowed"
              >
                {isSyncing ? (
                  <>
                    <RefreshCw className="w-4 h-4 animate-spin" />
                    Menyinkronkan...
                  </>
                ) : (
                  <>
                    <ShieldCheck className="w-4 h-4" />
                    Konfirmasi & Sinkronkan Sekarang
                  </>
                )}
              </button>
            </>
          )}
        </div>
      </div>
    </div>
  );
}
