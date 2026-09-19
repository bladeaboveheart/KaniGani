'use client';

import { useState, useEffect } from 'react';
import { supabase } from '@/lib/supabase';
import {
  Activity, CheckCircle2, AlertTriangle, RefreshCw,
  Layers, ShieldCheck
} from 'lucide-react';

interface TableStat {
  name: string;
  label: string;
  count: number | null;
  description: string;
}

export default function DatabaseHealthCard() {
  const [loading, setLoading] = useState(true);
  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  const [tableStats, setTableStats] = useState<TableStat[]>([
    { name: 'items', label: 'Items (Kamus)', count: null, description: 'Radikal, Kanji, dan Kosakata (Level 1–60)' },
    { name: 'item_meanings', label: 'Item Meanings', count: null, description: 'Arti bahasa Indonesia & alternatif' },
    { name: 'item_readings', label: 'Item Readings', count: null, description: 'Cara baca Onyomi, Kunyomi, Nanori' },
    { name: 'item_context_sentences', label: 'Context Sentences', count: null, description: 'Contoh kalimat bahasa Jepang & terjemahan' },
    { name: 'item_prerequisites', label: 'Prerequisites', count: null, description: 'Hirarki kunci radikal ➔ kanji ➔ vocab' },
    { name: 'user_progress', label: 'User Progress', count: null, description: 'Status SRS & jadwal review pengguna' },
    { name: 'profiles', label: 'Profiles', count: null, description: 'Akun pembelajar & level akun' },
    { name: 'user_integrations', label: 'User Integrations', count: null, description: 'Kredensial sinkronisasi WaniKani terenkripsi' },
    { name: 'item_similar_kanji', label: 'Similar Kanji (Kembaran)', count: null, description: 'Relasi kemiripan visual kanji (Awas Tertukar)' },
    { name: 'activity_logs', label: 'Activity Logs', count: null, description: 'Riwayat sesi review & lesson harian' },
  ]);

  const [syncingSimilar, setSyncingSimilar] = useState(false);

  const [diagnostics, setDiagnostics] = useState<{
    missingMeanings: number;
    missingReadings: number;
    missingWkIds: number;
    nonHourReviews: number;
    prereqTotal: number;
    prereqKanjiRad: number;
    prereqVocabKanji: number;
    invalidPrereqs: number;
  }>({
    missingMeanings: 0,
    missingReadings: 0,
    missingWkIds: 0,
    nonHourReviews: 0,
    prereqTotal: 0,
    prereqKanjiRad: 0,
    prereqVocabKanji: 0,
    invalidPrereqs: 0,
  });

  const loadHealthData = async () => {
    setLoading(true);
    setMessage(null);
    try {
      // 1. Fetch count per table in parallel
      const countPromises = tableStats.map(async (t) => {
        const { count, error } = await supabase
          .from(t.name)
          .select('*', { count: 'exact', head: true });
        return { name: t.name, count: error ? 0 : (count || 0) };
      });

      const counts = await Promise.all(countPromises);
      setTableStats(prev => prev.map(t => {
        const found = counts.find(c => c.name === t.name);
        return { ...t, count: found ? found.count : 0 };
      }));

      // 2. Run diagnostics
      // Items without wanikani_id
      const { count: wkNullCount } = await supabase
        .from('items')
        .select('*', { count: 'exact', head: true })
        .is('wanikani_id', null);

      // Reviews not on top of the hour
      const { data: reviews } = await supabase
        .from('user_progress')
        .select('next_review')
        .not('next_review', 'is', null)
        .limit(200);

      let nonHour = 0;
      if (reviews) {
        reviews.forEach((r: any) => {
          const d = new Date(r.next_review);
          if (d.getUTCMinutes() > 0 || d.getUTCSeconds() > 0) {
            nonHour++;
          }
        });
      }

      // 3. Prerequisite relational diagnostics
      const { data: prereqDiag } = await supabase.rpc('get_prerequisite_diagnostics');

      setDiagnostics({
        missingMeanings: 0,
        missingReadings: 0,
        missingWkIds: wkNullCount || 0,
        nonHourReviews: nonHour,
        prereqTotal: prereqDiag?.total || 0,
        prereqKanjiRad: prereqDiag?.kanji_radicals || 0,
        prereqVocabKanji: prereqDiag?.vocab_kanji || 0,
        invalidPrereqs: prereqDiag?.invalid || 0,
      });
    } catch (err: any) {
      console.error('Error checking database health:', err);
      setMessage({ type: 'error', text: 'Gagal memuat diagnostik: ' + err.message });
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    let ignore = false;
    Promise.resolve().then(() => {
      if (!ignore) {
        loadHealthData();
      }
    });
    return () => {
      ignore = true;
    };
  }, []);

  const handleSyncSimilarKanji = async () => {
    setSyncingSimilar(true);
    setMessage(null);
    try {
      const res = await fetch('/api/admin/sync-similar-kanji', { method: 'POST' });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Gagal menyinkronkan kanji mirip');
      setMessage({ type: 'success', text: data.message || 'Sukses menyinkronkan data kanji mirip dari WaniKani!' });
      await loadHealthData();
    } catch (err: any) {
      setMessage({ type: 'error', text: err?.message || 'Terjadi kesalahan saat sinkronisasi' });
    } finally {
      setSyncingSimilar(false);
    }
  };

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 p-5 bg-card border border-border rounded-2xl shadow-xs">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-xl bg-emerald-500/10 border border-emerald-500/20 flex items-center justify-center text-emerald-500 shrink-0">
            <Activity className="w-5 h-5" />
          </div>
          <div>
            <h3 className="text-base font-bold text-foreground">Database Health & Diagnostics</h3>
            <p className="text-xs text-muted-foreground">
              Pantau jumlah baris realtime, status relasi antar-tabel, dan periksa integritas data database Supabase.
            </p>
          </div>
        </div>

        <div className="flex items-center gap-2 self-start sm:self-auto">
          <button
            onClick={handleSyncSimilarKanji}
            disabled={syncingSimilar || loading}
            className="px-3.5 py-2 text-xs font-semibold bg-amber-500/10 text-amber-700 dark:text-amber-400 hover:bg-amber-500/20 border border-amber-500/30 rounded-xl transition-colors cursor-pointer flex items-center gap-2 disabled:opacity-50"
            title="Sinkronkan relasi kemiripan visual kanji dari WaniKani API"
          >
            <RefreshCw className={`w-3.5 h-3.5 ${syncingSimilar ? 'animate-spin text-amber-500' : ''}`} />
            {syncingSimilar ? 'Menyinkronkan...' : 'Sync Kanji Mirip'}
          </button>
          <button
            onClick={loadHealthData}
            disabled={loading}
            className="px-3.5 py-2 text-xs font-semibold bg-secondary text-secondary-foreground hover:bg-secondary/80 border border-border rounded-xl transition-colors cursor-pointer flex items-center gap-2 disabled:opacity-50"
          >
            <RefreshCw className={`w-3.5 h-3.5 ${loading ? 'animate-spin text-primary' : ''}`} />
            Refresh Metrik
          </button>
        </div>
      </div>

      {/* Message */}
      {message && (
        <div className={`p-3.5 text-xs rounded-xl border flex items-center gap-2 ${
          message.type === 'success'
            ? 'bg-emerald-500/10 border-emerald-500/20 text-emerald-600 dark:text-emerald-400 font-medium'
            : 'bg-destructive/10 border-destructive/20 text-destructive'
        }`}>
          {message.type === 'success' ? <CheckCircle2 className="w-4 h-4 shrink-0" /> : <AlertTriangle className="w-4 h-4 shrink-0" />}
          <span>{message.text}</span>
        </div>
      )}

      {/* Table Rows Realtime Grid */}
      <div className="space-y-3">
        <div className="flex items-center justify-between text-xs font-bold text-foreground">
          <span className="flex items-center gap-2">
            <Layers className="w-4 h-4 text-primary" />
            Statistik Baris Data per Tabel
          </span>
          <span className="text-muted-foreground text-3xs">Supabase PostgreSQL 17</span>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3.5">
          {tableStats.map((t) => (
            <div key={t.name} className="p-4 bg-card border border-border rounded-xl shadow-xs space-y-1">
              <div className="flex items-center justify-between">
                <span className="font-mono text-xs font-bold text-foreground">{t.name}</span>
                <span className="text-sm font-black text-primary">
                  {loading ? (
                    <span className="inline-block w-12 h-4 bg-muted animate-pulse rounded" />
                  ) : t.count !== null ? (
                    t.count.toLocaleString()
                  ) : (
                    '—'
                  )}
                </span>
              </div>
              <div className="text-3xs font-semibold text-foreground/80">{t.label}</div>
              <div className="text-3xs text-muted-foreground leading-relaxed">{t.description}</div>
            </div>
          ))}
        </div>
      </div>

      {/* Integrity Diagnostics Checks */}
      <div className="p-5 bg-card border border-border rounded-2xl shadow-xs space-y-4">
        <div className="flex items-center gap-2 text-xs font-bold text-foreground">
          <ShieldCheck className="w-4 h-4 text-emerald-500" />
          <span>Hasil Pemeriksaan Integritas Relasional</span>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
          {/* WaniKani ID check */}
          <div className="p-3.5 rounded-xl border border-border bg-muted/20 flex items-center justify-between">
            <div>
              <div className="text-xs font-semibold text-foreground">Pemetaan WaniKani Subject ID</div>
              <div className="text-3xs text-muted-foreground">Item tanpa WaniKani ID resmi</div>
            </div>
            {diagnostics.missingWkIds === 0 ? (
              <span className="flex items-center gap-1 text-3xs font-bold px-2.5 py-1 rounded-full bg-emerald-500/10 text-emerald-600 dark:text-emerald-400 border border-emerald-500/20">
                <CheckCircle2 className="w-3.5 h-3.5" /> 100% Terpetakan
              </span>
            ) : (
              <span className="text-3xs font-bold px-2.5 py-1 rounded-full bg-amber-500/10 text-amber-600 dark:text-amber-400 border border-amber-500/20">
                {diagnostics.missingWkIds} Belum Terpetakan
              </span>
            )}
          </div>

          {/* Hourly Batching Check */}
          <div className="p-3.5 rounded-xl border border-border bg-muted/20 flex items-center justify-between">
            <div>
              <div className="text-xs font-semibold text-foreground">Kerapian Jadwal Review (Hourly Batch)</div>
              <div className="text-3xs text-muted-foreground">Jadwal review yang jatuh tepat di :00:00</div>
            </div>
            {diagnostics.nonHourReviews === 0 ? (
              <span className="flex items-center gap-1 text-3xs font-bold px-2.5 py-1 rounded-full bg-emerald-500/10 text-emerald-600 dark:text-emerald-400 border border-emerald-500/20">
                <CheckCircle2 className="w-3.5 h-3.5" /> 100% Rapi (:00)
              </span>
            ) : (
              <span className="text-3xs font-bold px-2.5 py-1 rounded-full bg-amber-500/10 text-amber-600 dark:text-amber-400 border border-amber-500/20">
                {diagnostics.nonHourReviews} Perlu Dirapikan
              </span>
            )}
          </div>

          {/* Prerequisite & Amalgamation Relational Integrity */}
          <div className="p-3.5 rounded-xl border border-border bg-muted/20 flex items-center justify-between sm:col-span-2">
            <div>
              <div className="text-xs font-semibold text-foreground">Integritas Hirarki Relasi (WaniKani 100% Match)</div>
              <div className="text-3xs text-muted-foreground">
                {diagnostics.prereqKanjiRad.toLocaleString()} Kanji ➔ Radikal, {diagnostics.prereqVocabKanji.toLocaleString()} Kosakata ➔ Kanji
              </div>
            </div>
            {diagnostics.invalidPrereqs === 0 && diagnostics.prereqTotal > 0 ? (
              <span className="flex items-center gap-1 text-3xs font-bold px-2.5 py-1 rounded-full bg-emerald-500/10 text-emerald-600 dark:text-emerald-400 border border-emerald-500/20">
                <CheckCircle2 className="w-3.5 h-3.5" /> 100% Sesuai WaniKani (0 Anomali)
              </span>
            ) : (
              <span className="text-3xs font-bold px-2.5 py-1 rounded-full bg-amber-500/10 text-amber-600 dark:text-amber-400 border border-amber-500/20">
                {diagnostics.invalidPrereqs} Relasi Tidak Valid
              </span>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
